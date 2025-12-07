@interface NRBluetoothPacketParser
- ($3D27A55567FB06BC0E416B979767FD15)createWriteContextForPriority:(unsigned __int8)priority writeOutputCallback:(void *)callback writeOutputContext:(void *)context;
- ($B174F4C94D76BD0ED270DA150CD5266A)createReadContextForPriority:(unsigned __int8)priority readAvailableCallback:(void *)callback readAvailableContext:(void *)context;
- (BOOL)start;
- (NRBluetoothPacketParser)initWithBluetoothUUID:(id)d queue:(id)queue;
- (NRBluetoothPacketParser)initWithDeviceIdentifier:(id)identifier queue:(id)queue;
- (NSString)description;
- (void)cancel;
- (void)changeStateTo:(uint64_t)to;
- (void)dealloc;
- (void)handleIncomingWakePacket:(uint64_t)packet spi:;
- (void)handleInternalError:(uint64_t)error;
- (void)resetContextForPriorityInner:(uint64_t)inner teardownContext:;
- (void)sendDatapathReport:(uint64_t)report;
- (void)sendXPCCommDictionary:(id)dictionary;
- (void)sendXPCCommDictionaryInner:(uint64_t)inner;
- (void)sendXPCDictionary:(uint64_t)dictionary;
- (void)setReceiveXPCCommDictionaryHandler:(id)handler;
- (void)setupNexusChannelForPriority:(void *)priority channelUUID:;
- (void)teardown;
- (void)updateReadyStateIfApplicable;
@end

@implementation NRBluetoothPacketParser

void __44__NRBluetoothPacketParser_armLinkStatsTimer__block_invoke(uint64_t a1)
{
  v198 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && *(WeakRetained + 13) != 4)
  {
    v3 = *(WeakRetained + 73);
    v4 = *(WeakRetained + 78);
    *(WeakRetained + 78) = v3;
    v5 = *(WeakRetained + 72);
    v6 = *(WeakRetained + 81);
    *(WeakRetained + 81) = v5;
    v7 = *(WeakRetained + 77);
    v175 = *(WeakRetained + 79);
    *(WeakRetained + 79) = v7;
    v190 = *(WeakRetained + 82);
    v174 = *(WeakRetained + 76);
    *(WeakRetained + 82) = v174;
    v179 = *(WeakRetained + 80);
    v180 = *(WeakRetained + 75);
    *(WeakRetained + 80) = v180;
    v177 = *(WeakRetained + 83);
    v178 = *(WeakRetained + 74);
    *(WeakRetained + 83) = v178;
    v8 = *(WeakRetained + 68);
    v9 = *(WeakRetained + 60);
    v10 = *(WeakRetained + 61);
    *(WeakRetained + 68) = v9;
    v11 = *(WeakRetained + 69);
    *(WeakRetained + 69) = v10;
    v12 = *(WeakRetained + 70);
    v13 = *(WeakRetained + 62);
    v14 = *(WeakRetained + 63);
    *(WeakRetained + 70) = v13;
    v15 = *(WeakRetained + 71);
    *(WeakRetained + 71) = v14;
    v16 = *(WeakRetained + 64);
    v18 = *(WeakRetained + 56);
    v17 = *(WeakRetained + 57);
    *(WeakRetained + 64) = v18;
    v19 = *(WeakRetained + 65);
    v176 = v17;
    *(WeakRetained + 65) = v17;
    v188 = *(WeakRetained + 66);
    v20 = *(WeakRetained + 59);
    v184 = v19;
    v186 = *(WeakRetained + 58);
    *(WeakRetained + 66) = v186;
    v181 = *(WeakRetained + 67);
    v182 = v20;
    *(WeakRetained + 67) = v20;
    v172 = v3 - v4;
    v192 = WeakRetained;
    if (v3 != v4 || v5 != v6 || v9 != v8 || v13 != v12 || v10 != v11 || v14 != v15)
    {
      v167 = v15;
      v168 = v11;
      v169 = v6;
      v170 = v16;
      v21 = _NRCopyLogObjectForNRUUID(*(WeakRetained + 6));
      if (sNRCopyLogToStdErr == 1)
      {

        v23 = v168;
        v22 = v169;
        v24 = v167;
LABEL_12:
        v26 = v5 - v22;
        v27 = v9 - v8;
        v28 = v10 - v23;
        v29 = v13 - v12;
        v30 = v14 - v24;
        v31 = v7;
        v32 = _NRCopyLogObjectForNRUUID(v192[6]);
        _NRLogWithArgs(v32, 0, "LinkStats - BT(M): Tx [ be %4llu, bk %4llu, %8llu B, %8llu B/s ] Rx [ be %4llu, bk %4llu, %8llu B, %8llu B/s ]", v27, v29, v172, v172 / *(a1 + 40), v28, v30, v26, v26 / *(a1 + 40));

        v16 = v170;
        v7 = v31;
        v19 = v184;
        WeakRetained = v192;
        goto LABEL_13;
      }

      v166 = v7;
      v25 = v21;
      v165 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);

      v7 = v166;
      v24 = v167;
      v19 = v184;
      WeakRetained = v192;
      v22 = v169;
      v16 = v170;
      v23 = v168;
      if (v165)
      {
        goto LABEL_12;
      }
    }

LABEL_13:
    v173 = v18 - v16;
    v171 = v176 - v19;
    if (v7 != v175 || v174 != v190 || v186 != v188 || v18 != v16 || v182 != v181 || v176 != v19)
    {
      v33 = _NRCopyLogObjectForNRUUID(*(WeakRetained + 6));
      if (sNRCopyLogToStdErr == 1)
      {

LABEL_22:
        v37 = v7 - v175;
        v38 = _NRCopyLogObjectForNRUUID(v192[6]);
        _NRLogWithArgs(v38, 0, "LinkStats - BT(U): Tx [ vo %4llu, vi %4llu, %8llu B, %8llu B/s ] Rx [ vo %4llu, vi %4llu, %8llu B, %8llu B/s ]", v173, v186 - v188, v37, v37 / *(a1 + 40), v171, v182 - v181, v174 - v190, (v174 - v190) / *(a1 + 40));

        v19 = v184;
        WeakRetained = v192;
        goto LABEL_23;
      }

      v34 = v7;
      v35 = v33;
      v36 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);

      v7 = v34;
      v19 = v184;
      WeakRetained = v192;
      if (v36)
      {
        goto LABEL_22;
      }
    }

LABEL_23:
    if (v180 != v179 || v178 != v177 || v176 != v19)
    {
      v39 = _NRCopyLogObjectForNRUUID(*(WeakRetained + 6));
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v40 = v39;
        v41 = os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);

        WeakRetained = v192;
        if (!v41)
        {
          goto LABEL_30;
        }
      }

      v42 = _NRCopyLogObjectForNRUUID(v192[6]);
      _NRLogWithArgs(v42, 0, "LinkStats - BT(D): Tx [ vo %4llu, %8llu B, %8llu B/s ] Rx [ vo %4llu, %8llu B, %8llu B/s ]", v173, v180 - v179, (v180 - v179) / *(a1 + 40), v171, v178 - v177, (v178 - v177) / *(a1 + 40));

      WeakRetained = v192;
    }

LABEL_30:
    *(WeakRetained + 24) = *(WeakRetained + 23);
    v43 = *(WeakRetained + 25);
    if (*(a1 + 40) * v43 < 0xFuLL)
    {
LABEL_187:
      *(WeakRetained + 25) = v43 + 1;
      goto LABEL_188;
    }

    v44 = *(WeakRetained + 18);
    if (v44)
    {
      v45 = *(WeakRetained + 20);
      if (!v45)
      {
LABEL_36:
        v46 = 0;
        goto LABEL_37;
      }

      if (v45 == *(WeakRetained + 19))
      {
        v46 = objc_alloc_init(MEMORY[0x277CBEB18]);
        [v46 addObject:&unk_286D2CED8];
        WeakRetained = v192;
        v44 = v192[18];
        LODWORD(v45) = 1;
LABEL_37:
        *(WeakRetained + 20) = *(WeakRetained + 19);
        if ((v44 & 2) != 0)
        {
          v47 = *(WeakRetained + 22);
          if (v47)
          {
            if (v47 == *(WeakRetained + 21))
            {
              if (!v46)
              {
                v46 = objc_alloc_init(MEMORY[0x277CBEB18]);
              }

              [v46 addObject:&unk_286D2CEF0];
              WeakRetained = v192;
              v44 = v192[18];
              LODWORD(v45) = 1;
            }
          }
        }

        *(WeakRetained + 22) = *(WeakRetained + 21);
        if ((v44 & 4) != 0 && (v48 = *(WeakRetained + 24)) != 0 && v48 == *(WeakRetained + 23))
        {
          if (!v46)
          {
            v46 = objc_alloc_init(MEMORY[0x277CBEB18]);
          }

          [v46 addObject:&unk_286D2CF08];
          v192[24] = v192[23];
          v192[25] = 0;
        }

        else
        {
          *(WeakRetained + 24) = *(WeakRetained + 23);
          *(WeakRetained + 25) = 0;
          if (!v45)
          {
            goto LABEL_185;
          }
        }

        v46 = v46;
        if (*(v192 + 13) != 4)
        {
          if (v46)
          {
            v49 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v193 = 0u;
            v194 = 0u;
            v195 = 0u;
            v196 = 0u;
            v183 = v46;
            v50 = v46;
            v51 = [v50 countByEnumeratingWithState:&v193 objects:v197 count:16];
            if (v51)
            {
              v52 = v51;
              v53 = *v194;
              v191 = *v194;
              v185 = v50;
              v187 = v49;
              do
              {
                v54 = 0;
                v189 = v52;
                do
                {
                  if (*v194 != v53)
                  {
                    objc_enumerationMutation(v50);
                  }

                  v56 = [*(*(&v193 + 1) + 8 * v54) unsignedCharValue];
                  v57 = v192;
                  if (*(v192 + 13) == 4)
                  {
                    v58 = v56 - 1;
                    goto LABEL_176;
                  }

                  v58 = v56 - 1;
                  if ((v56 - 1) < 3)
                  {
                    v59 = v192[2 * (v58 & 0xF) + 13];
                    if (!v59)
                    {
                      goto LABEL_56;
                    }

                    v60 = v59[3];
                    if (!v60)
                    {
                      goto LABEL_56;
                    }

                    v61 = 0;
                    v62 = off_27996AFD8[(v56 - 1)];
                    v63 = *(v60 + 82);
                    v64 = v60 + 36;
                    while (2)
                    {
                      v67 = (((117 * v63) >> 8) + (((v63 - ((117 * v63) >> 8)) & 0xFE) >> 1)) >> 3;
                      v68 = v63 - 11 * v67;
                      v69 = *(v64 + 4 * (v63 - 11 * v67));
                      if (!v69)
                      {
                        goto LABEL_68;
                      }

                      v70 = _NRCopyLogObjectForNRUUID(v57[6]);
                      if (sNRCopyLogToStdErr == 1)
                      {

                        goto LABEL_73;
                      }

                      v71 = v70;
                      v72 = os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT);

                      if (v72)
                      {
LABEL_73:
                        v73 = _NRCopyLogObjectForNRUUID(v192[6]);
                        _NRLogWithArgs(v73, 0, "LinkStats : %@ -----------------------------------", v62);
                      }

                      v57 = v192;
                      if (v69)
                      {
                        v74 = _NRCopyLogObjectForNRUUID(v192[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {

                          goto LABEL_78;
                        }

                        v75 = v74;
                        v76 = os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT);

                        v57 = v192;
                        if (v76)
                        {
LABEL_78:
                          v77 = _NRCopyLogObjectForNRUUID(v192[6]);
                          _NRLogWithArgs(v77, 0, "LinkStats : %@ NtL - StartNtL", v62);

                          v57 = v192;
                        }
                      }

                      if ((v69 & 2) != 0)
                      {
                        v78 = _NRCopyLogObjectForNRUUID(v57[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {

                          goto LABEL_83;
                        }

                        v79 = v78;
                        v80 = os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT);

                        v57 = v192;
                        if (v80)
                        {
LABEL_83:
                          v81 = _NRCopyLogObjectForNRUUID(v192[6]);
                          _NRLogWithArgs(v81, 0, "LinkStats : %@ NtL - WaitForLinkOutput", v62);

                          v57 = v192;
                        }
                      }

                      if ((v69 & 4) != 0)
                      {
                        v82 = _NRCopyLogObjectForNRUUID(v57[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {

                          goto LABEL_88;
                        }

                        v83 = v82;
                        v84 = os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT);

                        v57 = v192;
                        if (v84)
                        {
LABEL_88:
                          v85 = _NRCopyLogObjectForNRUUID(v192[6]);
                          _NRLogWithArgs(v85, 0, "LinkStats : %@ NtL - WriteContextInvalid", v62);

                          v57 = v192;
                        }
                      }

                      if ((v69 & 8) != 0)
                      {
                        v86 = _NRCopyLogObjectForNRUUID(v57[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {

                          goto LABEL_93;
                        }

                        v87 = v86;
                        v88 = os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT);

                        v57 = v192;
                        if (v88)
                        {
LABEL_93:
                          v89 = _NRCopyLogObjectForNRUUID(v192[6]);
                          _NRLogWithArgs(v89, 0, "LinkStats : %@ NtL - StartNtLOuter", v62);

                          v57 = v192;
                        }
                      }

                      if ((v69 & 0x10) != 0)
                      {
                        v90 = _NRCopyLogObjectForNRUUID(v57[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {

                          goto LABEL_98;
                        }

                        v91 = v90;
                        v92 = os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT);

                        v57 = v192;
                        if (v92)
                        {
LABEL_98:
                          v93 = _NRCopyLogObjectForNRUUID(v192[6]);
                          _NRLogWithArgs(v93, 0, "LinkStats : %@ NtL - StartNtLInner", v62);

                          v57 = v192;
                        }
                      }

                      if ((v69 & 0x20) != 0)
                      {
                        v94 = _NRCopyLogObjectForNRUUID(v57[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {

                          goto LABEL_103;
                        }

                        v95 = v94;
                        v96 = os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT);

                        v57 = v192;
                        if (v96)
                        {
LABEL_103:
                          v97 = _NRCopyLogObjectForNRUUID(v192[6]);
                          _NRLogWithArgs(v97, 0, "LinkStats : %@ NtL - WroteBytesLWB", v62);

                          v57 = v192;
                        }
                      }

                      if ((v69 & 0x40) != 0)
                      {
                        v98 = _NRCopyLogObjectForNRUUID(v57[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {

                          goto LABEL_108;
                        }

                        v99 = v98;
                        v100 = os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT);

                        v57 = v192;
                        if (v100)
                        {
LABEL_108:
                          v101 = _NRCopyLogObjectForNRUUID(v192[6]);
                          _NRLogWithArgs(v101, 0, "LinkStats : %@ NtL - NotEnoughRoomForMaxTLVLen", v62);

                          v57 = v192;
                        }
                      }

                      if ((v69 & 0x80) != 0)
                      {
                        v102 = _NRCopyLogObjectForNRUUID(v57[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {

                          goto LABEL_113;
                        }

                        v103 = v102;
                        v104 = os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT);

                        v57 = v192;
                        if (v104)
                        {
LABEL_113:
                          v105 = _NRCopyLogObjectForNRUUID(v192[6]);
                          _NRLogWithArgs(v105, 0, "LinkStats : %@ NtL - WroteBytesSlot", v62);

                          v57 = v192;
                        }
                      }

                      if ((v69 & 0x100) != 0)
                      {
                        v106 = _NRCopyLogObjectForNRUUID(v57[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {

                          goto LABEL_118;
                        }

                        v107 = v106;
                        v108 = os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT);

                        v57 = v192;
                        if (v108)
                        {
LABEL_118:
                          v109 = _NRCopyLogObjectForNRUUID(v192[6]);
                          _NRLogWithArgs(v109, 0, "LinkStats : %@ NtL - WroteBytesBuflet", v62);

                          v57 = v192;
                        }
                      }

                      if ((v69 & 0x200) != 0)
                      {
                        v110 = _NRCopyLogObjectForNRUUID(v57[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {

                          goto LABEL_123;
                        }

                        v111 = v110;
                        v112 = os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT);

                        v57 = v192;
                        if (v112)
                        {
LABEL_123:
                          v113 = _NRCopyLogObjectForNRUUID(v192[6]);
                          _NRLogWithArgs(v113, 0, "LinkStats : %@ NtL - NoDataToWrite", v62);

                          v57 = v192;
                        }
                      }

                      if ((v69 & 0x400) != 0)
                      {
                        v114 = _NRCopyLogObjectForNRUUID(v57[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {

                          goto LABEL_128;
                        }

                        v115 = v114;
                        v116 = os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT);

                        v57 = v192;
                        if (v116)
                        {
LABEL_128:
                          v117 = _NRCopyLogObjectForNRUUID(v192[6]);
                          _NRLogWithArgs(v117, 0, "LinkStats : %@ NtL - NoDataFromNexus", v62);

                          v57 = v192;
                        }
                      }

                      if ((v69 & 0x800) != 0)
                      {
                        v118 = _NRCopyLogObjectForNRUUID(v57[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {

                          goto LABEL_133;
                        }

                        v119 = v118;
                        v120 = os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT);

                        v57 = v192;
                        if (v120)
                        {
LABEL_133:
                          v121 = _NRCopyLogObjectForNRUUID(v192[6]);
                          _NRLogWithArgs(v121, 0, "LinkStats : %@ NtL - InvokeSendCallback", v62);

                          v57 = v192;
                        }
                      }

                      if ((v69 & 0x1000) != 0)
                      {
                        v122 = _NRCopyLogObjectForNRUUID(v57[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {

                          goto LABEL_138;
                        }

                        v123 = v122;
                        v124 = os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT);

                        v57 = v192;
                        if (v124)
                        {
LABEL_138:
                          v125 = _NRCopyLogObjectForNRUUID(v192[6]);
                          _NRLogWithArgs(v125, 0, "LinkStats : %@ NtL - NoOutputSpace", v62);

                          v57 = v192;
                        }
                      }

                      if ((v69 & 0x2000) != 0)
                      {
                        v126 = _NRCopyLogObjectForNRUUID(v57[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {

                          goto LABEL_143;
                        }

                        v127 = v126;
                        v128 = os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT);

                        v57 = v192;
                        if (v128)
                        {
LABEL_143:
                          v129 = _NRCopyLogObjectForNRUUID(v192[6]);
                          _NRLogWithArgs(v129, 0, "LinkStats : %@ NtL - MemmovingLWB", v62);

                          v57 = v192;
                        }
                      }

                      if ((v69 & 0x4000) != 0)
                      {
                        v130 = _NRCopyLogObjectForNRUUID(v57[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {

                          goto LABEL_148;
                        }

                        v131 = v130;
                        v132 = os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT);

                        v57 = v192;
                        if (v132)
                        {
LABEL_148:
                          v133 = _NRCopyLogObjectForNRUUID(v192[6]);
                          _NRLogWithArgs(v133, 0, "LinkStats : %@ NtL - NotMemmovingLWB", v62);

                          v57 = v192;
                        }
                      }

                      if ((v69 & 0x8000) != 0)
                      {
                        v134 = _NRCopyLogObjectForNRUUID(v57[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {

                          goto LABEL_153;
                        }

                        v135 = v134;
                        v136 = os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT);

                        v57 = v192;
                        if (v136)
                        {
LABEL_153:
                          v137 = _NRCopyLogObjectForNRUUID(v192[6]);
                          _NRLogWithArgs(v137, 0, "LinkStats : %@ NtL - EndNtLInner", v62);

                          v57 = v192;
                        }
                      }

                      if ((v69 & 0x10000) != 0)
                      {
                        v138 = _NRCopyLogObjectForNRUUID(v57[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {

                          goto LABEL_158;
                        }

                        v139 = v138;
                        v140 = os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT);

                        v57 = v192;
                        if (v140)
                        {
LABEL_158:
                          v141 = _NRCopyLogObjectForNRUUID(v192[6]);
                          _NRLogWithArgs(v141, 0, "LinkStats : %@ NtL - RxSync", v62);

                          v57 = v192;
                        }
                      }

                      if ((v69 & 0x20000) != 0)
                      {
                        v142 = _NRCopyLogObjectForNRUUID(v57[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {

                          goto LABEL_163;
                        }

                        v143 = v142;
                        v144 = os_log_type_enabled(v142, OS_LOG_TYPE_DEFAULT);

                        v57 = v192;
                        if (v144)
                        {
LABEL_163:
                          v145 = _NRCopyLogObjectForNRUUID(v192[6]);
                          _NRLogWithArgs(v145, 0, "LinkStats : %@ NtL - EndNtLOuter", v62);

                          v57 = v192;
                        }
                      }

                      if ((v69 & 0x40000) != 0)
                      {
                        v146 = _NRCopyLogObjectForNRUUID(v57[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {

                          goto LABEL_168;
                        }

                        v147 = v146;
                        v148 = os_log_type_enabled(v146, OS_LOG_TYPE_DEFAULT);

                        v57 = v192;
                        if (v148)
                        {
LABEL_168:
                          v149 = _NRCopyLogObjectForNRUUID(v192[6]);
                          _NRLogWithArgs(v149, 0, "LinkStats : %@ NtL - FinishNtL", v62);

                          v57 = v192;
                        }
                      }

                      if ((v69 & 0x80000) != 0)
                      {
                        v150 = _NRCopyLogObjectForNRUUID(v57[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {
                        }

                        else
                        {
                          v151 = v150;
                          v152 = os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT);

                          v57 = v192;
                          if (!v152)
                          {
                            goto LABEL_68;
                          }
                        }

                        v65 = _NRCopyLogObjectForNRUUID(v192[6]);
                        _NRLogWithArgs(v65, 0, "LinkStats : %@ NtL - LinkOutputAvailable", v62);

                        v57 = v192;
                      }

LABEL_68:
                      v63 = v68 + 1;
                      if (v61++ >= 0xA)
                      {
                        v50 = v185;
                        v49 = v187;
                        v52 = v189;
                        v53 = v191;
LABEL_176:
                        if (v58 > 2u)
                        {
                          v55 = &unk_286D2CF68;
                          goto LABEL_57;
                        }

LABEL_56:
                        v55 = qword_27996B010[v58];
                        goto LABEL_57;
                      }

                      continue;
                    }
                  }

                  v153 = _NRCopyLogObjectForNRUUID(v192[6]);
                  v154 = v153;
                  if (sNRCopyLogToStdErr == 1)
                  {

LABEL_179:
                    v156 = _NRCopyLogObjectForNRUUID(v192[6]);
                    _NRLogWithArgs(v156, 17, "Invalid priority %d", v56);

                    goto LABEL_180;
                  }

                  v155 = os_log_type_enabled(v153, OS_LOG_TYPE_FAULT);

                  if (v155)
                  {
                    goto LABEL_179;
                  }

LABEL_180:
                  v55 = &unk_286D2CF68;
                  v53 = v191;
LABEL_57:
                  [v49 addObject:v55];
                  ++v54;
                }

                while (v54 != v52);
                v52 = [v50 countByEnumeratingWithState:&v193 objects:v197 count:16];
              }

              while (v52);
            }

            v157 = objc_alloc_init(MEMORY[0x277CBEB38]);
            [v157 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"datapath-report-stall"];
            [v157 setObject:v49 forKeyedSubscript:@"channel-id-list"];
            [(NRBluetoothPacketParser *)v192 sendDatapathReport:v157];

            v46 = v183;
            goto LABEL_182;
          }

          v161 = nrCopyLogObj_560();
          v162 = v161;
          if (sNRCopyLogToStdErr == 1)
          {

LABEL_194:
            v164 = nrCopyLogObj_560();
            _NRLogWithArgs(v164, 17, "%s called with null linkChannelPriorityArray", "[NRBluetoothPacketParser reportDataStall:]");

            v46 = 0;
            goto LABEL_182;
          }

          v163 = os_log_type_enabled(v161, OS_LOG_TYPE_FAULT);

          v46 = 0;
          if (v163)
          {
            goto LABEL_194;
          }
        }

LABEL_182:

        WeakRetained = v192;
        v158 = v192[26] + 1;
        v192[26] = v158;
        if ((15 * v158) < 0xB4)
        {
LABEL_186:

          WeakRetained = v192;
          v43 = v192[25];
          goto LABEL_187;
        }

        if (*(v192 + 13) != 4)
        {
          v159 = v46;
          v160 = objc_alloc_init(MEMORY[0x277CBEB38]);
          [v160 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"datapath-report-remediate"];
          [(NRBluetoothPacketParser *)v192 sendDatapathReport:v160];

          v46 = v159;
          WeakRetained = v192;
        }

LABEL_185:
        *(WeakRetained + 26) = 0;
        goto LABEL_186;
      }
    }

    LODWORD(v45) = 0;
    goto LABEL_36;
  }

LABEL_188:
}

- ($3D27A55567FB06BC0E416B979767FD15)createWriteContextForPriority:(unsigned __int8)priority writeOutputCallback:(void *)callback writeOutputContext:(void *)context
{
  v49[1] = *MEMORY[0x277D85DE8];
  if (self->_state == 4)
  {
    return 0;
  }

  if (!callback)
  {
    v19 = nrCopyLogObj_560();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v20 = v19;
      v21 = os_log_type_enabled(v19, OS_LOG_TYPE_FAULT);

      if (!v21)
      {
        return 0;
      }
    }

    v17 = nrCopyLogObj_560();
    _NRLogWithArgs(v17, 17, "%s called with null callback", "[NRBluetoothPacketParser createWriteContextForPriority:writeOutputCallback:writeOutputContext:]");
    v10 = 0;
LABEL_16:

    return v10;
  }

  priorityCopy = priority;
  if (!priority)
  {
    return 0;
  }

  v9 = malloc_type_calloc(1uLL, 0x20uLL, 0x609965A1uLL);
  if (!v9)
  {
    v23 = nrCopyLogObj_560();
    v24 = v23;
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v29 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);

      if (!v29)
      {
LABEL_31:
        v31 = _os_log_pack_size();
        v33 = v49 - ((MEMORY[0x28223BE20](v31, v32) + 15) & 0xFFFFFFFFFFFFFFF0);
        v34 = __error();
        v35 = _os_log_pack_fill(v33, v31, *v34, &dword_25B98C000, "%{public}s strict_calloc(%zu, %zu) failed");
        *v35 = 136446722;
        *(v35 + 4) = "[NRBluetoothPacketParser createWriteContextForPriority:writeOutputCallback:writeOutputContext:]";
        *(v35 + 12) = 2048;
        *(v35 + 14) = 1;
        *(v35 + 22) = 2048;
        *(v35 + 24) = 32;
        goto LABEL_38;
      }
    }

    v30 = nrCopyLogObj_560();
    _NRLogWithArgs(v30, 16, "%s%.30s:%-4d ABORTING: strict_calloc(%zu, %zu) failed", ", "[NRBluetoothPacketParser createWriteContextForPriority:writeOutputCallback:writeOutputContext:]"", 1689, 1uLL, 0x20uLL);

    goto LABEL_31;
  }

  v10 = v9;
  v11 = malloc_type_calloc(1uLL, 0x58uLL, 0x274740F6uLL);
  if (!v11)
  {
    v25 = nrCopyLogObj_560();
    v26 = v25;
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v36 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);

      if (!v36)
      {
LABEL_34:
        v38 = _os_log_pack_size();
        v33 = v49 - ((MEMORY[0x28223BE20](v38, v39) + 15) & 0xFFFFFFFFFFFFFFF0);
        v40 = __error();
        v41 = _os_log_pack_fill(v33, v38, *v40, &dword_25B98C000, "%{public}s strict_calloc(%zu, %zu) failed");
        *v41 = 136446722;
        *(v41 + 4) = "[NRBluetoothPacketParser createWriteContextForPriority:writeOutputCallback:writeOutputContext:]";
        *(v41 + 12) = 2048;
        *(v41 + 14) = 1;
        *(v41 + 22) = 2048;
        *(v41 + 24) = 88;
        goto LABEL_38;
      }
    }

    v37 = nrCopyLogObj_560();
    _NRLogWithArgs(v37, 16, "%s%.30s:%-4d ABORTING: strict_calloc(%zu, %zu) failed", ", "[NRBluetoothPacketParser createWriteContextForPriority:writeOutputCallback:writeOutputContext:]"", 1690, 1uLL, 0x58uLL);

    goto LABEL_34;
  }

  v12 = v11;
  v13 = malloc_type_malloc(0x4000uLL, 0xC49FAEC8uLL);
  if (!v13)
  {
    v27 = nrCopyLogObj_560();
    v28 = v27;
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v42 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);

      if (!v42)
      {
LABEL_37:
        v44 = _os_log_pack_size();
        v33 = v49 - ((MEMORY[0x28223BE20](v44, v45) + 15) & 0xFFFFFFFFFFFFFFF0);
        v46 = __error();
        v47 = _os_log_pack_fill(v33, v44, *v46, &dword_25B98C000, "%{public}s strict allocator failed");
        *v47 = 136446210;
        *(v47 + 4) = "[NRBluetoothPacketParser createWriteContextForPriority:writeOutputCallback:writeOutputContext:]";
LABEL_38:
        v48 = nrCopyLogObj_560();
        _NRLogAbortWithPack(v48, v33);
      }
    }

    v43 = nrCopyLogObj_560();
    _NRLogWithArgs(v43, 16, "%s%.30s:%-4d ABORTING: strict allocator failed", ", "[NRBluetoothPacketParser createWriteContextForPriority:writeOutputCallback:writeOutputContext:]"", 1691);

    goto LABEL_37;
  }

  *v12 = v13;
  v12[83] = priorityCopy;
  *(v12 + 2) = self;
  v10->var0 = context;
  v10->var1 = callback;
  v10->var2 = NRParserLinkWriteAvailable;
  v10->var3 = v12;
  if (priorityCopy <= 3)
  {
    *(&self->_writeContextForMedium + 2 * (priorityCopy - 1)) = v10;
  }

  v14 = _NRCopyLogObjectForNRUUID(self->_nrUUID);
  if (sNRCopyLogToStdErr == 1)
  {

LABEL_12:
    v17 = _NRCopyLogObjectForNRUUID(self->_nrUUID);
    if (priorityCopy >= 4)
    {
      priorityCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown(%d)", priorityCopy];
    }

    else
    {
      priorityCopy = off_27996AFF0[priorityCopy];
    }

    _NRLogWithArgs(v17, 0, "%s%.30s:%-4d Created write context (%p) for %@", ", "[NRBluetoothPacketParser createWriteContextForPriority:writeOutputCallback:writeOutputContext:]"", 1712, v10, priorityCopy);

    goto LABEL_16;
  }

  v15 = v14;
  v16 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

  if (v16)
  {
    goto LABEL_12;
  }

  return v10;
}

- ($B174F4C94D76BD0ED270DA150CD5266A)createReadContextForPriority:(unsigned __int8)priority readAvailableCallback:(void *)callback readAvailableContext:(void *)context
{
  v50[1] = *MEMORY[0x277D85DE8];
  if (self->_state == 4)
  {
    return 0;
  }

  if (!callback)
  {
    v20 = nrCopyLogObj_560();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v21 = v20;
      v22 = os_log_type_enabled(v20, OS_LOG_TYPE_FAULT);

      if (!v22)
      {
        return 0;
      }
    }

    v18 = nrCopyLogObj_560();
    _NRLogWithArgs(v18, 17, "%s called with null callback", "[NRBluetoothPacketParser createReadContextForPriority:readAvailableCallback:readAvailableContext:]");
    v10 = 0;
LABEL_16:

    return v10;
  }

  priorityCopy = priority;
  if (!priority)
  {
    return 0;
  }

  v9 = malloc_type_calloc(1uLL, 0x28uLL, 0x173B7627uLL);
  if (!v9)
  {
    v24 = nrCopyLogObj_560();
    v25 = v24;
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v30 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);

      if (!v30)
      {
LABEL_31:
        v32 = _os_log_pack_size();
        v34 = v50 - ((MEMORY[0x28223BE20](v32, v33) + 15) & 0xFFFFFFFFFFFFFFF0);
        v35 = __error();
        v36 = _os_log_pack_fill(v34, v32, *v35, &dword_25B98C000, "%{public}s strict_calloc(%zu, %zu) failed");
        *v36 = 136446722;
        *(v36 + 4) = "[NRBluetoothPacketParser createReadContextForPriority:readAvailableCallback:readAvailableContext:]";
        *(v36 + 12) = 2048;
        *(v36 + 14) = 1;
        *(v36 + 22) = 2048;
        v37 = 40;
LABEL_35:
        *(v36 + 24) = v37;
        goto LABEL_39;
      }
    }

    v31 = nrCopyLogObj_560();
    _NRLogWithArgs(v31, 16, "%s%.30s:%-4d ABORTING: strict_calloc(%zu, %zu) failed", ", "[NRBluetoothPacketParser createReadContextForPriority:readAvailableCallback:readAvailableContext:]"", 1651, 1uLL, 0x28uLL);

    goto LABEL_31;
  }

  v10 = v9;
  v11 = malloc_type_calloc(1uLL, 0x30uLL, 0x95C9CD3CuLL);
  if (!v11)
  {
    v26 = nrCopyLogObj_560();
    v27 = v26;
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v38 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);

      if (!v38)
      {
LABEL_34:
        v40 = _os_log_pack_size();
        v34 = v50 - ((MEMORY[0x28223BE20](v40, v41) + 15) & 0xFFFFFFFFFFFFFFF0);
        v42 = __error();
        v36 = _os_log_pack_fill(v34, v40, *v42, &dword_25B98C000, "%{public}s strict_calloc(%zu, %zu) failed");
        *v36 = 136446722;
        *(v36 + 4) = "[NRBluetoothPacketParser createReadContextForPriority:readAvailableCallback:readAvailableContext:]";
        *(v36 + 12) = 2048;
        *(v36 + 14) = 1;
        *(v36 + 22) = 2048;
        v37 = 48;
        goto LABEL_35;
      }
    }

    v39 = nrCopyLogObj_560();
    _NRLogWithArgs(v39, 16, "%s%.30s:%-4d ABORTING: strict_calloc(%zu, %zu) failed", ", "[NRBluetoothPacketParser createReadContextForPriority:readAvailableCallback:readAvailableContext:]"", 1652, 1uLL, 0x30uLL);

    goto LABEL_34;
  }

  v12 = v11;
  v11[2] = self;
  v13 = malloc_type_malloc(0xFFFFuLL, 0xD0EBEC2FuLL);
  if (!v13)
  {
    v28 = nrCopyLogObj_560();
    v29 = v28;
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v43 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);

      if (!v43)
      {
LABEL_38:
        v45 = _os_log_pack_size();
        v34 = v50 - ((MEMORY[0x28223BE20](v45, v46) + 15) & 0xFFFFFFFFFFFFFFF0);
        v47 = __error();
        v48 = _os_log_pack_fill(v34, v45, *v47, &dword_25B98C000, "%{public}s strict allocator failed");
        *v48 = 136446210;
        *(v48 + 4) = "[NRBluetoothPacketParser createReadContextForPriority:readAvailableCallback:readAvailableContext:]";
LABEL_39:
        v49 = nrCopyLogObj_560();
        _NRLogAbortWithPack(v49, v34);
      }
    }

    v44 = nrCopyLogObj_560();
    _NRLogWithArgs(v44, 16, "%s%.30s:%-4d ABORTING: strict allocator failed", ", "[NRBluetoothPacketParser createReadContextForPriority:readAvailableCallback:readAvailableContext:]"", 1654);

    goto LABEL_38;
  }

  *v12 = v13;
  v12[42] = priorityCopy;
  v10->var3 = callback;
  v10->var4 = context;
  v10->var2 = NRBluetoothParserReadFlushCallback;
  v10->var0 = v12;
  v10->var1 = NRBluetoothParserReadInputCallback;
  v14 = priorityCopy - 1;
  if (priorityCopy <= 3)
  {
    *(&self->_readContextForMedium + 2 * v14) = v10;
  }

  ++self->_totalContextCount;
  v15 = _NRCopyLogObjectForNRUUID(self->_nrUUID);
  if (sNRCopyLogToStdErr == 1)
  {

LABEL_12:
    v18 = _NRCopyLogObjectForNRUUID(self->_nrUUID);
    if (priorityCopy >= 4)
    {
      priorityCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown(%d)", priorityCopy];
    }

    else
    {
      priorityCopy = off_27996AFD8[v14];
    }

    _NRLogWithArgs(v18, 0, "%s%.30s:%-4d Created read context (%p) for %@ (total: %llu)", ", "[NRBluetoothPacketParser createReadContextForPriority:readAvailableCallback:readAvailableContext:]"", 1672, v10, priorityCopy, self->_totalContextCount);

    goto LABEL_16;
  }

  v16 = v15;
  v17 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

  if (v17)
  {
    goto LABEL_12;
  }

  return v10;
}

- (void)handleInternalError:(uint64_t)error
{
  v10 = a2;
  v11 = v10;
  if (self && *(self + 13) != 4)
  {
    if (!v10)
    {
      v18 = nrCopyLogObj_560();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v19 = v18;
        v20 = os_log_type_enabled(v18, OS_LOG_TYPE_FAULT);

        if (!v20)
        {
          goto LABEL_9;
        }
      }

      v21 = nrCopyLogObj_560();
      _NRLogWithArgs(v21, 17, "%s called with null errorFormat", "[NRBluetoothPacketParser handleInternalError:]");

      goto LABEL_9;
    }

    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v10 arguments:&a9];
    v13 = _NRCopyLogObjectForNRUUID(*(self + 48));
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v14 = v13;
      v15 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

      if (!v15)
      {
LABEL_8:
        v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [v17 setObject:v12 forKeyedSubscript:@"error"];
        [(NRBluetoothPacketParser *)self sendXPCDictionary:v17];
        [(NRBluetoothPacketParser *)self teardown];

        goto LABEL_9;
      }
    }

    v16 = _NRCopyLogObjectForNRUUID(*(self + 48));
    _NRLogWithArgs(v16, 0, "%s%.30s:%-4d internal error: %@", ", "[NRBluetoothPacketParser handleInternalError:]"", 996, v12);

    goto LABEL_8;
  }

LABEL_9:
}

- (void)handleIncomingWakePacket:(uint64_t)packet spi:
{
  if (self && *(self + 13) != 4)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
    [v9 setObject:v7 forKeyedSubscript:@"wake-pkt-sn"];

    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:packet];
    [v9 setObject:v8 forKeyedSubscript:@"wake-pkt-spi"];

    [(NRBluetoothPacketParser *)self sendXPCDictionary:v9];
  }
}

