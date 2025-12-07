uint64_t CKDContainer.keySyncEligibility(forService:isManatee:accountDSID:lastModifiedDate:testOverrideProvider:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 184) = a7;
  *(v8 + 192) = v7;
  *(v8 + 168) = a5;
  *(v8 + 176) = a6;
  *(v8 + 152) = a2;
  *(v8 + 160) = a4;
  *(v8 + 417) = a3;
  *(v8 + 144) = a1;
  v9 = sub_2250B0DFC(&unk_27D7193A0, &qword_225445E10);
  *(v8 + 200) = v9;
  sub_22507D394(v9);
  *(v8 + 208) = v10;
  *(v8 + 216) = sub_22507D3C8();
  v11 = type metadata accessor for Logger();
  *(v8 + 224) = v11;
  sub_22507D394(v11);
  *(v8 + 232) = v12;
  *(v8 + 240) = sub_22507D3C8();
  v13 = sub_2250B0DFC(&qword_27D718F78, &unk_225444940);
  sub_22507CD44(v13);
  *(v8 + 248) = sub_22507D3C8();
  v14 = sub_2250B0DFC(&unk_27D7193B0, &qword_225445E18);
  sub_22507CD44(v14);
  *(v8 + 256) = sub_22507D3C8();
  v15 = type metadata accessor for SessionInvalidationContext.KeySyncRequest.Reason();
  *(v8 + 264) = v15;
  sub_22507D394(v15);
  *(v8 + 272) = v16;
  *(v8 + 280) = sub_22507D3C8();
  v17 = sub_2250B0DFC(&unk_27D718E60, &unk_225444780);
  sub_22507CD44(v17);
  *(v8 + 288) = sub_22507D3C8();
  v18 = sub_2250B0DFC(&qword_27D7193C0, &qword_225445B38);
  sub_22507CD44(v18);
  *(v8 + 296) = sub_22507D3C8();
  v19 = type metadata accessor for SessionInvalidationContext.KeySyncRequest();
  *(v8 + 304) = v19;
  sub_22507D394(v19);
  *(v8 + 312) = v20;
  *(v8 + 320) = sub_22507D3C8();
  v21 = type metadata accessor for Date();
  *(v8 + 328) = v21;
  sub_22507D394(v21);
  *(v8 + 336) = v22;
  *(v8 + 344) = sub_22507D3C8();
  v23 = type metadata accessor for ServerDate();
  *(v8 + 352) = v23;
  sub_22507D394(v23);
  *(v8 + 360) = v24;
  *(v8 + 368) = swift_task_alloc();
  *(v8 + 376) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2250F24F0, 0, 0);
}

uint64_t sub_2250F24F0()
{
  v84 = v0;
  v1 = [v0[24] options];
  v2 = [v1 isCloudCoreSession];

  if (!v2)
  {
    v10 = [objc_opt_self() sharedManager];
    v0[48] = v10;
    if (v10)
    {
      v11 = v10;
      v13 = v0[26];
      v12 = v0[27];
      v14 = v0[25];
      v80 = v0[23];
      v16 = v0[20];
      v15 = v0[21];
      v78 = *(v0 + 417);
      v76 = MEMORY[0x22AA62D80](v0[18], v0[19]);
      v0[49] = v76;
      v17 = MEMORY[0x22AA62D80](v16, v15);
      v0[50] = v17;
      isa = Date._bridgeToObjectiveC()().super.isa;
      v0[51] = isa;
      v0[2] = v0;
      v0[7] = v0 + 52;
      v0[3] = sub_2250F2DB8;
      swift_continuation_init();
      v0[17] = v14;
      v19 = sub_225073808(v0 + 14);
      CheckedContinuation.init(continuation:function:)();
      (*(v13 + 32))(v19, v12, v14);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_2250F2F88;
      v0[13] = &unk_28385B2F8;
      [v11 getKeySyncEligibilityForService:v76 isManatee:v78 accountDSID:v17 lastModifiedDate:isa testOverrideProvider:v80 completionHandler:?];
      (*(v13 + 8))(v19, v14);
      v10 = v0 + 2;

      return MEMORY[0x282200938](v10);
    }

    __break(1u);
LABEL_33:
    __break(1u);
    return MEMORY[0x282200938](v10);
  }

  v3 = v0[43];
  v4 = v0[36];
  (*(v0[42] + 16))(v3, v0[22], v0[41]);
  MEMORY[0x22AA624C0](v3);
  sub_2250EF2C0(v4);
  v5 = type metadata accessor for SessionInvalidationContext();
  if (sub_22507C8E8(v4, 1, v5) != 1)
  {
    v21 = v0[37];
    v20 = v0[38];
    SessionInvalidationContext.keySyncRequest.getter();
    sub_22508E760();
    v22 = sub_225082674();
    v23(v22);
    if (sub_22507C8E8(v21, 1, v20) == 1)
    {
      (*(v0[45] + 8))(v0[47], v0[44]);
      goto LABEL_10;
    }

    v27 = v0[18];
    v26 = v0[19];
    (*(v0[39] + 32))(v0[40], v0[37], v0[38]);
    if (SessionInvalidationContext.KeySyncRequest.serviceName.getter() == v27 && v28 == v26)
    {
    }

    else
    {
      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v30 & 1) == 0)
      {
        (*(v0[39] + 8))(v0[40], v0[38]);
        v31 = sub_225082674();
        v32(v31);
        goto LABEL_11;
      }
    }

    v34 = v0[34];
    v33 = v0[35];
    v35 = v0[33];
    SessionInvalidationContext.KeySyncRequest.reason.getter();
    if ((*(v34 + 88))(v33, v35) != *MEMORY[0x277CFAAC0])
    {
      v53 = v0[34];
      v52 = v0[35];
      v54 = v0[33];
      (*(v0[39] + 8))(v0[40], v0[38]);
      v55 = sub_225082674();
      v56(v55);
      (*(v53 + 8))(v52, v54);
      goto LABEL_11;
    }

    v37 = v0[45];
    v36 = v0[46];
    v38 = v0[44];
    v39 = v0[35];
    (*(v0[34] + 96))(v39, v0[33]);
    (*(v37 + 32))(v36, v39, v38);
    sub_2250F4D28(&qword_280D53648, MEMORY[0x277CFA978], MEMORY[0x277CFA980]);
    sub_225082674();
    if ((dispatch thunk of static Comparable.<= infix(_:_:)() & 1) == 0)
    {
LABEL_26:
      v48 = v0[39];
      v47 = v0[40];
      v49 = v0[38];
      v50 = *(v0[45] + 8);
      (v50)(v0[46], v0[44]);
      (*(v48 + 8))(v47, v49);
      v51 = sub_225082674();
      v50(v51);
      goto LABEL_11;
    }

    v40 = v0[32];
    sub_2250EF194(&selRef_ckSessionAcquiredInfo, MEMORY[0x277CBBDE0], MEMORY[0x277CBBDD8], MEMORY[0x277CFAA88], v40);
    v41 = type metadata accessor for AnySessionAcquiredInfo();
    v10 = sub_22507C8E8(v40, 1, v41);
    if (v10 != 1)
    {
      v42 = v0[31];
      AnySessionAcquiredInfo.keySyncRequestIdentityPublicKeyIDHash.getter();
      sub_22508E760();
      v43 = sub_225082674();
      v44(v43);
      v45 = type metadata accessor for SaltedHash();
      v46 = sub_22507C8E8(v42, 1, v45);
      sub_22507F168(v42, &qword_27D718F78, &unk_225444940);
      if (v46 != 1)
      {
        CKLog.getter();

        v57 = Logger.logObject.getter();
        v58 = static os_log_type_t.error.getter();

        v59 = os_log_type_enabled(v57, v58);
        v60 = v0[47];
        v61 = v0[44];
        v62 = v0[45];
        v64 = v0[39];
        v63 = v0[40];
        v65 = v0[38];
        v66 = v0[29];
        v79 = v0[30];
        v82 = v0[46];
        v77 = v0[28];
        if (v59)
        {
          v72 = v0[19];
          v75 = v0[47];
          v67 = v0[18];
          v74 = v0[40];
          v68 = swift_slowAlloc();
          sub_22507CCD4();
          v73 = v65;
          v69 = swift_slowAlloc();
          v83 = v69;
          *v68 = 136315138;
          *(v68 + 4) = sub_225095AFC(v67, v72, &v83);
          _os_log_impl(&dword_22506F000, v57, v58, "A previous user key sync for %s did not populate the missing identity. Avoiding another user key sync.", v68, 0xCu);
          sub_225073BF0(v69);
          sub_225072C54();
          MEMORY[0x22AA65DF0]();
          sub_225072C54();
          MEMORY[0x22AA65DF0]();

          (*(v66 + 8))(v79, v77);
          v70 = *(v62 + 8);
          v70(v82, v61);
          (*(v64 + 8))(v74, v73);
          v71 = v75;
        }

        else
        {

          (*(v66 + 8))(v79, v77);
          v70 = *(v62 + 8);
          v70(v82, v61);
          (*(v64 + 8))(v63, v65);
          v71 = v60;
        }

        v70(v71, v61);
        v81 = 0;
        goto LABEL_12;
      }

      goto LABEL_26;
    }

    goto LABEL_33;
  }

  v6 = v0[38];
  v7 = v0[36];
  (*(v0[45] + 8))(v0[47], v0[44]);
  sub_22507F168(v7, &unk_27D718E60, &unk_225444780);
  v8 = sub_22507EDE8();
  sub_22507C8C0(v8, v9, 1, v6);
LABEL_10:
  sub_22507F168(v0[37], &qword_27D7193C0, &qword_225445B38);
LABEL_11:
  v81 = 1;
LABEL_12:
  sub_225098718();

  v24 = v0[1];

  return v24(v81);
}

uint64_t sub_2250F2DB8()
{
  v1 = *v0;
  sub_225072D68();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_2250F2E90, 0, 0);
}

uint64_t sub_2250F2E90()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 408);
  v3 = *(v0 + 392);
  v6 = *(v0 + 416);

  sub_225098718();

  v4 = *(v0 + 8);

  return v4(v6);
}

uint64_t sub_2250F2F88(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = sub_225073BAC((a1 + 32), *(a1 + 56));

  return sub_2250F2FF4(v3, v2);
}

uint64_t sub_2250F3104(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, void *a7)
{
  v7[2] = a5;
  v7[3] = a7;
  v12 = type metadata accessor for Date();
  v7[4] = v12;
  v7[5] = *(v12 - 8);
  v13 = swift_task_alloc();
  v7[6] = v13;
  v7[7] = _Block_copy(a6);
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  v7[8] = v15;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  v7[9] = v18;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  a7;
  v20 = swift_task_alloc();
  v7[10] = v20;
  *v20 = v7;
  v20[1] = sub_2250F32A4;

  return CKDContainer.keySyncEligibility(forService:isManatee:accountDSID:lastModifiedDate:testOverrideProvider:)(v14, v16, a2, v17, v19, v13, a5);
}

uint64_t sub_2250F32A4(char a1)
{
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 24);
  v8 = *v1;
  sub_225072D68();
  *v9 = v8;

  swift_unknownObjectRelease();
  (*(v5 + 8))(v4, v6);
  v3[2](v3, a1 & 1);
  _Block_release(v3);

  v10 = *(v8 + 8);

  return v10();
}

void CKDContainer.allowUserKeySync(serviceName:resourceLastModifiedDate:outdatedPublicKeyID:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  v7 = v5;
  v158 = a5;
  v149 = a4;
  *&v145 = a3;
  v162 = a2;
  v160 = a1;
  v8 = sub_2250B0DFC(&unk_27D719260, &unk_225445B40);
  v9 = sub_22507CD44(v8);
  MEMORY[0x28223BE20](v9);
  v146 = v132 - v10;
  v147 = type metadata accessor for Date();
  sub_225072D1C();
  v143 = v11;
  MEMORY[0x28223BE20](v12);
  sub_22507CD30();
  sub_22507F2B4();
  MEMORY[0x28223BE20](v13);
  sub_22508D024();
  v141 = v14;
  v137 = type metadata accessor for Logger();
  sub_225072D1C();
  v136 = v15;
  MEMORY[0x28223BE20](v16);
  sub_22507CD30();
  sub_22507F2B4();
  MEMORY[0x28223BE20](v17);
  sub_22508D024();
  v134 = v18;
  v19 = sub_2250B0DFC(&unk_27D718E60, &unk_225444780);
  v20 = sub_22507CD44(v19);
  MEMORY[0x28223BE20](v20);
  sub_22507CD30();
  v155 = v21;
  sub_22507C940();
  MEMORY[0x28223BE20](v22);
  v24 = v132 - v23;
  v25 = sub_2250B0DFC(&qword_27D7193C0, &qword_225445B38);
  v26 = sub_22507CD44(v25);
  MEMORY[0x28223BE20](v26);
  sub_22507CD30();
  sub_22507F2B4();
  MEMORY[0x28223BE20](v27);
  sub_22508D024();
  v148 = v28;
  type metadata accessor for SessionInvalidationContext.KeySyncRequest();
  sub_225072D1C();
  v153 = v30;
  v154 = v29;
  MEMORY[0x28223BE20](v29);
  sub_22507CD30();
  v156 = v31;
  sub_22507C940();
  MEMORY[0x28223BE20](v32);
  sub_22507E6C4();
  sub_22507F2B4();
  MEMORY[0x28223BE20](v33);
  sub_22507E6C4();
  v152 = v34;
  sub_22507C940();
  MEMORY[0x28223BE20](v35);
  v37 = v132 - v36;
  v157 = type metadata accessor for SaltedHash();
  sub_225072D1C();
  v150 = v38;
  MEMORY[0x28223BE20](v39);
  sub_22507CD30();
  sub_22507F2B4();
  MEMORY[0x28223BE20](v40);
  v42 = v132 - v41;
  v43 = type metadata accessor for SessionInvalidationContext.KeySyncRequest.Reason();
  sub_225072D1C();
  v45 = v44;
  MEMORY[0x28223BE20](v46);
  sub_22507CD30();
  v161 = v47;
  sub_22507C940();
  MEMORY[0x28223BE20](v48);
  sub_22507E6C4();
  sub_22507F2B4();
  MEMORY[0x28223BE20](v49);
  v51 = v132 - v50;
  v163[5] = v7;
  v52 = [v7 options];
  v53 = [v52 isCloudCoreSession];

  if (v53)
  {
    v132[0] = v37;
    v132[1] = v6;
    v54 = *(v45 + 104);
    (v54)(v51, *MEMORY[0x277CFAAD0], v43);
    v55 = v51;
    v56 = v158;
    v133 = v43;
    v159 = v45;
    v151 = v55;
    if (v158)
    {
      v146 = sub_2250B0DFC(&qword_27D718EA0, &qword_225447A90);
      v57 = swift_allocObject();
      v145 = xmmword_225444480;
      *(v57 + 16) = xmmword_225444480;
      *(v57 + 32) = v149;
      *(v57 + 40) = v56;

      SaltedHash.init(_:)();
      v58 = v55;
      v59 = *(v45 + 8);
      v143 = v45 + 8;
      v142 = v59;
      (v59)(v55, v43);
      v60 = v150;
      v61 = v42;
      v62 = v42;
      v42 = v157;
      (*(v150 + 16))(v58, v61, v157);
      LODWORD(v147) = *MEMORY[0x277CFAAC8];
      (v54)(v58);
      sub_2250EF2C0(v24);
      v63 = type metadata accessor for SessionInvalidationContext();
      sub_2250F4D70(v24, 1, v63);
      if (v74)
      {
        (*(v60 + 8))(v62, v42);
        sub_22507F168(v24, &unk_27D718E60, &unk_225444780);
        v71 = v148;
        v64 = sub_22507EDE8();
        v24 = v154;
        sub_22507C8C0(v64, v65, 1, v154);
        v54 = v153;
        v66 = v155;
      }

      else
      {
        v141 = v62;
        v71 = v148;
        SessionInvalidationContext.keySyncRequest.getter();
        (*(*(v63 - 8) + 8))(v24, v63);
        v72 = sub_22507EDE8();
        v24 = v154;
        sub_2250F4D70(v72, v73, v154);
        v66 = v155;
        if (!v74)
        {
          v54 = v153;
          v80 = sub_225082674();
          v81(v80);
          v82 = SessionInvalidationContext.KeySyncRequest.serviceName.getter();
          v84 = v82 == v160 && v83 == v162;
          v85 = v157;
          if (v84)
          {

            v86 = v140;
          }

          else
          {
            v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v86 = v140;
            if ((v42 & 1) == 0)
            {
              v87 = sub_22507CA8C();
              v88(v87);
              v89 = sub_22507E9B0();
              v90(v89, v85);
              goto LABEL_13;
            }
          }

          v91 = v132[0];
          SessionInvalidationContext.KeySyncRequest.reason.getter();
          v92 = v159;
          v42 = v133;
          v93 = (*(v159 + 88))(v86, v133);
          if (v93 == v147)
          {
            (*(v92 + 96))(v86, v42);
            v94 = v150;
            v95 = v138;
            (*(v150 + 32))(v138, v86, v85);
            v96 = swift_allocObject();
            *(v96 + 16) = v145;
            *(v96 + 32) = v149;
            *(v96 + 40) = v158;

            v97 = SaltedHash.matches(_:)();

            v43 = v156;
            if (v97)
            {
              v98 = SessionInvalidationContext.KeySyncRequest.retryCount.getter();
              v67 = v98 + 1;
              v55 = v152;
              if (__OFADD__(v98, 1))
              {
                goto LABEL_48;
              }

              CKLog.getter();

              v158 = Logger.logObject.getter();
              v99 = static os_log_type_t.error.getter();

              LODWORD(v149) = v99;
              if (os_log_type_enabled(v158, v99))
              {
                v100 = swift_slowAlloc();
                sub_22507CCD4();
                v42 = swift_slowAlloc();
                v163[0] = v42;
                *v100 = 136315394;
                *(v100 + 4) = sub_225095AFC(v160, v162, v163);
                *(v100 + 12) = 2048;
                *(v100 + 14) = v67;
                v101 = v158;
                _os_log_impl(&dword_22506F000, v158, v149, "Session is being invalidated again due to a user key sync request triggered to update the same current identity for %s. retryCount: %ld", v100, 0x16u);
                sub_225073BF0(v42);
                sub_225094958();
                sub_225072C54();
                MEMORY[0x22AA65DF0]();
                v66 = v155;
                sub_225072C54();
                MEMORY[0x22AA65DF0]();
              }

              else
              {
              }

              (*(v136 + 8))(v134, v137);
              v108 = *(v150 + 8);
              v108(v138, v157);
              v109 = sub_22507CA8C();
              v110(v109);
              v108(v141, v157);
            }

            else
            {
              v104 = *(v94 + 8);
              v105 = v157;
              v104(v95, v157);
              v106 = sub_22507CA8C();
              v107(v106);
              v104(v141, v105);
              v67 = 0;
              v55 = v152;
            }
          }

          else
          {
            (*(v54 + 8))(v91, v24);
            v102 = sub_22507E9B0();
            v103(v102, v85);
            (v142)(v86, v42);
            v67 = 0;
            v55 = v152;
            v43 = v156;
          }

LABEL_31:
          (*(v159 + 16))(v161, v151, v42);

          SessionInvalidationContext.KeySyncRequest.init(serviceName:reason:retryCount:)();
          if (v67)
          {
            goto LABEL_38;
          }

          sub_2250EF2C0(v66);
          v111 = type metadata accessor for SessionInvalidationContext();
          v112 = sub_22509537C();
          sub_2250F4D70(v112, v113, v111);
          if (v74)
          {
            sub_22507F168(v66, &unk_27D718E60, &unk_225444780);
            v116 = v144;
            v114 = sub_22509537C();
            sub_22507C8C0(v114, v115, 1, v24);
          }

          else
          {
            v116 = v144;
            SessionInvalidationContext.keySyncRequest.getter();
            sub_22508E760();
            v117 = sub_225082674();
            v118(v117);
            v119 = sub_22509537C();
            sub_2250F4D70(v119, v120, v24);
            if (!v121)
            {
              v123 = v139;
              (*(v54 + 32))(v139, v116, v24);
              v124 = SessionInvalidationContext.KeySyncRequest.isEquivalent(to:)();
              if (v124)
              {
                if (!__OFADD__(SessionInvalidationContext.KeySyncRequest.retryCount.getter(), 1))
                {
                  SessionInvalidationContext.KeySyncRequest.retryCount.setter();
                  v125 = v135;
                  CKLog.getter();
                  v126 = Logger.logObject.getter();
                  v127 = static os_log_type_t.error.getter();
                  if (os_log_type_enabled(v126, v127))
                  {
                    v128 = swift_slowAlloc();
                    sub_22507CCD4();
                    v42 = swift_slowAlloc();
                    v163[0] = v42;
                    *v128 = 136315138;
                    swift_beginAccess();
                    sub_2250F4D28(&unk_27D7193C8, MEMORY[0x277CFAAD8], MEMORY[0x277CFAAE0]);
                    v129 = dispatch thunk of CustomStringConvertible.description.getter();
                    v131 = sub_225095AFC(v129, v130, v163);

                    *(v128 + 4) = v131;
                    v43 = v156;
                    _os_log_impl(&dword_22506F000, v126, v127, "Session is being re-invalidated for the same reason: %s", v128, 0xCu);
                    sub_225073BF0(v42);
                    sub_225094958();
                    sub_225072C54();
                    MEMORY[0x22AA65DF0]();
                    sub_225072C54();
                    MEMORY[0x22AA65DF0]();

                    (*(v136 + 8))(v135, v137);
                  }

                  else
                  {

                    (*(v136 + 8))(v125, v137);
                  }

                  (*(v54 + 8))(v139, v24);
                  goto LABEL_38;
                }

                __break(1u);
LABEL_48:
                __break(1u);
                return;
              }

              (*(v54 + 8))(v123, v24);
LABEL_38:
              swift_beginAccess();
              (*(v54 + 16))(v43, v55, v24);
              sub_2250F1B30(v43);
              v122 = *(v54 + 8);
              v122(v43, v24);
              (*(v159 + 8))(v151, v42);
              v122(v55, v24);
              return;
            }
          }

          sub_22507F168(v116, &qword_27D7193C0, &qword_225445B38);
          goto LABEL_38;
        }

        v75 = sub_22507E9B0();
        v76(v75, v157);
        v54 = v153;
      }

      sub_22507F168(v71, &qword_27D7193C0, &qword_225445B38);
LABEL_13:
      v67 = 0;
      v55 = v152;
      v43 = v156;
      sub_225094958();
      goto LABEL_31;
    }

    v67 = v146;
    sub_2250F4AA8(v145, v146);
    v68 = sub_22507EDE8();
    v69 = v147;
    sub_2250F4D70(v68, v70, v147);
    if (v74)
    {
      sub_22507F168(v67, &unk_27D719260, &unk_225445B40);
      sub_22507F21C();
      sub_225094958();
    }

    else
    {
      v77 = v143;
      v78 = v141;
      (*(v143 + 32))(v141, v67, v69);
      v24 = v142;
      (*(v77 + 16))(v142, v78, v69);
      v67 = v161;
      MEMORY[0x22AA624C0](v24);
      v79 = *(v77 + 8);
      v43 = v77 + 8;
      v79(v78, v69);
      v42 = v133;
      (*(v45 + 8))(v55, v133);
      (v54)(v67, *MEMORY[0x277CFAAC0], v42);
      (*(v45 + 32))(v55, v67, v42);
      sub_22507F21C();
    }

    v66 = v155;
    goto LABEL_31;
  }
}

