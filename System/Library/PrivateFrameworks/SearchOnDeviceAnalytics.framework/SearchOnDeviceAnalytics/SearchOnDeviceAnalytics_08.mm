uint64_t sub_21B03179C(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_267();
  v3(v2);
  OUTLINED_FUNCTION_163();
  v4 = OUTLINED_FUNCTION_52();
  v5(v4);
  return v1;
}

uint64_t sub_21B0317EC(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_267();
  v3(v2);
  OUTLINED_FUNCTION_163();
  v4 = OUTLINED_FUNCTION_52();
  v5(v4);
  return v1;
}

uint64_t sub_21B03183C()
{
  v1 = OUTLINED_FUNCTION_36_0();
  v2(v1);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(v0);
  return v0;
}

void *sub_21B031930()
{

  sub_21AF99728(*(v0 + 32), *(v0 + 40));
  sub_21AF99BE0(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__startTimeCounts, &qword_27CD44758, &qword_21B118100);
  sub_21AF99BE0(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__stopTimeCounts, &qword_27CD44758, &qword_21B118100);

  return v0;
}

uint64_t sub_21B031D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(0);
  sub_21B099CBC(&qword_27CD45998, type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_TCPInfo);
  sub_21B1120B4();
  return swift_endAccess();
}

uint64_t sub_21B031E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(0);
  sub_21B099CBC(&qword_27CD45998, type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_TCPInfo);
  sub_21B1120B4();
  return swift_endAccess();
}

uint64_t sub_21B031F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v7 = a4(0);
  OUTLINED_FUNCTION_846(v7);
  OUTLINED_FUNCTION_49_1();
  result = a5();
  if (!v5)
  {
    OUTLINED_FUNCTION_48_1();
    return sub_21B111EA4();
  }

  return result;
}