- (void)sendXPCDictionary:(uint64_t)dictionary
{
  v3 = a2;
  v4 = v3;
  if (*(dictionary + 8))
  {
    if (*(dictionary + 408))
    {
      v5 = *(dictionary + 64);
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __45__NRBluetoothPacketParser_sendXPCDictionary___block_invoke;
      v6[3] = &unk_27996B248;
      v6[4] = dictionary;
      v7 = v3;
      dispatch_async(v5, v6);
    }
  }

  else
  {
    [*(dictionary + 416) sendXPCCommDictionary:v3];
  }
}

uint64_t __45__NRBluetoothPacketParser_sendXPCDictionary___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 13) != 4)
  {
    v2 = *(v1 + 408);
    if (v2)
    {
      return (*(v2 + 16))(v2, *(result + 40));
    }
  }

  return result;
}

- (void)teardown
{
  if (!self)
  {
    return;
  }

  v2 = _NRCopyLogObjectForNRUUID(*(self + 48));
  if (sNRCopyLogToStdErr == 1)
  {
  }

  else
  {
    v3 = v2;
    v4 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

    if (!v4)
    {
      goto LABEL_6;
    }
  }

  v5 = _NRCopyLogObjectForNRUUID(*(self + 48));
  _NRLogWithArgs(v5, 0, "%s%.30s:%-4d Teardown", ", "[NRBluetoothPacketParser teardown]"", 946);

LABEL_6:
  [(NRBluetoothPacketParser *)self changeStateTo:?];
  *(self + 15) = 0;
  v6 = *(self + 416);
  if (v6)
  {
    [v6 cancel];
    v7 = *(self + 416);
    *(self + 416) = 0;
  }

  v8 = *(self + 312);
  if (v8)
  {
    v9 = *(self + 144);
    if ((v9 & 8) == 0)
    {
LABEL_12:
      dispatch_source_cancel(v8);
      v10 = *(self + 312);
      *(self + 312) = 0;

      goto LABEL_13;
    }

    *(self + 144) = v9 & 0xFFFFFFFFFFFFFFF7;
    if (gNRPacketLoggingEnabled != 1)
    {
LABEL_11:
      dispatch_resume(*(self + 312));
      v8 = *(self + 312);
      goto LABEL_12;
    }

    v38 = _NRCopyLogObjectForNRUUID(*(self + 48));
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v46 = v38;
      v47 = os_log_type_enabled(v38, OS_LOG_TYPE_INFO);

      if (!v47)
      {
        goto LABEL_11;
      }
    }

    v48 = _NRCopyLogObjectForNRUUID(*(self + 48));
    _NRLogWithArgs(v48, 1, "%s%.30s:%-4d source-resume: NexusVOInput", ", "NRBluetoothPacketParserResumeNexusVOInputSource"", 489);

    goto LABEL_11;
  }

LABEL_13:
  v11 = *(self + 320);
  if (!v11)
  {
    goto LABEL_18;
  }

  v12 = *(self + 144);
  if ((v12 & 0x80) != 0)
  {
    *(self + 144) = v12 & 0xFFFFFFFFFFFFFF7FLL;
    if (gNRPacketLoggingEnabled != 1)
    {
LABEL_16:
      dispatch_resume(*(self + 320));
      v11 = *(self + 320);
      goto LABEL_17;
    }

    v39 = _NRCopyLogObjectForNRUUID(*(self + 48));
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v49 = v39;
      v50 = os_log_type_enabled(v39, OS_LOG_TYPE_INFO);

      if (!v50)
      {
        goto LABEL_16;
      }
    }

    v51 = _NRCopyLogObjectForNRUUID(*(self + 48));
    _NRLogWithArgs(v51, 1, "%s%.30s:%-4d source-resume: NexusVOOutput", ", "NRBluetoothPacketParserResumeNexusVOOutputSource"", 490);

    goto LABEL_16;
  }

LABEL_17:
  dispatch_source_cancel(v11);
  v13 = *(self + 320);
  *(self + 320) = 0;

LABEL_18:
  if (*(self + 216))
  {
    if (!*(self + 376))
    {
      os_channel_destroy();
    }

    *(self + 216) = 0;
  }

  *(self + 248) = 0;
  *(self + 256) = 0;
  v14 = *(self + 328);
  if (v14)
  {
    v15 = *(self + 144);
    if ((v15 & 0x10) == 0)
    {
LABEL_26:
      dispatch_source_cancel(v14);
      v16 = *(self + 328);
      *(self + 328) = 0;

      goto LABEL_27;
    }

    *(self + 144) = v15 & 0xFFFFFFFFFFFFFFEFLL;
    if (gNRPacketLoggingEnabled != 1)
    {
LABEL_25:
      dispatch_resume(*(self + 328));
      v14 = *(self + 328);
      goto LABEL_26;
    }

    v40 = _NRCopyLogObjectForNRUUID(*(self + 48));
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v52 = v40;
      v53 = os_log_type_enabled(v40, OS_LOG_TYPE_INFO);

      if (!v53)
      {
        goto LABEL_25;
      }
    }

    v54 = _NRCopyLogObjectForNRUUID(*(self + 48));
    _NRLogWithArgs(v54, 1, "%s%.30s:%-4d source-resume: NexusVIInput", ", "NRBluetoothPacketParserResumeNexusVIInputSource"", 491);

    goto LABEL_25;
  }

LABEL_27:
  v17 = *(self + 336);
  if (!v17)
  {
    goto LABEL_32;
  }

  v18 = *(self + 144);
  if ((v18 & 0x100) != 0)
  {
    *(self + 144) = v18 & 0xFFFFFFFFFFFFFEFFLL;
    if (gNRPacketLoggingEnabled != 1)
    {
LABEL_30:
      dispatch_resume(*(self + 336));
      v17 = *(self + 336);
      goto LABEL_31;
    }

    v41 = _NRCopyLogObjectForNRUUID(*(self + 48));
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v55 = v41;
      v56 = os_log_type_enabled(v41, OS_LOG_TYPE_INFO);

      if (!v56)
      {
        goto LABEL_30;
      }
    }

    v57 = _NRCopyLogObjectForNRUUID(*(self + 48));
    _NRLogWithArgs(v57, 1, "%s%.30s:%-4d source-resume: NexusVIOutput", ", "NRBluetoothPacketParserResumeNexusVIOutputSource"", 492);

    goto LABEL_30;
  }

LABEL_31:
  dispatch_source_cancel(v17);
  v19 = *(self + 336);
  *(self + 336) = 0;

LABEL_32:
  if (*(self + 224))
  {
    if (!*(self + 384))
    {
      os_channel_destroy();
    }

    *(self + 224) = 0;
  }

  *(self + 264) = 0;
  *(self + 272) = 0;
  v20 = *(self + 344);
  if (v20)
  {
    v21 = *(self + 144);
    if ((v21 & 0x20) == 0)
    {
LABEL_40:
      dispatch_source_cancel(v20);
      v22 = *(self + 344);
      *(self + 344) = 0;

      goto LABEL_41;
    }

    *(self + 144) = v21 & 0xFFFFFFFFFFFFFFDFLL;
    if (gNRPacketLoggingEnabled != 1)
    {
LABEL_39:
      dispatch_resume(*(self + 344));
      v20 = *(self + 344);
      goto LABEL_40;
    }

    v42 = _NRCopyLogObjectForNRUUID(*(self + 48));
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v58 = v42;
      v59 = os_log_type_enabled(v42, OS_LOG_TYPE_INFO);

      if (!v59)
      {
        goto LABEL_39;
      }
    }

    v60 = _NRCopyLogObjectForNRUUID(*(self + 48));
    _NRLogWithArgs(v60, 1, "%s%.30s:%-4d source-resume: NexusBEInput", ", "NRBluetoothPacketParserResumeNexusBEInputSource"", 487);

    goto LABEL_39;
  }

LABEL_41:
  v23 = *(self + 352);
  if (!v23)
  {
    goto LABEL_46;
  }

  v24 = *(self + 144);
  if ((v24 & 0x200) != 0)
  {
    *(self + 144) = v24 & 0xFFFFFFFFFFFFFDFFLL;
    if (gNRPacketLoggingEnabled != 1)
    {
LABEL_44:
      dispatch_resume(*(self + 352));
      v23 = *(self + 352);
      goto LABEL_45;
    }

    v43 = _NRCopyLogObjectForNRUUID(*(self + 48));
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v61 = v43;
      v62 = os_log_type_enabled(v43, OS_LOG_TYPE_INFO);

      if (!v62)
      {
        goto LABEL_44;
      }
    }

    v63 = _NRCopyLogObjectForNRUUID(*(self + 48));
    _NRLogWithArgs(v63, 1, "%s%.30s:%-4d source-resume: NexusBEOutput", ", "NRBluetoothPacketParserResumeNexusBEOutputSource"", 488);

    goto LABEL_44;
  }

LABEL_45:
  dispatch_source_cancel(v23);
  v25 = *(self + 352);
  *(self + 352) = 0;

LABEL_46:
  if (*(self + 232))
  {
    if (!*(self + 392))
    {
      os_channel_destroy();
    }

    *(self + 232) = 0;
  }

  *(self + 280) = 0;
  *(self + 288) = 0;
  v26 = *(self + 360);
  if (v26)
  {
    v27 = *(self + 144);
    if ((v27 & 0x40) == 0)
    {
LABEL_54:
      dispatch_source_cancel(v26);
      v28 = *(self + 360);
      *(self + 360) = 0;

      goto LABEL_55;
    }

    *(self + 144) = v27 & 0xFFFFFFFFFFFFFFBFLL;
    if (gNRPacketLoggingEnabled != 1)
    {
LABEL_53:
      dispatch_resume(*(self + 360));
      v26 = *(self + 360);
      goto LABEL_54;
    }

    v44 = _NRCopyLogObjectForNRUUID(*(self + 48));
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v64 = v44;
      v65 = os_log_type_enabled(v44, OS_LOG_TYPE_INFO);

      if (!v65)
      {
        goto LABEL_53;
      }
    }

    v66 = _NRCopyLogObjectForNRUUID(*(self + 48));
    _NRLogWithArgs(v66, 1, "%s%.30s:%-4d source-resume: NexusBKInput", ", "NRBluetoothPacketParserResumeNexusBKInputSource"", 493);

    goto LABEL_53;
  }

LABEL_55:
  v29 = *(self + 368);
  if (v29)
  {
    v30 = *(self + 144);
    if ((v30 & 0x400) == 0)
    {
LABEL_59:
      dispatch_source_cancel(v29);
      v31 = *(self + 368);
      *(self + 368) = 0;

      goto LABEL_60;
    }

    *(self + 144) = v30 & 0xFFFFFFFFFFFFFBFFLL;
    if (gNRPacketLoggingEnabled != 1)
    {
LABEL_58:
      dispatch_resume(*(self + 368));
      v29 = *(self + 368);
      goto LABEL_59;
    }

    v45 = _NRCopyLogObjectForNRUUID(*(self + 48));
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v67 = v45;
      v68 = os_log_type_enabled(v45, OS_LOG_TYPE_INFO);

      if (!v68)
      {
        goto LABEL_58;
      }
    }

    v69 = _NRCopyLogObjectForNRUUID(*(self + 48));
    _NRLogWithArgs(v69, 1, "%s%.30s:%-4d source-resume: NexusBKOutput", ", "NRBluetoothPacketParserResumeNexusBKOutputSource"", 494);

    goto LABEL_58;
  }

LABEL_60:
  if (*(self + 240))
  {
    if (!*(self + 400))
    {
      os_channel_destroy();
    }

    *(self + 240) = 0;
  }

  *(self + 296) = 0;
  *(self + 304) = 0;
  v32 = *(self + 72);
  *(self + 72) = 0;

  *(self + 16) = 0;
  v33 = *(self + 440);
  if (v33)
  {
    dispatch_source_cancel(v33);
    v34 = *(self + 440);
    *(self + 440) = 0;
  }

  v35 = *(self + 672);
  if (v35)
  {
    dispatch_source_cancel(v35);
    v36 = *(self + 672);
    *(self + 672) = 0;
  }

  v37 = *(self + 408);
  if (v37)
  {
    *(self + 408) = 0;
  }
}

- (void)changeStateTo:(uint64_t)to
{
  v2 = *(to + 13);
  if (v2 == a2)
  {
    return;
  }

  v5 = _NRCopyLogObjectForNRUUID(*(to + 48));
  if (v2 != 4)
  {
    if (sNRCopyLogToStdErr)
    {
    }

    else
    {
      v8 = v5;
      v9 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

      if (!v9)
      {
LABEL_16:
        *(to + 13) = a2;
        return;
      }
    }

    v10 = _NRCopyLogObjectForNRUUID(*(to + 48));
    v11 = *(to + 13);
    if (v11 >= 5)
    {
      v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown(%d)", v11];
    }

    else
    {
      v12 = off_27996AFB0[*(to + 13)];
    }

    v13 = off_27996AFB0[a2];
    _NRLogWithArgs(v10, 0, "%s%.30s:%-4d Changing state: %@ -> %@", ", "[NRBluetoothPacketParser changeStateTo:]"", 618, v12, v13);

    goto LABEL_16;
  }

  if (sNRCopyLogToStdErr)
  {
  }

  else
  {
    v6 = v5;
    v7 = os_log_type_enabled(v5, OS_LOG_TYPE_FAULT);

    if (!v7)
    {
      return;
    }
  }

  v14 = _NRCopyLogObjectForNRUUID(*(to + 48));
  _NRLogWithArgs(v14, 17, "Invalid state change %@", to);
}

- (void)resetContextForPriorityInner:(uint64_t)inner teardownContext:
{
  if (!self)
  {
    return;
  }

  v6 = _NRCopyLogObjectForNRUUID(*(self + 48));
  if (sNRCopyLogToStdErr == 1)
  {
  }

  else
  {
    v7 = v6;
    v8 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

    if (!v8)
    {
      goto LABEL_9;
    }
  }

  v9 = _NRCopyLogObjectForNRUUID(*(self + 48));
  if (a2 >= 4)
  {
    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown(%d)", a2];
  }

  else
  {
    v10 = off_27996AFF0[a2];
  }

  _NRLogWithArgs(v9, 0, "%s%.30s:%-4d Resetting context for priority: %@ (%d)", ", "[NRBluetoothPacketParser resetContextForPriorityInner:teardownContext:]"", 1017, v10, inner);

LABEL_9:
  v11 = 0xF7FBFDFF >> (8 * a2);
  if (a2 >= 4)
  {
    LOBYTE(v11) = -1;
  }

  *(self + 15) &= v11;
  if (!inner)
  {
    goto LABEL_59;
  }

  if ((a2 - 1) >= 3)
  {
    v13 = _NRCopyLogObjectForNRUUID(*(self + 48));
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v14 = v13;
      v15 = os_log_type_enabled(v13, OS_LOG_TYPE_FAULT);

      if (!v15)
      {
        goto LABEL_20;
      }
    }

    v16 = _NRCopyLogObjectForNRUUID(*(self + 48));
    _NRLogWithArgs(v16, 17, "Invalid priority %d", a2);
  }

  else if (*(16 * ((a2 - 1) & 0xF) + self + 96))
  {
    v12 = *(self + 680);
    if (v12)
    {
      *(self + 680) = v12 - 1;
    }
  }

LABEL_20:
  switch(a2)
  {
    case 1:
      v23 = *(self + 96);
      if (v23)
      {
        v24 = *v23;
        if (!*v23)
        {
          goto LABEL_50;
        }

        if (*v24)
        {
          free(*v24);
          ***(self + 96) = 0;
          v24 = **(self + 96);
        }

        if (v24[1] && (free(v24[1]), *(**(self + 96) + 8) = 0, v23 = *(self + 96), (v24 = *v23) == 0) || (free(v24), **(self + 96) = 0, (v23 = *(self + 96)) != 0))
        {
LABEL_50:
          free(v23);
          *(self + 96) = 0;
        }
      }

      v20 = self + 104;
      v19 = *(self + 104);
      if (v19)
      {
        goto LABEL_52;
      }

      break;
    case 2:
      v21 = *(self + 112);
      if (v21)
      {
        v22 = *v21;
        if (!*v21)
        {
          goto LABEL_40;
        }

        if (*v22)
        {
          free(*v22);
          ***(self + 112) = 0;
          v22 = **(self + 112);
        }

        if (v22[1] && (free(v22[1]), *(**(self + 112) + 8) = 0, v21 = *(self + 112), (v22 = *v21) == 0) || (free(v22), **(self + 112) = 0, (v21 = *(self + 112)) != 0))
        {
LABEL_40:
          free(v21);
          *(self + 112) = 0;
        }
      }

      v20 = self + 120;
      v19 = *(self + 120);
      if (v19)
      {
        goto LABEL_52;
      }

      break;
    case 3:
      v17 = *(self + 128);
      if (v17)
      {
        v18 = *v17;
        if (!*v17)
        {
          goto LABEL_30;
        }

        if (*v18)
        {
          free(*v18);
          ***(self + 128) = 0;
          v18 = **(self + 128);
        }

        if (v18[1] && (free(v18[1]), *(**(self + 128) + 8) = 0, v17 = *(self + 128), (v18 = *v17) == 0) || (free(v18), **(self + 128) = 0, (v17 = *(self + 128)) != 0))
        {
LABEL_30:
          free(v17);
          *(self + 128) = 0;
        }
      }

      v20 = self + 136;
      v19 = *(self + 136);
      if (!v19)
      {
        break;
      }

LABEL_52:
      v25 = v19[3];
      if (!v25)
      {
        goto LABEL_58;
      }

      if (*v25)
      {
        free(*v25);
        **(*v20 + 24) = 0;
        v25 = *(*v20 + 24);
      }

      if ((v26 = *(v25 + 8)) != 0 && (free(v26), *(*(*v20 + 24) + 8) = 0, v19 = *v20, (v25 = *(*v20 + 24)) == 0) || (free(v25), *(*v20 + 24) = 0, (v19 = *v20) != 0))
      {
LABEL_58:
        free(v19);
        *v20 = 0;
      }

      break;
    default:
      break;
  }

LABEL_59:
  v27 = *(self + 144);
  if ((v27 & 8) != 0 && *(self + 312))
  {
    *(self + 144) = v27 & 0xFFFFFFFFFFFFFFF7;
    if (gNRPacketLoggingEnabled != 1)
    {
LABEL_62:
      dispatch_resume(*(self + 312));
      v27 = *(self + 144);
      goto LABEL_63;
    }

    v29 = _NRCopyLogObjectForNRUUID(*(self + 48));
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v33 = v29;
      v34 = os_log_type_enabled(v29, OS_LOG_TYPE_INFO);

      if (!v34)
      {
        goto LABEL_62;
      }
    }

    v35 = _NRCopyLogObjectForNRUUID(*(self + 48));
    _NRLogWithArgs(v35, 1, "%s%.30s:%-4d source-resume: NexusVOInput", ", "NRBluetoothPacketParserResumeNexusVOInputSource"", 489);

    goto LABEL_62;
  }

LABEL_63:
  if ((v27 & 0x10) != 0 && *(self + 328))
  {
    *(self + 144) = v27 & 0xFFFFFFFFFFFFFFEFLL;
    if (gNRPacketLoggingEnabled != 1)
    {
LABEL_66:
      dispatch_resume(*(self + 328));
      v27 = *(self + 144);
      goto LABEL_67;
    }

    v30 = _NRCopyLogObjectForNRUUID(*(self + 48));
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v36 = v30;
      v37 = os_log_type_enabled(v30, OS_LOG_TYPE_INFO);

      if (!v37)
      {
        goto LABEL_66;
      }
    }

    v38 = _NRCopyLogObjectForNRUUID(*(self + 48));
    _NRLogWithArgs(v38, 1, "%s%.30s:%-4d source-resume: NexusVIInput", ", "NRBluetoothPacketParserResumeNexusVIInputSource"", 491);

    goto LABEL_66;
  }

LABEL_67:
  if ((v27 & 0x20) != 0 && *(self + 344))
  {
    *(self + 144) = v27 & 0xFFFFFFFFFFFFFFDFLL;
    if (gNRPacketLoggingEnabled != 1)
    {
LABEL_70:
      dispatch_resume(*(self + 344));
      v27 = *(self + 144);
      goto LABEL_71;
    }

    v31 = _NRCopyLogObjectForNRUUID(*(self + 48));
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v39 = v31;
      v40 = os_log_type_enabled(v31, OS_LOG_TYPE_INFO);

      if (!v40)
      {
        goto LABEL_70;
      }
    }

    v41 = _NRCopyLogObjectForNRUUID(*(self + 48));
    _NRLogWithArgs(v41, 1, "%s%.30s:%-4d source-resume: NexusBEInput", ", "NRBluetoothPacketParserResumeNexusBEInputSource"", 487);

    goto LABEL_70;
  }

LABEL_71:
  if ((v27 & 0x40) == 0 || !*(self + 360))
  {
    return;
  }

  *(self + 144) = v27 & 0xFFFFFFFFFFFFFFBFLL;
  if (gNRPacketLoggingEnabled != 1)
  {
    goto LABEL_74;
  }

  v32 = _NRCopyLogObjectForNRUUID(*(self + 48));
  if (sNRCopyLogToStdErr == 1)
  {

LABEL_93:
    v44 = _NRCopyLogObjectForNRUUID(*(self + 48));
    _NRLogWithArgs(v44, 1, "%s%.30s:%-4d source-resume: NexusBKInput", ", "NRBluetoothPacketParserResumeNexusBKInputSource"", 493);

    goto LABEL_74;
  }

  v42 = v32;
  v43 = os_log_type_enabled(v32, OS_LOG_TYPE_INFO);

  if (v43)
  {
    goto LABEL_93;
  }

LABEL_74:
  v28 = *(self + 360);

  dispatch_resume(v28);
}

- (void)cancel
{
  v3 = _NRCopyLogObjectForNRUUID(self->_nrUUID);
  if (sNRCopyLogToStdErr == 1)
  {
  }

  else
  {
    v4 = v3;
    v5 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (!v5)
    {
      goto LABEL_5;
    }
  }

  v6 = _NRCopyLogObjectForNRUUID(self->_nrUUID);
  _NRLogWithArgs(v6, 0, "%s%.30s:%-4d Cancel", ", "[NRBluetoothPacketParser cancel]"", 940);

LABEL_5:

  [(NRBluetoothPacketParser *)self teardown];
}