void sub_2250F4674(char a1)
{
  v3 = v1;
  v24[1] = *MEMORY[0x277D85DE8];
  v5 = type metadata accessor for Logger();
  sub_225072D1C();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22507F304();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  sub_22507E450();
  if (a1)
  {
    CCLog.getter();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_22506F000, v13, v14, "Auth token renewal in progress for the account, starting validation timer.", v15, 2u);
      sub_225072C54();
      MEMORY[0x22AA65DF0]();
    }

    (*(v7 + 8))(v2, v5);
    [v3 _restartSessionValidationTimer_];
  }

  else
  {
    CCLog.getter();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_22506F000, v16, v17, "Auth token renewal completed for the account, checking session validity.", v18, 2u);
      sub_225072C54();
      MEMORY[0x22AA65DF0]();
    }

    (*(v7 + 8))(v11, v5);
    [v3 _cancelSessionValidationTimer];
    v24[0] = 0;
    v19 = [v3 checkSessionValidityCacheOnly:0 error:v24];
    v20 = v24[0];
    if (v19)
    {

      v21 = v20;
    }

    else
    {
      v22 = v24[0];
      v23 = _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

void sub_2250F498C(uint64_t a1)
{
  if (*MEMORY[0x277CBC810] != 1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = [v1 options];
  v3 = [v2 isCloudCoreSession];

  if (!v3)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v4 = _convertErrorToNSError(_:)();
  [v1 setSessionInvalidationError_];
}

uint64_t sub_2250F4AA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2250B0DFC(&unk_27D719260, &unk_225445B40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2250F4B18()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_2250F4BF8;

  return sub_2250F3104(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_2250F4BF8()
{
  v1 = *v0;
  sub_225072D68();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

unint64_t sub_2250F4CE4()
{
  result = qword_280D533F0;
  if (!qword_280D533F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D533F0);
  }

  return result;
}

uint64_t sub_2250F4D28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2250F4D88(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x22AA65DF0);
  }

  return result;
}

uint64_t sub_2250F4DD8()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void *sub_2250F4E2C()
{

  return v0;
}

uint64_t sub_2250F4E5C()
{
  v0 = sub_2250F4E2C();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t type metadata accessor for CKLogEvent(uint64_t a1)
{
  result = qword_27D7194A8;
  if (!qword_27D7194A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2250F4F24(uint64_t a1)
{
  sub_2250F4FD0(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for TimeZone();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2250F4FD0(uint64_t a1)
{
  if (!qword_27D7194B8)
  {
    type metadata accessor for Date();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_27D7194B8);
    }
  }
}

uint64_t sub_2250F5070(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Date();
  sub_225072D1C();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v66[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_2250B0DFC(&unk_27D719260, &unk_225445B40);
  MEMORY[0x28223BE20](v11 - 8);
  sub_225098668();
  MEMORY[0x28223BE20](v12);
  v14 = &v66[-v13];
  v15 = sub_2250B0DFC(&qword_27D7194C8, &qword_225445F58);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v66[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v20 = &v66[-v19];
  v21 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_37;
  }

  v22 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v22 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_37;
  }

  v23 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
  if (!v23 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 48) != *(a2 + 48))
  {
    goto LABEL_37;
  }

  v68 = v2;
  v70 = v7;
  v69 = type metadata accessor for CKLogEvent(0);
  v24 = *(v69 + 32);
  v25 = *(v15 + 48);
  sub_2250F4AA8(a1 + v24, v20);
  sub_2250F4AA8(a2 + v24, &v20[v25]);
  sub_22507F37C(v20);
  if (v21)
  {
    sub_22507F37C(&v20[v25]);
    if (v21)
    {
      sub_22507F168(v20, &unk_27D719260, &unk_225445B40);
      goto LABEL_27;
    }

LABEL_25:
    v29 = v20;
LABEL_36:
    sub_22507F168(v29, &qword_27D7194C8, &qword_225445F58);
    goto LABEL_37;
  }

  sub_2250F4AA8(v20, v14);
  sub_22507F37C(&v20[v25]);
  if (v26)
  {
    v27 = sub_22507F4B0();
    v28(v27);
    goto LABEL_25;
  }

  v30 = v70;
  (*(v70 + 32))(v10, &v20[v25], v5);
  sub_225072E1C();
  v33 = sub_2250F5958(v31, v32, MEMORY[0x277CC9598]);
  v67 = sub_225075630(v33);
  v34 = *(v30 + 8);
  (v34)(v10, v5);
  v35 = sub_22507F4B0();
  v34(v35);
  sub_22507F168(v20, &unk_27D719260, &unk_225445B40);
  if ((v67 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_27:
  v36 = v69;
  v37 = *(v69 + 36);
  v38 = *(v15 + 48);
  sub_2250F4AA8(a1 + v37, v18);
  sub_2250F4AA8(a2 + v37, &v18[v38]);
  sub_22507F37C(v18);
  if (!v21)
  {
    sub_2250F4AA8(v18, v68);
    sub_22507F37C(&v18[v38]);
    if (!v39)
    {
      v44 = v70;
      (*(v70 + 32))(v10, &v18[v38], v5);
      sub_225072E1C();
      v47 = sub_2250F5958(v45, v46, MEMORY[0x277CC9598]);
      v48 = sub_225075630(v47);
      v49 = *(v44 + 8);
      (v49)(v10, v5);
      v50 = sub_22507F4B0();
      v49(v50);
      sub_22507F168(v18, &unk_27D719260, &unk_225445B40);
      if (v48)
      {
        goto LABEL_40;
      }

LABEL_37:
      v42 = 0;
      return v42 & 1;
    }

    v40 = sub_22507F4B0();
    v41(v40);
    goto LABEL_35;
  }

  sub_22507F37C(&v18[v38]);
  if (!v21)
  {
LABEL_35:
    v29 = v18;
    goto LABEL_36;
  }

  sub_22507F168(v18, &unk_27D719260, &unk_225445B40);
LABEL_40:
  if ((MEMORY[0x22AA62460](a1 + v36[10], a2 + v36[10]) & 1) == 0)
  {
    goto LABEL_37;
  }

  sub_22507CDD0(v36[11]);
  v53 = v21 && v51 == v52;
  if (!v53 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_37;
  }

  sub_22507CDD0(v36[12]);
  v56 = v21 && v54 == v55;
  if (!v56 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_37;
  }

  sub_22507CDD0(v36[13]);
  v59 = v21 && v57 == v58;
  if (!v59 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_37;
  }

  sub_22507CDD0(v36[14]);
  v62 = v21 && v60 == v61;
  if (!v62 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_37;
  }

  sub_22507CDD0(v36[15]);
  if (v21 && v63 == v64)
  {
    v42 = 1;
  }

  else
  {
    v42 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v42 & 1;
}

uint64_t sub_2250F55A0(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  sub_225072D1C();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2250B0DFC(&unk_27D719260, &unk_225445B40);
  MEMORY[0x28223BE20](v9 - 8);
  sub_225098668();
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(*(v1 + 48));
  v13 = type metadata accessor for CKLogEvent(0);
  sub_2250F4AA8(v1 + *(v13 + 32), v12);
  if (sub_22507C8E8(v12, 1, v3) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v5 + 32))(v8, v12, v3);
    Hasher._combine(_:)(1u);
    sub_225072E1C();
    v16 = sub_2250F5958(v14, v15, MEMORY[0x277CC9588]);
    sub_22507C9B4(v16);
    (*(v5 + 8))(v8, v3);
  }

  sub_2250F4AA8(v1 + *(v13 + 36), v2);
  if (sub_22507C8E8(v2, 1, v3) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v5 + 32))(v8, v2, v3);
    Hasher._combine(_:)(1u);
    sub_225072E1C();
    v19 = sub_2250F5958(v17, v18, MEMORY[0x277CC9588]);
    sub_22507C9B4(v19);
    (*(v5 + 8))(v8, v3);
  }

  type metadata accessor for TimeZone();
  sub_2250F5958(&qword_27D7194E0, MEMORY[0x277CC9A70], MEMORY[0x277CC9A80]);
  dispatch thunk of Hashable.hash(into:)();
  sub_225072C88();
  sub_225072C88();
  sub_225072C88();
  sub_225072C88();
  return sub_225072C88();
}

Swift::Int sub_2250F58B8()
{
  Hasher.init(_seed:)();
  sub_2250F55A0(v1);
  return Hasher._finalize()();
}

uint64_t sub_2250F58F8@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

Swift::Int sub_2250F5910(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_2250F55A0(v2);
  return Hasher._finalize()();
}

uint64_t sub_2250F5958(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2250F59A0(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_2250B0DFC(&qword_27D7193C0, &qword_225445B38);
  v7 = sub_22507CD44(v6);
  MEMORY[0x28223BE20](v7);
  v9 = &v67 - v8;
  v10 = type metadata accessor for SaltedHash();
  v11 = sub_22507CD44(v10);
  MEMORY[0x28223BE20](v11);
  v73 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SessionInvalidationContext();
  v14 = sub_22507CD44(v13);
  MEMORY[0x28223BE20](v14);
  v15 = sub_2250B0DFC(&unk_27D7193B0, &qword_225445E18);
  v16 = sub_22507CD44(v15);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v67 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v67 - v24;
  result = MEMORY[0x28223BE20](v23);
  v28 = &v67 - v27;
  if (*MEMORY[0x277CBC810] != 1)
  {
    __break(1u);
    return result;
  }

  v29 = sub_2250F60E4(v3);
  if (v29)
  {
    v30 = v29;
    v74 = a1;
    v75 = a2;

    AnyHashable.init<A>(_:)();
    sub_2250ACD74(v76, v30, &v77);

    sub_2250B28FC(v76);
    if (*(&v78 + 1))
    {
      v72 = v9;
      v31 = type metadata accessor for CKSessionReadinessErrorBox();
      result = sub_22507F39C(v31, v32, v33, v31);
      if ((result & 1) == 0)
      {
        return result;
      }

      v70 = v76[0];
      v34 = [v3 container];
      v35 = [v34 options];

      v36 = [v35 ckSessionAcquiredInfo];
      if (v36)
      {
        type metadata accessor for CKSessionAcquiredInfo();
        if (swift_dynamicCastClass())
        {
          CKSessionAcquiredInfo.anySessionAcquiredInfo.getter();
          v37 = 0;
        }

        else
        {
          v37 = 1;
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v37 = 1;
      }

      v41 = type metadata accessor for AnySessionAcquiredInfo();
      sub_22507C8C0(v28, v37, 1, v41);
      v42 = sub_2250F60E4(v3);
      v71 = v3;
      if (v42)
      {
        v43 = v42;
        v74 = 0xD000000000000025;
        v75 = 0x800000022547B4A0;
        AnyHashable.init<A>(_:)();
        sub_2250ACD74(v76, v43, &v77);

        sub_2250B28FC(v76);
        if (*(&v78 + 1))
        {
          v44 = type metadata accessor for CKSessionInvalidationContext();
          if (sub_22507F39C(v44, v45, v46, v44))
          {
            v47 = v76[0];
LABEL_29:
            v61 = v70;
            v62 = v47;
            v63 = related decl 'e' for CKUnderlyingErrorCode.init(sessionReadinessErrorBox:invalidationContextBox:)();
            v64 = _convertErrorToNSError(_:)();

            v65 = [v64 CKClientSuitableError];
            v66 = [v71 container];
            [v66 applySessionValidityErrorForTesting_];

            v38 = &unk_27D7193B0;
            v39 = &qword_225445E18;
            v40 = v28;
            return sub_22507F168(v40, v38, v39);
          }

LABEL_19:
          sub_2250B0DFC(&qword_27D718EA0, &qword_225447A90);
          v48 = swift_allocObject();
          *(v48 + 16) = xmmword_225444480;
          v49 = [v3 container];
          v50 = [v49 deviceID];

          v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v53 = v52;

          *(v48 + 32) = v51;
          *(v48 + 40) = v53;
          SaltedHash.init(_:)();
          sub_2250F6150(v28, v25);
          sub_225072CA4(v25);
          if (v54)
          {
            sub_22507F168(v25, &unk_27D7193B0, &qword_225445E18);
            v68 = 0;
            v69 = 0;
          }

          else
          {
            v55 = AnySessionAcquiredInfo.serviceName.getter();
            v68 = v56;
            v69 = v55;
            sub_225072E34();
            (*(v57 + 8))(v25, v41);
          }

          sub_2250F6150(v28, v22);
          sub_225072CA4(v22);
          if (v54)
          {
            sub_22507F168(v22, &unk_27D7193B0, &qword_225445E18);
            v67 = 0;
          }

          else
          {
            v67 = AnySessionAcquiredInfo.privilegedInfoHash.getter();
            sub_225072E34();
            (*(v58 + 8))(v22, v41);
          }

          sub_2250F6150(v28, v19);
          sub_225072CA4(v19);
          if (v54)
          {
            sub_22507F168(v19, &unk_27D7193B0, &qword_225445E18);
          }

          else
          {
            AnySessionAcquiredInfo.userPersonaUniqueString.getter();
            sub_225072E34();
            (*(v59 + 8))(v19, v41);
          }

          type metadata accessor for CKSessionInvalidationContext();
          v60 = type metadata accessor for SessionInvalidationContext.KeySyncRequest();
          sub_22507C8C0(v72, 1, 1, v60);
          SessionInvalidationContext.init(deviceIDHash:primaryServiceName:privilegedInfoHash:userPersonaUniqueString:keySyncRequest:)();
          v47 = CKSessionInvalidationContext.__allocating_init(_:)();
          goto LABEL_29;
        }
      }

      else
      {
        v77 = 0u;
        v78 = 0u;
      }

      sub_22507F168(&v77, &qword_27D718AE0, &unk_225443AA0);
      goto LABEL_19;
    }
  }

  else
  {
    v77 = 0u;
    v78 = 0u;
  }

  v38 = &qword_27D718AE0;
  v39 = &unk_225443AA0;
  v40 = &v77;
  return sub_22507F168(v40, v38, v39);
}

uint64_t sub_2250F60E4(void *a1)
{
  v1 = [a1 unitTestOverrides];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_2250F6150(uint64_t a1, uint64_t a2)
{
  v4 = sub_2250B0DFC(&unk_27D7193B0, &qword_225445E18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2250F61C8(uint64_t a1)
{
  result = type metadata accessor for PartialTrafficLog.RequestMetadata(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PartialTrafficLog.ResponseMetadata(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

__n128 sub_2250F628C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2250F62A0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2250F62E0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_2250F6360(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    sub_2250F63FC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2250F63FC()
{
  if (!qword_280D53500)
  {
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_280D53500);
    }
  }
}

uint64_t sub_2250F6458(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2250F6498(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

      return sub_2250FBC5C(result, a2);
    }

    *(result + 16) = 0;
    if (a2)
    {
      return sub_2250FBC5C(result, a2);
    }
  }

  return result;
}

uint64_t sub_2250F64DC(uint64_t result, int a2, int a3)
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

      return sub_2250FBC5C(result, a2);
    }

    *(result + 32) = 0;
    if (a2)
    {
      return sub_2250FBC5C(result, a2);
    }
  }

  return result;
}

void sub_2250F654C(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    type metadata accessor for URL();
    if (v2 <= 0x3F)
    {
      sub_2250F63FC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2250F6608(uint64_t a1)
{
  sub_22507CEE8(a1);
  v6 = v6 && v4 == v5;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v7 = type metadata accessor for PartialTrafficLog.RequestMetadata(0), (sub_2250FBCE4(v7)) && (static URL.== infix(_:_:)() & 1) != 0 && ((sub_2250FBC44(v3[7]), v6) ? (v10 = v8 == v9) : (v10 = 0), (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (sub_2250FA094(*(v2 + v3[8]), *(v1 + v3[8])) & 1) != 0 && ((sub_2250FBC44(v3[9]), v6) ? (v13 = v11 == v12) : (v13 = 0), v13 || (_stringCompareWithSmolCheck(_:_:expecting:)())))
  {
    v14 = *(v2 + v3[10]) ^ *(v1 + v3[10]) ^ 1;
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_2250F66D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5574736575716572 && a2 == 0xEB00000000444955;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1702125924 && a2 == 0xE400000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 7107189 && a2 == 0xE300000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x646F6874656DLL && a2 == 0xE600000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x73726564616568 && a2 == 0xE700000000000000;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x4374736575716572 && a2 == 0xEC0000007373616CLL;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD000000000000018 && 0x800000022547B560 == a2)
            {

              return 6;
            }

            else
            {
              v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

void sub_2250F6918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_225094964();
  v29 = v28;
  v58 = v30;
  type metadata accessor for URL();
  sub_225072D1C();
  MEMORY[0x28223BE20](v31);
  sub_225072C00();
  type metadata accessor for Date();
  sub_225072D1C();
  MEMORY[0x28223BE20](v32);
  sub_225072C00();
  sub_2250B0DFC(&qword_27D719638, &qword_2254465A8);
  sub_225072D1C();
  sub_22507CA80();
  MEMORY[0x28223BE20](v33);
  sub_2250FBCB8();
  v59 = type metadata accessor for PartialTrafficLog.RequestMetadata(0);
  sub_225072BF0();
  MEMORY[0x28223BE20](v34);
  sub_225072C00();
  v37 = (v36 - v35);
  v38 = sub_225098910();
  sub_225073BAC(v38, v39);
  sub_2250974A8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v27)
  {
    sub_225073BF0(v29);
  }

  else
  {
    sub_2250FBBA0();
    *v37 = KeyedDecodingContainer.decode(_:forKey:)();
    v37[1] = v40;
    sub_2250958B0();
    sub_225072CC4();
    sub_2250FA4F0(v41, v42, MEMORY[0x277CC95A0]);
    sub_2250FBBA0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v43 = sub_225095434(v59[5]);
    v44(v43);
    sub_2250FBBF0();
    sub_225082680();
    sub_2250FA4F0(v45, v46, MEMORY[0x277CC9280]);
    sub_2250FBBA0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v47 = sub_225095434(v59[6]);
    v48(v47);
    sub_2250FBBA0();
    v49 = KeyedDecodingContainer.decode(_:forKey:)();
    v50 = (v37 + v59[7]);
    *v50 = v49;
    v50[1] = v51;
    sub_2250B0DFC(&qword_27D719600, &qword_225446578);
    sub_22508E770(&qword_27D719608, MEMORY[0x277D83808]);
    sub_2250FBBA0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v37 + v59[8]) = v60;
    sub_2250FBBA0();
    v52 = KeyedDecodingContainer.decode(_:forKey:)();
    v53 = (v37 + v59[9]);
    *v53 = v52;
    v53[1] = v54;
    sub_2250FBBA0();
    v55 = KeyedDecodingContainer.decode(_:forKey:)();
    v56 = sub_225097E20();
    v57(v56);
    *(v37 + v59[10]) = v55 & 1;
    sub_2250FA634(v37, v58, type metadata accessor for PartialTrafficLog.RequestMetadata);
    sub_225073BF0(v29);
    sub_2250FA03C(v37, type metadata accessor for PartialTrafficLog.RequestMetadata);
  }

  sub_225095814();
}

uint64_t sub_2250F6F44(uint64_t a1)
{
  sub_22507CEE8(a1);
  v6 = v6 && v4 == v5;
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v7 = type metadata accessor for PartialTrafficLog.ResponseMetadata(0);
  if ((sub_2250FBCE4(v7) & 1) == 0 || *(v2 + *(v3 + 24)) != *(v1 + *(v3 + 24)))
  {
    return 0;
  }

  v8 = *(v3 + 28);
  v9 = *(v2 + v8);
  v10 = *(v1 + v8);

  return sub_2250FA094(v9, v10);
}

uint64_t sub_2250F6FD4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5574736575716572 && a2 == 0xEB00000000444955;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1702125924 && a2 == 0xE400000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x737574617473 && a2 == 0xE600000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x73726564616568 && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

void sub_2250F7134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_225094964();
  v23 = v22;
  v39 = v24;
  v25 = type metadata accessor for Date();
  sub_225072D1C();
  v40 = v26;
  MEMORY[0x28223BE20](v27);
  sub_225072C00();
  sub_2250FBCB8();
  v42 = sub_2250B0DFC(&qword_27D7195F0, &qword_225446570);
  sub_225072D1C();
  v41 = v28;
  sub_22507CA80();
  MEMORY[0x28223BE20](v29);
  v30 = sub_22507F234();
  v31 = type metadata accessor for PartialTrafficLog.ResponseMetadata(v30);
  sub_225072BF0();
  MEMORY[0x28223BE20](v32);
  sub_225072C00();
  v35 = (v34 - v33);
  sub_225073BAC(v23, v23[3]);
  sub_225097A9C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v19)
  {
    sub_225073BF0(v23);
  }

  else
  {
    *v35 = KeyedDecodingContainer.decode(_:forKey:)();
    v35[1] = v36;
    sub_2250958B0();
    sub_225072CC4();
    sub_2250FA4F0(v37, v38, MEMORY[0x277CC95A0]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v40 + 32))(v35 + v31[5], v20, v25);
    sub_2250FBBF0();
    *(v35 + v31[6]) = KeyedDecodingContainer.decode(_:forKey:)();
    sub_2250B0DFC(&qword_27D719600, &qword_225446578);
    sub_22508E770(&qword_27D719608, MEMORY[0x277D83808]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v41 + 8))(v21, v42);
    *(v35 + v31[7]) = v43;
    sub_2250FA634(v35, v39, type metadata accessor for PartialTrafficLog.ResponseMetadata);
    sub_225073BF0(v23);
    sub_2250FA03C(v35, type metadata accessor for PartialTrafficLog.ResponseMetadata);
  }

  sub_225095814();
}

uint64_t sub_2250F74D4(uint64_t a1)
{
  sub_22507CEE8(a1);
  v5 = v5 && v3 == v4;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v2[2] == v1[2])
  {
    v6 = v2[4];
    v7 = v1[4];
    if (v6)
    {
      if (v7)
      {
        v8 = v2[3] == v1[3] && v6 == v7;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v7)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_2250F7558(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5574736575716572 && a2 == 0xEB00000000444955;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74616D726F66 && a2 == 0xE600000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x436567617373656DLL && a2 == 0xEC0000007373616CLL)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

void sub_2250F7674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_225094964();
  v22 = v21;
  v24 = v23;
  v25 = sub_2250B0DFC(&qword_27D7195D8, &qword_225446560);
  sub_225072D1C();
  v27 = v26;
  sub_22507CA80();
  MEMORY[0x28223BE20](v28);
  sub_2250FBBBC();
  sub_225097E2C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v19)
  {
    sub_225073BF0(v22);
  }

  else
  {
    v29 = KeyedDecodingContainer.decode(_:forKey:)();
    v31 = v30;
    sub_2250958B0();
    sub_2250FA5E0();
    sub_2250FBBE4();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_2250FBBF0();
    v32 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v33 = v20;
    v35 = v34;
    (*(v27 + 8))(v33, v25);
    sub_225073BF0(v22);
    *v24 = v29;
    v24[1] = v31;
    v24[2] = v36;
    v24[3] = v32;
    v24[4] = v35;
  }

  sub_225095814();
}

uint64_t sub_2250F7860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a1 == a5 && a2 == a6;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    JUMPOUT(0x22AA62370);
  }

  return 0;
}

uint64_t sub_2250F78E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2250755B0();
  v6 = a1 == v4 && a2 == v5;
  if (v6 || (sub_2250FBD04(v4, v5, a1) & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61447463656A626FLL && a2 == 0xEA00000000006174)
  {

    return 1;
  }

  else
  {
    v9 = sub_2250FBD04(0x61447463656A626FLL, 0xEA00000000006174, a1);

    if (v9)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int sub_2250F7994(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x22AA635F0](a1 & 1);
  return Hasher._finalize()();
}

void sub_2250F79DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_225094964();
  v26 = v25;
  v29 = sub_2250981D4(v27, v28);
  sub_2250B0DFC(v29, v30);
  sub_225072D1C();
  sub_22507CA80();
  MEMORY[0x28223BE20](v31);
  sub_2250FBBBC();
  v26();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v24)
  {
    sub_225073BF0(v23);
  }

  else
  {
    sub_2250FBCD8();
    KeyedDecodingContainer.decode(_:forKey:)();
    sub_2250FA58C();
    sub_2250FBBE4();
    sub_2250FBCD8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v32 = sub_225095458();
    v33(v32);

    v34 = sub_225098910();
    sub_22508D04C(v34, v35);
    sub_225073BF0(v23);

    v36 = sub_225098910();
    sub_22508D128(v36, v37);
  }

  sub_225095814();
}

uint64_t sub_2250F7B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_2250F7BB8(uint64_t a1, uint64_t a2)
{
  v3 = sub_2250755B0();
  if (v5 == v3 && a2 == v4)
  {

    v8 = 0;
  }

  else
  {
    v7 = sub_2250FBD04(v3, v4, v5);

    v8 = v7 ^ 1;
  }

  return v8 & 1;
}

void sub_2250F7C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_225094964();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v28 = sub_2250981D4(v26, v27);
  v30 = sub_2250B0DFC(v28, v29);
  sub_225072D1C();
  a10 = v31;
  sub_22507CA80();
  MEMORY[0x28223BE20](v32);
  v34 = &a9 - v33;
  sub_225073BAC(v20, v20[3]);
  v25();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v21)
  {
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(a10 + 8))(v34, v30);
  }

  sub_225073BF0(v20);
  sub_225095814();
}