uint64_t sub_21B031F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v69 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44758, &qword_21B118100);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v67 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v65 - v10;
  v68 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(0);
  v12 = MEMORY[0x28223BE20](v68);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  swift_beginAccess();
  v15 = *(a1 + 16);
  v16 = *(a1 + 24);
  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {

    sub_21B1121E4();
    if (v5)
    {
    }

    v66 = v14;
    v19 = 0;
  }

  else
  {
    v66 = v14;
    v19 = v5;
  }

  v20 = v69;
  swift_beginAccess();
  if (!sub_21AFD45D8(*(v20 + 32), *(v20 + 40)))
  {
    v21 = *(v20 + 32);
    v22 = *(v20 + 40);
    sub_21AF99818(v21, v22);
    sub_21B112184();
    if (v19)
    {
      return sub_21AF99728(v21, v22);
    }

    sub_21AF99728(v21, v22);
  }

  v23 = v69;
  swift_beginAccess();
  if (*(v23 + 48) != 1 || (result = sub_21B112164(), !v19))
  {
    v24 = v69;
    swift_beginAccess();
    if (*(v24 + 49) != 1 || (result = sub_21B112164(), !v19))
    {
      v25 = v69;
      swift_beginAccess();
      sub_21B0AA940();
      v26 = v68;
      if (__swift_getEnumTagSinglePayload(v11, 1, v68) == 1)
      {
        sub_21AF99BE0(v11, &qword_27CD44758, &qword_21B118100);
        v27 = v26;
      }

      else
      {
        sub_21B03179C(v11);
        sub_21B099CBC(&qword_27CD45998, type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_TCPInfo);
        sub_21B112224();
        if (v19)
        {
          return sub_21B03183C();
        }

        v27 = v26;
        sub_21B03183C();
      }

      swift_beginAccess();
      v28 = v67;
      sub_21B0AA940();
      if (__swift_getEnumTagSinglePayload(v28, 1, v27) == 1)
      {
        sub_21AF99BE0(v28, &qword_27CD44758, &qword_21B118100);
LABEL_26:
        v29 = (v25 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__connectionUuid);
        swift_beginAccess();
        v30 = *v29;
        v31 = v29[1];
        v32 = HIBYTE(v31) & 0xF;
        if ((v31 & 0x2000000000000000) == 0)
        {
          v32 = v30 & 0xFFFFFFFFFFFFLL;
        }

        if (v32)
        {

          sub_21B1121E4();
          if (v19)
          {
          }
        }

        v33 = (v25 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__networkProtocolName);
        swift_beginAccess();
        v34 = *v33;
        v35 = v33[1];
        v36 = HIBYTE(v35) & 0xF;
        if ((v35 & 0x2000000000000000) == 0)
        {
          v36 = v34 & 0xFFFFFFFFFFFFLL;
        }

        if (v36)
        {

          sub_21B1121E4();
          if (v19)
          {
          }
        }

        v37 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__quicwhitelistedDomain;
        swift_beginAccess();
        if (*(v25 + v37) != 1 || (result = sub_21B112164(), !v19))
        {
          v38 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__redirectCount;
          swift_beginAccess();
          if (!*(v25 + v38) || (result = sub_21B1121F4(), !v19))
          {
            v39 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__redirectCountW3C;
            swift_beginAccess();
            if (!*(v25 + v39) || (result = sub_21B1121F4(), !v19))
            {
              v40 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__requestHeaderSize;
              swift_beginAccess();
              if (!*(v25 + v40) || (result = sub_21B1121F4(), !v19))
              {
                v41 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__responseBodyBytesDecoded;
                swift_beginAccess();
                if (!*(v25 + v41) || (result = sub_21B1121F4(), !v19))
                {
                  v42 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__responseBodyBytesReceived;
                  swift_beginAccess();
                  if (!*(v25 + v42) || (result = sub_21B1121F4(), !v19))
                  {
                    v43 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__responseHeaderSize;
                    swift_beginAccess();
                    if (!*(v25 + v43) || (result = sub_21B1121F4(), !v19))
                    {
                      v44 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__tfosuccess;
                      swift_beginAccess();
                      if (*(v25 + v44) != 1 || (result = sub_21B112164(), !v19))
                      {
                        v45 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__timingDataInit;
                        swift_beginAccess();
                        if (*(v25 + v45) == 0.0 || (result = sub_21B1121D4(), !v19))
                        {
                          v46 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__connectStart;
                          swift_beginAccess();
                          if (!*(v25 + v46) || (result = sub_21B1121F4(), !v19))
                          {
                            v47 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__connectEnd;
                            swift_beginAccess();
                            if (!*(v25 + v47) || (result = sub_21B1121F4(), !v19))
                            {
                              v48 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__domainLookupStart;
                              swift_beginAccess();
                              if (!*(v25 + v48) || (result = sub_21B1121F4(), !v19))
                              {
                                v49 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__domainLookupEnd;
                                swift_beginAccess();
                                if (!*(v25 + v49) || (result = sub_21B1121F4(), !v19))
                                {
                                  v50 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__fetchStart;
                                  swift_beginAccess();
                                  if (!*(v25 + v50) || (result = sub_21B1121F4(), !v19))
                                  {
                                    v51 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__redirectStart;
                                    v52 = v69;
                                    swift_beginAccess();
                                    if (!*(v52 + v51) || (result = sub_21B1121F4(), !v19))
                                    {
                                      v53 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__redirectEnd;
                                      v54 = v69;
                                      swift_beginAccess();
                                      if (!*(v54 + v53) || (result = sub_21B1121F4(), !v19))
                                      {
                                        v55 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__requestStart;
                                        v56 = v69;
                                        swift_beginAccess();
                                        if (!*(v56 + v55) || (result = sub_21B1121F4(), !v19))
                                        {
                                          v57 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__requestEnd;
                                          v58 = v69;
                                          swift_beginAccess();
                                          if (!*(v58 + v57) || (result = sub_21B1121F4(), !v19))
                                          {
                                            v59 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__responseStart;
                                            v60 = v69;
                                            swift_beginAccess();
                                            if (!*(v60 + v59) || (result = sub_21B1121F4(), !v19))
                                            {
                                              v61 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__responseEnd;
                                              v62 = v69;
                                              swift_beginAccess();
                                              if (!*(v62 + v61) || (result = sub_21B1121F4(), !v19))
                                              {
                                                v63 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__secureConnectStart;
                                                v64 = v69;
                                                swift_beginAccess();
                                                result = *(v64 + v63);
                                                if (result)
                                                {
                                                  return sub_21B1121F4();
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

        return result;
      }

      sub_21B03179C(v28);
      sub_21B099CBC(&qword_27CD45998, type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_TCPInfo);
      sub_21B112224();
      if (!v19)
      {
        sub_21B03183C();
        goto LABEL_26;
      }

      return sub_21B03183C();
    }
  }

  return result;
}

BOOL sub_21B032B5C(uint64_t a1, uint64_t a2)
{
  v120 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(0);
  v4 = MEMORY[0x28223BE20](v120);
  v6 = &v111[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v116 = &v111[-v7];
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46DC0, &qword_21B127D40);
  v8 = MEMORY[0x28223BE20](v119);
  v10 = &v111[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v118 = &v111[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44758, &qword_21B118100);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v111[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v13);
  v117 = &v111[-v17];
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v111[-v19];
  MEMORY[0x28223BE20](v18);
  v22 = &v111[-v21];
  swift_beginAccess();
  v23 = *(a1 + 16);
  v24 = *(a1 + 24);
  swift_beginAccess();
  v25 = v23 == *(a2 + 16) && v24 == *(a2 + 24);
  if (v25 || (v26 = sub_21B112D04(), result = 0, (v26 & 1) != 0))
  {
    v114 = v10;
    v115 = v15;
    v113 = v6;
    swift_beginAccess();
    v28 = *(a1 + 32);
    v29 = *(a1 + 40);
    swift_beginAccess();
    v31 = *(a2 + 32);
    v30 = *(a2 + 40);

    sub_21AF99818(v28, v29);
    sub_21AF99818(v31, v30);
    v32 = MEMORY[0x21CEE80C0](v28, v29, v31, v30);
    sub_21AF99728(v31, v30);
    sub_21AF99728(v28, v29);
    if ((v32 & 1) == 0)
    {
      goto LABEL_23;
    }

    swift_beginAccess();
    v33 = *(a1 + 48);
    swift_beginAccess();
    if (v33 != *(a2 + 48))
    {
      goto LABEL_23;
    }

    swift_beginAccess();
    v34 = *(a1 + 49);
    swift_beginAccess();
    if (v34 != *(a2 + 49))
    {
      goto LABEL_23;
    }

    swift_beginAccess();
    sub_21B0AA940();
    swift_beginAccess();
    v35 = v118;
    v36 = *(v119 + 48);
    sub_21B0AA940();
    v37 = v35;
    sub_21B0AA940();
    v38 = v120;
    if (__swift_getEnumTagSinglePayload(v35, 1, v120) == 1)
    {
      sub_21AF99BE0(v22, &qword_27CD44758, &qword_21B118100);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v35 + v36, 1, v38);
      v40 = v115;
      if (EnumTagSinglePayload != 1)
      {
LABEL_21:
        v49 = &qword_27CD46DC0;
        v50 = &qword_21B127D40;
        v51 = v37;
LABEL_22:
        sub_21AF99BE0(v51, v49, v50);
        goto LABEL_23;
      }

      sub_21AF99BE0(v37, &qword_27CD44758, &qword_21B118100);
    }

    else
    {
      sub_21B0AA940();
      v41 = __swift_getEnumTagSinglePayload(v35 + v36, 1, v38);
      v40 = v115;
      if (v41 == 1)
      {
LABEL_20:
        sub_21AF99BE0(v22, &qword_27CD44758, &qword_21B118100);
        sub_21B03183C();
        goto LABEL_21;
      }

      v42 = v37 + v36;
      v43 = v116;
      sub_21B03179C(v42);
      v44 = *(v38 + 20);
      v45 = *&v20[v44];
      v46 = *&v43[v44];
      if (v45 != v46 && !sub_21B02FC20(v45, v46))
      {
        sub_21B03183C();
        sub_21AF99BE0(v22, &qword_27CD44758, &qword_21B118100);
        sub_21B03183C();
        v51 = v37;
        goto LABEL_61;
      }

      sub_21B111EC4();
      sub_21B099CBC(&unk_2811FAAE0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v112 = sub_21B1123C4();
      sub_21B03183C();
      sub_21AF99BE0(v22, &qword_27CD44758, &qword_21B118100);
      sub_21B03183C();
      sub_21AF99BE0(v37, &qword_27CD44758, &qword_21B118100);
      if ((v112 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    swift_beginAccess();
    v22 = v117;
    sub_21B0AA940();
    swift_beginAccess();
    v47 = *(v119 + 48);
    v37 = v114;
    sub_21B0AA940();
    sub_21B0AA940();
    v48 = v120;
    if (__swift_getEnumTagSinglePayload(v37, 1, v120) == 1)
    {
      sub_21AF99BE0(v22, &qword_27CD44758, &qword_21B118100);
      if (__swift_getEnumTagSinglePayload(v37 + v47, 1, v48) == 1)
      {
        sub_21AF99BE0(v37, &qword_27CD44758, &qword_21B118100);
        goto LABEL_28;
      }

      goto LABEL_21;
    }

    sub_21B0AA940();
    if (__swift_getEnumTagSinglePayload(v37 + v47, 1, v48) == 1)
    {
      goto LABEL_20;
    }

    v52 = v37 + v47;
    v53 = v113;
    sub_21B03179C(v52);
    v54 = *(v48 + 20);
    v55 = *&v40[v54];
    v56 = *&v53[v54];
    if (v55 == v56 || sub_21B02FC20(v55, v56))
    {
      sub_21B111EC4();
      sub_21B099CBC(&unk_2811FAAE0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v57 = sub_21B1123C4();
      sub_21B03183C();
      sub_21AF99BE0(v22, &qword_27CD44758, &qword_21B118100);
      sub_21B03183C();
      sub_21AF99BE0(v114, &qword_27CD44758, &qword_21B118100);
      if (v57)
      {
LABEL_28:
        v58 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__connectionUuid);
        swift_beginAccess();
        v59 = *v58;
        v60 = v58[1];
        v61 = (a2 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__connectionUuid);
        swift_beginAccess();
        v62 = v59 == *v61 && v60 == v61[1];
        if (v62 || (sub_21B112D04() & 1) != 0)
        {
          v63 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__networkProtocolName);
          swift_beginAccess();
          v64 = *v63;
          v65 = v63[1];
          v66 = (a2 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__networkProtocolName);
          swift_beginAccess();
          v67 = v64 == *v66 && v65 == v66[1];
          if (v67 || (sub_21B112D04() & 1) != 0)
          {
            v68 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__quicwhitelistedDomain;
            swift_beginAccess();
            LODWORD(v68) = *(a1 + v68);
            v69 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__quicwhitelistedDomain;
            swift_beginAccess();
            if (v68 == *(a2 + v69))
            {
              v70 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__redirectCount;
              swift_beginAccess();
              LODWORD(v70) = *(a1 + v70);
              v71 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__redirectCount;
              swift_beginAccess();
              if (v70 == *(a2 + v71))
              {
                v72 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__redirectCountW3C;
                swift_beginAccess();
                LODWORD(v72) = *(a1 + v72);
                v73 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__redirectCountW3C;
                swift_beginAccess();
                if (v72 == *(a2 + v73))
                {
                  v74 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__requestHeaderSize;
                  swift_beginAccess();
                  LODWORD(v74) = *(a1 + v74);
                  v75 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__requestHeaderSize;
                  swift_beginAccess();
                  if (v74 == *(a2 + v75))
                  {
                    v76 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__responseBodyBytesDecoded;
                    swift_beginAccess();
                    LODWORD(v76) = *(a1 + v76);
                    v77 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__responseBodyBytesDecoded;
                    swift_beginAccess();
                    if (v76 == *(a2 + v77))
                    {
                      v78 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__responseBodyBytesReceived;
                      swift_beginAccess();
                      LODWORD(v78) = *(a1 + v78);
                      v79 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__responseBodyBytesReceived;
                      swift_beginAccess();
                      if (v78 == *(a2 + v79))
                      {
                        v80 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__responseHeaderSize;
                        swift_beginAccess();
                        LODWORD(v80) = *(a1 + v80);
                        v81 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__responseHeaderSize;
                        swift_beginAccess();
                        if (v80 == *(a2 + v81))
                        {
                          v82 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__tfosuccess;
                          swift_beginAccess();
                          LODWORD(v82) = *(a1 + v82);
                          v83 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__tfosuccess;
                          swift_beginAccess();
                          if (v82 == *(a2 + v83))
                          {
                            v84 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__timingDataInit;
                            swift_beginAccess();
                            v85 = *(a1 + v84);
                            v86 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__timingDataInit;
                            swift_beginAccess();
                            if (v85 == *(a2 + v86))
                            {
                              v87 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__connectStart;
                              swift_beginAccess();
                              LODWORD(v87) = *(a1 + v87);
                              v88 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__connectStart;
                              swift_beginAccess();
                              if (v87 == *(a2 + v88))
                              {
                                v89 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__connectEnd;
                                swift_beginAccess();
                                LODWORD(v89) = *(a1 + v89);
                                v90 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__connectEnd;
                                swift_beginAccess();
                                if (v89 == *(a2 + v90))
                                {
                                  v91 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__domainLookupStart;
                                  swift_beginAccess();
                                  LODWORD(v91) = *(a1 + v91);
                                  v92 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__domainLookupStart;
                                  swift_beginAccess();
                                  if (v91 == *(a2 + v92))
                                  {
                                    v93 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__domainLookupEnd;
                                    swift_beginAccess();
                                    LODWORD(v93) = *(a1 + v93);
                                    v94 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__domainLookupEnd;
                                    swift_beginAccess();
                                    if (v93 == *(a2 + v94))
                                    {
                                      v95 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__fetchStart;
                                      swift_beginAccess();
                                      LODWORD(v95) = *(a1 + v95);
                                      v96 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__fetchStart;
                                      swift_beginAccess();
                                      if (v95 == *(a2 + v96))
                                      {
                                        v97 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__redirectStart;
                                        swift_beginAccess();
                                        LODWORD(v97) = *(a1 + v97);
                                        v98 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__redirectStart;
                                        swift_beginAccess();
                                        if (v97 == *(a2 + v98))
                                        {
                                          v99 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__redirectEnd;
                                          swift_beginAccess();
                                          LODWORD(v99) = *(a1 + v99);
                                          v100 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__redirectEnd;
                                          swift_beginAccess();
                                          if (v99 == *(a2 + v100))
                                          {
                                            v101 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__requestStart;
                                            swift_beginAccess();
                                            LODWORD(v101) = *(a1 + v101);
                                            v102 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__requestStart;
                                            swift_beginAccess();
                                            if (v101 == *(a2 + v102))
                                            {
                                              v103 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__requestEnd;
                                              swift_beginAccess();
                                              LODWORD(v103) = *(a1 + v103);
                                              v104 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__requestEnd;
                                              swift_beginAccess();
                                              if (v103 == *(a2 + v104))
                                              {
                                                v105 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__responseStart;
                                                swift_beginAccess();
                                                LODWORD(v105) = *(a1 + v105);
                                                v106 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__responseStart;
                                                swift_beginAccess();
                                                if (v105 == *(a2 + v106))
                                                {
                                                  v107 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__responseEnd;
                                                  swift_beginAccess();
                                                  LODWORD(v107) = *(a1 + v107);
                                                  v108 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__responseEnd;
                                                  swift_beginAccess();
                                                  if (v107 == *(a2 + v108))
                                                  {
                                                    v109 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__secureConnectStart;
                                                    swift_beginAccess();
                                                    LODWORD(v109) = *(a1 + v109);

                                                    v110 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__secureConnectStart;
                                                    swift_beginAccess();
                                                    LODWORD(v110) = *(a2 + v110);

                                                    return v109 == v110;
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
      }

LABEL_23:

      return 0;
    }

    sub_21B03183C();
    sub_21AF99BE0(v22, &qword_27CD44758, &qword_21B118100);
    sub_21B03183C();
    v51 = v114;
LABEL_61:
    v49 = &qword_27CD44758;
    v50 = &qword_21B118100;
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_21B033B50(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46B48, type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_NetworkTimingData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B033BD0(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD44F10, type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_NetworkTimingData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B033C40(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD44F10, type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_NetworkTimingData);

  return sub_21B112114();
}

uint64_t sub_21B033CCC()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD43F30);
  __swift_project_value_buffer(v0, qword_27CD43F30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_21B117F90;
  v4 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v4 = "results";
  *(v4 + 8) = 7;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_21B112234();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v24 + v3 + v2 + v1[14];
  *(v24 + v3 + v2) = 2;
  *v8 = "identifier";
  *(v8 + 8) = 10;
  *(v8 + 16) = 2;
  v7();
  v9 = (v24 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 4;
  *v10 = "rankingScore";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v7();
  v11 = (v24 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "fallbackResultSection";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v7();
  v13 = (v24 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "bundleIdentifier";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v7();
  v15 = (v24 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 7;
  *v16 = "knownBundleIdentifier";
  *(v16 + 1) = 21;
  v16[16] = 2;
  v7();
  v17 = (v24 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 8;
  *v18 = "isInitiallyHidden";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v7();
  v19 = (v24 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 9;
  *v20 = "totalAvailableResults";
  *(v20 + 1) = 21;
  v20[16] = 2;
  v7();
  v21 = (v24 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 10;
  *v22 = "titleButtonItem";
  *(v22 + 1) = 15;
  v22[16] = 2;
  v7();
  return sub_21B112244();
}

void Apple_Parsec_Feedback_V2_ResultSectionForFeedback.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    v1 = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_10_2();
        sub_21B087AA4();
        break;
      case 2:
        OUTLINED_FUNCTION_318();
        sub_21B112074();
        break;
      case 4:
        OUTLINED_FUNCTION_49_1();
        sub_21B112054();
        break;
      case 5:
        OUTLINED_FUNCTION_49_1();
        sub_21B111FD4();
        break;
      case 6:
        v3 = OUTLINED_FUNCTION_10_2();
        sub_21B0341B4(v3, v4, v5, v6);
        break;
      case 7:
        v7 = OUTLINED_FUNCTION_10_2();
        sub_21B034280(v7, v8, v9, v10);
        break;
      case 8:
        OUTLINED_FUNCTION_49_1();
        sub_21B111F94();
        break;
      case 9:
        OUTLINED_FUNCTION_49_1();
        sub_21B112084();
        break;
      case 10:
        v11 = OUTLINED_FUNCTION_10_2();
        sub_21B034364(v11, v12, v13, v14);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_21B0341B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_21B112064();
  if (v4)
  {
  }

  if (v10)
  {
    if (*(a2 + 64) == 255)
    {
      v7 = -1;
    }

    else
    {
      sub_21B111F74();
      v7 = *(a2 + 64);
    }

    v8 = *(a2 + 48);
    v9 = *(a2 + 56);
    *(a2 + 48) = 0;
    *(a2 + 56) = v10;
    *(a2 + 64) = 0;
    return sub_21AF83FA4(v8, v9, v7);
  }

  return result;
}

uint64_t sub_21B034364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(0);
  type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback(0);
  sub_21B099CBC(&qword_27CD44D10, type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ButtonForFeedback);
  return sub_21B1120B4();
}

void Apple_Parsec_Feedback_V2_ResultSectionForFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_26_3();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44828, &qword_21B118108);
  OUTLINED_FUNCTION_25(v3);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_212();
  type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback(v5);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_67_1();
  OUTLINED_FUNCTION_838();
  if (!v7 || (OUTLINED_FUNCTION_872(), OUTLINED_FUNCTION_9_8(), sub_21B099CBC(v8, v9, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchResultForFeedback), OUTLINED_FUNCTION_485(), OUTLINED_FUNCTION_750(), OUTLINED_FUNCTION_58_0(), sub_21B112214(), !v0))
  {
    OUTLINED_FUNCTION_10_4();
    if (!v10 || (OUTLINED_FUNCTION_60_0(), sub_21B1121E4(), !v0))
    {
      if (*(v1 + 24) == 0.0 || (OUTLINED_FUNCTION_143(), sub_21B1121D4(), !v0))
      {
        v11 = OUTLINED_FUNCTION_34_3();
        if (sub_21AFD45D8(v11, v12) || (OUTLINED_FUNCTION_34_3(), OUTLINED_FUNCTION_63_0(), sub_21B112184(), !v0))
        {
          if (*(v1 + 64) == 255)
          {
            goto LABEL_27;
          }

          OUTLINED_FUNCTION_455();
          OUTLINED_FUNCTION_292();
          if (v17)
          {
            sub_21B0346E8(v13, v14, v15, v16);
          }

          else
          {
            sub_21B03469C(v13, v14, v15, v16);
          }

          if (!v0)
          {
LABEL_27:
            if (*(v1 + 65) != 1 || (OUTLINED_FUNCTION_36_1(), sub_21B112164(), !v0))
            {
              if (!*(v1 + 68) || (OUTLINED_FUNCTION_36_1(), sub_21B1121F4(), !v0))
              {
                type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(0);
                OUTLINED_FUNCTION_715();
                OUTLINED_FUNCTION_243();
                if (v18)
                {
                  sub_21AF99BE0(v2, &qword_27CD44828, &qword_21B118108);
LABEL_23:
                  OUTLINED_FUNCTION_27_2();
                  goto LABEL_24;
                }

                OUTLINED_FUNCTION_49_2();
                sub_21B03179C(v2);
                OUTLINED_FUNCTION_153();
                sub_21B099CBC(v19, v20, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ButtonForFeedback);
                OUTLINED_FUNCTION_595();
                OUTLINED_FUNCTION_58_0();
                sub_21B112224();
                OUTLINED_FUNCTION_325();
                sub_21B03183C();
                if (!v0)
                {
                  goto LABEL_23;
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_24:
  OUTLINED_FUNCTION_503();
  OUTLINED_FUNCTION_13();
}

uint64_t sub_21B03469C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 64);
  if (v4 != 255 && (v4 & 1) == 0)
  {
    return sub_21B1121E4();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B0346E8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 64);
  if (v4 == 255 || (v4 & 1) == 0)
  {
    __break(1u);
  }

  else
  {
    sub_21B0AA400();
    return sub_21B112174();
  }

  return result;
}

uint64_t sub_21B034C20(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46B40, type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B034CA0(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD44DF8, type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B034D10(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD44DF8, type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback);

  return sub_21B112114();
}

uint64_t sub_21B034E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback(0);
  type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  sub_21B099CBC(&qword_27CD44D28, type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_PunchoutForFeedback);
  return sub_21B1120B4();
}

void Apple_Parsec_Feedback_V2_ActionItemForFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44830, &qword_21B118110);
  OUTLINED_FUNCTION_25(v3);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - v5;
  type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  OUTLINED_FUNCTION_164();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2();
  type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback(0);
  v12 = v0;
  sub_21B0AA940();
  OUTLINED_FUNCTION_37_1(v6, 1, v2);
  if (v8)
  {
    sub_21AF99BE0(v6, &qword_27CD44830, &qword_21B118110);
LABEL_5:
    OUTLINED_FUNCTION_541();
    sub_21B111EA4();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_4_13();
  sub_21B03179C(v6);
  OUTLINED_FUNCTION_552();
  sub_21B099CBC(v9, v10, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_PunchoutForFeedback);
  OUTLINED_FUNCTION_750();
  sub_21B112224();
  OUTLINED_FUNCTION_120();
  sub_21B03183C();
  if (!v1)
  {
    goto LABEL_5;
  }

LABEL_6:
  OUTLINED_FUNCTION_503();
  OUTLINED_FUNCTION_13();
}

void static Apple_Parsec_Feedback_V2_ActionItemForFeedback.== infix(_:_:)()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_267();
  type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(v1);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_108();
  v3 = OUTLINED_FUNCTION_79();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_73();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44B58, &qword_21B1181D8) - 8;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_18_2();
  type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback(v9);
  v10 = *(v7 + 56);
  OUTLINED_FUNCTION_411();
  sub_21B0AA940();
  OUTLINED_FUNCTION_202(v0);
  if (v11)
  {
    OUTLINED_FUNCTION_202(v0 + v10);
    if (v11)
    {
      sub_21AF99BE0(v0, &qword_27CD44830, &qword_21B118110);
LABEL_12:
      sub_21B111EC4();
      OUTLINED_FUNCTION_0_15();
      sub_21B099CBC(v15, v16, MEMORY[0x277D216D0]);
      v17 = OUTLINED_FUNCTION_7();
      v12 = OUTLINED_FUNCTION_653(v17, v18, v19, v20);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_90();
  sub_21B0AA940();
  OUTLINED_FUNCTION_202(v0 + v10);
  if (v11)
  {
    OUTLINED_FUNCTION_120();
    sub_21B03183C();
LABEL_9:
    sub_21AF99BE0(v0, &qword_27CD44B58, &qword_21B1181D8);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_4_13();
  sub_21B03179C(v0 + v10);
  v13 = OUTLINED_FUNCTION_440();
  v14 = static Apple_Parsec_Feedback_V2_PunchoutForFeedback.== infix(_:_:)(v13);
  sub_21B03183C();
  OUTLINED_FUNCTION_26();
  sub_21B03183C();
  sub_21AF99BE0(v0, &qword_27CD44830, &qword_21B118110);
  if (v14)
  {
    goto LABEL_12;
  }

LABEL_10:
  v12 = 0;
LABEL_13:
  OUTLINED_FUNCTION_498(v12);
  OUTLINED_FUNCTION_77();
}

uint64_t sub_21B035330(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46B38, type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ActionItemForFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B0353B0(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD459D0, type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ActionItemForFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B035420(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD459D0, type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ActionItemForFeedback);

  return sub_21B112114();
}

uint64_t sub_21B0354AC()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD43F60);
  __swift_project_value_buffer(v0, qword_27CD43F60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_21B117FD0;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "identifier";
  *(v4 + 8) = 10;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_21B112234();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "suggestion";
  *(v8 + 8) = 10;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "query";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "score";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "type";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "fbr";
  *(v16 + 1) = 3;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "topicIdentifier";
  *(v18 + 1) = 15;
  v18[16] = 2;
  v7();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 6:
      case 7:
        OUTLINED_FUNCTION_49_1();
        sub_21B112074();
        break;
      case 4:
        OUTLINED_FUNCTION_49_1();
        sub_21B112054();
        break;
      case 5:
        v3 = OUTLINED_FUNCTION_10_2();
        sub_21B035874(v3, v4);
        break;
      default:
        continue;
    }
  }
}

void Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_800();
  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_10_4();
  if (!v20 || (OUTLINED_FUNCTION_63_0(), sub_21B1121E4(), !v18))
  {
    OUTLINED_FUNCTION_10_4();
    if (!v21 || (OUTLINED_FUNCTION_60_0(), sub_21B1121E4(), !v18))
    {
      OUTLINED_FUNCTION_10_4();
      if (!v22 || (OUTLINED_FUNCTION_63_0(), sub_21B1121E4(), !v18))
      {
        if (*(v19 + 48) == 0.0 || (OUTLINED_FUNCTION_143(), sub_21B1121D4(), !v18))
        {
          if (!*(v19 + 56) || (OUTLINED_FUNCTION_472(), sub_21B099D04(), OUTLINED_FUNCTION_58_0(), sub_21B112174(), !v18))
          {
            OUTLINED_FUNCTION_10_4();
            if (!v23 || (OUTLINED_FUNCTION_63_0(), sub_21B1121E4(), !v18))
            {
              OUTLINED_FUNCTION_10_4();
              if (!v24 || (OUTLINED_FUNCTION_63_0(), sub_21B1121E4(), !v18))
              {
                type metadata accessor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback(0);
                OUTLINED_FUNCTION_27_2();
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_799();
}

uint64_t static Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_30_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_21B112D04() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_91();
  v8 = v5 && v6 == v7;
  if (!v8 && (sub_21B112D04() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_629();
  v11 = v5 && v9 == v10;
  if (!v11 && (sub_21B112D04() & 1) == 0)
  {
    return 0;
  }

  if (*(v2 + 48) != *(v1 + 48) || !sub_21AFB4A88(*(v2 + 56), *(v2 + 64), *(v1 + 56)))
  {
    return 0;
  }

  OUTLINED_FUNCTION_739();
  v14 = v5 && v12 == v13;
  if (!v14 && (sub_21B112D04() & 1) == 0)
  {
    return 0;
  }

  v15 = *(v2 + 88) == *(v1 + 88) && *(v2 + 96) == *(v1 + 96);
  if (!v15 && (sub_21B112D04() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback(0);
  sub_21B111EC4();
  OUTLINED_FUNCTION_0_15();
  v18 = sub_21B099CBC(v16, v17, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_40_1(v18) & 1;
}

uint64_t sub_21B035BD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46B30, type metadata accessor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B035C58(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD44F98, type metadata accessor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B035CC8(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD44F98, type metadata accessor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback);

  return sub_21B112114();
}

uint64_t sub_21B035D54()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD43F78);
  __swift_project_value_buffer(v0, qword_27CD43F78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B115FB0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "label";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "urls";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "bundleIdentifier";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "knownBundleIdentifier";
  *(v16 + 1) = 21;
  v16[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Feedback_V2_PunchoutForFeedback.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 3:
        OUTLINED_FUNCTION_49_1();
        sub_21B112074();
        break;
      case 4:
        OUTLINED_FUNCTION_49_1();
        sub_21B112014();
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_10_2();
        sub_21B0360A8(v7, v8, v9, v10);
        break;
      case 6:
        v3 = OUTLINED_FUNCTION_10_2();
        sub_21B036174(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_21B0360A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_21B112064();
  if (v4)
  {
  }

  if (v10)
  {
    if (*(a2 + 56) == 255)
    {
      v7 = -1;
    }

    else
    {
      sub_21B111F74();
      v7 = *(a2 + 56);
    }

    v8 = *(a2 + 40);
    v9 = *(a2 + 48);
    *(a2 + 40) = 0;
    *(a2 + 48) = v10;
    *(a2 + 56) = 0;
    return sub_21AF83FA4(v8, v9, v7);
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_PunchoutForFeedback.traverse<A>(visitor:)(uint64_t a1)
{
  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_10_4();
  if (!v3 || (OUTLINED_FUNCTION_63_0(), result = sub_21B1121E4(), !v1))
  {
    OUTLINED_FUNCTION_10_4();
    if (!v5 || (OUTLINED_FUNCTION_63_0(), result = sub_21B1121E4(), !v1))
    {
      if (!*(*(v2 + 32) + 16) || (OUTLINED_FUNCTION_36_1(), result = sub_21B1121C4(), !v1))
      {
        if (*(v2 + 56) == 255 || ((OUTLINED_FUNCTION_455(), OUTLINED_FUNCTION_292(), (v10 & 1) == 0) ? (result = sub_21B03632C(v6, v7, v8, v9)) : (result = sub_21B036378(v6, v7, v8, v9)), !v1))
        {
          type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
          return OUTLINED_FUNCTION_27_2();
        }
      }
    }
  }

  return result;
}

uint64_t sub_21B03632C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 56);
  if (v4 != 255 && (v4 & 1) == 0)
  {
    return sub_21B1121E4();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B036378(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 56);
  if (v4 == 255 || (v4 & 1) == 0)
  {
    __break(1u);
  }

  else
  {
    sub_21B0AA400();
    return sub_21B112174();
  }

  return result;
}

uint64_t static Apple_Parsec_Feedback_V2_PunchoutForFeedback.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_30_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_21B112D04() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_91();
  v8 = v5 && v6 == v7;
  if (!v8 && (sub_21B112D04() & 1) == 0 || (sub_21AFBE3A0(*(v2 + 32), *(v1 + 32)) & 1) == 0)
  {
    return 0;
  }

  v9 = *(v2 + 48);
  v10 = *(v2 + 56);
  v12 = *(v1 + 40);
  v11 = *(v1 + 48);
  v13 = *(v1 + 56);
  if (v10 == 255)
  {
    v35 = OUTLINED_FUNCTION_84();
    sub_21AF83F7C(v35, v36, 255);
    if (v13 == 255)
    {
      v53 = OUTLINED_FUNCTION_0();
      sub_21AF83F7C(v53, v54, 255);
      v55 = OUTLINED_FUNCTION_84();
      sub_21AF83FA4(v55, v56, 255);
LABEL_23:
      type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
      OUTLINED_FUNCTION_764();
      OUTLINED_FUNCTION_0_15();
      v59 = sub_21B099CBC(v57, v58, MEMORY[0x277D216D0]);
      return OUTLINED_FUNCTION_40_1(v59) & 1;
    }

    v37 = OUTLINED_FUNCTION_0();
    sub_21AF83F7C(v37, v38, v13);
    goto LABEL_19;
  }

  v62[0] = *(v2 + 40);
  v62[1] = v9;
  v63 = v10;
  if (v13 == 255)
  {
    v39 = OUTLINED_FUNCTION_84();
    sub_21AF83F7C(v39, v40, v10);
    v41 = OUTLINED_FUNCTION_0();
    sub_21AF83F7C(v41, v42, 255);
    v43 = OUTLINED_FUNCTION_84();
    sub_21AF83F7C(v43, v44, v10);
    v45 = OUTLINED_FUNCTION_84();
    sub_21AF83FBC(v45, v46, v47);
LABEL_19:
    v48 = OUTLINED_FUNCTION_84();
    sub_21AF83FA4(v48, v49, v10);
    v50 = OUTLINED_FUNCTION_0();
    sub_21AF83FA4(v50, v51, v13);
    return 0;
  }

  v60[0] = v12;
  v60[1] = v11;
  v14 = v13 & 1;
  v61 = v13 & 1;
  v15 = OUTLINED_FUNCTION_84();
  sub_21AF83F7C(v15, v16, v10);
  v17 = OUTLINED_FUNCTION_0();
  sub_21AF83F7C(v17, v18, v13);
  v19 = OUTLINED_FUNCTION_84();
  sub_21AF83F7C(v19, v20, v10);
  static Apple_Parsec_Feedback_V2_PunchoutForFeedback.OneOf_BundleID.== infix(_:_:)(v62, v60, v21, v22, v23, v24, v25);
  v27 = v26;
  v28 = OUTLINED_FUNCTION_0();
  sub_21AF83FBC(v28, v29, v14);
  v30 = OUTLINED_FUNCTION_84();
  sub_21AF83FBC(v30, v31, v32);
  v33 = OUTLINED_FUNCTION_84();
  sub_21AF83FA4(v33, v34, v10);
  if (v27)
  {
    goto LABEL_23;
  }

  return 0;
}

uint64_t sub_21B036684(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46B28, type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_PunchoutForFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B036704(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD44D28, type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_PunchoutForFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B036774(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD44D28, type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_PunchoutForFeedback);

  return sub_21B112114();
}

uint64_t sub_21B03680C()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD43F90);
  __swift_project_value_buffer(v0, qword_27CD43F90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v118 = swift_allocObject();
  *(v118 + 16) = xmmword_21B118090;
  v4 = v118 + v3 + v1[14];
  *(v118 + v3) = 1;
  *v4 = "identifier";
  *(v4 + 8) = 10;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_21B112234();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v118 + v3 + v2 + v1[14];
  *(v118 + v3 + v2) = 2;
  *v8 = "topHit";
  *(v8 + 8) = 6;
  *(v8 + 16) = 2;
  v7();
  v9 = (v118 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "action";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v7();
  v11 = (v118 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "punchout";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v7();
  v13 = (v118 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "type";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v7();
  v15 = (v118 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 7;
  *v16 = "localFeatures";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v7();
  v17 = (v118 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 11;
  *v18 = "resultType";
  *(v18 + 1) = 10;
  v18[16] = 2;
  v7();
  v19 = (v118 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 12;
  *v20 = "rankingScore";
  *(v20 + 1) = 12;
  v20[16] = 2;
  v7();
  v21 = (v118 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 13;
  *v22 = "isStaticCorrection";
  *(v22 + 1) = 18;
  v22[16] = 2;
  v7();
  v23 = (v118 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 14;
  *v24 = "queryId";
  *(v24 + 1) = 7;
  v24[16] = 2;
  v7();
  v25 = (v118 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 15;
  *v26 = "intendedQuery";
  *(v26 + 1) = 13;
  v26[16] = 2;
  v7();
  v27 = (v118 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 16;
  *v28 = "correctedQuery";
  *(v28 + 1) = 14;
  v28[16] = 2;
  v7();
  v29 = (v118 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 17;
  *v30 = "completedQuery";
  *(v30 + 1) = 14;
  v30[16] = 2;
  v7();
  v31 = (v118 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 18;
  *v32 = "isLocalApplicationResult";
  *(v32 + 1) = 24;
  v32[16] = 2;
  v7();
  v33 = (v118 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 19;
  *v34 = "publiclyIndexable";
  *(v34 + 1) = 17;
  v34[16] = 2;
  v7();
  v35 = (v118 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 20;
  *v36 = "fbr";
  *(v36 + 1) = 3;
  v36[16] = 2;
  v7();
  v37 = (v118 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 21;
  *v38 = "userInput";
  *(v38 + 1) = 9;
  v38[16] = 2;
  v7();
  v39 = (v118 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 22;
  *v40 = "isFuzzyMatch";
  *(v40 + 1) = 12;
  v40[16] = 2;
  v7();
  v41 = (v118 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 23;
  *v42 = "doNotFold";
  *(v42 + 1) = 9;
  v42[16] = 2;
  v7();
  v43 = (v118 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 24;
  *v44 = "blockId";
  *(v44 + 1) = 7;
  v44[16] = 2;
  v7();
  v45 = (v118 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 25;
  *v46 = "hashedIdentifier";
  *(v46 + 1) = 16;
  v46[16] = 2;
  v7();
  v47 = (v118 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 26;
  *v48 = "resultBundleId";
  *(v48 + 1) = 14;
  v48[16] = 2;
  v7();
  v49 = (v118 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 27;
  *v50 = "knownResultBundleId";
  *(v50 + 1) = 19;
  v50[16] = 2;
  v7();
  v51 = (v118 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 28;
  *v52 = "sectionBundleIdentifier";
  *(v52 + 1) = 23;
  v52[16] = 2;
  v7();
  v53 = (v118 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 29;
  *v54 = "knownSectionBundleIdentifier";
  *(v54 + 1) = 28;
  v54[16] = 2;
  v7();
  v55 = (v118 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 30;
  *v56 = "applicationBundleIdentifier";
  *(v56 + 1) = 27;
  v56[16] = 2;
  v7();
  v57 = (v118 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 31;
  *v58 = "knownApplicationBundleIdentifier";
  *(v58 + 1) = 32;
  v58[16] = 2;
  v7();
  v59 = (v118 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 32;
  *v60 = "entityData";
  *(v60 + 1) = 10;
  v60[16] = 2;
  v7();
  v61 = (v118 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 33;
  *v62 = "shouldUseCompactDisplay";
  *(v62 + 1) = 23;
  v62[16] = 2;
  v7();
  v63 = (v118 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 34;
  *v64 = "noGoTakeover";
  *(v64 + 1) = 12;
  v64[16] = 2;
  v7();
  v65 = (v118 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 35;
  *v66 = "preferTopPlatter";
  *(v66 + 1) = 16;
  v66[16] = 2;
  v7();
  v67 = (v118 + v3 + 31 * v2);
  v68 = v67 + v1[14];
  *v67 = 36;
  *v68 = "wasCompact";
  *(v68 + 1) = 10;
  v68[16] = 2;
  v7();
  v69 = (v118 + v3 + 32 * v2);
  v70 = v69 + v1[14];
  *v69 = 37;
  *v70 = "didTakeoverGo";
  *(v70 + 1) = 13;
  v70[16] = 2;
  v7();
  v71 = (v118 + v3 + 33 * v2);
  v72 = v71 + v1[14];
  *v71 = 38;
  *v72 = "usesCompactDisplay";
  *(v72 + 1) = 18;
  v72[16] = 2;
  v7();
  v73 = (v118 + v3 + 34 * v2);
  v74 = v73 + v1[14];
  *v73 = 39;
  *v74 = "isInstantAnswer";
  *(v74 + 1) = 15;
  v74[16] = 2;
  v7();
  v75 = (v118 + v3 + 35 * v2);
  v76 = v75 + v1[14];
  *v75 = 40;
  *v76 = "shouldAutoNavigate";
  *(v76 + 1) = 18;
  v76[16] = 2;
  v7();
  v77 = (v118 + v3 + 36 * v2);
  v78 = v77 + v1[14];
  *v77 = 41;
  *v78 = "card";
  *(v78 + 1) = 4;
  v78[16] = 2;
  v7();
  v79 = (v118 + v3 + 37 * v2);
  v80 = v79 + v1[14];
  *v79 = 42;
  *v80 = "inlineCard";
  *(v80 + 1) = 10;
  v80[16] = 2;
  v7();
  v81 = (v118 + v3 + 38 * v2);
  v82 = v81 + v1[14];
  *v81 = 43;
  *v82 = "compactCard";
  *(v82 + 1) = 11;
  v82[16] = 2;
  v7();
  v83 = (v118 + v3 + 39 * v2);
  v84 = v83 + v1[14];
  *v83 = 44;
  *v84 = "containsPersonalResult";
  *(v84 + 1) = 22;
  v84[16] = 2;
  v7();
  v85 = (v118 + v3 + 40 * v2);
  v86 = v85 + v1[14];
  *v85 = 45;
  *v86 = "didRerankPersonalResult";
  *(v86 + 1) = 23;
  v86[16] = 2;
  v7();
  v87 = (v118 + v3 + 41 * v2);
  v88 = v87 + v1[14];
  *v87 = 46;
  *v88 = "coreSpotlightIndexUsed";
  *(v88 + 1) = 22;
  v88[16] = 2;
  v7();
  v89 = (v118 + v3 + 42 * v2);
  v90 = v89 + v1[14];
  *v89 = 47;
  *v90 = "coreSpotlightIndexUsedReason";
  *(v90 + 1) = 28;
  v90[16] = 2;
  v7();
  v91 = (v118 + v3 + 43 * v2);
  v92 = v91 + v1[14];
  *v91 = 48;
  *v92 = "coreSpotlightRankingSignals";
  *(v92 + 1) = 27;
  v92[16] = 2;
  v7();
  v93 = (v118 + v3 + 44 * v2);
  v94 = v93 + v1[14];
  *v93 = 49;
  *v94 = "mailRankingSignals";
  *(v94 + 1) = 18;
  v94[16] = 2;
  v7();
  v95 = (v118 + v3 + 45 * v2);
  v96 = v95 + v1[14];
  *v95 = 50;
  *v96 = "mailResultDetails";
  *(v96 + 1) = 17;
  v96[16] = 2;
  v7();
  v97 = (v118 + v3 + 46 * v2);
  v98 = v97 + v1[14];
  *v97 = 51;
  *v98 = "isVideoAssetFromPhotos";
  *(v98 + 1) = 22;
  v98[16] = 2;
  v7();
  v99 = (v118 + v3 + 47 * v2);
  v100 = v99 + v1[14];
  *v99 = 52;
  *v100 = "isMailInstantAnswerUpdated";
  *(v100 + 1) = 26;
  v100[16] = 2;
  v7();
  v101 = (v118 + v3 + 48 * v2);
  v102 = v101 + v1[14];
  *v101 = 53;
  *v102 = "indexOfSectionWhenRanked";
  *(v102 + 1) = 24;
  v102[16] = 2;
  v7();
  v103 = (v118 + v3 + 49 * v2);
  v104 = v103 + v1[14];
  *v103 = 54;
  *v104 = "indexOfResultInSectionWhenRanked";
  *(v104 + 1) = 32;
  v104[16] = 2;
  v7();
  v105 = (v118 + v3 + 50 * v2);
  v106 = v105 + v1[14];
  *v105 = 55;
  *v106 = "safariAttributes";
  *(v106 + 1) = 16;
  v106[16] = 2;
  v7();
  v107 = (v118 + v3 + 51 * v2);
  v108 = v107 + v1[14];
  *v107 = 56;
  *v108 = "hasAppTopHitShortcut";
  *(v108 + 1) = 20;
  v108[16] = 2;
  v7();
  v109 = (v118 + v3 + 52 * v2);
  v110 = v109 + v1[14];
  *v109 = 57;
  *v110 = "photosAttributes";
  *(v110 + 1) = 16;
  v110[16] = 2;
  v7();
  v111 = (v118 + v3 + 53 * v2);
  v112 = v111 + v1[14];
  *v111 = 58;
  *v112 = "photosAggregatedInfo";
  *(v112 + 1) = 20;
  v112[16] = 2;
  v7();
  v113 = (v118 + v3 + 54 * v2);
  v114 = v113 + v1[14];
  *v113 = 59;
  *v114 = "thirdPartyQueryCompletionMatched";
  *(v114 + 1) = 32;
  v114[16] = 2;
  v7();
  v115 = (v118 + v3 + 55 * v2);
  v116 = v115 + v1[14];
  *v115 = 60;
  *v116 = "thirdPartyNavigationIntentScore";
  *(v116 + 1) = 31;
  v116[16] = 2;
  v7();
  return sub_21B112244();
}

uint64_t sub_21B037760(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  OUTLINED_FUNCTION_391();
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_21B0377B0()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  v1 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__action;
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__punchout;
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__type;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__localFeatures;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_Struct(0);
  __swift_storeEnumTagSinglePayload(v0 + v6, 1, 1, v7);
  v8 = (v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__resultType);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__rankingScore) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isStaticCorrection) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__queryID) = 0;
  v9 = (v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__intendedQuery);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = (v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__correctedQuery);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = (v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__completedQuery);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isLocalApplicationResult) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__publiclyIndexable) = 0;
  v12 = (v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__fbr);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v13 = (v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__userInput);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isFuzzyMatch) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__doNotFold) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__blockID) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__hashedIdentifier) = 0;
  v14 = v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__resultBundleIdentifier;
  *v14 = 0;
  *(v14 + 8) = 0;
  *(v14 + 16) = -1;
  v15 = v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__sectionBundleID;
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = -1;
  v16 = v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__applicationBundleID;
  *v16 = 0;
  *(v16 + 8) = 0;
  *(v16 + 16) = -1;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__entityData) = xmmword_21B117F10;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__shouldUseCompactDisplay) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__noGoTakeover) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__preferTopPlatter) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__wasCompact) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__didTakeoverGo) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__usesCompactDisplay) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isInstantAnswer) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__shouldAutoNavigate) = 0;
  v17 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__card;
  v18 = type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  __swift_storeEnumTagSinglePayload(v0 + v17, 1, 1, v18);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__inlineCard, 1, 1, v18);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__compactCard, 1, 1, v18);
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__containsPersonalResult) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__didRerankPersonalResult) = 0;
  v19 = v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__coreSpotlightIndexUsed;
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__coreSpotlightIndexUsedReason;
  *v20 = 0;
  *(v20 + 8) = 1;
  v21 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__coreSpotlightRankingSignals;
  v22 = type metadata accessor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback(0);
  __swift_storeEnumTagSinglePayload(v0 + v21, 1, 1, v22);
  v23 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__mailRankingSignals;
  v24 = type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback(0);
  __swift_storeEnumTagSinglePayload(v0 + v23, 1, 1, v24);
  v25 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__mailResultDetails;
  v26 = type metadata accessor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback(0);
  __swift_storeEnumTagSinglePayload(v0 + v25, 1, 1, v26);
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isVideoAssetFromPhotos) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isMailInstantAnswerUpdated) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__indexOfSectionWhenRanked) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__indexOfResultInSectionWhenRanked) = 0;
  v27 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__safariAttributes;
  v28 = type metadata accessor for Apple_Parsec_Feedback_V2_SafariAttributes(0);
  __swift_storeEnumTagSinglePayload(v0 + v27, 1, 1, v28);
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__hasAppTopHitShortcut_p) = 0;
  v29 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__photosAttributes;
  v30 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(0);
  __swift_storeEnumTagSinglePayload(v0 + v29, 1, 1, v30);
  v31 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__photosAggregatedInfo;
  v32 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo(0);
  __swift_storeEnumTagSinglePayload(v0 + v31, 1, 1, v32);
  v33 = v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__thirdPartyQueryCompletionMatched;
  *v33 = 0;
  *(v33 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__thirdPartyNavigationIntentScore) = 0;
  return v0;
}

uint64_t sub_21B037BC0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD449F8, &qword_21B118158);
  MEMORY[0x28223BE20](v3 - 8);
  v229 = v172 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD449E8, &qword_21B118150);
  MEMORY[0x28223BE20](v5 - 8);
  v228 = v172 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD449D0, &qword_21B118148);
  MEMORY[0x28223BE20](v7 - 8);
  v227 = v172 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD449A0, &qword_21B118140);
  MEMORY[0x28223BE20](v9 - 8);
  v226 = v172 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44990, &qword_21B118138);
  MEMORY[0x28223BE20](v11 - 8);
  v225 = v172 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44980, &qword_21B118130);
  MEMORY[0x28223BE20](v13 - 8);
  v224 = v172 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44940, &qword_21B118128);
  MEMORY[0x28223BE20](v15 - 8);
  v215 = v172 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44858, &qword_21B118120);
  MEMORY[0x28223BE20](v17 - 8);
  v180 = v172 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44830, &qword_21B118110);
  MEMORY[0x28223BE20](v19 - 8);
  v176 = v172 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44838, &qword_21B118118);
  MEMORY[0x28223BE20](v21 - 8);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  v22 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__action;
  v172[1] = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__action;
  v23 = type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback(0);
  __swift_storeEnumTagSinglePayload(v1 + v22, 1, 1, v23);
  v24 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__punchout;
  v174 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__punchout;
  v25 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  __swift_storeEnumTagSinglePayload(v1 + v24, 1, 1, v25);
  v26 = v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__type;
  *v26 = 0;
  *(v26 + 8) = 1;
  v27 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__localFeatures;
  v175 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__localFeatures;
  v28 = type metadata accessor for Apple_Parsec_Feedback_V2_Struct(0);
  __swift_storeEnumTagSinglePayload(v1 + v27, 1, 1, v28);
  v29 = (v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__resultType);
  *v29 = 0;
  v29[1] = 0xE000000000000000;
  v177 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__rankingScore;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__rankingScore) = 0;
  v178 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isStaticCorrection;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isStaticCorrection) = 0;
  v179 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__queryID;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__queryID) = 0;
  v30 = (v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__intendedQuery);
  v181 = (v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__intendedQuery);
  *v30 = 0;
  v30[1] = 0xE000000000000000;
  v31 = (v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__correctedQuery);
  v182 = (v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__correctedQuery);
  *v31 = 0;
  v31[1] = 0xE000000000000000;
  v32 = (v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__completedQuery);
  v183 = (v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__completedQuery);
  *v32 = 0;
  v32[1] = 0xE000000000000000;
  v184 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isLocalApplicationResult;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isLocalApplicationResult) = 0;
  v185 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__publiclyIndexable;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__publiclyIndexable) = 0;
  v33 = (v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__fbr);
  v186 = (v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__fbr);
  *v33 = 0;
  v33[1] = 0xE000000000000000;
  v34 = (v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__userInput);
  v187 = (v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__userInput);
  *v34 = 0;
  v34[1] = 0xE000000000000000;
  v188 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isFuzzyMatch;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isFuzzyMatch) = 0;
  v189 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__doNotFold;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__doNotFold) = 0;
  v190 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__blockID;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__blockID) = 0;
  v191 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__hashedIdentifier;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__hashedIdentifier) = 0;
  v35 = v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__resultBundleIdentifier;
  v173 = (v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__resultBundleIdentifier);
  *v35 = 0;
  *(v35 + 8) = 0;
  *(v35 + 16) = -1;
  v36 = v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__sectionBundleID;
  v192 = (v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__sectionBundleID);
  *v36 = 0;
  *(v36 + 8) = 0;
  *(v36 + 16) = -1;
  v37 = v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__applicationBundleID;
  *(v37 + 16) = -1;
  *v37 = 0;
  *(v37 + 8) = 0;
  v193 = v37;
  v194 = (v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__entityData);
  *v194 = xmmword_21B117F10;
  v195 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__shouldUseCompactDisplay;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__shouldUseCompactDisplay) = 0;
  v196 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__noGoTakeover;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__noGoTakeover) = 0;
  v197 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__preferTopPlatter;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__preferTopPlatter) = 0;
  v198 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__wasCompact;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__wasCompact) = 0;
  v199 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__didTakeoverGo;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__didTakeoverGo) = 0;
  v200 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__usesCompactDisplay;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__usesCompactDisplay) = 0;
  v201 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isInstantAnswer;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isInstantAnswer) = 0;
  v202 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__shouldAutoNavigate;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__shouldAutoNavigate) = 0;
  v38 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__card;
  v203 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__card;
  v39 = type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  __swift_storeEnumTagSinglePayload(v1 + v38, 1, 1, v39);
  v204 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__inlineCard;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__inlineCard, 1, 1, v39);
  v205 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__compactCard;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__compactCard, 1, 1, v39);
  v206 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__containsPersonalResult;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__containsPersonalResult) = 0;
  v207 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__didRerankPersonalResult;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__didRerankPersonalResult) = 0;
  v40 = v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__coreSpotlightIndexUsed;
  v208 = v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__coreSpotlightIndexUsed;
  *v40 = 0;
  *(v40 + 8) = 1;
  v41 = v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__coreSpotlightIndexUsedReason;
  v209 = v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__coreSpotlightIndexUsedReason;
  *v41 = 0;
  *(v41 + 8) = 1;
  v42 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__coreSpotlightRankingSignals;
  v210 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__coreSpotlightRankingSignals;
  v43 = type metadata accessor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback(0);
  __swift_storeEnumTagSinglePayload(v1 + v42, 1, 1, v43);
  v44 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__mailRankingSignals;
  v211 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__mailRankingSignals;
  v45 = type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback(0);
  __swift_storeEnumTagSinglePayload(v1 + v44, 1, 1, v45);
  v46 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__mailResultDetails;
  v212 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__mailResultDetails;
  v47 = type metadata accessor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback(0);
  __swift_storeEnumTagSinglePayload(v1 + v46, 1, 1, v47);
  v213 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isVideoAssetFromPhotos;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isVideoAssetFromPhotos) = 0;
  v214 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isMailInstantAnswerUpdated;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isMailInstantAnswerUpdated) = 0;
  v216 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__indexOfSectionWhenRanked;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__indexOfSectionWhenRanked) = 0;
  v217 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__indexOfResultInSectionWhenRanked;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__indexOfResultInSectionWhenRanked) = 0;
  v48 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__safariAttributes;
  v218 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__safariAttributes;
  v49 = type metadata accessor for Apple_Parsec_Feedback_V2_SafariAttributes(0);
  __swift_storeEnumTagSinglePayload(v1 + v48, 1, 1, v49);
  v219 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__hasAppTopHitShortcut_p;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__hasAppTopHitShortcut_p) = 0;
  v50 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__photosAttributes;
  v220 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__photosAttributes;
  v51 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(0);
  __swift_storeEnumTagSinglePayload(v1 + v50, 1, 1, v51);
  v52 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__photosAggregatedInfo;
  v221 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__photosAggregatedInfo;
  v53 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo(0);
  __swift_storeEnumTagSinglePayload(v1 + v52, 1, 1, v53);
  v54 = v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__thirdPartyQueryCompletionMatched;
  v222 = v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__thirdPartyQueryCompletionMatched;
  *v54 = 0;
  *(v54 + 8) = 1;
  v223 = (v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__thirdPartyNavigationIntentScore);
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__thirdPartyNavigationIntentScore) = 0;
  swift_beginAccess();
  v56 = *(a1 + 16);
  v55 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v56;
  *(v1 + 24) = v55;
  swift_beginAccess();
  v57 = *(a1 + 32);
  v58 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v57;
  *(v1 + 40) = v58;
  swift_beginAccess();
  sub_21B0AA940();
  swift_beginAccess();

  sub_21B099C68();
  swift_endAccess();
  swift_beginAccess();
  sub_21B0AA940();
  swift_beginAccess();
  sub_21B099C68();
  swift_endAccess();
  v59 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__type);
  swift_beginAccess();
  v60 = *v59;
  LOBYTE(v59) = *(v59 + 8);
  swift_beginAccess();
  *v26 = v60;
  *(v26 + 8) = v59;
  swift_beginAccess();
  sub_21B0AA940();
  swift_beginAccess();
  sub_21B099C68();
  swift_endAccess();
  v61 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__resultType);
  swift_beginAccess();
  v63 = *v61;
  v62 = v61[1];
  swift_beginAccess();
  *v29 = v63;
  v29[1] = v62;

  v64 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__rankingScore;
  swift_beginAccess();
  v65 = *(a1 + v64);
  v66 = v177;
  swift_beginAccess();
  *(v1 + v66) = v65;
  v67 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isStaticCorrection;
  swift_beginAccess();
  LOBYTE(v67) = *(a1 + v67);
  v68 = v178;
  swift_beginAccess();
  *(v1 + v68) = v67;
  v69 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__queryID;
  swift_beginAccess();
  v70 = *(a1 + v69);
  v71 = v179;
  swift_beginAccess();
  *(v1 + v71) = v70;
  v72 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__intendedQuery);
  swift_beginAccess();
  v74 = *v72;
  v73 = v72[1];
  v75 = v181;
  swift_beginAccess();
  *v75 = v74;
  v75[1] = v73;

  v76 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__correctedQuery);
  swift_beginAccess();
  v78 = *v76;
  v77 = v76[1];
  v79 = v182;
  swift_beginAccess();
  *v79 = v78;
  v79[1] = v77;

  v80 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__completedQuery);
  swift_beginAccess();
  v82 = *v80;
  v81 = v80[1];
  v83 = v183;
  swift_beginAccess();
  *v83 = v82;
  v83[1] = v81;

  v84 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isLocalApplicationResult;
  swift_beginAccess();
  LOBYTE(v84) = *(a1 + v84);
  v85 = v184;
  swift_beginAccess();
  *(v1 + v85) = v84;
  v86 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__publiclyIndexable;
  swift_beginAccess();
  LOBYTE(v86) = *(a1 + v86);
  v87 = v185;
  swift_beginAccess();
  *(v1 + v87) = v86;
  v88 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__fbr);
  swift_beginAccess();
  v90 = *v88;
  v89 = v88[1];
  v91 = v186;
  swift_beginAccess();
  *v91 = v90;
  v91[1] = v89;

  v92 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__userInput);
  swift_beginAccess();
  v94 = *v92;
  v93 = v92[1];
  v95 = v187;
  swift_beginAccess();
  *v95 = v94;
  v95[1] = v93;

  v96 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isFuzzyMatch;
  swift_beginAccess();
  LOBYTE(v96) = *(a1 + v96);
  v97 = v188;
  swift_beginAccess();
  *(v1 + v97) = v96;
  v98 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__doNotFold;
  swift_beginAccess();
  LOBYTE(v98) = *(a1 + v98);
  v99 = v189;
  swift_beginAccess();
  *(v1 + v99) = v98;
  v100 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__blockID;
  swift_beginAccess();
  v101 = *(a1 + v100);
  v102 = v190;
  swift_beginAccess();
  *(v1 + v102) = v101;
  v103 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__hashedIdentifier;
  swift_beginAccess();
  v104 = *(a1 + v103);
  v105 = v191;
  swift_beginAccess();
  *(v1 + v105) = v104;
  v106 = *(a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__resultBundleIdentifier);
  v107 = *(a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__resultBundleIdentifier + 8);
  v108 = v173;
  v109 = *v173;
  v110 = v173[1];
  v111 = *(a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__resultBundleIdentifier + 16);
  *v173 = v106;
  v108[1] = v107;
  LOBYTE(v94) = *(v108 + 16);
  *(v108 + 16) = v111;
  sub_21AF83F7C(v106, v107, v111);
  sub_21AF83FA4(v109, v110, v94);
  v112 = *(a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__sectionBundleID);
  v113 = *(a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__sectionBundleID + 8);
  v114 = v192;
  v115 = *v192;
  v116 = v192[1];
  v117 = *(a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__sectionBundleID + 16);
  *v192 = v112;
  v114[1] = v113;
  LOBYTE(v94) = *(v114 + 16);
  *(v114 + 16) = v117;
  sub_21AF83F7C(v112, v113, v117);
  sub_21AF83FA4(v115, v116, v94);
  v118 = *(a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__applicationBundleID);
  v119 = *(a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__applicationBundleID + 8);
  v120 = v193;
  v121 = *v193;
  v122 = v193[1];
  v123 = *(a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__applicationBundleID + 16);
  *v193 = v118;
  v120[1] = v119;
  LOBYTE(v94) = *(v120 + 16);
  *(v120 + 16) = v123;
  sub_21AF83F7C(v118, v119, v123);
  sub_21AF83FA4(v121, v122, v94);
  v124 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__entityData);
  swift_beginAccess();
  v126 = *v124;
  v125 = v124[1];
  v127 = v194;
  swift_beginAccess();
  v128 = *v127;
  v129 = v127[1];
  *v127 = v126;
  v127[1] = v125;
  sub_21AF99818(v126, v125);
  sub_21AF99728(v128, v129);
  v130 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__shouldUseCompactDisplay;
  swift_beginAccess();
  LOBYTE(v130) = *(a1 + v130);
  v131 = v195;
  swift_beginAccess();
  *(v1 + v131) = v130;
  v132 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__noGoTakeover;
  swift_beginAccess();
  LOBYTE(v132) = *(a1 + v132);
  v133 = v196;
  swift_beginAccess();
  *(v1 + v133) = v132;
  v134 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__preferTopPlatter;
  swift_beginAccess();
  LOBYTE(v134) = *(a1 + v134);
  v135 = v197;
  swift_beginAccess();
  *(v1 + v135) = v134;
  v136 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__wasCompact;
  swift_beginAccess();
  LOBYTE(v136) = *(a1 + v136);
  v137 = v198;
  swift_beginAccess();
  *(v1 + v137) = v136;
  v138 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__didTakeoverGo;
  swift_beginAccess();
  LOBYTE(v138) = *(a1 + v138);
  v139 = v199;
  swift_beginAccess();
  *(v1 + v139) = v138;
  v140 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__usesCompactDisplay;
  swift_beginAccess();
  LOBYTE(v140) = *(a1 + v140);
  v141 = v200;
  swift_beginAccess();
  *(v1 + v141) = v140;
  v142 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isInstantAnswer;
  swift_beginAccess();
  LOBYTE(v142) = *(a1 + v142);
  v143 = v201;
  swift_beginAccess();
  *(v1 + v143) = v142;
  v144 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__shouldAutoNavigate;
  swift_beginAccess();
  LOBYTE(v144) = *(a1 + v144);
  v145 = v202;
  swift_beginAccess();
  *(v1 + v145) = v144;
  swift_beginAccess();
  sub_21B0AA940();
  swift_beginAccess();
  sub_21B099C68();
  swift_endAccess();
  swift_beginAccess();
  sub_21B0AA940();
  swift_beginAccess();
  sub_21B099C68();
  swift_endAccess();
  swift_beginAccess();
  sub_21B0AA940();
  swift_beginAccess();
  sub_21B099C68();
  swift_endAccess();
  v146 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__containsPersonalResult;
  swift_beginAccess();
  LOBYTE(v146) = *(a1 + v146);
  v147 = v206;
  swift_beginAccess();
  *(v1 + v147) = v146;
  v148 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__didRerankPersonalResult;
  swift_beginAccess();
  LOBYTE(v148) = *(a1 + v148);
  v149 = v207;
  swift_beginAccess();
  *(v1 + v149) = v148;
  v150 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__coreSpotlightIndexUsed);
  swift_beginAccess();
  v151 = *v150;
  LOBYTE(v150) = *(v150 + 8);
  v152 = v208;
  swift_beginAccess();
  *v152 = v151;
  *(v152 + 8) = v150;
  v153 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__coreSpotlightIndexUsedReason);
  swift_beginAccess();
  v154 = *v153;
  LOBYTE(v153) = *(v153 + 8);
  v155 = v209;
  swift_beginAccess();
  *v155 = v154;
  *(v155 + 8) = v153;
  swift_beginAccess();
  sub_21B0AA940();
  swift_beginAccess();
  sub_21B099C68();
  swift_endAccess();
  swift_beginAccess();
  sub_21B0AA940();
  swift_beginAccess();
  sub_21B099C68();
  swift_endAccess();
  swift_beginAccess();
  sub_21B0AA940();
  swift_beginAccess();
  sub_21B099C68();
  swift_endAccess();
  v156 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isVideoAssetFromPhotos;
  swift_beginAccess();
  LOBYTE(v156) = *(a1 + v156);
  v157 = v213;
  swift_beginAccess();
  *(v1 + v157) = v156;
  v158 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isMailInstantAnswerUpdated;
  swift_beginAccess();
  LOBYTE(v158) = *(a1 + v158);
  v159 = v214;
  swift_beginAccess();
  *(v1 + v159) = v158;
  v160 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__indexOfSectionWhenRanked;
  swift_beginAccess();
  LODWORD(v160) = *(a1 + v160);
  v161 = v216;
  swift_beginAccess();
  *(v1 + v161) = v160;
  v162 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__indexOfResultInSectionWhenRanked;
  swift_beginAccess();
  LODWORD(v162) = *(a1 + v162);
  v163 = v217;
  swift_beginAccess();
  *(v1 + v163) = v162;
  swift_beginAccess();
  sub_21B0AA940();
  swift_beginAccess();
  sub_21B099C68();
  swift_endAccess();
  v164 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__hasAppTopHitShortcut_p;
  swift_beginAccess();
  LOBYTE(v164) = *(a1 + v164);
  v165 = v219;
  swift_beginAccess();
  *(v1 + v165) = v164;
  swift_beginAccess();
  sub_21B0AA940();
  swift_beginAccess();
  sub_21B099C68();
  swift_endAccess();
  swift_beginAccess();
  sub_21B0AA940();
  swift_beginAccess();
  sub_21B099C68();
  swift_endAccess();
  v166 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__thirdPartyQueryCompletionMatched);
  swift_beginAccess();
  v167 = *v166;
  LOBYTE(v166) = *(v166 + 8);
  v168 = v222;
  swift_beginAccess();
  *v168 = v167;
  *(v168 + 8) = v166;
  v169 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__thirdPartyNavigationIntentScore);
  swift_beginAccess();
  LODWORD(v65) = *v169;

  v170 = v223;
  swift_beginAccess();
  *v170 = v65;
  return v1;
}

uint64_t sub_21B039490()
{

  sub_21AF99BE0(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__action, &qword_27CD44838, &qword_21B118118);
  sub_21AF99BE0(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__punchout, &qword_27CD44830, &qword_21B118110);
  sub_21AF99BE0(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__localFeatures, &qword_27CD44858, &qword_21B118120);

  sub_21AF83FA4(*(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__resultBundleIdentifier), *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__resultBundleIdentifier + 8), *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__resultBundleIdentifier + 16));
  sub_21AF83FA4(*(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__sectionBundleID), *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__sectionBundleID + 8), *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__sectionBundleID + 16));
  sub_21AF83FA4(*(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__applicationBundleID), *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__applicationBundleID + 8), *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__applicationBundleID + 16));
  sub_21AF99728(*(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__entityData), *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__entityData + 8));
  sub_21AF99BE0(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__card, &qword_27CD44940, &qword_21B118128);
  sub_21AF99BE0(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__inlineCard, &qword_27CD44940, &qword_21B118128);
  sub_21AF99BE0(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__compactCard, &qword_27CD44940, &qword_21B118128);
  sub_21AF99BE0(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__coreSpotlightRankingSignals, &qword_27CD44980, &qword_21B118130);
  sub_21AF99BE0(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__mailRankingSignals, &qword_27CD44990, &qword_21B118138);
  sub_21AF99BE0(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__mailResultDetails, &unk_27CD449A0, &qword_21B118140);
  sub_21AF99BE0(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__safariAttributes, &qword_27CD449D0, &qword_21B118148);
  sub_21AF99BE0(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__photosAttributes, &qword_27CD449E8, &qword_21B118150);
  sub_21AF99BE0(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__photosAggregatedInfo, &qword_27CD449F8, &qword_21B118158);
  return v0;
}

void sub_21B03978C()
{
  OUTLINED_FUNCTION_11();
  v2 = v1;
  v9 = v3;
  v5 = v4;
  v7 = *(v6(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5(0);
    OUTLINED_FUNCTION_391();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_16_1();
    *(v0 + v7) = v9(v8);
  }

  OUTLINED_FUNCTION_445();
  v2();
  OUTLINED_FUNCTION_13();
}

uint64_t sub_21B039E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback(0);
  sub_21B099CBC(&qword_27CD459D0, type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ActionItemForFeedback);
  sub_21B1120B4();
  return swift_endAccess();
}

uint64_t sub_21B039F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  sub_21B099CBC(&qword_27CD44D28, type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_PunchoutForFeedback);
  sub_21B1120B4();
  return swift_endAccess();
}

uint64_t sub_21B039FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_Struct(0);
  sub_21B099CBC(&qword_27CD45FC8, type metadata accessor for Apple_Parsec_Feedback_V2_Struct, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_Struct);
  sub_21B1120B4();
  return swift_endAccess();
}

void sub_21B03A0BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  sub_21B112064();
  if (v6)
  {
  }

  else if (v14)
  {
    v10 = a2 + *a5;
    if (*(v10 + 16) == 255)
    {
      v11 = 255;
    }

    else
    {
      OUTLINED_FUNCTION_0();
      sub_21B111F74();
      v11 = *(v10 + 16);
    }

    v12 = *v10;
    v13 = *(v10 + 8);
    *v10 = 0;
    *(v10 + 8) = v14;
    *(v10 + 16) = 0;
    a6(v12, v13, v11);
  }

  OUTLINED_FUNCTION_746();
}

void sub_21B03A194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_857();
  OUTLINED_FUNCTION_245();
  sub_21B0AA400();
  OUTLINED_FUNCTION_605();
  sub_21B111FA4();
  OUTLINED_FUNCTION_746();
}

uint64_t sub_21B03A268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  sub_21B099CBC(&qword_27CD44FB0, type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardForFeedback);
  sub_21B1120B4();
  return swift_endAccess();
}

uint64_t sub_21B03A344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  sub_21B099CBC(&qword_27CD44FB0, type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardForFeedback);
  sub_21B1120B4();
  return swift_endAccess();
}

uint64_t sub_21B03A420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  sub_21B099CBC(&qword_27CD44FB0, type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardForFeedback);
  sub_21B1120B4();
  return swift_endAccess();
}

uint64_t sub_21B03A4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback(0);
  sub_21B099CBC(&qword_27CD45A90, type metadata accessor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback);
  sub_21B1120B4();
  return swift_endAccess();
}

uint64_t sub_21B03A5D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback(0);
  sub_21B099CBC(&qword_27CD45A78, type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback);
  sub_21B1120B4();
  return swift_endAccess();
}

uint64_t sub_21B03A6B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback(0);
  sub_21B099CBC(&qword_27CD45A60, type metadata accessor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback);
  sub_21B1120B4();
  return swift_endAccess();
}