- (void)dealloc
{
  [(NRBluetoothPacketParser *)self cancel];
  readContextForMedium = self->_readContextForMedium;
  if (readContextForMedium)
  {
    var0 = readContextForMedium->var0;
    if (!readContextForMedium->var0)
    {
      goto LABEL_8;
    }

    if (*var0)
    {
      free(*var0);
      *self->_readContextForMedium->var0 = 0;
      var0 = self->_readContextForMedium->var0;
    }

    if (var0[1] && (free(var0[1]), *(self->_readContextForMedium->var0 + 1) = 0, readContextForMedium = self->_readContextForMedium, (var0 = readContextForMedium->var0) == 0) || (free(var0), self->_readContextForMedium->var0 = 0, (readContextForMedium = self->_readContextForMedium) != 0))
    {
LABEL_8:
      free(readContextForMedium);
      self->_readContextForMedium = 0;
    }
  }

  readContextForHigh = self->_readContextForHigh;
  if (readContextForHigh)
  {
    v6 = readContextForHigh->var0;
    if (!readContextForHigh->var0)
    {
      goto LABEL_16;
    }

    if (*v6)
    {
      free(*v6);
      *self->_readContextForHigh->var0 = 0;
      v6 = self->_readContextForHigh->var0;
    }

    if (v6[1] && (free(v6[1]), *(self->_readContextForHigh->var0 + 1) = 0, readContextForHigh = self->_readContextForHigh, (v6 = readContextForHigh->var0) == 0) || (free(v6), self->_readContextForHigh->var0 = 0, (readContextForHigh = self->_readContextForHigh) != 0))
    {
LABEL_16:
      free(readContextForHigh);
      self->_readContextForHigh = 0;
    }
  }

  readContextForIsochronous = self->_readContextForIsochronous;
  if (readContextForIsochronous)
  {
    v8 = readContextForIsochronous->var0;
    if (!readContextForIsochronous->var0)
    {
      goto LABEL_24;
    }

    if (*v8)
    {
      free(*v8);
      *self->_readContextForIsochronous->var0 = 0;
      v8 = self->_readContextForIsochronous->var0;
    }

    if (v8[1] && (free(v8[1]), *(self->_readContextForIsochronous->var0 + 1) = 0, readContextForIsochronous = self->_readContextForIsochronous, (v8 = readContextForIsochronous->var0) == 0) || (free(v8), self->_readContextForIsochronous->var0 = 0, (readContextForIsochronous = self->_readContextForIsochronous) != 0))
    {
LABEL_24:
      free(readContextForIsochronous);
      self->_readContextForIsochronous = 0;
    }
  }

  writeContextForMedium = self->_writeContextForMedium;
  if (writeContextForMedium)
  {
    var3 = writeContextForMedium->var3;
    if (!var3)
    {
      goto LABEL_32;
    }

    if (*var3)
    {
      free(*var3);
      *self->_writeContextForMedium->var3 = 0;
      var3 = self->_writeContextForMedium->var3;
    }

    if (var3[1] && (free(var3[1]), *(self->_writeContextForMedium->var3 + 1) = 0, writeContextForMedium = self->_writeContextForMedium, (var3 = writeContextForMedium->var3) == 0) || (free(var3), self->_writeContextForMedium->var3 = 0, (writeContextForMedium = self->_writeContextForMedium) != 0))
    {
LABEL_32:
      free(writeContextForMedium);
      self->_writeContextForMedium = 0;
    }
  }

  writeContextForHigh = self->_writeContextForHigh;
  if (writeContextForHigh)
  {
    v12 = writeContextForHigh->var3;
    if (!v12)
    {
      goto LABEL_40;
    }

    if (*v12)
    {
      free(*v12);
      *self->_writeContextForHigh->var3 = 0;
      v12 = self->_writeContextForHigh->var3;
    }

    if (v12[1] && (free(v12[1]), *(self->_writeContextForHigh->var3 + 1) = 0, writeContextForHigh = self->_writeContextForHigh, (v12 = writeContextForHigh->var3) == 0) || (free(v12), self->_writeContextForHigh->var3 = 0, (writeContextForHigh = self->_writeContextForHigh) != 0))
    {
LABEL_40:
      free(writeContextForHigh);
      self->_writeContextForHigh = 0;
    }
  }

  writeContextForIsochronous = self->_writeContextForIsochronous;
  if (writeContextForIsochronous)
  {
    v14 = writeContextForIsochronous->var3;
    if (!v14)
    {
      goto LABEL_48;
    }

    if (*v14)
    {
      free(*v14);
      *self->_writeContextForIsochronous->var3 = 0;
      v14 = self->_writeContextForIsochronous->var3;
    }

    if (v14[1] && (free(v14[1]), *(self->_writeContextForIsochronous->var3 + 1) = 0, writeContextForIsochronous = self->_writeContextForIsochronous, (v14 = writeContextForIsochronous->var3) == 0) || (free(v14), self->_writeContextForIsochronous->var3 = 0, (writeContextForIsochronous = self->_writeContextForIsochronous) != 0))
    {
LABEL_48:
      free(writeContextForIsochronous);
      self->_writeContextForIsochronous = 0;
    }
  }

  v15 = _NRCopyLogObjectForNRUUID(self->_nrUUID);
  if (sNRCopyLogToStdErr == 1)
  {

LABEL_52:
    v18 = _NRCopyLogObjectForNRUUID(self->_nrUUID);
    _NRLogWithArgs(v18, 0, "%s%.30s:%-4d Dealloc", ", "[NRBluetoothPacketParser dealloc]"", 934);

    goto LABEL_53;
  }

  v16 = v15;
  v17 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

  if (v17)
  {
    goto LABEL_52;
  }

LABEL_53:
  v19 = self->_nrUUID;
  os_unfair_lock_lock(&sNRLogLock);
  [sNRUUIDsEligibleForLogObject removeObject:v19];

  os_unfair_lock_unlock(&sNRLogLock);
  v20.receiver = self;
  v20.super_class = NRBluetoothPacketParser;
  [(NRBluetoothPacketParser *)&v20 dealloc];
}

- (BOOL)start
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__NRBluetoothPacketParser_start__block_invoke;
  block[3] = &unk_27996B180;
  block[4] = self;
  dispatch_async(queue, block);
  return 1;
}

void __32__NRBluetoothPacketParser_start__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 13) != 4 && (*(v1 + 14) & 1) == 0)
  {
    *(v1 + 14) = 1;
    v3 = *(a1 + 32);
    if (*(v3 + 8) == 1)
    {
      goto LABEL_13;
    }

    objc_initWeak(location, v3);
    v4 = [NRXPCComm alloc];
    v5 = *(a1 + 32);
    if (v5)
    {
      v5 = v5[5];
    }

    v6 = v5;
    v7 = *(a1 + 32);
    if (v7)
    {
      v7 = v7[8];
    }

    v8 = v7;
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __32__NRBluetoothPacketParser_start__block_invoke_2;
    v20 = &unk_27996AF20;
    objc_copyWeak(&v21, location);
    v9 = [(NRXPCComm *)v4 initWithDeviceIdentifier:v6 notificationQueue:v8 notificationBlock:&v17];
    v10 = *(a1 + 32);
    v11 = *(v10 + 416);
    *(v10 + 416) = v9;

    [*(*(a1 + 32) + 416) activate];
    objc_destroyWeak(&v21);
    objc_destroyWeak(location);
    v3 = *(a1 + 32);
    if (v3)
    {
LABEL_13:
      if (!*(v3 + 672))
      {
        v12 = v3;
        v13 = *(v3 + 64);
        v14 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v13);
        v15 = v12[84];
        v12[84] = v14;

        dispatch_source_set_timer(v12[84], 0, 0x12A05F200uLL, 0x1DCD6500uLL);
        objc_initWeak(&from, v12);
        v16 = v12[84];
        location[0] = MEMORY[0x277D85DD0];
        location[1] = 3221225472;
        location[2] = __44__NRBluetoothPacketParser_armLinkStatsTimer__block_invoke;
        location[3] = &unk_27996AF48;
        objc_copyWeak(v23, &from);
        v23[1] = 5;
        dispatch_source_set_event_handler(v16, location);
        dispatch_resume(v12[84]);
        objc_destroyWeak(v23);
        objc_destroyWeak(&from);
      }
    }
  }
}

void __32__NRBluetoothPacketParser_start__block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[13] != 4)
  {
    v4 = WeakRetained;
    [WeakRetained sendXPCCommDictionary:v5];
    WeakRetained = v4;
  }
}

- (void)sendDatapathReport:(uint64_t)report
{
  v8 = a2;
  v3 = _NRCopyLogObjectForNRUUID(*(report + 48));
  if (sNRCopyLogToStdErr == 1)
  {
  }

  else
  {
    v4 = v3;
    v5 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (!v5)
    {
      goto LABEL_5;
    }
  }

  v6 = _NRCopyLogObjectForNRUUID(*(report + 48));
  _NRLogWithArgs(v6, 0, "%s%.30s:%-4d sending datapath report: %@", ", "[NRBluetoothPacketParser sendDatapathReport:]"", 1361, v8);

LABEL_5:
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v7 setObject:v8 forKeyedSubscript:@"datapath-report"];
  [(NRBluetoothPacketParser *)report sendXPCDictionary:v7];
}

- (void)setReceiveXPCCommDictionaryHandler:(id)handler
{
  v4 = MEMORY[0x25F8740C0](handler, a2);
  xpcCommDictionaryCallback = self->_xpcCommDictionaryCallback;
  self->_xpcCommDictionaryCallback = v4;

  MEMORY[0x2821F96F8](v4, xpcCommDictionaryCallback);
}

- (void)sendXPCCommDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  selfCopy = self;
  if (self->_direct)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __49__NRBluetoothPacketParser_sendXPCCommDictionary___block_invoke;
    v7[3] = &unk_27996B248;
    v7[4] = selfCopy;
    v8 = dictionaryCopy;
    dispatch_async(queue, v7);
  }

  else
  {
    [(NRBluetoothPacketParser *)self sendXPCCommDictionaryInner:dictionaryCopy];
  }
}

- (void)sendXPCCommDictionaryInner:(uint64_t)inner
{
  v656 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!inner || *(inner + 13) == 4)
  {
    goto LABEL_307;
  }

  innerCopy = inner;
  v4 = (inner + 48);
  v5 = _NRCopyLogObjectForNRUUID(*(inner + 48));
  p_inst_meths = &OBJC_PROTOCOL___NSCopying.inst_meths;
  if (sNRCopyLogToStdErr == 1)
  {
  }

  else
  {
    v7 = v5;
    v8 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (!v8)
    {
      goto LABEL_7;
    }
  }

  v9 = _NRCopyLogObjectForNRUUID(*v4);
  _NRLogWithArgs(v9, 0, "%s%.30s:%-4d Received notification: %@", ", "[NRBluetoothPacketParser sendXPCCommDictionaryInner:]"", 641, v3);