uint64_t sub_2250F7D58(uint64_t a1, uint64_t a2)
{
  v89 = a2;
  v86 = type metadata accessor for PartialTrafficLog.ResponseMetadata(0);
  sub_225072BF0();
  MEMORY[0x28223BE20](v5);
  sub_225072C00();
  sub_2250FBC38(v7 - v6);
  v8 = type metadata accessor for PartialTrafficLog.RequestMetadata(0);
  MEMORY[0x28223BE20](v8 - 8);
  sub_225072C00();
  sub_2250FBC38(v10 - v9);
  type metadata accessor for PartialTrafficLog(0);
  sub_225072BF0();
  v12 = MEMORY[0x28223BE20](v11);
  v14 = (&v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x28223BE20](v12);
  v17 = (&v84 - v16);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v84 - v19;
  MEMORY[0x28223BE20](v18);
  sub_22507F2B4();
  MEMORY[0x28223BE20](v21);
  sub_22509764C();
  MEMORY[0x28223BE20](v22);
  sub_225098210();
  MEMORY[0x28223BE20](v23);
  v25 = &v84 - v24;
  sub_2250B0DFC(&qword_27D7194E8, &qword_2254464A8);
  sub_22507CA80();
  v27 = MEMORY[0x28223BE20](v26);
  v29 = (&v84 + *(v27 + 56) - v28);
  v30 = a1;
  v31 = &v84 - v28;
  sub_2250FA634(v30, &v84 - v28, type metadata accessor for PartialTrafficLog);
  sub_2250FA634(v89, v29, type metadata accessor for PartialTrafficLog);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_225072E44();
      sub_2250FA634(v31, v3, v52);
      v54 = *v3;
      v53 = v3[1];
      v56 = v3[2];
      v55 = v3[3];
      sub_22508D110();
      if (swift_getEnumCaseMultiPayload() != 1)
      {

        v75 = v56;
        goto LABEL_48;
      }

      v57 = *v29;
      v58 = v29[1];
      v59 = v29[2];
      v60 = v29[3];
      v61 = v54 == v57 && v53 == v58;
      if (!v61 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {

        sub_22508D128(v59, v60);

        v80 = v56;
        goto LABEL_55;
      }

      v62 = MEMORY[0x22AA62370](v56, v55, v59, v60);

      sub_22508D128(v59, v60);

      sub_22508D128(v56, v55);
      if (v62)
      {
        goto LABEL_46;
      }

      goto LABEL_56;
    case 2u:
      sub_225072E44();
      sub_2250FA634(v31, v2, v39);
      v41 = *v2;
      v40 = v2[1];
      sub_22508D110();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        goto LABEL_7;
      }

      goto LABEL_40;
    case 3u:
      sub_225072E44();
      v44 = v88;
      sub_2250FA634(v31, v88, v45);
      sub_22508D110();
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        sub_22509873C();
        v34 = v44;
        goto LABEL_43;
      }

      v46 = v87;
      sub_225095610(v29, v87, type metadata accessor for PartialTrafficLog.ResponseMetadata);
      v47 = *v44 == *v46 && v44[1] == v46[1];
      v48 = v86;
      if (v47 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (static Date.== infix(_:_:)() & 1) != 0 && *(v44 + *(v48 + 24)) == *(v46 + *(v48 + 24)) && (sub_2250FA094(*(v44 + *(v48 + 28)), *(v46 + *(v48 + 28))))
      {
        sub_22507CCE0();
        sub_2250FA03C(v46, v49);
        v50 = sub_22507F8F0();
        sub_2250FA03C(v50, v51);
        goto LABEL_46;
      }

      sub_22507CCE0();
      sub_2250FA03C(v46, v76);
      v77 = sub_22507F8F0();
      sub_2250FA03C(v77, v78);
      goto LABEL_56;
    case 4u:
      sub_225072E44();
      sub_2250FA634(v31, v20, v35);
      v36 = *(v20 + 1);
      v90 = *v20;
      *v91 = v36;
      *&v91[16] = *(v20 + 4);
      sub_22508D110();
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v37 = *(v29 + 1);
        v92 = *v29;
        *v93 = v37;
        *&v93[16] = v29[4];
        v38 = sub_2250F74D4(&v90);
        v94 = v92;
        sub_2250F9F98(&v94);
        v95 = *&v93[8];
        sub_2250F9FEC(&v95, &qword_27D718AE8);
        v96 = v90;
        sub_2250F9F98(&v96);
        v97[0] = *&v91[8];
        sub_2250F9FEC(v97, &qword_27D718AE8);
        goto LABEL_52;
      }

      v97[0] = *v20;
      sub_2250F9F98(v97);
      v92 = *&v91[8];
      sub_2250F9FEC(&v92, &qword_27D718AE8);
      goto LABEL_49;
    case 5u:
      sub_225072E44();
      sub_2250FA634(v31, v17, v63);
      v65 = *v17;
      v64 = v17[1];
      v66 = v17[2];
      v55 = v17[3];
      sub_22508D110();
      if (swift_getEnumCaseMultiPayload() != 5)
      {

        v75 = v66;
LABEL_48:
        sub_22508D128(v75, v55);
        goto LABEL_49;
      }

      v67 = v65 == *v29 && v64 == v29[1];
      if (v67 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v68 = sub_22507F8F0();
        v69 = MEMORY[0x22AA62370](v68);

        v70 = sub_2250FBCA0();
        sub_22508D128(v70, v71);

        v72 = sub_22507F8F0();
        sub_22508D128(v72, v73);
        if (v69)
        {
          goto LABEL_46;
        }
      }

      else
      {

        v81 = sub_2250FBCA0();
        sub_22508D128(v81, v82);

        v80 = v66;
LABEL_55:
        sub_22508D128(v80, v55);
      }

      goto LABEL_56;
    case 6u:
      sub_225072E44();
      sub_2250FA634(v31, v14, v74);
      v41 = *v14;
      v40 = v14[1];
      sub_22508D110();
      if (swift_getEnumCaseMultiPayload() != 6)
      {
LABEL_40:

        goto LABEL_49;
      }

LABEL_7:
      if (v41 == *v29 && v40 == v29[1])
      {

        goto LABEL_46;
      }

      sub_22507F8F0();
      v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v43)
      {
LABEL_46:
        sub_225075304();
        v38 = 1;
        return v38 & 1;
      }

LABEL_56:
      sub_225075304();
LABEL_57:
      v38 = 0;
      return v38 & 1;
    default:
      sub_225072E44();
      sub_2250FA634(v31, v25, v32);
      sub_22508D110();
      if (!swift_getEnumCaseMultiPayload())
      {
        v79 = v85;
        sub_225095610(v29, v85, type metadata accessor for PartialTrafficLog.RequestMetadata);
        v38 = sub_2250F6608(v25);
        sub_2250FA03C(v79, type metadata accessor for PartialTrafficLog.RequestMetadata);
        sub_2250FA03C(v25, type metadata accessor for PartialTrafficLog.RequestMetadata);
LABEL_52:
        sub_225075304();
        return v38 & 1;
      }

      sub_22507D3E0();
      v34 = v25;
LABEL_43:
      sub_2250FA03C(v34, v33);
LABEL_49:
      sub_2250F9FEC(v31, &qword_27D7194E8);
      goto LABEL_57;
  }
}

uint64_t sub_2250F84B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4D74736575716572 && a2 == 0xEF61746164617465;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4F74736575716572 && a2 == 0xED00007463656A62;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000016 && 0x800000022547B500 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x800000022547B520 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000015 && 0x800000022547B540 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x65736E6F70736572 && a2 == 0xEE007463656A624FLL;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x6574656C706D6F63 && a2 == 0xE800000000000000)
            {

              return 6;
            }

            else
            {
              v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2250F870C(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2250FBD04(12383, 0xE200000000000000, a1);

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_2250F8774()
{
  sub_225094964();
  v5 = v4;
  v137 = v6;
  sub_2250B0DFC(&qword_27D7194F0, &qword_2254464B8);
  sub_225072D1C();
  v138 = v8;
  v139 = v7;
  sub_22507CA80();
  MEMORY[0x28223BE20](v9);
  sub_22507E74C();
  v136 = v10;
  v131 = sub_2250B0DFC(&qword_27D7194F8, &qword_2254464C0);
  sub_225072D1C();
  v130 = v11;
  sub_22507CA80();
  MEMORY[0x28223BE20](v12);
  sub_22507E74C();
  v145 = v13;
  v129 = sub_2250B0DFC(&qword_27D719500, &qword_2254464C8);
  sub_225072D1C();
  v128 = v14;
  sub_22507CA80();
  MEMORY[0x28223BE20](v15);
  sub_22507E74C();
  v135 = v16;
  v127 = sub_2250B0DFC(&qword_27D719508, &qword_2254464D0);
  sub_225072D1C();
  v126 = v17;
  sub_22507CA80();
  MEMORY[0x28223BE20](v18);
  sub_22507E74C();
  v134 = v19;
  v124 = sub_2250B0DFC(&qword_27D719510, &qword_2254464D8);
  sub_225072D1C();
  v125 = v20;
  sub_22507CA80();
  MEMORY[0x28223BE20](v21);
  sub_22507E74C();
  v144 = v22;
  v123 = sub_2250B0DFC(&qword_27D719518, &qword_2254464E0);
  sub_225072D1C();
  v122 = v23;
  sub_22507CA80();
  MEMORY[0x28223BE20](v24);
  sub_22507E74C();
  v133 = v25;
  v121 = sub_2250B0DFC(&qword_27D719520, &qword_2254464E8);
  sub_225072D1C();
  v120 = v26;
  sub_22507CA80();
  MEMORY[0x28223BE20](v27);
  sub_22507E74C();
  v132 = v28;
  v143 = sub_2250B0DFC(&qword_27D719528, &qword_2254464F0);
  sub_225072D1C();
  v141 = v29;
  sub_22507CA80();
  MEMORY[0x28223BE20](v30);
  v31 = sub_22507F234();
  v140 = type metadata accessor for PartialTrafficLog(v31);
  sub_225072BF0();
  MEMORY[0x28223BE20](v32);
  sub_22507F2B4();
  MEMORY[0x28223BE20](v33);
  sub_22507F2B4();
  MEMORY[0x28223BE20](v34);
  sub_22507F2B4();
  v36 = MEMORY[0x28223BE20](v35);
  v38 = &v111 - v37;
  MEMORY[0x28223BE20](v36);
  sub_22509764C();
  MEMORY[0x28223BE20](v39);
  sub_225098210();
  v41 = MEMORY[0x28223BE20](v40);
  v43 = &v111 - v42;
  MEMORY[0x28223BE20](v41);
  v45 = &v111 - v44;
  v146 = v5;
  v46 = sub_2250FBCA0();
  sub_225073BAC(v46, v47);
  sub_225095468();
  v142 = v3;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    goto LABEL_10;
  }

  v115 = v2;
  v117 = v43;
  v116 = v1;
  v118 = v38;
  v48 = v144;
  v49 = v145;
  v150 = v45;
  v50 = KeyedDecodingContainer.allKeys.getter();
  v54 = sub_2250FA234(v50, 0);
  if (v52 == v53 >> 1)
  {
    v55 = v140;
LABEL_9:
    v68 = type metadata accessor for DecodingError();
    swift_allocError();
    v70 = v69;
    sub_2250B0DFC(&qword_27D719530, &qword_2254464F8);
    *v70 = v55;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v68 - 8) + 104))(v70, *MEMORY[0x277D84160], v68);
    swift_willThrow();
    swift_unknownObjectRelease();
    v71 = sub_22507C9D4();
    v72(v71);
LABEL_10:
    v73 = v146;
LABEL_11:
    sub_225073BF0(v73);
    sub_225095814();
    return;
  }

  v113 = 0;
  if (v52 < (v53 >> 1))
  {
    v112 = *(v51 + v52);
    v56 = sub_2250FA27C(v52 + 1, v53 >> 1, v54, v51, v52, v53);
    v58 = v57;
    v60 = v59;
    swift_unknownObjectRelease();
    v114 = v56;
    v62 = v138;
    v61 = v139;
    if (v58 == v60 >> 1)
    {
      switch(v112)
      {
        case 1:
          LOBYTE(v147[0]) = 1;
          sub_225097660();
          v78 = v133;
          sub_225075650(&type metadata for PartialTrafficLog.RequestObjectCodingKeys, v147);
          sub_2250FA49C();
          v48 = v123;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          swift_unknownObjectRelease();
          sub_22507E9C4();
          v99(v78, v48);
          v100 = sub_22507C9D4();
          v101(v100);
          sub_22509587C(v147[0]);
          goto LABEL_18;
        case 2:
          LOBYTE(v147[0]) = 2;
          sub_2250FA3F4();
          sub_225075650(&type metadata for PartialTrafficLog.RequestBodyStreamResetCodingKeys, v147);
          sub_2250FA448();
          sub_2250FBC68(&type metadata for PartialTrafficLog.RequestBodyStreamReset);
          sub_225093C20();
          swift_unknownObjectRelease();
          v86 = sub_22507F280();
          v87(v86, v61);
          v88 = sub_22507CC08();
          v89(v88);
          sub_2250FBC8C(v147[0]);
          goto LABEL_18;
        case 3:
          LOBYTE(v147[0]) = 3;
          sub_225097860();
          sub_225075650(&type metadata for PartialTrafficLog.ResponseMetadataCodingKeys, v147);
          type metadata accessor for PartialTrafficLog.ResponseMetadata(0);
          sub_22509571C();
          sub_2250FA4F0(v74, v75, &unk_2254462A0);
          v76 = v118;
          v77 = v127;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          swift_unknownObjectRelease();
          v90 = sub_22507F280();
          v91(v90, v77);
          v92 = sub_22507C9D4();
          v93(v92);
          swift_storeEnumTagMultiPayload();
          sub_22507F3BC();
          v98 = v76;
          break;
        case 4:
          LOBYTE(v147[0]) = 4;
          sub_225097D04();
          sub_225075650(&type metadata for PartialTrafficLog.ResponseConfigurationCodingKeys, v147);
          sub_2250FA3A0();
          sub_2250FBC68(&type metadata for PartialTrafficLog.ResponseConfiguration);
          sub_225093C20();
          swift_unknownObjectRelease();
          v80 = sub_22507F280();
          v81(v80, v61);
          v82 = sub_22507CC08();
          v83(v82);
          v84 = v147[1];
          v85 = v149;
          v48 = v119;
          *v119 = v147[0];
          v48[1] = v84;
          *(v48 + 1) = v148;
          v48[4] = v85;
          goto LABEL_18;
        case 5:
          LOBYTE(v147[0]) = 5;
          sub_225098158();
          sub_225075650(&type metadata for PartialTrafficLog.ResponseObjectCodingKeys, v147);
          sub_2250FA34C();
          v79 = v131;
          sub_2250FBCD8();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          sub_225093C20();
          swift_unknownObjectRelease();
          sub_22507E9C4();
          v102(v49, v79);
          v103 = sub_22507CC08();
          v104(v103);
          sub_22509587C(v147[0]);
          goto LABEL_18;
        case 6:
          LOBYTE(v147[0]) = 6;
          sub_2250958BC();
          v48 = v136;
          sub_225075650(&type metadata for PartialTrafficLog.CompleteCodingKeys, v147);
          sub_2250FA2F8();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          sub_225093C20();
          swift_unknownObjectRelease();
          (*(v62 + 8))(v48, v61);
          v105 = sub_22507CC08();
          v106(v105);
          sub_2250FBC8C(v147[0]);
LABEL_18:
          swift_storeEnumTagMultiPayload();
          sub_22507F3BC();
          v98 = v48;
          break;
        default:
          LOBYTE(v147[0]) = 0;
          sub_225095670();
          v63 = v132;
          sub_225075650(&type metadata for PartialTrafficLog.RequestMetadataCodingKeys, v147);
          type metadata accessor for PartialTrafficLog.RequestMetadata(0);
          sub_2250971EC();
          sub_2250FA4F0(v64, v65, &unk_225446138);
          v66 = v117;
          v67 = v121;
          sub_2250FBCD8();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          swift_unknownObjectRelease();
          sub_22507E9C4();
          v94(v63, v67);
          v95 = sub_22507C9D4();
          v96(v95);
          swift_storeEnumTagMultiPayload();
          sub_22507F3BC();
          v98 = v66;
          break;
      }

      sub_225095610(v98, v150, v97);
      v107 = v146;
      sub_22507F3BC();
      v108 = sub_225098910();
      sub_225095610(v108, v109, v110);
      v73 = v107;
      goto LABEL_11;
    }

    v55 = v140;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_2250F94A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2250F66D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2250F94F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2250F6910();
  *a1 = result;
  return result;
}