uint64_t sub_21B03A790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_SafariAttributes(0);
  sub_21B099CBC(&qword_27CD45A48, type metadata accessor for Apple_Parsec_Feedback_V2_SafariAttributes, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SafariAttributes);
  sub_21B1120B4();
  return swift_endAccess();
}

uint64_t sub_21B03A86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(0);
  sub_21B099CBC(&qword_27CD45A30, type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_PhotosAttributes);
  sub_21B1120B4();
  return swift_endAccess();
}

uint64_t sub_21B03A948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo(0);
  sub_21B099CBC(&qword_27CD45A18, type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo);
  sub_21B1120B4();
  return swift_endAccess();
}

void sub_21B03AA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD449F8, &qword_21B118158);
  MEMORY[0x28223BE20](v8 - 8);
  v177 = &v162 - v9;
  v178 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo(0);
  MEMORY[0x28223BE20](v178);
  v179 = &v162 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD449E8, &qword_21B118150);
  MEMORY[0x28223BE20](v11 - 8);
  v174 = &v162 - v12;
  v175 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(0);
  MEMORY[0x28223BE20](v175);
  v176 = &v162 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD449D0, &qword_21B118148);
  MEMORY[0x28223BE20](v14 - 8);
  v171 = &v162 - v15;
  v172 = type metadata accessor for Apple_Parsec_Feedback_V2_SafariAttributes(0);
  MEMORY[0x28223BE20](v172);
  v173 = &v162 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD449A0, &qword_21B118140);
  MEMORY[0x28223BE20](v17 - 8);
  v168 = &v162 - v18;
  v169 = type metadata accessor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback(0);
  MEMORY[0x28223BE20](v169);
  v170 = &v162 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44990, &qword_21B118138);
  MEMORY[0x28223BE20](v20 - 8);
  v165 = &v162 - v21;
  v166 = type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback(0);
  MEMORY[0x28223BE20](v166);
  v167 = &v162 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44980, &qword_21B118130);
  MEMORY[0x28223BE20](v23 - 8);
  v162 = &v162 - v24;
  v163 = type metadata accessor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback(0);
  MEMORY[0x28223BE20](v163);
  v164 = &v162 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44940, &qword_21B118128);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v183 = &v162 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v184 = &v162 - v30;
  MEMORY[0x28223BE20](v29);
  v185 = &v162 - v31;
  v186 = type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  v32 = MEMORY[0x28223BE20](v186);
  v180 = &v162 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v181 = &v162 - v35;
  MEMORY[0x28223BE20](v34);
  v182 = &v162 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44858, &qword_21B118120);
  MEMORY[0x28223BE20](v37 - 8);
  v192 = &v162 - v38;
  v188 = type metadata accessor for Apple_Parsec_Feedback_V2_Struct(0);
  MEMORY[0x28223BE20](v188);
  v187 = &v162 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44830, &qword_21B118110);
  MEMORY[0x28223BE20](v40 - 8);
  v189 = &v162 - v41;
  v190 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  MEMORY[0x28223BE20](v190);
  v191 = &v162 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44838, &qword_21B118118);
  MEMORY[0x28223BE20](v43 - 8);
  v45 = &v162 - v44;
  v46 = type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback(0);
  MEMORY[0x28223BE20](v46);
  swift_beginAccess();
  v47 = *(a1 + 16);
  v48 = *(a1 + 24);
  v205 = a1;
  v49 = HIBYTE(v48) & 0xF;
  if ((v48 & 0x2000000000000000) == 0)
  {
    v49 = v47 & 0xFFFFFFFFFFFFLL;
  }

  if (v49)
  {

    v50 = v194;
    sub_21B1121E4();
    v51 = a3;
    v52 = a4;
    v53 = v50;
    if (v50)
    {

      return;
    }

    v193 = v51;
  }

  else
  {
    v193 = a3;
    v52 = a4;
    v53 = v194;
  }

  v54 = v205;
  swift_beginAccess();
  if (*(v54 + 32))
  {
    v55 = *(v54 + 40);
    v203 = *(v54 + 32);
    v204 = v55;
    sub_21B0AA898();
    sub_21B112174();
    if (v53)
    {
      return;
    }

    v53 = 0;
  }

  swift_beginAccess();
  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v45, 1, v46) == 1)
  {
    sub_21AF99BE0(v45, &qword_27CD44838, &qword_21B118118);
    v56 = v53;
    v57 = v52;
  }

  else
  {
    sub_21B03179C(v45);
    sub_21B099CBC(&qword_27CD459D0, type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ActionItemForFeedback);
    sub_21B112224();
    v56 = v53;
    if (v53)
    {
      goto LABEL_25;
    }

    v57 = v52;
    sub_21B03183C();
  }

  swift_beginAccess();
  v58 = v189;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v58, 1, v190);
  v61 = v192;
  v60 = v193;
  if (EnumTagSinglePayload == 1)
  {
    v62 = v56;
    sub_21AF99BE0(v58, &qword_27CD44830, &qword_21B118110);
    v63 = v60;
  }

  else
  {
    sub_21B03179C(v58);
    sub_21B099CBC(&qword_27CD44D28, type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_PunchoutForFeedback);
    sub_21B112224();
    if (v56)
    {
      goto LABEL_25;
    }

    v63 = v60;
    v62 = 0;
    sub_21B03183C();
  }

  v64 = v205 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__type;
  swift_beginAccess();
  if (!sub_21AFB4A88(*v64, *(v64 + 8), 0))
  {
    v65 = *(v64 + 8);
    v201 = *v64;
    v202 = v65;
    sub_21B0AA8EC();
    sub_21B112174();
    if (v62)
    {
      return;
    }

    v62 = 0;
  }

  swift_beginAccess();
  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v61, 1, v188) == 1)
  {
    sub_21AF99BE0(v61, &qword_27CD44858, &qword_21B118120);
    goto LABEL_28;
  }

  sub_21B03179C(v61);
  sub_21B099CBC(&qword_27CD45FC8, type metadata accessor for Apple_Parsec_Feedback_V2_Struct, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_Struct);
  sub_21B112224();
  if (v62)
  {
LABEL_25:
    sub_21B03183C();
    return;
  }

  v62 = 0;
  sub_21B03183C();