LABEL_7:
  v10 = [v3 objectForKeyedSubscript:@"packet-logging"];

  if (v10)
  {
    v11 = [v3 objectForKeyedSubscript:@"packet-logging"];
    gNRPacketLoggingEnabled = [v11 BOOLValue];
  }

  v12 = [v3 objectForKeyedSubscript:@"test-wake-pkt"];

  v13 = innerCopy;
  if (v12)
  {
    v14 = [v3 objectForKeyedSubscript:@"test-wake-pkt"];
    *(innerCopy + 23) = [v14 BOOLValue];
  }

  v15 = [v3 objectForKeyedSubscript:@"message"];

  if (v15)
  {
    if (*(v13 + 13) == 1)
    {
      [(NRBluetoothPacketParser *)v13 changeStateTo:?];
    }

    v16 = [v3 objectForKeyedSubscript:@"message"];
    v17 = [v16 objectForKeyedSubscript:@"message-data"];
    v18 = [v16 objectForKeyedSubscript:@"channel-id"];
    v635 = v16;
    v636 = v17;
    if ([v18 integerValue] == 2)
    {
      LODWORD(v643) = 2;
      v19 = 112;
LABEL_18:

LABEL_19:
      v20 = "*";
      if (*(v13 + v19))
      {
        v21 = _NRCopyLogObjectForNRUUID(*v4);
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v22 = v21;
          v23 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);

          v13 = innerCopy;
          if (!v23)
          {
            goto LABEL_24;
          }
        }

        v24 = _NRCopyLogObjectForNRUUID(*(v13 + 48));
        _NRLogWithArgs(v24, 1, "%s%.30s:%-4d Read context: %p", ", "[NRBluetoothPacketParser sendXPCCommDictionaryInner:]"", 670, *(innerCopy + v19));

        v13 = innerCopy;
LABEL_24:
        v25 = **(v13 + v19);
        v26 = _NRCopyLogObjectForNRUUID(*(v13 + 48));
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v27 = v26;
          v28 = os_log_type_enabled(v26, OS_LOG_TYPE_INFO);

          if (!v28)
          {
LABEL_28:
            if (v25)
            {
              v30 = innerCopy;
              if ((v25[43] & 1) == 0)
              {
                v25[43] |= 1u;
                v31 = *(v30 + v19);
                v32 = *(v31 + 24);
                if (v32)
                {
                  v32(*(v31 + 32));
                }
              }

              v33 = off_27996AFD8[(v643 - 1)];
              v34 = v30 + 16 * (v643 - 1);
              v35 = v30;
              v36 = *(v34 + 104);
              v37 = _NRCopyLogObjectForNRUUID(*(v35 + 48));
              if (!v36)
              {
                if (sNRCopyLogToStdErr)
                {
                }

                else
                {
                  v453 = v37;
                  v454 = os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);

                  if (!v454)
                  {
                    goto LABEL_60;
                  }
                }

                v62 = _NRCopyLogObjectForNRUUID(*v4);
                StringFromNRLinkChannelPriority = createStringFromNRLinkChannelPriority(v643);
                _NRLogWithArgs(v62, 16, "%s%.30s:%-4d Invalid write context %sptr for prio %@", ", "[NRBluetoothPacketParser sendXPCCommDictionaryInner:]", 694, "*"", StringFromNRLinkChannelPriority);

                goto LABEL_59;
              }

              if (sNRCopyLogToStdErr)
              {
              }

              else
              {
                v39 = v37;
                v40 = os_log_type_enabled(v37, OS_LOG_TYPE_INFO);

                if (!v40)
                {
LABEL_39:
                  v42 = *(*(v34 + 104) + 24);
                  v43 = _NRCopyLogObjectForNRUUID(*v4);
                  if (v42)
                  {
                    v629 = v18;
                    if (sNRCopyLogToStdErr)
                    {
                    }

                    else
                    {
                      v45 = v43;
                      v46 = os_log_type_enabled(v43, OS_LOG_TYPE_INFO);

                      if (!v46)
                      {
                        goto LABEL_48;
                      }
                    }

                    v47 = _NRCopyLogObjectForNRUUID(*v4);
                    _NRLogWithArgs(v47, 1, "%s%.30s:%-4d link Write context: %p", ", "[NRBluetoothPacketParser sendXPCCommDictionaryInner:]"", 704, v42);

LABEL_48:
                    v48 = *(v42 + 24);
                    v49 = *(v42 + 28);
                    v50 = v636;
                    if ([v636 length] + v49 <= v48)
                    {
                      goto LABEL_63;
                    }

                    v51 = *(v42 + 28);
                    v52 = [v636 length];
                    v53 = (v51 + v52);
                    *(v42 + 24) = v53;
                    if (v51 + v52)
                    {
                      v54 = reallocf(*(v42 + 8), v53);
                      if (v54)
                      {
                        *(v42 + 8) = v54;
                        v55 = _NRCopyLogObjectForNRUUID(*v4);
                        if (sNRCopyLogToStdErr == 1)
                        {

                          v50 = v636;
                        }

                        else
                        {
                          v63 = v55;
                          v64 = os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT);

                          v50 = v636;
                          if (!v64)
                          {
                            goto LABEL_63;
                          }
                        }

                        v65 = _NRCopyLogObjectForNRUUID(*v4);
                        _NRLogWithArgs(v65, 0, "%s%.30s:%-4d %@ link Write context staging buffer allocated: %u bytes", ", "[NRBluetoothPacketParser sendXPCCommDictionaryInner:]"", 708, v33, *(v42 + 24));

LABEL_63:
                        memcpy((*(v42 + 8) + *(v42 + 28)), [v50 bytes], objc_msgSend(v50, "length"));
                        *(v42 + 28) += [v50 length];
                        v13 = innerCopy;
                        if (*(innerCopy + 13) == 4)
                        {
LABEL_276:

                          goto LABEL_277;
                        }

                        dispatch_assert_queue_V2(*(innerCopy + 64));
                        if (v643 == 1)
                        {
                          v66 = 0;
                          v70 = 0;
                          v632 = NRBluetoothPacketParserSuspendNexusBEInputSource;
                          v640 = 21;
                          v639 = 480;
                          v67 = 344;
                          v68 = 280;
                          v69 = 232;
                        }

                        else if (v643 == 3)
                        {
                          v632 = NRBluetoothPacketParserSuspendNexusVOInputSource;
                          v66 = 1;
                          v640 = 19;
                          v639 = 448;
                          v67 = 312;
                          v68 = 248;
                          v69 = 216;
                          v70 = 1;
                        }

                        else
                        {
                          v70 = 0;
                          v632 = NRBluetoothPacketParserSuspendNexusVIInputSource;
                          v66 = 1;
                          v640 = 20;
                          v639 = 464;
                          v67 = 328;
                          v68 = 264;
                          v69 = 224;
                        }

                        v78 = v643 ^ 0x67;
                        v625 = *(innerCopy + v69);
                        v643 = *(innerCopy + v68);
                        v79 = *(innerCopy + v67);
                        v80 = 0x280D73000uLL;
                        if (gNRPacketLoggingEnabled == 1)
                        {
                          v627 = v79;
                          v458 = _NRCopyLogObjectForNRUUID(*v4);
                          v459 = v458;
                          if (sNRCopyLogToStdErr == 1)
                          {

                            v80 = 0x280D73000;
                          }

                          else
                          {
                            v470 = os_log_type_enabled(v458, OS_LOG_TYPE_INFO);

                            v13 = innerCopy;
                            v79 = v627;
                            v80 = 0x280D73000;
                            if (!v470)
                            {
                              goto LABEL_80;
                            }
                          }

                          v471 = _NRCopyLogObjectForNRUUID(*v4);
                          _NRLogWithArgs(v471, 1, "%s%.30s:%-4d starting NtL fast-path for %u", ", "NRBluetoothPacketParserNexusToLinkLoop"", 1858, v78);

                          v79 = v627;
                          v13 = innerCopy;
                        }

LABEL_80:
                        v81 = *(v13 + 15);
                        v642 = *&v70 & ((v81 & 8) >> 3);
                        if (v642 == 1)
                        {
                          v82 = (v13 + 136);
                          v83 = "Isochronous";
                          v84 = 3;
                          p_inst_meths = (&OBJC_PROTOCOL___NSCopying + 24);
                          goto LABEL_98;
                        }

                        if (!v66)
                        {
                          p_inst_meths = (&OBJC_PROTOCOL___NSCopying + 24);
                          goto LABEL_89;
                        }

                        if ((v81 & 4) != 0)
                        {
                          v82 = (v13 + 120);
                          p_inst_meths = &OBJC_PROTOCOL___NSCopying.inst_meths;
                          goto LABEL_97;
                        }

                        v85 = *(v13 + 112);
                        p_inst_meths = &OBJC_PROTOCOL___NSCopying.inst_meths;
                        if (!v85)
                        {
LABEL_89:
                          v82 = (v13 + 104);
                          v83 = "Medium";
                          v84 = 1;
                          goto LABEL_98;
                        }

                        if ((*(*v85 + 43) & 3) == 1 && (*(v13 + 17) & 1) == 0)
                        {

                          v632 = 0;
                          v86 = 0;
                          v79 = 0;
                          v643 = 0;
                          v625 = 0;
                          v82 = (v13 + 120);
                        }

                        else
                        {
                          v82 = 0;
                          v86 = 1;
                        }

                        if (*(v13 + 17) == 1 && (*(v80 + 3640) & 1) != 0)
                        {
                          v627 = v79;
                          v514 = _NRCopyLogObjectForNRUUID(*v4);
                          v515 = v514;
                          if (sNRCopyLogToStdErr == 1)
                          {

                            v80 = 0x280D73000;
                          }

                          else
                          {
                            LODWORD(v641) = os_log_type_enabled(v514, OS_LOG_TYPE_INFO);

                            v13 = innerCopy;
                            v79 = v627;
                            v80 = 0x280D73000;
                            if (!v641)
                            {
                              goto LABEL_94;
                            }
                          }

                          v531 = _NRCopyLogObjectForNRUUID(*v4);
                          _NRLogWithArgs(v531, 1, "%s%.30s:%-4d sending packets over medium pipe", ", "NRBluetoothPacketParserNexusToLinkLoop"", 1887);

                          v79 = v627;
                          v13 = innerCopy;
                        }

LABEL_94:
                        if (v82)
                        {
                          if (v86)
                          {
                            v84 = 0;
                            v83 = "Invalid";
                            goto LABEL_98;
                          }

LABEL_97:
                          v83 = "High";
                          v84 = 2;
LABEL_98:
                          v87 = *v82;
                          v627 = v79;
                          if (v87)
                          {
                            v88 = *(v87 + 24);
                            if ((*(v88 + 84) & 1) == 0)
                            {
                              v622 = v84;
                              v621 = v83;
                              v628 = v4;
                              v624 = v3;
                              v89 = *(v88 + 8);
                              v90 = *(v88 + 83);
                              v91 = 584;
                              if (v90 == 3)
                              {
                                v91 = 600;
                              }

                              v256 = v90 == 2;
                              v92 = 616;
                              if (!v256)
                              {
                                v92 = v91;
                              }

                              v630 = v92;
                              v93 = *(v80 + 3640);
                              v633 = v82;
                              v634 = v89;
                              if (v93 != 1)
                              {
                                goto LABEL_105;
                              }

                              v480 = _NRCopyLogObjectForNRUUID(*v628);
                              v481 = v480;
                              if (*(p_inst_meths + 556) == 1)
                              {
                              }

                              else
                              {
                                v491 = os_log_type_enabled(v480, OS_LOG_TYPE_INFO);

                                v13 = innerCopy;
                                v89 = v634;
                                if (!v491)
                                {
LABEL_105:
                                  v623 = &v621;
                                  LODWORD(v638) = 0;
                                  v94 = 0;
                                  v95 = 0;
                                  v637 = 0;
                                  v96 = 0;
                                  v631 = 0;
                                  v641 = v88 + 36;
                                  v653 = 0u;
                                  v654 = 0u;
                                  v97 = 9;
                                  v651 = 0u;
                                  v652 = 0u;
                                  while (1)
                                  {
                                    if (*(v80 + 3640) == 1)
                                    {
                                      v156 = _NRCopyLogObjectForNRUUID(*v628);
                                      if (*(p_inst_meths + 556) == 1)
                                      {

LABEL_217:
                                        v161 = _NRCopyLogObjectForNRUUID(*v628);
                                        _NRLogWithArgs(v161, 1, "%s%.30s:%-4d %s: starting NtL inner loop", ", "NRBluetoothPacketParserNexusToLinkLoop"", 1949, v621);

                                        v89 = v634;
                                        v13 = innerCopy;
                                        goto LABEL_107;
                                      }

                                      v159 = v156;
                                      v160 = os_log_type_enabled(v156, OS_LOG_TYPE_INFO);

                                      v13 = innerCopy;
                                      v89 = v634;
                                      if (v160)
                                      {
                                        goto LABEL_217;
                                      }
                                    }

LABEL_107:
                                    v98 = v97 | 0x10;
                                    if ((v642 & 1) == 0)
                                    {
                                      v100 = *(v88 + 28);
                                      v99 = *(v88 + 32);
                                      if (v100 > v99)
                                      {
                                        v101 = *(v88 + 80);
                                        v102 = (v100 - v99);
                                        v626 = (0x4000 - v101);
                                        if (v102 >= (0x4000 - v101))
                                        {
                                          v103 = (0x4000 - v101);
                                        }

                                        else
                                        {
                                          v103 = (v100 - v99);
                                        }

                                        v104 = v89;
                                        memcpy((*v88 + v101), v89 + v99, v103);
                                        v105 = *(v88 + 28);
                                        v106 = *(v88 + 32) + v103;
                                        *(v88 + 32) = v106;
                                        if (v105 <= v106)
                                        {
                                          v107 = 0;
                                        }

                                        else
                                        {
                                          memmove(v104, &v104[v106], v105 - v106);
                                          v107 = *(v88 + 28) - *(v88 + 32);
                                        }

                                        *(v88 + 28) = v107;
                                        *(v88 + 32) = 0;
                                        *(v88 + 80) += v103;
                                        if (gNRPacketLoggingEnabled != 1)
                                        {
                                          goto LABEL_116;
                                        }

                                        v174 = _NRCopyLogObjectForNRUUID(*v628);
                                        v175 = v174;
                                        if (sNRCopyLogToStdErr == 1)
                                        {

                                          goto LABEL_242;
                                        }

                                        v183 = os_log_type_enabled(v174, OS_LOG_TYPE_INFO);

                                        v13 = innerCopy;
                                        if (v183)
                                        {
LABEL_242:
                                          v184 = _NRCopyLogObjectForNRUUID(*v628);
                                          _NRLogWithArgs(v184, 1, "%s%.30s:%-4d %s: wrote %u (%u/%u) bytes from linkWriteBuffer", ", "NRBluetoothPacketParserNexusToLinkLoop"", 1968, v621, v103, v626, v102);

                                          v13 = innerCopy;
                                        }

LABEL_116:
                                        v98 = v97 | 0x30;
                                        v95 += v103;
                                        v80 = 0x280D73000;
                                      }
                                    }

                                    next_slot = v637;
                                    if (v643)
                                    {
                                      next_slot = os_channel_get_next_slot();
                                    }

                                    if (!next_slot)
                                    {
                                      v138 = 0;
                                      goto LABEL_168;
                                    }

                                    while (1)
                                    {
                                      v109 = 0x4000 - *(v88 + 80);
                                      v110 = nrMaxTLVLengthForPacket(v652 + *(v13 + 28), (WORD1(v651) - *(v13 + 28)));
                                      if (v109 < v110)
                                      {
                                        v98 |= 0x40u;
                                        if (gNRPacketLoggingEnabled != 1)
                                        {
LABEL_166:
                                          v138 = next_slot;
                                          v13 = innerCopy;
                                          v80 = 0x280D73000;
                                          goto LABEL_168;
                                        }

                                        v168 = v110;
                                        v169 = _NRCopyLogObjectForNRUUID(*v628);
                                        if (sNRCopyLogToStdErr == 1)
                                        {
                                        }

                                        else
                                        {
                                          v179 = v169;
                                          LODWORD(v637) = os_log_type_enabled(v169, OS_LOG_TYPE_INFO);

                                          if (!v637)
                                          {
                                            goto LABEL_166;
                                          }
                                        }

                                        v180 = _NRCopyLogObjectForNRUUID(*v628);
                                        _NRLogWithArgs(v180, 1, "%s%.30s:%-4d %s: not enough room %u to fit maxTLVLen %u", ", "NRBluetoothPacketParserNexusToLinkLoop"", 1984, v621, v109, v168);

                                        goto LABEL_166;
                                      }

                                      os_channel_slot_get_packet();
                                      os_packet_get_next_buflet();
                                      data_offset = os_buflet_get_data_offset();
                                      object_address = os_buflet_get_object_address();
                                      data_length = os_buflet_get_data_length();
                                      if (data_length >= 0x10000)
                                      {
                                        v314 = nrCopyLogObj_560();
                                        if (sNRCopyLogToStdErr == 1)
                                        {

                                          goto LABEL_446;
                                        }

                                        v324 = v314;
                                        v325 = os_log_type_enabled(v314, OS_LOG_TYPE_ERROR);

                                        if (v325)
                                        {
LABEL_446:
                                          v326 = nrCopyLogObj_560();
                                          _NRLogWithArgs(v326, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: dataLen <= 65535", ", "NRBluetoothPacketParserNexusToLinkLoop"", 1997);
                                        }

                                        v327 = _os_log_pack_size();
                                        v329 = &v621 - ((MEMORY[0x28223BE20](v327, v328) + 15) & 0xFFFFFFFFFFFFFFF0);
                                        v330 = __error();
                                        v331 = _os_log_pack_fill(v329, v327, *v330, &dword_25B98C000, "%{public}s Assertion Failed: dataLen <= 65535");
                                        *v331 = 136446210;
                                        *(v331 + 4) = "NRBluetoothPacketParserNexusToLinkLoop";
                                        goto LABEL_448;
                                      }

                                      if (*(innerCopy + 9) == 1)
                                      {
                                        v649 = 0;
                                        v650 = 0;
                                        v114 = (*v88 + *(v88 + 80));
                                        v649 = v114;
                                        LODWORD(v650) = v109;
                                        v115 = *(innerCopy + 28);
                                        v13 = innerCopy;
                                        if (*(innerCopy + 10) == 1)
                                        {
                                          v116 = nrPacketTo6LoWPAN((v652 + v115), (WORD1(v651) - v115), &v649, 1u, innerCopy + 688, innerCopy + 704, 0);
                                        }

                                        else
                                        {
                                          memcpy(v114, (v652 + v115), WORD1(v651) - v115);
                                          v116 = WORD1(v651) - *(v13 + 28);
                                        }

                                        v80 = 0x280D73000uLL;
                                        if (gNRPacketLoggingEnabled != 1)
                                        {
                                          goto LABEL_135;
                                        }

                                        v123 = _NRCopyLogObjectForNRUUID(*v628);
                                        if (sNRCopyLogToStdErr == 1)
                                        {

                                          goto LABEL_152;
                                        }

                                        v124 = v123;
                                        v125 = os_log_type_enabled(v123, OS_LOG_TYPE_INFO);

                                        v13 = innerCopy;
                                        if (v125)
                                        {
LABEL_152:
                                          v126 = _NRCopyLogObjectForNRUUID(*v628);
                                          _NRLogWithArgs(v126, 1, "%s%.30s:%-4d %s: wrote %u bytes from nexus (actual: %u)", ", "NRBluetoothPacketParserNexusToLinkLoop"", 2015, v621, v116, WORD1(v651));
                                          goto LABEL_157;
                                        }

                                        goto LABEL_135;
                                      }

                                      if (!data_length && WORD1(v651))
                                      {
                                        v649 = 0;
                                        v650 = 0;
                                        v649 = *v88 + *(v88 + 80);
                                        LODWORD(v650) = v109;
                                        v13 = innerCopy;
                                        v116 = nrPacketToTLV((v652 + *(innerCopy + 28)), (WORD1(v651) - *(innerCopy + 28)), &v649, 1, innerCopy + 688, innerCopy + 704);
                                        v80 = 0x280D73000uLL;
                                        if (gNRPacketLoggingEnabled == 1)
                                        {
                                          v117 = _NRCopyLogObjectForNRUUID(*v628);
                                          if (sNRCopyLogToStdErr == 1)
                                          {
                                          }

                                          else
                                          {
                                            v128 = v117;
                                            v129 = os_log_type_enabled(v117, OS_LOG_TYPE_INFO);

                                            v13 = innerCopy;
                                            if (!v129)
                                            {
                                              goto LABEL_135;
                                            }
                                          }

                                          v126 = _NRCopyLogObjectForNRUUID(*v628);
                                          ESPSequenceNumberFromPacket = getESPSequenceNumberFromPacket(v652, WORD1(v651));
                                          ESPSPIFromPacket = getESPSPIFromPacket(v652, WORD1(v651));
                                          _NRLogWithArgs(v126, 1, "%s%.30s:%-4d %s: wrote %u bytes from nexus for ESP seq: %u (spi: %u)", ", "NRBluetoothPacketParserNexusToLinkLoop"", 2027, v621, v116, ESPSequenceNumberFromPacket, ESPSPIFromPacket);
LABEL_157:

                                          v13 = innerCopy;
                                        }

LABEL_135:
                                        v98 |= 0x80u;
                                        goto LABEL_136;
                                      }

                                      if (data_length)
                                      {
                                        v118 = object_address + data_offset;
                                        v649 = 0;
                                        v650 = 0;
                                        v649 = *v88 + *(v88 + 80);
                                        LODWORD(v650) = v109;
                                        v13 = innerCopy;
                                        v119 = data_length;
                                        v116 = nrPacketToTLV((v118 + *(innerCopy + 28)), (data_length - *(innerCopy + 28)), &v649, 1, innerCopy + 688, innerCopy + 704);
                                        if (gNRPacketLoggingEnabled != 1)
                                        {
LABEL_132:
                                          v98 |= 0x100u;
                                          v80 = 0x280D73000;
                                          goto LABEL_136;
                                        }

                                        v127 = _NRCopyLogObjectForNRUUID(*v628);
                                        if (sNRCopyLogToStdErr == 1)
                                        {
                                        }

                                        else
                                        {
                                          v133 = v127;
                                          LODWORD(v637) = os_log_type_enabled(v127, OS_LOG_TYPE_INFO);

                                          v13 = innerCopy;
                                          if (!v637)
                                          {
                                            goto LABEL_132;
                                          }
                                        }

                                        v134 = _NRCopyLogObjectForNRUUID(*v628);
                                        v637 = getESPSequenceNumberFromPacket(v118, v119);
                                        v135 = getESPSPIFromPacket(v118, v119);
                                        _NRLogWithArgs(v134, 1, "%s%.30s:%-4d %s: wrote %u bytes from nexus for ESP seq: %u (spi: %u)", ", "NRBluetoothPacketParserNexusToLinkLoop"", 2037, v621, v116, v637, v135);

                                        v13 = innerCopy;
                                        goto LABEL_132;
                                      }

                                      v98 |= 0x200u;
                                      v80 = 0x280D73000uLL;
                                      if (gNRPacketLoggingEnabled == 1)
                                      {
                                        v132 = _NRCopyLogObjectForNRUUID(*v628);
                                        if (sNRCopyLogToStdErr == 1)
                                        {
                                        }

                                        else
                                        {
                                          v136 = v132;
                                          v116 = os_log_type_enabled(v132, OS_LOG_TYPE_INFO);

                                          if (!v116)
                                          {
                                            goto LABEL_148;
                                          }
                                        }

                                        v137 = _NRCopyLogObjectForNRUUID(*v628);
                                        _NRLogWithArgs(v137, 1, "%s%.30s:%-4d %s: No data to write", ", "NRBluetoothPacketParserNexusToLinkLoop"", 2039, v621);
                                      }

                                      v116 = 0;
LABEL_148:
                                      v13 = innerCopy;
LABEL_136:
                                      *(v88 + 80) += v116;
                                      v120 = (v642 & 1) != 0 ? 0 : os_channel_get_next_slot();
                                      ++v94;
                                      ++*(v13 + v639);
                                      *(v13 + v640) = 1;
                                      v95 += v116;
                                      if (!v120)
                                      {
                                        break;
                                      }

                                      v121 = *(v88 + 82);
                                      if (v121 >= 0xB)
                                      {
                                        v121 -= 11 * ((((117 * v121) >> 8) + (((v121 - ((117 * v121) >> 8)) & 0xFE) >> 1)) >> 3);
                                      }

                                      *(v641 + 4 * v121) = v98;
                                      if (v121 < 0xAu)
                                      {
                                        v122 = v121 + 1;
                                      }

                                      else
                                      {
                                        v122 = v121 - 10;
                                      }

                                      *(v88 + 82) = v122;
                                      v96 = next_slot;
                                      next_slot = v120;
                                      v98 = 0;
                                    }

                                    v138 = 0;
                                    v96 = next_slot;
LABEL_168:
                                    v139 = *(v88 + 80);
                                    if (!*(v88 + 80))
                                    {
                                      v141 = v98 | 0x400;
                                      if (*(v80 + 3640) != 1)
                                      {
                                        goto LABEL_256;
                                      }

                                      v496 = _NRCopyLogObjectForNRUUID(*v628);
                                      v497 = v496;
                                      if (sNRCopyLogToStdErr == 1)
                                      {

                                        goto LABEL_740;
                                      }

                                      v506 = os_log_type_enabled(v496, OS_LOG_TYPE_INFO);

                                      if (v506)
                                      {
LABEL_740:
                                        v507 = _NRCopyLogObjectForNRUUID(*v628);
                                        _NRLogWithArgs(v507, 1, "%s%.30s:%-4d %s: nothing to read from nexus", ", "NRBluetoothPacketParserNexusToLinkLoop"", 2065, v621);
                                      }

                                      v13 = innerCopy;
                                      v80 = 0x280D73000;
LABEL_256:
                                      v187 = v141 | 0x8000;
                                      if (*(v80 + 3640) == 1)
                                      {
                                        v485 = _NRCopyLogObjectForNRUUID(*v628);
                                        v486 = v485;
                                        if (sNRCopyLogToStdErr == 1)
                                        {
                                        }

                                        else
                                        {
                                          v498 = os_log_type_enabled(v485, OS_LOG_TYPE_INFO);

                                          v13 = innerCopy;
                                          if (!v498)
                                          {
                                            goto LABEL_257;
                                          }
                                        }

                                        v499 = _NRCopyLogObjectForNRUUID(*v628);
                                        _NRLogWithArgs(v499, 1, "%s%.30s:%-4d %s: out of NtL inner loop", ", "NRBluetoothPacketParserNexusToLinkLoop"", 2110, v621);

                                        v13 = innerCopy;
                                      }

LABEL_257:
                                      if (v96)
                                      {
                                        os_channel_advance_slot();
                                        *(v13 + 18) = 1;
                                        v3 = v624;
LABEL_260:
                                        v188 = v638;
                                        if (v638 > 8u || v643 && os_channel_available_slot_count() <= 1)
                                        {
                                          v187 = v141 | 0x18000;
                                          if (gNRPacketLoggingEnabled != 1)
                                          {
                                            goto LABEL_264;
                                          }

                                          v494 = _NRCopyLogObjectForNRUUID(*v628);
                                          v495 = v494;
                                          if (sNRCopyLogToStdErr == 1)
                                          {

                                            v3 = v624;
                                            v13 = innerCopy;
                                            goto LABEL_738;
                                          }

                                          v504 = os_log_type_enabled(v494, OS_LOG_TYPE_INFO);

                                          v3 = v624;
                                          v13 = innerCopy;
                                          if (v504)
                                          {
LABEL_738:
                                            v505 = _NRCopyLogObjectForNRUUID(*(v13 + 48));
                                            _NRLogWithArgs(v505, 1, "%s%.30s:%-4d %s: performing RX sync (%u packets, %u bytes, %u pending, %0.2f msec, canWriteMore %d, memmove %u)", ", "NRBluetoothPacketParserNexusToLinkLoop"", 2123, v621, v94, v95, v188, *(innerCopy + 432) * 0.000001, v139 == 0, v631);

                                            v13 = innerCopy;
                                          }

LABEL_264:
                                          os_channel_sync();
                                          *(v13 + 18) = 0;
                                        }
                                      }

                                      else
                                      {
                                        v3 = v624;
                                        if (*(v13 + 18))
                                        {
                                          goto LABEL_260;
                                        }
                                      }

                                      if (gNRPacketLoggingEnabled == 1)
                                      {
                                        v487 = _NRCopyLogObjectForNRUUID(*v628);
                                        v488 = v487;
                                        if (sNRCopyLogToStdErr == 1)
                                        {

                                          v3 = v624;
                                          v13 = innerCopy;
                                        }

                                        else
                                        {
                                          v500 = os_log_type_enabled(v487, OS_LOG_TYPE_INFO);

                                          v3 = v624;
                                          v13 = innerCopy;
                                          if (!v500)
                                          {
                                            goto LABEL_266;
                                          }
                                        }

                                        v501 = _NRCopyLogObjectForNRUUID(*v628);
                                        _NRLogWithArgs(v501, 1, "%s%.30s:%-4d %s: out of NtL outer loop", ", "NRBluetoothPacketParserNexusToLinkLoop"", 2134, v621);
                                      }

LABEL_266:
                                      v4 = v628;
                                      p_inst_meths = &OBJC_PROTOCOL___NSCopying.inst_meths;
                                      if (v139)
                                      {
LABEL_267:
                                        if (gNRPacketLoggingEnabled != 1)
                                        {
                                          goto LABEL_268;
                                        }

                                        v489 = _NRCopyLogObjectForNRUUID(*v4);
                                        v490 = v489;
                                        if (*(p_inst_meths + 556) == 1)
                                        {

                                          v3 = v624;
                                          v13 = innerCopy;
                                          v4 = v628;
                                          goto LABEL_736;
                                        }

                                        v502 = os_log_type_enabled(v489, OS_LOG_TYPE_INFO);

                                        v3 = v624;
                                        v13 = innerCopy;
                                        v4 = v628;
                                        if (v502)
                                        {
LABEL_736:
                                          v503 = _NRCopyLogObjectForNRUUID(*v4);
                                          _NRLogWithArgs(v503, 1, "%s%.30s:%-4d %s: done with NtL fast-path", ", "NRBluetoothPacketParserNexusToLinkLoop"", 2168, v621);
                                        }

LABEL_268:
                                        v185 = *(v88 + 82);
                                        if (v185 >= 0xB)
                                        {
                                          v185 -= 11 * ((((117 * v185) >> 8) + (((v185 - ((117 * v185) >> 8)) & 0xFE) >> 1)) >> 3);
                                        }

                                        v186 = v185;
                                        *(v641 + 4 * v185) = v187 | 0x60000;
LABEL_271:
                                        if (v186 < 0xA)
                                        {
                                          v189 = v185 + 1;
                                        }

                                        else
                                        {
                                          v189 = v185 - 10;
                                        }

                                        *(v88 + 82) = v189;
                                        goto LABEL_275;
                                      }

                                      if (v622 <= 1)
                                      {
                                        if (v622)
                                        {
                                          v239 = *(v13 + 144);
                                          if ((*(v13 + 15) & 4) == 0)
                                          {
                                            goto LABEL_411;
                                          }
                                        }

                                        else
                                        {
                                          v239 = *(v13 + 144);
LABEL_411:
                                          if ((v239 & 8) != 0 && *(v13 + 312))
                                          {
                                            *(v13 + 144) = v239 & 0xFFFFFFFFFFFFFFF7;
                                            if (gNRPacketLoggingEnabled != 1)
                                            {
                                              goto LABEL_414;
                                            }

                                            v534 = _NRCopyLogObjectForNRUUID(*v4);
                                            v535 = v534;
                                            if (sNRCopyLogToStdErr == 1)
                                            {

                                              v3 = v624;
                                              v13 = innerCopy;
                                              v4 = v628;
                                              goto LABEL_794;
                                            }

                                            v560 = os_log_type_enabled(v534, OS_LOG_TYPE_INFO);

                                            v3 = v624;
                                            v13 = innerCopy;
                                            v4 = v628;
                                            if (v560)
                                            {
LABEL_794:
                                              v561 = _NRCopyLogObjectForNRUUID(*v4);
                                              _NRLogWithArgs(v561, 1, "%s%.30s:%-4d source-resume: NexusVOInput", ", "NRBluetoothPacketParserResumeNexusVOInputSource"", 489);
                                            }

LABEL_414:
                                            dispatch_resume(*(v13 + 312));
                                            v239 = *(v13 + 144);
                                          }

                                          if ((v239 & 0x10) != 0 && *(v13 + 328))
                                          {
                                            *(v13 + 144) = v239 & 0xFFFFFFFFFFFFFFEFLL;
                                            if (gNRPacketLoggingEnabled != 1)
                                            {
                                              goto LABEL_418;
                                            }

                                            v536 = _NRCopyLogObjectForNRUUID(*v4);
                                            v537 = v536;
                                            if (sNRCopyLogToStdErr == 1)
                                            {

                                              v3 = v624;
                                              v13 = innerCopy;
                                              v4 = v628;
                                              goto LABEL_796;
                                            }

                                            v562 = os_log_type_enabled(v536, OS_LOG_TYPE_INFO);

                                            v3 = v624;
                                            v13 = innerCopy;
                                            v4 = v628;
                                            if (v562)
                                            {
LABEL_796:
                                              v563 = _NRCopyLogObjectForNRUUID(*v4);
                                              _NRLogWithArgs(v563, 1, "%s%.30s:%-4d source-resume: NexusVIInput", ", "NRBluetoothPacketParserResumeNexusVIInputSource"", 491);
                                            }

LABEL_418:
                                            dispatch_resume(*(v13 + 328));
                                            v239 = *(v13 + 144);
                                          }
                                        }

                                        if ((v239 & 0x20) != 0 && *(v13 + 344))
                                        {
                                          *(v13 + 144) = v239 & 0xFFFFFFFFFFFFFFDFLL;
                                          if (gNRPacketLoggingEnabled != 1)
                                          {
                                            goto LABEL_422;
                                          }

                                          v532 = _NRCopyLogObjectForNRUUID(*v4);
                                          v533 = v532;
                                          if (sNRCopyLogToStdErr == 1)
                                          {

                                            v3 = v624;
                                            v13 = innerCopy;
                                            v4 = v628;
                                            goto LABEL_792;
                                          }

                                          v558 = os_log_type_enabled(v532, OS_LOG_TYPE_INFO);

                                          v3 = v624;
                                          v13 = innerCopy;
                                          v4 = v628;
                                          if (v558)
                                          {
LABEL_792:
                                            v559 = _NRCopyLogObjectForNRUUID(*v4);
                                            _NRLogWithArgs(v559, 1, "%s%.30s:%-4d source-resume: NexusBEInput", ", "NRBluetoothPacketParserResumeNexusBEInputSource"", 487);
                                          }

LABEL_422:
                                          dispatch_resume(*(v13 + 344));
                                          v239 = *(v13 + 144);
                                        }

                                        if ((v239 & 0x40) == 0 || !*(v13 + 360))
                                        {
                                          goto LABEL_267;
                                        }

                                        v241 = (v13 + 360);
                                        *(v13 + 144) = v239 & 0xFFFFFFFFFFFFFFBFLL;
                                        if (gNRPacketLoggingEnabled == 1)
                                        {
                                          v311 = _NRCopyLogObjectForNRUUID(*v4);
                                          v312 = v311;
                                          if (sNRCopyLogToStdErr == 1)
                                          {

                                            goto LABEL_788;
                                          }

                                          v554 = os_log_type_enabled(v311, OS_LOG_TYPE_INFO);

                                          if (v554)
                                          {
LABEL_788:
                                            v555 = _NRCopyLogObjectForNRUUID(*v628);
                                            _NRLogWithArgs(v555, 1, "%s%.30s:%-4d source-resume: NexusBKInput");
                                            goto LABEL_808;
                                          }

LABEL_809:
                                          v3 = v624;
                                          v13 = innerCopy;
                                          v4 = v628;
                                        }

LABEL_431:
                                        dispatch_resume(*v241);
                                        p_inst_meths = (&OBJC_PROTOCOL___NSCopying + 24);
                                        goto LABEL_267;
                                      }

                                      if (v622 == 2)
                                      {
                                        v240 = *(v13 + 144);
                                        if ((v240 & 8) != 0 && *(v13 + 312))
                                        {
                                          *(v13 + 144) = v240 & 0xFFFFFFFFFFFFFFF7;
                                          if (gNRPacketLoggingEnabled != 1)
                                          {
                                            goto LABEL_316;
                                          }

                                          v552 = _NRCopyLogObjectForNRUUID(*v4);
                                          v553 = v552;
                                          if (sNRCopyLogToStdErr == 1)
                                          {

                                            v3 = v624;
                                            v13 = innerCopy;
                                            v4 = v628;
                                            goto LABEL_805;
                                          }

                                          v569 = os_log_type_enabled(v552, OS_LOG_TYPE_INFO);

                                          v3 = v624;
                                          v13 = innerCopy;
                                          v4 = v628;
                                          if (v569)
                                          {
LABEL_805:
                                            v570 = _NRCopyLogObjectForNRUUID(*v4);
                                            _NRLogWithArgs(v570, 1, "%s%.30s:%-4d source-resume: NexusVOInput", ", "NRBluetoothPacketParserResumeNexusVOInputSource"", 489);
                                          }

LABEL_316:
                                          dispatch_resume(*(v13 + 312));
                                          v240 = *(v13 + 144);
                                        }

                                        if ((v240 & 0x10) == 0 || !*(v13 + 328))
                                        {
                                          goto LABEL_267;
                                        }

                                        v241 = (v13 + 328);
                                        *(v13 + 144) = v240 & 0xFFFFFFFFFFFFFFEFLL;
                                        if (gNRPacketLoggingEnabled != 1)
                                        {
                                          goto LABEL_431;
                                        }

                                        v242 = _NRCopyLogObjectForNRUUID(*v4);
                                        v243 = v242;
                                        if (sNRCopyLogToStdErr == 1)
                                        {
                                        }

                                        else
                                        {
                                          v568 = os_log_type_enabled(v242, OS_LOG_TYPE_INFO);

                                          if (!v568)
                                          {
                                            goto LABEL_809;
                                          }
                                        }

                                        v555 = _NRCopyLogObjectForNRUUID(*v628);
                                        _NRLogWithArgs(v555, 1, "%s%.30s:%-4d source-resume: NexusVIInput");
                                      }

                                      else
                                      {
                                        v313 = *(v13 + 144);
                                        if ((v313 & 8) == 0 || !*(v13 + 312))
                                        {
                                          goto LABEL_267;
                                        }

                                        v241 = (v13 + 312);
                                        *(v13 + 144) = v313 & 0xFFFFFFFFFFFFFFF7;
                                        if (gNRPacketLoggingEnabled != 1)
                                        {
                                          goto LABEL_431;
                                        }

                                        v556 = _NRCopyLogObjectForNRUUID(*v4);
                                        v557 = v556;
                                        if (sNRCopyLogToStdErr == 1)
                                        {
                                        }

                                        else
                                        {
                                          v571 = os_log_type_enabled(v556, OS_LOG_TYPE_INFO);

                                          if (!v571)
                                          {
                                            goto LABEL_809;
                                          }
                                        }

                                        v555 = _NRCopyLogObjectForNRUUID(*v628);
                                        _NRLogWithArgs(v555, 1, "%s%.30s:%-4d source-resume: NexusVOInput");
                                      }

LABEL_808:

                                      goto LABEL_809;
                                    }

                                    v637 = v138;
                                    v649 = 0;
                                    if (*(v80 + 3640) != 1)
                                    {
                                      goto LABEL_170;
                                    }

                                    v157 = _NRCopyLogObjectForNRUUID(*v628);
                                    if (sNRCopyLogToStdErr == 1)
                                    {

                                      goto LABEL_221;
                                    }

                                    v163 = v157;
                                    v164 = os_log_type_enabled(v157, OS_LOG_TYPE_INFO);

                                    v13 = innerCopy;
                                    if (v164)
                                    {
LABEL_221:
                                      v165 = _NRCopyLogObjectForNRUUID(*v628);
                                      _NRLogWithArgs(v165, 1, "%s%.30s:%-4d %s: invoking send callback w/ written %u", ", "NRBluetoothPacketParserNexusToLinkLoop"", 2075, v621, *(v88 + 80));

                                      v13 = innerCopy;
                                    }

LABEL_170:
                                    v140 = (*(*v633 + 8))(**v633, *v88, *(v88 + 80), &v649, 0, 0);
                                    if (*(v80 + 3640) == 1)
                                    {
                                      v158 = _NRCopyLogObjectForNRUUID(*v628);
                                      if (sNRCopyLogToStdErr == 1)
                                      {
                                      }

                                      else
                                      {
                                        v166 = v158;
                                        LODWORD(v626) = os_log_type_enabled(v158, OS_LOG_TYPE_INFO);

                                        v13 = innerCopy;
                                        if (!v626)
                                        {
                                          goto LABEL_171;
                                        }
                                      }

                                      v167 = _NRCopyLogObjectForNRUUID(*v628);
                                      _NRLogWithArgs(v167, 1, "%s%.30s:%-4d %s: canWriteMore: %d bufferHandled=%zu/%u", ", "NRBluetoothPacketParserNexusToLinkLoop"", 2078, v621, v140, v649, *(v88 + 80));

                                      v13 = innerCopy;
                                    }

LABEL_171:
                                    if (v140)
                                    {
                                      v141 = v98 | 0x800;
                                      goto LABEL_173;
                                    }

                                    if (v632)
                                    {
                                      v632(v13);
                                    }

                                    *(v88 + 84) |= 1u;
                                    v142 = *(v88 + 83);
                                    if (v142 > 1)
                                    {
                                      if (v142 == 2)
                                      {
                                        ++*(v13 + 168);
                                        *(v13 + 144) = *(v13 + 144) & 0xFFFFFFFFFFFFFFFDLL | (2 * (*(v88 + 84) & 1));
                                        v89 = v634;
                                        if (*(v80 + 3640) != 1)
                                        {
                                          goto LABEL_195;
                                        }

                                        v149 = _NRCopyLogObjectForNRUUID(*v628);
                                        v150 = v149;
                                        if (sNRCopyLogToStdErr == 1)
                                        {

                                          v80 = 0x280D73000;
                                        }

                                        else
                                        {
                                          LODWORD(v626) = os_log_type_enabled(v149, OS_LOG_TYPE_INFO);

                                          v13 = innerCopy;
                                          v80 = 0x280D73000;
                                          v89 = v634;
                                          if (!v626)
                                          {
                                            goto LABEL_195;
                                          }
                                        }

                                        v152 = _NRCopyLogObjectForNRUUID(*v628);
                                        _NRLogWithArgs(v152, 1, "%s%.30s:%-4d source-%s: High");
                                      }

                                      else
                                      {
                                        v89 = v634;
                                        if (v142 != 3)
                                        {
                                          goto LABEL_195;
                                        }

                                        ++*(v13 + 184);
                                        *(v13 + 144) = *(v13 + 144) & 0xFFFFFFFFFFFFFFFBLL | (4 * (*(v88 + 84) & 1));
                                        if (*(v80 + 3640) != 1)
                                        {
                                          goto LABEL_195;
                                        }

                                        v146 = _NRCopyLogObjectForNRUUID(*v628);
                                        v147 = v146;
                                        if (sNRCopyLogToStdErr == 1)
                                        {

                                          v80 = 0x280D73000;
                                        }

                                        else
                                        {
                                          LODWORD(v626) = os_log_type_enabled(v146, OS_LOG_TYPE_INFO);

                                          v13 = innerCopy;
                                          v80 = 0x280D73000;
                                          v89 = v634;
                                          if (!v626)
                                          {
                                            goto LABEL_195;
                                          }
                                        }

                                        v152 = _NRCopyLogObjectForNRUUID(*v628);
                                        _NRLogWithArgs(v152, 1, "%s%.30s:%-4d source-%s: Isochronous");
                                      }

LABEL_194:

                                      v13 = innerCopy;
                                      v89 = v634;
                                      goto LABEL_195;
                                    }

                                    if (!*(v88 + 83))
                                    {
                                      v148 = _NRCopyLogObjectForNRUUID(*v628);
                                      if (sNRCopyLogToStdErr == 1)
                                      {
                                      }

                                      else
                                      {
                                        v151 = v148;
                                        LODWORD(v626) = os_log_type_enabled(v148, OS_LOG_TYPE_ERROR);

                                        v13 = innerCopy;
                                        v89 = v634;
                                        if (!v626)
                                        {
                                          goto LABEL_195;
                                        }
                                      }

                                      v152 = _NRCopyLogObjectForNRUUID(*v628);
                                      _NRLogWithArgs(v152, 16, "%s%.30s:%-4d invalid link channel priority");
                                      goto LABEL_194;
                                    }

                                    v89 = v634;
                                    if (v142 == 1)
                                    {
                                      v143 = *(v13 + 144);
                                      ++*(v13 + 152);
                                      *(v13 + 144) = v143 & 0xFFFFFFFFFFFFFFFELL | *(v88 + 84) & 1;
                                      if (*(v80 + 3640) == 1)
                                      {
                                        v144 = _NRCopyLogObjectForNRUUID(*v628);
                                        v145 = v144;
                                        if (sNRCopyLogToStdErr == 1)
                                        {

                                          v80 = 0x280D73000;
                                          goto LABEL_244;
                                        }

                                        LODWORD(v626) = os_log_type_enabled(v144, OS_LOG_TYPE_INFO);

                                        v13 = innerCopy;
                                        v80 = 0x280D73000;
                                        v89 = v634;
                                        if (v626)
                                        {
LABEL_244:
                                          v152 = _NRCopyLogObjectForNRUUID(*v628);
                                          _NRLogWithArgs(v152, 1, "%s%.30s:%-4d source-%s: Medium");
                                          goto LABEL_194;
                                        }
                                      }
                                    }

LABEL_195:
                                    v141 = v98 | 0x1800;
                                    if (*(v80 + 3640) == 1)
                                    {
                                      v162 = _NRCopyLogObjectForNRUUID(*v628);
                                      if (sNRCopyLogToStdErr == 1)
                                      {

                                        goto LABEL_233;
                                      }

                                      v176 = v162;
                                      v177 = os_log_type_enabled(v162, OS_LOG_TYPE_INFO);

                                      if (v177)
                                      {
LABEL_233:
                                        v178 = _NRCopyLogObjectForNRUUID(*v628);
                                        _NRLogWithArgs(v178, 1, "%s%.30s:%-4d ", ", "NRBluetoothPacketParserNexusToLinkLoop"", 2086);
                                      }

                                      v13 = innerCopy;
                                      v80 = 0x280D73000;
LABEL_173:
                                      v89 = v634;
                                    }

                                    if (!v649)
                                    {
                                      goto LABEL_203;
                                    }

                                    if (v649 >= *(v88 + 80))
                                    {
                                      if (!*(v80 + 3640))
                                      {
LABEL_201:
                                        v141 |= 0x4000u;
                                        *(v88 + 80) = 0;
                                        v153 = v649;
                                        goto LABEL_202;
                                      }

                                      v172 = _NRCopyLogObjectForNRUUID(*v628);
                                      v173 = v172;
                                      if (sNRCopyLogToStdErr == 1)
                                      {

                                        v80 = 0x280D73000;
                                      }

                                      else
                                      {
                                        LODWORD(v626) = os_log_type_enabled(v172, OS_LOG_TYPE_INFO);

                                        v13 = innerCopy;
                                        v80 = 0x280D73000;
                                        v89 = v634;
                                        if (!v626)
                                        {
                                          goto LABEL_201;
                                        }
                                      }

                                      v182 = _NRCopyLogObjectForNRUUID(*v628);
                                      _NRLogWithArgs(v182, 1, "%s%.30s:%-4d %s: not memmoving filledIn=%u, bufferHandled=%zu", ", "NRBluetoothPacketParserNexusToLinkLoop"", 2099, v621, *(v88 + 80), v649);

                                      v89 = v634;
                                      v13 = innerCopy;
                                      goto LABEL_201;
                                    }

                                    if (!*(v80 + 3640))
                                    {
                                      goto LABEL_199;
                                    }

                                    v170 = _NRCopyLogObjectForNRUUID(*v628);
                                    v171 = v170;
                                    if (sNRCopyLogToStdErr == 1)
                                    {

                                      v80 = 0x280D73000;
                                      goto LABEL_238;
                                    }

                                    LODWORD(v626) = os_log_type_enabled(v170, OS_LOG_TYPE_INFO);

                                    v13 = innerCopy;
                                    v80 = 0x280D73000;
                                    if (v626)
                                    {
LABEL_238:
                                      v181 = _NRCopyLogObjectForNRUUID(*v628);
                                      _NRLogWithArgs(v181, 1, "%s%.30s:%-4d %s: memmoving filledIn=%u, bufferHandled=%zu", ", "NRBluetoothPacketParserNexusToLinkLoop"", 2092, v621, *(v88 + 80), v649);

                                      v13 = innerCopy;
                                    }

LABEL_199:
                                    v141 |= 0x2000u;
                                    memmove(*v88, (*v88 + v649), *(v88 + 80) - v649);
                                    v153 = v649;
                                    *(v88 + 80) -= v649;
                                    v631 = (v631 + 1);
                                    v89 = v634;
LABEL_202:
                                    *&v630[v13] += v153;
LABEL_203:
                                    LODWORD(v638) = v638 + 1;
                                    if ((v140 & 1) == 0)
                                    {
                                      goto LABEL_256;
                                    }

                                    v154 = *(v88 + 82);
                                    if (v154 >= 0xB)
                                    {
                                      v154 -= 11 * ((((117 * v154) >> 8) + (((v154 - ((117 * v154) >> 8)) & 0xFE) >> 1)) >> 3);
                                    }

                                    v97 = 0;
                                    *(v641 + 4 * v154) = v141;
                                    if (v154 < 0xAu)
                                    {
                                      v155 = v154 + 1;
                                    }

                                    else
                                    {
                                      v155 = v154 - 10;
                                    }

                                    *(v88 + 82) = v155;
                                    p_inst_meths = (&OBJC_PROTOCOL___NSCopying + 24);
                                  }
                                }
                              }

                              v492 = _NRCopyLogObjectForNRUUID(*v628);
                              _NRLogWithArgs(v492, 1, "%s%.30s:%-4d %s: starting NtL outer loop", ", "NRBluetoothPacketParserNexusToLinkLoop"", 1938, v621);

                              v89 = v634;
                              v13 = innerCopy;
                              goto LABEL_105;
                            }

                            if (*(v80 + 3640) != 1)
                            {
LABEL_250:
                              if (v632)
                              {
                                v632(v13);
                              }

                              v185 = *(v88 + 82);
                              if (v185 >= 0xB)
                              {
                                v185 -= 11 * ((((117 * v185) >> 8) + (((v185 - ((117 * v185) >> 8)) & 0xFE) >> 1)) >> 3);
                              }

                              v186 = v185;
                              *(v88 + 4 * v185 + 36) = 3;
                              goto LABEL_271;
                            }

                            v482 = v83;
                            v483 = _NRCopyLogObjectForNRUUID(*v4);
                            v484 = v483;
                            if (*(p_inst_meths + 556) == 1)
                            {
                            }

                            else
                            {
                              LODWORD(v643) = os_log_type_enabled(v483, OS_LOG_TYPE_INFO);

                              v13 = innerCopy;
                              if (!v643)
                              {
                                goto LABEL_250;
                              }
                            }

                            v493 = _NRCopyLogObjectForNRUUID(*v4);
                            _NRLogWithArgs(v493, 1, "%s%.30s:%-4d %s: ignoring NtL fast-path for %u, as waiting for link output available", ", "NRBluetoothPacketParserNexusToLinkLoop"", 1903, v482, v78);

                            v13 = innerCopy;
                            goto LABEL_250;
                          }

                          v460 = v83;
                          if (*(v80 + 3640) != 1)
                          {
                            goto LABEL_698;
                          }

                          v595 = _NRCopyLogObjectForNRUUID(*v4);
                          v596 = v595;
                          if (sNRCopyLogToStdErr == 1)
                          {
                          }

                          else
                          {
                            v603 = os_log_type_enabled(v595, OS_LOG_TYPE_INFO);

                            if (!v603)
                            {
                              goto LABEL_698;
                            }
                          }

                          v604 = _NRCopyLogObjectForNRUUID(*v4);
                          _NRLogWithArgs(v604, 1, "%s%.30s:%-4d ", ", "NRBluetoothPacketParserNexusToLinkLoop"", 1923);

LABEL_698:
                          v461 = _NRCopyLogObjectForNRUUID(*v4);
                          v462 = v461;
                          if (sNRCopyLogToStdErr == 1)
                          {
                          }

                          else
                          {
                            v472 = os_log_type_enabled(v461, OS_LOG_TYPE_FAULT);

                            v13 = innerCopy;
                            if (!v472)
                            {
                              goto LABEL_275;
                            }
                          }

                          v473 = _NRCopyLogObjectForNRUUID(*v4);
                          _NRLogWithArgs(v473, 17, "%s: Invalid write context for nexus priority: %u", v460, v78);

                          v13 = innerCopy;
LABEL_275:

                          v50 = v636;
                          goto LABEL_276;
                        }

                        goto LABEL_89;
                      }

                      v463 = nrCopyLogObj_560();
                      v464 = v463;
                      if (sNRCopyLogToStdErr == 1)
                      {
                      }

                      else
                      {
                        v474 = os_log_type_enabled(v463, OS_LOG_TYPE_ERROR);

                        if (!v474)
                        {
LABEL_711:
                          v476 = _os_log_pack_size();
                          v329 = &v621 - ((MEMORY[0x28223BE20](v476, v477) + 15) & 0xFFFFFFFFFFFFFFF0);
                          v478 = __error();
                          v479 = _os_log_pack_fill(v329, v476, *v478, &dword_25B98C000, "%{public}s strict_reallocf(%zu) failed");
                          *v479 = 136446466;
                          *(v479 + 4) = "[NRBluetoothPacketParser sendXPCCommDictionaryInner:]";
                          *(v479 + 12) = 2048;
                          *(v479 + 14) = v53;
                          goto LABEL_448;
                        }
                      }

                      v475 = nrCopyLogObj_560();
                      _NRLogWithArgs(v475, 16, "%s%.30s:%-4d ABORTING: strict_reallocf(%zu) failed", ", "[NRBluetoothPacketParser sendXPCCommDictionaryInner:]"", 707, v53);

                      goto LABEL_711;
                    }

                    v456 = nrCopyLogObj_560();
                    v457 = v456;
                    if (sNRCopyLogToStdErr == 1)
                    {
                    }

                    else
                    {
                      v465 = os_log_type_enabled(v456, OS_LOG_TYPE_ERROR);

                      if (!v465)
                      {
LABEL_704:
                        v467 = _os_log_pack_size();
                        v329 = &v621 - ((MEMORY[0x28223BE20](v467, v468) + 15) & 0xFFFFFFFFFFFFFFF0);
                        v469 = __error();
                        v451 = _os_log_pack_fill(v329, v467, *v469, &dword_25B98C000, "%{public}s strict_reallocf called with size 0");
                        *v451 = 136446210;
                        v452 = "[NRBluetoothPacketParser sendXPCCommDictionaryInner:]";
                        goto LABEL_690;
                      }
                    }

                    v466 = nrCopyLogObj_560();
                    _NRLogWithArgs(v466, 16, "%s%.30s:%-4d ABORTING: strict_reallocf called with size 0", ", "[NRBluetoothPacketParser sendXPCCommDictionaryInner:]"", 707);

                    goto LABEL_704;
                  }

                  if (sNRCopyLogToStdErr)
                  {
                  }

                  else
                  {
                    v60 = v43;
                    v61 = os_log_type_enabled(v43, OS_LOG_TYPE_ERROR);

                    if (!v61)
                    {
LABEL_60:

LABEL_76:
                      goto LABEL_307;
                    }
                  }

                  v62 = _NRCopyLogObjectForNRUUID(*v4);
                  _NRLogWithArgs(v62, 16, "%s%.30s:%-4d Invalid link-write context ptr for prio %@", ", "[NRBluetoothPacketParser sendXPCCommDictionaryInner:]"", 701, v33);
LABEL_59:

                  goto LABEL_60;
                }
              }

              v41 = _NRCopyLogObjectForNRUUID(*v4);
              _NRLogWithArgs(v41, 1, "%s%.30s:%-4d Write context: %p", ", "[NRBluetoothPacketParser sendXPCCommDictionaryInner:]"", 697, *(v34 + 104));

              goto LABEL_39;
            }

            v38 = _NRCopyLogObjectForNRUUID(*v4);
            if (sNRCopyLogToStdErr == 1)
            {

              v17 = v636;
LABEL_54:
              v58 = _NRCopyLogObjectForNRUUID(*v4);
              _NRLogWithArgs(v58, 16, "%s%.30s:%-4d Invalid link-read context ptr for prio %@", ", "[NRBluetoothPacketParser sendXPCCommDictionaryInner:]"", 675, off_27996AFD8[(v643 - 1)]);
LABEL_74:

              goto LABEL_75;
            }

            v56 = v38;
            v57 = os_log_type_enabled(v38, OS_LOG_TYPE_ERROR);

            v17 = v636;
            if (v57)
            {
              goto LABEL_54;
            }

LABEL_75:

            goto LABEL_76;
          }
        }

        v29 = _NRCopyLogObjectForNRUUID(*v4);
        _NRLogWithArgs(v29, 1, "%s%.30s:%-4d Link Read context: %p", ", "[NRBluetoothPacketParser sendXPCCommDictionaryInner:]"", 673, v25);

        goto LABEL_28;
      }

      v17 = v636;