uint64_t sub_2250F9518(uint64_t a1)
{
  v2 = sub_2250974A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2250F9554(uint64_t a1)
{
  v2 = sub_2250974A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2250F95AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2250F6F3C();
  *a1 = result;
  return result;
}

uint64_t sub_2250F95D4(uint64_t a1)
{
  v2 = sub_225097760();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2250F9610(uint64_t a1)
{
  v2 = sub_225097760();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2250F9690(uint64_t a1)
{
  v2 = sub_2250FA700();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2250F96CC(uint64_t a1)
{
  v2 = sub_2250FA700();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2250F9794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2250F6FD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2250F97BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2250F712C();
  *a1 = result;
  return result;
}

uint64_t sub_2250F97E4(uint64_t a1)
{
  v2 = sub_225097A9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2250F9820(uint64_t a1)
{
  v2 = sub_225097A9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2250F9878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2250F7558(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2250F98A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2250F766C();
  *a1 = result;
  return result;
}

uint64_t sub_2250F98C8(uint64_t a1)
{
  v2 = sub_225097E2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2250F9904(uint64_t a1)
{
  v2 = sub_225097E2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2250F998C(uint64_t a1)
{
  v2 = sub_2250985BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2250F99C8(uint64_t a1)
{
  v2 = sub_2250985BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2250F9AAC(uint64_t a1)
{
  v2 = sub_225093204();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2250F9AE8(uint64_t a1)
{
  v2 = sub_225093204();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2250F9B94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2250F84B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2250F9BBC(uint64_t a1)
{
  v2 = sub_225095468();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2250F9BF8(uint64_t a1)
{
  v2 = sub_225095468();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2250F9C34(uint64_t a1)
{
  v2 = sub_2250958BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2250F9C70(uint64_t a1)
{
  v2 = sub_2250958BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2250F9CAC(uint64_t a1)
{
  v2 = sub_2250FA3F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2250F9CE8(uint64_t a1)
{
  v2 = sub_2250FA3F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2250F9D24(uint64_t a1)
{
  v2 = sub_225095670();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2250F9D60(uint64_t a1)
{
  v2 = sub_225095670();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2250F9D9C(uint64_t a1)
{
  v2 = sub_225097660();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2250F9DD8(uint64_t a1)
{
  v2 = sub_225097660();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2250F9E14(uint64_t a1)
{
  v2 = sub_225097D04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2250F9E50(uint64_t a1)
{
  v2 = sub_225097D04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2250F9E8C(uint64_t a1)
{
  v2 = sub_225097860();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2250F9EC8(uint64_t a1)
{
  v2 = sub_225097860();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2250F9F04(uint64_t a1)
{
  v2 = sub_225098158();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2250F9F40(uint64_t a1)
{
  v2 = sub_225098158();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2250F9FEC(uint64_t a1, uint64_t a2)
{
  v3 = sub_2250981D4(a1, a2);
  sub_2250B0DFC(v3, v4);
  sub_225072BF0();
  (*(v5 + 8))(v2);
  return v2;
}

uint64_t sub_2250FA03C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_225072BF0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2250FA094(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_13:
    v12 = v9 | (v3 << 6);
    v13 = result;
    v14 = (*(result + 48) + 16 * v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + 16 * v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_22507DF9C(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2250FA234(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_2250FA27C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_2250FA2F8()
{
  result = qword_27D719538;
  if (!qword_27D719538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D719538);
  }

  return result;
}

unint64_t sub_2250FA34C()
{
  result = qword_27D719540;
  if (!qword_27D719540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D719540);
  }

  return result;
}

unint64_t sub_2250FA3A0()
{
  result = qword_27D719548;
  if (!qword_27D719548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D719548);
  }

  return result;
}

unint64_t sub_2250FA3F4()
{
  result = qword_280D53A98;
  if (!qword_280D53A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53A98);
  }

  return result;
}

unint64_t sub_2250FA448()
{
  result = qword_27D719558;
  if (!qword_27D719558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D719558);
  }

  return result;
}

unint64_t sub_2250FA49C()
{
  result = qword_27D719560;
  if (!qword_27D719560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D719560);
  }

  return result;
}

uint64_t sub_2250FA4F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2250FA538()
{
  result = qword_280D53B18;
  if (!qword_280D53B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53B18);
  }

  return result;
}

unint64_t sub_2250FA58C()
{
  result = qword_27D7195C8;
  if (!qword_27D7195C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7195C8);
  }

  return result;
}

unint64_t sub_2250FA5E0()
{
  result = qword_27D7195E0;
  if (!qword_27D7195E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7195E0);
  }

  return result;
}

uint64_t sub_2250FA634(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_225072BF0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2250FA694(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_2250C7B40(&qword_27D719600, &qword_225446578);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2250FA700()
{
  result = qword_280D53B30;
  if (!qword_280D53B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53B30);
  }

  return result;
}

uint64_t sub_2250FA7A4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_2250FA82C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = sub_225095790(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2250FA914(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_2250FA99C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = sub_225095790(result, a2 + 6);
        }

        break;
    }
  }

  return result;
}

uint64_t _s14CloudKitDaemon17PartialTrafficLogO22RequestBodyStreamResetV10CodingKeysOwet_0_0(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return sub_2250C5F04(a1);
}

_BYTE *_s14CloudKitDaemon17PartialTrafficLogO22RequestBodyStreamResetV10CodingKeysOwst_0_0(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_2250FABD0()
{
  result = qword_27D719650;
  if (!qword_27D719650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D719650);
  }

  return result;
}

unint64_t sub_2250FAC28()
{
  result = qword_27D719658;
  if (!qword_27D719658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D719658);
  }

  return result;
}

unint64_t sub_2250FAC80()
{
  result = qword_27D719660;
  if (!qword_27D719660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D719660);
  }

  return result;
}

unint64_t sub_2250FACD8()
{
  result = qword_27D719668;
  if (!qword_27D719668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D719668);
  }

  return result;
}

unint64_t sub_2250FAD30()
{
  result = qword_27D719670;
  if (!qword_27D719670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D719670);
  }

  return result;
}

unint64_t sub_2250FAD88()
{
  result = qword_27D719678;
  if (!qword_27D719678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D719678);
  }

  return result;
}

unint64_t sub_2250FADE0()
{
  result = qword_27D719680;
  if (!qword_27D719680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D719680);
  }

  return result;
}

unint64_t sub_2250FAE38()
{
  result = qword_27D719688;
  if (!qword_27D719688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D719688);
  }

  return result;
}

unint64_t sub_2250FAE90()
{
  result = qword_27D719690;
  if (!qword_27D719690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D719690);
  }

  return result;
}

unint64_t sub_2250FAEE8()
{
  result = qword_27D719698;
  if (!qword_27D719698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D719698);
  }

  return result;
}

unint64_t sub_2250FAF40()
{
  result = qword_27D7196A0;
  if (!qword_27D7196A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7196A0);
  }

  return result;
}

unint64_t sub_2250FAF98()
{
  result = qword_27D7196A8;
  if (!qword_27D7196A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7196A8);
  }

  return result;
}

unint64_t sub_2250FAFF0()
{
  result = qword_27D7196B0;
  if (!qword_27D7196B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7196B0);
  }

  return result;
}

unint64_t sub_2250FB048()
{
  result = qword_27D7196B8;
  if (!qword_27D7196B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7196B8);
  }

  return result;
}

unint64_t sub_2250FB0A0()
{
  result = qword_27D7196C0;
  if (!qword_27D7196C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7196C0);
  }

  return result;
}

unint64_t sub_2250FB0F8()
{
  result = qword_280D53CD8;
  if (!qword_280D53CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53CD8);
  }

  return result;
}

unint64_t sub_2250FB150()
{
  result = qword_280D53CE0;
  if (!qword_280D53CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53CE0);
  }

  return result;
}

unint64_t sub_2250FB1A8()
{
  result = qword_280D53D38;
  if (!qword_280D53D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53D38);
  }

  return result;
}

unint64_t sub_2250FB200()
{
  result = qword_280D53D40;
  if (!qword_280D53D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53D40);
  }

  return result;
}

unint64_t sub_2250FB258()
{
  result = qword_280D53B20;
  if (!qword_280D53B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53B20);
  }

  return result;
}

unint64_t sub_2250FB2B0()
{
  result = qword_280D53B28;
  if (!qword_280D53B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53B28);
  }

  return result;
}

unint64_t sub_2250FB308()
{
  result = qword_280D53C10;
  if (!qword_280D53C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53C10);
  }

  return result;
}

unint64_t sub_2250FB360()
{
  result = qword_280D53C18;
  if (!qword_280D53C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53C18);
  }

  return result;
}

unint64_t sub_2250FB3B8()
{
  result = qword_280D53B40;
  if (!qword_280D53B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53B40);
  }

  return result;
}

unint64_t sub_2250FB410()
{
  result = qword_280D53B48;
  if (!qword_280D53B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53B48);
  }

  return result;
}

unint64_t sub_2250FB468()
{
  result = qword_280D53D18;
  if (!qword_280D53D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53D18);
  }

  return result;
}

unint64_t sub_2250FB4C0()
{
  result = qword_280D53D20;
  if (!qword_280D53D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53D20);
  }

  return result;
}

unint64_t sub_2250FB518()
{
  result = qword_280D53CF8;
  if (!qword_280D53CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53CF8);
  }

  return result;
}

unint64_t sub_2250FB570()
{
  result = qword_280D53D00;
  if (!qword_280D53D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53D00);
  }

  return result;
}

unint64_t sub_2250FB5C8()
{
  result = qword_280D53AD0;
  if (!qword_280D53AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53AD0);
  }

  return result;
}

unint64_t sub_2250FB620()
{
  result = qword_280D53AD8;
  if (!qword_280D53AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53AD8);
  }

  return result;
}

unint64_t sub_2250FB678()
{
  result = qword_280D53B00;
  if (!qword_280D53B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53B00);
  }

  return result;
}

unint64_t sub_2250FB6D0()
{
  result = qword_280D53B08;
  if (!qword_280D53B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53B08);
  }

  return result;
}

unint64_t sub_2250FB728()
{
  result = qword_280D53A88;
  if (!qword_280D53A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53A88);
  }

  return result;
}

unint64_t sub_2250FB780()
{
  result = qword_280D53A90;
  if (!qword_280D53A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53A90);
  }

  return result;
}

unint64_t sub_2250FB7D8()
{
  result = qword_280D53AB8;
  if (!qword_280D53AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53AB8);
  }

  return result;
}

unint64_t sub_2250FB830()
{
  result = qword_280D53AC0;
  if (!qword_280D53AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53AC0);
  }

  return result;
}

unint64_t sub_2250FB888()
{
  result = qword_280D53AA0;
  if (!qword_280D53AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53AA0);
  }

  return result;
}

unint64_t sub_2250FB8E0()
{
  result = qword_280D53AA8;
  if (!qword_280D53AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53AA8);
  }

  return result;
}

unint64_t sub_2250FB938()
{
  result = qword_280D53AE8;
  if (!qword_280D53AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53AE8);
  }

  return result;
}

unint64_t sub_2250FB990()
{
  result = qword_280D53AF0;
  if (!qword_280D53AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53AF0);
  }

  return result;
}

unint64_t sub_2250FB9E8()
{
  result = qword_280D53B58;
  if (!qword_280D53B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53B58);
  }

  return result;
}

unint64_t sub_2250FBA40()
{
  result = qword_280D53B60;
  if (!qword_280D53B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53B60);
  }

  return result;
}

unint64_t sub_2250FBA98()
{
  result = qword_280D53D50;
  if (!qword_280D53D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53D50);
  }

  return result;
}

unint64_t sub_2250FBAF0()
{
  result = qword_280D53D58;
  if (!qword_280D53D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53D58);
  }

  return result;
}

void *sub_2250FBBBC()
{
  v2 = v0[3];

  return sub_225073BAC(v0, v2);
}

uint64_t sub_2250FBC20()
{
  v1 = *(v0 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2250FBC68(uint64_t a1)
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

void *sub_2250FBC8C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v2 - 256);
  *v3 = a1;
  v3[1] = v1;
  return v3;
}

uint64_t sub_2250FBCE4(uint64_t a1)
{

  return static Date.== infix(_:_:)();
}