LABEL_28:
  v66 = (v205 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__resultType);
  swift_beginAccess();
  v67 = *v66;
  v68 = v66[1];
  v69 = HIBYTE(v68) & 0xF;
  if ((v68 & 0x2000000000000000) == 0)
  {
    v69 = v67 & 0xFFFFFFFFFFFFLL;
  }

  if (v69)
  {

    sub_21B1121E4();
    if (v62)
    {
LABEL_32:

      return;
    }
  }

  v70 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__rankingScore;
  v71 = v205;
  swift_beginAccess();
  if (*(v71 + v70) != 0.0)
  {
    sub_21B1121D4();
    if (v62)
    {
      return;
    }

    v62 = 0;
  }

  v72 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isStaticCorrection;
  v73 = v205;
  swift_beginAccess();
  if (*(v73 + v72) == 1)
  {
    sub_21B112164();
    if (v62)
    {
      return;
    }

    v62 = 0;
  }

  v74 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__queryID;
  v75 = v205;
  swift_beginAccess();
  if (*(v75 + v74))
  {
    sub_21B112204();
    if (v62)
    {
      return;
    }

    v62 = 0;
  }

  v76 = (v205 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__intendedQuery);
  swift_beginAccess();
  v77 = *v76;
  v78 = v76[1];
  v79 = HIBYTE(v78) & 0xF;
  if ((v78 & 0x2000000000000000) == 0)
  {
    v79 = v77 & 0xFFFFFFFFFFFFLL;
  }

  if (v79)
  {

    sub_21B1121E4();
    if (v62)
    {
      goto LABEL_32;
    }
  }

  v80 = (v205 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__correctedQuery);
  swift_beginAccess();
  v81 = *v80;
  v82 = v80[1];
  v83 = HIBYTE(v82) & 0xF;
  if ((v82 & 0x2000000000000000) == 0)
  {
    v83 = v81 & 0xFFFFFFFFFFFFLL;
  }

  if (v83)
  {

    sub_21B1121E4();
    if (v62)
    {
      goto LABEL_32;
    }
  }

  v84 = (v205 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__completedQuery);
  swift_beginAccess();
  v85 = *v84;
  v86 = v84[1];
  v87 = HIBYTE(v86) & 0xF;
  if ((v86 & 0x2000000000000000) == 0)
  {
    v87 = v85 & 0xFFFFFFFFFFFFLL;
  }

  if (v87)
  {

    sub_21B1121E4();
    if (v62)
    {
      goto LABEL_32;
    }
  }

  v88 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isLocalApplicationResult;
  v89 = v205;
  swift_beginAccess();
  if (*(v89 + v88) == 1)
  {
    sub_21B112164();
    if (v62)
    {
      return;
    }

    v62 = 0;
  }

  v90 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__publiclyIndexable;
  v91 = v205;
  swift_beginAccess();
  if (*(v91 + v90) == 1)
  {
    sub_21B112164();
    if (v62)
    {
      return;
    }

    v62 = 0;
  }

  v92 = (v205 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__fbr);
  swift_beginAccess();
  v93 = *v92;
  v94 = v92[1];
  v95 = HIBYTE(v94) & 0xF;
  if ((v94 & 0x2000000000000000) == 0)
  {
    v95 = v93 & 0xFFFFFFFFFFFFLL;
  }

  if (v95)
  {

    sub_21B1121E4();
    if (v62)
    {
      goto LABEL_32;
    }
  }

  v96 = (v205 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__userInput);
  swift_beginAccess();
  v97 = *v96;
  v98 = v96[1];
  v99 = HIBYTE(v98) & 0xF;
  if ((v98 & 0x2000000000000000) == 0)
  {
    v99 = v97 & 0xFFFFFFFFFFFFLL;
  }

  if (v99)
  {

    sub_21B1121E4();
    if (v62)
    {
      goto LABEL_32;
    }
  }

  v100 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isFuzzyMatch;
  v101 = v205;
  swift_beginAccess();
  if (*(v101 + v100) == 1)
  {
    sub_21B112164();
    if (v62)
    {
      return;
    }

    v62 = 0;
  }

  v102 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__doNotFold;
  v103 = v205;
  swift_beginAccess();
  if (*(v103 + v102) == 1)
  {
    sub_21B112164();
    if (v62)
    {
      return;
    }

    v62 = 0;
  }

  v104 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__blockID;
  v105 = v205;
  swift_beginAccess();
  if (*(v105 + v104))
  {
    sub_21B112204();
    if (v62)
    {
      return;
    }

    v62 = 0;
  }

  v106 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__hashedIdentifier;
  v107 = v205;
  swift_beginAccess();
  if (*(v107 + v106))
  {
    v108 = v63;
    v109 = v57;
    sub_21B112204();
    if (v62)
    {
      return;
    }

    v62 = 0;
  }

  else
  {
    v108 = v63;
    v109 = v57;
  }

  v110 = *(v205 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__resultBundleIdentifier + 16);
  if (v110 == 255)
  {
    goto LABEL_102;
  }

  if (v110)
  {
    sub_21B03CF70(v205, a2, v108, v109, &OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__resultBundleIdentifier, 27);
  }

  else
  {
    sub_21B03CEC8();
  }

  if (!v62)
  {
LABEL_102:
    v111 = *(v205 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__sectionBundleID + 16);
    if (v111 == 255)
    {
      goto LABEL_184;
    }

    if (v111)
    {
      sub_21B03CF70(v205, a2, v108, v109, &OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__sectionBundleID, 29);
    }

    else
    {
      sub_21B03CEC8();
    }

    if (!v62)
    {
LABEL_184:
      v112 = *(v205 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__applicationBundleID + 16);
      if (v112 == 255)
      {
        goto LABEL_103;
      }

      if (v112)
      {
        sub_21B03CF70(v205, a2, v108, v109, &OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__applicationBundleID, 31);
      }

      else
      {
        sub_21B03CEC8();
      }

      if (!v62)
      {
LABEL_103:
        v113 = v205 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__entityData;
        swift_beginAccess();
        if (!sub_21AFD45D8(*v113, *(v113 + 8)))
        {
          v114 = *v113;
          v115 = *(v113 + 8);
          sub_21AF99818(v114, v115);
          sub_21B112184();
          if (v62)
          {
            sub_21AF99728(v114, v115);
            return;
          }

          sub_21AF99728(v114, v115);
        }

        v116 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__shouldUseCompactDisplay;
        v117 = v205;
        swift_beginAccess();
        if (*(v117 + v116) != 1 || (sub_21B112164(), !v62))
        {
          v118 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__noGoTakeover;
          v119 = v205;
          swift_beginAccess();
          if (*(v119 + v118) != 1 || (sub_21B112164(), !v62))
          {
            v120 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__preferTopPlatter;
            v121 = v205;
            swift_beginAccess();
            if (*(v121 + v120) != 1 || (sub_21B112164(), !v62))
            {
              v122 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__wasCompact;
              v123 = v205;
              swift_beginAccess();
              if (*(v123 + v122) != 1 || (sub_21B112164(), !v62))
              {
                v124 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__didTakeoverGo;
                v125 = v205;
                swift_beginAccess();
                if (*(v125 + v124) != 1 || (sub_21B112164(), !v62))
                {
                  v126 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__usesCompactDisplay;
                  v127 = v205;
                  swift_beginAccess();
                  if (*(v127 + v126) != 1 || (sub_21B112164(), !v62))
                  {
                    v128 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isInstantAnswer;
                    v129 = v205;
                    swift_beginAccess();
                    if (*(v129 + v128) != 1 || (sub_21B112164(), !v62))
                    {
                      v130 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__shouldAutoNavigate;
                      v131 = v205;
                      swift_beginAccess();
                      if (*(v131 + v130) != 1 || (sub_21B112164(), !v62))
                      {
                        swift_beginAccess();
                        v132 = v185;
                        sub_21B0AA940();
                        if (__swift_getEnumTagSinglePayload(v132, 1, v186) == 1)
                        {
                          sub_21AF99BE0(v185, &qword_27CD44940, &qword_21B118128);
                        }

                        else
                        {
                          sub_21B03179C(v185);
                          sub_21B099CBC(&qword_27CD44FB0, type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardForFeedback);
                          sub_21B112224();
                          if (v62)
                          {
                            goto LABEL_134;
                          }

                          sub_21B03183C();
                        }

                        swift_beginAccess();
                        v133 = v184;
                        sub_21B0AA940();
                        if (__swift_getEnumTagSinglePayload(v133, 1, v186) == 1)
                        {
                          sub_21AF99BE0(v184, &qword_27CD44940, &qword_21B118128);
                        }

                        else
                        {
                          sub_21B03179C(v184);
                          sub_21B099CBC(&qword_27CD44FB0, type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardForFeedback);
                          sub_21B112224();
                          if (v62)
                          {
                            goto LABEL_134;
                          }

                          sub_21B03183C();
                        }

                        swift_beginAccess();
                        v134 = v183;
                        sub_21B0AA940();
                        if (__swift_getEnumTagSinglePayload(v134, 1, v186) == 1)
                        {
                          sub_21AF99BE0(v183, &qword_27CD44940, &qword_21B118128);
                        }

                        else
                        {
                          sub_21B03179C(v183);
                          sub_21B099CBC(&qword_27CD44FB0, type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardForFeedback);
                          sub_21B112224();
                          if (v62)
                          {
                            goto LABEL_134;
                          }

                          sub_21B03183C();
                        }

                        v135 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__containsPersonalResult;
                        v136 = v205;
                        swift_beginAccess();
                        if (*(v136 + v135) != 1 || (sub_21B112164(), !v62))
                        {
                          v137 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__didRerankPersonalResult;
                          v138 = v205;
                          swift_beginAccess();
                          if (*(v138 + v137) != 1 || (sub_21B112164(), !v62))
                          {
                            v139 = (v205 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__coreSpotlightIndexUsed);
                            swift_beginAccess();
                            if (!*v139 || (v140 = *(v139 + 8), v199 = *v139, v200 = v140, sub_21B0AA79C(), sub_21B112174(), !v62))
                            {
                              v141 = (v205 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__coreSpotlightIndexUsedReason);
                              swift_beginAccess();
                              if (!*v141 || (v142 = *(v141 + 8), v197 = *v141, v198 = v142, sub_21B0AA748(), sub_21B112174(), !v62))
                              {
                                swift_beginAccess();
                                v143 = v162;
                                sub_21B0AA940();
                                if (__swift_getEnumTagSinglePayload(v143, 1, v163) == 1)
                                {
                                  sub_21AF99BE0(v162, &qword_27CD44980, &qword_21B118130);
                                }

                                else
                                {
                                  sub_21B03179C(v162);
                                  sub_21B099CBC(&qword_27CD45A90, type metadata accessor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback);
                                  sub_21B112224();
                                  if (v62)
                                  {
                                    goto LABEL_134;
                                  }

                                  sub_21B03183C();
                                }

                                swift_beginAccess();
                                v144 = v165;
                                sub_21B0AA940();
                                if (__swift_getEnumTagSinglePayload(v144, 1, v166) == 1)
                                {
                                  sub_21AF99BE0(v165, &qword_27CD44990, &qword_21B118138);
                                }

                                else
                                {
                                  sub_21B03179C(v165);
                                  sub_21B099CBC(&qword_27CD45A78, type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback);
                                  sub_21B112224();
                                  if (v62)
                                  {
                                    goto LABEL_134;
                                  }

                                  sub_21B03183C();
                                }

                                swift_beginAccess();
                                v145 = v168;
                                sub_21B0AA940();
                                if (__swift_getEnumTagSinglePayload(v145, 1, v169) == 1)
                                {
                                  sub_21AF99BE0(v168, &unk_27CD449A0, &qword_21B118140);
                                }

                                else
                                {
                                  sub_21B03179C(v168);
                                  sub_21B099CBC(&qword_27CD45A60, type metadata accessor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback);
                                  sub_21B112224();
                                  if (v62)
                                  {
                                    goto LABEL_134;
                                  }

                                  sub_21B03183C();
                                }

                                v146 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isVideoAssetFromPhotos;
                                v147 = v205;
                                swift_beginAccess();
                                if (*(v147 + v146) != 1 || (sub_21B112164(), !v62))
                                {
                                  v148 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isMailInstantAnswerUpdated;
                                  v149 = v205;
                                  swift_beginAccess();
                                  if (*(v149 + v148) != 1 || (sub_21B112164(), !v62))
                                  {
                                    v150 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__indexOfSectionWhenRanked;
                                    v151 = v205;
                                    swift_beginAccess();
                                    if (!*(v151 + v150) || (sub_21B1121A4(), !v62))
                                    {
                                      v152 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__indexOfResultInSectionWhenRanked;
                                      v153 = v205;
                                      swift_beginAccess();
                                      if (!*(v153 + v152) || (sub_21B1121A4(), !v62))
                                      {
                                        swift_beginAccess();
                                        v154 = v171;
                                        sub_21B0AA940();
                                        if (__swift_getEnumTagSinglePayload(v154, 1, v172) == 1)
                                        {
                                          sub_21AF99BE0(v171, &qword_27CD449D0, &qword_21B118148);
                                        }

                                        else
                                        {
                                          sub_21B03179C(v171);
                                          sub_21B099CBC(&qword_27CD45A48, type metadata accessor for Apple_Parsec_Feedback_V2_SafariAttributes, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SafariAttributes);
                                          sub_21B112224();
                                          if (v62)
                                          {
                                            goto LABEL_134;
                                          }

                                          sub_21B03183C();
                                        }

                                        v155 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__hasAppTopHitShortcut_p;
                                        v156 = v205;
                                        swift_beginAccess();
                                        if (*(v156 + v155) == 1)
                                        {
                                          sub_21B112164();
                                          if (v62)
                                          {
                                            return;
                                          }
                                        }

                                        swift_beginAccess();
                                        v157 = v174;
                                        sub_21B0AA940();
                                        if (__swift_getEnumTagSinglePayload(v157, 1, v175) == 1)
                                        {
                                          sub_21AF99BE0(v174, &qword_27CD449E8, &qword_21B118150);
                                        }

                                        else
                                        {
                                          sub_21B03179C(v174);
                                          sub_21B099CBC(&qword_27CD45A30, type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_PhotosAttributes);
                                          sub_21B112224();
                                          if (v62)
                                          {
                                            goto LABEL_134;
                                          }

                                          sub_21B03183C();
                                        }

                                        swift_beginAccess();
                                        v158 = v177;
                                        sub_21B0AA940();
                                        if (__swift_getEnumTagSinglePayload(v158, 1, v178) == 1)
                                        {
                                          sub_21AF99BE0(v177, &qword_27CD449F8, &qword_21B118158);
LABEL_178:
                                          v159 = (v205 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__thirdPartyQueryCompletionMatched);
                                          swift_beginAccess();
                                          if (!*v159 || (v160 = *(v159 + 8), v195 = *v159, v196 = v160, sub_21B0AA6F4(), sub_21B112174(), !v62))
                                          {
                                            v161 = (v205 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__thirdPartyNavigationIntentScore);
                                            swift_beginAccess();
                                            if (*v161 != 0.0)
                                            {
                                              sub_21B112194();
                                            }
                                          }

                                          return;
                                        }

                                        sub_21B03179C(v177);
                                        sub_21B099CBC(&qword_27CD45A18, type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo);
                                        sub_21B112224();
                                        if (!v62)
                                        {
                                          sub_21B03183C();
                                          goto LABEL_178;
                                        }

LABEL_134:
                                        sub_21B03183C();
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
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_21B03CEC8()
{
  OUTLINED_FUNCTION_11();
  v3 = *(v2 + *v1 + 16);
  if (v3 == 255 || (v3 & 1) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = v0;
    v5 = OUTLINED_FUNCTION_748();
    v6(v5);
    OUTLINED_FUNCTION_748();
    sub_21B1121E4();
    v7 = OUTLINED_FUNCTION_748();
    v4(v7);
    OUTLINED_FUNCTION_13();
  }
}

uint64_t sub_21B03CF70(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v6 = *(result + *a5 + 16);
  if (v6 == 255 || (v6 & 1) == 0)
  {
    __break(1u);
  }

  else
  {
    sub_21B0AA400();
    return sub_21B112174();
  }

  return result;
}

BOOL sub_21B03D03C(uint64_t a1, void *a2)
{
  v620 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_67_1();
  v622 = v8;
  v618 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46DC8, &qword_21B127D48);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_108();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD449F8, &qword_21B118158);
  v11 = OUTLINED_FUNCTION_25(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_9_1();
  v621 = v12;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_24();
  v619 = v14;
  v15 = OUTLINED_FUNCTION_33_0();
  v615 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(v15);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_67_1();
  v616 = v17;
  v612 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46DD0, &qword_21B127D50);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_83();
  v617 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD449E8, &qword_21B118150);
  v21 = OUTLINED_FUNCTION_25(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_9_1();
  v614 = v22;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_24();
  v613 = v24;
  v25 = OUTLINED_FUNCTION_33_0();
  v608 = type metadata accessor for Apple_Parsec_Feedback_V2_SafariAttributes(v25);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_67_1();
  v610 = v27;
  v606 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46DD8, &qword_21B127D58);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_83();
  v611 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD449D0, &qword_21B118148);
  v31 = OUTLINED_FUNCTION_25(v30);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_9_1();
  v609 = v32;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_24();
  v607 = v34;
  v35 = OUTLINED_FUNCTION_33_0();
  v603 = type metadata accessor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback(v35);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_67_1();
  v604 = v37;
  v600 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46DE0, &qword_21B127D60);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_83();
  v605 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD449A0, &qword_21B118140);
  v41 = OUTLINED_FUNCTION_25(v40);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_9_1();
  v602 = v42;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_24();
  v601 = v44;
  v45 = OUTLINED_FUNCTION_33_0();
  v595 = type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback(v45);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_67_1();
  v598 = v47;
  v594 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46DE8, &qword_21B127D68);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_83();
  v599 = v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44990, &qword_21B118138);
  v51 = OUTLINED_FUNCTION_25(v50);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_9_1();
  v597 = v52;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_24();
  v596 = v54;
  v55 = OUTLINED_FUNCTION_33_0();
  v591 = type metadata accessor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback(v55);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_67_1();
  v592 = v57;
  v588 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46DF0, &qword_21B127D70);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_83();
  v593 = v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44980, &qword_21B118130);
  v61 = OUTLINED_FUNCTION_25(v60);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_9_1();
  v590 = v62;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_24();
  v589 = v64;
  v65 = OUTLINED_FUNCTION_33_0();
  v585 = type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(v65);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_9_1();
  v586 = v67;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_22_2();
  v580 = v69;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_24();
  v576 = v71;
  v582 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44B88, &qword_21B118208);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_9_1();
  v587 = v73;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_22_2();
  v581 = v75;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_24();
  v577 = v77;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44940, &qword_21B118128);
  v79 = OUTLINED_FUNCTION_25(v78);
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_9_1();
  v584 = v80;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_22_2();
  v583 = v82;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_22_2();
  v579 = v84;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_22_2();
  v578 = v86;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_22_2();
  v575 = v88;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_24();
  v574 = v90;
  v91 = OUTLINED_FUNCTION_33_0();
  v626 = type metadata accessor for Apple_Parsec_Feedback_V2_Struct(v91);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_67_1();
  v623 = v93;
  v625 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46DF8, &qword_21B127D78);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_83();
  v627 = v95;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44858, &qword_21B118120);
  v97 = OUTLINED_FUNCTION_25(v96);
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_9_1();
  v624 = v98;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_24();
  v634 = v100;
  v101 = OUTLINED_FUNCTION_33_0();
  v632 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(v101);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v102);
  OUTLINED_FUNCTION_67_1();
  v628 = v103;
  v631 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44B58, &qword_21B1181D8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_83();
  v633 = v105;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44830, &qword_21B118110);
  v107 = OUTLINED_FUNCTION_25(v106);
  MEMORY[0x28223BE20](v107);
  OUTLINED_FUNCTION_9_1();
  v629 = v108;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v109);
  OUTLINED_FUNCTION_24();
  v636 = v110;
  v111 = OUTLINED_FUNCTION_33_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback(v111);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v112);
  OUTLINED_FUNCTION_67_1();
  v630 = v113;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46E00, &qword_21B127D80);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v114);
  v116 = &v572 - v115;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44838, &qword_21B118118);
  v118 = OUTLINED_FUNCTION_25(v117);
  MEMORY[0x28223BE20](v118);
  OUTLINED_FUNCTION_9_1();
  v635 = v119;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v120);
  OUTLINED_FUNCTION_725();
  OUTLINED_FUNCTION_28_1(a1 + 16, v738);
  v122 = *(a1 + 16);
  v121 = *(a1 + 24);
  OUTLINED_FUNCTION_28_1((a2 + 2), v737);
  v123 = v122 == a2[2] && v121 == a2[3];
  if (!v123 && (sub_21B112D04() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_28_1(a1 + 32, v736);
  v124 = *(a1 + 32);
  v125 = *(a1 + 40);
  OUTLINED_FUNCTION_28_1((a2 + 4), v735);
  if (!sub_21AFB4A88(v124, v125, a2[4]))
  {
    return 0;
  }

  v572 = v2;
  v573 = a2;
  OUTLINED_FUNCTION_28_1(a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__action, v734);
  v126 = v573;
  sub_21B0AA940();
  OUTLINED_FUNCTION_28_1(v126 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__action, v733);
  v127 = *(v3 + 48);
  sub_21B0AA940();
  sub_21B0AA940();
  OUTLINED_FUNCTION_14(v116);
  if (v123)
  {

    sub_21AF99BE0(v4, &qword_27CD44838, &qword_21B118118);
    OUTLINED_FUNCTION_14(&v116[v127]);
    if (v123)
    {
      sub_21AF99BE0(v116, &qword_27CD44838, &qword_21B118118);
      goto LABEL_17;
    }

LABEL_15:
    v129 = &qword_27CD46E00;
    v130 = &qword_21B127D80;
    v131 = v116;
LABEL_26:
    sub_21AF99BE0(v131, v129, v130);
LABEL_27:

    return 0;
  }

  sub_21B0AA940();
  OUTLINED_FUNCTION_14(&v116[v127]);
  if (v128)
  {

    sub_21AF99BE0(v4, &qword_27CD44838, &qword_21B118118);
    sub_21B03183C();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_210();
  sub_21B03179C(&v116[v127]);

  static Apple_Parsec_Feedback_V2_ActionItemForFeedback.== infix(_:_:)();
  v133 = v132;
  sub_21B03183C();
  v134 = OUTLINED_FUNCTION_0();
  sub_21AF99BE0(v134, v135, &qword_21B118118);
  OUTLINED_FUNCTION_111();
  sub_21B03183C();
  sub_21AF99BE0(v116, &qword_27CD44838, &qword_21B118118);
  if ((v133 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_17:
  OUTLINED_FUNCTION_28_1(a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__punchout, &v732);
  v136 = v636;
  OUTLINED_FUNCTION_474();
  OUTLINED_FUNCTION_28_1(v126 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__punchout, &v731);
  OUTLINED_FUNCTION_591();
  v137 = v633;
  OUTLINED_FUNCTION_667();
  OUTLINED_FUNCTION_667();
  OUTLINED_FUNCTION_37_1(v137, 1, v632);
  if (v123)
  {
    sub_21AF99BE0(v136, &qword_27CD44830, &qword_21B118110);
    OUTLINED_FUNCTION_3_11(&qword_27CD44000 + v137);
    v138 = v634;
    if (v123)
    {
      v139 = sub_21AF99BE0(v137, &qword_27CD44830, &qword_21B118110);
      goto LABEL_30;
    }

    goto LABEL_25;
  }

  LODWORD(v136) = v629;
  sub_21B0AA940();
  OUTLINED_FUNCTION_3_11(&qword_27CD44000 + v137);
  v138 = v634;
  if (v140)
  {
    sub_21AF99BE0(v636, &qword_27CD44830, &qword_21B118110);
    OUTLINED_FUNCTION_120();
    sub_21B03183C();
LABEL_25:
    v129 = &qword_27CD44B58;
    v130 = &qword_21B1181D8;
    v131 = v137;
    goto LABEL_26;
  }

  sub_21B03179C(&qword_27CD44000 + v137);
  v142 = OUTLINED_FUNCTION_107();
  v143 = static Apple_Parsec_Feedback_V2_PunchoutForFeedback.== infix(_:_:)(v142);
  sub_21B03183C();
  OUTLINED_FUNCTION_487();
  sub_21AF99BE0(v144, v145, v146);
  OUTLINED_FUNCTION_826();
  OUTLINED_FUNCTION_487();
  v139 = sub_21AF99BE0(v147, v148, v149);
  if ((v143 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_30:
  OUTLINED_FUNCTION_587(v139, &v730);
  OUTLINED_FUNCTION_834();
  OUTLINED_FUNCTION_510(v150, &v729);
  v151 = OUTLINED_FUNCTION_490();
  if (!sub_21AFB4A88(v151, v152, v153))
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_28_1(a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__localFeatures, &v728);
  OUTLINED_FUNCTION_667();
  OUTLINED_FUNCTION_28_1(v126 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__localFeatures, &v727);
  v154 = *(v625 + 48);
  v155 = v627;
  OUTLINED_FUNCTION_667();
  v156 = v155;
  OUTLINED_FUNCTION_667();
  v157 = v626;
  OUTLINED_FUNCTION_37_1(v155, 1, v626);
  if (v123)
  {
    sub_21AF99BE0(v138, &qword_27CD44858, &qword_21B118120);
    OUTLINED_FUNCTION_3_11(v155 + v154);
    if (v123)
    {
      v158 = sub_21AF99BE0(v155, &qword_27CD44858, &qword_21B118120);
      goto LABEL_36;
    }

    goto LABEL_87;
  }

  v136 = v624;
  sub_21B0AA940();
  OUTLINED_FUNCTION_3_11(v155 + v154);
  if (v234)
  {
    sub_21AF99BE0(v138, &qword_27CD44858, &qword_21B118120);
    sub_21B03183C();
LABEL_87:
    v129 = &qword_27CD46DF8;
    v130 = &qword_21B127D78;
    v131 = v155;
    goto LABEL_26;
  }

  v235 = v155 + v154;
  v236 = v623;
  sub_21B03179C(v235);
  v237 = sub_21B098910(*v136, *v236);
  if ((v237 & 1) == 0 || (sub_21B0990C0(*(v136 + 8), v236[1]) & 1) == 0)
  {
    sub_21B03183C();
    OUTLINED_FUNCTION_634();
    sub_21AF99BE0(v251, v252, v253);
    sub_21B03183C();
    v131 = OUTLINED_FUNCTION_440();
    v130 = &qword_21B118120;
    goto LABEL_26;
  }

  v238 = *(v157 + 24);
  sub_21B111EC4();
  OUTLINED_FUNCTION_0_15();
  v241 = sub_21B099CBC(v239, v240, MEMORY[0x277D216D0]);
  v244 = OUTLINED_FUNCTION_729(v136 + v238, v242, v243, v241);
  sub_21B03183C();
  v156 = &qword_21B118120;
  OUTLINED_FUNCTION_487();
  sub_21AF99BE0(v245, v246, v247);
  OUTLINED_FUNCTION_826();
  OUTLINED_FUNCTION_487();
  v158 = sub_21AF99BE0(v248, v249, v250);
  if ((v244 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_36:
  v159 = a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__resultType;
  v160 = OUTLINED_FUNCTION_630(v158, &v726);
  v161 = *(v159 + 8);
  OUTLINED_FUNCTION_510(v160, &v725);
  OUTLINED_FUNCTION_697();
  if (!v123 || v161 != v162)
  {
    OUTLINED_FUNCTION_105();
    if ((sub_21B112D04() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v164 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__rankingScore;
  OUTLINED_FUNCTION_28_1(a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__rankingScore, &v724);
  v165 = *(a1 + v164);
  v166 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__rankingScore;
  OUTLINED_FUNCTION_28_1(v126 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__rankingScore, &v723);
  if (v165 != *(v126 + v166))
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_28_1(a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isStaticCorrection, &v722);
  OUTLINED_FUNCTION_28_1(v126 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isStaticCorrection, &v721);
  OUTLINED_FUNCTION_833();
  if (!v123)
  {
    goto LABEL_27;
  }

  v167 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__queryID;
  OUTLINED_FUNCTION_28_1(a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__queryID, &v720);
  v168 = *(a1 + v167);
  v169 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__queryID;
  v170 = OUTLINED_FUNCTION_28_1(v126 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__queryID, &v719);
  if (v168 != *(v126 + v169))
  {
    goto LABEL_27;
  }

  v171 = a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__intendedQuery;
  v172 = OUTLINED_FUNCTION_630(v170, &v718);
  v173 = *(v171 + 8);
  OUTLINED_FUNCTION_510(v172, &v717);
  OUTLINED_FUNCTION_697();
  if (!v123 || v173 != v175)
  {
    OUTLINED_FUNCTION_105();
    v174 = sub_21B112D04();
    if ((v174 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v177 = a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__correctedQuery;
  v178 = OUTLINED_FUNCTION_630(v174, &v716);
  v179 = *(v177 + 8);
  OUTLINED_FUNCTION_510(v178, &v715);
  OUTLINED_FUNCTION_697();
  if (!v123 || v179 != v181)
  {
    OUTLINED_FUNCTION_105();
    v180 = sub_21B112D04();
    if ((v180 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v183 = a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__completedQuery;
  v184 = OUTLINED_FUNCTION_630(v180, &v714);
  v185 = *(v183 + 8);
  OUTLINED_FUNCTION_510(v184, &v713);
  OUTLINED_FUNCTION_697();
  if (!v123 || v185 != v186)
  {
    OUTLINED_FUNCTION_105();
    if ((sub_21B112D04() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  OUTLINED_FUNCTION_28_1(a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isLocalApplicationResult, &v712);
  OUTLINED_FUNCTION_28_1(v126 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isLocalApplicationResult, &v711);
  OUTLINED_FUNCTION_833();
  if (!v123)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_28_1(a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__publiclyIndexable, &v710);
  OUTLINED_FUNCTION_28_1(v126 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__publiclyIndexable, &v709);
  OUTLINED_FUNCTION_833();
  if (!v123)
  {
    goto LABEL_27;
  }

  v189 = a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__fbr;
  v190 = OUTLINED_FUNCTION_630(v188, &v708);
  v191 = *(v189 + 8);
  OUTLINED_FUNCTION_510(v190, &v707);
  OUTLINED_FUNCTION_697();
  if (!v123 || v191 != v193)
  {
    OUTLINED_FUNCTION_105();
    v192 = sub_21B112D04();
    if ((v192 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v195 = a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__userInput;
  v196 = OUTLINED_FUNCTION_630(v192, &v706);
  v197 = *(v195 + 8);
  v198 = v126 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__userInput;
  OUTLINED_FUNCTION_510(v196, &v705);
  OUTLINED_FUNCTION_697();
  if (!v123 || v197 != v199)
  {
    OUTLINED_FUNCTION_105();
    if ((sub_21B112D04() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  OUTLINED_FUNCTION_28_1(a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isFuzzyMatch, &v704);
  v201 = a1;
  OUTLINED_FUNCTION_28_1(v126 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isFuzzyMatch, &v703);
  OUTLINED_FUNCTION_833();
  if (!v123)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_28_1(a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__doNotFold, &v702);
  v202 = OUTLINED_FUNCTION_506();
  OUTLINED_FUNCTION_28_1(v202, &v701);
  OUTLINED_FUNCTION_524();
  if (!v123)
  {
    goto LABEL_27;
  }

  v203 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__blockID;
  OUTLINED_FUNCTION_28_1(a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__blockID, &v700);
  v204 = *(a1 + v203);
  v205 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__blockID;
  v206 = OUTLINED_FUNCTION_506();
  OUTLINED_FUNCTION_28_1(v206, &v699);
  if (v204 != *&v198[v205])
  {
    goto LABEL_27;
  }

  v207 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__hashedIdentifier;
  OUTLINED_FUNCTION_28_1(a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__hashedIdentifier, &v698);
  v208 = *(a1 + v207);
  v209 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__hashedIdentifier;
  v210 = OUTLINED_FUNCTION_506();
  OUTLINED_FUNCTION_28_1(v210, &v697);
  if (v208 != *&v198[v209])
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_359();
  if (v123)
  {
    v254 = OUTLINED_FUNCTION_413();
    sub_21AF83F7C(v254, v255, 255);
    if (v136 != 255)
    {
      goto LABEL_107;
    }

    v256 = OUTLINED_FUNCTION_366();
    sub_21AF83FA4(v256, v257, 255);
  }

  else
  {
    OUTLINED_FUNCTION_601();
    if (v123)
    {
LABEL_105:
      v310 = OUTLINED_FUNCTION_278();
      sub_21AF83F7C(v310, v311, v312);
      v313 = OUTLINED_FUNCTION_30_2();
      sub_21AF83F7C(v313, v314, 255);
      v315 = OUTLINED_FUNCTION_278();
      sub_21AF83F7C(v315, v316, v317);
      v318 = OUTLINED_FUNCTION_30_2();
      sub_21AF83F7C(v318, v319, 255);
      v320 = OUTLINED_FUNCTION_278();
      sub_21AF83F7C(v320, v321, v322);

      v323 = OUTLINED_FUNCTION_30_2();
      sub_21AF83FA4(v323, v324, 255);
      v325 = OUTLINED_FUNCTION_278();
      sub_21AF83FA4(v325, v326, v327);
      v328 = OUTLINED_FUNCTION_413();
      sub_21AF83FBC(v328, v329, v330);
LABEL_108:
      v335 = OUTLINED_FUNCTION_278();
      sub_21AF83FA4(v335, v336, v337);
      v338 = OUTLINED_FUNCTION_30_2();
      sub_21AF83FA4(v338, v339, v136);
      return 0;
    }

    v693 = v155;
    v694 = v156;
    v211 = v136 & 1;
    v695 = v136 & 1;
    v212 = OUTLINED_FUNCTION_278();
    sub_21AF83F7C(v212, v213, v214);
    v215 = OUTLINED_FUNCTION_30_2();
    sub_21AF83F7C(v215, v216, v136);
    v217 = OUTLINED_FUNCTION_278();
    sub_21AF83F7C(v217, v218, v219);
    static Apple_Parsec_Feedback_V2_SearchResultForFeedback.OneOf_ResultBundleIdentifier.== infix(_:_:)(v696, &v693, v220, v221, v222, v223, v224);
    LODWORD(v136) = v225;
    v226 = OUTLINED_FUNCTION_30_2();
    sub_21AF83FBC(v226, v227, v211);
    v228 = OUTLINED_FUNCTION_413();
    sub_21AF83FBC(v228, v229, v230);
    v231 = OUTLINED_FUNCTION_278();
    sub_21AF83FA4(v231, v232, v233);
    if ((v136 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  OUTLINED_FUNCTION_359();
  if (v123)
  {
    v281 = OUTLINED_FUNCTION_413();
    sub_21AF83F7C(v281, v282, 255);
    if (v136 == 255)
    {
      v283 = OUTLINED_FUNCTION_366();
      sub_21AF83FA4(v283, v284, 255);
      goto LABEL_101;
    }

LABEL_107:
    v333 = OUTLINED_FUNCTION_30_2();
    sub_21AF83F7C(v333, v334, v136);

    goto LABEL_108;
  }

  OUTLINED_FUNCTION_601();
  if (v123)
  {
    goto LABEL_105;
  }

  v693 = v155;
  v694 = v156;
  v258 = v136 & 1;
  v695 = v136 & 1;
  v259 = OUTLINED_FUNCTION_278();
  sub_21AF83F7C(v259, v260, v261);
  v262 = OUTLINED_FUNCTION_30_2();
  sub_21AF83F7C(v262, v263, v136);
  v264 = OUTLINED_FUNCTION_278();
  sub_21AF83F7C(v264, v265, v266);
  static Apple_Parsec_Feedback_V2_SearchResultForFeedback.OneOf_SectionBundleID.== infix(_:_:)(v696, &v693, v267, v268, v269, v270, v271);
  LODWORD(v136) = v272;
  v273 = OUTLINED_FUNCTION_30_2();
  sub_21AF83FBC(v273, v274, v258);
  v275 = OUTLINED_FUNCTION_413();
  sub_21AF83FBC(v275, v276, v277);
  v278 = OUTLINED_FUNCTION_278();
  sub_21AF83FA4(v278, v279, v280);
  if ((v136 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_101:
  OUTLINED_FUNCTION_359();
  if (v123)
  {
    v331 = OUTLINED_FUNCTION_413();
    sub_21AF83F7C(v331, v332, 255);
    if (v136 == 255)
    {
      v340 = OUTLINED_FUNCTION_366();
      v309 = sub_21AF83FA4(v340, v341, 255);
      goto LABEL_110;
    }

    goto LABEL_107;
  }

  OUTLINED_FUNCTION_601();
  if (v123)
  {
    goto LABEL_105;
  }

  v693 = v155;
  v694 = v156;
  v285 = v136 & 1;
  v695 = v136 & 1;
  v286 = OUTLINED_FUNCTION_278();
  sub_21AF83F7C(v286, v287, v288);
  v289 = OUTLINED_FUNCTION_30_2();
  sub_21AF83F7C(v289, v290, v136);
  v291 = OUTLINED_FUNCTION_278();
  sub_21AF83F7C(v291, v292, v293);
  static Apple_Parsec_Feedback_V2_SearchResultForFeedback.OneOf_ApplicationBundleID.== infix(_:_:)(v696, &v693, v294, v295, v296, v297, v298);
  v300 = v299;
  v301 = OUTLINED_FUNCTION_30_2();
  sub_21AF83FBC(v301, v302, v285);
  v303 = OUTLINED_FUNCTION_413();
  sub_21AF83FBC(v303, v304, v305);
  v306 = OUTLINED_FUNCTION_278();
  v309 = sub_21AF83FA4(v306, v307, v308);
  if ((v300 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_110:
  OUTLINED_FUNCTION_587(v309, v696);
  OUTLINED_FUNCTION_850();
  OUTLINED_FUNCTION_510(v342, &v693);
  v343 = OUTLINED_FUNCTION_413();
  sub_21AF99818(v343, v344);
  v345 = OUTLINED_FUNCTION_48_1();
  sub_21AF99818(v345, v346);
  v347 = OUTLINED_FUNCTION_413();
  v348 = MEMORY[0x21CEE80C0](v347);
  v349 = OUTLINED_FUNCTION_48_1();
  sub_21AF99728(v349, v350);
  v351 = OUTLINED_FUNCTION_413();
  sub_21AF99728(v351, v352);
  if ((v348 & 1) == 0)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_28_1(v201 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__shouldUseCompactDisplay, &v692);
  v353 = OUTLINED_FUNCTION_506();
  OUTLINED_FUNCTION_28_1(v353, &v691);
  OUTLINED_FUNCTION_524();
  if (!v123)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_28_1(v201 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__noGoTakeover, &v690);
  v354 = OUTLINED_FUNCTION_506();
  OUTLINED_FUNCTION_28_1(v354, &v689);
  OUTLINED_FUNCTION_524();
  if (!v123)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_28_1(v201 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__preferTopPlatter, &v688);
  v355 = OUTLINED_FUNCTION_506();
  OUTLINED_FUNCTION_28_1(v355, &v687);
  OUTLINED_FUNCTION_524();
  if (!v123)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_28_1(v201 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__wasCompact, &v686);
  v356 = OUTLINED_FUNCTION_506();
  OUTLINED_FUNCTION_28_1(v356, &v685);
  OUTLINED_FUNCTION_524();
  if (!v123)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_28_1(v201 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__didTakeoverGo, &v684);
  v357 = OUTLINED_FUNCTION_506();
  OUTLINED_FUNCTION_28_1(v357, &v683);
  OUTLINED_FUNCTION_524();
  if (!v123)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_28_1(v201 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__usesCompactDisplay, &v682);
  v358 = OUTLINED_FUNCTION_506();
  OUTLINED_FUNCTION_28_1(v358, &v681);
  OUTLINED_FUNCTION_524();
  if (!v123)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_28_1(v201 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isInstantAnswer, &v680);
  v359 = OUTLINED_FUNCTION_506();
  OUTLINED_FUNCTION_28_1(v359, &v679);
  OUTLINED_FUNCTION_524();
  if (!v123)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_28_1(v201 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__shouldAutoNavigate, &v678);
  v360 = OUTLINED_FUNCTION_506();
  OUTLINED_FUNCTION_28_1(v360, &v677);
  OUTLINED_FUNCTION_524();
  if (!v123)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_28_1(v201 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__card, &v676);
  OUTLINED_FUNCTION_474();
  v361 = OUTLINED_FUNCTION_600();
  OUTLINED_FUNCTION_28_1(v361, &v675);
  OUTLINED_FUNCTION_591();
  v362 = v577;
  OUTLINED_FUNCTION_474();
  OUTLINED_FUNCTION_397();
  OUTLINED_FUNCTION_345(v362);
  if (v123)
  {
    sub_21AF99BE0(v574, &qword_27CD44940, &qword_21B118128);
    OUTLINED_FUNCTION_345(&qword_27CD44000 + v577);
    if (v123)
    {
      sub_21AF99BE0(v577, &qword_27CD44940, &qword_21B118128);
      goto LABEL_132;
    }

LABEL_156:
    v386 = &qword_27CD44B88;
    v387 = &qword_21B118208;
    v388 = v577;
LABEL_192:
    sub_21AF99BE0(v388, v386, v387);
    goto LABEL_27;
  }

  v384 = v577;
  sub_21B0AA940();
  OUTLINED_FUNCTION_345(&qword_27CD44000 + v384);
  if (v385)
  {
    sub_21AF99BE0(v574, &qword_27CD44940, &qword_21B118128);
    OUTLINED_FUNCTION_31_4();
    sub_21B03183C();
    goto LABEL_156;
  }

  v389 = v576;
  OUTLINED_FUNCTION_824(v577);
  sub_21AFBEC58(*v575, *v389);
  if ((v390 & 1) == 0)
  {
    goto LABEL_191;
  }

  v391 = v575[1] == v576[1] && v575[2] == v576[2];
  if (!v391 && (sub_21B112D04() & 1) == 0)
  {
    goto LABEL_191;
  }

  v392 = OUTLINED_FUNCTION_801();
  OUTLINED_FUNCTION_0_15();
  v395 = sub_21B099CBC(v393, v394, MEMORY[0x277D216D0]);
  OUTLINED_FUNCTION_695(v395, v396, v397, v395);
  OUTLINED_FUNCTION_157();
  sub_21B03183C();
  OUTLINED_FUNCTION_487();
  sub_21AF99BE0(v398, v399, v400);
  OUTLINED_FUNCTION_98();
  sub_21B03183C();
  OUTLINED_FUNCTION_487();
  sub_21AF99BE0(v401, v402, v403);
  if ((v392 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_132:
  OUTLINED_FUNCTION_28_1(v201 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__inlineCard, &v674);
  OUTLINED_FUNCTION_474();
  v363 = OUTLINED_FUNCTION_600();
  OUTLINED_FUNCTION_28_1(v363, &v673);
  OUTLINED_FUNCTION_591();
  v364 = v581;
  OUTLINED_FUNCTION_474();
  OUTLINED_FUNCTION_397();
  OUTLINED_FUNCTION_345(v364);
  if (v123)
  {
    sub_21AF99BE0(v578, &qword_27CD44940, &qword_21B118128);
    OUTLINED_FUNCTION_345(&qword_27CD44000 + v581);
    if (v123)
    {
      sub_21AF99BE0(v581, &qword_27CD44940, &qword_21B118128);
      goto LABEL_137;
    }

    goto LABEL_169;
  }

  v404 = v581;
  sub_21B0AA940();
  OUTLINED_FUNCTION_345(&qword_27CD44000 + v404);
  if (v405)
  {
    sub_21AF99BE0(v578, &qword_27CD44940, &qword_21B118128);
    OUTLINED_FUNCTION_31_4();
    sub_21B03183C();
LABEL_169:
    v386 = &qword_27CD44B88;
    v387 = &qword_21B118208;
    v388 = v581;
    goto LABEL_192;
  }

  v406 = v580;
  OUTLINED_FUNCTION_824(v581);
  sub_21AFBEC58(*v579, *v406);
  if ((v407 & 1) == 0)
  {
    goto LABEL_191;
  }

  v408 = v579[1] == v580[1] && v579[2] == v580[2];
  if (!v408 && (sub_21B112D04() & 1) == 0)
  {
    goto LABEL_191;
  }

  v409 = OUTLINED_FUNCTION_801();
  OUTLINED_FUNCTION_0_15();
  v412 = sub_21B099CBC(v410, v411, MEMORY[0x277D216D0]);
  OUTLINED_FUNCTION_695(v412, v413, v414, v412);
  OUTLINED_FUNCTION_157();
  sub_21B03183C();
  OUTLINED_FUNCTION_487();
  sub_21AF99BE0(v415, v416, v417);
  OUTLINED_FUNCTION_98();
  sub_21B03183C();
  OUTLINED_FUNCTION_487();
  sub_21AF99BE0(v418, v419, v420);
  if ((v409 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_137:
  OUTLINED_FUNCTION_28_1(v201 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__compactCard, &v672);
  OUTLINED_FUNCTION_474();
  v365 = OUTLINED_FUNCTION_600();
  OUTLINED_FUNCTION_28_1(v365, &v671);
  OUTLINED_FUNCTION_591();
  v366 = v587;
  OUTLINED_FUNCTION_474();
  OUTLINED_FUNCTION_397();
  OUTLINED_FUNCTION_345(v366);
  if (v123)
  {
    sub_21AF99BE0(v583, &qword_27CD44940, &qword_21B118128);
    OUTLINED_FUNCTION_345(&qword_27CD44000 + v587);
    if (v123)
    {
      sub_21AF99BE0(v587, &qword_27CD44940, &qword_21B118128);
      goto LABEL_142;
    }

    goto LABEL_182;
  }

  v421 = v587;
  sub_21B0AA940();
  OUTLINED_FUNCTION_345(&qword_27CD44000 + v421);
  if (v422)
  {
    sub_21AF99BE0(v583, &qword_27CD44940, &qword_21B118128);
    OUTLINED_FUNCTION_31_4();
    sub_21B03183C();
LABEL_182:
    v386 = &qword_27CD44B88;
    v387 = &qword_21B118208;
    v388 = v587;
    goto LABEL_192;
  }

  v423 = v586;
  OUTLINED_FUNCTION_824(v587);
  sub_21AFBEC58(*v584, *v423);
  if ((v424 & 1) == 0)
  {
    goto LABEL_191;
  }

  v425 = v584[1] == v586[1] && v584[2] == v586[2];
  if (!v425 && (sub_21B112D04() & 1) == 0)
  {
    goto LABEL_191;
  }

  v426 = OUTLINED_FUNCTION_801();
  OUTLINED_FUNCTION_0_15();
  v429 = sub_21B099CBC(v427, v428, MEMORY[0x277D216D0]);
  OUTLINED_FUNCTION_729(&qword_21B118128 + v584, v430, v431, v429);
  OUTLINED_FUNCTION_157();
  sub_21B03183C();
  OUTLINED_FUNCTION_487();
  sub_21AF99BE0(v432, v433, v434);
  OUTLINED_FUNCTION_98();
  sub_21B03183C();
  OUTLINED_FUNCTION_487();
  sub_21AF99BE0(v435, v436, v437);
  if ((v426 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_142:
  OUTLINED_FUNCTION_28_1(v201 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__containsPersonalResult, &v670);
  v367 = OUTLINED_FUNCTION_506();
  OUTLINED_FUNCTION_28_1(v367, &v669);
  OUTLINED_FUNCTION_524();
  if (!v123)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_28_1(v201 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__didRerankPersonalResult, &v668);
  v368 = OUTLINED_FUNCTION_506();
  OUTLINED_FUNCTION_28_1(v368, &v667);
  OUTLINED_FUNCTION_524();
  if (!v123)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_587(v369, &v666);
  OUTLINED_FUNCTION_834();
  OUTLINED_FUNCTION_850();
  OUTLINED_FUNCTION_510(v370, &v665);
  v371 = OUTLINED_FUNCTION_490();
  v374 = sub_21AFB4A88(v371, v372, v373);
  if (!v374)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_587(v374, &v664);
  OUTLINED_FUNCTION_834();
  OUTLINED_FUNCTION_850();
  OUTLINED_FUNCTION_510(v375, &v663);
  v376 = OUTLINED_FUNCTION_490();
  if (!sub_21AFB4A88(v376, v377, v378))
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_28_1(v201 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__coreSpotlightRankingSignals, &v662);
  OUTLINED_FUNCTION_474();
  v379 = OUTLINED_FUNCTION_600();
  OUTLINED_FUNCTION_28_1(v379, &v661);
  OUTLINED_FUNCTION_591();
  OUTLINED_FUNCTION_474();
  OUTLINED_FUNCTION_397();
  v380 = OUTLINED_FUNCTION_538();
  OUTLINED_FUNCTION_37_1(v380, v381, v591);
  if (v123)
  {
    sub_21AF99BE0(v589, &qword_27CD44980, &qword_21B118130);
    v382 = OUTLINED_FUNCTION_599(v593);
    OUTLINED_FUNCTION_37_1(v382, v383, v591);
    if (v123)
    {
      sub_21AF99BE0(v593, &qword_27CD44980, &qword_21B118130);
      goto LABEL_199;
    }

LABEL_197:
    v386 = &qword_27CD46DF0;
    v387 = &qword_21B127D70;
    v388 = v593;
    goto LABEL_192;
  }

  sub_21B0AA940();
  v441 = OUTLINED_FUNCTION_539();
  OUTLINED_FUNCTION_37_1(v441, v442, v591);
  if (v443)
  {
    sub_21AF99BE0(v589, &qword_27CD44980, &qword_21B118130);
    sub_21B03183C();
    goto LABEL_197;
  }

  sub_21B03179C(&qword_27CD44000 + v593);
  v444 = OUTLINED_FUNCTION_107();
  v445 = static Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback.== infix(_:_:)(v444);
  sub_21B03183C();
  OUTLINED_FUNCTION_487();
  sub_21AF99BE0(v446, v447, v448);
  OUTLINED_FUNCTION_826();
  OUTLINED_FUNCTION_487();
  sub_21AF99BE0(v449, v450, v451);
  if ((v445 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_199:
  OUTLINED_FUNCTION_28_1(v201 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__mailRankingSignals, &v660);
  OUTLINED_FUNCTION_474();
  v452 = OUTLINED_FUNCTION_600();
  OUTLINED_FUNCTION_28_1(v452, &v659);
  OUTLINED_FUNCTION_591();
  OUTLINED_FUNCTION_474();
  OUTLINED_FUNCTION_397();
  v453 = OUTLINED_FUNCTION_538();
  OUTLINED_FUNCTION_37_1(v453, v454, v595);
  if (v123)
  {
    sub_21AF99BE0(v596, &qword_27CD44990, &qword_21B118138);
    v455 = OUTLINED_FUNCTION_599(v599);
    OUTLINED_FUNCTION_37_1(v455, v456, v595);
    if (v123)
    {
      sub_21AF99BE0(v599, &qword_27CD44990, &qword_21B118138);
      goto LABEL_211;
    }

LABEL_207:
    v386 = &qword_27CD46DE8;
    v387 = &qword_21B127D68;
    v388 = v599;
    goto LABEL_192;
  }

  sub_21B0AA940();
  v457 = OUTLINED_FUNCTION_539();
  OUTLINED_FUNCTION_37_1(v457, v458, v595);
  if (v459)
  {
    sub_21AF99BE0(v596, &qword_27CD44990, &qword_21B118138);
    sub_21B03183C();
    goto LABEL_207;
  }

  v460 = v598;
  OUTLINED_FUNCTION_824(v599);
  v461 = *(v595 + 20);
  v462 = *(v597 + v461);
  v463 = *(v460 + v461);
  if (v462 != v463 && !sub_21B047160(v462, v463))
  {
    goto LABEL_191;
  }

  sub_21B111EC4();
  OUTLINED_FUNCTION_0_15();
  sub_21B099CBC(v464, v465, MEMORY[0x277D216D0]);
  OUTLINED_FUNCTION_541();
  v466 = sub_21B1123C4();
  sub_21B03183C();
  OUTLINED_FUNCTION_487();
  sub_21AF99BE0(v467, v468, v469);
  OUTLINED_FUNCTION_98();
  sub_21B03183C();
  OUTLINED_FUNCTION_487();
  sub_21AF99BE0(v470, v471, v472);
  if ((v466 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_211:
  v473 = &qword_27CD44000;
  OUTLINED_FUNCTION_28_1(v201 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__mailResultDetails, &v658);
  OUTLINED_FUNCTION_474();
  v474 = OUTLINED_FUNCTION_600();
  OUTLINED_FUNCTION_28_1(v474, &v657);
  OUTLINED_FUNCTION_591();
  OUTLINED_FUNCTION_474();
  OUTLINED_FUNCTION_397();
  v475 = OUTLINED_FUNCTION_538();
  OUTLINED_FUNCTION_37_1(v475, v476, v603);
  if (v123)
  {
    sub_21AF99BE0(v601, &unk_27CD449A0, &qword_21B118140);
    v477 = OUTLINED_FUNCTION_599(v605);
    OUTLINED_FUNCTION_37_1(v477, v478, v603);
    if (v123)
    {
      sub_21AF99BE0(v605, &unk_27CD449A0, &qword_21B118140);
      goto LABEL_221;
    }

LABEL_219:
    v386 = &qword_27CD46DE0;
    v387 = &qword_21B127D60;
    v388 = v605;
    goto LABEL_192;
  }

  sub_21B0AA940();
  v479 = OUTLINED_FUNCTION_539();
  OUTLINED_FUNCTION_37_1(v479, v480, v603);
  if (v481)
  {
    sub_21AF99BE0(v601, &unk_27CD449A0, &qword_21B118140);
    sub_21B03183C();
    goto LABEL_219;
  }

  sub_21B03179C(&qword_27CD44000 + v605);
  OUTLINED_FUNCTION_107();
  v482 = static Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback.== infix(_:_:)();
  sub_21B03183C();
  v473 = &unk_27CD449A0;
  OUTLINED_FUNCTION_487();
  sub_21AF99BE0(v483, v484, v485);
  OUTLINED_FUNCTION_826();
  OUTLINED_FUNCTION_487();
  sub_21AF99BE0(v486, v487, v488);
  if ((v482 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_221:
  OUTLINED_FUNCTION_28_1(v201 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isVideoAssetFromPhotos, &v656);
  v489 = OUTLINED_FUNCTION_506();
  OUTLINED_FUNCTION_28_1(v489, &v655);
  OUTLINED_FUNCTION_524();
  if (!v123)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_28_1(v201 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isMailInstantAnswerUpdated, &v654);
  v490 = OUTLINED_FUNCTION_506();
  OUTLINED_FUNCTION_28_1(v490, &v653);
  OUTLINED_FUNCTION_524();
  if (!v123)
  {
    goto LABEL_27;
  }

  v491 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__indexOfSectionWhenRanked;
  OUTLINED_FUNCTION_28_1(v201 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__indexOfSectionWhenRanked, &v652);
  LODWORD(v491) = *(v201 + v491);
  v492 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__indexOfSectionWhenRanked;
  v493 = OUTLINED_FUNCTION_506();
  OUTLINED_FUNCTION_28_1(v493, &v651);
  if (v491 != *(v473 + v492))
  {
    goto LABEL_27;
  }

  v494 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__indexOfResultInSectionWhenRanked;
  OUTLINED_FUNCTION_28_1(v201 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__indexOfResultInSectionWhenRanked, &v650);
  LODWORD(v494) = *(v201 + v494);
  v495 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__indexOfResultInSectionWhenRanked;
  v496 = OUTLINED_FUNCTION_506();
  OUTLINED_FUNCTION_28_1(v496, &v649);
  if (v494 != *(v473 + v495))
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_28_1(v201 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__safariAttributes, &v648);
  OUTLINED_FUNCTION_474();
  v497 = OUTLINED_FUNCTION_600();
  OUTLINED_FUNCTION_28_1(v497, &v647);
  OUTLINED_FUNCTION_591();
  OUTLINED_FUNCTION_474();
  OUTLINED_FUNCTION_397();
  v498 = OUTLINED_FUNCTION_538();
  OUTLINED_FUNCTION_37_1(v498, v499, v608);
  if (v123)
  {
    sub_21AF99BE0(v607, &qword_27CD449D0, &qword_21B118148);
    v500 = OUTLINED_FUNCTION_599(v611);
    OUTLINED_FUNCTION_37_1(v500, v501, v608);
    if (v123)
    {
      sub_21AF99BE0(v611, &qword_27CD449D0, &qword_21B118148);
      goto LABEL_232;
    }

LABEL_243:
    v386 = &qword_27CD46DD8;
    v387 = &qword_21B127D58;
    v388 = v611;
    goto LABEL_192;
  }

  sub_21B0AA940();
  v508 = OUTLINED_FUNCTION_539();
  OUTLINED_FUNCTION_37_1(v508, v509, v608);
  if (v510)
  {
    sub_21AF99BE0(v607, &qword_27CD449D0, &qword_21B118148);
    sub_21B03183C();
    goto LABEL_243;
  }

  v511 = v610;
  OUTLINED_FUNCTION_824(v611);
  v512 = *v609;
  v513 = *v511;
  if (*(v511 + 8) == 1)
  {
    if (v513)
    {
      if (v513 == 1)
      {
        if (v512 != 1)
        {
LABEL_191:
          sub_21B03183C();
          OUTLINED_FUNCTION_634();
          sub_21AF99BE0(v438, v439, v440);
          sub_21B03183C();
          OUTLINED_FUNCTION_634();
          goto LABEL_192;
        }
      }

      else if (v512 != 2)
      {
        goto LABEL_191;
      }
    }

    else if (v512)
    {
      goto LABEL_191;
    }
  }

  else if (v512 != v513)
  {
    goto LABEL_191;
  }

  sub_21B111EC4();
  OUTLINED_FUNCTION_0_15();
  v516 = sub_21B099CBC(v514, v515, MEMORY[0x277D216D0]);
  v519 = OUTLINED_FUNCTION_695(v516, v517, v518, v516);
  sub_21B03183C();
  OUTLINED_FUNCTION_487();
  sub_21AF99BE0(v520, v521, v522);
  OUTLINED_FUNCTION_98();
  sub_21B03183C();
  OUTLINED_FUNCTION_487();
  sub_21AF99BE0(v523, v524, v525);
  if ((v519 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_232:
  OUTLINED_FUNCTION_28_1(v201 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__hasAppTopHitShortcut_p, &v646);
  v502 = OUTLINED_FUNCTION_506();
  OUTLINED_FUNCTION_28_1(v502, &v645);
  OUTLINED_FUNCTION_524();
  if (!v123)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_28_1(v201 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__photosAttributes, &v644);
  OUTLINED_FUNCTION_474();
  v503 = OUTLINED_FUNCTION_600();
  OUTLINED_FUNCTION_28_1(v503, &v643);
  OUTLINED_FUNCTION_591();
  OUTLINED_FUNCTION_474();
  OUTLINED_FUNCTION_397();
  v504 = OUTLINED_FUNCTION_538();
  OUTLINED_FUNCTION_37_1(v504, v505, v615);
  if (v123)
  {
    sub_21AF99BE0(v613, &qword_27CD449E8, &qword_21B118150);
    v506 = OUTLINED_FUNCTION_599(v617);
    OUTLINED_FUNCTION_37_1(v506, v507, v615);
    if (v123)
    {
      sub_21AF99BE0(v617, &qword_27CD449E8, &qword_21B118150);
      goto LABEL_261;
    }

LABEL_255:
    v386 = &qword_27CD46DD0;
    v387 = &qword_21B127D50;
    v388 = v617;
    goto LABEL_192;
  }

  sub_21B0AA940();
  v526 = OUTLINED_FUNCTION_539();
  OUTLINED_FUNCTION_37_1(v526, v527, v615);
  if (v528)
  {
    sub_21AF99BE0(v613, &qword_27CD449E8, &qword_21B118150);
    sub_21B03183C();
    goto LABEL_255;
  }

  sub_21B03179C(&qword_27CD44000 + v617);
  v529 = OUTLINED_FUNCTION_107();
  v533 = static Apple_Parsec_Feedback_V2_PhotosAttributes.== infix(_:_:)(v529, v530, v531, v532);
  sub_21B03183C();
  OUTLINED_FUNCTION_487();
  sub_21AF99BE0(v534, v535, v536);
  OUTLINED_FUNCTION_826();
  OUTLINED_FUNCTION_487();
  sub_21AF99BE0(v537, v538, v539);
  if ((v533 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_261:
  OUTLINED_FUNCTION_28_1(v201 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__photosAggregatedInfo, &v642);
  OUTLINED_FUNCTION_474();
  v540 = OUTLINED_FUNCTION_600();
  OUTLINED_FUNCTION_28_1(v540, &v641);
  OUTLINED_FUNCTION_591();
  OUTLINED_FUNCTION_474();
  OUTLINED_FUNCTION_397();
  v541 = OUTLINED_FUNCTION_538();
  OUTLINED_FUNCTION_37_1(v541, v542, v620);
  if (v123)
  {
    sub_21AF99BE0(v619, &qword_27CD449F8, &qword_21B118158);
    v543 = OUTLINED_FUNCTION_599(v572);
    OUTLINED_FUNCTION_37_1(v543, v544, v620);
    if (v123)
    {
      v545 = sub_21AF99BE0(v572, &qword_27CD449F8, &qword_21B118158);
      goto LABEL_274;
    }

LABEL_269:
    v386 = &qword_27CD46DC8;
    v387 = &qword_21B127D48;
    v388 = v572;
    goto LABEL_192;
  }

  sub_21B0AA940();
  v546 = OUTLINED_FUNCTION_539();
  OUTLINED_FUNCTION_37_1(v546, v547, v620);
  if (v548)
  {
    sub_21AF99BE0(v619, &qword_27CD449F8, &qword_21B118158);
    sub_21B03183C();
    goto LABEL_269;
  }

  v549 = v622;
  sub_21B03179C(&qword_27CD44000 + v572);
  if (!sub_21AFB4A88(*v621, *(v621 + 8), *v549) || !sub_21AFB4A88(*(v621 + 16), *(v621 + 24), v622[2]) || !sub_21AFB4A88(*(v621 + 32), *(v621 + 40), v622[4]))
  {
    goto LABEL_191;
  }

  sub_21B111EC4();
  OUTLINED_FUNCTION_0_15();
  v552 = sub_21B099CBC(v550, v551, MEMORY[0x277D216D0]);
  v555 = OUTLINED_FUNCTION_695(v552, v553, v554, v552);
  sub_21B03183C();
  OUTLINED_FUNCTION_487();
  sub_21AF99BE0(v556, v557, v558);
  OUTLINED_FUNCTION_98();
  sub_21B03183C();
  OUTLINED_FUNCTION_487();
  v545 = sub_21AF99BE0(v559, v560, v561);
  if ((v555 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_274:
  OUTLINED_FUNCTION_587(v545, &v640);
  OUTLINED_FUNCTION_834();
  OUTLINED_FUNCTION_850();
  OUTLINED_FUNCTION_510(v562, &v639);
  v563 = OUTLINED_FUNCTION_490();
  v566 = sub_21AFB4A88(v563, v564, v565);
  if (!v566)
  {
    goto LABEL_27;
  }

  v567 = (v201 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__thirdPartyNavigationIntentScore);
  OUTLINED_FUNCTION_587(v566, &v638);
  v568 = *v567;

  v570 = (v573 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__thirdPartyNavigationIntentScore);
  OUTLINED_FUNCTION_587(v569, &v637);
  v571 = *v570;

  return v568 == v571;
}

uint64_t sub_21B03FE9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46B20, type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchResultForFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B03FF1C(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD44D08, type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchResultForFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B03FF8C(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD44D08, type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchResultForFeedback);

  return sub_21B112114();
}

uint64_t sub_21B040024()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD43FB0);
  __swift_project_value_buffer(v0, qword_27CD43FB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B1141D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "totalNumberOfAssets";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "totalNumberOfEmbeddingMatchedAssets";
  *(v10 + 1) = 35;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "totalNumberOfMetadataMatchedAssets";
  *(v12 + 1) = 34;
  v12[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Feedback_V2_PhotosAggregatedInfo.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_10_2();
        sub_21AF846AC();
        break;
      case 2:
        v5 = OUTLINED_FUNCTION_10_2();
        sub_21B040334(v5, v6);
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_10_2();
        sub_21B0402CC(v3, v4);
        break;
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Feedback_V2_PhotosAggregatedInfo.== infix(_:_:)(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_340(a1);
  if (!sub_21AFB4A88(v3, *(v2 + 8), *v1))
  {
    return 0;
  }

  v4 = OUTLINED_FUNCTION_848();
  if (!sub_21AFB4A88(v4, v5, v6))
  {
    return 0;
  }

  v7 = OUTLINED_FUNCTION_492();
  if (!sub_21AFB4A88(v7, v8, v9))
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo(0);
  OUTLINED_FUNCTION_736();
  OUTLINED_FUNCTION_0_15();
  v12 = sub_21B099CBC(v10, v11, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_40_1(v12) & 1;
}

uint64_t sub_21B0405E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46B18, type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B040668(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45A18, type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B0406D8(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD45A18, type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo);

  return sub_21B112114();
}

uint64_t sub_21B040770()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD43FC8);
  __swift_project_value_buffer(v0, qword_27CD43FC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113DA0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "positionIndex";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "isEmbeddingMatched";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "isMetadataMatched";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "isVideo";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "isFavorite";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "photosSuggestionType";
  *(v18 + 1) = 20;
  v18[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Feedback_V2_PhotosAttributes.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_238();
        sub_21B112094();
        break;
      case 2:
      case 3:
      case 4:
      case 5:
        OUTLINED_FUNCTION_49_1();
        sub_21B111F94();
        break;
      case 6:
        v3 = OUTLINED_FUNCTION_10_2();
        sub_21B040B04(v3, v4);
        break;
      default:
        continue;
    }
  }
}

void Apple_Parsec_Feedback_V2_PhotosAttributes.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_800();
  if (!OUTLINED_FUNCTION_25_2() || (OUTLINED_FUNCTION_35_3(), sub_21B112204(), !v18))
  {
    if (*(v19 + 8) != 1 || (OUTLINED_FUNCTION_36_1(), sub_21B112164(), !v18))
    {
      if (*(v19 + 9) != 1 || (OUTLINED_FUNCTION_36_1(), sub_21B112164(), !v18))
      {
        if (*(v19 + 10) != 1 || (OUTLINED_FUNCTION_36_1(), sub_21B112164(), !v18))
        {
          if (*(v19 + 11) != 1 || (OUTLINED_FUNCTION_36_1(), sub_21B112164(), !v18))
          {
            if (!*(v19 + 16) || (OUTLINED_FUNCTION_472(), sub_21B099DAC(), OUTLINED_FUNCTION_58_0(), sub_21B112174(), !v18))
            {
              type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(0);
              OUTLINED_FUNCTION_27_2();
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_799();
}

uint64_t static Apple_Parsec_Feedback_V2_PhotosAttributes.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_282();
  if (!v6)
  {
    return 0;
  }

  OUTLINED_FUNCTION_81();
  if (*(v7 + 8) != *(v8 + 8))
  {
    return 0;
  }

  if (v5[9] != v4[9])
  {
    return 0;
  }

  if (v5[10] != v4[10])
  {
    return 0;
  }

  if (v5[11] != v4[11])
  {
    return 0;
  }

  v9 = OUTLINED_FUNCTION_848();
  if (!sub_21AFB4A88(v9, v10, v11))
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(0);
  OUTLINED_FUNCTION_873();
  OUTLINED_FUNCTION_0_15();
  v14 = sub_21B099CBC(v12, v13, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_40_1(v14) & 1;
}

uint64_t sub_21B040E18(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46B10, type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_PhotosAttributes);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B040E98(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45A30, type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_PhotosAttributes);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B040F08(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD45A30, type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_PhotosAttributes);

  return sub_21B112114();
}

uint64_t sub_21B04100C()
{
  OUTLINED_FUNCTION_515();
  while (1)
  {
    OUTLINED_FUNCTION_30_2();
    result = sub_21B111F64();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_35_2();
      OUTLINED_FUNCTION_445();
      v0();
    }
  }

  return result;
}

void Apple_Parsec_Feedback_V2_SafariAttributes.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_800();
  OUTLINED_FUNCTION_26_3();
  if (!*v18 || (OUTLINED_FUNCTION_472(), sub_21B099E00(), OUTLINED_FUNCTION_58_0(), sub_21B112174(), !v19))
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_SafariAttributes(0);
    OUTLINED_FUNCTION_27_2();
  }

  OUTLINED_FUNCTION_799();
}

uint64_t static Apple_Parsec_Feedback_V2_SafariAttributes.== infix(_:_:)()
{
  OUTLINED_FUNCTION_81();
  v1 = *v0;
  v3 = *v2;
  if (*(v2 + 8) == 1)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        if (v1 != 1)
        {
          return 0;
        }
      }

      else if (v1 != 2)
      {
        return 0;
      }

LABEL_7:
      type metadata accessor for Apple_Parsec_Feedback_V2_SafariAttributes(0);
      OUTLINED_FUNCTION_870();
      OUTLINED_FUNCTION_0_15();
      v6 = sub_21B099CBC(v4, v5, MEMORY[0x277D216D0]);
      return OUTLINED_FUNCTION_40_1(v6) & 1;
    }

    if (!v1)
    {
      goto LABEL_7;
    }
  }

  else if (v1 == v3)
  {
    goto LABEL_7;
  }

  return 0;
}

uint64_t sub_21B0412A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46B08, type metadata accessor for Apple_Parsec_Feedback_V2_SafariAttributes, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SafariAttributes);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B041324(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45A48, type metadata accessor for Apple_Parsec_Feedback_V2_SafariAttributes, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SafariAttributes);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B041394(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD45A48, type metadata accessor for Apple_Parsec_Feedback_V2_SafariAttributes, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SafariAttributes);

  return sub_21B112114();
}

uint64_t sub_21B041420()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, &qword_27CD43FF8);
  __swift_project_value_buffer(v0, &qword_27CD43FF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B1141D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "dataSources";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "suggestionScore";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "skgMegadomeSpotlightIndexEntries";
  *(v12 + 1) = 32;
  v12[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_49_1();
        sub_21B111FF4();
        break;
      case 2:
        OUTLINED_FUNCTION_49_1();
        sub_21B111FE4();
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_10_2();
        sub_21B0416D0(v3, v4);
        break;
    }
  }

  return result;
}

void Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_800();
  OUTLINED_FUNCTION_26_3();
  if (!*v18 || (OUTLINED_FUNCTION_472(), sub_21B099E54(), OUTLINED_FUNCTION_58_0(), sub_21B112174(), !v19))
  {
    if (*(v20 + 12) == 0.0 || (OUTLINED_FUNCTION_143(), sub_21B112194(), !v19))
    {
      if (!*(v20 + 16) || (OUTLINED_FUNCTION_36_1(), sub_21B1121A4(), !v19))
      {
        type metadata accessor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback(0);
        OUTLINED_FUNCTION_27_2();
      }
    }
  }

  OUTLINED_FUNCTION_799();
}

uint64_t static Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback.== infix(_:_:)()
{
  OUTLINED_FUNCTION_81();
  v1 = *v0;
  v3 = *v2;
  if (*(v2 + 8) == 1)
  {
    switch(v3)
    {
      case 1:
        if (v1 != 1)
        {
          return 0;
        }

        goto LABEL_6;
      case 2:
        if (v1 != 2)
        {
          return 0;
        }

        goto LABEL_6;
      case 3:
        if (v1 != 3)
        {
          return 0;
        }

        goto LABEL_6;
      default:
        if (!v1)
        {
          goto LABEL_6;
        }

        return 0;
    }
  }

  if (v1 == v3)
  {
LABEL_6:
    OUTLINED_FUNCTION_722();
    if (v4)
    {
      OUTLINED_FUNCTION_737();
      if (v4)
      {
        type metadata accessor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback(0);
        OUTLINED_FUNCTION_736();
        OUTLINED_FUNCTION_0_15();
        v7 = sub_21B099CBC(v5, v6, MEMORY[0x277D216D0]);
        return OUTLINED_FUNCTION_40_1(v7) & 1;
      }
    }
  }

  return 0;
}

uint64_t sub_21B04197C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46B00, type metadata accessor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B0419FC(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45A60, type metadata accessor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B041A6C(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD45A60, type metadata accessor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback);

  return sub_21B112114();
}

uint64_t sub_21B041AF8()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD44010);
  __swift_project_value_buffer(v0, qword_27CD44010);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v146 = swift_allocObject();
  *(v146 + 16) = xmmword_21B1180A0;
  v4 = v146 + v3 + v1[14];
  *(v146 + v3) = 1;
  *v4 = "wasReorderedByRecency";
  *(v4 + 8) = 21;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_21B112234();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v146 + v3 + v2 + v1[14];
  *(v146 + v3 + v2) = 2;
  *v8 = "numEngagements";
  *(v8 + 8) = 14;
  *(v8 + 16) = 2;
  v7();
  v9 = (v146 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "numDaysEngagedLast30Days";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v7();
  v11 = (v146 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "averageEngagementAgeLast7Days";
  *(v12 + 1) = 29;
  v12[16] = 2;
  v7();
  v13 = (v146 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "averageEngagementAgeLast14Days";
  *(v14 + 1) = 30;
  v14[16] = 2;
  v7();
  v15 = (v146 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "averageEngagementAgeLast21Days";
  *(v16 + 1) = 30;
  v16[16] = 2;
  v7();
  v17 = (v146 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "averageEngagementAgeLast30Days";
  *(v18 + 1) = 30;
  v18[16] = 2;
  v7();
  v19 = (v146 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "daysSinceReceipt";
  *(v20 + 1) = 16;
  v20[16] = 2;
  v7();
  v21 = (v146 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "l1Score";
  *(v22 + 1) = 7;
  v22[16] = 2;
  v7();
  v23 = (v146 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "l2Score";
  *(v24 + 1) = 7;
  v24[16] = 2;
  v7();
  v25 = (v146 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "isFlagged";
  *(v26 + 1) = 9;
  v26[16] = 2;
  v7();
  v27 = (v146 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "isRepliedTo";
  *(v28 + 1) = 11;
  v28[16] = 2;
  v7();
  v29 = (v146 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "isSemanticMatch";
  *(v30 + 1) = 15;
  v30[16] = 2;
  v7();
  v31 = (v146 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "isSyntacticMatch";
  *(v32 + 1) = 16;
  v32[16] = 2;
  v7();
  v33 = (v146 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "semanticScore";
  *(v34 + 1) = 13;
  v34[16] = 2;
  v7();
  v35 = (v146 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "syntacticScore";
  *(v36 + 1) = 14;
  v36[16] = 2;
  v7();
  v37 = (v146 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 17;
  *v38 = "countUnigramMatchInAuthors";
  *(v38 + 1) = 26;
  v38[16] = 2;
  v7();
  v39 = (v146 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 18;
  *v40 = "countBigramMatchInAuthors";
  *(v40 + 1) = 25;
  v40[16] = 2;
  v7();
  v41 = (v146 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 19;
  *v42 = "countNgramMatchInAuthors";
  *(v42 + 1) = 24;
  v42[16] = 2;
  v7();
  v43 = (v146 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 20;
  *v44 = "countUnigramPrefixMatchInAuthors";
  *(v44 + 1) = 32;
  v44[16] = 2;
  v7();
  v45 = (v146 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 21;
  *v46 = "countBigramPrefixMatchInAuthors";
  *(v46 + 1) = 31;
  v46[16] = 2;
  v7();
  v47 = (v146 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 22;
  *v48 = "countNgramPrefixMatchInAuthors";
  *(v48 + 1) = 30;
  v48[16] = 2;
  v7();
  v49 = (v146 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 23;
  *v50 = "countUnigramMatchInAuthorEmailAddresses";
  *(v50 + 1) = 39;
  v50[16] = 2;
  v7();
  v51 = (v146 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 24;
  *v52 = "countBigramMatchInAuthorEmailAddresses";
  *(v52 + 1) = 38;
  v52[16] = 2;
  v7();
  v53 = (v146 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 25;
  *v54 = "countNgramMatchInAuthorEmailAddresses";
  *(v54 + 1) = 37;
  v54[16] = 2;
  v7();
  v55 = (v146 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 26;
  *v56 = "countUnigramPrefixMatchInAuthorEmailAddresses";
  *(v56 + 1) = 45;
  v56[16] = 2;
  v7();
  v57 = (v146 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 27;
  *v58 = "countBigramPrefixMatchInAuthorEmailAddresses";
  *(v58 + 1) = 44;
  v58[16] = 2;
  v7();
  v59 = (v146 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 28;
  *v60 = "countNgramPrefixMatchInAuthorEmailAddresses";
  *(v60 + 1) = 43;
  v60[16] = 2;
  v7();
  v61 = (v146 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 29;
  *v62 = "countUnigramMatchInSubject";
  *(v62 + 1) = 26;
  v62[16] = 2;
  v7();
  v63 = (v146 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 30;
  *v64 = "countBigramMatchInSubject";
  *(v64 + 1) = 25;
  v64[16] = 2;
  v7();
  v65 = (v146 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 31;
  *v66 = "countNgramMatchInSubject";
  *(v66 + 1) = 24;
  v66[16] = 2;
  v7();
  v67 = (v146 + v3 + 31 * v2);
  v68 = v67 + v1[14];
  *v67 = 32;
  *v68 = "countUnigramPrefixMatchInSubject";
  *(v68 + 1) = 32;
  v68[16] = 2;
  v7();
  v69 = (v146 + v3 + 32 * v2);
  v70 = v69 + v1[14];
  *v69 = 33;
  *v70 = "countBigramPrefixMatchInSubject";
  *(v70 + 1) = 31;
  v70[16] = 2;
  v7();
  v71 = (v146 + v3 + 33 * v2);
  v72 = v71 + v1[14];
  *v71 = 34;
  *v72 = "countNgramPrefixMatchInSubject";
  *(v72 + 1) = 30;
  v72[16] = 2;
  v7();
  v73 = (v146 + v3 + 34 * v2);
  v74 = v73 + v1[14];
  *v73 = 35;
  *v74 = "countUnigramMatchInTextContent";
  *(v74 + 1) = 30;
  v74[16] = 2;
  v7();
  v75 = (v146 + v3 + 35 * v2);
  v76 = v75 + v1[14];
  *v75 = 36;
  *v76 = "countBigramMatchInTextContent";
  *(v76 + 1) = 29;
  v76[16] = 2;
  v7();
  v77 = (v146 + v3 + 36 * v2);
  v78 = v77 + v1[14];
  *v77 = 37;
  *v78 = "countNgramMatchInTextContent";
  *(v78 + 1) = 28;
  v78[16] = 2;
  v7();
  v79 = (v146 + v3 + 37 * v2);
  v80 = v79 + v1[14];
  *v79 = 38;
  *v80 = "countUnigramPrefixMatchInTextContent";
  *(v80 + 1) = 36;
  v80[16] = 2;
  v7();
  v81 = (v146 + v3 + 38 * v2);
  v82 = v81 + v1[14];
  *v81 = 39;
  *v82 = "countBigramPrefixMatchInTextContent";
  *(v82 + 1) = 35;
  v82[16] = 2;
  v7();
  v83 = (v146 + v3 + 39 * v2);
  v84 = v83 + v1[14];
  *v83 = 40;
  *v84 = "countNgramPrefixMatchInTextContent";
  *(v84 + 1) = 34;
  v84[16] = 2;
  v7();
  v85 = (v146 + v3 + 40 * v2);
  v86 = v85 + v1[14];
  *v85 = 41;
  *v86 = "countUnigramMatchInRecipients";
  *(v86 + 1) = 29;
  v86[16] = 2;
  v7();
  v87 = (v146 + v3 + 41 * v2);
  v88 = v87 + v1[14];
  *v87 = 42;
  *v88 = "countBigramMatchInRecipients";
  *(v88 + 1) = 28;
  v88[16] = 2;
  v7();
  v89 = (v146 + v3 + 42 * v2);
  v90 = v89 + v1[14];
  *v89 = 43;
  *v90 = "countNgramMatchInRecipients";
  *(v90 + 1) = 27;
  v90[16] = 2;
  v7();
  v91 = (v146 + v3 + 43 * v2);
  v92 = v91 + v1[14];
  *v91 = 44;
  *v92 = "countUnigramPrefixMatchInRecipients";
  *(v92 + 1) = 35;
  v92[16] = 2;
  v7();
  v93 = (v146 + v3 + 44 * v2);
  v94 = v93 + v1[14];
  *v93 = 45;
  *v94 = "countBigramPrefixMatchInRecipients";
  *(v94 + 1) = 34;
  v94[16] = 2;
  v7();
  v95 = (v146 + v3 + 45 * v2);
  v96 = v95 + v1[14];
  *v95 = 46;
  *v96 = "countNgramPrefixMatchInRecipients";
  *(v96 + 1) = 33;
  v96[16] = 2;
  v7();
  v97 = (v146 + v3 + 46 * v2);
  v98 = v97 + v1[14];
  *v97 = 47;
  *v98 = "countUnigramMatchInRecipientEmailAddresses";
  *(v98 + 1) = 42;
  v98[16] = 2;
  v7();
  v99 = (v146 + v3 + 47 * v2);
  v100 = v99 + v1[14];
  *v99 = 48;
  *v100 = "countBigramMatchInRecipientEmailAddresses";
  *(v100 + 1) = 41;
  v100[16] = 2;
  v7();
  v101 = (v146 + v3 + 48 * v2);
  v102 = v101 + v1[14];
  *v101 = 49;
  *v102 = "countNgramMatchInRecipientEmailAddresses";
  *(v102 + 1) = 40;
  v102[16] = 2;
  v7();
  v103 = (v146 + v3 + 49 * v2);
  v104 = v103 + v1[14];
  *v103 = 50;
  *v104 = "countUnigramPrefixMatchInRecipientEmailAddresses";
  *(v104 + 1) = 48;
  v104[16] = 2;
  v7();
  v105 = (v146 + v3 + 50 * v2);
  v106 = v105 + v1[14];
  *v105 = 51;
  *v106 = "countBigramPrefixMatchInRecipientEmailAddresses";
  *(v106 + 1) = 47;
  v106[16] = 2;
  v7();
  v107 = (v146 + v3 + 51 * v2);
  v108 = v107 + v1[14];
  *v107 = 52;
  *v108 = "countNgramPrefixMatchInRecipientEmailAddresses";
  *(v108 + 1) = 46;
  v108[16] = 2;
  v7();
  v109 = (v146 + v3 + 52 * v2);
  v110 = v109 + v1[14];
  *v109 = 53;
  *v110 = "countUnigramMatchInEmailAddresses";
  *(v110 + 1) = 33;
  v110[16] = 2;
  v7();
  v111 = (v146 + v3 + 53 * v2);
  v112 = v111 + v1[14];
  *v111 = 54;
  *v112 = "countBigramMatchInEmailAddresses";
  *(v112 + 1) = 32;
  v112[16] = 2;
  v7();
  v113 = (v146 + v3 + 54 * v2);
  v114 = v113 + v1[14];
  *v113 = 55;
  *v114 = "countNgramMatchInEmailAddresses";
  *(v114 + 1) = 31;
  v114[16] = 2;
  v7();
  v115 = (v146 + v3 + 55 * v2);
  v116 = v115 + v1[14];
  *v115 = 56;
  *v116 = "countUnigramPrefixMatchInEmailAddresses";
  *(v116 + 1) = 39;
  v116[16] = 2;
  v7();
  v117 = (v146 + v3 + 56 * v2);
  v118 = v117 + v1[14];
  *v117 = 57;
  *v118 = "countBigramPrefixMatchInEmailAddresses";
  *(v118 + 1) = 38;
  v118[16] = 2;
  v7();
  v119 = (v146 + v3 + 57 * v2);
  v120 = v119 + v1[14];
  *v119 = 58;
  *v120 = "countNgramPrefixMatchInEmailAddresses";
  *(v120 + 1) = 37;
  v120[16] = 2;
  v7();
  v121 = (v146 + v3 + 58 * v2);
  v122 = v121 + v1[14];
  *v121 = 59;
  *v122 = "countUnigramMatchInAttachmentTypes";
  *(v122 + 1) = 34;
  v122[16] = 2;
  v7();
  v123 = (v146 + v3 + 59 * v2);
  v124 = v123 + v1[14];
  *v123 = 60;
  *v124 = "countBigramMatchInAttachmentTypes";
  *(v124 + 1) = 33;
  v124[16] = 2;
  v7();
  v125 = (v146 + v3 + 60 * v2);
  v126 = v125 + v1[14];
  *v125 = 61;
  *v126 = "countNgramMatchInAttachmentTypes";
  *(v126 + 1) = 32;
  v126[16] = 2;
  v7();
  v127 = (v146 + v3 + 61 * v2);
  v128 = v127 + v1[14];
  *v127 = 62;
  *v128 = "countUnigramPrefixMatchInAttachmentTypes";
  *(v128 + 1) = 40;
  v128[16] = 2;
  v7();
  v129 = (v146 + v3 + 62 * v2);
  v130 = v129 + v1[14];
  *v129 = 63;
  *v130 = "countBigramPrefixMatchInAttachmentTypes";
  *(v130 + 1) = 39;
  v130[16] = 2;
  v7();
  v131 = (v146 + v3 + 63 * v2);
  v132 = v131 + v1[14];
  *v131 = 64;
  *v132 = "countNgramPrefixMatchInAttachmentTypes";
  *(v132 + 1) = 38;
  v132[16] = 2;
  v7();
  v133 = (v146 + v3 + (v2 << 6));
  v134 = v133 + v1[14];
  *v133 = 65;
  *v134 = "countUnigramMatchInAttachmentNames";
  *(v134 + 1) = 34;
  v134[16] = 2;
  v7();
  v135 = (v146 + v3 + 65 * v2);
  v136 = v135 + v1[14];
  *v135 = 66;
  *v136 = "countBigramMatchInAttachmentNames";
  *(v136 + 1) = 33;
  v136[16] = 2;
  v7();
  v137 = (v146 + v3 + 66 * v2);
  v138 = v137 + v1[14];
  *v137 = 67;
  *v138 = "countNgramMatchInAttachmentNames";
  *(v138 + 1) = 32;
  v138[16] = 2;
  v7();
  v139 = (v146 + v3 + 67 * v2);
  v140 = v139 + v1[14];
  *v139 = 68;
  *v140 = "countUnigramPrefixMatchInAttachmentNames";
  *(v140 + 1) = 40;
  v140[16] = 2;
  v7();
  v141 = (v146 + v3 + 68 * v2);
  v142 = v141 + v1[14];
  *v141 = 69;
  *v142 = "countBigramPrefixMatchInAttachmentNames";
  *(v142 + 1) = 39;
  v142[16] = 2;
  v7();
  v143 = (v146 + v3 + 69 * v2);
  v144 = v143 + v1[14];
  *v143 = 70;
  *v144 = "countNgramPrefixMatchInAttachmentNames";
  *(v144 + 1) = 38;
  v144[16] = 2;
  v7();
  return sub_21B112244();
}

void sub_21B042D08()
{
  type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  bzero((v0 + 24), 0x114uLL);
  qword_27CD44028 = v0;
}

uint64_t sub_21B042DF8(uint64_t a1)
{
  *(v1 + 16) = 0;
  bzero((v1 + 24), 0x114uLL);
  swift_beginAccess();
  v3 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v3;
  swift_beginAccess();
  v4 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 24) = v4;
  swift_beginAccess();
  v5 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 32) = v5;
  swift_beginAccess();
  LODWORD(v5) = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 40) = v5;
  swift_beginAccess();
  LODWORD(v5) = *(a1 + 44);
  swift_beginAccess();
  *(v1 + 44) = v5;
  swift_beginAccess();
  LODWORD(v5) = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 48) = v5;
  swift_beginAccess();
  LODWORD(v5) = *(a1 + 52);
  swift_beginAccess();
  *(v1 + 52) = v5;
  swift_beginAccess();
  v6 = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 56) = v6;
  swift_beginAccess();
  v7 = *(a1 + 64);
  swift_beginAccess();
  *(v1 + 64) = v7;
  swift_beginAccess();
  v8 = *(a1 + 68);
  swift_beginAccess();
  *(v1 + 68) = v8;
  swift_beginAccess();
  LOBYTE(v6) = *(a1 + 72);
  swift_beginAccess();
  *(v1 + 72) = v6;
  swift_beginAccess();
  LOBYTE(v6) = *(a1 + 73);
  swift_beginAccess();
  *(v1 + 73) = v6;
  swift_beginAccess();
  LOBYTE(v6) = *(a1 + 74);
  swift_beginAccess();
  *(v1 + 74) = v6;
  swift_beginAccess();
  LOBYTE(v6) = *(a1 + 75);
  swift_beginAccess();
  *(v1 + 75) = v6;
  swift_beginAccess();
  v9 = *(a1 + 76);
  swift_beginAccess();
  *(v1 + 76) = v9;
  swift_beginAccess();
  v10 = *(a1 + 80);
  swift_beginAccess();
  *(v1 + 80) = v10;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 84);
  swift_beginAccess();
  *(v1 + 84) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 88);
  swift_beginAccess();
  *(v1 + 88) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 92);
  swift_beginAccess();
  *(v1 + 92) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 96);
  swift_beginAccess();
  *(v1 + 96) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 100);
  swift_beginAccess();
  *(v1 + 100) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 104);
  swift_beginAccess();
  *(v1 + 104) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 108);
  swift_beginAccess();
  *(v1 + 108) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 112);
  swift_beginAccess();
  *(v1 + 112) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 116);
  swift_beginAccess();
  *(v1 + 116) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 120);
  swift_beginAccess();
  *(v1 + 120) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 124);
  swift_beginAccess();
  *(v1 + 124) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 128);
  swift_beginAccess();
  *(v1 + 128) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 132);
  swift_beginAccess();
  *(v1 + 132) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 136);
  swift_beginAccess();
  *(v1 + 136) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 140);
  swift_beginAccess();
  *(v1 + 140) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 144);
  swift_beginAccess();
  *(v1 + 144) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 148);
  swift_beginAccess();
  *(v1 + 148) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 152);
  swift_beginAccess();
  *(v1 + 152) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 156);
  swift_beginAccess();
  *(v1 + 156) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 160);
  swift_beginAccess();
  *(v1 + 160) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 164);
  swift_beginAccess();
  *(v1 + 164) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 168);
  swift_beginAccess();
  *(v1 + 168) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 172);
  swift_beginAccess();
  *(v1 + 172) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 176);
  swift_beginAccess();
  *(v1 + 176) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 180);
  swift_beginAccess();
  *(v1 + 180) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 184);
  swift_beginAccess();
  *(v1 + 184) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 188);
  swift_beginAccess();
  *(v1 + 188) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 192);
  swift_beginAccess();
  *(v1 + 192) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 196);
  swift_beginAccess();
  *(v1 + 196) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 200);
  swift_beginAccess();
  *(v1 + 200) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 204);
  swift_beginAccess();
  *(v1 + 204) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 208);
  swift_beginAccess();
  *(v1 + 208) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 212);
  swift_beginAccess();
  *(v1 + 212) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 216);
  swift_beginAccess();
  *(v1 + 216) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 220);
  swift_beginAccess();
  *(v1 + 220) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 224);
  swift_beginAccess();
  *(v1 + 224) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 228);
  swift_beginAccess();
  *(v1 + 228) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 232);
  swift_beginAccess();
  *(v1 + 232) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 236);
  swift_beginAccess();
  *(v1 + 236) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 240);
  swift_beginAccess();
  *(v1 + 240) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 244);
  swift_beginAccess();
  *(v1 + 244) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 248);
  swift_beginAccess();
  *(v1 + 248) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 252);
  swift_beginAccess();
  *(v1 + 252) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 256);
  swift_beginAccess();
  *(v1 + 256) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 260);
  swift_beginAccess();
  *(v1 + 260) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 264);
  swift_beginAccess();
  *(v1 + 264) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 268);
  swift_beginAccess();
  *(v1 + 268) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 272);
  swift_beginAccess();
  *(v1 + 272) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 276);
  swift_beginAccess();
  *(v1 + 276) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 280);
  swift_beginAccess();
  *(v1 + 280) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 284);
  swift_beginAccess();
  *(v1 + 284) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 288);
  swift_beginAccess();
  *(v1 + 288) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 292);
  swift_beginAccess();
  *(v1 + 292) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 296);

  swift_beginAccess();
  *(v1 + 296) = v6;
  return v1;
}

void Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_822();
  OUTLINED_FUNCTION_404();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback(0);
  OUTLINED_FUNCTION_706(v5);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    *(v3 + v4) = sub_21B042DF8(v6);
  }

  v7 = OUTLINED_FUNCTION_162();
  sub_21B043D3C(v7, v8, v9, v10);
  OUTLINED_FUNCTION_823();
}

uint64_t sub_21B044620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B111F94();
  return swift_endAccess();
}

void sub_21B0446A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_53_0();
  OUTLINED_FUNCTION_393();
  swift_beginAccess();
  OUTLINED_FUNCTION_160();
  v20 = sub_21B112094();
  OUTLINED_FUNCTION_666(v20);
  OUTLINED_FUNCTION_795();
}

uint64_t sub_21B0446F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B111F94();
  return swift_endAccess();
}

uint64_t sub_21B04477C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B111F94();
  return swift_endAccess();
}

uint64_t sub_21B044800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B111F94();
  return swift_endAccess();
}

uint64_t sub_21B044884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B112084();
  return swift_endAccess();
}

uint64_t sub_21B044908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B112084();
  return swift_endAccess();
}

uint64_t sub_21B04498C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B112084();
  return swift_endAccess();
}

uint64_t sub_21B044A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B112084();
  return swift_endAccess();
}

uint64_t sub_21B044A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B112084();
  return swift_endAccess();
}