LABEL_70:
      v74 = _NRCopyLogObjectForNRUUID(*v4);
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v75 = v74;
        v76 = os_log_type_enabled(v74, OS_LOG_TYPE_ERROR);

        if (!v76)
        {
          goto LABEL_75;
        }
      }

      v58 = _NRCopyLogObjectForNRUUID(*v4);
      v77 = createStringFromNRLinkChannelPriority(v643);
      _NRLogWithArgs(v58, 16, "%s%.30s:%-4d Invalid read context %sptr for prio %@", ", "[NRBluetoothPacketParser sendXPCCommDictionaryInner:]"", 667, v20, v77);

      goto LABEL_74;
    }

    if ([v18 integerValue] == 1)
    {
      LODWORD(v643) = 1;
      v19 = 96;
      goto LABEL_18;
    }

    integerValue = [v18 integerValue];

    if (integerValue == 3)
    {
      LODWORD(v643) = 3;
      v19 = 128;
      v13 = innerCopy;
      goto LABEL_19;
    }

    v59 = _NRCopyLogObjectForNRUUID(*v4);
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v71 = v59;
      v72 = os_log_type_enabled(v59, OS_LOG_TYPE_FAULT);

      if (!v72)
      {
LABEL_69:
        LODWORD(v643) = 0;
        v20 = "";
        goto LABEL_70;
      }
    }

    v73 = _NRCopyLogObjectForNRUUID(*v4);
    _NRLogWithArgs(v73, 17, "Invalid priority %d", 0);

    goto LABEL_69;
  }

LABEL_277:
  v190 = [v3 objectForKeyedSubscript:{@"source-address-bytes", v621}];

  if (v190)
  {
    v191 = [v3 objectForKeyedSubscript:@"source-address-bytes"];
    if ([v191 length] != 16)
    {
      v619 = [v191 length];
      [(NRBluetoothPacketParser *)v13 handleInternalError:v204, v205, v206, v207, v208, v209, v619];
LABEL_306:

      goto LABEL_307;
    }

    [v191 getBytes:v13 + 688 length:{objc_msgSend(v191, "length")}];
  }

  v192 = [v3 objectForKeyedSubscript:@"destination-address-bytes"];

  if (!v192)
  {
    goto LABEL_283;
  }

  v191 = [v3 objectForKeyedSubscript:@"destination-address-bytes"];
  if ([v191 length] != 16)
  {
    v620 = [v191 length];
    [(NRBluetoothPacketParser *)v13 handleInternalError:v233, v234, v235, v236, v237, v238, v620];
    goto LABEL_306;
  }

  [v191 getBytes:v13 + 704 length:{objc_msgSend(v191, "length")}];

LABEL_283:
  v193 = [v3 objectForKeyedSubscript:@"nexus-instances"];

  if (!v193)
  {
    goto LABEL_337;
  }

  if (*(v13 + 13) == 1)
  {
    [(NRBluetoothPacketParser *)v13 changeStateTo:?];
  }

  v194 = [v3 objectForKeyedSubscript:@"ip-header-offset"];

  if (v194)
  {
    v195 = [v3 objectForKeyedSubscript:@"ip-header-offset"];
    if (v195)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        *(v13 + 28) = [v195 unsignedShortValue];
      }
    }
  }

  v196 = [v3 objectForKeyedSubscript:@"nexus-instances"];
  v197 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v645 = 0u;
  v646 = 0u;
  v647 = 0u;
  v648 = 0u;
  v198 = v196;
  v199 = [v198 countByEnumeratingWithState:&v645 objects:v655 count:16];
  if (v199)
  {
    v200 = v199;
    v201 = *v646;
    do
    {
      for (i = 0; i != v200; ++i)
      {
        if (*v646 != v201)
        {
          objc_enumerationMutation(v198);
        }

        v203 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:*(*(&v645 + 1) + 8 * i)];
        [v197 addObject:v203];
      }

      v200 = [v198 countByEnumeratingWithState:&v645 objects:v655 count:16];
    }

    while (v200);
  }

  v210 = v197;
  v217 = v210;
  v218 = innerCopy;
  if (*(innerCopy + 13) != 4 && (*(innerCopy + 16) & 1) == 0)
  {
    if (v210)
    {
      v219 = [v210 count];
      if (v219 == 1)
      {
        v244 = innerCopy;
        v245 = *(innerCopy + 11);
        firstObject = [v217 firstObject];
        if (v245)
        {
          v232 = 100;
        }

        else
        {
          v232 = 102;
        }

        v231 = v244;
LABEL_326:
        [(NRBluetoothPacketParser *)v231 setupNexusChannelForPriority:v232 channelUUID:firstObject];

        v246 = _NRCopyLogObjectForNRUUID(*v4);
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v247 = v246;
          v248 = os_log_type_enabled(v246, OS_LOG_TYPE_DEFAULT);

          if (!v248)
          {
            goto LABEL_330;
          }
        }

        v249 = _NRCopyLogObjectForNRUUID(*v4);
        _NRLogWithArgs(v249, 0, "%s%.30s:%-4d Setup nexus channels: %@", ", "[NRBluetoothPacketParser setupNexusChannels:]"", 1146, v217);

LABEL_330:
        v218 = innerCopy;
        *(innerCopy + 16) = 1;
        objc_storeStrong((v218 + 72), v197);
        if (*(v218 + 13) != 3 && ([*(v218 + 72) count] || *(v218 + 12) == 1) && *(v218 + 15))
        {
          [(NRBluetoothPacketParser *)v218 changeStateTo:?];
        }

        goto LABEL_336;
      }

      if (v219 == 4)
      {
        v226 = [v217 objectAtIndexedSubscript:0];
        v227 = innerCopy;
        [(NRBluetoothPacketParser *)innerCopy setupNexusChannelForPriority:v226 channelUUID:?];

        v228 = [v217 objectAtIndexedSubscript:1];
        [(NRBluetoothPacketParser *)v227 setupNexusChannelForPriority:v228 channelUUID:?];

        v229 = [v217 objectAtIndexedSubscript:2];
        [(NRBluetoothPacketParser *)v227 setupNexusChannelForPriority:v229 channelUUID:?];

        firstObject = [v217 objectAtIndexedSubscript:3];
        v231 = v227;
        v232 = 103;
        goto LABEL_326;
      }

      v218 = innerCopy;
      [(NRBluetoothPacketParser *)innerCopy handleInternalError:v220, v221, v222, v223, v224, v225, v219];
    }

    else
    {
      v218 = innerCopy;
      [(NRBluetoothPacketParser *)innerCopy handleInternalError:v211, v212, v213, v214, v215, v216, v621];
    }
  }

LABEL_336:

  v13 = v218;
  p_inst_meths = &OBJC_PROTOCOL___NSCopying.inst_meths;