uint64_t sub_2250FBD04(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_2250FBD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

void sub_2250FBD34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 < 0)
  {
LABEL_12:
    __break(1u);
    return;
  }

  if (a3)
  {
    v15 = MEMORY[0x277D84F90];
    sub_225095964(0, a3, 0);
    v6 = 0;
    while (*(a4 + 16))
    {
      v7 = sub_2250D7360(v6);
      if ((v8 & 1) == 0)
      {
        goto LABEL_11;
      }

      v9 = (*(a4 + 56) + 16 * v7);
      v11 = *v9;
      v10 = v9[1];
      v13 = *(v15 + 16);
      v12 = *(v15 + 24);

      if (v13 >= v12 >> 1)
      {
        sub_225095964((v12 > 1), v13 + 1, 1);
      }

      ++v6;
      *(v15 + 16) = v13 + 1;
      v14 = v15 + 16 * v13;
      *(v14 + 32) = v11;
      *(v14 + 40) = v10;
      if (a3 == v6)
      {
        return;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }
}

uint64_t sub_2250FBE3C(uint64_t a1)
{
  v9 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  v3 = (a1 + 56);
  if (!v2)
  {
    return v9;
  }

  while (1)
  {
    v4 = *(v3 - 1);
    v5 = *v3;
    v6 = *(v3 - 2);
    v8[0] = *(v3 - 3);
    v8[1] = v6;
    v8[2] = v4;
    v8[3] = v5;

    sub_2250FBF00(&v9, v8);
    if (v1)
    {
      break;
    }

    v3 += 4;
    if (!--v2)
    {
      return v9;
    }
  }
}

void sub_2250FBF00(uint64_t a1, uint64_t a2)
{
  v15[2] = *MEMORY[0x277D85DE8];
  sub_2250FBD34(a1, a2, *(a2 + 16), *(a2 + 24));
  v15[0] = v3;
  sub_2250B0DFC(&qword_27D7196C8, qword_225447640);
  sub_2250FC218();
  v4 = BidirectionalCollection<>.joined(separator:)();
  v6 = v5;

  sub_2250FC27C();

  v7 = sub_2250FC2C0(v4, v6, 0);
  if (v7)
  {
    v8 = v7;

    v15[0] = 0;
    v9 = [v8 decompressedDataUsingAlgorithm:0 error:v15];
    v10 = v15[0];
    if (v9)
    {
      v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      type metadata accessor for PropertyListDecoder();
      swift_allocObject();
      PropertyListDecoder.init()();
      sub_2250B0DFC(&qword_27D7196E0, &qword_225447A40);
      sub_2250FC340(&qword_27D7196E8, &unk_27D7196F0, &unk_225446458, MEMORY[0x277D83978]);
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
      if (v2)
      {

        type metadata accessor for JSONDecoder();
        swift_allocObject();
        JSONDecoder.init()();
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();
        sub_2250C6DCC(v15[0]);
      }

      else
      {
        sub_2250C6DCC(v15[0]);
      }

      sub_22508D128(v11, v13);
    }

    else
    {
      v14 = v10;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  else
  {
    _StringGuts.grow(_:)(43);

    v15[0] = 0xD000000000000029;
    v15[1] = 0x800000022547B580;
    MEMORY[0x22AA62E50](v4, v6);

    related decl 'e' for CKErrorCode.init(_:description:)();
    swift_willThrow();
  }
}

unint64_t sub_2250FC218()
{
  result = qword_27D7196D0;
  if (!qword_27D7196D0)
  {
    sub_2250C7B40(&qword_27D7196C8, qword_225447640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7196D0);
  }

  return result;
}

unint64_t sub_2250FC27C()
{
  result = qword_27D7196D8;
  if (!qword_27D7196D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7196D8);
  }

  return result;
}

id sub_2250FC2C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = MEMORY[0x22AA62D80](a1, a2);

  v8 = [v6 initWithBase64EncodedString:v7 options:a3];

  return v8;
}

uint64_t sub_2250FC340(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2250C7B40(&qword_27D7196E0, &qword_225447A40);
    sub_2250FC3C8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2250FC3C8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PartialTrafficLog(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2250FC41C(void *a1)
{
  if (a1[2])
  {
    sub_2250B0DFC(&qword_27D719790, &qword_225443F00);
    v3 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  sub_225098754();
  v5 = v4 >> 6;

  v7 = 0;
  while (1)
  {
    if (!v1)
    {
      while (1)
      {
        v8 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v8 >= v5)
        {

          return v3;
        }

        v1 = a1[v8 + 8];
        ++v7;
        if (v1)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }

    v8 = v7;
LABEL_10:
    v9 = __clz(__rbit64(v1)) | (v8 << 6);
    sub_22508DECC(a1[6] + 40 * v9, __src);
    sub_22508DF28(a1[7] + 32 * v9, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    sub_22508DECC(__dst, v18);
    if (!swift_dynamicCast())
    {
      break;
    }

    v1 &= v1 - 1;
    sub_22508DF28(&__dst[40], v19);
    sub_22507F168(__dst, &unk_27D719760, &qword_225447800);
    v20 = v17;
    sub_2250B28C8(v19, v21);
    v10 = v20;
    sub_2250B28C8(v21, v22);
    sub_2250B28C8(v22, &v20);
    result = sub_22507DF9C(v10, *(&v10 + 1));
    v11 = result;
    if (v12)
    {
      *(v3[6] + 16 * result) = v10;

      v13 = (v3[7] + 32 * v11);
      sub_225073BF0(v13);
      result = sub_2250B28C8(&v20, v13);
      v7 = v8;
    }

    else
    {
      if (v3[2] >= v3[3])
      {
        goto LABEL_20;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 16 * result) = v10;
      result = sub_2250B28C8(&v20, (v3[7] + 32 * result));
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_21;
      }

      v3[2] = v16;
      v7 = v8;
    }
  }

  sub_22507F168(__dst, &unk_27D719760, &qword_225447800);

  return 0;
}

unint64_t sub_2250FC6B4(void *a1)
{
  if (a1[2])
  {
    sub_2250B0DFC(&unk_27D719780, &qword_225447860);
    v3 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  sub_225098754();
  v5 = v4 >> 6;

  v7 = 0;
  while (1)
  {
    if (!v1)
    {
      while (1)
      {
        v8 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v8 >= v5)
        {

          return v3;
        }

        v1 = a1[v8 + 8];
        ++v7;
        if (v1)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }

    v8 = v7;
LABEL_10:
    v9 = __clz(__rbit64(v1)) | (v8 << 6);
    v10 = (a1[6] + 16 * v9);
    v11 = *v10;
    v12 = v10[1];
    sub_22508DF28(a1[7] + 32 * v9, v23);
    *&v22 = v11;
    *(&v22 + 1) = v12;
    v20[2] = v22;
    v21[0] = v23[0];
    v21[1] = v23[1];
    v13 = v22;
    sub_2250B28C8(v21, v20);

    sub_2250B0DFC(&qword_27D719058, &unk_225445058);
    if (!swift_dynamicCast())
    {
      break;
    }

    v1 &= v1 - 1;
    result = sub_22507DF9C(v13, *(&v13 + 1));
    v14 = result;
    if (v15)
    {
      *(v3[6] + 16 * result) = v13;

      *(v3[7] + 8 * v14) = v19;

      v7 = v8;
    }

    else
    {
      if (v3[2] >= v3[3])
      {
        goto LABEL_20;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 16 * result) = v13;
      *(v3[7] + 8 * result) = v19;
      v16 = v3[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_21;
      }

      v3[2] = v18;
      v7 = v8;
    }
  }

  return 0;
}

unint64_t sub_2250FC8F4(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

Swift::Int sub_2250FC90C(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x22AA635F0](a1);
  return Hasher._finalize()();
}

Swift::Int sub_2250FC98C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  MEMORY[0x22AA635F0](a2);
  return Hasher._finalize()();
}

unint64_t sub_2250FC9D0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2250FC8F4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_2250FCA64()
{
  type metadata accessor for TrafficLogger();
  swift_allocObject();
  result = sub_2250FD274();
  qword_280D586F8 = result;
  return result;
}

uint64_t sub_2250FCAD4()
{
  sub_2250FDD7C();
  static __CKLogSubsystem.name.getter();
  result = OS_os_log.init(subsystem:category:)();
  qword_280D54D20 = result;
  return result;
}

uint64_t sub_2250FCB24()
{
  sub_225072C10();
  sub_22507F248();
  v1 = *v0;
  sub_225072D68();
  *v2 = v1;

  sub_22508D11C();

  sub_225095734();

  return v3();
}

uint64_t sub_2250FCC34()
{
  sub_225072C10();
  sub_22507F248();
  v1 = *v0;
  sub_225072D68();
  *v2 = v1;

  sub_22508D11C();

  sub_225095734();

  return v3();
}

uint64_t sub_2250FCD44()
{
  sub_225072C10();

  sub_225075274();

  return v0();
}

uint64_t sub_2250FCDA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_2250B0DFC(&qword_27D7190D0, &qword_225445B10);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v21 - v9;
  sub_22507F0F8(a3, v21 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = sub_22507C8E8(v10, 1, v11);

  if (v12 == 1)
  {
    sub_22507F168(v10, &qword_27D7190D0, &qword_225445B10);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = dispatch thunk of Actor.unownedExecutor.getter();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = String.utf8CString.getter() + 32;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_2250FCFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2250B0DFC(&qword_27D7190D0, &qword_225445B10);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v24 - v10;
  sub_22507F0F8(a3, v24 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = sub_22507C8E8(v11, 1, v12);

  if (v13 == 1)
  {
    sub_22507F168(v11, &qword_27D7190D0, &qword_225445B10);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

id sub_2250FD274()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x277D84F90];
  v1 = type metadata accessor for TrafficLogger();
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v3.receiver = v0;
  v3.super_class = v1;
  return objc_msgSendSuper2(&v3, sel_init);
}

void *sub_2250FD2EC()
{

  swift_unknownObjectRelease();

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2250FD324()
{
  sub_2250FD2EC();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2250FD374()
{
  sub_225072C10();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for PartialTrafficLog(0);
  v1[5] = v4;
  sub_22507CD44(v4);
  v1[6] = sub_22507D3C8();
  v5 = sub_225098658();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2250FD3F4()
{
  sub_225072C10();
  if (sub_22507E8DC())
  {
    v1 = v0[6];
    v2 = v0[3];
    *v1 = v0[2];
    v1[1] = v2;
    swift_storeEnumTagMultiPayload();

    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_2250FDE2C;
    sub_22507CCC8(v0[6]);

    return sub_22507E9DC();
  }

  else
  {

    sub_225075274();

    return v5();
  }
}

uint64_t sub_2250FD500(uint64_t a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3[4] = v4;

  v5 = swift_task_alloc();
  v3[5] = v5;
  *v5 = v3;
  v5[1] = sub_2250FDE28;

  return sub_2250FD374();
}

uint64_t sub_2250FD5D4()
{
  swift_unknownObjectRelease();

  v0 = sub_22508D03C();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2250FD60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2250B0DFC(&qword_27D7190D0, &qword_225445B10);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v22 - v10;
  sub_22507F0F8(a3, v22 - v10);
  v12 = type metadata accessor for TaskPriority();
  if (sub_22507C8E8(v11, 1, v12) == 1)
  {
    sub_22507F168(v11, &qword_27D7190D0, &qword_225445B10);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = dispatch thunk of Actor.unownedExecutor.getter();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = String.utf8CString.getter() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      sub_22507F168(a3, &qword_27D7190D0, &qword_225445B10);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22507F168(a3, &qword_27D7190D0, &qword_225445B10);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_2250FD8D8()
{
  sub_22507CE94();
  v0 = swift_task_alloc();
  v1 = sub_22507D36C(v0);
  *v1 = v2;
  v1[1] = sub_225095DA4;
  v3 = sub_22507CC80();

  return v4(v3);
}

uint64_t sub_2250FD980()
{
  _Block_release(*(v0 + 32));

  v1 = sub_22508D03C();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2250FD9C8()
{
  sub_225072C10();

  sub_225075274();

  return v0();
}

Swift::Int sub_2250FDA2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2250B0DFC(&qword_27D719890, &qword_2254477F8);
  v36 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v35 = v5;
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
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      sub_225102B64(0, (v34 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = (*(v5 + 56) + 16 * v18);
    v23 = v22[1];
    v37 = *v22;
    if ((v36 & 1) == 0)
    {
    }

    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v24 = -1 << *(v7 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
    {
      break;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v7 + 48) + 16 * v27);
    *v32 = v20;
    v32[1] = v21;
    v33 = (*(v7 + 56) + 16 * v27);
    *v33 = v37;
    v33[1] = v23;
    ++*(v7 + 16);
    v5 = v35;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = *(v14 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_2250FDCE0(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_2250FDCEC(void (*a1)(void))
{
  swift_unknownObjectRelease();
  a1(*(v1 + 32));
  v3 = sub_225097204();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_2250FDD34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2250FDD7C()
{
  result = qword_280D533E8;
  if (!qword_280D533E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D533E8);
  }

  return result;
}

unint64_t sub_2250FDDD4()
{
  result = qword_27D719798;
  if (!qword_27D719798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D719798);
  }

  return result;
}

Class sub_2250FE18C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = sub_2250B0DFC(&unk_27D719260, &unk_225445B40);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  a3(v5);
  v8 = type metadata accessor for Date();
  isa = 0;
  if (sub_22507C8E8(v7, 1, v8) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(*(v8 - 8) + 8))(v7, v8);
  }

  return isa;
}

Class sub_2250FE2DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (a3())
  {
    v3.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  return v3.super.isa;
}

Class sub_2250FE370(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (a3())
  {
    sub_2250B0DFC(&qword_27D7197C0, &qword_225447A70);
    v3.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  return v3.super.isa;
}

id sub_2250FE3F4(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7)
{
  v38 = a7;
  v14 = sub_2250B0DFC(&qword_27D7197B8, &unk_225447A60);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v38 - v15;
  v17 = sub_2250B0DFC(&unk_27D719260, &unk_225445B40);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v38 - v21;
  v23 = &v7[OBJC_IVAR___CKLTrafficLogMessage_uuid];
  *v23 = a1;
  *(v23 + 1) = a2;
  if (a3)
  {
    v24 = OBJC_IVAR___CKDTrafficMetadata_timestamp;
    swift_beginAccess();
    sub_2250C853C(&a3[v24], v22, &unk_27D719260, &unk_225445B40);
  }

  else
  {
    v25 = type metadata accessor for Date();
    sub_22507C8C0(v22, 1, 1, v25);
  }

  sub_2250C8588(v22, &v7[OBJC_IVAR___CKLTrafficLogMessage_requestTime], &unk_27D719260, &unk_225445B40);
  if (a3)
  {
    v26 = *&a3[OBJC_IVAR___CKDTrafficMetadata_method + 8];
    v27 = &v7[OBJC_IVAR___CKLTrafficLogMessage_requestMethod];
    *v27 = *&a3[OBJC_IVAR___CKDTrafficMetadata_method];
    *(v27 + 1) = v26;
    v28 = OBJC_IVAR___CKDTrafficMetadata_url;

    swift_beginAccess();
    sub_2250C853C(&a3[v28], v16, &qword_27D7197B8, &unk_225447A60);
  }

  else
  {
    v29 = &v7[OBJC_IVAR___CKLTrafficLogMessage_requestMethod];
    v30 = type metadata accessor for URL();
    *v29 = 0;
    *(v29 + 1) = 0;
    sub_22507C8C0(v16, 1, 1, v30);
  }

  sub_2250C8588(v16, &v7[OBJC_IVAR___CKLTrafficLogMessage_requestURL], &qword_27D7197B8, &unk_225447A60);
  if (a3)
  {
  }

  else
  {
    v31 = 0;
  }

  *&v7[OBJC_IVAR___CKLTrafficLogMessage_requestHeaders] = v31;
  *&v7[OBJC_IVAR___CKLTrafficLogMessage_requestObjects] = a4;
  *&v7[OBJC_IVAR___CKLTrafficLogMessage_bodyStreamResetCount] = a5;
  if (a6)
  {
    v32 = OBJC_IVAR___CKDTrafficMetadata_timestamp;
    swift_beginAccess();
    sub_2250C853C(&a6[v32], v20, &unk_27D719260, &unk_225445B40);
  }

  else
  {
    v33 = type metadata accessor for Date();
    sub_22507C8C0(v20, 1, 1, v33);
  }

  sub_2250C8588(v20, &v7[OBJC_IVAR___CKLTrafficLogMessage_responseTime], &unk_27D719260, &unk_225445B40);
  if (a6)
  {
    *&v7[OBJC_IVAR___CKLTrafficLogMessage_responseStatus] = *&a6[OBJC_IVAR___CKDTrafficMetadata_status];
  }

  else
  {
    v34 = 0;
    *&v7[OBJC_IVAR___CKLTrafficLogMessage_responseStatus] = 0;
  }

  *&v7[OBJC_IVAR___CKLTrafficLogMessage_responseHeaders] = v34;
  *&v7[OBJC_IVAR___CKLTrafficLogMessage_responseObjects] = v38;
  v35 = type metadata accessor for TrafficLogMessage(0);
  v39.receiver = v7;
  v39.super_class = v35;
  v36 = objc_msgSendSuper2(&v39, sel_init);

  return v36;
}

id sub_2250FE8BC(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  if (v7)
  {
    v8 = MEMORY[0x22AA62D80](v5, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_2250FE948(void *a1)
{
  v2 = *(v1 + OBJC_IVAR___CKLTrafficLogMessage_requestHeaders);
  if (v2)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_2250ACDD8(v3, v4, v2);
  }

  return sub_225075280();
}

uint64_t sub_2250FEA14()
{
  _StringGuts.grow(_:)(55);
  MEMORY[0x22AA62E50](60, 0xE100000000000000);
  swift_getObjectType();
  v1 = _typeName(_:qualified:)();
  MEMORY[0x22AA62E50](v1);

  MEMORY[0x22AA62E50](0xD000000000000012, 0x800000022547BA80);
  v2 = sub_2250FE898();
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  MEMORY[0x22AA62E50](v2, v4);

  MEMORY[0x22AA62E50](0xD000000000000015, 0x800000022547BAA0);
  v5 = sub_2250FE93C();
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
    v7 = 0xE700000000000000;
  }

  MEMORY[0x22AA62E50](v5, v7);

  MEMORY[0x22AA62E50](0x3D6469757520, 0xE600000000000000);
  MEMORY[0x22AA62E50](*(v0 + OBJC_IVAR___CKLTrafficLogMessage_uuid), *(v0 + OBJC_IVAR___CKLTrafficLogMessage_uuid + 8));
  MEMORY[0x22AA62E50](62, 0xE100000000000000);
  return 0;
}

id sub_2250FEBC8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TrafficLogMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TrafficLogMessage(uint64_t a1)
{
  result = qword_27D7197A8;
  if (!qword_27D7197A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2250FED50(uint64_t a1)
{
  sub_2250FEE84(319, &qword_27D7194B8, MEMORY[0x277CC9578]);
  if (v1 <= 0x3F)
  {
    sub_2250FEE84(319, &qword_27D719870, MEMORY[0x277CC9260]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2250FEE84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2250FEED8()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v4 = String.data(using:allowLossyConversion:)();
  v6 = v5;
  result = (*(v1 + 8))(v3, v0);
  if (v6 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_27D71F8C0 = v4;
    *algn_27D71F8C8 = v6;
  }

  return result;
}

void sub_2250FEFD8(void *a1)
{
  [v1 _CKLogToFileHandle_atDepth_];
  if (qword_27D718AD0 != -1)
  {
    swift_once();
  }

  isa = Data._bridgeToObjectiveC()().super.isa;
  [a1 writeData_];
}

void sub_2250FF084(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_2250FEFD8(v4);
}

void sub_2250FF0EC()
{
  v1 = *(v0 + OBJC_IVAR___CKDTrafficLogParser_lock);
  os_unfair_lock_lock((v1 + 32));
  sub_225107838((v1 + 16));
  os_unfair_lock_unlock((v1 + 32));
}

uint64_t sub_2250FF154(unint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v11 = *a1;
  v6 = *(a2 + 16);

  v7 = (a2 + 40);
  if (v6)
  {
    while (1)
    {
      v8 = *v7;
      v10[0] = *(v7 - 1);
      v10[1] = v8;

      sub_2250FF210(&v11, v10);
      if (v3)
      {
        break;
      }

      v7 += 2;
      if (!--v6)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:

    *a1 = v11;
  }

  return result;
}

uint64_t sub_2250FF210(unint64_t *a1, unint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  sub_225107854();
  v5 = Collection<>.split<A>(separator:maxSplits:omittingEmptySubsequences:)();
  v6 = v5;
  if (v5[2] != 4)
  {

    _StringGuts.grow(_:)(59);
    MEMORY[0x22AA62E50](0xD000000000000035, 0x800000022547BDA0);
    MEMORY[0x22AA62E50](58, 0xE100000000000000);
    v19 = 8250;
    v20 = 0xE200000000000000;
LABEL_8:
    MEMORY[0x22AA62E50](v19, v20);
LABEL_11:
    MEMORY[0x22AA62E50](v4, v3);
    related decl 'e' for CKErrorCode.init(_:description:)();
    return swift_willThrow();
  }

  v8 = v5[4];
  v7 = v5[5];
  v9 = v5[6];
  v10 = v5[7];

  v61 = MEMORY[0x22AA62E10](v8, v7, v9, v10);
  v64 = v11;

  if (v6[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_29;
  }

  v60 = a1;
  v12 = v6[8];
  v13 = v6[9];
  if ((v13 ^ v12) < 0x4000)
  {
    goto LABEL_10;
  }

  v15 = v6[10];
  v14 = v6[11];
  v16 = sub_225107190(v6[8], v6[9], v15, v14, 10);
  if ((v17 & 0x100) == 0)
  {
    if ((v17 & 1) == 0)
    {
      v18 = v16;
      goto LABEL_12;
    }

LABEL_10:

    _StringGuts.grow(_:)(46);

    goto LABEL_11;
  }

  v18 = sub_225105B6C(v12, v13, v15, v14, 10);
  v22 = v21;

  if (v22)
  {
    goto LABEL_10;
  }

LABEL_12:
  if (v6[2] < 3uLL)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v59 = v18;
  v25 = v6[12];
  v24 = v6[13];
  if ((v24 ^ v25) < 0x4000)
  {
    goto LABEL_18;
  }

  v27 = v6[14];
  v26 = v6[15];
  v28 = sub_225107190(v6[12], v6[13], v27, v26, 10);
  if ((v29 & 0x100) == 0)
  {
    if ((v29 & 1) == 0)
    {
      v30 = v28;
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v30 = sub_225105B6C(v25, v24, v27, v26, 10);
  v32 = v31;

  if (v32)
  {
LABEL_18:

    _StringGuts.grow(_:)(52);
    v19 = 0xD000000000000032;
    v20 = 0x800000022547BE10;
    goto LABEL_8;
  }

LABEL_19:
  if (v6[2] < 4uLL)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v33 = v6[16];
  v34 = v6[17];
  v35 = v6[18];
  v36 = v6[19];

  v37 = MEMORY[0x22AA62E10](v33, v34, v35, v36);
  v57 = v38;
  v58 = v37;

  v39 = swift_allocObject();
  v39[2] = v61;
  v39[3] = v64;
  v39[4] = v30;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_2251078A8;
  *(v40 + 24) = v39;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v62 = *v60;
  v42 = sub_22507DF9C(v61, v64);
  v44 = v62[2];
  v45 = (v43 & 1) == 0;
  v46 = v44 + v45;
  if (__OFADD__(v44, v45))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v47 = v42;
  v48 = v43;
  sub_2250B0DFC(&qword_27D7197E0, &qword_225447A50);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v46))
  {
    v49 = sub_22507DF9C(v61, v64);
    if ((v48 & 1) == (v50 & 1))
    {
      v47 = v49;
      goto LABEL_24;
    }

LABEL_32:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_24:
  *v60 = v62;
  if (v48)
  {
  }

  else
  {
    v51 = (*(v40 + 16))();
    sub_225102B14(v47, v61, v64, v51, v52, v53, v54, v62);
  }

  v55 = v62[7] + 32 * v47;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *(v55 + 24);
  sub_225102908(v58, v57, v59, v56);
  *(v55 + 24) = v63;
}

void sub_2250FF80C()
{
  swift_getObjectType();
  v2 = *(v0 + OBJC_IVAR___CKDTrafficLogParser_lock);
  os_unfair_lock_lock((v2 + 32));
  sub_2250FF898((v2 + 16), &v3);
  os_unfair_lock_unlock((v2 + 32));
  if (!v1)
  {
    CKCheckedUnsafeObjectTransfer.extractValue()();
  }
}

uint64_t sub_2250FF898@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v125 = a2;
  v4 = type metadata accessor for PartialTrafficLog.ResponseMetadata(0);
  MEMORY[0x28223BE20](v4 - 8);
  v127 = (&v122 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for PartialTrafficLog.RequestMetadata(0);
  MEMORY[0x28223BE20](v6 - 8);
  v126 = (&v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for PartialTrafficLog(0);
  v9 = *(v8 - 8);
  v132 = v8;
  v133 = v9;
  v10 = MEMORY[0x28223BE20](v8);
  v135 = (&v122 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v10);
  v136 = &v122 - v13;
  MEMORY[0x28223BE20](v12);
  v137 = &v122 - v14;
  v134 = a1;
  v15 = *a1;
  v18 = *(*a1 + 64);
  v17 = *a1 + 64;
  v16 = v18;
  v19 = 1 << *(v15 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;

  v23 = 0;
  v24 = MEMORY[0x277D84F90];
  while (v21)
  {
LABEL_9:
    v26 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v27 = (*(v15 + 56) + ((v23 << 11) | (32 * v26)));
    v28 = v27[2];
    v2 = v27[3];
    if (*(v2 + 16) == v28)
    {
      v29 = v27[1];
      v129 = *v27;
      v131 = v29;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v138 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_225102BC8(0, *(v24 + 16) + 1, 1);
        v24 = v138;
      }

      v32 = *(v24 + 16);
      v31 = *(v24 + 24);
      v33 = v32 + 1;
      if (v32 >= v31 >> 1)
      {
        v128 = v32 + 1;
        sub_225102BC8(v31 > 1, v32 + 1, 1);
        v33 = v128;
        v24 = v138;
      }

      *(v24 + 16) = v33;
      v34 = (v24 + 32 * v32);
      v35 = v131;
      v34[4] = v129;
      v34[5] = v35;
      v34[6] = v28;
      v34[7] = v2;
    }
  }

  while (1)
  {
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    if (v25 >= v22)
    {
      break;
    }

    v21 = *(v17 + 8 * v25);
    ++v23;
    if (v21)
    {
      v23 = v25;
      goto LABEL_9;
    }
  }

  v131 = v24;
  v36 = *(v24 + 16);
  if (v36)
  {
    v37 = v131 + 56;
    do
    {
      v38 = *(v37 - 24);
      v39 = *(v37 - 16);

      sub_22507DF9C(v38, v39);
      if (v40)
      {
        v41 = v134;
        v42 = swift_isUniquelyReferenced_nonNull_native();
        v138 = *v41;
        v43 = v138[3];
        sub_2250B0DFC(&qword_27D7197E0, &qword_225447A50);
        _NativeDictionary.ensureUnique(isUnique:capacity:)(v42, v43);
        v44 = v138;

        _NativeDictionary._delete(at:)();

        *v41 = v44;
      }

      else
      {
      }

      v37 += 32;
      --v36;
    }

    while (v36);
  }

  v45 = v130;
  v46 = sub_2250FBE3C(v131);
  v47 = v45;
  if (v45)
  {
  }

  v2 = v46;

  v49 = *(v134 + 8);
  v131 = *(v2 + 16);
  if (!v131)
  {

LABEL_48:
    *(v134 + 8) = v49;
    v79 = sub_22510658C(v49);
    v80 = v47;
    v81 = (v79 + 8);
    v82 = 1 << *(v79 + 32);
    v83 = -1;
    if (v82 < 64)
    {
      v83 = ~(-1 << v82);
    }

    v84 = v83 & v79[8];
    v85 = (v82 + 63) >> 6;
    v135 = v79;

    v86 = 0;
    v87 = &qword_27D7197D0;
    v137 = v81;
    while (v84)
    {
LABEL_56:
      v89 = __clz(__rbit64(v84));
      v84 &= v84 - 1;
      v90 = (v135[6] + ((v86 << 10) | (16 * v89)));
      v91 = *v90;
      v92 = v90[1];

      v2 = sub_22507DF9C(v91, v92);
      v94 = v93;

      v81 = v137;
      if (v94)
      {
        v95 = v134;
        LODWORD(v136) = swift_isUniquelyReferenced_nonNull_native();
        v138 = *(v95 + 8);
        v96 = v87;
        v97 = v138[3];
        sub_2250B0DFC(v96, &qword_225447A38);
        v98 = v97;
        v87 = v96;
        _NativeDictionary.ensureUnique(isUnique:capacity:)(v136, v98);
        v99 = v138;

        sub_2250B0DFC(&qword_27D7196E0, &qword_225447A40);
        _NativeDictionary._delete(at:)();
        v81 = v137;
        *(v95 + 8) = v99;
      }
    }

    while (1)
    {
      v88 = v86 + 1;
      if (__OFADD__(v86, 1))
      {
        goto LABEL_80;
      }

      if (v88 >= v85)
      {
        v100 = v135;

        v101 = *(v100 + 16);
        if (v101)
        {
          v132 = v80;
          v138 = MEMORY[0x277D84F90];
          specialized ContiguousArray.reserveCapacity(_:)();
          v103 = sub_22509F9BC(v100);
          v105 = v104;
          v2 = 0;
          v134 = v104;
          v133 = v100 + 72;
          v106 = v137;
          while ((v103 & 0x8000000000000000) == 0 && v103 < 1 << *(v100 + 32))
          {
            v107 = v103 >> 6;
            if ((*(v106 + 8 * (v103 >> 6)) & (1 << v103)) == 0)
            {
              goto LABEL_84;
            }

            if (*(v100 + 36) != v105)
            {
              goto LABEL_85;
            }

            LODWORD(v136) = v102;
            v108 = (*(v100 + 48) + 16 * v103);
            v110 = *v108;
            v109 = v108[1];
            v111 = *(*(v100 + 56) + 8 * v103);

            sub_225100404(v110, v109, v111);

            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            v100 = v135;
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            v112 = 1 << *(v100 + 32);
            if (v103 >= v112)
            {
              goto LABEL_86;
            }

            v106 = v137;
            v113 = *(v137 + 8 * v107);
            if ((v113 & (1 << v103)) == 0)
            {
              goto LABEL_87;
            }

            if (*(v100 + 36) != v105)
            {
              goto LABEL_88;
            }

            v114 = v113 & (-2 << (v103 & 0x3F));
            if (v114)
            {
              v112 = __clz(__rbit64(v114)) | v103 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v115 = v107 << 6;
              v116 = v107 + 1;
              v117 = (v133 + 8 * v107);
              while (v116 < (v112 + 63) >> 6)
              {
                v119 = *v117++;
                v118 = v119;
                v115 += 64;
                ++v116;
                if (v119)
                {
                  sub_2250FDCE0(v103, v105, v136 & 1);
                  v106 = v137;
                  v112 = __clz(__rbit64(v118)) + v115;
                  goto LABEL_74;
                }
              }

              sub_2250FDCE0(v103, v105, v136 & 1);
              v106 = v137;
            }

LABEL_74:
            v102 = 0;
            ++v2;
            v103 = v112;
            v105 = v134;
            if (v2 == v101)
            {

              v80 = v132;
              goto LABEL_77;
            }
          }

          goto LABEL_83;
        }

LABEL_77:

        v138 = sub_225106DE4(v120);
        sub_225102E9C(&v138);
        v2 = v80;
        if (!v80)
        {

          v121 = v138;
          sub_2250B0DFC(&qword_27D7197D8, &qword_225447A48);
          v138 = v121;
          result = CKCheckedUnsafeObjectTransfer.__allocating_init(_:)();
          *v125 = result;
          return result;
        }

        goto LABEL_91;
      }

      v84 = *(v81 + 8 * v88);
      ++v86;
      if (v84)
      {
        v86 = v88;
        goto LABEL_56;
      }
    }
  }

  v123 = 0;
  v128 = (*(v133 + 80) + 32) & ~*(v133 + 80);
  v130 = v2 + v128;

  v50 = 0;
  v124 = v49;
  v129 = v2;
  while (v50 < *(v2 + 16))
  {
    v51 = *(v133 + 72);
    v52 = v137;
    sub_22507EE88(v130 + v51 * v50++, v137);
    v53 = v52;
    v2 = v136;
    sub_22507EE88(v53, v136);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
      case 5u:
        v54 = *v136;
        v55 = *(v136 + 8);
        sub_22508D128(*(v136 + 16), *(v136 + 24));
        break;
      case 2u:
      case 6u:
        v54 = *v136;
        v55 = *(v136 + 8);
        break;
      case 3u:
        v56 = type metadata accessor for PartialTrafficLog.ResponseMetadata;
        v2 = type metadata accessor for PartialTrafficLog.ResponseMetadata;
        v57 = v136;
        v58 = v127;
        goto LABEL_32;
      case 4u:
        v54 = *v136;
        v55 = *(v136 + 8);

        break;
      default:
        v56 = type metadata accessor for PartialTrafficLog.RequestMetadata;
        v2 = type metadata accessor for PartialTrafficLog.RequestMetadata;
        v57 = v136;
        v58 = v126;
LABEL_32:
        sub_225107074(v57, v58, v56);
        v54 = *v58;
        v55 = v58[1];

        sub_2251070D4(v58, v2);
        break;
    }

    sub_22507EE88(v137, v135);
    v59 = swift_isUniquelyReferenced_nonNull_native();
    v138 = v49;
    v60 = sub_22507DF9C(v54, v55);
    v62 = v49[2];
    v63 = (v61 & 1) == 0;
    v64 = v62 + v63;
    if (__OFADD__(v62, v63))
    {
      goto LABEL_82;
    }

    v65 = v60;
    v2 = v61;
    sub_2250B0DFC(&qword_27D7197D0, &qword_225447A38);
    v66 = _NativeDictionary.ensureUnique(isUnique:capacity:)(v59, v64);
    v49 = v138;
    if (v66)
    {
      v67 = sub_22507DF9C(v54, v55);
      if ((v2 & 1) != (v68 & 1))
      {
        goto LABEL_90;
      }

      v65 = v67;
    }

    if (v2)
    {
    }

    else
    {
      v49[(v65 >> 6) + 8] |= 1 << v65;
      v69 = (v49[6] + 16 * v65);
      *v69 = v54;
      v69[1] = v55;
      *(v49[7] + 8 * v65) = MEMORY[0x277D84F90];
      v70 = v49[2];
      v71 = __OFADD__(v70, 1);
      v72 = v70 + 1;
      if (v71)
      {
        goto LABEL_89;
      }

      v49[2] = v72;
    }

    v73 = v49[7];
    v74 = *(v73 + 8 * v65);
    v75 = swift_isUniquelyReferenced_nonNull_native();
    *(v73 + 8 * v65) = v74;
    if ((v75 & 1) == 0)
    {
      v74 = sub_22507EE5C(0, v74[2] + 1, 1, v74);
      *(v73 + 8 * v65) = v74;
    }

    v77 = v74[2];
    v76 = v74[3];
    if (v77 >= v76 >> 1)
    {
      *(v73 + 8 * v65) = sub_22507EE5C((v76 > 1), v77 + 1, 1, v74);
    }

    sub_2251070D4(v137, type metadata accessor for PartialTrafficLog);
    v78 = *(v73 + 8 * v65);
    *(v78 + 16) = v77 + 1;
    sub_225107074(v135, v78 + v128 + v77 * v51, type metadata accessor for PartialTrafficLog);
    v2 = v129;
    if (v131 == v50)
    {

      v47 = v123;
      goto LABEL_48;
    }
  }

LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_91:

  __break(1u);
  return result;
}

id sub_225100404(uint64_t a1, char *a2, int *a3)
{
  v174 = a2;
  v173 = a1;
  v5 = type metadata accessor for DispatchTimeInterval();
  v6 = sub_225098690(v5, &v191);
  v170 = v7;
  MEMORY[0x28223BE20](v6);
  sub_225072C00();
  sub_225075350(v9 - v8);
  v10 = type metadata accessor for DispatchTime();
  v11 = sub_225098690(v10, v189);
  v168 = v12;
  v13 = MEMORY[0x28223BE20](v11);
  v165 = &v150 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = sub_225075350(&v150 - v15);
  v161 = type metadata accessor for PartialTrafficLog.ResponseMetadata(v16);
  sub_225072BF0();
  MEMORY[0x28223BE20](v17);
  sub_225072C00();
  v160 = v19 - v18;
  v20 = sub_2250B0DFC(&qword_27D7197B8, &unk_225447A60);
  MEMORY[0x28223BE20](v20 - 8);
  v159 = &v150 - v21;
  v22 = sub_2250B0DFC(&unk_27D719260, &unk_225445B40);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = sub_225075350(&v150 - v23);
  v158 = type metadata accessor for PartialTrafficLog.RequestMetadata(v24);
  sub_225072BF0();
  MEMORY[0x28223BE20](v25);
  sub_225072C00();
  v28 = sub_225075350(v27 - v26);
  v29 = type metadata accessor for PartialTrafficLog(v28);
  v30 = sub_225098690(v29, &v196);
  v186 = v31;
  MEMORY[0x28223BE20](v30);
  sub_225072C00();
  v34 = (v33 - v32);
  sub_22507E758();
  v35 = swift_allocObject();
  v36 = MEMORY[0x277D84F90];
  *(v35 + 16) = MEMORY[0x277D84F90];
  v181 = v35 + 16;
  sub_22507E758();
  v37 = swift_allocObject();
  v176 = v37;
  *(v37 + 16) = v36;
  v172 = (v37 + 16);
  v38 = type metadata accessor for TrafficMetadata(0);
  v182 = [objc_allocWithZone(v38) init];
  v179 = [objc_allocWithZone(v38) init];
  aBlock = a3;

  sub_225102F18(&aBlock);
  v39 = aBlock;
  sub_2250C7F8C(0, &qword_27D7197F8, off_278543C90);
  v40 = objc_allocWithZone(CKDProtobufResponseBodyParser);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v41 = [v40 initWithQoS:25 messageClass:? parsingStandaloneMessage:?];
  v194 = sub_225107724;
  v195 = v35;
  aBlock = MEMORY[0x277D85DD0];
  v191 = 1107296256;
  v192 = sub_225101B60;
  v193 = &unk_28385C210;
  v42 = _Block_copy(&aBlock);
  v43 = v41;
  v177 = v35;

  [v43 setObjectParsedBlock_];
  _Block_release(v42);
  v187 = v43;

  v44 = *(v39 + 16);
  if (!v44)
  {
    sub_22507CC18();
    v184 = 0;
LABEL_34:

    v103 = dispatch_group_create();
    dispatch_group_enter(v103);
    sub_22509877C();
    v104 = swift_allocObject();
    v105 = v173;
    v106 = v174;
    v104[2] = v173;
    v104[3] = v106;
    v104[4] = v103;
    v194 = sub_225107758;
    v195 = v104;
    aBlock = MEMORY[0x277D85DD0];
    v191 = 1107296256;
    v192 = sub_2251021F0;
    v193 = &unk_28385C260;
    v107 = _Block_copy(&aBlock);

    v47 = v103;

    v108 = sub_22507E9D0();
    [v108 v109];
    _Block_release(v107);
    sub_22507CF04();
    if (v110)
    {
      v111 = v110;
      dispatch_group_enter(v47);
      sub_22509877C();
      v112 = swift_allocObject();
      v112[2] = v105;
      v112[3] = v106;
      v112[4] = v47;
      v194 = sub_2251077A0;
      v195 = v112;
      aBlock = MEMORY[0x277D85DD0];
      v191 = 1107296256;
      v192 = sub_2251021F0;
      v193 = &unk_28385C2B0;
      v113 = _Block_copy(&aBlock);

      v114 = v47;

      [v111 finishWithCompletion_];
      _Block_release(v113);
    }

    v115 = v165;
    static DispatchTime.now()();
    v116 = v167;
    *v167 = 5;
    v117 = v170;
    v118 = v171;
    (*(v170 + 104))(v116, *MEMORY[0x277D85188], v171);
    v119 = v166;
    MEMORY[0x22AA62BC0](v115, v116);
    (*(v117 + 8))(v116, v118);
    v120 = *(v168 + 8);
    v121 = v169;
    v120(v115, v169);
    v122 = MEMORY[0x22AA630D0](v119);
    v120(v119, v121);
    v123 = static DispatchTimeoutResult.== infix(_:_:)();
    v124 = MEMORY[0x277D837D0];
    v42 = v182;
    v125 = v172;
    if (v123)
    {
      v126 = sub_2250B0DFC(&qword_27D719800, &qword_225447A78);
      v127 = sub_225095744(v126);
      sub_22507C9E8(v127, xmmword_225444480);
      _StringGuts.grow(_:)(106);
      MEMORY[0x22AA62E50](0xD00000000000003DLL, 0x800000022547BC40);
      v128 = sub_225082698();
      MEMORY[0x22AA62E50](v128);
      MEMORY[0x22AA62E50](0xD00000000000002BLL, 0x800000022547BC80);
      v129 = aBlock;
      v127[3].n128_u64[1] = v124;
      sub_22507CE24(v129);
    }

    if (v40)
    {
      sub_22507F290(v123, v188);
      v123 = sub_2251025B0(*v122);
      if (!v123)
      {
        v130 = sub_2250B0DFC(&qword_27D719800, &qword_225447A78);
        v131 = sub_225095744(v130);
        sub_22507C9E8(v131, xmmword_225444480);
        _StringGuts.grow(_:)(117);
        MEMORY[0x22AA62E50](0xD000000000000042, 0x800000022547BBB0);
        v132 = sub_225082698();
        MEMORY[0x22AA62E50](v132);
        MEMORY[0x22AA62E50](0xD000000000000031, 0x800000022547BC00);
        v133 = aBlock;
        v131[3].n128_u64[1] = v124;
        sub_22507CE24(v133);
      }
    }

    if (v178)
    {
      swift_beginAccess();
      v123 = sub_2251025B0(*v125);
      if (!v123)
      {
        v134 = sub_2250B0DFC(&qword_27D719800, &qword_225447A78);
        v135 = sub_225095744(v134);
        sub_22507C9E8(v135, xmmword_225444480);
        _StringGuts.grow(_:)(119);
        MEMORY[0x22AA62E50](0xD000000000000043, 0x800000022547BB20);
        v136 = sub_225082698();
        MEMORY[0x22AA62E50](v136);
        MEMORY[0x22AA62E50](0xD000000000000032, 0x800000022547BB70);
        v137 = aBlock;
        v135[3].n128_u64[1] = v124;
        sub_22507CE24(v137);
      }
    }

    sub_22507F290(v123, &aBlock);
    v138 = *v122;
    if (!(*v122 >> 62))
    {
      swift_bridgeObjectRetain_n();

      v139 = v42;
      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();

      v140 = v138;
LABEL_46:
      swift_beginAccess();
      v141 = *(v176 + 16);
      objc_allocWithZone(type metadata accessor for TrafficLogMessage(0));
      v142 = v179;
      v143 = v179;

      v144 = sub_225082698();
      v146 = sub_2250FE3F4(v144, v145, v42, v140, v180, v142, v141);

      sub_22507CF04();
      return v146;
    }

LABEL_48:

    v149 = v42;

    sub_2250B0DFC(&qword_27D7197C0, &qword_225447A70);
    v140 = _bridgeCocoaArray<A>(_:)();

    goto LABEL_46;
  }

  v164 = OBJC_IVAR___CKDTrafficMetadata_timestamp;
  v163 = OBJC_IVAR___CKDTrafficMetadata_headers;
  v156 = OBJC_IVAR___CKDTrafficMetadata_status;
  v155 = &v182[OBJC_IVAR___CKDTrafficMetadata_requestClassName];
  v154 = OBJC_IVAR___CKDTrafficMetadata_url;
  v153 = &v182[OBJC_IVAR___CKDTrafficMetadata_method];
  v152 = OBJC_IVAR___CKDTrafficMetadata_parsingStandaloneMessage;
  v45 = v39 + ((*(v186 + 80) + 32) & ~*(v186 + 80));
  swift_beginAccess();
  sub_22507CC18();
  v46 = 0;
  v184 = 0;
  v162 = &v192;
  v185 = v44;
  v183 = (v44 - 1);
LABEL_3:
  v47 = v46;
  while (2)
  {
    if (v47 >= *(v39 + 16))
    {
      __break(1u);
      goto LABEL_48;
    }

    v48 = &v47->isa + 1;
    sub_22507EE88(v45 + *(v186 + 72) * v47, v34);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v42 = v34[2];
        v49 = v34[3];
        isa = Data._bridgeToObjectiveC()().super.isa;
        v50 = sub_22507E9D0();
        [v50 v51];

        sub_22508D128(v42, v49);
        v40 = 1;
        v47 = (v47 + 1);
        if (v185 == v48)
        {
          goto LABEL_34;
        }

        continue;
      case 2u:
        sub_22507F4BC();
        sub_2251070D4(v34, v76);
        if (!__OFADD__(v180, 1))
        {
          ++v180;
          v77 = v177;
          *(v177 + 16) = MEMORY[0x277D84F90];

          isa = v187;
          v78 = [objc_allocWithZone(CKDProtobufResponseBodyParser) initWithQoS:25 messageClass:objc_msgSend(v187 parsingStandaloneMessage:{sel_messageClass), objc_msgSend(v187, sel_parsingStandaloneMessage)}];
          v194 = sub_225107918;
          v195 = v77;
          sub_22507F3F8();
          v192 = v79;
          v193 = &unk_28385C300;
          v42 = _Block_copy(&aBlock);

          v80 = v78;

          [v80 setObjectParsedBlock_];
          _Block_release(v42);

          v187 = v80;
LABEL_30:
          v46 = (&v47->isa + 1);
LABEL_31:
          if (v183 == v47)
          {
            goto LABEL_34;
          }

          goto LABEL_3;
        }

        __break(1u);
LABEL_50:
        aBlock = isa;
        _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
        __break(1u);

        __break(1u);
        return result;
      case 3u:
        v151 = type metadata accessor for PartialTrafficLog.ResponseMetadata;
        v89 = v160;
        sub_225107074(v34, v160, type metadata accessor for PartialTrafficLog.ResponseMetadata);
        isa = v161;
        v90 = *(v161 + 20);
        type metadata accessor for Date();
        sub_225072BF0();
        v91 = sub_22507CAA4();
        v92(v91);
        sub_225075670();
        v93 = v179;
        v94 = v164;
        sub_22507D378(&v179[v164]);
        sub_2251077B4(v90, &v93[v94], &unk_27D719260, &unk_225445B40);
        swift_endAccess();
        v42 = *&v93[v163];
        *&v93[v163] = *(v89 + isa[7]);

        v95 = *(v89 + isa[6]);
        sub_2251070D4(v89, v151);
        *&v93[v156] = v95;
        goto LABEL_30;
      case 4u:
        isa = v34[2];
        v84 = v34[4];
        switch(isa)
        {
          case 0uLL:
          case 4uLL:
            v42 = v34[3];

            if (v84 && (v42 = MEMORY[0x22AA62D80](v42, v84), , v85 = NSClassFromString(v42), v42, v85))
            {
              v86 = [objc_allocWithZone(CKDProtobufResponseBodyParser) initWithQoS:25 messageClass:v85 parsingStandaloneMessage:isa == 4];
              sub_22507CF04();

              v88 = v86;
LABEL_29:
              v194 = sub_2251077AC;
              v195 = v176;
              sub_22507F3F8();
              v192 = v100;
              v193 = &unk_28385C2D8;
              v101 = _Block_copy(&aBlock);
              v42 = v195;
              v184 = v88;
              v102 = v88;

              [v102 setObjectParsedBlock_];
              _Block_release(v101);
            }

            else
            {
              sub_22507CF04();

              v184 = 0;
            }

            break;
          case 1uLL:
            v97 = CKDJSONResponseBodyParser;
            goto LABEL_28;
          case 2uLL:
            v97 = CKDPlistResponseBodyParser;
            goto LABEL_28;
          case 3uLL:
            v97 = CKDPlaintextResponseBodyParser;
LABEL_28:
            v98 = [objc_allocWithZone(v97) initWithQoS_];

            sub_22507CF04();

            v88 = v98;
            goto LABEL_29;
          default:
            goto LABEL_50;
        }

        goto LABEL_30;
      case 5u:
        isa = v34[1];
        v81 = v34[2];
        v82 = v34[3];
        v83 = v184;
        if (v184)
        {
          v42 = Data._bridgeToObjectiveC()().super.isa;
          [v83 processData:v42 completionHandler:0];

          sub_22508D128(v81, v82);
        }

        else
        {

          sub_22508D128(v81, v82);
        }

        v46 = (&v47->isa + 1);
        v178 = 1;
        goto LABEL_31;
      case 6u:
        sub_22507F4BC();
        v75 = v34;
        goto LABEL_16;
      default:
        v52 = v175;
        sub_225107074(v34, v175, type metadata accessor for PartialTrafficLog.RequestMetadata);
        v53 = v158;
        v54 = v52 + *(v158 + 36);
        v55 = *(v54 + 8);
        v151 = *v54;
        v56 = v155;
        *v155 = v151;
        v56[1] = v55;
        v150 = v55;

        v57 = v53[5];
        type metadata accessor for Date();
        sub_225072BF0();
        v58 = sub_22507CAA4();
        v59(v58);
        sub_225075670();
        isa = v182;
        v60 = v164;
        sub_22507D378(&v182[v164]);
        sub_2251077B4(v57, isa + v60, &unk_27D719260, &unk_225445B40);
        swift_endAccess();
        v61 = v53[6];
        type metadata accessor for URL();
        sub_225072BF0();
        v62 = sub_22507CAA4();
        v63(v62);
        sub_225075670();
        v64 = v154;
        sub_22507D378(isa + v154);
        sub_2251077B4(v61, isa + v64, &qword_27D7197B8, &unk_225447A60);
        swift_endAccess();
        v65 = (v52 + v53[7]);
        v67 = *v65;
        v66 = v65[1];
        v68 = v153;
        *v153 = v67;
        *(v68 + 1) = v66;

        *(isa + v163) = *(v52 + v53[8]);

        *(isa + v152) = *(v52 + v53[10]);
        v69 = sub_22507E9D0();
        [v69 v70];
        v42 = MEMORY[0x22AA62D80](v151, v150);
        v71 = NSClassFromString(v42);

        if (v71)
        {
          swift_getObjCClassMetadata();
          swift_getObjCClassFromMetadata();
        }

        v72 = sub_22507E9D0();
        [v72 v73];
        v74 = type metadata accessor for PartialTrafficLog.RequestMetadata;
        v75 = v175;
LABEL_16:
        sub_2251070D4(v75, v74);
        goto LABEL_30;
    }
  }
}

uint64_t sub_2251016F0(void *a1, uint64_t *a2)
{
  v4 = sub_2250B0DFC(&unk_27D719260, &unk_225445B40);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v21 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v21 - v15;
  v17 = *a2;
  sub_2250F4AA8(*a1 + OBJC_IVAR___CKLTrafficLogMessage_requestTime, v9);
  if (sub_22507C8E8(v9, 1, v10) == 1)
  {
    static Date.distantPast.getter();
    if (sub_22507C8E8(v9, 1, v10) != 1)
    {
      sub_2251076BC(v9);
    }
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
  }

  sub_2250F4AA8(v17 + OBJC_IVAR___CKLTrafficLogMessage_requestTime, v7);
  if (sub_22507C8E8(v7, 1, v10) == 1)
  {
    static Date.distantPast.getter();
    if (sub_22507C8E8(v7, 1, v10) != 1)
    {
      sub_2251076BC(v7);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v7, v10);
  }

  v18 = static Date.< infix(_:_:)();
  v19 = *(v11 + 8);
  v19(v14, v10);
  v19(v16, v10);
  return v18 & 1;
}

BOOL sub_225101A40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PartialTrafficLog(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v11 - v8;
  sub_22507EE88(a1, v11 - v8);
  LODWORD(a1) = swift_getEnumCaseMultiPayload();
  sub_2251070D4(v9, type metadata accessor for PartialTrafficLog);
  sub_22507EE88(a2, v7);
  LODWORD(a2) = swift_getEnumCaseMultiPayload();
  sub_2251070D4(v7, type metadata accessor for PartialTrafficLog);
  return a1 < a2;
}

uint64_t sub_225101B60(uint64_t a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = *(a1 + 32);
  v15[3] = swift_getObjectType();
  v15[0] = a2;

  swift_unknownObjectRetain();
  v8 = a3;
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = _Block_copy(a4);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v7(v15, v9, v11, sub_225107814, v13);

  sub_22508D128(v9, v11);

  return sub_225073BF0(v15);
}

uint64_t sub_225101C58(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  sub_22508DF28(a1, &v20);
  sub_2250C7F8C(0, &qword_27D719808, 0x277D43168);
  if (swift_dynamicCast())
  {
    v9 = swift_beginAccess();
    MEMORY[0x22AA62F00](v9);
    sub_225102584(*((*(a6 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v10 = swift_endAccess();
  }

  else
  {
    v11 = sub_2250B0DFC(&qword_27D719800, &qword_225447A78);
    v12 = sub_225095744(v11);
    *(v12 + 16) = xmmword_225444480;
    v20 = 0;
    v21 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    v20 = 0xD000000000000021;
    v21 = 0x800000022547BCB0;
    v13 = sub_225073BAC(a1, a1[3]);
    MEMORY[0x28223BE20](v13);
    sub_225072C00();
    (*(v16 + 16))(v15 - v14);
    v17 = String.init<A>(describing:)();
    MEMORY[0x22AA62E50](v17);

    v18 = v20;
    *(v12 + 56) = MEMORY[0x277D837D0];
    sub_22507CE24(v18);
  }

  return a4(v10);
}

uint64_t sub_225101E74(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  sub_22508DF28(a1, &v20);
  sub_2250B0DFC(&qword_27D7197C0, &qword_225447A70);
  if (swift_dynamicCast())
  {
    v9 = swift_beginAccess();
    MEMORY[0x22AA62F00](v9);
    sub_225102584(*((*(a6 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v10 = swift_endAccess();
  }

  else
  {
    sub_2250B0DFC(&qword_27D719800, &qword_225447A78);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_225444480;
    v20 = 0;
    v21 = 0xE000000000000000;
    _StringGuts.grow(_:)(61);
    MEMORY[0x22AA62E50](0xD00000000000003BLL, 0x800000022547BCE0);
    v12 = sub_225073BAC(a1, a1[3]);
    MEMORY[0x28223BE20](v12);
    (*(v14 + 16))(&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = String.init<A>(describing:)();
    MEMORY[0x22AA62E50](v15);

    v16 = v20;
    v17 = v21;
    *(v11 + 56) = MEMORY[0x277D837D0];
    *(v11 + 32) = v16;
    *(v11 + 40) = v17;
    print(_:separator:terminator:)();
  }

  return a4(v10);
}

void sub_2251020B4(void *a1, uint64_t a2, uint64_t a3, dispatch_group_t group)
{
  if (a1)
  {
    sub_2250B0DFC(&qword_27D719800, &qword_225447A78);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_225444480;
    v9 = a1;
    _StringGuts.grow(_:)(67);
    MEMORY[0x22AA62E50](0xD00000000000003DLL, 0x800000022547BD60);
    MEMORY[0x22AA62E50](a2, a3);
    MEMORY[0x22AA62E50](8250, 0xE200000000000000);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    *(v8 + 56) = MEMORY[0x277D837D0];
    *(v8 + 32) = 0;
    *(v8 + 40) = 0xE000000000000000;
    print(_:separator:terminator:)();
  }

  dispatch_group_leave(group);
}

void sub_2251021F0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_22510225C(void *a1, uint64_t a2, uint64_t a3, dispatch_group_t group)
{
  if (a1)
  {
    sub_2250B0DFC(&qword_27D719800, &qword_225447A78);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_225444480;
    v9 = a1;
    _StringGuts.grow(_:)(68);
    MEMORY[0x22AA62E50](0xD00000000000003ELL, 0x800000022547BD20);
    MEMORY[0x22AA62E50](a2, a3);
    MEMORY[0x22AA62E50](8250, 0xE200000000000000);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    *(v8 + 56) = MEMORY[0x277D837D0];
    *(v8 + 32) = 0;
    *(v8 + 40) = 0xE000000000000000;
    print(_:separator:terminator:)();
  }

  dispatch_group_leave(group);
}

id sub_225102398()
{
  v1 = OBJC_IVAR___CKDTrafficLogParser_lock;
  sub_2250B0DFC(&qword_27D719838, &qword_225447AB0);
  v2 = swift_allocObject();
  *(v2 + 32) = 0;
  v3 = MEMORY[0x277D84F98];
  *(v2 + 16) = MEMORY[0x277D84F98];
  *(v2 + 24) = v3;
  *&v0[v1] = v2;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for TrafficLogParser();
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_225102434()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TrafficLogParser();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22510249C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2251024DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_225102528(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      type metadata accessor for TrafficLogMessage(0);
      result = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

uint64_t sub_225102584(uint64_t result)
{
  v2 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (result + 1 > (v2 >> 1))
  {
    return MEMORY[0x2821FC280](v2 > 1);
  }

  return result;
}

uint64_t sub_2251025B0(unint64_t a1)
{
  if (a1 >> 62)
  {
    JUMPOUT(0x22AA633A0);
  }

  return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
}

void *sub_2251025D4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  sub_2250B0DFC(&qword_27D718C88, &qword_225443F10);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

unint64_t sub_225102650(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

void sub_225102674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  sub_2250D72C0(a2, a3, a4, a5);
  sub_22507CCF8();
  if (v17)
  {
    __break(1u);
    goto LABEL_13;
  }

  v18 = v15;
  v19 = v16;
  sub_2250B0DFC(&unk_27D719848, &qword_225447AD0);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a6 & 1, v14))
  {
    goto LABEL_5;
  }

  v20 = sub_2250D72C0(a2, a3, a4, a5);
  if ((v19 & 1) != (v21 & 1))
  {
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v18 = v20;
LABEL_5:
  v22 = *v7;
  if (v19)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v18);
    *(v23 + 8 * v18) = a1;
  }

  else
  {
    sub_225102A38(v18, a2, a3, a4, a5, a1, v22);
  }
}

uint64_t sub_2251027D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  sub_22507DF9C(a2, a3);
  sub_22507CCF8();
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v11;
  v15 = v12;
  sub_2250B0DFC(&qword_27D719298, &qword_225445B70);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v10))
  {
    goto LABEL_5;
  }

  v16 = sub_22507DF9C(a2, a3);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = v16;
LABEL_5:
  v18 = *v5;
  if (v15)
  {
    *(v18[7] + 8 * v14) = a1;
  }

  else
  {
    sub_225102A84(v14, a2, a3, a1, v18);
  }
}

unint64_t sub_225102908(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2250D7360(a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  sub_2250B0DFC(&qword_27D719828, &unk_225447AA0);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = sub_2250D7360(a3);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v18;
LABEL_5:
  v20 = *v5;
  if (v17)
  {
    v21 = (v20[7] + 16 * v16);
    *v21 = a1;
    v21[1] = a2;
  }

  else
  {

    return sub_225102ACC(v16, a3, a1, a2, v20);
  }
}

unint64_t sub_225102A38(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 32 * result);
  *v7 = a2;
  v7[1] = a3;
  v7[2] = a4;
  v7[3] = a5;
  *(a7[7] + 8 * result) = a6;
  v8 = a7[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v10;
  }

  return result;
}

unint64_t sub_225102A84(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_225102ACC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_225102B14(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  a8[(result >> 6) + 8] |= 1 << result;
  v8 = (a8[6] + 16 * result);
  *v8 = a2;
  v8[1] = a3;
  v9 = (a8[7] + 32 * result);
  *v9 = a4;
  v9[1] = a5;
  v9[2] = a6;
  v9[3] = a7;
  v10 = a8[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a8[2] = v12;
  }

  return result;
}

uint64_t sub_225102B64(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_2254479E0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_225102BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_225102BE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_225102BE8(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_2250B0DFC(&qword_27D719818, &qword_225447A98);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_2250C75C0((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_225102CE8(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_2250B0DFC(&qword_27D718E58, &qword_225447A80);
  v10 = *(type metadata accessor for PartialTrafficLog(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for PartialTrafficLog(0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_225098BE0(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_225102E9C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_2251076A8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_225102FC0(v6);
  return specialized ContiguousArray._endMutation()();
}

Swift::Int sub_225102F18(uint64_t *a1)
{
  v2 = *(type metadata accessor for PartialTrafficLog(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_225107824(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_2251030A0(v6);
  *a1 = v3;
  return result;
}

void sub_225102FC0(uint64_t *a1)
{
  v3 = a1[1];
  v4 = _minimumMergeRunLength(_:)(v3);
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_225102528(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_225103804(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_2251031D0(0, v3, 1, a1);
  }
}

Swift::Int sub_2251030A0(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for PartialTrafficLog(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for PartialTrafficLog(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22510430C(v8, v9, a1, v4);
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
    return sub_22510351C(0, v2, 1, a1);
  }

  return result;
}

void sub_2251031D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_2250B0DFC(&unk_27D719260, &unk_225445B40);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v46 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Date();
  v14 = MEMORY[0x28223BE20](v13);
  v45 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v38 - v17;
  v39 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v43 = (v16 + 32);
    v44 = v12;
    v20 = (v16 + 8);
    v47 = v19;
    v21 = v19 + 8 * a3 - 8;
    v22 = a1 - a3;
    while (2)
    {
      v41 = v21;
      v42 = a3;
      v23 = *(v47 + 8 * a3);
      v40 = v22;
      v24 = v21;
      do
      {
        v25 = *v24;
        sub_2250F4AA8(v23 + OBJC_IVAR___CKLTrafficLogMessage_requestTime, v12);
        if (sub_22507C8E8(v12, 1, v13) == 1)
        {
          v26 = v23;
          v27 = v25;
          static Date.distantPast.getter();
          v28 = sub_22507C8E8(v12, 1, v13);
          v29 = v46;
          if (v28 != 1)
          {
            sub_2251076BC(v12);
          }
        }

        else
        {
          (*v43)(v18, v12, v13);
          v30 = v23;
          v31 = v25;
          v29 = v46;
        }

        sub_2250F4AA8(v25 + OBJC_IVAR___CKLTrafficLogMessage_requestTime, v29);
        if (sub_22507C8E8(v29, 1, v13) == 1)
        {
          v32 = v45;
          static Date.distantPast.getter();
          if (sub_22507C8E8(v29, 1, v13) != 1)
          {
            sub_2251076BC(v29);
          }
        }

        else
        {
          v32 = v45;
          (*v43)(v45, v29, v13);
        }

        v33 = static Date.< infix(_:_:)();
        v34 = v32;
        v35 = *v20;
        (*v20)(v34, v13);
        v35(v18, v13);

        v12 = v44;
        if ((v33 & 1) == 0)
        {
          break;
        }

        if (!v47)
        {
          __break(1u);
          return;
        }

        v36 = *v24;
        v23 = *(v24 + 8);
        *v24 = v23;
        *(v24 + 8) = v36;
        v24 -= 8;
      }

      while (!__CFADD__(v22++, 1));
      a3 = v42 + 1;
      v21 = v41 + 8;
      v22 = v40 - 1;
      if (v42 + 1 != v39)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t sub_22510351C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for PartialTrafficLog(0);
  v9 = MEMORY[0x28223BE20](v8);
  v43 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v47 = &v34 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v46 = &v34 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v45 = &v34 - v16;
  result = MEMORY[0x28223BE20](v15);
  v44 = &v34 - v19;
  v36 = a2;
  if (a3 != a2)
  {
    v20 = result;
    v21 = *a4;
    v22 = *(v18 + 72);
    v23 = *a4 + v22 * (a3 - 1);
    v41 = -v22;
    v42 = v21;
    v24 = a1 - a3;
    v35 = v22;
    v25 = v21 + v22 * a3;
    v26 = v45;
    while (2)
    {
      v39 = v23;
      v40 = a3;
      v37 = v25;
      v38 = v24;
      do
      {
        v27 = v44;
        sub_22507EE88(v25, v44);
        sub_22507EE88(v23, v26);
        v28 = v46;
        sub_22507EE88(v27, v46);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        sub_2251070D4(v28, type metadata accessor for PartialTrafficLog);
        v29 = v47;
        sub_22507EE88(v26, v47);
        v30 = v20;
        v31 = swift_getEnumCaseMultiPayload();
        sub_2251070D4(v29, type metadata accessor for PartialTrafficLog);
        sub_2251070D4(v26, type metadata accessor for PartialTrafficLog);
        result = sub_2251070D4(v27, type metadata accessor for PartialTrafficLog);
        v32 = EnumCaseMultiPayload >= v31;
        v20 = v30;
        if (v32)
        {
          break;
        }

        if (!v42)
        {
          __break(1u);
          return result;
        }

        v33 = v43;
        sub_225107074(v25, v43, type metadata accessor for PartialTrafficLog);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_225107074(v33, v23, type metadata accessor for PartialTrafficLog);
        v23 += v41;
        v25 += v41;
        v32 = __CFADD__(v24++, 1);
      }

      while (!v32);
      a3 = v40 + 1;
      v23 = v39 + v35;
      v24 = v38 - 1;
      v25 = v37 + v35;
      if (v40 + 1 != v36)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_225103804(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v137 = a1;
  v8 = sub_2250B0DFC(&unk_27D719260, &unk_225445B40);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v133 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v140 = &v133 - v16;
  MEMORY[0x28223BE20](v15);
  v143 = &v133 - v17;
  v18 = type metadata accessor for Date();
  v19 = MEMORY[0x28223BE20](v18);
  v148 = &v133 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v154 = &v133 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  MEMORY[0x28223BE20](v23);
  v144 = a3;
  v145 = &v133 - v26;
  v27 = a3[1];
  if (v27 < 1)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_113:
    v154 = *v137;
    if (!v154)
    {
      goto LABEL_156;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_115:
      v126 = (v29 + 16);
      for (i = *(v29 + 2); i >= 2; *v126 = i)
      {
        if (!*v144)
        {
          goto LABEL_153;
        }

        v128 = &v29[16 * i];
        v129 = *v128;
        v130 = &v126[2 * i];
        v131 = v130[1];
        sub_225104E18((*v144 + 8 * *v128), (*v144 + 8 * *v130), (*v144 + 8 * v131), v154);
        if (v5)
        {
          break;
        }

        if (v131 < v129)
        {
          goto LABEL_141;
        }

        if (i - 2 >= *v126)
        {
          goto LABEL_142;
        }

        *v128 = v129;
        *(v128 + 1) = v131;
        v132 = *v126 - i;
        if (*v126 < i)
        {
          goto LABEL_143;
        }

        i = *v126 - 1;
        memmove(v130, v130 + 2, 16 * v132);
      }

LABEL_123:

      return;
    }

LABEL_150:
    v29 = sub_225105A78(v29);
    goto LABEL_115;
  }

  v134 = a4;
  v28 = 0;
  v150 = (v24 + 8);
  v151 = (v24 + 32);
  v29 = MEMORY[0x277D84F90];
  v152 = v11;
  v153 = v14;
  v139 = v25;
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    if (v31 >= v27)
    {
      v147 = v31;
    }

    else
    {
      v142 = v27;
      v136 = v29;
      v32 = *v144;
      v33 = v30;
      v34 = v31;
      v156 = *(*v144 + 8 * v31);
      v155 = *(v32 + 8 * v33);
      v35 = v155;
      v36 = v156;
      v29 = v35;
      LODWORD(v141) = sub_2251016F0(&v156, &v155);
      if (v5)
      {

        return;
      }

      v146 = 0;

      v138 = 8 * v33;
      v5 = v32 + 8 * v33 + 16;
      v135 = v33;
      v37 = (v33 + 2);
      v38 = v142;
      v39 = v143;
      while (1)
      {
        v40 = v37;
        if (v34 + 1 >= v38)
        {
          break;
        }

        v147 = v34;
        v29 = *(v5 - 8);
        v41 = *v5;
        sub_2250F4AA8(*v5 + OBJC_IVAR___CKLTrafficLogMessage_requestTime, v39);
        if (sub_22507C8E8(v39, 1, v18) == 1)
        {
          v42 = v41;
          v43 = v29;
          static Date.distantPast.getter();
          v44 = sub_22507C8E8(v39, 1, v18);
          v45 = v140;
          if (v44 != 1)
          {
            sub_2251076BC(v143);
          }
        }

        else
        {
          (*v151)(v145, v39, v18);
          v46 = v41;
          v47 = v29;
          v45 = v140;
        }

        sub_2250F4AA8(&v29[OBJC_IVAR___CKLTrafficLogMessage_requestTime], v45);
        v48 = sub_22507C8E8(v45, 1, v18);
        v149 = v40;
        if (v48 == 1)
        {
          v49 = v139;
          static Date.distantPast.getter();
          if (sub_22507C8E8(v45, 1, v18) != 1)
          {
            sub_2251076BC(v45);
          }
        }

        else
        {
          v49 = v139;
          (*v151)(v139, v45, v18);
        }

        v50 = v145;
        v51 = static Date.< infix(_:_:)();
        v52 = *v150;
        (*v150)(v49, v18);
        v52(v50, v18);

        v53 = v141 ^ v51;
        v5 += 8;
        v34 = v147 + 1;
        v40 = v149;
        v37 = v149 + 1;
        v38 = v142;
        v39 = v143;
        if (v53)
        {
          goto LABEL_19;
        }
      }

      v34 = v38;
LABEL_19:
      v147 = v34;
      if (v141)
      {
        if (v34 < v135)
        {
          goto LABEL_149;
        }

        v5 = v146;
        if (v135 >= v34)
        {
          v29 = v136;
          v11 = v152;
          v14 = v153;
          v30 = v135;
        }

        else
        {
          v54 = v38 >= v40 ? v40 : v38;
          v55 = 8 * v54 - 8;
          v56 = v34;
          v57 = v135;
          v29 = v136;
          v11 = v152;
          v14 = v153;
          v30 = v135;
          v58 = v138;
          do
          {
            if (v57 != --v56)
            {
              v59 = *v144;
              if (!*v144)
              {
                goto LABEL_154;
              }

              v60 = *(v59 + v58);
              *(v59 + v58) = *(v59 + v55);
              *(v59 + v55) = v60;
            }

            ++v57;
            v55 -= 8;
            v58 += 8;
          }

          while (v57 < v56);
        }
      }

      else
      {
        v5 = v146;
        v30 = v135;
        v29 = v136;
        v11 = v152;
        v14 = v153;
      }
    }

    v61 = v144[1];
    if (v147 < v61)
    {
      if (__OFSUB__(v147, v30))
      {
        goto LABEL_146;
      }

      if (v147 - v30 < v134)
      {
        break;
      }
    }

LABEL_60:
    if (v147 < v30)
    {
      goto LABEL_145;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v146 = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v29 = sub_2250C73B4(0, *(v29 + 2) + 1, 1, v29);
    }

    v81 = *(v29 + 2);
    v80 = *(v29 + 3);
    v5 = v81 + 1;
    if (v81 >= v80 >> 1)
    {
      v29 = sub_2250C73B4((v80 > 1), v81 + 1, 1, v29);
    }

    *(v29 + 2) = v5;
    v82 = v29 + 32;
    v83 = &v29[16 * v81 + 32];
    v84 = v147;
    *v83 = v30;
    *(v83 + 1) = v84;
    v149 = *v137;
    if (!v149)
    {
      goto LABEL_155;
    }

    if (v81)
    {
      while (1)
      {
        v85 = v5 - 1;
        v86 = &v82[16 * v5 - 16];
        v87 = &v29[16 * v5];
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v88 = *(v29 + 4);
          v89 = *(v29 + 5);
          v98 = __OFSUB__(v89, v88);
          v90 = v89 - v88;
          v91 = v98;
LABEL_80:
          if (v91)
          {
            goto LABEL_132;
          }

          v103 = *v87;
          v102 = *(v87 + 1);
          v104 = __OFSUB__(v102, v103);
          v105 = v102 - v103;
          v106 = v104;
          if (v104)
          {
            goto LABEL_135;
          }

          v107 = *(v86 + 1);
          v108 = v107 - *v86;
          if (__OFSUB__(v107, *v86))
          {
            goto LABEL_138;
          }

          if (__OFADD__(v105, v108))
          {
            goto LABEL_140;
          }

          if (v105 + v108 >= v90)
          {
            if (v90 < v108)
            {
              v85 = v5 - 2;
            }

            goto LABEL_102;
          }

          goto LABEL_95;
        }

        if (v5 < 2)
        {
          goto LABEL_134;
        }

        v110 = *v87;
        v109 = *(v87 + 1);
        v98 = __OFSUB__(v109, v110);
        v105 = v109 - v110;
        v106 = v98;
LABEL_95:
        if (v106)
        {
          goto LABEL_137;
        }

        v112 = *v86;
        v111 = *(v86 + 1);
        v98 = __OFSUB__(v111, v112);
        v113 = v111 - v112;
        if (v98)
        {
          goto LABEL_139;
        }

        if (v113 < v105)
        {
          goto LABEL_109;
        }

LABEL_102:
        if (v85 - 1 >= v5)
        {
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
LABEL_137:
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
          goto LABEL_148;
        }

        if (!*v144)
        {
          goto LABEL_152;
        }

        v117 = v29;
        v29 = &v82[16 * v85 - 16];
        v118 = *v29;
        v119 = v82;
        v5 = v85;
        v120 = &v82[16 * v85];
        v121 = *(v120 + 1);
        v122 = v146;
        sub_225104E18((*v144 + 8 * *v29), (*v144 + 8 * *v120), (*v144 + 8 * v121), v149);
        if (v122)
        {
          goto LABEL_123;
        }

        if (v121 < v118)
        {
          goto LABEL_127;
        }

        v123 = *(v117 + 2);
        if (v5 > v123)
        {
          goto LABEL_128;
        }

        *v29 = v118;
        *(v29 + 1) = v121;
        if (v5 >= v123)
        {
          goto LABEL_129;
        }

        v124 = v5;
        v146 = 0;
        v5 = v123 - 1;
        memmove(v120, v120 + 16, 16 * (v123 - 1 - v124));
        v29 = v117;
        *(v117 + 2) = v123 - 1;
        v125 = v123 > 2;
        v11 = v152;
        v14 = v153;
        v82 = v119;
        if (!v125)
        {
          goto LABEL_109;
        }
      }

      v92 = &v82[16 * v5];
      v93 = *(v92 - 8);
      v94 = *(v92 - 7);
      v98 = __OFSUB__(v94, v93);
      v95 = v94 - v93;
      if (v98)
      {
        goto LABEL_130;
      }

      v97 = *(v92 - 6);
      v96 = *(v92 - 5);
      v98 = __OFSUB__(v96, v97);
      v90 = v96 - v97;
      v91 = v98;
      if (v98)
      {
        goto LABEL_131;
      }

      v99 = *(v87 + 1);
      v100 = v99 - *v87;
      if (__OFSUB__(v99, *v87))
      {
        goto LABEL_133;
      }

      v98 = __OFADD__(v90, v100);
      v101 = v90 + v100;
      if (v98)
      {
        goto LABEL_136;
      }

      if (v101 >= v95)
      {
        v115 = *v86;
        v114 = *(v86 + 1);
        v98 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v98)
        {
          goto LABEL_144;
        }

        if (v90 < v116)
        {
          v85 = v5 - 2;
        }

        goto LABEL_102;
      }

      goto LABEL_80;
    }

LABEL_109:
    v27 = v144[1];
    v5 = v146;
    v28 = v147;
    if (v147 >= v27)
    {
      goto LABEL_113;
    }
  }

  if (__OFADD__(v30, v134))
  {
    goto LABEL_147;
  }

  if (v30 + v134 >= v61)
  {
    v62 = v144[1];
  }

  else
  {
    v62 = v30 + v134;
  }

  if (v62 < v30)
  {
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
    goto LABEL_150;
  }

  if (v147 == v62)
  {
    goto LABEL_60;
  }

  v135 = v30;
  v136 = v29;
  v146 = v5;
  v149 = *v144;
  v63 = v30 - v147;
  v64 = &v149[8 * v147 - 8];
  v65 = v147;
  v138 = v62;
LABEL_43:
  v147 = v65;
  v66 = *&v149[8 * v65];
  v141 = v63;
  v142 = v64;
  while (1)
  {
    v67 = *v64;
    sub_2250F4AA8(v66 + OBJC_IVAR___CKLTrafficLogMessage_requestTime, v14);
    if (sub_22507C8E8(v14, 1, v18) == 1)
    {
      v68 = v66;
      v69 = v67;
      static Date.distantPast.getter();
      if (sub_22507C8E8(v14, 1, v18) != 1)
      {
        sub_2251076BC(v14);
      }
    }

    else
    {
      (*v151)(v154, v14, v18);
      v70 = v66;
      v71 = v67;
    }

    sub_2250F4AA8(v67 + OBJC_IVAR___CKLTrafficLogMessage_requestTime, v11);
    if (sub_22507C8E8(v11, 1, v18) == 1)
    {
      v72 = v148;
      static Date.distantPast.getter();
      if (sub_22507C8E8(v11, 1, v18) != 1)
      {
        sub_2251076BC(v11);
      }
    }

    else
    {
      v72 = v148;
      (*v151)(v148, v11, v18);
    }

    v73 = v154;
    v74 = static Date.< infix(_:_:)();
    v75 = v72;
    v76 = *v150;
    (*v150)(v75, v18);
    v76(v73, v18);

    if ((v74 & 1) == 0)
    {
      v11 = v152;
      v14 = v153;
LABEL_58:
      v65 = v147 + 1;
      v64 = (v142 + 8);
      v63 = v141 - 1;
      if (v147 + 1 == v138)
      {
        v147 = v138;
        v5 = v146;
        v30 = v135;
        v29 = v136;
        goto LABEL_60;
      }

      goto LABEL_43;
    }

    v14 = v153;
    if (!v149)
    {
      break;
    }

    v77 = *v64;
    v66 = *(v64 + 1);
    *v64 = v66;
    *(v64 + 1) = v77;
    v64 -= 8;
    v78 = __CFADD__(v63++, 1);
    v11 = v152;
    if (v78)
    {
      goto LABEL_58;
    }
  }

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

uint64_t sub_22510430C(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v129 = a1;
  v152 = type metadata accessor for PartialTrafficLog(0);
  v141 = *(v152 - 8);
  v7 = MEMORY[0x28223BE20](v152);
  v133 = &v125 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v147 = &v125 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v151 = &v125 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v150 = &v125 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v149 = &v125 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v148 = &v125 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v139 = &v125 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v138 = &v125 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v137 = &v125 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v136 = &v125 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v125 - v28;
  result = MEMORY[0x28223BE20](v27);
  v32 = &v125 - v31;
  v142 = a3;
  v33 = a3[1];
  if (v33 < 1)
  {
    v35 = MEMORY[0x277D84F90];
LABEL_105:
    v4 = *v129;
    if (!*v129)
    {
      goto LABEL_147;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_107;
    }

    goto LABEL_141;
  }

  v34 = 0;
  v35 = MEMORY[0x277D84F90];
  v128 = a4;
  v125 = &v125 - v31;
  v126 = v29;
  while (1)
  {
    v36 = v34 + 1;
    v130 = v34;
    if (v34 + 1 < v33)
    {
      v145 = v33;
      v127 = v35;
      v37 = *v142;
      v38 = *(v141 + 72);
      v4 = *v142 + v38 * v36;
      sub_22507EE88(v4, v32);
      sub_22507EE88(v37 + v38 * v34, v29);
      v39 = v143;
      LODWORD(v140) = sub_225101A40(v32, v29);
      v143 = v39;
      if (v39)
      {
        sub_2251070D4(v29, type metadata accessor for PartialTrafficLog);
        sub_2251070D4(v32, type metadata accessor for PartialTrafficLog);
      }

      sub_2251070D4(v29, type metadata accessor for PartialTrafficLog);
      result = sub_2251070D4(v32, type metadata accessor for PartialTrafficLog);
      v40 = v34 + 2;
      v41 = v37 + v38 * (v34 + 2);
      v146 = v38;
      v42 = v145;
      while (1)
      {
        v35 = v40;
        v43 = v36 + 1;
        if (v43 >= v42)
        {
          break;
        }

        v44 = v136;
        sub_22507EE88(v41, v136);
        v45 = v137;
        sub_22507EE88(v4, v137);
        v144 = v43;
        v46 = v138;
        sub_22507EE88(v44, v138);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        sub_2251070D4(v46, type metadata accessor for PartialTrafficLog);
        v48 = v139;
        sub_22507EE88(v45, v139);
        LODWORD(v46) = swift_getEnumCaseMultiPayload();
        sub_2251070D4(v48, type metadata accessor for PartialTrafficLog);
        v49 = v45;
        v38 = v146;
        sub_2251070D4(v49, type metadata accessor for PartialTrafficLog);
        result = sub_2251070D4(v44, type metadata accessor for PartialTrafficLog);
        v58 = EnumCaseMultiPayload >= v46;
        v36 = v144;
        v42 = v145;
        v50 = v58;
        v51 = v140 ^ v50;
        v41 += v38;
        v4 += v38;
        v40 = v35 + 1;
        if ((v51 & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      v36 = v42;
LABEL_13:
      if ((v140 & 1) == 0)
      {
        a4 = v128;
        v34 = v130;
LABEL_34:
        v35 = v127;
        goto LABEL_35;
      }

      v34 = v130;
      a4 = v128;
      if (v36 < v130)
      {
        goto LABEL_140;
      }

      if (v130 >= v36)
      {
        goto LABEL_34;
      }

      if (v42 >= v35)
      {
        v52 = v35;
      }

      else
      {
        v52 = v42;
      }

      v4 = v38 * (v52 - 1);
      v53 = v38 * v52;
      v54 = v130 * v38;
      v55 = v130;
      v56 = v36;
      do
      {
        if (v55 != --v36)
        {
          v57 = *v142;
          if (!*v142)
          {
            goto LABEL_145;
          }

          sub_225107074(v57 + v54, v133, type metadata accessor for PartialTrafficLog);
          v58 = v54 < v4 || v57 + v54 >= (v57 + v53);
          if (v58)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v54 != v4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          result = sub_225107074(v133, v57 + v4, type metadata accessor for PartialTrafficLog);
          v38 = v146;
        }

        ++v55;
        v4 -= v38;
        v53 -= v38;
        v54 += v38;
      }

      while (v55 < v36);
      v35 = v127;
      v36 = v56;
      v34 = v130;
    }

LABEL_35:
    v59 = v142[1];
    if (v36 < v59)
    {
      if (__OFSUB__(v36, v34))
      {
        goto LABEL_137;
      }

      if (v36 - v34 < a4)
      {
        break;
      }
    }

LABEL_51:
    if (v36 < v34)
    {
      goto LABEL_136;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2250C73B4(0, *(v35 + 16) + 1, 1, v35);
      v35 = result;
    }

    v73 = *(v35 + 16);
    v72 = *(v35 + 24);
    v74 = v73 + 1;
    v144 = v36;
    if (v73 >= v72 >> 1)
    {
      result = sub_2250C73B4((v72 > 1), v73 + 1, 1, v35);
      v35 = result;
    }

    *(v35 + 16) = v74;
    v75 = v35 + 32;
    v76 = (v35 + 32 + 16 * v73);
    v77 = v144;
    *v76 = v130;
    v76[1] = v77;
    if (!*v129)
    {
      goto LABEL_146;
    }

    if (v73)
    {
      v78 = *v129;
      while (1)
      {
        v79 = v74 - 1;
        v80 = (v75 + 16 * (v74 - 1));
        v81 = (v35 + 16 * v74);
        if (v74 >= 4)
        {
          break;
        }

        if (v74 == 3)
        {
          v82 = *(v35 + 32);
          v83 = *(v35 + 40);
          v92 = __OFSUB__(v83, v82);
          v84 = v83 - v82;
          v85 = v92;
LABEL_72:
          if (v85)
          {
            goto LABEL_123;
          }

          v97 = *v81;
          v96 = v81[1];
          v98 = __OFSUB__(v96, v97);
          v99 = v96 - v97;
          v100 = v98;
          if (v98)
          {
            goto LABEL_126;
          }

          v101 = v80[1];
          v102 = v101 - *v80;
          if (__OFSUB__(v101, *v80))
          {
            goto LABEL_129;
          }

          if (__OFADD__(v99, v102))
          {
            goto LABEL_131;
          }

          if (v99 + v102 >= v84)
          {
            if (v84 < v102)
            {
              v79 = v74 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        if (v74 < 2)
        {
          goto LABEL_125;
        }

        v104 = *v81;
        v103 = v81[1];
        v92 = __OFSUB__(v103, v104);
        v99 = v103 - v104;
        v100 = v92;
LABEL_87:
        if (v100)
        {
          goto LABEL_128;
        }

        v106 = *v80;
        v105 = v80[1];
        v92 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v92)
        {
          goto LABEL_130;
        }

        if (v107 < v99)
        {
          goto LABEL_101;
        }

LABEL_94:
        if (v79 - 1 >= v74)
        {
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
LABEL_129:
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
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        if (!*v142)
        {
          goto LABEL_143;
        }

        v4 = v35;
        v35 = v75 + 16 * (v79 - 1);
        v111 = *v35;
        v112 = (v75 + 16 * v79);
        v113 = v112[1];
        v114 = v143;
        sub_225105494(*v142 + *(v141 + 72) * *v35, *v142 + *(v141 + 72) * *v112, *v142 + *(v141 + 72) * v113, v78);
        v143 = v114;
        if (v114)
        {
        }

        if (v113 < v111)
        {
          goto LABEL_118;
        }

        v115 = *(v4 + 16);
        if (v79 > v115)
        {
          goto LABEL_119;
        }

        *v35 = v111;
        *(v35 + 8) = v113;
        if (v79 >= v115)
        {
          goto LABEL_120;
        }

        v74 = v115 - 1;
        result = memmove((v75 + 16 * v79), v112 + 2, 16 * (v115 - 1 - v79));
        v35 = v4;
        *(v4 + 16) = v115 - 1;
        if (v115 <= 2)
        {
          goto LABEL_101;
        }
      }

      v86 = v75 + 16 * v74;
      v87 = *(v86 - 64);
      v88 = *(v86 - 56);
      v92 = __OFSUB__(v88, v87);
      v89 = v88 - v87;
      if (v92)
      {
        goto LABEL_121;
      }

      v91 = *(v86 - 48);
      v90 = *(v86 - 40);
      v92 = __OFSUB__(v90, v91);
      v84 = v90 - v91;
      v85 = v92;
      if (v92)
      {
        goto LABEL_122;
      }

      v93 = v81[1];
      v94 = v93 - *v81;
      if (__OFSUB__(v93, *v81))
      {
        goto LABEL_124;
      }

      v92 = __OFADD__(v84, v94);
      v95 = v84 + v94;
      if (v92)
      {
        goto LABEL_127;
      }

      if (v95 >= v89)
      {
        v109 = *v80;
        v108 = v80[1];
        v92 = __OFSUB__(v108, v109);
        v110 = v108 - v109;
        if (v92)
        {
          goto LABEL_135;
        }

        if (v84 < v110)
        {
          v79 = v74 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_72;
    }

LABEL_101:
    v33 = v142[1];
    v34 = v144;
    a4 = v128;
    v32 = v125;
    v29 = v126;
    if (v144 >= v33)
    {
      goto LABEL_105;
    }
  }

  v60 = v34 + a4;
  if (__OFADD__(v34, a4))
  {
    goto LABEL_138;
  }

  if (v60 >= v59)
  {
    v60 = v142[1];
  }

  if (v60 < v34)
  {
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
LABEL_141:
    result = sub_225105A78(v35);
    v35 = result;
LABEL_107:
    v116 = v35;
    v118 = *(v35 + 16);
    v35 += 16;
    for (i = v118; i >= 2; *v35 = i)
    {
      if (!*v142)
      {
        goto LABEL_144;
      }

      v119 = (v116 + 16 * i);
      v120 = *v119;
      v121 = (v35 + 16 * i);
      v122 = v121[1];
      v123 = v143;
      sub_225105494(*v142 + *(v141 + 72) * *v119, *v142 + *(v141 + 72) * *v121, *v142 + *(v141 + 72) * v122, v4);
      v143 = v123;
      if (v123)
      {
        break;
      }

      if (v122 < v120)
      {
        goto LABEL_132;
      }

      if (i - 2 >= *v35)
      {
        goto LABEL_133;
      }

      *v119 = v120;
      v119[1] = v122;
      v124 = *v35 - i;
      if (*v35 < i)
      {
        goto LABEL_134;
      }

      i = *v35 - 1;
      result = memmove(v121, v121 + 2, 16 * v124);
    }
  }

  if (v36 == v60)
  {
    goto LABEL_51;
  }

  v127 = v35;
  v61 = *v142;
  v62 = *(v141 + 72);
  v63 = *v142 + v62 * (v36 - 1);
  v145 = -v62;
  v146 = v61;
  v64 = v34 - v36;
  v131 = v62;
  v132 = v60;
  v4 = v61 + v36 * v62;
LABEL_44:
  v144 = v36;
  v134 = v4;
  v135 = v64;
  v140 = v63;
  while (1)
  {
    v65 = v148;
    sub_22507EE88(v4, v148);
    v66 = v149;
    sub_22507EE88(v63, v149);
    v67 = v150;
    sub_22507EE88(v65, v150);
    v68 = swift_getEnumCaseMultiPayload();
    sub_2251070D4(v67, type metadata accessor for PartialTrafficLog);
    v69 = v151;
    sub_22507EE88(v66, v151);
    v70 = swift_getEnumCaseMultiPayload();
    sub_2251070D4(v69, type metadata accessor for PartialTrafficLog);
    sub_2251070D4(v66, type metadata accessor for PartialTrafficLog);
    result = sub_2251070D4(v65, type metadata accessor for PartialTrafficLog);
    if (v68 >= v70)
    {
LABEL_49:
      v36 = v144 + 1;
      v63 = v140 + v131;
      v64 = v135 - 1;
      v4 = v134 + v131;
      if (v144 + 1 == v132)
      {
        v36 = v132;
        v35 = v127;
        v34 = v130;
        goto LABEL_51;
      }

      goto LABEL_44;
    }

    if (!v146)
    {
      break;
    }

    v71 = v147;
    sub_225107074(v4, v147, type metadata accessor for PartialTrafficLog);
    swift_arrayInitWithTakeFrontToBack();
    sub_225107074(v71, v63, type metadata accessor for PartialTrafficLog);
    v63 += v145;
    v4 += v145;
    v58 = __CFADD__(v64++, 1);
    if (v58)
    {
      goto LABEL_49;
    }
  }

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
  return result;
}

uint64_t sub_225104E18(char *a1, char *a2, char *a3, char *a4)
{
  v8 = sub_2250B0DFC(&unk_27D719260, &unk_225445B40);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v76 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v71 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v71 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v71 - v17;
  v19 = type metadata accessor for Date();
  v20 = MEMORY[0x28223BE20](v19);
  v75 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v78 = &v71 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  i = &v71 - v25;
  MEMORY[0x28223BE20](v24);
  v77 = &v71 - v26;
  v27 = (a2 - a1) / 8;
  v79 = (v28 + 8);
  v80 = (v28 + 32);
  if (v27 >= (a3 - a2) / 8)
  {
    sub_2250C75E0(a2, (a3 - a2) / 8, a4);
    v29 = &a4[8 * ((a3 - a2) / 8)];
    v82 = a4;
    v72 = v13;
    j = a1;
LABEL_22:
    v50 = (a2 - 8);
    v51 = a3 - 8;
    v77 = a2;
    for (i = a2 - 8; v29 > a4 && a2 > a1; v50 = i)
    {
      v81 = v51;
      v53 = *(v29 - 1);
      v54 = *v50;
      sub_2250F4AA8(v53 + OBJC_IVAR___CKLTrafficLogMessage_requestTime, v13);
      if (sub_22507C8E8(v13, 1, v19) == 1)
      {
        v55 = v53;
        v56 = v54;
        static Date.distantPast.getter();
        v57 = sub_22507C8E8(v13, 1, v19);
        v59 = v75;
        v58 = v76;
        if (v57 != 1)
        {
          sub_2251076BC(v13);
        }
      }

      else
      {
        (*v80)(v78, v13, v19);
        v60 = v53;
        v61 = v54;
        v59 = v75;
        v58 = v76;
      }

      sub_2250F4AA8(v54 + OBJC_IVAR___CKLTrafficLogMessage_requestTime, v58);
      if (sub_22507C8E8(v58, 1, v19) == 1)
      {
        static Date.distantPast.getter();
        if (sub_22507C8E8(v58, 1, v19) != 1)
        {
          sub_2251076BC(v58);
        }
      }

      else
      {
        (*v80)(v59, v58, v19);
      }

      v62 = v78;
      v63 = static Date.< infix(_:_:)();
      v64 = v59;
      v65 = *v79;
      (*v79)(v64, v19);
      v65(v62, v19);

      if (v63)
      {
        a3 = v81;
        a1 = j;
        v67 = i;
        a2 = i;
        a4 = v82;
        v13 = v72;
        if (v81 + 8 != v77)
        {
          *v81 = *i;
          a2 = v67;
        }

        goto LABEL_22;
      }

      v66 = v81;
      a1 = j;
      a2 = v77;
      if (v29 != v81 + 8)
      {
        *v81 = *(v29 - 1);
      }

      v51 = v66 - 8;
      v29 -= 8;
      a4 = v82;
      v13 = v72;
    }
  }

  else
  {
    v76 = v16;
    sub_2250C75E0(a1, (a2 - a1) / 8, a4);
    v29 = &a4[8 * v27];
    v78 = v29;
    v81 = a3;
    for (j = v18; a4 < v29 && a2 < a3; v18 = j)
    {
      v31 = *a2;
      v32 = *a4;
      sub_2250F4AA8(*a2 + OBJC_IVAR___CKLTrafficLogMessage_requestTime, v18);
      if (sub_22507C8E8(v18, 1, v19) == 1)
      {
        v33 = v31;
        v34 = v32;
        static Date.distantPast.getter();
        v35 = sub_22507C8E8(v18, 1, v19);
        v36 = v76;
        if (v35 != 1)
        {
          sub_2251076BC(v18);
        }
      }

      else
      {
        (*v80)(v77, v18, v19);
        v37 = v31;
        v38 = v32;
        v36 = v76;
      }

      v39 = a2;
      sub_2250F4AA8(v32 + OBJC_IVAR___CKLTrafficLogMessage_requestTime, v36);
      v40 = sub_22507C8E8(v36, 1, v19);
      v82 = a4;
      v41 = a1;
      if (v40 == 1)
      {
        v42 = i;
        static Date.distantPast.getter();
        if (sub_22507C8E8(v36, 1, v19) != 1)
        {
          sub_2251076BC(v36);
        }
      }

      else
      {
        v42 = i;
        (*v80)(i, v36, v19);
      }

      v43 = v77;
      v44 = static Date.< infix(_:_:)();
      v45 = v42;
      v46 = *v79;
      (*v79)(v45, v19);
      v46(v43, v19);

      if (v44)
      {
        v47 = v39;
        v48 = v41;
        v49 = v41 == v39;
        v39 += 8;
        a4 = v82;
      }

      else
      {
        v47 = v82;
        a4 = v82 + 8;
        v48 = v41;
        v49 = v41 == v82;
      }

      v29 = v78;
      if (!v49)
      {
        *v48 = *v47;
      }

      a1 = v48 + 8;
      a2 = v39;
      a3 = v81;
    }

    a2 = a1;
  }

  v68 = (v29 - a4) / 8;
  if (a2 != a4 || a2 >= &a4[8 * v68])
  {
    memmove(a2, a4, 8 * v68);
  }

  return 1;
}