void sub_21B044B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_53_0();
  OUTLINED_FUNCTION_393();
  swift_beginAccess();
  OUTLINED_FUNCTION_160();
  v20 = sub_21B112084();
  OUTLINED_FUNCTION_666(v20);
  OUTLINED_FUNCTION_795();
}

uint64_t sub_21B044B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B112084();
  return swift_endAccess();
}

uint64_t sub_21B044BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B112084();
  return swift_endAccess();
}

uint64_t sub_21B044C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B112084();
  return swift_endAccess();
}

uint64_t sub_21B044CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B112084();
  return swift_endAccess();
}

uint64_t sub_21B044D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B112084();
  return swift_endAccess();
}

uint64_t sub_21B044E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B112084();
  return swift_endAccess();
}

uint64_t sub_21B044E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B112084();
  return swift_endAccess();
}

uint64_t sub_21B044F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B112084();
  return swift_endAccess();
}

uint64_t sub_21B044F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B112084();
  return swift_endAccess();
}

uint64_t sub_21B045010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B112084();
  return swift_endAccess();
}

uint64_t sub_21B045094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B112084();
  return swift_endAccess();
}

uint64_t sub_21B045118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B112084();
  return swift_endAccess();
}

uint64_t sub_21B04519C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B112084();
  return swift_endAccess();
}