LABEL_337:
  v250 = [v3 objectForKeyedSubscript:@"activate-datapath"];

  if (!v250)
  {
    goto LABEL_351;
  }

  v191 = [v3 objectForKeyedSubscript:@"activate-datapath"];
  v251 = [v191 objectForKeyedSubscript:@"activate-datapath-offset"];
  v252 = [v191 objectForKeyedSubscript:@"channel-id"];
  if ([v252 integerValue] == 2)
  {

    v253 = 4;
    v254 = 2;
  }

  else if ([v252 integerValue] == 1)
  {

    v253 = 2;
    v254 = 1;
  }

  else
  {
    integerValue2 = [v252 integerValue];

    v256 = integerValue2 == 3;
    v13 = innerCopy;
    v257 = v256;
    if (v256)
    {
      v254 = 3;
    }

    else
    {
      v254 = 0;
    }

    v253 = 8 * v257;
  }

  v258 = *(v13 + 15);
  if ((v258 & v253) == 0)
  {
    *(v13 + 15) = v258 | v253;
    v638 = v251;
    if (v254 > 1)
    {
      if (v254 == 3)
      {
        v266 = 128;
      }

      else
      {
        v266 = 112;
      }
    }

    else
    {
      if (!v254)
      {
        v263 = _NRCopyLogObjectForNRUUID(*v4);
        if (*(p_inst_meths + 556) == 1)
        {
        }

        else
        {
          v287 = v263;
          v288 = os_log_type_enabled(v263, OS_LOG_TYPE_FAULT);

          if (!v288)
          {
LABEL_387:
            v290 = "";
LABEL_388:
            v291 = _NRCopyLogObjectForNRUUID(*v4);
            if (*(p_inst_meths + 556) == 1)
            {

LABEL_391:
              v285 = _NRCopyLogObjectForNRUUID(*v4);
              v286 = createStringFromNRLinkChannelPriority(v254);
              _NRLogWithArgs(v285, 16, "%s%.30s:%-4d Invalid read context %sptr for prio %@", ", "[NRBluetoothPacketParser sendXPCCommDictionaryInner:]"", 769, v290, v286);
              goto LABEL_392;
            }

            v292 = v291;
            v293 = os_log_type_enabled(v291, OS_LOG_TYPE_ERROR);

            if (v293)
            {
              goto LABEL_391;
            }

LABEL_398:

            goto LABEL_306;
          }
        }

        v289 = _NRCopyLogObjectForNRUUID(*v4);
        _NRLogWithArgs(v289, 17, "Invalid priority %d", 0);

        goto LABEL_387;
      }

      v266 = 96;
    }

    v635 = v252;
    v267 = *(v13 + v266);
    if (!v267)
    {
      v290 = "*";
      v252 = v635;
      goto LABEL_388;
    }

    v268 = *v267;
    if (!*v267)
    {
      v282 = _NRCopyLogObjectForNRUUID(*v4);
      if (*(p_inst_meths + 556) == 1)
      {

        v252 = v635;
      }

      else
      {
        v283 = v282;
        v284 = os_log_type_enabled(v282, OS_LOG_TYPE_ERROR);

        v252 = v635;
        if (!v284)
        {
          goto LABEL_398;
        }
      }

      v285 = _NRCopyLogObjectForNRUUID(*v4);
      v286 = createStringFromNRLinkChannelPriority(v254);
      _NRLogWithArgs(v285, 16, "%s%.30s:%-4d Invalid link-read context ptr for prio %@", ", "[NRBluetoothPacketParser sendXPCCommDictionaryInner:]"", 775, v286);
LABEL_392:

      goto LABEL_398;
    }

    v628 = v4;
    *(v268 + 43) |= 3u;
    v269 = *(v13 + v266);
    v270 = *(v269 + 24);
    if (v270)
    {
      v270(*(v269 + 32));
    }

    unsignedIntValue = [v251 unsignedIntValue];
    v278 = unsignedIntValue;
    v279 = *(v268 + 24);
    if (v279 <= unsignedIntValue)
    {
      if (v279 != unsignedIntValue)
      {
        [(NRBluetoothPacketParser *)v13 handleInternalError:v272, v273, v274, v275, v276, v277, *(v268 + 24)];
LABEL_397:
        v252 = v635;
        goto LABEL_398;
      }

      *(v268 + 24) = 0;
LABEL_406:
      v252 = v635;
      [(NRBluetoothPacketParser *)v13 updateReadyStateIfApplicable];
      if (*(v13 + 13) == 4)
      {
        goto LABEL_350;
      }

      dispatch_assert_queue_V2(*(v13 + 64));
      v633 = NRBluetoothPacketParserSuspendNexusVOInputSource;
      v629 = v191;
      if (v254 == 1)
      {
        v306 = 0;
        v310 = 0;
        v633 = NRBluetoothPacketParserSuspendNexusBEInputSource;
        v640 = 21;
        v639 = 480;
        v307 = 344;
        v308 = 280;
        v309 = 232;
      }

      else if (v254 == 3)
      {
        v306 = 1;
        v640 = 19;
        v639 = 448;
        v307 = 312;
        v308 = 248;
        v309 = 216;
        v310 = 1;
      }

      else
      {
        v310 = 0;
        v633 = NRBluetoothPacketParserSuspendNexusVIInputSource;
        v306 = 1;
        v640 = 20;
        v639 = 464;
        v307 = 328;
        v308 = 264;
        v309 = 224;
      }

      v315 = v254 ^ 0x67;
      v625 = *(v13 + v309);
      v643 = *(v13 + v308);
      v316 = *(v13 + v307);
      if (gNRPacketLoggingEnabled != 1)
      {
        goto LABEL_437;
      }

      v508 = v316;
      v509 = _NRCopyLogObjectForNRUUID(*v628);
      v510 = v509;
      if (sNRCopyLogToStdErr == 1)
      {

        v252 = v635;
      }

      else
      {
        v516 = os_log_type_enabled(v509, OS_LOG_TYPE_INFO);

        v13 = innerCopy;
        v252 = v635;
        v316 = v508;
        if (!v516)
        {
LABEL_437:
          v317 = *(v13 + 15);
          v642 = *&v310 & ((v317 & 8) >> 3);
          if (v642 == 1)
          {
            v318 = (v13 + 136);
            v319 = "Isochronous";
            v320 = 3;
            v321 = 0x280D73000;
            goto LABEL_459;
          }

          if (!v306)
          {
            goto LABEL_457;
          }

          if ((v317 & 4) != 0)
          {
            v318 = (v13 + 120);
LABEL_458:
            v321 = 0x280D73000uLL;
            v319 = "High";
            v320 = 2;
LABEL_459:
            v333 = *v318;
            v627 = v316;
            if (v333)
            {
              v334 = v333[3];
              if ((*(v334 + 84) & 1) == 0)
              {
                v634 = v318;
                v622 = v320;
                v621 = v319;
                v623 = &v621;
                v624 = v3;
                v335 = *(v334 + 83);
                v336 = 584;
                if (v335 == 3)
                {
                  v336 = 600;
                }

                v256 = v335 == 2;
                v337 = 616;
                if (!v256)
                {
                  v337 = v336;
                }

                v630 = *(v334 + 8);
                v631 = v337;
                if (*(v321 + 3640) != 1)
                {
                  goto LABEL_466;
                }

                v520 = _NRCopyLogObjectForNRUUID(*v628);
                v521 = v520;
                if (sNRCopyLogToStdErr == 1)
                {
                }

                else
                {
                  v538 = os_log_type_enabled(v520, OS_LOG_TYPE_INFO);

                  v13 = innerCopy;
                  if (!v538)
                  {
LABEL_466:
                    LODWORD(v637) = 0;
                    v338 = 0;
                    v339 = 0;
                    v636 = 0;
                    v340 = 0;
                    v632 = 0;
                    v641 = v334 + 36;
                    v653 = 0u;
                    v654 = 0u;
                    v341 = 9;
                    v651 = 0u;
                    v652 = 0u;
                    while (1)
                    {
                      if (*(v321 + 3640) == 1)
                      {
                        v401 = _NRCopyLogObjectForNRUUID(*v628);
                        v402 = v401;
                        if (sNRCopyLogToStdErr == 1)
                        {

                          v321 = 0x280D73000;
LABEL_578:
                          v408 = _NRCopyLogObjectForNRUUID(*v628);
                          _NRLogWithArgs(v408, 1, "%s%.30s:%-4d %s: starting NtL inner loop", ", "NRBluetoothPacketParserNexusToLinkLoop"", 1949, v621);

                          v13 = innerCopy;
                          goto LABEL_468;
                        }

                        v407 = os_log_type_enabled(v401, OS_LOG_TYPE_INFO);

                        v13 = innerCopy;
                        v321 = 0x280D73000;
                        if (v407)
                        {
                          goto LABEL_578;
                        }
                      }

LABEL_468:
                      v342 = v341 | 0x10;
                      if ((v642 & 1) == 0)
                      {
                        v344 = *(v334 + 28);
                        v343 = *(v334 + 32);
                        if (v344 > v343)
                        {
                          v345 = *(v334 + 80);
                          v346 = (v344 - v343);
                          v626 = (0x4000 - v345);
                          if (v346 >= (0x4000 - v345))
                          {
                            v347 = (0x4000 - v345);
                          }

                          else
                          {
                            v347 = (v344 - v343);
                          }

                          v348 = v630;
                          memcpy((*v334 + v345), &v630[v343], v347);
                          v349 = *(v334 + 28);
                          v350 = *(v334 + 32) + v347;
                          *(v334 + 32) = v350;
                          if (v349 <= v350)
                          {
                            v351 = 0;
                          }

                          else
                          {
                            memmove(v348, &v348[v350], v349 - v350);
                            v351 = *(v334 + 28) - *(v334 + 32);
                          }

                          *(v334 + 28) = v351;
                          *(v334 + 32) = 0;
                          *(v334 + 80) += v347;
                          if (gNRPacketLoggingEnabled != 1)
                          {
                            goto LABEL_477;
                          }

                          v421 = _NRCopyLogObjectForNRUUID(*v628);
                          v422 = v421;
                          if (sNRCopyLogToStdErr == 1)
                          {

                            goto LABEL_604;
                          }

                          v428 = os_log_type_enabled(v421, OS_LOG_TYPE_INFO);

                          v13 = innerCopy;
                          if (v428)
                          {
LABEL_604:
                            v429 = _NRCopyLogObjectForNRUUID(*v628);
                            _NRLogWithArgs(v429, 1, "%s%.30s:%-4d %s: wrote %u (%u/%u) bytes from linkWriteBuffer", ", "NRBluetoothPacketParserNexusToLinkLoop"", 1968, v621, v347, v626, v346);

                            v13 = innerCopy;
                          }

LABEL_477:
                          v342 = v341 | 0x30;
                          v339 += v347;
                          v321 = 0x280D73000;
                        }
                      }

                      v352 = v636;
                      if (v643)
                      {
                        v352 = os_channel_get_next_slot();
                      }

                      if (!v352)
                      {
                        v382 = 0;
                        goto LABEL_529;
                      }

                      while (1)
                      {
                        v353 = 0x4000 - *(v334 + 80);
                        v354 = nrMaxTLVLengthForPacket(v652 + *(v13 + 28), (WORD1(v651) - *(v13 + 28)));
                        if (v353 < v354)
                        {
                          v342 |= 0x40u;
                          if (gNRPacketLoggingEnabled != 1)
                          {
LABEL_527:
                            v382 = v352;
                            v13 = innerCopy;
                            v321 = 0x280D73000;
                            goto LABEL_529;
                          }

                          v414 = v354;
                          v415 = _NRCopyLogObjectForNRUUID(*v628);
                          v416 = v415;
                          if (sNRCopyLogToStdErr == 1)
                          {
                          }

                          else
                          {
                            LODWORD(v636) = os_log_type_enabled(v415, OS_LOG_TYPE_INFO);

                            if (!v636)
                            {
                              goto LABEL_527;
                            }
                          }

                          v425 = _NRCopyLogObjectForNRUUID(*v628);
                          _NRLogWithArgs(v425, 1, "%s%.30s:%-4d %s: not enough room %u to fit maxTLVLen %u", ", "NRBluetoothPacketParserNexusToLinkLoop"", 1984, v621, v353, v414);

                          goto LABEL_527;
                        }

                        os_channel_slot_get_packet();
                        os_packet_get_next_buflet();
                        v355 = os_buflet_get_data_offset();
                        v356 = os_buflet_get_object_address();
                        v357 = os_buflet_get_data_length();
                        if (v357 >= 0x10000)
                        {
                          v444 = nrCopyLogObj_560();
                          if (sNRCopyLogToStdErr == 1)
                          {

                            goto LABEL_688;
                          }

                          v445 = v444;
                          v446 = os_log_type_enabled(v444, OS_LOG_TYPE_ERROR);

                          if (v446)
                          {
LABEL_688:
                            v447 = nrCopyLogObj_560();
                            _NRLogWithArgs(v447, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: dataLen <= 65535", ", "NRBluetoothPacketParserNexusToLinkLoop"", 1997);
                          }

                          v448 = _os_log_pack_size();
                          v329 = &v621 - ((MEMORY[0x28223BE20](v448, v449) + 15) & 0xFFFFFFFFFFFFFFF0);
                          v450 = __error();
                          v451 = _os_log_pack_fill(v329, v448, *v450, &dword_25B98C000, "%{public}s Assertion Failed: dataLen <= 65535");
                          *v451 = 136446210;
                          v452 = "NRBluetoothPacketParserNexusToLinkLoop";
LABEL_690:
                          *(v451 + 4) = v452;
LABEL_448:
                          v332 = nrCopyLogObj_560();
                          _NRLogAbortWithPack(v332, v329);
                        }

                        if (*(innerCopy + 9) == 1)
                        {
                          v649 = 0;
                          v650 = 0;
                          v358 = (*v334 + *(v334 + 80));
                          v649 = v358;
                          LODWORD(v650) = v353;
                          v359 = *(innerCopy + 28);
                          v13 = innerCopy;
                          if (*(innerCopy + 10) == 1)
                          {
                            v360 = nrPacketTo6LoWPAN((v652 + v359), (WORD1(v651) - v359), &v649, 1u, innerCopy + 688, innerCopy + 704, 0);
                          }

                          else
                          {
                            memcpy(v358, (v652 + v359), WORD1(v651) - v359);
                            v360 = WORD1(v651) - *(v13 + 28);
                          }

                          v321 = 0x280D73000uLL;
                          if (gNRPacketLoggingEnabled != 1)
                          {
                            goto LABEL_496;
                          }

                          v368 = _NRCopyLogObjectForNRUUID(*v628);
                          if (sNRCopyLogToStdErr == 1)
                          {

                            goto LABEL_513;
                          }

                          v369 = v368;
                          v370 = os_log_type_enabled(v368, OS_LOG_TYPE_INFO);

                          v13 = innerCopy;
                          if (v370)
                          {
LABEL_513:
                            v371 = _NRCopyLogObjectForNRUUID(*v628);
                            _NRLogWithArgs(v371, 1, "%s%.30s:%-4d %s: wrote %u bytes from nexus (actual: %u)", ", "NRBluetoothPacketParserNexusToLinkLoop"", 2015, v621, v360, WORD1(v651));
                            goto LABEL_518;
                          }

                          goto LABEL_496;
                        }

                        if (!v357 && WORD1(v651))
                        {
                          v649 = 0;
                          v650 = 0;
                          v649 = *v334 + *(v334 + 80);
                          LODWORD(v650) = v353;
                          v13 = innerCopy;
                          v360 = nrPacketToTLV((v652 + *(innerCopy + 28)), (WORD1(v651) - *(innerCopy + 28)), &v649, 1, innerCopy + 688, innerCopy + 704);
                          v321 = 0x280D73000uLL;
                          if (gNRPacketLoggingEnabled == 1)
                          {
                            v361 = _NRCopyLogObjectForNRUUID(*v628);
                            v362 = v361;
                            if (sNRCopyLogToStdErr == 1)
                            {
                            }

                            else
                            {
                              v374 = os_log_type_enabled(v361, OS_LOG_TYPE_INFO);

                              v13 = innerCopy;
                              if (!v374)
                              {
                                goto LABEL_496;
                              }
                            }

                            v371 = _NRCopyLogObjectForNRUUID(*v628);
                            v375 = getESPSequenceNumberFromPacket(v652, WORD1(v651));
                            v376 = getESPSPIFromPacket(v652, WORD1(v651));
                            _NRLogWithArgs(v371, 1, "%s%.30s:%-4d %s: wrote %u bytes from nexus for ESP seq: %u (spi: %u)", ", "NRBluetoothPacketParserNexusToLinkLoop"", 2027, v621, v360, v375, v376);
LABEL_518:

                            v13 = innerCopy;
                          }

LABEL_496:
                          v342 |= 0x80u;
                          goto LABEL_497;
                        }

                        if (v357)
                        {
                          v363 = v356 + v355;
                          v649 = 0;
                          v650 = 0;
                          v649 = *v334 + *(v334 + 80);
                          LODWORD(v650) = v353;
                          v13 = innerCopy;
                          v364 = v357;
                          v360 = nrPacketToTLV((v363 + *(innerCopy + 28)), (v357 - *(innerCopy + 28)), &v649, 1, innerCopy + 688, innerCopy + 704);
                          if (gNRPacketLoggingEnabled != 1)
                          {
LABEL_493:
                            v342 |= 0x100u;
                            v321 = 0x280D73000;
                            goto LABEL_497;
                          }

                          v372 = _NRCopyLogObjectForNRUUID(*v628);
                          v373 = v372;
                          if (sNRCopyLogToStdErr == 1)
                          {
                          }

                          else
                          {
                            LODWORD(v636) = os_log_type_enabled(v372, OS_LOG_TYPE_INFO);

                            v13 = innerCopy;
                            if (!v636)
                            {
                              goto LABEL_493;
                            }
                          }

                          v379 = _NRCopyLogObjectForNRUUID(*v628);
                          v636 = getESPSequenceNumberFromPacket(v363, v364);
                          v380 = getESPSPIFromPacket(v363, v364);
                          _NRLogWithArgs(v379, 1, "%s%.30s:%-4d %s: wrote %u bytes from nexus for ESP seq: %u (spi: %u)", ", "NRBluetoothPacketParserNexusToLinkLoop"", 2037, v621, v360, v636, v380);

                          v13 = innerCopy;
                          goto LABEL_493;
                        }

                        v342 |= 0x200u;
                        v321 = 0x280D73000uLL;
                        if (gNRPacketLoggingEnabled == 1)
                        {
                          v377 = _NRCopyLogObjectForNRUUID(*v628);
                          v378 = v377;
                          if (sNRCopyLogToStdErr == 1)
                          {
                          }

                          else
                          {
                            v360 = os_log_type_enabled(v377, OS_LOG_TYPE_INFO);

                            if (!v360)
                            {
                              goto LABEL_509;
                            }
                          }

                          v381 = _NRCopyLogObjectForNRUUID(*v628);
                          _NRLogWithArgs(v381, 1, "%s%.30s:%-4d %s: No data to write", ", "NRBluetoothPacketParserNexusToLinkLoop"", 2039, v621);
                        }

                        v360 = 0;
LABEL_509:
                        v13 = innerCopy;
LABEL_497:
                        *(v334 + 80) += v360;
                        v365 = (v642 & 1) != 0 ? 0 : os_channel_get_next_slot();
                        ++v338;
                        ++*(v13 + v639);
                        *(v13 + v640) = 1;
                        v339 += v360;
                        if (!v365)
                        {
                          break;
                        }

                        v366 = *(v334 + 82);
                        if (v366 >= 0xB)
                        {
                          v366 -= 11 * ((((117 * v366) >> 8) + (((v366 - ((117 * v366) >> 8)) & 0xFE) >> 1)) >> 3);
                        }

                        *(v641 + 4 * v366) = v342;
                        if (v366 < 0xAu)
                        {
                          v367 = v366 + 1;
                        }

                        else
                        {
                          v367 = v366 - 10;
                        }

                        *(v334 + 82) = v367;
                        v340 = v352;
                        v352 = v365;
                        v342 = 0;
                      }

                      v382 = 0;
                      v340 = v352;
LABEL_529:
                      v383 = *(v334 + 80);
                      if (!*(v334 + 80))
                      {
                        v385 = v342 | 0x400;
                        if (*(v321 + 3640) != 1)
                        {
                          goto LABEL_618;
                        }

                        v544 = _NRCopyLogObjectForNRUUID(*v628);
                        v545 = v544;
                        if (sNRCopyLogToStdErr == 1)
                        {

                          goto LABEL_800;
                        }

                        v566 = os_log_type_enabled(v544, OS_LOG_TYPE_INFO);

                        if (v566)
                        {
LABEL_800:
                          v567 = _NRCopyLogObjectForNRUUID(*v628);
                          _NRLogWithArgs(v567, 1, "%s%.30s:%-4d %s: nothing to read from nexus", ", "NRBluetoothPacketParserNexusToLinkLoop"", 2065, v621);
                        }

                        v13 = innerCopy;
                        v321 = 0x280D73000;
LABEL_618:
                        v432 = v385 | 0x8000;
                        if (*(v321 + 3640) == 1)
                        {
                          v525 = _NRCopyLogObjectForNRUUID(*v628);
                          v526 = v525;
                          if (sNRCopyLogToStdErr == 1)
                          {
                          }

                          else
                          {
                            v546 = os_log_type_enabled(v525, OS_LOG_TYPE_INFO);

                            v13 = innerCopy;
                            if (!v546)
                            {
                              goto LABEL_619;
                            }
                          }

                          v547 = _NRCopyLogObjectForNRUUID(*v628);
                          _NRLogWithArgs(v547, 1, "%s%.30s:%-4d %s: out of NtL inner loop", ", "NRBluetoothPacketParserNexusToLinkLoop"", 2110, v621);

                          v13 = innerCopy;
                        }

LABEL_619:
                        if (v340)
                        {
                          os_channel_advance_slot();
                          *(v13 + 18) = 1;
                          v3 = v624;
LABEL_622:
                          v433 = v637;
                          if (v637 > 8u || v643 && os_channel_available_slot_count() <= 1)
                          {
                            v432 = v385 | 0x18000;
                            if (gNRPacketLoggingEnabled != 1)
                            {
                              goto LABEL_626;
                            }

                            v542 = _NRCopyLogObjectForNRUUID(*v628);
                            v543 = v542;
                            if (sNRCopyLogToStdErr == 1)
                            {

                              v3 = v624;
                              v13 = innerCopy;
                              goto LABEL_798;
                            }

                            v564 = os_log_type_enabled(v542, OS_LOG_TYPE_INFO);

                            v3 = v624;
                            v13 = innerCopy;
                            if (v564)
                            {
LABEL_798:
                              v565 = _NRCopyLogObjectForNRUUID(*(v13 + 48));
                              _NRLogWithArgs(v565, 1, "%s%.30s:%-4d %s: performing RX sync (%u packets, %u bytes, %u pending, %0.2f msec, canWriteMore %d, memmove %u)", ", "NRBluetoothPacketParserNexusToLinkLoop"", 2123, v621, v338, v339, v433, *(innerCopy + 432) * 0.000001, v383 == 0, v632);

                              v13 = innerCopy;
                            }

LABEL_626:
                            os_channel_sync();
                            *(v13 + 18) = 0;
                          }
                        }

                        else
                        {
                          v3 = v624;
                          if (*(v13 + 18))
                          {
                            goto LABEL_622;
                          }
                        }

                        if (gNRPacketLoggingEnabled == 1)
                        {
                          v527 = _NRCopyLogObjectForNRUUID(*v628);
                          v528 = v527;
                          if (sNRCopyLogToStdErr == 1)
                          {

                            v3 = v624;
                            v13 = innerCopy;
                          }

                          else
                          {
                            v548 = os_log_type_enabled(v527, OS_LOG_TYPE_INFO);

                            v3 = v624;
                            v13 = innerCopy;
                            if (!v548)
                            {
                              goto LABEL_628;
                            }
                          }

                          v549 = _NRCopyLogObjectForNRUUID(*v628);
                          _NRLogWithArgs(v549, 1, "%s%.30s:%-4d %s: out of NtL outer loop", ", "NRBluetoothPacketParserNexusToLinkLoop"", 2134, v621);
                        }

LABEL_628:
                        if (v383)
                        {
LABEL_629:
                          v434 = v432 | 0x60000;
                          if (gNRPacketLoggingEnabled != 1)
                          {
                            goto LABEL_630;
                          }

                          v529 = _NRCopyLogObjectForNRUUID(*v628);
                          v530 = v529;
                          if (sNRCopyLogToStdErr == 1)
                          {

                            v3 = v624;
                            v13 = innerCopy;
                            goto LABEL_784;
                          }

                          v550 = os_log_type_enabled(v529, OS_LOG_TYPE_INFO);

                          v3 = v624;
                          v13 = innerCopy;
                          if (v550)
                          {
LABEL_784:
                            v551 = _NRCopyLogObjectForNRUUID(*v628);
                            _NRLogWithArgs(v551, 1, "%s%.30s:%-4d %s: done with NtL fast-path", ", "NRBluetoothPacketParserNexusToLinkLoop"", 2168, v621);
                          }

LABEL_630:
                          v430 = *(v334 + 82);
                          v252 = v635;
                          if (v430 >= 0xB)
                          {
                            v430 -= 11 * ((((117 * v430) >> 8) + (((v430 - ((117 * v430) >> 8)) & 0xFE) >> 1)) >> 3);
                          }

                          v431 = v430;
                          *(v641 + 4 * v430) = v434;
LABEL_633:
                          if (v431 < 0xA)
                          {
                            v435 = v430 + 1;
                          }

                          else
                          {
                            v435 = v430 - 10;
                          }

                          *(v334 + 82) = v435;
                          goto LABEL_637;
                        }

                        if (v622 <= 1)
                        {
                          if (!v622)
                          {
                            v436 = *(v13 + 144);
LABEL_653:
                            if ((v436 & 8) != 0 && *(v13 + 312))
                            {
                              *(v13 + 144) = v436 & 0xFFFFFFFFFFFFFFF7;
                              if (gNRPacketLoggingEnabled != 1)
                              {
                                goto LABEL_656;
                              }

                              v579 = _NRCopyLogObjectForNRUUID(*v628);
                              v580 = v579;
                              if (sNRCopyLogToStdErr == 1)
                              {

                                v3 = v624;
                                v13 = innerCopy;
                                goto LABEL_827;
                              }

                              v589 = os_log_type_enabled(v579, OS_LOG_TYPE_INFO);

                              v3 = v624;
                              v13 = innerCopy;
                              if (v589)
                              {
LABEL_827:
                                v590 = _NRCopyLogObjectForNRUUID(*v628);
                                _NRLogWithArgs(v590, 1, "%s%.30s:%-4d source-resume: NexusVOInput", ", "NRBluetoothPacketParserResumeNexusVOInputSource"", 489);
                              }

LABEL_656:
                              dispatch_resume(*(v13 + 312));
                              v436 = *(v13 + 144);
                            }

                            if ((v436 & 0x10) != 0 && *(v13 + 328))
                            {
                              *(v13 + 144) = v436 & 0xFFFFFFFFFFFFFFEFLL;
                              if (gNRPacketLoggingEnabled != 1)
                              {
                                goto LABEL_660;
                              }

                              v581 = _NRCopyLogObjectForNRUUID(*v628);
                              v582 = v581;
                              if (sNRCopyLogToStdErr == 1)
                              {

                                v3 = v624;
                                v13 = innerCopy;
                                goto LABEL_829;
                              }

                              v591 = os_log_type_enabled(v581, OS_LOG_TYPE_INFO);

                              v3 = v624;
                              v13 = innerCopy;
                              if (v591)
                              {
LABEL_829:
                                v592 = _NRCopyLogObjectForNRUUID(*v628);
                                _NRLogWithArgs(v592, 1, "%s%.30s:%-4d source-resume: NexusVIInput", ", "NRBluetoothPacketParserResumeNexusVIInputSource"", 491);
                              }

LABEL_660:
                              dispatch_resume(*(v13 + 328));
                              v436 = *(v13 + 144);
                            }

                            if ((v436 & 0x20) != 0 && *(v13 + 344))
                            {
                              *(v13 + 144) = v436 & 0xFFFFFFFFFFFFFFDFLL;
                              if (gNRPacketLoggingEnabled != 1)
                              {
                                goto LABEL_664;
                              }

                              v583 = _NRCopyLogObjectForNRUUID(*v628);
                              v584 = v583;
                              if (sNRCopyLogToStdErr == 1)
                              {

                                v3 = v624;
                                v13 = innerCopy;
                                goto LABEL_831;
                              }

                              v593 = os_log_type_enabled(v583, OS_LOG_TYPE_INFO);

                              v3 = v624;
                              v13 = innerCopy;
                              if (v593)
                              {
LABEL_831:
                                v594 = _NRCopyLogObjectForNRUUID(*v628);
                                _NRLogWithArgs(v594, 1, "%s%.30s:%-4d source-resume: NexusBEInput", ", "NRBluetoothPacketParserResumeNexusBEInputSource"", 487);
                              }

LABEL_664:
                              dispatch_resume(*(v13 + 344));
                              v436 = *(v13 + 144);
                            }

                            if ((v436 & 0x40) == 0 || !*(v13 + 360))
                            {
                              goto LABEL_629;
                            }

                            v438 = (v13 + 360);
                            *(v13 + 144) = v436 & 0xFFFFFFFFFFFFFFBFLL;
                            if (gNRPacketLoggingEnabled == 1)
                            {
LABEL_814:
                              v577 = _NRCopyLogObjectForNRUUID(*v628);
                              v578 = v577;
                              if (sNRCopyLogToStdErr == 1)
                              {

                                goto LABEL_825;
                              }

                              v587 = os_log_type_enabled(v577, OS_LOG_TYPE_INFO);

                              if (v587)
                              {
LABEL_825:
                                v588 = _NRCopyLogObjectForNRUUID(*v628);
                                _NRLogWithArgs(v588, 1, "%s%.30s:%-4d source-resume: NexusBKInput");
                                goto LABEL_838;
                              }

LABEL_685:
                              v3 = v624;
                              v13 = innerCopy;
                            }

                            dispatch_resume(*v438);
                            goto LABEL_629;
                          }

                          v436 = *(v13 + 144);
                          if ((*(v13 + 15) & 4) == 0)
                          {
                            goto LABEL_653;
                          }

                          if ((v436 & 0x20) != 0 && *(v13 + 344))
                          {
                            *(v13 + 144) = v436 & 0xFFFFFFFFFFFFFFDFLL;
                            if (gNRPacketLoggingEnabled != 1)
                            {
                              goto LABEL_681;
                            }

                            v599 = _NRCopyLogObjectForNRUUID(*v628);
                            v600 = v599;
                            if (sNRCopyLogToStdErr == 1)
                            {

                              goto LABEL_846;
                            }

                            v605 = os_log_type_enabled(v599, OS_LOG_TYPE_INFO);

                            if (v605)
                            {
LABEL_846:
                              v606 = _NRCopyLogObjectForNRUUID(*v628);
                              _NRLogWithArgs(v606, 1, "%s%.30s:%-4d source-resume: NexusBEInput", ", "NRBluetoothPacketParserResumeNexusBEInputSource"", 487);
                            }

LABEL_681:
                            v13 = innerCopy;
                            dispatch_resume(*(innerCopy + 344));
                            v436 = *(v13 + 144);
                          }

                          v3 = v624;
                          if ((v436 & 0x40) == 0 || !*(v13 + 360))
                          {
                            goto LABEL_629;
                          }

                          v438 = (v13 + 360);
                          *(v13 + 144) = v436 & 0xFFFFFFFFFFFFFFBFLL;
                          if (gNRPacketLoggingEnabled == 1)
                          {
                            goto LABEL_814;
                          }

                          goto LABEL_685;
                        }

                        if (v622 == 2)
                        {
                          v437 = *(v13 + 144);
                          if ((v437 & 8) != 0 && *(v13 + 312))
                          {
                            *(v13 + 144) = v437 & 0xFFFFFFFFFFFFFFF7;
                            if (gNRPacketLoggingEnabled != 1)
                            {
                              goto LABEL_646;
                            }

                            v585 = _NRCopyLogObjectForNRUUID(*v628);
                            v586 = v585;
                            if (sNRCopyLogToStdErr == 1)
                            {

                              goto LABEL_842;
                            }

                            v601 = os_log_type_enabled(v585, OS_LOG_TYPE_INFO);

                            if (v601)
                            {
LABEL_842:
                              v602 = _NRCopyLogObjectForNRUUID(*v628);
                              _NRLogWithArgs(v602, 1, "%s%.30s:%-4d source-resume: NexusVOInput", ", "NRBluetoothPacketParserResumeNexusVOInputSource"", 489);
                            }

LABEL_646:
                            v13 = innerCopy;
                            dispatch_resume(*(innerCopy + 312));
                            v437 = *(v13 + 144);
                            v3 = v624;
                          }

                          if ((v437 & 0x10) == 0 || !*(v13 + 328))
                          {
                            goto LABEL_629;
                          }

                          v438 = (v13 + 328);
                          *(v13 + 144) = v437 & 0xFFFFFFFFFFFFFFEFLL;
                          if (gNRPacketLoggingEnabled != 1)
                          {
                            goto LABEL_685;
                          }

                          v439 = _NRCopyLogObjectForNRUUID(*v628);
                          v440 = v439;
                          if (sNRCopyLogToStdErr == 1)
                          {
                          }

                          else
                          {
                            v597 = os_log_type_enabled(v439, OS_LOG_TYPE_INFO);

                            if (!v597)
                            {
                              goto LABEL_685;
                            }
                          }

                          v588 = _NRCopyLogObjectForNRUUID(*v628);
                          _NRLogWithArgs(v588, 1, "%s%.30s:%-4d source-resume: NexusVIInput");
                        }

                        else
                        {
                          v441 = *(v13 + 144);
                          if ((v441 & 8) == 0 || !*(v13 + 312))
                          {
                            goto LABEL_629;
                          }

                          v438 = (v13 + 312);
                          *(v13 + 144) = v441 & 0xFFFFFFFFFFFFFFF7;
                          if (gNRPacketLoggingEnabled != 1)
                          {
                            goto LABEL_685;
                          }

                          v442 = _NRCopyLogObjectForNRUUID(*v628);
                          v443 = v442;
                          if (sNRCopyLogToStdErr == 1)
                          {
                          }

                          else
                          {
                            v598 = os_log_type_enabled(v442, OS_LOG_TYPE_INFO);

                            if (!v598)
                            {
                              goto LABEL_685;
                            }
                          }

                          v588 = _NRCopyLogObjectForNRUUID(*v628);
                          _NRLogWithArgs(v588, 1, "%s%.30s:%-4d source-resume: NexusVOInput");
                        }

LABEL_838:

                        goto LABEL_685;
                      }

                      v636 = v382;
                      v649 = 0;
                      if (*(v321 + 3640) != 1)
                      {
                        goto LABEL_531;
                      }

                      v403 = _NRCopyLogObjectForNRUUID(*v628);
                      v404 = v403;
                      if (sNRCopyLogToStdErr == 1)
                      {

                        v321 = 0x280D73000;
                        goto LABEL_582;
                      }

                      v411 = os_log_type_enabled(v403, OS_LOG_TYPE_INFO);

                      v13 = innerCopy;
                      v321 = 0x280D73000;
                      if (v411)
                      {
LABEL_582:
                        v412 = _NRCopyLogObjectForNRUUID(*v628);
                        _NRLogWithArgs(v412, 1, "%s%.30s:%-4d %s: invoking send callback w/ written %u", ", "NRBluetoothPacketParserNexusToLinkLoop"", 2075, v621, *(v334 + 80));

                        v13 = innerCopy;
                      }

LABEL_531:
                      v384 = ((*v634)[1])(**v634, *v334, *(v334 + 80), &v649, 0, 0);
                      if (*(v321 + 3640) == 1)
                      {
                        v405 = _NRCopyLogObjectForNRUUID(*v628);
                        v406 = v405;
                        if (sNRCopyLogToStdErr == 1)
                        {

                          v321 = 0x280D73000;
                        }

                        else
                        {
                          LODWORD(v626) = os_log_type_enabled(v405, OS_LOG_TYPE_INFO);

                          v13 = innerCopy;
                          v321 = 0x280D73000;
                          if (!v626)
                          {
                            goto LABEL_532;
                          }
                        }

                        v413 = _NRCopyLogObjectForNRUUID(*v628);
                        _NRLogWithArgs(v413, 1, "%s%.30s:%-4d %s: canWriteMore: %d bufferHandled=%zu/%u", ", "NRBluetoothPacketParserNexusToLinkLoop"", 2078, v621, v384, v649, *(v334 + 80));

                        v13 = innerCopy;
                      }

LABEL_532:
                      if (v384)
                      {
                        v385 = v342 | 0x800;
                        v386 = v649;
                        if (!v649)
                        {
                          goto LABEL_564;
                        }

LABEL_558:
                        if (v386 < *(v334 + 80))
                        {
                          if (!*(v321 + 3640))
                          {
                            goto LABEL_560;
                          }

                          v417 = _NRCopyLogObjectForNRUUID(*v628);
                          v418 = v417;
                          if (sNRCopyLogToStdErr == 1)
                          {

                            v321 = 0x280D73000;
                            goto LABEL_600;
                          }

                          LODWORD(v626) = os_log_type_enabled(v417, OS_LOG_TYPE_INFO);

                          v13 = innerCopy;
                          v321 = 0x280D73000;
                          if (v626)
                          {
LABEL_600:
                            v426 = _NRCopyLogObjectForNRUUID(*v628);
                            _NRLogWithArgs(v426, 1, "%s%.30s:%-4d %s: memmoving filledIn=%u, bufferHandled=%zu", ", "NRBluetoothPacketParserNexusToLinkLoop"", 2092, v621, *(v334 + 80), v649);

                            v13 = innerCopy;
                          }

LABEL_560:
                          v385 |= 0x2000u;
                          memmove(*v334, (*v334 + v649), *(v334 + 80) - v649);
                          v398 = v649;
                          *(v334 + 80) -= v649;
                          v632 = (v632 + 1);
LABEL_563:
                          *(v13 + v631) += v398;
                          goto LABEL_564;
                        }

                        if (!*(v321 + 3640))
                        {
LABEL_562:
                          v385 |= 0x4000u;
                          *(v334 + 80) = 0;
                          v398 = v649;
                          goto LABEL_563;
                        }

                        v419 = _NRCopyLogObjectForNRUUID(*v628);
                        v420 = v419;
                        if (sNRCopyLogToStdErr == 1)
                        {

                          v321 = 0x280D73000;
                        }

                        else
                        {
                          LODWORD(v626) = os_log_type_enabled(v419, OS_LOG_TYPE_INFO);

                          v13 = innerCopy;
                          v321 = 0x280D73000;
                          if (!v626)
                          {
                            goto LABEL_562;
                          }
                        }

                        v427 = _NRCopyLogObjectForNRUUID(*v628);
                        _NRLogWithArgs(v427, 1, "%s%.30s:%-4d %s: not memmoving filledIn=%u, bufferHandled=%zu", ", "NRBluetoothPacketParserNexusToLinkLoop"", 2099, v621, *(v334 + 80), v649);

                        v13 = innerCopy;
                        goto LABEL_562;
                      }

                      if (v633)
                      {
                        v633(v13);
                      }

                      *(v334 + 84) |= 1u;
                      v387 = *(v334 + 83);
                      if (v387 > 1)
                      {
                        if (v387 == 2)
                        {
                          ++*(v13 + 168);
                          *(v13 + 144) = *(v13 + 144) & 0xFFFFFFFFFFFFFFFDLL | (2 * (*(v334 + 84) & 1));
                          if (*(v321 + 3640) != 1)
                          {
                            goto LABEL_556;
                          }

                          v394 = _NRCopyLogObjectForNRUUID(*v628);
                          v395 = v394;
                          if (sNRCopyLogToStdErr == 1)
                          {

                            v321 = 0x280D73000;
                          }

                          else
                          {
                            LODWORD(v626) = os_log_type_enabled(v394, OS_LOG_TYPE_INFO);

                            v13 = innerCopy;
                            v321 = 0x280D73000;
                            if (!v626)
                            {
                              goto LABEL_556;
                            }
                          }

                          v397 = _NRCopyLogObjectForNRUUID(*v628);
                          _NRLogWithArgs(v397, 1, "%s%.30s:%-4d source-%s: High");
                        }

                        else
                        {
                          if (v387 != 3)
                          {
                            goto LABEL_556;
                          }

                          ++*(v13 + 184);
                          *(v13 + 144) = *(v13 + 144) & 0xFFFFFFFFFFFFFFFBLL | (4 * (*(v334 + 84) & 1));
                          if (*(v321 + 3640) != 1)
                          {
                            goto LABEL_556;
                          }

                          v391 = _NRCopyLogObjectForNRUUID(*v628);
                          v392 = v391;
                          if (sNRCopyLogToStdErr == 1)
                          {

                            v321 = 0x280D73000;
                          }

                          else
                          {
                            LODWORD(v626) = os_log_type_enabled(v391, OS_LOG_TYPE_INFO);

                            v13 = innerCopy;
                            v321 = 0x280D73000;
                            if (!v626)
                            {
                              goto LABEL_556;
                            }
                          }

                          v397 = _NRCopyLogObjectForNRUUID(*v628);
                          _NRLogWithArgs(v397, 1, "%s%.30s:%-4d source-%s: Isochronous");
                        }

LABEL_555:

                        v13 = innerCopy;
                        goto LABEL_556;
                      }

                      if (!*(v334 + 83))
                      {
                        v393 = _NRCopyLogObjectForNRUUID(*v628);
                        if (sNRCopyLogToStdErr == 1)
                        {
                        }

                        else
                        {
                          v396 = v393;
                          LODWORD(v626) = os_log_type_enabled(v393, OS_LOG_TYPE_ERROR);

                          v13 = innerCopy;
                          if (!v626)
                          {
                            goto LABEL_556;
                          }
                        }

                        v397 = _NRCopyLogObjectForNRUUID(*v628);
                        _NRLogWithArgs(v397, 16, "%s%.30s:%-4d invalid link channel priority");
                        goto LABEL_555;
                      }

                      if (v387 == 1)
                      {
                        v388 = *(v13 + 144);
                        ++*(v13 + 152);
                        *(v13 + 144) = v388 & 0xFFFFFFFFFFFFFFFELL | *(v334 + 84) & 1;
                        if (*(v321 + 3640) == 1)
                        {
                          v389 = _NRCopyLogObjectForNRUUID(*v628);
                          v390 = v389;
                          if (sNRCopyLogToStdErr == 1)
                          {

                            v321 = 0x280D73000;
                            goto LABEL_606;
                          }

                          LODWORD(v626) = os_log_type_enabled(v389, OS_LOG_TYPE_INFO);

                          v13 = innerCopy;
                          v321 = 0x280D73000;
                          if (v626)
                          {
LABEL_606:
                            v397 = _NRCopyLogObjectForNRUUID(*v628);
                            _NRLogWithArgs(v397, 1, "%s%.30s:%-4d source-%s: Medium");
                            goto LABEL_555;
                          }
                        }
                      }

LABEL_556:
                      v385 = v342 | 0x1800;
                      if (*(v321 + 3640) != 1)
                      {
                        v386 = v649;
                        if (!v649)
                        {
                          goto LABEL_564;
                        }

                        goto LABEL_558;
                      }

                      v409 = _NRCopyLogObjectForNRUUID(*v628);
                      v410 = v409;
                      if (sNRCopyLogToStdErr == 1)
                      {

                        goto LABEL_594;
                      }

                      v423 = os_log_type_enabled(v409, OS_LOG_TYPE_INFO);

                      if (v423)
                      {
LABEL_594:
                        v424 = _NRCopyLogObjectForNRUUID(*v628);
                        _NRLogWithArgs(v424, 1, "%s%.30s:%-4d ", ", "NRBluetoothPacketParserNexusToLinkLoop"", 2086);
                      }

                      v13 = innerCopy;
                      v321 = 0x280D73000;
                      v386 = v649;
                      if (v649)
                      {
                        goto LABEL_558;
                      }

LABEL_564:
                      LODWORD(v637) = v637 + 1;
                      if ((v384 & 1) == 0)
                      {
                        goto LABEL_618;
                      }

                      v399 = *(v334 + 82);
                      if (v399 >= 0xB)
                      {
                        v399 -= 11 * ((((117 * v399) >> 8) + (((v399 - ((117 * v399) >> 8)) & 0xFE) >> 1)) >> 3);
                      }

                      v341 = 0;
                      *(v641 + 4 * v399) = v385;
                      if (v399 < 0xAu)
                      {
                        v400 = v399 + 1;
                      }

                      else
                      {
                        v400 = v399 - 10;
                      }

                      *(v334 + 82) = v400;
                    }
                  }
                }

                v539 = _NRCopyLogObjectForNRUUID(*v628);
                _NRLogWithArgs(v539, 1, "%s%.30s:%-4d %s: starting NtL outer loop", ", "NRBluetoothPacketParserNexusToLinkLoop"", 1938, v621);

                v13 = innerCopy;
                goto LABEL_466;
              }

              if (*(v321 + 3640) != 1)
              {
LABEL_612:
                if (v633)
                {
                  v633(v13);
                }

                v430 = *(v334 + 82);
                if (v430 >= 0xB)
                {
                  v430 -= 11 * ((((117 * v430) >> 8) + (((v430 - ((117 * v430) >> 8)) & 0xFE) >> 1)) >> 3);
                }

                v431 = v430;
                *(v334 + 4 * v430 + 36) = 3;
                goto LABEL_633;
              }

              v522 = v319;
              v523 = _NRCopyLogObjectForNRUUID(*v628);
              v524 = v523;
              if (sNRCopyLogToStdErr == 1)
              {

                v252 = v635;
              }

              else
              {
                v540 = os_log_type_enabled(v523, OS_LOG_TYPE_INFO);

                v13 = innerCopy;
                v252 = v635;
                if (!v540)
                {
                  goto LABEL_612;
                }
              }

              v541 = _NRCopyLogObjectForNRUUID(*v628);
              _NRLogWithArgs(v541, 1, "%s%.30s:%-4d %s: ignoring NtL fast-path for %u, as waiting for link output available", ", "NRBluetoothPacketParserNexusToLinkLoop"", 1903, v522, v315);

              v13 = innerCopy;
              goto LABEL_612;
            }

            v511 = v319;
            if (*(v321 + 3640) == 1)
            {
              v609 = _NRCopyLogObjectForNRUUID(*v628);
              v610 = v609;
              if (sNRCopyLogToStdErr == 1)
              {
              }

              else
              {
                v617 = os_log_type_enabled(v609, OS_LOG_TYPE_INFO);

                if (!v617)
                {
                  goto LABEL_745;
                }
              }

              v618 = _NRCopyLogObjectForNRUUID(*v628);
              _NRLogWithArgs(v618, 1, "%s%.30s:%-4d ", ", "NRBluetoothPacketParserNexusToLinkLoop"", 1923);
            }

LABEL_745:
            v512 = _NRCopyLogObjectForNRUUID(*v628);
            v513 = v512;
            if (sNRCopyLogToStdErr == 1)
            {

              v252 = v635;
            }

            else
            {
              v518 = os_log_type_enabled(v512, OS_LOG_TYPE_FAULT);

              v13 = innerCopy;
              v252 = v635;
              if (!v518)
              {
                goto LABEL_637;
              }
            }

            v519 = _NRCopyLogObjectForNRUUID(*v628);
            _NRLogWithArgs(v519, 17, "%s: Invalid write context for nexus priority: %u", v511, v315);

            v13 = innerCopy;
LABEL_637:

            v191 = v629;
            v251 = v638;
            goto LABEL_350;
          }

          v322 = *(v13 + 112);
          if (!v322)
          {
LABEL_457:
            v318 = (v13 + 104);
            v319 = "Medium";
            v320 = 1;
            v321 = 0x280D73000;
            goto LABEL_459;
          }

          if ((*(*v322 + 43) & 3) == 1 && (*(v13 + 17) & 1) == 0)
          {

            v633 = 0;
            v323 = 0;
            v316 = 0;
            v643 = 0;
            v625 = 0;
            v318 = (v13 + 120);
          }

          else
          {
            v318 = 0;
            v323 = 1;
          }

          if (*(v13 + 17) == 1 && (gNRPacketLoggingEnabled & 1) != 0)
          {
            v572 = v316;
            v573 = _NRCopyLogObjectForNRUUID(*v628);
            v574 = v573;
            if (sNRCopyLogToStdErr == 1)
            {

              v252 = v635;
            }

            else
            {
              v575 = os_log_type_enabled(v573, OS_LOG_TYPE_INFO);

              v13 = innerCopy;
              v252 = v635;
              v316 = v572;
              if (!v575)
              {
                goto LABEL_454;
              }
            }

            v576 = _NRCopyLogObjectForNRUUID(*v628);
            _NRLogWithArgs(v576, 1, "%s%.30s:%-4d sending packets over medium pipe", ", "NRBluetoothPacketParserNexusToLinkLoop"", 1887);

            v316 = v572;
            v13 = innerCopy;
          }

LABEL_454:
          if (v318)
          {
            if (v323)
            {
              v320 = 0;
              v319 = "Invalid";
              v321 = 0x280D73000;
              goto LABEL_459;
            }

            goto LABEL_458;
          }

          goto LABEL_457;
        }
      }

      v517 = _NRCopyLogObjectForNRUUID(*v628);
      _NRLogWithArgs(v517, 1, "%s%.30s:%-4d starting NtL fast-path for %u", ", "NRBluetoothPacketParserNexusToLinkLoop"", 1858, v315);

      v316 = v508;
      v13 = innerCopy;
      goto LABEL_437;
    }

    v280 = v3;
    v281 = _NRCopyLogObjectForNRUUID(*v628);
    if (*(p_inst_meths + 556) == 1)
    {
    }

    else
    {
      v294 = v281;
      v295 = os_log_type_enabled(v281, OS_LOG_TYPE_DEFAULT);

      if (!v295)
      {
        goto LABEL_395;
      }
    }

    v296 = _NRCopyLogObjectForNRUUID(*v628);
    _NRLogWithArgs(v296, 0, "%s%.30s:%-4d received more data than moveOffset (%u > %u), off %d", ", "-[NRBluetoothPacketParser sendXPCCommDictionaryInner:]"", 788, *(v268 + 24), v278, [v638 intValue]);

LABEL_395:
    if (v278 >= 0x10000)
    {
      v297 = *(v268 + 24);
      [v638 intValue];
      [(NRBluetoothPacketParser *)innerCopy handleInternalError:off %d""), v298, v299, v300, v301, v302, v303, v297];
      v3 = v280;
      goto LABEL_397;
    }

    v3 = v280;
    if (v278)
    {
      memmove(*v268, (*v268 + v278), *(v268 + 24) - v278);
      *(v268 + 24) -= v278;
    }

    bzero(&v651, 0x5DCuLL);
    v304 = *(v268 + 24);
    *(v268 + 24) = 0;
    v305 = &v651;
    if (v304 < 0x5DD || (v305 = malloc_type_calloc(1uLL, v304, 0xA3D89D4uLL)) != 0)
    {
      memcpy(v305, *v268, v304);
      NRBluetoothPacketParserLinkToNexusLoopFastPath(innerCopy, v268, v305, v304, 0, 0);
      if (v305 != &v651)
      {
        free(v305);
      }

      v13 = innerCopy;
      v251 = v638;
      goto LABEL_406;
    }

    v607 = nrCopyLogObj_560();
    v608 = v607;
    if (*(p_inst_meths + 556) == 1)
    {
    }

    else
    {
      v611 = os_log_type_enabled(v607, OS_LOG_TYPE_ERROR);

      if (!v611)
      {
LABEL_853:
        v613 = _os_log_pack_size();
        v329 = &v621 - ((MEMORY[0x28223BE20](v613, v614) + 15) & 0xFFFFFFFFFFFFFFF0);
        v615 = __error();
        v616 = _os_log_pack_fill(v329, v613, *v615, &dword_25B98C000, "%{public}s strict_calloc(%zu, %zu) failed");
        *v616 = 136446722;
        *(v616 + 4) = "[NRBluetoothPacketParser sendXPCCommDictionaryInner:]";
        *(v616 + 12) = 2048;
        *(v616 + 14) = 1;
        *(v616 + 22) = 2048;
        *(v616 + 24) = v304;
        goto LABEL_448;
      }
    }

    v612 = nrCopyLogObj_560();
    _NRLogWithArgs(v612, 16, "%s%.30s:%-4d ABORTING: strict_calloc(%zu, %zu) failed", ", "[NRBluetoothPacketParser sendXPCCommDictionaryInner:]"", 804, 1uLL, v304);

    goto LABEL_853;
  }