uint64_t sub_21B045220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B112084();
  return swift_endAccess();
}

uint64_t sub_21B0452A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B112084();
  return swift_endAccess();
}

uint64_t sub_21B045328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B112084();
  return swift_endAccess();
}

uint64_t sub_21B0453AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B112084();
  return swift_endAccess();
}

uint64_t sub_21B045430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B112084();
  return swift_endAccess();
}

uint64_t sub_21B0454B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B112084();
  return swift_endAccess();
}

uint64_t sub_21B045538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B112084();
  return swift_endAccess();
}

uint64_t sub_21B0455BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B112084();
  return swift_endAccess();
}

uint64_t sub_21B045640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B112084();
  return swift_endAccess();
}

uint64_t sub_21B0456C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B112084();
  return swift_endAccess();
}

uint64_t sub_21B045748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B112084();
  return swift_endAccess();
}

uint64_t sub_21B0457CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B112084();
  return swift_endAccess();
}

uint64_t sub_21B045850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B112084();
  return swift_endAccess();
}

uint64_t sub_21B0458D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B112084();
  return swift_endAccess();
}

uint64_t sub_21B045958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B112084();
  return swift_endAccess();
}

uint64_t sub_21B0459DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B112084();
  return swift_endAccess();
}

uint64_t sub_21B045A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B112084();
  return swift_endAccess();
}

uint64_t sub_21B045AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B112084();
  return swift_endAccess();
}

uint64_t sub_21B045B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B112084();
  return swift_endAccess();
}

uint64_t sub_21B045BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B112084();
  return swift_endAccess();
}

uint64_t sub_21B045C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B112084();
  return swift_endAccess();
}

uint64_t sub_21B045CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B112084();
  return swift_endAccess();
}

uint64_t sub_21B045D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B112084();
  return swift_endAccess();
}

uint64_t sub_21B045DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B112084();
  return swift_endAccess();
}

uint64_t sub_21B045E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B112084();
  return swift_endAccess();
}

uint64_t sub_21B045F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B112084();
  return swift_endAccess();
}

uint64_t sub_21B045F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B112084();
  return swift_endAccess();
}

uint64_t sub_21B04600C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B112084();
  return swift_endAccess();
}

uint64_t sub_21B046090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21B112084();
  return swift_endAccess();
}

uint64_t sub_21B046154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (*(a1 + 16) != 1 || (result = sub_21B112164(), !v4))
  {
    swift_beginAccess();
    if (!*(a1 + 24) || (result = sub_21B112204(), !v4))
    {
      swift_beginAccess();
      if (!*(a1 + 32) || (result = sub_21B112204(), !v4))
      {
        swift_beginAccess();
        if (!*(a1 + 40) || (result = sub_21B1121A4(), !v4))
        {
          swift_beginAccess();
          if (!*(a1 + 44) || (result = sub_21B1121A4(), !v4))
          {
            swift_beginAccess();
            if (!*(a1 + 48) || (result = sub_21B1121A4(), !v4))
            {
              swift_beginAccess();
              if (!*(a1 + 52) || (result = sub_21B1121A4(), !v4))
              {
                swift_beginAccess();
                if (!*(a1 + 56) || (result = sub_21B112204(), !v4))
                {
                  swift_beginAccess();
                  if (*(a1 + 64) == 0.0 || (result = sub_21B112194(), !v4))
                  {
                    swift_beginAccess();
                    if (*(a1 + 68) == 0.0 || (result = sub_21B112194(), !v4))
                    {
                      swift_beginAccess();
                      if (*(a1 + 72) != 1 || (result = sub_21B112164(), !v4))
                      {
                        swift_beginAccess();
                        if (*(a1 + 73) != 1 || (result = sub_21B112164(), !v4))
                        {
                          swift_beginAccess();
                          if (*(a1 + 74) != 1 || (result = sub_21B112164(), !v4))
                          {
                            swift_beginAccess();
                            if (*(a1 + 75) != 1 || (result = sub_21B112164(), !v4))
                            {
                              swift_beginAccess();
                              if (*(a1 + 76) == 0.0 || (result = sub_21B112194(), !v4))
                              {
                                swift_beginAccess();
                                if (*(a1 + 80) == 0.0 || (result = sub_21B112194(), !v4))
                                {
                                  swift_beginAccess();
                                  if (!*(a1 + 84) || (result = sub_21B1121F4(), !v4))
                                  {
                                    swift_beginAccess();
                                    if (!*(a1 + 88) || (result = sub_21B1121F4(), !v4))
                                    {
                                      swift_beginAccess();
                                      if (!*(a1 + 92) || (result = sub_21B1121F4(), !v4))
                                      {
                                        swift_beginAccess();
                                        if (!*(a1 + 96) || (result = sub_21B1121F4(), !v4))
                                        {
                                          swift_beginAccess();
                                          if (!*(a1 + 100) || (result = sub_21B1121F4(), !v4))
                                          {
                                            swift_beginAccess();
                                            if (!*(a1 + 104) || (result = sub_21B1121F4(), !v4))
                                            {
                                              swift_beginAccess();
                                              if (!*(a1 + 108) || (result = sub_21B1121F4(), !v4))
                                              {
                                                swift_beginAccess();
                                                if (!*(a1 + 112) || (result = sub_21B1121F4(), !v4))
                                                {
                                                  swift_beginAccess();
                                                  if (!*(a1 + 116) || (result = sub_21B1121F4(), !v4))
                                                  {
                                                    swift_beginAccess();
                                                    if (!*(a1 + 120) || (result = sub_21B1121F4(), !v4))
                                                    {
                                                      swift_beginAccess();
                                                      if (!*(a1 + 124) || (result = sub_21B1121F4(), !v4))
                                                      {
                                                        swift_beginAccess();
                                                        if (!*(a1 + 128) || (result = sub_21B1121F4(), !v4))
                                                        {
                                                          swift_beginAccess();
                                                          if (!*(a1 + 132) || (result = sub_21B1121F4(), !v4))
                                                          {
                                                            swift_beginAccess();
                                                            if (!*(a1 + 136) || (result = sub_21B1121F4(), !v4))
                                                            {
                                                              swift_beginAccess();
                                                              if (!*(a1 + 140) || (result = sub_21B1121F4(), !v4))
                                                              {
                                                                swift_beginAccess();
                                                                if (!*(a1 + 144) || (result = sub_21B1121F4(), !v4))
                                                                {
                                                                  swift_beginAccess();
                                                                  if (!*(a1 + 148) || (result = sub_21B1121F4(), !v4))
                                                                  {
                                                                    swift_beginAccess();
                                                                    if (!*(a1 + 152) || (result = sub_21B1121F4(), !v4))
                                                                    {
                                                                      swift_beginAccess();
                                                                      if (!*(a1 + 156) || (result = sub_21B1121F4(), !v4))
                                                                      {
                                                                        swift_beginAccess();
                                                                        if (!*(a1 + 160) || (result = sub_21B1121F4(), !v4))
                                                                        {
                                                                          swift_beginAccess();
                                                                          if (!*(a1 + 164) || (result = sub_21B1121F4(), !v4))
                                                                          {
                                                                            swift_beginAccess();
                                                                            if (!*(a1 + 168) || (result = sub_21B1121F4(), !v4))
                                                                            {
                                                                              swift_beginAccess();
                                                                              if (!*(a1 + 172) || (result = sub_21B1121F4(), !v4))
                                                                              {
                                                                                swift_beginAccess();
                                                                                if (!*(a1 + 176) || (result = sub_21B1121F4(), !v4))
                                                                                {
                                                                                  swift_beginAccess();
                                                                                  if (!*(a1 + 180) || (result = sub_21B1121F4(), !v4))
                                                                                  {
                                                                                    swift_beginAccess();
                                                                                    if (!*(a1 + 184) || (result = sub_21B1121F4(), !v4))
                                                                                    {
                                                                                      swift_beginAccess();
                                                                                      if (!*(a1 + 188) || (result = sub_21B1121F4(), !v4))
                                                                                      {
                                                                                        swift_beginAccess();
                                                                                        if (!*(a1 + 192) || (result = sub_21B1121F4(), !v4))
                                                                                        {
                                                                                          swift_beginAccess();
                                                                                          if (!*(a1 + 196) || (result = sub_21B1121F4(), !v4))
                                                                                          {
                                                                                            swift_beginAccess();
                                                                                            if (!*(a1 + 200) || (result = sub_21B1121F4(), !v4))
                                                                                            {
                                                                                              swift_beginAccess();
                                                                                              if (!*(a1 + 204) || (result = sub_21B1121F4(), !v4))
                                                                                              {
                                                                                                swift_beginAccess();
                                                                                                if (!*(a1 + 208) || (result = sub_21B1121F4(), !v4))
                                                                                                {
                                                                                                  swift_beginAccess();
                                                                                                  if (!*(a1 + 212) || (result = sub_21B1121F4(), !v4))
                                                                                                  {
                                                                                                    swift_beginAccess();
                                                                                                    if (!*(a1 + 216) || (result = sub_21B1121F4(), !v4))
                                                                                                    {
                                                                                                      swift_beginAccess();
                                                                                                      if (!*(a1 + 220) || (result = sub_21B1121F4(), !v4))
                                                                                                      {
                                                                                                        swift_beginAccess();
                                                                                                        if (!*(a1 + 224) || (result = sub_21B1121F4(), !v4))
                                                                                                        {
                                                                                                          swift_beginAccess();
                                                                                                          if (!*(a1 + 228) || (result = sub_21B1121F4(), !v4))
                                                                                                          {
                                                                                                            swift_beginAccess();
                                                                                                            if (!*(a1 + 232) || (result = sub_21B1121F4(), !v4))
                                                                                                            {
                                                                                                              swift_beginAccess();
                                                                                                              if (!*(a1 + 236) || (result = sub_21B1121F4(), !v4))
                                                                                                              {
                                                                                                                swift_beginAccess();
                                                                                                                if (!*(a1 + 240) || (result = sub_21B1121F4(), !v4))
                                                                                                                {
                                                                                                                  swift_beginAccess();
                                                                                                                  if (!*(a1 + 244) || (result = sub_21B1121F4(), !v4))
                                                                                                                  {
                                                                                                                    swift_beginAccess();
                                                                                                                    if (!*(a1 + 248) || (result = sub_21B1121F4(), !v4))
                                                                                                                    {
                                                                                                                      swift_beginAccess();
                                                                                                                      if (!*(a1 + 252) || (result = sub_21B1121F4(), !v4))
                                                                                                                      {
                                                                                                                        swift_beginAccess();
                                                                                                                        if (!*(a1 + 256) || (result = sub_21B1121F4(), !v4))
                                                                                                                        {
                                                                                                                          swift_beginAccess();
                                                                                                                          if (!*(a1 + 260) || (result = sub_21B1121F4(), !v4))
                                                                                                                          {
                                                                                                                            swift_beginAccess();
                                                                                                                            if (!*(a1 + 264) || (result = sub_21B1121F4(), !v4))
                                                                                                                            {
                                                                                                                              swift_beginAccess();
                                                                                                                              if (!*(a1 + 268) || (result = sub_21B1121F4(), !v4))
                                                                                                                              {
                                                                                                                                swift_beginAccess();
                                                                                                                                if (!*(a1 + 272) || (result = sub_21B1121F4(), !v4))
                                                                                                                                {
                                                                                                                                  swift_beginAccess();
                                                                                                                                  if (!*(a1 + 276) || (result = sub_21B1121F4(), !v4))
                                                                                                                                  {
                                                                                                                                    swift_beginAccess();
                                                                                                                                    if (!*(a1 + 280) || (result = sub_21B1121F4(), !v4))
                                                                                                                                    {
                                                                                                                                      swift_beginAccess();
                                                                                                                                      if (!*(a1 + 284) || (result = sub_21B1121F4(), !v4))
                                                                                                                                      {
                                                                                                                                        swift_beginAccess();
                                                                                                                                        if (!*(a1 + 288) || (result = sub_21B1121F4(), !v4))
                                                                                                                                        {
                                                                                                                                          swift_beginAccess();
                                                                                                                                          if (!*(a1 + 292) || (result = sub_21B1121F4(), !v4))
                                                                                                                                          {
                                                                                                                                            swift_beginAccess();
                                                                                                                                            result = *(a1 + 296);
                                                                                                                                            if (result)
                                                                                                                                            {
                                                                                                                                              return sub_21B1121F4();
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
        }
      }
    }
  }

  return result;
}

BOOL sub_21B047160(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  swift_beginAccess();
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  swift_beginAccess();
  v5 = *(a1 + 24);
  swift_beginAccess();
  if (v5 != *(a2 + 24))
  {
    return 0;
  }

  swift_beginAccess();
  v6 = *(a1 + 32);
  swift_beginAccess();
  if (v6 != *(a2 + 32))
  {
    return 0;
  }

  swift_beginAccess();
  v7 = *(a1 + 40);
  swift_beginAccess();
  if (v7 != *(a2 + 40))
  {
    return 0;
  }

  swift_beginAccess();
  v8 = *(a1 + 44);
  swift_beginAccess();
  if (v8 != *(a2 + 44))
  {
    return 0;
  }

  swift_beginAccess();
  v9 = *(a1 + 48);
  swift_beginAccess();
  if (v9 != *(a2 + 48))
  {
    return 0;
  }

  swift_beginAccess();
  v10 = *(a1 + 52);
  swift_beginAccess();
  if (v10 != *(a2 + 52))
  {
    return 0;
  }

  swift_beginAccess();
  v11 = *(a1 + 56);
  swift_beginAccess();
  if (v11 != *(a2 + 56))
  {
    return 0;
  }

  swift_beginAccess();
  v12 = *(a1 + 64);
  swift_beginAccess();
  if (v12 != *(a2 + 64))
  {
    return 0;
  }

  swift_beginAccess();
  v13 = *(a1 + 68);
  swift_beginAccess();
  if (v13 != *(a2 + 68))
  {
    return 0;
  }

  swift_beginAccess();
  v14 = *(a1 + 72);
  swift_beginAccess();
  if (v14 != *(a2 + 72))
  {
    return 0;
  }

  swift_beginAccess();
  v15 = *(a1 + 73);
  swift_beginAccess();
  if (v15 != *(a2 + 73))
  {
    return 0;
  }

  swift_beginAccess();
  v16 = *(a1 + 74);
  swift_beginAccess();
  if (v16 != *(a2 + 74))
  {
    return 0;
  }

  swift_beginAccess();
  v17 = *(a1 + 75);
  swift_beginAccess();
  if (v17 != *(a2 + 75))
  {
    return 0;
  }

  swift_beginAccess();
  v18 = *(a1 + 76);
  swift_beginAccess();
  if (v18 != *(a2 + 76))
  {
    return 0;
  }

  swift_beginAccess();
  v19 = *(a1 + 80);
  swift_beginAccess();
  if (v19 != *(a2 + 80))
  {
    return 0;
  }

  swift_beginAccess();
  v20 = *(a1 + 84);
  swift_beginAccess();
  if (v20 != *(a2 + 84))
  {
    return 0;
  }

  swift_beginAccess();
  v21 = *(a1 + 88);
  swift_beginAccess();
  if (v21 != *(a2 + 88))
  {
    return 0;
  }

  swift_beginAccess();
  v22 = *(a1 + 92);
  swift_beginAccess();
  if (v22 != *(a2 + 92))
  {
    return 0;
  }

  swift_beginAccess();
  v23 = *(a1 + 96);
  swift_beginAccess();
  if (v23 != *(a2 + 96))
  {
    return 0;
  }

  swift_beginAccess();
  v24 = *(a1 + 100);
  swift_beginAccess();
  if (v24 != *(a2 + 100))
  {
    return 0;
  }

  swift_beginAccess();
  v25 = *(a1 + 104);
  swift_beginAccess();
  if (v25 != *(a2 + 104))
  {
    return 0;
  }

  swift_beginAccess();
  v26 = *(a1 + 108);
  swift_beginAccess();
  if (v26 != *(a2 + 108))
  {
    return 0;
  }

  swift_beginAccess();
  v27 = *(a1 + 112);
  swift_beginAccess();
  if (v27 != *(a2 + 112))
  {
    return 0;
  }

  swift_beginAccess();
  v28 = *(a1 + 116);
  swift_beginAccess();
  if (v28 != *(a2 + 116))
  {
    return 0;
  }

  swift_beginAccess();
  v29 = *(a1 + 120);
  swift_beginAccess();
  if (v29 != *(a2 + 120))
  {
    return 0;
  }

  swift_beginAccess();
  v30 = *(a1 + 124);
  swift_beginAccess();
  if (v30 != *(a2 + 124))
  {
    return 0;
  }

  swift_beginAccess();
  v31 = *(a1 + 128);
  swift_beginAccess();
  if (v31 != *(a2 + 128))
  {
    return 0;
  }

  swift_beginAccess();
  v32 = *(a1 + 132);
  swift_beginAccess();
  if (v32 != *(a2 + 132))
  {
    return 0;
  }

  swift_beginAccess();
  v33 = *(a1 + 136);
  swift_beginAccess();
  if (v33 != *(a2 + 136))
  {
    return 0;
  }

  swift_beginAccess();
  v34 = *(a1 + 140);
  swift_beginAccess();
  if (v34 != *(a2 + 140))
  {
    return 0;
  }

  swift_beginAccess();
  v35 = *(a1 + 144);
  swift_beginAccess();
  if (v35 != *(a2 + 144))
  {
    return 0;
  }

  swift_beginAccess();
  v36 = *(a1 + 148);
  swift_beginAccess();
  if (v36 != *(a2 + 148))
  {
    return 0;
  }

  swift_beginAccess();
  v37 = *(a1 + 152);
  swift_beginAccess();
  if (v37 != *(a2 + 152))
  {
    return 0;
  }

  swift_beginAccess();
  v38 = *(a1 + 156);
  swift_beginAccess();
  if (v38 != *(a2 + 156))
  {
    return 0;
  }

  swift_beginAccess();
  v39 = *(a1 + 160);
  swift_beginAccess();
  if (v39 != *(a2 + 160))
  {
    return 0;
  }

  swift_beginAccess();
  v40 = *(a1 + 164);
  swift_beginAccess();
  if (v40 != *(a2 + 164))
  {
    return 0;
  }

  swift_beginAccess();
  v41 = *(a1 + 168);
  swift_beginAccess();
  if (v41 != *(a2 + 168))
  {
    return 0;
  }

  swift_beginAccess();
  v42 = *(a1 + 172);
  swift_beginAccess();
  if (v42 != *(a2 + 172))
  {
    return 0;
  }

  swift_beginAccess();
  v43 = *(a1 + 176);
  swift_beginAccess();
  if (v43 != *(a2 + 176))
  {
    return 0;
  }

  swift_beginAccess();
  v44 = *(a1 + 180);
  swift_beginAccess();
  if (v44 != *(a2 + 180))
  {
    return 0;
  }

  swift_beginAccess();
  v45 = *(a1 + 184);
  swift_beginAccess();
  if (v45 != *(a2 + 184))
  {
    return 0;
  }

  swift_beginAccess();
  v46 = *(a1 + 188);
  swift_beginAccess();
  if (v46 != *(a2 + 188))
  {
    return 0;
  }

  swift_beginAccess();
  v47 = *(a1 + 192);
  swift_beginAccess();
  if (v47 != *(a2 + 192))
  {
    return 0;
  }

  swift_beginAccess();
  v48 = *(a1 + 196);
  swift_beginAccess();
  if (v48 != *(a2 + 196))
  {
    return 0;
  }

  swift_beginAccess();
  v49 = *(a1 + 200);
  swift_beginAccess();
  if (v49 != *(a2 + 200))
  {
    return 0;
  }

  swift_beginAccess();
  v50 = *(a1 + 204);
  swift_beginAccess();
  if (v50 != *(a2 + 204))
  {
    return 0;
  }

  swift_beginAccess();
  v51 = *(a1 + 208);
  swift_beginAccess();
  if (v51 != *(a2 + 208))
  {
    return 0;
  }

  swift_beginAccess();
  v52 = *(a1 + 212);
  swift_beginAccess();
  if (v52 != *(a2 + 212))
  {
    return 0;
  }

  swift_beginAccess();
  v53 = *(a1 + 216);
  swift_beginAccess();
  if (v53 != *(a2 + 216))
  {
    return 0;
  }

  swift_beginAccess();
  v54 = *(a1 + 220);
  swift_beginAccess();
  if (v54 != *(a2 + 220))
  {
    return 0;
  }

  swift_beginAccess();
  v55 = *(a1 + 224);
  swift_beginAccess();
  if (v55 != *(a2 + 224))
  {
    return 0;
  }

  swift_beginAccess();
  v56 = *(a1 + 228);
  swift_beginAccess();
  if (v56 != *(a2 + 228))
  {
    return 0;
  }

  swift_beginAccess();
  v57 = *(a1 + 232);
  swift_beginAccess();
  if (v57 != *(a2 + 232))
  {
    return 0;
  }

  swift_beginAccess();
  v58 = *(a1 + 236);
  swift_beginAccess();
  if (v58 != *(a2 + 236))
  {
    return 0;
  }

  swift_beginAccess();
  v59 = *(a1 + 240);
  swift_beginAccess();
  if (v59 != *(a2 + 240))
  {
    return 0;
  }

  swift_beginAccess();
  v60 = *(a1 + 244);
  swift_beginAccess();
  if (v60 != *(a2 + 244))
  {
    return 0;
  }

  swift_beginAccess();
  v61 = *(a1 + 248);
  swift_beginAccess();
  if (v61 != *(a2 + 248))
  {
    return 0;
  }

  swift_beginAccess();
  v62 = *(a1 + 252);
  swift_beginAccess();
  if (v62 != *(a2 + 252))
  {
    return 0;
  }

  swift_beginAccess();
  v63 = *(a1 + 256);
  swift_beginAccess();
  if (v63 != *(a2 + 256))
  {
    return 0;
  }

  swift_beginAccess();
  v64 = *(a1 + 260);
  swift_beginAccess();
  if (v64 != *(a2 + 260))
  {
    return 0;
  }

  swift_beginAccess();
  v65 = *(a1 + 264);
  swift_beginAccess();
  if (v65 != *(a2 + 264))
  {
    return 0;
  }

  swift_beginAccess();
  v66 = *(a1 + 268);
  swift_beginAccess();
  if (v66 != *(a2 + 268))
  {
    return 0;
  }

  swift_beginAccess();
  v67 = *(a1 + 272);
  swift_beginAccess();
  if (v67 != *(a2 + 272))
  {
    return 0;
  }

  swift_beginAccess();
  v68 = *(a1 + 276);
  swift_beginAccess();
  if (v68 != *(a2 + 276))
  {
    return 0;
  }

  swift_beginAccess();
  v69 = *(a1 + 280);
  swift_beginAccess();
  if (v69 != *(a2 + 280))
  {
    return 0;
  }

  swift_beginAccess();
  v70 = *(a1 + 284);
  swift_beginAccess();
  if (v70 != *(a2 + 284))
  {
    return 0;
  }

  swift_beginAccess();
  v71 = *(a1 + 288);
  swift_beginAccess();
  if (v71 != *(a2 + 288))
  {
    return 0;
  }

  swift_beginAccess();
  v72 = *(a1 + 292);
  swift_beginAccess();
  if (v72 != *(a2 + 292))
  {
    return 0;
  }

  swift_beginAccess();
  v73 = *(a1 + 296);
  swift_beginAccess();
  return v73 == *(a2 + 296);
}

uint64_t sub_21B048190(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46AF8, type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B048210(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45A78, type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B048280(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD45A78, type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback);

  return sub_21B112114();
}

uint64_t sub_21B048318()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD44030);
  __swift_project_value_buffer(v0, qword_27CD44030);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_21B118070;
  v4 = v39 + v3;
  v5 = v39 + v3 + v1[14];
  *(v39 + v3) = 1;
  *v5 = "topicalityScore";
  *(v5 + 8) = 15;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_21B112234();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "freshness";
  *(v9 + 8) = 9;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "engagementScore";
  *(v11 + 1) = 15;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "predictedLikelihoodOfEngagement";
  *(v13 + 1) = 31;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "wasNominatedAsTopHit";
  *(v15 + 1) = 20;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "sodiumL2Score";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "isExactMatchOfLaunchString";
  *(v19 + 1) = 26;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "wasEngagedInSpotlight";
  *(v21 + 1) = 21;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "resultQueryRecency";
  *(v23 + 1) = 18;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "pommesL2Score";
  *(v25 + 1) = 13;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "isSemanticMatch";
  *(v27 + 1) = 15;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "semanticScore";
  *(v29 + 1) = 13;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "isSyntacticMatch";
  *(v31 + 1) = 16;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 14;
  *v33 = "syntacticScore";
  *(v33 + 1) = 14;
  v33[16] = 2;
  v8();
  v34 = (v4 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 15;
  *v35 = "embeddingStatus";
  *(v35 + 1) = 15;
  v35[16] = 2;
  v8();
  v36 = (v4 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 16;
  *v37 = "itemAgeInDays";
  *(v37 + 1) = 13;
  v37[16] = 2;
  v8();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 6:
      case 10:
      case 12:
      case 14:
        OUTLINED_FUNCTION_49_1();
        sub_21B111FE4();
        break;
      case 5:
      case 7:
      case 8:
      case 11:
      case 13:
        OUTLINED_FUNCTION_49_1();
        sub_21B111F94();
        break;
      case 9:
        v5 = OUTLINED_FUNCTION_10_2();
        sub_21B048968(v5, v6);
        break;
      case 15:
        v3 = OUTLINED_FUNCTION_10_2();
        sub_21B0489D0(v3, v4);
        break;
      case 16:
        OUTLINED_FUNCTION_49_1();
        sub_21B112084();
        break;
      default:
        continue;
    }
  }
}

void Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_800();
  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_749();
  if (v20 || (OUTLINED_FUNCTION_143(), sub_21B112194(), !v18))
  {
    OUTLINED_FUNCTION_847();
    if (v20 || (OUTLINED_FUNCTION_143(), sub_21B112194(), !v18))
    {
      if (*(v19 + 8) == 0.0 || (OUTLINED_FUNCTION_143(), sub_21B112194(), !v18))
      {
        if (*(v19 + 12) == 0.0 || (OUTLINED_FUNCTION_143(), sub_21B112194(), !v18))
        {
          if (*(v19 + 16) != 1 || (OUTLINED_FUNCTION_36_1(), sub_21B112164(), !v18))
          {
            if (*(v19 + 20) == 0.0 || (OUTLINED_FUNCTION_143(), sub_21B112194(), !v18))
            {
              if (*(v19 + 24) != 1 || (OUTLINED_FUNCTION_36_1(), sub_21B112164(), !v18))
              {
                if (*(v19 + 25) != 1 || (OUTLINED_FUNCTION_36_1(), sub_21B112164(), !v18))
                {
                  if (!*(v19 + 32) || (OUTLINED_FUNCTION_472(), sub_21B099EA8(), OUTLINED_FUNCTION_58_0(), sub_21B112174(), !v18))
                  {
                    if (*(v19 + 44) == 0.0 || (OUTLINED_FUNCTION_143(), sub_21B112194(), !v18))
                    {
                      if (*(v19 + 48) != 1 || (OUTLINED_FUNCTION_36_1(), sub_21B112164(), !v18))
                      {
                        if (*(v19 + 52) == 0.0 || (OUTLINED_FUNCTION_143(), sub_21B112194(), !v18))
                        {
                          if (*(v19 + 56) != 1 || (OUTLINED_FUNCTION_36_1(), sub_21B112164(), !v18))
                          {
                            if (*(v19 + 60) == 0.0 || (OUTLINED_FUNCTION_143(), sub_21B112194(), !v18))
                            {
                              if (!*(v19 + 64) || (OUTLINED_FUNCTION_472(), sub_21B099EFC(), OUTLINED_FUNCTION_58_0(), sub_21B112174(), !v18))
                              {
                                if (!*(v19 + 76) || (OUTLINED_FUNCTION_36_1(), sub_21B1121F4(), !v18))
                                {
                                  type metadata accessor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback(0);
                                  OUTLINED_FUNCTION_27_2();
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
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_799();
}

uint64_t static Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_516(a1);
  if (!v4)
  {
    return 0;
  }

  OUTLINED_FUNCTION_373(v3);
  if (!v4)
  {
    return 0;
  }

  if (*(v2 + 8) != *(v1 + 8))
  {
    return 0;
  }

  OUTLINED_FUNCTION_722();
  if (!v4)
  {
    return 0;
  }

  if (*(v2 + 16) != *(v1 + 16))
  {
    return 0;
  }

  if (*(v2 + 20) != *(v1 + 20))
  {
    return 0;
  }

  if (*(v2 + 24) != *(v1 + 24))
  {
    return 0;
  }

  if (*(v2 + 25) != *(v1 + 25))
  {
    return 0;
  }

  v5 = OUTLINED_FUNCTION_492();
  if (!sub_21AFB4A88(v5, v6, v7))
  {
    return 0;
  }

  if (*(v2 + 44) != *(v1 + 44))
  {
    return 0;
  }

  if (*(v2 + 48) != *(v1 + 48))
  {
    return 0;
  }

  if (*(v2 + 52) != *(v1 + 52))
  {
    return 0;
  }

  if (*(v2 + 56) != *(v1 + 56))
  {
    return 0;
  }

  if (*(v2 + 60) != *(v1 + 60))
  {
    return 0;
  }

  v8 = OUTLINED_FUNCTION_633();
  if (!sub_21AFB4A88(v8, v9, v10) || *(v2 + 76) != *(v1 + 76))
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback(0);
  sub_21B111EC4();
  OUTLINED_FUNCTION_0_15();
  v13 = sub_21B099CBC(v11, v12, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_40_1(v13) & 1;
}

uint64_t sub_21B048EF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46AF0, type metadata accessor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B048F70(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45A90, type metadata accessor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B048FE0(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD45A90, type metadata accessor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback);

  return sub_21B112114();
}

uint64_t sub_21B049188(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46AE8, type metadata accessor for Apple_Parsec_Feedback_V2_Feedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_Feedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B049208(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45AA8, type metadata accessor for Apple_Parsec_Feedback_V2_Feedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_Feedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B049278(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD45AA8, type metadata accessor for Apple_Parsec_Feedback_V2_Feedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_Feedback);

  return sub_21B112114();
}

uint64_t sub_21B049304()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD44060);
  __swift_project_value_buffer(v0, qword_27CD44060);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B117FC0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "viewAppearEvent";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "isOnLockScreen";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "isOverApp";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "readerTextAvailable";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "preexistingInput";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "originatingApp";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "isUsingLoweredSearchBar";
  *(v22 + 1) = 23;
  v22[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Feedback_V2_SearchViewAppearFeedback.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_238();
        sub_21B112094();
        break;
      case 2:
        v3 = OUTLINED_FUNCTION_10_2();
        sub_21B049738(v3, v4);
        break;
      case 3:
      case 4:
      case 5:
      case 8:
        OUTLINED_FUNCTION_49_1();
        sub_21B111F94();
        break;
      case 6:
      case 7:
        OUTLINED_FUNCTION_49_1();
        sub_21B112074();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_21B0499D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46AE0, type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewAppearFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchViewAppearFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B049A54(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45AC0, type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewAppearFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchViewAppearFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B049AC4(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD45AC0, type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewAppearFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchViewAppearFeedback);

  return sub_21B112114();
}

uint64_t sub_21B049B50()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD44078);
  __swift_project_value_buffer(v0, qword_27CD44078);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113DB0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "viewDisappearEvent";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t sub_21B049F10(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46AD8, type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewDisappearFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchViewDisappearFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B049F90(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45AD8, type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewDisappearFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchViewDisappearFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B04A000(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD45AD8, type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewDisappearFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchViewDisappearFeedback);

  return sub_21B112114();
}

uint64_t sub_21B04A098()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD44090);
  __swift_project_value_buffer(v0, qword_27CD44090);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B115FB0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "blendingDuration";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "sections";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "hiddenResults";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "spotlightQueryIntent";
  *(v16 + 1) = 20;
  v16[16] = 2;
  v9();
  return sub_21B112244();
}

void Apple_Parsec_Feedback_V2_RankingFeedback.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    v1 = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_238();
        sub_21B112094();
        break;
      case 2:
        OUTLINED_FUNCTION_318();
        sub_21B112054();
        break;
      case 3:
        OUTLINED_FUNCTION_10_2();
        sub_21B04B564();
        break;
      case 4:
        OUTLINED_FUNCTION_10_2();
        sub_21B04FF74();
        break;
      case 5:
        v3 = OUTLINED_FUNCTION_10_2();
        sub_21B04A488(v3, v4);
        break;
      default:
        continue;
    }
  }
}

void Apple_Parsec_Feedback_V2_RankingFeedback.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_819();
  if (!OUTLINED_FUNCTION_25_2() || (OUTLINED_FUNCTION_35_3(), sub_21B112204(), !v20))
  {
    if (*(v21 + 8) == 0.0 || (OUTLINED_FUNCTION_143(), sub_21B1121D4(), !v20))
    {
      if (!*(*(v21 + 16) + 16) || (type metadata accessor for Apple_Parsec_Feedback_V2_SectionRankingFeedback(0), sub_21B099CBC(&qword_27CD44DD8, type metadata accessor for Apple_Parsec_Feedback_V2_SectionRankingFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SectionRankingFeedback), OUTLINED_FUNCTION_485(), OUTLINED_FUNCTION_58_0(), sub_21B112214(), !v20))
      {
        if (!*(*(v21 + 24) + 16) || (OUTLINED_FUNCTION_872(), OUTLINED_FUNCTION_9_8(), sub_21B099CBC(v22, v23, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchResultForFeedback), OUTLINED_FUNCTION_485(), OUTLINED_FUNCTION_58_0(), sub_21B112214(), !v20))
        {
          if (!*(v21 + 32) || (OUTLINED_FUNCTION_472(), sub_21B099FA4(), OUTLINED_FUNCTION_58_0(), sub_21B112174(), !v20))
          {
            type metadata accessor for Apple_Parsec_Feedback_V2_RankingFeedback(0);
            OUTLINED_FUNCTION_27_2();
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_818();
}

uint64_t sub_21B04A704(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46AD0, type metadata accessor for Apple_Parsec_Feedback_V2_RankingFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_RankingFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B04A784(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45AF0, type metadata accessor for Apple_Parsec_Feedback_V2_RankingFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_RankingFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B04A7F4(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD45AF0, type metadata accessor for Apple_Parsec_Feedback_V2_RankingFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_RankingFeedback);

  return sub_21B112114();
}

uint64_t sub_21B04A880()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD440A8);
  __swift_project_value_buffer(v0, qword_27CD440A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B115FB0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "results";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "section";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "localSectionPosition";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "personalizationScore";
  *(v16 + 1) = 20;
  v16[16] = 2;
  v9();
  return sub_21B112244();
}

void Apple_Parsec_Feedback_V2_SectionRankingFeedback.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    v1 = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_238();
        sub_21B112094();
        break;
      case 2:
        OUTLINED_FUNCTION_10_2();
        sub_21B068268();
        break;
      case 3:
        v3 = OUTLINED_FUNCTION_10_2();
        sub_21B04AC28(v3, v4, v5, v6);
        break;
      case 4:
        OUTLINED_FUNCTION_49_1();
        sub_21B112084();
        break;
      case 5:
        OUTLINED_FUNCTION_49_1();
        sub_21B112054();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_21B04AC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Feedback_V2_SectionRankingFeedback(0);
  type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(0);
  sub_21B099CBC(&qword_27CD44DF8, type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback);
  return sub_21B1120B4();
}

void Apple_Parsec_Feedback_V2_SectionRankingFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_423();
  OUTLINED_FUNCTION_404();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD434E8, &unk_21B116AC0);
  OUTLINED_FUNCTION_25(v4);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_212();
  type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(v6);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_177();
  if (!*v2 || (v1 = v0, sub_21B112204(), !v0))
  {
    OUTLINED_FUNCTION_660();
    if (!v8 || (type metadata accessor for Apple_Parsec_Feedback_V2_ResultRankingFeedback(0), sub_21B099CBC(&qword_27CD44DF0, type metadata accessor for Apple_Parsec_Feedback_V2_ResultRankingFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultRankingFeedback), OUTLINED_FUNCTION_477(), OUTLINED_FUNCTION_58_0(), sub_21B112214(), !v1))
    {
      type metadata accessor for Apple_Parsec_Feedback_V2_SectionRankingFeedback(0);
      OUTLINED_FUNCTION_715();
      OUTLINED_FUNCTION_243();
      if (v9)
      {
        sub_21AF99BE0(v3, &unk_27CD434E8, &unk_21B116AC0);
      }

      else
      {
        OUTLINED_FUNCTION_12_8();
        v10 = OUTLINED_FUNCTION_636();
        sub_21B03179C(v10);
        OUTLINED_FUNCTION_334();
        sub_21B099CBC(v11, v12, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback);
        OUTLINED_FUNCTION_595();
        OUTLINED_FUNCTION_58_0();
        sub_21B112224();
        OUTLINED_FUNCTION_156();
        sub_21B03183C();
        if (v1)
        {
          goto LABEL_14;
        }
      }

      if (!*(v2 + 16) || (OUTLINED_FUNCTION_36_1(), sub_21B1121F4(), !v1))
      {
        if (*(v2 + 24) == 0.0 || (OUTLINED_FUNCTION_143(), sub_21B1121D4(), !v1))
        {
          OUTLINED_FUNCTION_27_2();
        }
      }
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_503();
  OUTLINED_FUNCTION_13();
}

uint64_t sub_21B04AFA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46AC8, type metadata accessor for Apple_Parsec_Feedback_V2_SectionRankingFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SectionRankingFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B04B028(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD44DD8, type metadata accessor for Apple_Parsec_Feedback_V2_SectionRankingFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SectionRankingFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B04B098(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD44DD8, type metadata accessor for Apple_Parsec_Feedback_V2_SectionRankingFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SectionRankingFeedback);

  return sub_21B112114();
}

uint64_t sub_21B04B124()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD440C0);
  __swift_project_value_buffer(v0, qword_27CD440C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113DA0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "result";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "hiddenResults";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "duplicateResults";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "localResultPosition";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "personalizationScore";
  *(v18 + 1) = 20;
  v18[16] = 2;
  v9();
  return sub_21B112244();
}

void Apple_Parsec_Feedback_V2_ResultRankingFeedback.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    v1 = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_238();
        sub_21B112094();
        break;
      case 2:
        v3 = OUTLINED_FUNCTION_10_2();
        sub_21B04F79C(v3, v4, v5, v6);
        break;
      case 3:
        OUTLINED_FUNCTION_579();
        OUTLINED_FUNCTION_10_2();
        sub_21B068268();
        break;
      case 4:
        OUTLINED_FUNCTION_10_2();
        sub_21B04B564();
        break;
      case 5:
        OUTLINED_FUNCTION_49_1();
        sub_21B112084();
        break;
      case 6:
        OUTLINED_FUNCTION_49_1();
        sub_21B112054();
        break;
      default:
        continue;
    }
  }
}

void sub_21B04B564()
{
  OUTLINED_FUNCTION_11();
  v2 = OUTLINED_FUNCTION_234();
  v3(v2);
  v4 = OUTLINED_FUNCTION_75();
  v6 = sub_21B099CBC(v4, v5, v0);
  OUTLINED_FUNCTION_505(v1 + 16, v7, v6);
  OUTLINED_FUNCTION_13();
}

void Apple_Parsec_Feedback_V2_ResultRankingFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_26_3();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434D8, &qword_21B116AB0);
  OUTLINED_FUNCTION_25(v4);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_252();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v6);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2();
  if (!*v0 || (OUTLINED_FUNCTION_35_3(), sub_21B112204(), !v1))
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_ResultRankingFeedback(0);
    OUTLINED_FUNCTION_744();
    OUTLINED_FUNCTION_37_1(v3, 1, v7);
    if (v9)
    {
      sub_21AF99BE0(v3, &qword_27CD434D8, &qword_21B116AB0);
    }

    else
    {
      OUTLINED_FUNCTION_2_17();
      sub_21B03179C(v3);
      OUTLINED_FUNCTION_9_8();
      sub_21B099CBC(v10, v11, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchResultForFeedback);
      OUTLINED_FUNCTION_58_0();
      sub_21B112224();
      OUTLINED_FUNCTION_13_6();
      sub_21B03183C();
      if (v1)
      {
        goto LABEL_16;
      }
    }

    OUTLINED_FUNCTION_660();
    if (!v12 || (OUTLINED_FUNCTION_9_8(), sub_21B099CBC(v13, v14, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchResultForFeedback), OUTLINED_FUNCTION_485(), OUTLINED_FUNCTION_58_0(), sub_21B112214(), !v1))
    {
      if (!*(*(v2 + 16) + 16) || (OUTLINED_FUNCTION_9_8(), sub_21B099CBC(v15, v16, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchResultForFeedback), OUTLINED_FUNCTION_485(), OUTLINED_FUNCTION_58_0(), sub_21B112214(), !v1))
      {
        if (!*(v2 + 24) || (OUTLINED_FUNCTION_36_1(), sub_21B1121F4(), !v1))
        {
          if (*(v2 + 32) == 0.0 || (OUTLINED_FUNCTION_143(), sub_21B1121D4(), !v1))
          {
            OUTLINED_FUNCTION_27_2();
          }
        }
      }
    }
  }

LABEL_16:
  OUTLINED_FUNCTION_503();
  OUTLINED_FUNCTION_13();
}

uint64_t sub_21B04B8B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46AC0, type metadata accessor for Apple_Parsec_Feedback_V2_ResultRankingFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultRankingFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B04B934(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD44DF0, type metadata accessor for Apple_Parsec_Feedback_V2_ResultRankingFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultRankingFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B04B9A4(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD44DF0, type metadata accessor for Apple_Parsec_Feedback_V2_ResultRankingFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultRankingFeedback);

  return sub_21B112114();
}

uint64_t sub_21B04BA30()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD440D8);
  __swift_project_value_buffer(v0, qword_27CD440D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113DB0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "result";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t sub_21B04BC48()
{
  OUTLINED_FUNCTION_515();
  while (1)
  {
    OUTLINED_FUNCTION_30_2();
    result = sub_21B111F64();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_35_2();
      OUTLINED_FUNCTION_445();
      v0();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_430();
      sub_21B112094();
    }
  }

  return result;
}

uint64_t sub_21B04BCC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Feedback_V2_ResultFeedback(0);
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  sub_21B099CBC(&qword_27CD44D08, type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchResultForFeedback);
  return sub_21B1120B4();
}

void Apple_Parsec_Feedback_V2_ResultFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_423();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434D8, &qword_21B116AB0);
  OUTLINED_FUNCTION_25(v3);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_212();
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v5);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_177();
  if (!*v1 || (OUTLINED_FUNCTION_480(), sub_21B112204(), !v0))
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_ResultFeedback(0);
    OUTLINED_FUNCTION_715();
    OUTLINED_FUNCTION_243();
    if (v7)
    {
      sub_21AF99BE0(v2, &qword_27CD434D8, &qword_21B116AB0);
LABEL_7:
      OUTLINED_FUNCTION_741();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_2_17();
    v8 = OUTLINED_FUNCTION_636();
    sub_21B03179C(v8);
    OUTLINED_FUNCTION_9_8();
    sub_21B099CBC(v9, v10, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchResultForFeedback);
    OUTLINED_FUNCTION_595();
    OUTLINED_FUNCTION_734();
    sub_21B112224();
    OUTLINED_FUNCTION_13_6();
    sub_21B03183C();
    if (!v0)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_503();
  OUTLINED_FUNCTION_13();
}

uint64_t sub_21B04BF90(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46AB8, type metadata accessor for Apple_Parsec_Feedback_V2_ResultFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B04C010(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45B28, type metadata accessor for Apple_Parsec_Feedback_V2_ResultFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B04C080(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD45B28, type metadata accessor for Apple_Parsec_Feedback_V2_ResultFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultFeedback);

  return sub_21B112114();
}

uint64_t sub_21B04C10C()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD440F0);
  __swift_project_value_buffer(v0, qword_27CD440F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B117FC0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "actionEngaged";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "triggerEvent";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "destination";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "actionTarget";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "result";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "titleText";
  *(v20 + 1) = 9;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "matchesUnengagedSuggestion";
  *(v22 + 1) = 26;
  v22[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Feedback_V2_ResultEngagementFeedback.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_238();
        sub_21B112094();
        break;
      case 2:
      case 8:
        OUTLINED_FUNCTION_49_1();
        sub_21B111F94();
        break;
      case 3:
        v5 = OUTLINED_FUNCTION_10_2();
        sub_21B04C550(v5, v6);
        break;
      case 4:
        v7 = OUTLINED_FUNCTION_10_2();
        sub_21B04C5B8(v7, v8);
        break;
      case 5:
        v3 = OUTLINED_FUNCTION_10_2();
        sub_21B04C620(v3, v4);
        break;
      case 6:
        v9 = OUTLINED_FUNCTION_10_2();
        sub_21B04C688(v9, v10, v11, v12);
        break;
      case 7:
        OUTLINED_FUNCTION_49_1();
        sub_21B112074();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_21B04C688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Feedback_V2_ResultEngagementFeedback(0);
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  sub_21B099CBC(&qword_27CD44D08, type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchResultForFeedback);
  return sub_21B1120B4();
}

void Apple_Parsec_Feedback_V2_ResultEngagementFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_26_3();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434D8, &qword_21B116AB0);
  OUTLINED_FUNCTION_25(v4);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_212();
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v6);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_177();
  if (!*v0 || (OUTLINED_FUNCTION_35_3(), sub_21B112204(), !v1))
  {
    if (*(v2 + 8) != 1 || (OUTLINED_FUNCTION_36_1(), sub_21B112164(), !v1))
    {
      v8 = *(v2 + 16);
      if (!v8 || (OUTLINED_FUNCTION_542(v8), sub_21B099FF8(), OUTLINED_FUNCTION_58_0(), sub_21B112174(), !v1))
      {
        v9 = *(v2 + 32);
        if (!v9 || (OUTLINED_FUNCTION_542(v9), sub_21B09A04C(), OUTLINED_FUNCTION_58_0(), sub_21B112174(), !v1))
        {
          v10 = *(v2 + 48);
          if (!v10 || (OUTLINED_FUNCTION_542(v10), sub_21B09A0A0(), OUTLINED_FUNCTION_58_0(), sub_21B112174(), !v1))
          {
            type metadata accessor for Apple_Parsec_Feedback_V2_ResultEngagementFeedback(0);
            OUTLINED_FUNCTION_715();
            OUTLINED_FUNCTION_243();
            if (v11)
            {
              sub_21AF99BE0(v3, &qword_27CD434D8, &qword_21B116AB0);
            }

            else
            {
              OUTLINED_FUNCTION_2_17();
              v12 = OUTLINED_FUNCTION_636();
              sub_21B03179C(v12);
              OUTLINED_FUNCTION_9_8();
              sub_21B099CBC(v13, v14, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchResultForFeedback);
              OUTLINED_FUNCTION_595();
              OUTLINED_FUNCTION_58_0();
              sub_21B112224();
              OUTLINED_FUNCTION_13_6();
              sub_21B03183C();
              if (v1)
              {
                goto LABEL_20;
              }
            }

            OUTLINED_FUNCTION_10_4();
            if (!v15 || (OUTLINED_FUNCTION_63_0(), sub_21B1121E4(), !v1))
            {
              if (*(v2 + 80) != 1 || (OUTLINED_FUNCTION_36_1(), sub_21B112164(), !v1))
              {
                OUTLINED_FUNCTION_27_2();
              }
            }
          }
        }
      }
    }
  }

LABEL_20:
  OUTLINED_FUNCTION_503();
  OUTLINED_FUNCTION_13();
}

uint64_t sub_21B04CA5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46AB0, type metadata accessor for Apple_Parsec_Feedback_V2_ResultEngagementFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultEngagementFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B04CADC(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45B40, type metadata accessor for Apple_Parsec_Feedback_V2_ResultEngagementFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultEngagementFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B04CB4C(uint64_t a1, uint64_t a2)
{
  sub_21B099CBC(&qword_27CD45B40, type metadata accessor for Apple_Parsec_Feedback_V2_ResultEngagementFeedback, &protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultEngagementFeedback);

  return sub_21B112114();
}

uint64_t sub_21B04CBE4()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD44108);
  __swift_project_value_buffer(v0, qword_27CD44108);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_21B117F60;
  v4 = v30 + v3 + v1[14];
  *(v30 + v3) = 1;
  *v4 = "commandType";
  *(v4 + 8) = 11;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_21B112234();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v30 + v3 + v2 + v1[14];
  *(v30 + v3 + v2) = 2;
  *v8 = "commandDetail";
  *(v8 + 8) = 13;
  *(v8 + 16) = 2;
  v7();
  v9 = (v30 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "uniqueButtonId";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v7();
  v11 = (v30 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "cardSectionId";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v7();
  v13 = (v30 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "result";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v7();
  v15 = (v30 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "timestamp";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v7();
  v17 = (v30 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "resultSectionId";
  *(v18 + 1) = 15;
  v18[16] = 2;
  v7();
  v19 = (v30 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "triggerEvent";
  *(v20 + 1) = 12;
  v20[16] = 2;
  v7();
  v21 = (v30 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "contactActionType";
  *(v22 + 1) = 17;
  v22[16] = 2;
  v7();
  v23 = (v30 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "didDisplayHandleOptions";
  *(v24 + 1) = 23;
  v24[16] = 2;
  v7();
  v25 = (v30 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "didSelectFromOptionsMenu";
  *(v26 + 1) = 24;
  v26[16] = 2;
  v7();
  v27 = (v30 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "photosAttributes";
  *(v28 + 1) = 16;
  v28[16] = 2;
  v7();
  return sub_21B112244();
}

uint64_t sub_21B04D060()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0xE000000000000000;
  v1 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__result;
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__timestamp) = 0;
  v3 = (v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__resultSectionID);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__triggerEvent;
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__contactActionType;
  *v5 = 0;
  *(v5 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__didDisplayHandleOptions) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__didSelectFromOptionsMenu) = 0;
  v6 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__photosAttributes;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(0);
  __swift_storeEnumTagSinglePayload(v0 + v6, 1, 1, v7);
  return v0;
}

uint64_t sub_21B04D148(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD449E8, &qword_21B118150);
  MEMORY[0x28223BE20](v3 - 8);
  v45 = v38 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434D8, &qword_21B116AB0);
  MEMORY[0x28223BE20](v5 - 8);
  v38[2] = v38 - v6;
  *(v1 + 16) = 0;
  *(v1 + 32) = 0;
  *(v1 + 24) = 1;
  *(v1 + 40) = 0xE000000000000000;
  *(v1 + 56) = 0;
  *(v1 + 48) = 0;
  *(v1 + 64) = 0xE000000000000000;
  v7 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__result;
  v38[1] = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__result;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  __swift_storeEnumTagSinglePayload(v1 + v7, 1, 1, v8);
  v39 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__timestamp;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__timestamp) = 0;
  v9 = (v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__resultSectionID);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__triggerEvent;
  v40 = v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__triggerEvent;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__contactActionType;
  v41 = v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__contactActionType;
  *v11 = 0;
  *(v11 + 8) = 1;
  v42 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__didDisplayHandleOptions;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__didDisplayHandleOptions) = 0;
  v43 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__didSelectFromOptionsMenu;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__didSelectFromOptionsMenu) = 0;
  v12 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__photosAttributes;
  v44 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__photosAttributes;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(0);
  __swift_storeEnumTagSinglePayload(v1 + v12, 1, 1, v13);
  swift_beginAccess();
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v14;
  *(v1 + 24) = v15;
  swift_beginAccess();
  v17 = *(a1 + 32);
  v16 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v17;
  *(v1 + 40) = v16;
  swift_beginAccess();
  v18 = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 48) = v18;
  swift_beginAccess();
  v20 = *(a1 + 56);
  v19 = *(a1 + 64);
  swift_beginAccess();
  *(v1 + 56) = v20;
  *(v1 + 64) = v19;

  swift_beginAccess();
  sub_21B0AA940();
  swift_beginAccess();
  sub_21B099C68();
  swift_endAccess();
  v21 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__timestamp;
  swift_beginAccess();
  v22 = *(a1 + v21);
  v23 = v39;
  swift_beginAccess();
  *(v1 + v23) = v22;
  v24 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__resultSectionID);
  swift_beginAccess();
  v26 = *v24;
  v25 = v24[1];
  swift_beginAccess();
  *v9 = v26;
  v9[1] = v25;

  v27 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__triggerEvent);
  swift_beginAccess();
  v28 = *v27;
  LOBYTE(v27) = *(v27 + 8);
  v29 = v40;
  swift_beginAccess();
  *v29 = v28;
  *(v29 + 8) = v27;
  v30 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__contactActionType);
  swift_beginAccess();
  v31 = *v30;
  LOBYTE(v30) = *(v30 + 8);
  v32 = v41;
  swift_beginAccess();
  *v32 = v31;
  *(v32 + 8) = v30;
  v33 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__didDisplayHandleOptions;
  swift_beginAccess();
  LOBYTE(v33) = *(a1 + v33);
  v34 = v42;
  swift_beginAccess();
  *(v1 + v34) = v33;
  v35 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__didSelectFromOptionsMenu;
  swift_beginAccess();
  LOBYTE(v35) = *(a1 + v35);
  v36 = v43;
  swift_beginAccess();
  *(v1 + v36) = v35;
  swift_beginAccess();
  sub_21B0AA940();

  swift_beginAccess();
  sub_21B099C68();
  swift_endAccess();
  return v1;
}

uint64_t sub_21B04D7B8()
{

  sub_21AF99BE0(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__result, &qword_27CD434D8, &qword_21B116AB0);

  sub_21AF99BE0(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__photosAttributes, &qword_27CD449E8, &qword_21B118150);
  return v0;
}