LABEL_350:

LABEL_351:
  v259 = [v3 objectForKeyedSubscript:{@"deactivate-datapath", v621}];

  if (v259)
  {
    v260 = [v3 objectForKeyedSubscript:@"deactivate-datapath"];
    v261 = [v260 objectForKeyedSubscript:@"channel-id"];
    if ([v261 integerValue] == 2)
    {
      v262 = 2;
    }

    else if ([v261 integerValue] == 1)
    {
      v262 = 1;
    }

    else if ([v261 integerValue] == 3)
    {
      v262 = 3;
    }

    else
    {
      v262 = 0;
    }

    v264 = innerCopy;
    [(NRBluetoothPacketParser *)innerCopy resetContextForPriorityInner:v262 teardownContext:0];

    v13 = v264;
  }

  v265 = [v3 objectForKeyedSubscript:@"teardown"];

  if (v265)
  {
    v191 = [v3 objectForKeyedSubscript:@"teardown"];
    if ([v191 BOOLValue])
    {
      [(NRBluetoothPacketParser *)v13 teardown];
    }

    goto LABEL_306;
  }

LABEL_307:
}

- (void)updateReadyStateIfApplicable
{
  if (*(self + 13) != 3 && ([*(self + 72) count] || *(self + 12) == 1) && *(self + 15))
  {

    [(NRBluetoothPacketParser *)self changeStateTo:?];
  }
}

- (void)setupNexusChannelForPriority:(void *)priority channelUUID:
{
  v60[2] = *MEMORY[0x277D85DE8];
  priorityCopy = priority;
  if (!os_channel_attr_create())
  {
    v45 = @"os_channel_attr_create() failed";
LABEL_14:
    [(NRBluetoothPacketParser *)self handleInternalError:v45, v6, v7, v8, v9, v10, v11, v46];
    goto LABEL_15;
  }

  os_channel_attr_set();
  v60[0] = 0;
  v60[1] = 0;
  [priorityCopy getUUIDBytes:v60];
  extended = os_channel_create_extended();
  if (!extended)
  {
    v45 = @"os_channel_create_extended() failed";
    goto LABEL_14;
  }

  v13 = extended;
  os_channel_attr_destroy();
  os_channel_ring_id();
  v14 = os_channel_rx_ring();
  if (!v14)
  {
    v45 = @"os_channel_rx_ring() failed";
    goto LABEL_14;
  }

  v50 = v14;
  os_channel_ring_id();
  v15 = os_channel_tx_ring();
  if (!v15)
  {
    v45 = @"os_channel_tx_ring() failed";
    goto LABEL_14;
  }

  v16 = v15;
  fd = os_channel_get_fd();
  if ((fd & 0x80000000) != 0)
  {
    v45 = @"os_channel_get_fd() failed";
    goto LABEL_14;
  }

  v18 = fd;
  v25 = dispatch_group_create();
  if (v25)
  {
    v26 = v18;
    v27 = dispatch_source_create(MEMORY[0x277D85D28], v18, 0, *(self + 64));
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __68__NRBluetoothPacketParser_setupNexusChannelForPriority_channelUUID___block_invoke;
    handler[3] = &unk_27996AF70;
    handler[4] = self;
    v59 = a2;
    dispatch_source_set_event_handler(v27, handler);
    dispatch_group_enter(v25);
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __68__NRBluetoothPacketParser_setupNexusChannelForPriority_channelUUID___block_invoke_2;
    v56[3] = &unk_27996B180;
    v28 = v25;
    v57 = v28;
    dispatch_source_set_cancel_handler(v27, v56);
    dispatch_activate(v27);
    v29 = dispatch_source_create(MEMORY[0x277D85D50], v26, 0, *(self + 64));
    v36 = v29;
    if (v29)
    {
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = __68__NRBluetoothPacketParser_setupNexusChannelForPriority_channelUUID___block_invoke_3;
      v54[3] = &unk_27996AF70;
      v54[4] = self;
      v55 = a2;
      v37 = a2;
      dispatch_source_set_event_handler(v29, v54);
      dispatch_group_enter(v28);
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __68__NRBluetoothPacketParser_setupNexusChannelForPriority_channelUUID___block_invoke_4;
      v52[3] = &unk_27996B180;
      v38 = v28;
      v53 = v38;
      dispatch_source_set_cancel_handler(v36, v52);
      v39 = *(self + 64);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __68__NRBluetoothPacketParser_setupNexusChannelForPriority_channelUUID___block_invoke_5;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = v13;
      dispatch_group_notify(v38, v39, block);
      v49 = v27;
      v48 = v36;
      v47 = v38;
      v40 = v37 - 100;
      v41 = qword_25B9FC478[v40];
      v42 = qword_25B9FC498[v40];
      v43 = self + 8 * v40;
      *(v43 + 216) = v13;
      v44 = self + 16 * v40;
      *(v44 + 248) = v50;
      *(v44 + 256) = v16;
      objc_storeStrong((v44 + 312), v27);
      objc_storeStrong((v44 + 320), v36);
      objc_storeStrong((v43 + 376), v25);
      *(self + 144) = *(self + 144) & v41 | v42;
    }

    else
    {
      [(NRBluetoothPacketParser *)self handleInternalError:v30, v31, v32, v33, v34, v35, a2];
    }
  }

  else
  {
    [(NRBluetoothPacketParser *)self handleInternalError:v19, v20, v21, v22, v23, v24, a2];
  }

LABEL_15:
}

void __68__NRBluetoothPacketParser_setupNexusChannelForPriority_channelUUID___block_invoke(uint64_t a1)
{
  v1 = a1;
  v242 = *MEMORY[0x277D85DE8];
  if (gNRPacketLoggingEnabled == 1)
  {
    v143 = _NRCopyLogObjectForNRUUID(*(*(a1 + 32) + 48));
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v145 = v143;
      v146 = os_log_type_enabled(v143, OS_LOG_TYPE_INFO);

      if (!v146)
      {
        goto LABEL_2;
      }
    }

    v147 = _NRCopyLogObjectForNRUUID(*(*(v1 + 32) + 48));
    StringForNRNexusChannelPriority = createStringForNRNexusChannelPriority(*(v1 + 40));
    _NRLogWithArgs(v147, 1, "%s%.30s:%-4d Nexus input available - %@", ", "[NRBluetoothPacketParser setupNexusChannelForPriority:channelUUID:]_block_invoke"", 1504, StringForNRNexusChannelPriority);
  }

LABEL_2:
  *(*(v1 + 32) + 17) = 1;
  v2 = *(v1 + 32);
  if (*(v2 + 13) == 4)
  {
    goto LABEL_210;
  }

  v3 = *(v1 + 40);
  dispatch_assert_queue_V2(*(v2 + 64));
  v4 = 0;
  v5 = 0;
  if (v3 > 101)
  {
    if (v3 == 102)
    {
      v5 = 0;
      v6 = 0;
      v228 = NRBluetoothPacketParserSuspendNexusBEInputSource;
      v8 = 21;
      v9 = 480;
      v10 = 344;
      v11 = 280;
      v12 = 232;
    }

    else
    {
      v6 = 0;
      v231 = 0;
      v232 = 0;
      v7 = 0;
      v235 = 0;
      v228 = 0;
      if (v3 != 103)
      {
        goto LABEL_13;
      }

      v5 = 0;
      v6 = 0;
      v228 = NRBluetoothPacketParserSuspendNexusBKInputSource;
      v8 = 22;
      v9 = 496;
      v10 = 360;
      v11 = 296;
      v12 = 240;
    }
  }

  else if (v3 == 100)
  {
    v5 = 1;
    v8 = 19;
    v9 = 448;
    v10 = 312;
    v11 = 248;
    v12 = 216;
    v6 = 1;
    v228 = NRBluetoothPacketParserSuspendNexusVOInputSource;
  }

  else
  {
    v6 = 0;
    v231 = 0;
    v232 = 0;
    v7 = 0;
    v235 = 0;
    v228 = 0;
    if (v3 != 101)
    {
      goto LABEL_13;
    }

    v6 = 0;
    v228 = NRBluetoothPacketParserSuspendNexusVIInputSource;
    v5 = 1;
    v8 = 20;
    v9 = 464;
    v10 = 328;
    v11 = 264;
    v12 = 224;
  }

  v4 = *(v2 + v12);
  v235 = *(v2 + v11);
  v7 = *(v2 + v10);
  v231 = (v2 + v9);
  v232 = (v2 + v8);
LABEL_13:
  if (gNRPacketLoggingEnabled != 1)
  {
    goto LABEL_14;
  }

  v144 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
  if (sNRCopyLogToStdErr == 1)
  {
  }

  else
  {
    v152 = v4;
    v153 = v144;
    v154 = os_log_type_enabled(v144, OS_LOG_TYPE_INFO);

    v4 = v152;
    if (!v154)
    {
      goto LABEL_14;
    }
  }

  v155 = v4;
  v156 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
  _NRLogWithArgs(v156, 1, "%s%.30s:%-4d starting NtL fast-path for %u", ", "NRBluetoothPacketParserNexusToLinkLoop"", 1858, v3);

  v4 = v155;
LABEL_14:
  v13 = *(v2 + 15);
  v234 = *&v6 & ((v13 & 8) >> 3);
  if (v234 != 1)
  {
    if (!v5)
    {
      goto LABEL_259;
    }

    if ((v13 & 4) != 0)
    {
      v14 = (v2 + 120);
      goto LABEL_263;
    }

    v121 = *(v2 + 112);
    if (!v121)
    {
LABEL_259:
      v14 = (v2 + 104);
      v15 = "Medium";
      v16 = 1;
      v17 = *(v2 + 104);
      if (!v17)
      {
        goto LABEL_260;
      }

      goto LABEL_16;
    }

    if ((*(*v121 + 43) & 3) == 1 && (*(v2 + 17) & 1) == 0)
    {

      v228 = 0;
      v122 = 0;
      v7 = 0;
      v235 = 0;
      v4 = 0;
      v14 = (v2 + 120);
    }

    else
    {
      v14 = 0;
      v122 = 1;
    }

    if (*(v2 + 17) == 1 && (gNRPacketLoggingEnabled & 1) != 0)
    {
      v185 = v4;
      v186 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
      v187 = v186;
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v188 = os_log_type_enabled(v186, OS_LOG_TYPE_INFO);

        v4 = v185;
        if (!v188)
        {
          goto LABEL_255;
        }
      }

      v189 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
      _NRLogWithArgs(v189, 1, "%s%.30s:%-4d sending packets over medium pipe", ", "NRBluetoothPacketParserNexusToLinkLoop"", 1887);

      v4 = v185;
    }

LABEL_255:
    if (v14)
    {
      if (v122)
      {
        v16 = 0;
        v15 = "Invalid";
        v17 = *v14;
        if (!*v14)
        {
          goto LABEL_260;
        }

        goto LABEL_16;
      }

LABEL_263:
      v15 = "High";
      v16 = 2;
      v17 = *v14;
      if (!*v14)
      {
        goto LABEL_260;
      }

LABEL_16:
      v222 = v4;
      v18 = v17[3];
      if ((*(v18 + 84) & 1) == 0)
      {
        v19 = *(v18 + 8);
        v20 = *(v18 + 83);
        v21 = 584;
        if (v20 == 3)
        {
          v21 = 600;
        }

        v22 = v20 == 2;
        v23 = 616;
        if (!v22)
        {
          v23 = v21;
        }

        v226 = v23;
        if (gNRPacketLoggingEnabled != 1)
        {
          goto LABEL_22;
        }

        v157 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v162 = v157;
          v163 = os_log_type_enabled(v157, OS_LOG_TYPE_INFO);

          if (!v163)
          {
LABEL_22:
            v229 = v14;
            v219 = v16;
            v218 = v15;
            v220 = v7;
            v221 = v1;
            v230 = 0;
            v24 = 0;
            v25 = 0;
            next_slot = 0;
            v27 = 0;
            v227 = 0;
            v233 = v18 + 36;
            v240 = 0u;
            v241 = 0u;
            v28 = 9;
            v238 = 0u;
            v239 = 0u;
            v29 = 0x280D73000uLL;
            v224 = v19;
            while (1)
            {
              if (*(v29 + 3640) == 1)
              {
                v91 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                if (sNRCopyLogToStdErr == 1)
                {

LABEL_143:
                  v96 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                  _NRLogWithArgs(v96, 1, "%s%.30s:%-4d %s: starting NtL inner loop", ", "NRBluetoothPacketParserNexusToLinkLoop"", 1949, v218);

                  v29 = 0x280D73000;
                  goto LABEL_24;
                }

                v94 = v91;
                v95 = os_log_type_enabled(v91, OS_LOG_TYPE_INFO);

                v29 = 0x280D73000;
                if (v95)
                {
                  goto LABEL_143;
                }
              }

LABEL_24:
              v30 = v28 | 0x10;
              if (v234)
              {
                goto LABEL_34;
              }

              v32 = *(v18 + 28);
              v31 = *(v18 + 32);
              if (v32 <= v31)
              {
                goto LABEL_34;
              }

              ESPSequenceNumberFromPacket = next_slot;
              v33 = *(v18 + 80);
              v34 = (v32 - v31);
              v223 = (0x4000 - v33);
              if (v34 >= (0x4000 - v33))
              {
                v35 = (0x4000 - v33);
              }

              else
              {
                v35 = (v32 - v31);
              }

              v36 = v224;
              memcpy((*v18 + v33), &v224[v31], v35);
              v37 = *(v18 + 28);
              v38 = *(v18 + 32) + v35;
              *(v18 + 32) = v38;
              if (v37 <= v38)
              {
                v39 = 0;
              }

              else
              {
                memmove(v36, &v36[v38], v37 - v38);
                v39 = *(v18 + 28) - *(v18 + 32);
              }

              *(v18 + 28) = v39;
              *(v18 + 32) = 0;
              *(v18 + 80) += v35;
              next_slot = ESPSequenceNumberFromPacket;
              if (*(v29 + 3640) == 1)
              {
                v107 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                if (sNRCopyLogToStdErr == 1)
                {

LABEL_169:
                  v117 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                  _NRLogWithArgs(v117, 1, "%s%.30s:%-4d %s: wrote %u (%u/%u) bytes from linkWriteBuffer", ", "NRBluetoothPacketParserNexusToLinkLoop"", 1968, v218, v35, v223, v34);

                  v29 = 0x280D73000;
                  goto LABEL_33;
                }

                v116 = v107;
                v217 = os_log_type_enabled(v107, OS_LOG_TYPE_INFO);

                v29 = 0x280D73000;
                if (v217)
                {
                  goto LABEL_169;
                }
              }

LABEL_33:
              v30 = v28 | 0x30;
              v25 += v35;
LABEL_34:
              if (v235)
              {
                next_slot = os_channel_get_next_slot();
              }

              if (!next_slot)
              {
LABEL_92:
                v76 = *(v18 + 80);
                if (*(v18 + 80))
                {
                  goto LABEL_95;
                }

LABEL_188:
                v78 = v30 | 0x400;
                if (*(v29 + 3640) != 1)
                {
LABEL_189:
                  v125 = v78 | 0x8000;
                  if (*(v29 + 3640) != 1)
                  {
                    goto LABEL_190;
                  }

                  v159 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                  if (sNRCopyLogToStdErr == 1)
                  {

                    goto LABEL_294;
                  }

                  v171 = v159;
                  v172 = os_log_type_enabled(v159, OS_LOG_TYPE_INFO);

                  if (v172)
                  {
LABEL_294:
                    v173 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                    _NRLogWithArgs(v173, 1, "%s%.30s:%-4d %s: out of NtL inner loop", ", "NRBluetoothPacketParserNexusToLinkLoop"", 2110, v218);
                  }

LABEL_190:
                  if (v27)
                  {
                    os_channel_advance_slot();
                    *(v2 + 18) = 1;
LABEL_193:
                    if (v230 > 8u || v235 && os_channel_available_slot_count() <= 1)
                    {
                      v125 = v78 | 0x18000;
                      if (gNRPacketLoggingEnabled != 1)
                      {
                        goto LABEL_197;
                      }

                      v168 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                      if (sNRCopyLogToStdErr == 1)
                      {

                        goto LABEL_300;
                      }

                      v180 = v168;
                      v181 = os_log_type_enabled(v168, OS_LOG_TYPE_INFO);

                      if (v181)
                      {
LABEL_300:
                        v182 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                        _NRLogWithArgs(v182, 1, "%s%.30s:%-4d %s: performing RX sync (%u packets, %u bytes, %u pending, %0.2f msec, canWriteMore %d, memmove %u)", ", "NRBluetoothPacketParserNexusToLinkLoop"", 2123, v218, v24, v25, v230, *(v2 + 432) * 0.000001, v76 == 0, v227);
                      }

LABEL_197:
                      os_channel_sync();
                      *(v2 + 18) = 0;
                    }
                  }

                  else if (*(v2 + 18))
                  {
                    goto LABEL_193;
                  }

                  if (gNRPacketLoggingEnabled == 1)
                  {
                    v160 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                    if (sNRCopyLogToStdErr == 1)
                    {
                    }

                    else
                    {
                      v174 = v160;
                      v175 = os_log_type_enabled(v160, OS_LOG_TYPE_INFO);

                      if (!v175)
                      {
                        goto LABEL_200;
                      }
                    }

                    v176 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                    _NRLogWithArgs(v176, 1, "%s%.30s:%-4d %s: out of NtL outer loop", ", "NRBluetoothPacketParserNexusToLinkLoop"", 2134, v218);
                  }

LABEL_200:
                  if (v76)
                  {
LABEL_201:
                    v126 = v125 | 0x60000;
                    v1 = v221;
                    v7 = v220;
                    if (gNRPacketLoggingEnabled != 1)
                    {
                      goto LABEL_202;
                    }

                    v161 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                    if (sNRCopyLogToStdErr == 1)
                    {

                      goto LABEL_298;
                    }

                    v177 = v161;
                    v178 = os_log_type_enabled(v161, OS_LOG_TYPE_INFO);

                    if (v178)
                    {
LABEL_298:
                      v179 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                      _NRLogWithArgs(v179, 1, "%s%.30s:%-4d %s: done with NtL fast-path", ", "NRBluetoothPacketParserNexusToLinkLoop"", 2168, v218);
                    }

LABEL_202:
                    v123 = *(v18 + 82);
                    if (v123 >= 0xB)
                    {
                      v123 -= 11 * ((((117 * v123) >> 8) + (((v123 - ((117 * v123) >> 8)) & 0xFE) >> 1)) >> 3);
                    }

                    v124 = v123;
                    *(v233 + 4 * v123) = v126;
LABEL_205:
                    if (v124 < 0xA)
                    {
                      v127 = v123 + 1;
                    }

                    else
                    {
                      v127 = v123 - 10;
                    }

                    *(v18 + 82) = v127;
                    goto LABEL_209;
                  }

                  if (v219 <= 1)
                  {
                    if (v219)
                    {
                      v128 = *(v2 + 144);
                      if ((*(v2 + 15) & 4) == 0)
                      {
                        goto LABEL_225;
                      }
                    }

                    else
                    {
                      v128 = *(v2 + 144);
LABEL_225:
                      if ((v128 & 8) != 0 && *(v2 + 312))
                      {
                        *(v2 + 144) = v128 & 0xFFFFFFFFFFFFFFF7;
                        if (gNRPacketLoggingEnabled != 1)
                        {
                          goto LABEL_228;
                        }

                        v192 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                        v193 = v192;
                        if (sNRCopyLogToStdErr == 1)
                        {

                          goto LABEL_323;
                        }

                        v204 = os_log_type_enabled(v192, OS_LOG_TYPE_INFO);

                        if (v204)
                        {
LABEL_323:
                          v205 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                          _NRLogWithArgs(v205, 1, "%s%.30s:%-4d source-resume: NexusVOInput", ", "NRBluetoothPacketParserResumeNexusVOInputSource"", 489);
                        }

LABEL_228:
                        dispatch_resume(*(v2 + 312));
                        v128 = *(v2 + 144);
                      }

                      if ((v128 & 0x10) != 0 && *(v2 + 328))
                      {
                        *(v2 + 144) = v128 & 0xFFFFFFFFFFFFFFEFLL;
                        if (gNRPacketLoggingEnabled != 1)
                        {
                          goto LABEL_232;
                        }

                        v194 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                        v195 = v194;
                        if (sNRCopyLogToStdErr == 1)
                        {

                          goto LABEL_325;
                        }

                        v206 = os_log_type_enabled(v194, OS_LOG_TYPE_INFO);

                        if (v206)
                        {
LABEL_325:
                          v207 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                          _NRLogWithArgs(v207, 1, "%s%.30s:%-4d source-resume: NexusVIInput", ", "NRBluetoothPacketParserResumeNexusVIInputSource"", 491);
                        }

LABEL_232:
                        dispatch_resume(*(v2 + 328));
                        v128 = *(v2 + 144);
                      }
                    }

                    if ((v128 & 0x20) != 0 && *(v2 + 344))
                    {
                      *(v2 + 144) = v128 & 0xFFFFFFFFFFFFFFDFLL;
                      if (gNRPacketLoggingEnabled != 1)
                      {
                        goto LABEL_236;
                      }

                      v190 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                      v191 = v190;
                      if (sNRCopyLogToStdErr == 1)
                      {

                        goto LABEL_321;
                      }

                      v202 = os_log_type_enabled(v190, OS_LOG_TYPE_INFO);

                      if (v202)
                      {
LABEL_321:
                        v203 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                        _NRLogWithArgs(v203, 1, "%s%.30s:%-4d source-resume: NexusBEInput", ", "NRBluetoothPacketParserResumeNexusBEInputSource"", 487);
                      }

LABEL_236:
                      dispatch_resume(*(v2 + 344));
                      v128 = *(v2 + 144);
                    }

                    if ((v128 & 0x40) == 0 || !*(v2 + 360))
                    {
                      goto LABEL_201;
                    }

                    v130 = (v2 + 360);
                    *(v2 + 144) = v128 & 0xFFFFFFFFFFFFFFBFLL;
                    if (gNRPacketLoggingEnabled == 1)
                    {
                      v133 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                      v134 = v133;
                      if (sNRCopyLogToStdErr == 1)
                      {

                        goto LABEL_317;
                      }

                      v198 = os_log_type_enabled(v133, OS_LOG_TYPE_INFO);

                      if (v198)
                      {
LABEL_317:
                        v199 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                        _NRLogWithArgs(v199, 1, "%s%.30s:%-4d source-resume: NexusBKInput");
                        goto LABEL_332;
                      }
                    }

LABEL_245:
                    dispatch_resume(*v130);
                    goto LABEL_201;
                  }

                  if (v219 == 2)
                  {
                    v129 = *(v2 + 144);
                    if ((v129 & 8) != 0 && *(v2 + 312))
                    {
                      *(v2 + 144) = v129 & 0xFFFFFFFFFFFFFFF7;
                      if (gNRPacketLoggingEnabled != 1)
                      {
                        goto LABEL_218;
                      }

                      v196 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                      v197 = v196;
                      if (sNRCopyLogToStdErr == 1)
                      {

                        goto LABEL_329;
                      }

                      v209 = os_log_type_enabled(v196, OS_LOG_TYPE_INFO);

                      if (v209)
                      {
LABEL_329:
                        v210 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                        _NRLogWithArgs(v210, 1, "%s%.30s:%-4d source-resume: NexusVOInput", ", "NRBluetoothPacketParserResumeNexusVOInputSource"", 489);
                      }

LABEL_218:
                      dispatch_resume(*(v2 + 312));
                      v129 = *(v2 + 144);
                    }

                    if ((v129 & 0x10) == 0 || !*(v2 + 328))
                    {
                      goto LABEL_201;
                    }

                    v130 = (v2 + 328);
                    *(v2 + 144) = v129 & 0xFFFFFFFFFFFFFFEFLL;
                    if (gNRPacketLoggingEnabled != 1)
                    {
                      goto LABEL_245;
                    }

                    v131 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                    v132 = v131;
                    if (sNRCopyLogToStdErr == 1)
                    {
                    }

                    else
                    {
                      v208 = os_log_type_enabled(v131, OS_LOG_TYPE_INFO);

                      if (!v208)
                      {
                        goto LABEL_245;
                      }
                    }

                    v199 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                    _NRLogWithArgs(v199, 1, "%s%.30s:%-4d source-resume: NexusVIInput");
                  }

                  else
                  {
                    v135 = *(v2 + 144);
                    if ((v135 & 8) == 0 || !*(v2 + 312))
                    {
                      goto LABEL_201;
                    }

                    v130 = (v2 + 312);
                    *(v2 + 144) = v135 & 0xFFFFFFFFFFFFFFF7;
                    if (gNRPacketLoggingEnabled != 1)
                    {
                      goto LABEL_245;
                    }

                    v200 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                    v201 = v200;
                    if (sNRCopyLogToStdErr == 1)
                    {
                    }

                    else
                    {
                      v211 = os_log_type_enabled(v200, OS_LOG_TYPE_INFO);

                      if (!v211)
                      {
                        goto LABEL_245;
                      }
                    }

                    v199 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                    _NRLogWithArgs(v199, 1, "%s%.30s:%-4d source-resume: NexusVOInput");
                  }

LABEL_332:

                  goto LABEL_245;
                }

                v169 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                v170 = v169;
                if (sNRCopyLogToStdErr == 1)
                {

                  goto LABEL_302;
                }

                v183 = os_log_type_enabled(v169, OS_LOG_TYPE_INFO);

                if (v183)
                {
LABEL_302:
                  v184 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                  _NRLogWithArgs(v184, 1, "%s%.30s:%-4d %s: nothing to read from nexus", ", "NRBluetoothPacketParserNexusToLinkLoop"", 2065, v218);
                }

                v29 = 0x280D73000;
                goto LABEL_189;
              }

              v40 = next_slot;
              while (1)
              {
                v41 = 0x4000 - *(v18 + 80);
                v42 = nrMaxTLVLengthForPacket(v239 + *(v2 + 28), (WORD1(v238) - *(v2 + 28)));
                if (v41 < v42)
                {
                  v30 |= 0x40u;
                  if (gNRPacketLoggingEnabled != 1)
                  {
LABEL_91:
                    next_slot = v40;
                    v29 = 0x280D73000uLL;
                    goto LABEL_92;
                  }

                  v103 = v42;
                  v104 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                  if (sNRCopyLogToStdErr == 1)
                  {
                  }

                  else
                  {
                    v110 = v104;
                    LODWORD(ESPSequenceNumberFromPacket) = os_log_type_enabled(v104, OS_LOG_TYPE_INFO);

                    if (!ESPSequenceNumberFromPacket)
                    {
                      goto LABEL_91;
                    }
                  }

                  v111 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                  _NRLogWithArgs(v111, 1, "%s%.30s:%-4d %s: not enough room %u to fit maxTLVLen %u", ", "NRBluetoothPacketParserNexusToLinkLoop"", 1984, v218, v41, v103);

                  goto LABEL_91;
                }

                os_channel_slot_get_packet();
                os_packet_get_next_buflet();
                data_offset = os_buflet_get_data_offset();
                object_address = os_buflet_get_object_address();
                data_length = os_buflet_get_data_length();
                if (data_length >= 0x10000)
                {
                  if (nrCopyLogObj_onceToken_563 != -1)
                  {
                    dispatch_once(&nrCopyLogObj_onceToken_563, &__block_literal_global_442);
                  }

                  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_564, OS_LOG_TYPE_ERROR))
                  {
                    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_564, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: dataLen <= 65535", ", "NRBluetoothPacketParserNexusToLinkLoop"", 1997);
                  }

                  v136 = _os_log_pack_size();
                  v138 = &v216 - ((MEMORY[0x28223BE20](v136, v137) + 15) & 0xFFFFFFFFFFFFFFF0);
                  v139 = __error();
                  v140 = _os_log_pack_fill(v138, v136, *v139, &dword_25B98C000, "%{public}s Assertion Failed: dataLen <= 65535");
                  *v140 = 136446210;
                  *(v140 + 4) = "NRBluetoothPacketParserNexusToLinkLoop";
                  v141 = nrCopyLogObj_560();
                  _NRLogAbortWithPack(v141, v138);
                }

                if (*(v2 + 9) == 1)
                {
                  v236 = 0;
                  v237 = 0;
                  v46 = (*v18 + *(v18 + 80));
                  v236 = v46;
                  LODWORD(v237) = v41;
                  v47 = *(v2 + 28);
                  if (*(v2 + 10) == 1)
                  {
                    v48 = nrPacketTo6LoWPAN((v239 + v47), (WORD1(v238) - v47), &v236, 1u, v2 + 688, v2 + 704, 0);
                  }

                  else
                  {
                    memcpy(v46, (v239 + v47), WORD1(v238) - v47);
                    v48 = WORD1(v238) - *(v2 + 28);
                  }

                  v29 = 0x280D73000uLL;
                  if (gNRPacketLoggingEnabled != 1)
                  {
                    goto LABEL_53;
                  }

                  v55 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                  if (sNRCopyLogToStdErr == 1)
                  {

                    goto LABEL_69;
                  }

                  v56 = v55;
                  v57 = os_log_type_enabled(v55, OS_LOG_TYPE_INFO);

                  v29 = 0x280D73000;
                  if (v57)
                  {
LABEL_69:
                    v58 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                    _NRLogWithArgs(v58, 1, "%s%.30s:%-4d %s: wrote %u bytes from nexus (actual: %u)", ", "NRBluetoothPacketParserNexusToLinkLoop"", 2015, v218, v48, WORD1(v238));

                    goto LABEL_82;
                  }

                  goto LABEL_53;
                }

                if (!data_length && WORD1(v238))
                {
                  v236 = 0;
                  v237 = 0;
                  v236 = *v18 + *(v18 + 80);
                  LODWORD(v237) = v41;
                  v48 = nrPacketToTLV((v239 + *(v2 + 28)), (WORD1(v238) - *(v2 + 28)), &v236, 1, v2 + 688, v2 + 704);
                  v29 = 0x280D73000uLL;
                  if (gNRPacketLoggingEnabled == 1)
                  {
                    v49 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                    if (sNRCopyLogToStdErr == 1)
                    {
                    }

                    else
                    {
                      v60 = v49;
                      v61 = os_log_type_enabled(v49, OS_LOG_TYPE_INFO);

                      v29 = 0x280D73000;
                      if (!v61)
                      {
                        goto LABEL_53;
                      }
                    }

                    v62 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                    v63 = v239;
                    v64 = WORD1(v238);
                    ESPSequenceNumberFromPacket = v62;
                    if (isPacketValidIPv6(v239, WORD1(v238)) && isNextHeaderValidESP(v63, v64))
                    {
                      v65 = bswap32(*(v63 + 44));
                    }

                    else
                    {
                      v65 = 0;
                    }

                    v66 = v239;
                    v67 = WORD1(v238);
                    if (isPacketValidIPv6(v239, WORD1(v238)) && isNextHeaderValidESP(v66, v67))
                    {
                      v68 = bswap32(*(v66 + 40));
                    }

                    else
                    {
                      v68 = 0;
                    }

                    _NRLogWithArgs(ESPSequenceNumberFromPacket, 1, "%s%.30s:%-4d %s: wrote %u bytes from nexus for ESP seq: %u (spi: %u)", ", "NRBluetoothPacketParserNexusToLinkLoop"", 2027, v218, v48, v65, v68);

LABEL_82:
                    v29 = 0x280D73000;
                  }

LABEL_53:
                  v30 |= 0x80u;
                  goto LABEL_54;
                }

                if (data_length)
                {
                  v50 = object_address + data_offset;
                  v236 = 0;
                  v237 = 0;
                  v236 = *v18 + *(v18 + 80);
                  LODWORD(v237) = v41;
                  v51 = data_length;
                  v48 = nrPacketToTLV((v50 + *(v2 + 28)), (data_length - *(v2 + 28)), &v236, 1, v2 + 688, v2 + 704);
                  v29 = 0x280D73000uLL;
                  if (gNRPacketLoggingEnabled != 1)
                  {
LABEL_50:
                    v30 |= 0x100u;
                    goto LABEL_54;
                  }

                  v59 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                  if (sNRCopyLogToStdErr == 1)
                  {
                  }

                  else
                  {
                    v70 = v59;
                    LODWORD(ESPSequenceNumberFromPacket) = os_log_type_enabled(v59, OS_LOG_TYPE_INFO);

                    v29 = 0x280D73000;
                    if (!ESPSequenceNumberFromPacket)
                    {
                      goto LABEL_50;
                    }
                  }

                  v71 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                  ESPSequenceNumberFromPacket = getESPSequenceNumberFromPacket(v50, v51);
                  ESPSPIFromPacket = getESPSPIFromPacket(v50, v51);
                  _NRLogWithArgs(v71, 1, "%s%.30s:%-4d %s: wrote %u bytes from nexus for ESP seq: %u (spi: %u)", ", "NRBluetoothPacketParserNexusToLinkLoop"", 2037, v218, v48, ESPSequenceNumberFromPacket, ESPSPIFromPacket);

                  v29 = 0x280D73000;
                  goto LABEL_50;
                }

                v30 |= 0x200u;
                v29 = 0x280D73000uLL;
                if (gNRPacketLoggingEnabled != 1)
                {
                  v48 = 0;
                  goto LABEL_54;
                }

                v69 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                if (sNRCopyLogToStdErr == 1)
                {

LABEL_88:
                  v75 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                  _NRLogWithArgs(v75, 1, "%s%.30s:%-4d %s: No data to write", ", "NRBluetoothPacketParserNexusToLinkLoop"", 2039, v218);

                  goto LABEL_89;
                }

                v73 = v69;
                v74 = os_log_type_enabled(v69, OS_LOG_TYPE_INFO);

                if (v74)
                {
                  goto LABEL_88;
                }

LABEL_89:
                v48 = 0;
                v29 = 0x280D73000;
LABEL_54:
                *(v18 + 80) += v48;
                v52 = (v234 & 1) != 0 ? 0 : os_channel_get_next_slot();
                ++v24;
                ++*v231;
                *v232 = 1;
                v25 += v48;
                if (!v52)
                {
                  break;
                }

                v53 = *(v18 + 82);
                if (v53 >= 0xB)
                {
                  v53 -= 11 * ((((117 * v53) >> 8) + (((v53 - ((117 * v53) >> 8)) & 0xFE) >> 1)) >> 3);
                }

                *(v233 + 4 * v53) = v30;
                if (v53 < 0xAu)
                {
                  v54 = v53 + 1;
                }

                else
                {
                  v54 = v53 - 10;
                }

                *(v18 + 82) = v54;
                v27 = v40;
                v40 = v52;
                v30 = 0;
              }

              next_slot = 0;
              v27 = v40;
              v76 = *(v18 + 80);
              if (!*(v18 + 80))
              {
                goto LABEL_188;
              }

LABEL_95:
              v236 = 0;
              if (*(v29 + 3640) != 1)
              {
                goto LABEL_96;
              }

              v92 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
              if (sNRCopyLogToStdErr == 1)
              {

                goto LABEL_147;
              }

              v98 = v92;
              v99 = os_log_type_enabled(v92, OS_LOG_TYPE_INFO);

              v29 = 0x280D73000;
              if (v99)
              {
LABEL_147:
                v100 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                _NRLogWithArgs(v100, 1, "%s%.30s:%-4d %s: invoking send callback w/ written %u", ", "NRBluetoothPacketParserNexusToLinkLoop"", 2075, v218, *(v18 + 80));

                v29 = 0x280D73000;
              }

LABEL_96:
              v77 = ((*v229)[1])(**v229, *v18, *(v18 + 80), &v236, 0, 0);
              if (*(v29 + 3640) == 1)
              {
                v93 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                if (sNRCopyLogToStdErr == 1)
                {
                }

                else
                {
                  v101 = v93;
                  LODWORD(ESPSequenceNumberFromPacket) = os_log_type_enabled(v93, OS_LOG_TYPE_INFO);

                  v29 = 0x280D73000;
                  if (!ESPSequenceNumberFromPacket)
                  {
                    goto LABEL_97;
                  }
                }

                v102 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                _NRLogWithArgs(v102, 1, "%s%.30s:%-4d %s: canWriteMore: %d bufferHandled=%zu/%u", ", "NRBluetoothPacketParserNexusToLinkLoop"", 2078, v218, v77, v236, *(v18 + 80));

                v29 = 0x280D73000;
              }

LABEL_97:
              if (v77)
              {
                v78 = v30 | 0x800;
                v79 = v236;
                if (!v236)
                {
                  goto LABEL_129;
                }

LABEL_123:
                if (v79 < *(v18 + 80))
                {
                  if (!*(v29 + 3640))
                  {
                    goto LABEL_125;
                  }

                  v105 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                  if (sNRCopyLogToStdErr == 1)
                  {

                    goto LABEL_165;
                  }

                  v112 = v105;
                  LODWORD(ESPSequenceNumberFromPacket) = os_log_type_enabled(v105, OS_LOG_TYPE_INFO);

                  v29 = 0x280D73000;
                  if (ESPSequenceNumberFromPacket)
                  {
LABEL_165:
                    v113 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                    _NRLogWithArgs(v113, 1, "%s%.30s:%-4d %s: memmoving filledIn=%u, bufferHandled=%zu", ", "NRBluetoothPacketParserNexusToLinkLoop"", 2092, v218, *(v18 + 80), v236);

                    v29 = 0x280D73000;
                  }

LABEL_125:
                  v78 |= 0x2000u;
                  memmove(*v18, (*v18 + v236), *(v18 + 80) - v236);
                  v88 = v236;
                  *(v18 + 80) -= v236;
                  v227 = (v227 + 1);
LABEL_128:
                  *(v2 + v226) += v88;
                  goto LABEL_129;
                }

                if (!*(v29 + 3640))
                {
LABEL_127:
                  v78 |= 0x4000u;
                  *(v18 + 80) = 0;
                  v88 = v236;
                  goto LABEL_128;
                }

                v106 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                if (sNRCopyLogToStdErr == 1)
                {
                }

                else
                {
                  v114 = v106;
                  LODWORD(ESPSequenceNumberFromPacket) = os_log_type_enabled(v106, OS_LOG_TYPE_INFO);

                  v29 = 0x280D73000;
                  if (!ESPSequenceNumberFromPacket)
                  {
                    goto LABEL_127;
                  }
                }

                v115 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                _NRLogWithArgs(v115, 1, "%s%.30s:%-4d %s: not memmoving filledIn=%u, bufferHandled=%zu", ", "NRBluetoothPacketParserNexusToLinkLoop"", 2099, v218, *(v18 + 80), v236);

                v29 = 0x280D73000;
                goto LABEL_127;
              }

              if (v228)
              {
                v228(v2);
              }

              *(v18 + 84) |= 1u;
              v80 = *(v18 + 83);
              if (v80 > 1)
              {
                if (v80 == 2)
                {
                  ++*(v2 + 168);
                  *(v2 + 144) = *(v2 + 144) & 0xFFFFFFFFFFFFFFFDLL | (2 * (*(v18 + 84) & 1));
                  if (*(v29 + 3640) != 1)
                  {
                    goto LABEL_121;
                  }

                  v85 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                  if (sNRCopyLogToStdErr == 1)
                  {
                  }

                  else
                  {
                    v120 = v85;
                    LODWORD(ESPSequenceNumberFromPacket) = os_log_type_enabled(v85, OS_LOG_TYPE_INFO);

                    v29 = 0x280D73000;
                    if (!ESPSequenceNumberFromPacket)
                    {
                      goto LABEL_121;
                    }
                  }

                  v87 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                  _NRLogWithArgs(v87, 1, "%s%.30s:%-4d source-%s: High");
                }

                else
                {
                  if (v80 != 3)
                  {
                    goto LABEL_121;
                  }

                  ++*(v2 + 184);
                  *(v2 + 144) = *(v2 + 144) & 0xFFFFFFFFFFFFFFFBLL | (4 * (*(v18 + 84) & 1));
                  if (*(v29 + 3640) != 1)
                  {
                    goto LABEL_121;
                  }

                  v83 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                  if (sNRCopyLogToStdErr == 1)
                  {
                  }

                  else
                  {
                    v119 = v83;
                    LODWORD(ESPSequenceNumberFromPacket) = os_log_type_enabled(v83, OS_LOG_TYPE_INFO);

                    v29 = 0x280D73000;
                    if (!ESPSequenceNumberFromPacket)
                    {
                      goto LABEL_121;
                    }
                  }

                  v87 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                  _NRLogWithArgs(v87, 1, "%s%.30s:%-4d source-%s: Isochronous");
                }

LABEL_120:

                v29 = 0x280D73000uLL;
                goto LABEL_121;
              }

              if (!*(v18 + 83))
              {
                v84 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                if (sNRCopyLogToStdErr == 1)
                {
                }

                else
                {
                  v86 = v84;
                  LODWORD(ESPSequenceNumberFromPacket) = os_log_type_enabled(v84, OS_LOG_TYPE_ERROR);

                  v29 = 0x280D73000;
                  if (!ESPSequenceNumberFromPacket)
                  {
                    goto LABEL_121;
                  }
                }

                v87 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                _NRLogWithArgs(v87, 16, "%s%.30s:%-4d invalid link channel priority");
                goto LABEL_120;
              }

              if (v80 == 1)
              {
                v81 = *(v2 + 144);
                ++*(v2 + 152);
                *(v2 + 144) = v81 & 0xFFFFFFFFFFFFFFFELL | *(v18 + 84) & 1;
                if (*(v29 + 3640) == 1)
                {
                  v82 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                  if (sNRCopyLogToStdErr == 1)
                  {

                    goto LABEL_171;
                  }

                  v118 = v82;
                  LODWORD(ESPSequenceNumberFromPacket) = os_log_type_enabled(v82, OS_LOG_TYPE_INFO);

                  v29 = 0x280D73000;
                  if (ESPSequenceNumberFromPacket)
                  {
LABEL_171:
                    v87 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                    _NRLogWithArgs(v87, 1, "%s%.30s:%-4d source-%s: Medium");
                    goto LABEL_120;
                  }
                }
              }

LABEL_121:
              v78 = v30 | 0x1800;
              if (*(v29 + 3640) != 1)
              {
                v79 = v236;
                if (!v236)
                {
                  goto LABEL_129;
                }

                goto LABEL_123;
              }

              v97 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
              if (sNRCopyLogToStdErr == 1)
              {

                goto LABEL_159;
              }

              v108 = v97;
              LODWORD(ESPSequenceNumberFromPacket) = os_log_type_enabled(v97, OS_LOG_TYPE_INFO);

              if (ESPSequenceNumberFromPacket)
              {
LABEL_159:
                v109 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
                _NRLogWithArgs(v109, 1, "%s%.30s:%-4d ", ", "NRBluetoothPacketParserNexusToLinkLoop"", 2086);
              }

              v29 = 0x280D73000;
              v79 = v236;
              if (v236)
              {
                goto LABEL_123;
              }

LABEL_129:
              ++v230;
              if ((v77 & 1) == 0)
              {
                goto LABEL_189;
              }

              v89 = *(v18 + 82);
              if (v89 >= 0xB)
              {
                v89 -= 11 * ((((117 * v89) >> 8) + (((v89 - ((117 * v89) >> 8)) & 0xFE) >> 1)) >> 3);
              }

              v28 = 0;
              *(v233 + 4 * v89) = v78;
              if (v89 < 0xAu)
              {
                v90 = v89 + 1;
              }

              else
              {
                v90 = v89 - 10;
              }

              *(v18 + 82) = v90;
            }
          }
        }

        v164 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
        _NRLogWithArgs(v164, 1, "%s%.30s:%-4d %s: starting NtL outer loop", ", "NRBluetoothPacketParserNexusToLinkLoop"", 1938, v15);

        goto LABEL_22;
      }

      if (gNRPacketLoggingEnabled != 1)
      {
LABEL_183:
        if (v228)
        {
          v228(v2);
        }

        v123 = *(v18 + 82);
        if (v123 >= 0xB)
        {
          v123 -= 11 * ((((117 * v123) >> 8) + (((v123 - ((117 * v123) >> 8)) & 0xFE) >> 1)) >> 3);
        }

        v124 = v123;
        *(v18 + 4 * v123 + 36) = 3;
        goto LABEL_205;
      }

      v158 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v165 = v158;
        v166 = os_log_type_enabled(v158, OS_LOG_TYPE_INFO);

        if (!v166)
        {
          goto LABEL_183;
        }
      }

      v167 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
      _NRLogWithArgs(v167, 1, "%s%.30s:%-4d %s: ignoring NtL fast-path for %u, as waiting for link output available", ", "NRBluetoothPacketParserNexusToLinkLoop"", 1903, v15, v3);

      goto LABEL_183;
    }

    goto LABEL_259;
  }

  v14 = (v2 + 136);
  v15 = "Isochronous";
  v16 = 3;
  v17 = *(v2 + 136);
  if (v17)
  {
    goto LABEL_16;
  }

LABEL_260:
  if (gNRPacketLoggingEnabled != 1)
  {
    goto LABEL_261;
  }

  v212 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
  v213 = v212;
  if (sNRCopyLogToStdErr == 1)
  {
  }

  else
  {
    v214 = os_log_type_enabled(v212, OS_LOG_TYPE_INFO);

    if (!v214)
    {
      goto LABEL_261;
    }
  }

  v215 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
  _NRLogWithArgs(v215, 1, "%s%.30s:%-4d ", ", "NRBluetoothPacketParserNexusToLinkLoop"", 1923);

LABEL_261:
  v142 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
  if (sNRCopyLogToStdErr == 1)
  {
  }

  else
  {
    v149 = v142;
    v150 = os_log_type_enabled(v142, OS_LOG_TYPE_FAULT);

    if (!v150)
    {
      goto LABEL_209;
    }
  }

  v151 = _NRCopyLogObjectForNRUUID(*(v2 + 48));
  _NRLogWithArgs(v151, 17, "%s: Invalid write context for nexus priority: %u", v15, v3);

LABEL_209:
  v2 = *(v1 + 32);
LABEL_210:
  *(v2 + 17) = 0;
}

void __68__NRBluetoothPacketParser_setupNexusChannelForPriority_channelUUID___block_invoke_3(uint64_t a1)
{
  if (gNRPacketLoggingEnabled != 1)
  {
    goto LABEL_2;
  }

  v11 = a1;
  v12 = _NRCopyLogObjectForNRUUID(*(*(a1 + 32) + 48));
  if (sNRCopyLogToStdErr == 1)
  {

    a1 = v11;
  }

  else
  {
    v13 = v12;
    v14 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);

    a1 = v11;
    if (!v14)
    {
      goto LABEL_2;
    }
  }

  v15 = _NRCopyLogObjectForNRUUID(*(*(a1 + 32) + 48));
  StringForNRNexusChannelPriority = createStringForNRNexusChannelPriority(*(v11 + 40));
  _NRLogWithArgs(v15, 1, "%s%.30s:%-4d Nexus output available - %@", ", "[NRBluetoothPacketParser setupNexusChannelForPriority:channelUUID:]_block_invoke_3"", 1522, StringForNRNexusChannelPriority);

  a1 = v11;
LABEL_2:
  v1 = *(a1 + 40) & 0xFE;
  if (v1 == 100)
  {
    v2 = 2;
  }

  else
  {
    v2 = v1 == 102;
  }

  v3 = *(a1 + 32);
  if (v2 == 2)
  {
    v4 = 112;
    goto LABEL_9;
  }

  if (v2 == 1)
  {
    v4 = 96;
LABEL_9:
    v5 = *(v3 + v4);
    if (v5)
    {
      v6 = *(v5 + 24);
      if (v6)
      {
        v7 = *(v5 + 32);

        v6(v7);
      }
    }

    return;
  }

  v8 = _NRCopyLogObjectForNRUUID(*(v3 + 48));
  if (sNRCopyLogToStdErr == 1)
  {
  }

  else
  {
    v9 = v8;
    v10 = os_log_type_enabled(v8, OS_LOG_TYPE_FAULT);

    if (!v10)
    {
      return;
    }
  }

  v17 = _NRCopyLogObjectForNRUUID(*(v3 + 48));
  _NRLogWithArgs(v17, 17, "Invalid priority %d", v2);
}

- (NRBluetoothPacketParser)initWithDeviceIdentifier:(id)identifier queue:(id)queue
{
  v30 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  queueCopy = queue;
  v29.receiver = self;
  v29.super_class = NRBluetoothPacketParser;
  v9 = [(NRBluetoothPacketParser *)&v29 init];
  if (!v9)
  {
    v18 = nrCopyLogObj_560();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v19 = v18;
      v20 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);

      if (!v20)
      {
        goto LABEL_11;
      }
    }

    v21 = nrCopyLogObj_560();
    _NRLogWithArgs(v21, 16, "%s%.30s:%-4d ABORTING: [super init] failed", ", "[NRBluetoothPacketParser initWithDeviceIdentifier:queue:]"", 599);

LABEL_11:
    v22 = _os_log_pack_size();
    v24 = &v28 - ((MEMORY[0x28223BE20](v22, v23) + 15) & 0xFFFFFFFFFFFFFFF0);
    v25 = __error();
    v26 = _os_log_pack_fill(v24, v22, *v25, &dword_25B98C000, "%{public}s [super init] failed");
    *v26 = 136446210;
    *(v26 + 4) = "[NRBluetoothPacketParser initWithDeviceIdentifier:queue:]";
    v27 = nrCopyLogObj_560();
    _NRLogAbortWithPack(v27, v24);
  }

  v10 = v9;
  objc_storeStrong(&v9->_queue, queue);
  v10->_identifier = atomic_fetch_add_explicit(&initializeWithQueue__sNRParserID, 1uLL, memory_order_relaxed);
  v10->_uses6LoWPAN = 1;
  [(NRBluetoothPacketParser *)v10 changeStateTo:?];
  objc_storeStrong(&v10->_deviceIdentifier, identifier);
  nrDeviceIdentifier = [(NRDeviceIdentifier *)v10->_deviceIdentifier nrDeviceIdentifier];
  nrUUID = v10->_nrUUID;
  v10->_nrUUID = nrDeviceIdentifier;

  _NRAddEligibleNRUUIDForLogObject(v10->_nrUUID);
  v13 = _NRCopyLogObjectForNRUUID(v10->_nrUUID);
  if (sNRCopyLogToStdErr == 1)
  {

LABEL_5:
    v16 = _NRCopyLogObjectForNRUUID(v10->_nrUUID);
    _NRLogWithArgs(v16, 0, "%s%.30s:%-4d Created (%p)", ", "[NRBluetoothPacketParser initWithDeviceIdentifier:queue:]"", 604, v10);

    goto LABEL_6;
  }

  v14 = v13;
  v15 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

  if (v15)
  {
    goto LABEL_5;
  }

LABEL_6:

  return v10;
}

- (NRBluetoothPacketParser)initWithBluetoothUUID:(id)d queue:(id)queue
{
  v33 = *MEMORY[0x277D85DE8];
  dCopy = d;
  queueCopy = queue;
  v32.receiver = self;
  v32.super_class = NRBluetoothPacketParser;
  v9 = [(NRBluetoothPacketParser *)&v32 init];
  if (!v9)
  {
    v21 = nrCopyLogObj_560();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v22 = v21;
      v23 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);

      if (!v23)
      {
        goto LABEL_14;
      }
    }

    v24 = nrCopyLogObj_560();
    _NRLogWithArgs(v24, 16, "%s%.30s:%-4d ABORTING: [super init] failed", ", "[NRBluetoothPacketParser initWithBluetoothUUID:queue:]"", 584);

LABEL_14:
    v25 = _os_log_pack_size();
    v27 = &v31 - ((MEMORY[0x28223BE20](v25, v26) + 15) & 0xFFFFFFFFFFFFFFF0);
    v28 = __error();
    v29 = _os_log_pack_fill(v27, v25, *v28, &dword_25B98C000, "%{public}s [super init] failed");
    *v29 = 136446210;
    *(v29 + 4) = "[NRBluetoothPacketParser initWithBluetoothUUID:queue:]";
    v30 = nrCopyLogObj_560();
    _NRLogAbortWithPack(v30, v27);
  }

  v10 = v9;
  objc_storeStrong(&v9->_queue, queue);
  *(v10 + 56) = atomic_fetch_add_explicit(&initializeWithQueue__sNRParserID, 1uLL, memory_order_relaxed);
  *(v10 + 10) = 1;
  [(NRBluetoothPacketParser *)v10 changeStateTo:?];
  v11 = [NRDeviceIdentifier newDeviceIdentifierWithBluetoothUUID:dCopy];
  v12 = *(v10 + 40);
  *(v10 + 40) = v11;

  if (*(v10 + 40))
  {
    objc_storeStrong((v10 + 32), d);
    nrDeviceIdentifier = [*(v10 + 40) nrDeviceIdentifier];
    v14 = *(v10 + 48);
    *(v10 + 48) = nrDeviceIdentifier;

    _NRAddEligibleNRUUIDForLogObject(*(v10 + 48));
    v15 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v17 = v15;
      v18 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

      if (!v18)
      {
LABEL_8:
        v16 = v10;
        goto LABEL_9;
      }
    }

    v19 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
    _NRLogWithArgs(v19, 0, "%s%.30s:%-4d Created (%p)", ", "[NRBluetoothPacketParser initWithBluetoothUUID:queue:]"", 593, v10);

    goto LABEL_8;
  }

  v16 = 0;
LABEL_9:

  return v16;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v4 = v3;
  if (self->_readContextForMedium)
  {
    [v3 appendFormat:@"%sr", "M"];
  }

  if (self->_writeContextForMedium)
  {
    [v4 appendFormat:@"%sw", "M"];
  }

  if (self->_readContextForHigh)
  {
    [v4 appendFormat:@"%sr", "H"];
  }

  if (self->_writeContextForHigh)
  {
    [v4 appendFormat:@"%sw", "H"];
  }

  if (self->_readContextForIsochronous)
  {
    [v4 appendFormat:@"%sr", "D"];
  }

  if (self->_writeContextForIsochronous)
  {
    [v4 appendFormat:@"%sw", "D"];
  }

  v5 = objc_alloc(MEMORY[0x277CCAB68]);
  identifier = self->_identifier;
  state = self->_state;
  if (state >= 5)
  {
    v9 = v5;
    state = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown(%d)", state];
    v5 = v9;
  }

  else
  {
    state = off_27996AFB0[state];
  }

  v10 = [v5 initWithFormat:@"[%llu %@ %@]", identifier, state, v4];

  return v10;
}

@end