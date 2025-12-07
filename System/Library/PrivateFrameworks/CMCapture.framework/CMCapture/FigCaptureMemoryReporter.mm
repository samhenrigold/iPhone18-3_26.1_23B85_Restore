@interface FigCaptureMemoryReporter
+ (id)sharedInstance;
- (FigCaptureMemoryReporter)init;
- (void)_changeReportFrequency:(uint64_t)frequency;
- (void)_generateMemgraph:(uint64_t)memgraph;
- (void)_logCurrentTransactions;
- (void)_reportMemoryStatus;
- (void)_startMemgraphCoolDown:(uint64_t)down;
- (void)_startReporting;
- (void)_updateActiveClientCountWithDelta:(uint64_t)delta;
- (void)dealloc;
- (void)decrementActiveClientCount:(BOOL)count clientIsCameraMessagesApp:(BOOL)app;
- (void)generateMemgraphWithReason:(id)reason;
- (void)incrementActiveClientCount:(BOOL)count clientIsCameraMessagesApp:(BOOL)app withMemoryPool:(id)pool;
@end

@implementation FigCaptureMemoryReporter

- (void)_reportMemoryStatus
{
  if (!self)
  {
    return;
  }

  v3 = &kFigCaptureFlatDictionaryAppleMakerNote_ModuleAndCalibrationValidationStatuses_opaque;
  if ((dword_1ED843FF0 & 4) != 0)
  {
    ContinuousUpTimeNanoseconds = FigGetContinuousUpTimeNanoseconds();
  }

  else
  {
    ContinuousUpTimeNanoseconds = -1;
  }

  LODWORD(v120) = *(self + 40);
  if (v120 == 1)
  {
    *(self + 40) = 0;
  }

  bzero(buffer, 0x1D0uLL);
  if (proc_pid_rusage(*(self + 64), 6, buffer))
  {
    OUTLINED_FUNCTION_1_5();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    return;
  }

  v115 = v1;
  v4 = v188;
  v5 = (self + 128);
  v6 = atomic_load((self + 128));
  v7 = v4;
  if (v6 > v4)
  {
    v7 = atomic_load(v5);
  }

  atomic_store(v7, v5);
  v8 = v187;
  *(self + 120) = v187;
  v9 = v8 >> 10;
  v117 = v4 >> 10;
  if (*(self + 44) > 0 || (*(self + 70) & 1) != 0 || *(self + 80) < v9)
  {
    v184 = 0;
    v185 = 0;
  }

  else
  {
    v55 = *(self + 84);
    v184 = 0;
    v185 = 0;
    if (v55 <= v9)
    {
      v56 = 0;
      goto LABEL_43;
    }
  }

  v10 = *(self + 144);
  if (v10 && (dword_1ED843FF0 & 0x40) != 0)
  {
    [v10 getInUseFootprint:&v185 andOutOfUseFootprint:&v184];
  }

  proc_reset_footprint_interval();
  if (v9 <= 0x100000)
  {
    v11 = v9 + (v9 >> 4);
    v12 = v9 - (v9 >> 4);
  }

  else
  {
    v11 = v9 + 0x10000;
    v12 = v9 - 0x10000;
  }

  *(self + 80) = v11;
  *(self + 84) = v12;
  v13 = dword_1ED843FF0;
  if ((dword_1ED843FF0 & 1) == 0)
  {
    if ((dword_1ED843FF0 & 0x40) == 0)
    {
      goto LABEL_22;
    }

LABEL_29:
    OUTLINED_FUNCTION_14_40();
    v40 = OUTLINED_FUNCTION_8_59(qword_1ED843FE8, v33, v34, v35, v36, v37, v38, v39, v106, v107, v108, v109, v111, v113, v115, v117, ContinuousUpTimeNanoseconds, v120, host_info64_out, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, *v141, *&v141[8], *&v141[16], *&v141[24], *&v141[32], *&v141[40], *&v141[48], *&v141[56], *&v141[64], *&v141[72], *&v141[80], *&v141[88], *&v141[96], *&v141[104], *&v141[112], *&v141[120], *&v141[128], *&v141[136], *&v141[144], *&v141[152], *&v141[160], *&v141[168], *&v141[176], v142, *v143);
    v41 = OUTLINED_FUNCTION_7_75(v40);
    if (OUTLINED_FUNCTION_4_91(v41))
    {
      *v141 = 136315650;
      *&v141[4] = "[FigCaptureMemoryReporter _reportMemoryStatus]";
      *&v141[12] = 1024;
      *&v141[14] = v185 >> 10;
      *&v141[18] = 1024;
      *&v141[20] = v184 >> 10;
      OUTLINED_FUNCTION_5_29();
      OUTLINED_FUNCTION_2_117(v42, v43, task_info_out, v44, &dword_1AC90E000);
    }

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_128(v45, v46, v47, v48, v49);
    v3 = &kFigCaptureFlatDictionaryAppleMakerNote_ModuleAndCalibrationValidationStatuses_opaque;
    if ((dword_1ED843FF0 & 2) == 0)
    {
      goto LABEL_42;
    }

LABEL_32:
    bzero(task_info_out, 0x174uLL);
    task_info_outCnt = 93;
    if (task_info(*MEMORY[0x1E69E9A60], 0x16u, task_info_out, &task_info_outCnt))
    {
      OUTLINED_FUNCTION_1_5();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
      return;
    }

    if ((v3[4080] & 2) != 0)
    {
      v50 = OUTLINED_FUNCTION_11_50();
      v51 = OUTLINED_FUNCTION_18_35(v50);
      if (OUTLINED_FUNCTION_4_91(v51))
      {
        *v141 = 136319234;
        *&v141[4] = "[FigCaptureMemoryReporter _reportMemoryStatus]";
        *&v141[12] = 1024;
        *&v141[14] = *&task_info_out[8];
        *&v141[18] = 2048;
        *&v141[20] = *task_info_out >> 10;
        *&v141[28] = 2048;
        *&v141[30] = v161 >> 10;
        *&v141[38] = 2048;
        *&v141[40] = v183 >> 10;
        *&v141[48] = 2048;
        *&v141[50] = *&v152[2] >> 10;
        *&v141[58] = 2048;
        *&v141[60] = *v154 >> 10;
        *&v141[68] = 2048;
        *&v141[70] = *&v154[16] >> 10;
        *&v141[78] = 2048;
        *&v141[80] = v155 >> 10;
        *&v141[88] = 2048;
        *&v141[90] = v157 >> 10;
        *&v141[98] = 2048;
        *&v141[100] = v159 >> 10;
        *&v141[108] = 2048;
        *&v141[110] = v153 >> 10;
        *&v141[118] = 2048;
        *&v141[120] = *&v154[8] >> 10;
        *&v141[128] = 2048;
        *&v141[130] = *&v154[24] >> 10;
        *&v141[138] = 2048;
        *&v141[140] = v156 >> 10;
        *&v141[148] = 2048;
        *&v141[150] = v158 >> 10;
        *&v141[158] = 2048;
        *&v141[160] = v160 >> 10;
        OUTLINED_FUNCTION_5_29();
        OUTLINED_FUNCTION_2_117(v52, v53, v148, v54, &dword_1AC90E000);
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_128(v57, v58, v59, v60, v61);
      v3 = &kFigCaptureFlatDictionaryAppleMakerNote_ModuleAndCalibrationValidationStatuses_opaque;
      if ((dword_1ED843FF0 & 2) != 0)
      {
        v62 = OUTLINED_FUNCTION_11_50();
        v63 = OUTLINED_FUNCTION_18_35(v62);
        if (OUTLINED_FUNCTION_4_91(v63))
        {
          *v141 = 136320514;
          *&v141[4] = "[FigCaptureMemoryReporter _reportMemoryStatus]";
          *&v141[14] = v162 / 1024;
          *&v141[12] = 2048;
          *&v141[22] = 2048;
          *&v141[24] = v163 / 1024;
          *&v141[32] = 2048;
          *&v141[34] = v165 / 1024;
          *&v141[42] = 2048;
          *&v141[44] = v167 / 1024;
          *&v141[52] = 2048;
          *&v141[54] = v169 / 1024;
          *&v141[62] = 2048;
          *&v141[64] = v171 / 1024;
          *&v141[72] = 2048;
          *&v141[74] = v173 / 1024;
          *&v141[82] = 2048;
          *&v141[84] = v175 / 1024;
          *&v141[92] = 2048;
          *&v141[94] = v177 / 1024;
          *&v141[102] = 2048;
          *&v141[104] = v179 / 1024;
          *&v141[112] = 2048;
          *&v141[114] = v181 / 1024;
          *&v141[122] = 2048;
          *&v141[124] = v164 / 1024;
          *&v141[132] = 2048;
          *&v141[134] = v166 / 1024;
          *&v141[142] = 2048;
          *&v141[144] = v168 / 1024;
          *&v141[152] = 2048;
          *&v141[154] = v170 / 1024;
          *&v141[162] = 2048;
          *&v141[164] = v172 / 1024;
          *&v141[172] = 2048;
          *&v141[174] = v174 / 1024;
          *&v141[182] = 2048;
          v142 = v176 / 1024;
          *v143 = 2048;
          *&v143[2] = v178 / 1024;
          v144 = 2048;
          v145 = v180 / 1024;
          v146 = 2048;
          v147 = v182 / 1024;
          OUTLINED_FUNCTION_5_29();
          OUTLINED_FUNCTION_2_117(v64, v65, v148, v66, &dword_1AC90E000);
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_128(v67, v68, v69, v70, v71);
        v3 = &kFigCaptureFlatDictionaryAppleMakerNote_ModuleAndCalibrationValidationStatuses_opaque;
      }
    }

    goto LABEL_42;
  }

  OUTLINED_FUNCTION_14_40();
  v21 = OUTLINED_FUNCTION_8_59(qword_1ED843FE8, v14, v15, v16, v17, v18, v19, v20, v106, v107, v108, v109, v111, v113, v1, v117, ContinuousUpTimeNanoseconds, v120, host_info64_out, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, *v141, *&v141[8], *&v141[16], *&v141[24], *&v141[32], *&v141[40], *&v141[48], *&v141[56], *&v141[64], *&v141[72], *&v141[80], *&v141[88], *&v141[96], *&v141[104], *&v141[112], *&v141[120], *&v141[128], *&v141[136], *&v141[144], *&v141[152], *&v141[160], *&v141[168], *&v141[176], v142, *v143);
  v22 = OUTLINED_FUNCTION_7_75(v21);
  if (OUTLINED_FUNCTION_4_91(v22))
  {
    v23 = *(self + 120) >> 10;
    v24 = @"false";
    if (v120)
    {
      v24 = @"true";
    }

    *v141 = 136316674;
    *&v141[4] = "[FigCaptureMemoryReporter _reportMemoryStatus]";
    *&v141[12] = 2048;
    *&v141[14] = buffer[2];
    *&v141[22] = 2048;
    *&v141[24] = buffer[3];
    *&v141[32] = 2048;
    *&v141[34] = buffer[7] >> 10;
    *&v141[42] = 2048;
    *&v141[44] = v23;
    *&v141[52] = 2048;
    *&v141[54] = v117;
    *&v141[62] = 2112;
    *&v141[64] = v24;
    OUTLINED_FUNCTION_5_29();
    OUTLINED_FUNCTION_2_117(v25, v26, task_info_out, v27, &dword_1AC90E000);
  }

  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_128(v28, v29, v30, v31, v32);
  v13 = dword_1ED843FF0;
  v3 = &kFigCaptureFlatDictionaryAppleMakerNote_ModuleAndCalibrationValidationStatuses_opaque;
  if ((dword_1ED843FF0 & 0x40) != 0)
  {
    goto LABEL_29;
  }

LABEL_22:
  if ((v13 & 2) != 0)
  {
    goto LABEL_32;
  }

LABEL_42:
  v56 = 1;
LABEL_43:
  bzero(&host_info64_out, 0xA0uLL);
  HIDWORD(v120) = 40;
  if (host_statistics64(*(self + 52), 4, &host_info64_out, &v120 + 1))
  {
    OUTLINED_FUNCTION_1_5();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    return;
  }

  v72 = *(self + 56);
  v73 = v72 * HIDWORD(v122);
  v74 = v73 >> 10;
  v116 = (16 * v137);
  v112 = (v72 * host_info64_out) >> 10;
  v110 = (v72 * HIDWORD(host_info64_out)) >> 10;
  v114 = (v72 * v122) >> 10;
  if (*(self + 44) > 0 || (*(self + 70) & 1) != 0 || *(self + 88) < v74 || *(self + 92) > v74)
  {
    if (v74 <= 0x100000)
    {
      v75 = v74 + (v74 >> 4);
      v76 = v74 - (v74 >> 4);
    }

    else
    {
      v75 = v74 + 0x10000;
      v76 = v74 - 0x10000;
    }

    *(self + 88) = v75;
    *(self + 92) = v76;
    if (v3[4080])
    {
      OUTLINED_FUNCTION_14_40();
      v85 = OUTLINED_FUNCTION_8_59(qword_1ED843FE8, v78, v79, v80, v81, v82, v83, v84, v106, v107, v108, v110, v112, v114, v116, v117, ContinuousUpTimeNanoseconds, v120, host_info64_out, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, *v141, *&v141[8], *&v141[16], *&v141[24], *&v141[32], *&v141[40], *&v141[48], *&v141[56], *&v141[64], *&v141[72], *&v141[80], *&v141[88], *&v141[96], *&v141[104], *&v141[112], *&v141[120], *&v141[128], *&v141[136], *&v141[144], *&v141[152], *&v141[160], *&v141[168], *&v141[176], v142, *v143);
      v86 = OUTLINED_FUNCTION_7_75(v85);
      if (OUTLINED_FUNCTION_4_91(v86))
      {
        *v141 = 136316418;
        *&v141[4] = "[FigCaptureMemoryReporter _reportMemoryStatus]";
        *&v141[12] = 2048;
        *&v141[14] = v73 >> 10;
        *&v141[22] = 2048;
        *&v141[24] = v112;
        *&v141[32] = 2048;
        *&v141[34] = v110;
        *&v141[42] = 2048;
        *&v141[44] = v114;
        *&v141[52] = 2048;
        *&v141[54] = v116;
        OUTLINED_FUNCTION_5_29();
        v90 = OUTLINED_FUNCTION_2_117(v87, v88, task_info_out, v89, &dword_1AC90E000);
      }

      else
      {
        v90 = 0;
      }

      v77 = 1;
      OUTLINED_FUNCTION_128(qword_1ED843FE8, 1, 1, v90, v90 != task_info_out);
      v3 = &kFigCaptureFlatDictionaryAppleMakerNote_ModuleAndCalibrationValidationStatuses_opaque;
    }

    else
    {
      v77 = 1;
    }
  }

  else
  {
    v77 = 0;
  }

  if ((!v120 || *(self + 44) < 1 || (*(self + 48) & 1) == 0 && (*(self + 49) & 1) == 0) && (*(self + 69) & 1) == 0 && *(self + 68) != 1)
  {
    goto LABEL_70;
  }

  v91 = *(v3 + 1020);
  if ((v91 & 0x20) != 0 && (*(self + 76) <= v9 || *(self + 69) == 1))
  {
    [(FigCaptureMemoryReporter *)self _logCurrentTransactions];
    if ((*(v3 + 1020) & 8) != 0)
    {
      goto LABEL_67;
    }
  }

  else if ((v91 & 8) != 0)
  {
LABEL_67:
    if (*(self + 72) <= v9 || *(self + 68) == 1)
    {
      [(FigCaptureMemoryReporter *)self _generateMemgraph:v9];
    }
  }

LABEL_70:
  if ((v56 | v77) == 1)
  {
    if (*MEMORY[0x1E695FF58] == 1)
    {
      kdebug_trace();
    }

    if ((v3[4080] & 0x11) != 0)
    {
      v92 = *(self + 136);
      if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
      {
        v93 = *(self + 120) >> 10;
        *task_info_out = 134219520;
        *&task_info_out[4] = v93;
        v151 = 2048;
        *v152 = v117;
        *&v152[8] = 2048;
        v153 = v73 >> 10;
        *v154 = 2048;
        *&v154[2] = v112;
        *&v154[10] = 2048;
        *&v154[12] = v110;
        *&v154[20] = 2048;
        *&v154[22] = v114;
        *&v154[30] = 2048;
        v155 = v116;
        _os_log_impl(&dword_1AC90E000, v92, OS_LOG_TYPE_DEFAULT, "m11:%lld, m12:%lld, m21:%lld, m22:%lld, m23:%lld, m24:%lld, m25:%lld", task_info_out, 0x48u);
      }
    }
  }

  if ((v3[4080] & 4) != 0 && (ContinuousUpTimeNanoseconds & 0x8000000000000000) == 0)
  {
    v94 = FigGetContinuousUpTimeNanoseconds();
    if ((v3[4080] & 4) != 0)
    {
      v95 = v94;
      OUTLINED_FUNCTION_14_40();
      v103 = OUTLINED_FUNCTION_8_59(qword_1ED843FE8, v96, v97, v98, v99, v100, v101, v102, v106, v107, v108, v110, v112, v114, v116, v117, ContinuousUpTimeNanoseconds, v120, host_info64_out, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, *v141, *&v141[8], *&v141[16], *&v141[24], *&v141[32], *&v141[40], *&v141[48], *&v141[56], *&v141[64], *&v141[72], *&v141[80], *&v141[88], *&v141[96], *&v141[104], *&v141[112], *&v141[120], *&v141[128], *&v141[136], *&v141[144], *&v141[152], *&v141[160], *&v141[168], *&v141[176], v142, *v143);
      v104 = v148[0];
      if (os_log_type_enabled(v103, task_info_outCnt))
      {
        v105 = v104;
      }

      else
      {
        v105 = v104 & 0xFFFFFFFE;
      }

      if (v105)
      {
        *v141 = 136315394;
        *&v141[4] = "[FigCaptureMemoryReporter _reportMemoryStatus]";
        *&v141[12] = 2048;
        *&v141[14] = (v95 - v119) / 0x3E8uLL;
        OUTLINED_FUNCTION_5_29();
        OUTLINED_FUNCTION_13();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }
}

+ (id)sharedInstance
{
  if (sharedInstance_sOnceToken_1 != -1)
  {
    +[FigCaptureMemoryReporter sharedInstance];
  }

  return sharedInstance_sSharedFigMemoryReporter;
}

FigCaptureMemoryReporter *__42__FigCaptureMemoryReporter_sharedInstance__block_invoke()
{
  result = objc_alloc_init(FigCaptureMemoryReporter);
  sharedInstance_sSharedFigMemoryReporter = result;
  return result;
}

- (FigCaptureMemoryReporter)init
{
  v5.receiver = self;
  v5.super_class = FigCaptureMemoryReporter;
  v2 = [(FigCaptureMemoryReporter *)&v5 init];
  if (v2)
  {
    FigDebugIsInternalBuild();
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();
    fig_note_initialize_category_with_default_work_cf();
    dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    *(v2 + 1) = FigDispatchQueueCreateStandardDispatchQueue();
    *(v2 + 16) = getpid();
    v3 = MEMORY[0x1B26F1E40]();
    *(v2 + 13) = v3;
    host_page_size(v3, v2 + 7);
    *(v2 + 4) = 0;
    *(v2 + 34) = 0;
    v2[70] = 0;
    *(v2 + 9) = vdup_n_s32(0x4B000u);
    *(v2 + 104) = xmmword_1AD056BB0;
    v2[96] = dword_1ED843FF0 != 0;
    *(v2 + 18) = 0;
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureMemoryReporter;
  [(FigCaptureMemoryReporter *)&v3 dealloc];
}

- (void)generateMemgraphWithReason:(id)reason
{
  if (dword_1ED843FF0)
  {
    v38 = 0;
    v37 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  *buffer = 0u;
  v5 = proc_pid_rusage(self->_my_pid, 6, buffer);
  if (v5)
  {
    [(FigCaptureMemoryReporter *)v5 generateMemgraphWithReason:v6];
    LODWORD(v7) = 0;
  }

  else
  {
    v7 = *(&v12 + 1) >> 10;
  }

  [(FigCaptureMemoryReporter *)self _generateMemgraph:v7];
}

- (void)_generateMemgraph:(uint64_t)memgraph
{
  if (memgraph)
  {
    os_unfair_lock_lock((memgraph + 36));
    v3 = *(memgraph + 24);
    os_unfair_lock_unlock((memgraph + 36));
    if (dword_1ED843FF0)
    {
      corpse_task_port = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (!v3)
    {
      v5 = MEMORY[0x1E69E9A60];
      v6 = *MEMORY[0x1E69E9A60];
      corpse_task_port = 0;
      v7 = task_generate_corpse(v6, &corpse_task_port);
      if (dword_1ED843FF0)
      {
        v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (v7)
      {
        [(FigCaptureMemoryReporter *)v7 _generateMemgraph:v8];
      }

      else
      {
        v10 = corpse_task_port;
        v13 = 0;
        v14[0] = &v13;
        v14[1] = 0x2020000000;
        v11 = getReportMemoryExceptionFromTaskSymbolLoc_ptr;
        v14[2] = getReportMemoryExceptionFromTaskSymbolLoc_ptr;
        if (!getReportMemoryExceptionFromTaskSymbolLoc_ptr)
        {
          v15[0] = MEMORY[0x1E69E9820];
          v15[1] = 3221225472;
          v15[2] = __getReportMemoryExceptionFromTaskSymbolLoc_block_invoke;
          v15[3] = &unk_1E798FC38;
          v15[4] = &v13;
          __getReportMemoryExceptionFromTaskSymbolLoc_block_invoke(v15);
          v11 = *(v14[0] + 24);
        }

        _Block_object_dispose(&v13, 8);
        if (!v11)
        {
          [FigCaptureMemoryReporter _generateMemgraph:];
        }

        (v11)(v10, 1, 0, 0, 0);
        mach_port_deallocate(*v5, corpse_task_port);
        if (dword_1ED843FF0)
        {
          v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        [(FigCaptureMemoryReporter *)memgraph _startMemgraphCoolDown:?];
      }
    }
  }
}

void __51__FigCaptureMemoryReporter__startMemgraphCoolDown___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 36));
  dispatch_source_cancel(*(*(a1 + 32) + 24));

  *(*(a1 + 32) + 24) = 0;
  v2 = (*(a1 + 32) + 36);

  os_unfair_lock_unlock(v2);
}

- (void)incrementActiveClientCount:(BOOL)count clientIsCameraMessagesApp:(BOOL)app withMemoryPool:(id)pool
{
  if (self->_anyLoggingEnabled)
  {
    appCopy = app;
    countCopy = count;
    if ((dword_1ED843FF0 & 4) != 0)
    {
      OUTLINED_FUNCTION_112();
      v9 = OUTLINED_FUNCTION_77(qword_1ED843FE8);
      if (os_log_type_enabled(v9, v11))
      {
        v10 = v12;
      }

      else
      {
        v10 = v12 & 0xFFFFFFFE;
      }

      if (v10)
      {
        OUTLINED_FUNCTION_5_6();
        OUTLINED_FUNCTION_13();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    self->_memoryPool = pool;
    [(FigCaptureMemoryReporter *)self _updateActiveClientCountWithDelta:?];
    if (countCopy)
    {
      self->_activeClientsIncludeCamera = 1;
    }

    if (appCopy)
    {
      self->_activeClientsIncludeCameraMessagesApp = 1;
    }
  }
}

- (void)_updateActiveClientCountWithDelta:(uint64_t)delta
{
  if (delta)
  {
    os_unfair_lock_lock((delta + 32));
    v4 = *(delta + 44);
    v5 = v4 + a2;
    v6 = v5 & ~(v5 >> 31);
    *(delta + 44) = v6;
    if (v4 != v6 && (!v4 || v5 <= 0))
    {
      *(delta + 40) = 1;
      v7 = v5 < 1;
      v8 = 104;
      if (v7)
      {
        v8 = 112;
      }

      [(FigCaptureMemoryReporter *)delta _changeReportFrequency:?];
    }

    os_unfair_lock_unlock((delta + 32));
  }
}

- (void)decrementActiveClientCount:(BOOL)count clientIsCameraMessagesApp:(BOOL)app
{
  if (self->_anyLoggingEnabled)
  {
    appCopy = app;
    countCopy = count;
    if ((dword_1ED843FF0 & 4) != 0)
    {
      OUTLINED_FUNCTION_112();
      v7 = OUTLINED_FUNCTION_77(qword_1ED843FE8);
      v8 = OUTLINED_FUNCTION_15_1(v7);
      if (OUTLINED_FUNCTION_12(v8))
      {
        OUTLINED_FUNCTION_5_6();
        OUTLINED_FUNCTION_13();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [(FigCaptureMemoryReporter *)self _updateActiveClientCountWithDelta:?];
    if (countCopy || appCopy)
    {
      if (countCopy)
      {
        self->_activeClientsIncludeCamera = 0;
      }

      if (appCopy)
      {
        self->_activeClientsIncludeCameraMessagesApp = 0;
      }

      if ((dword_1ED843FF0 & 8) != 0)
      {
        [(FigCaptureMemoryReporter *)self _startMemgraphCoolDown:?];
      }
    }
  }
}

- (void)_startMemgraphCoolDown:(uint64_t)down
{
  if (down)
  {
    os_unfair_lock_lock((down + 36));
    if (!*(down + 24))
    {
      v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(down + 8));
      *(down + 24) = v4;
      v5 = dispatch_time(0, 1000000000 * a2);
      dispatch_source_set_timer(v4, v5, 0xFFFFFFFFFFFFFFFFLL, 0x3E8uLL);
      v6 = *(down + 24);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __51__FigCaptureMemoryReporter__startMemgraphCoolDown___block_invoke;
      handler[3] = &unk_1E798F870;
      handler[4] = down;
      dispatch_source_set_event_handler(v6, handler);
      dispatch_activate(*(down + 24));
    }

    os_unfair_lock_unlock((down + 36));
  }
}

- (void)_changeReportFrequency:(uint64_t)frequency
{
  if (frequency)
  {
    v4 = *(frequency + 16);
    if (v4)
    {
      if ((dword_1ED843FF0 & 4) != 0)
      {
        OUTLINED_FUNCTION_112();
        v5 = OUTLINED_FUNCTION_77(qword_1ED843FE8);
        if (os_log_type_enabled(v5, v16))
        {
          v6 = v17;
        }

        else
        {
          v6 = v17 & 0xFFFFFFFE;
        }

        if (v6)
        {
          v12 = 136315138;
          v13 = "[FigCaptureMemoryReporter _changeReportFrequency:]";
          OUTLINED_FUNCTION_13();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_2_4();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v4 = *(frequency + 16);
      }

      dispatch_source_cancel(v4);

      *(frequency + 16) = 0;
    }

    if ((dword_1ED843FF0 & 4) != 0)
    {
      OUTLINED_FUNCTION_112();
      v7 = OUTLINED_FUNCTION_77(qword_1ED843FE8);
      v8 = OUTLINED_FUNCTION_15_1(v7);
      if (OUTLINED_FUNCTION_12(v8))
      {
        v12 = 136315394;
        v13 = "[FigCaptureMemoryReporter _changeReportFrequency:]";
        v14 = 2048;
        v15 = a2;
        OUTLINED_FUNCTION_13();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v9 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(frequency + 8));
    *(frequency + 16) = v9;
    dispatch_source_set_timer(v9, 0, 1000000 * a2, 0x3E8uLL);
    v10 = *(frequency + 16);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __51__FigCaptureMemoryReporter__changeReportFrequency___block_invoke;
    handler[3] = &unk_1E798F870;
    handler[4] = frequency;
    dispatch_source_set_event_handler(v10, handler);
    dispatch_activate(*(frequency + 16));
  }
}

- (void)_startReporting
{
  if (self && *(self + 96) == 1)
  {
    *(self + 136) = os_log_create("com.apple.coremedia.CMCapture.FigCaptureMemoryReporter", "");
    os_unfair_lock_lock((self + 32));
    [(FigCaptureMemoryReporter *)self _changeReportFrequency:?];

    os_unfair_lock_unlock((self + 32));
  }
}

- (void)_logCurrentTransactions
{
  if (self)
  {
    obj = FigOSTransactionCopyDescriptions();
    v1 = [objc_msgSend(MEMORY[0x1E695DF00] "date")];
    if (dword_1ED843FF0)
    {
      v9 = OUTLINED_FUNCTION_12_49();
      v10 = os_log_type_enabled(v9, v70);
      if (OUTLINED_FUNCTION_12(v10))
      {
        OUTLINED_FUNCTION_5_29();
        OUTLINED_FUNCTION_13();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      v1 = fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v11 = OUTLINED_FUNCTION_16_41(v1, v2, v3, v4, v5, v6, v7, v8, v27, v29, v31, v33, v34, obj, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68);
    if (v11)
    {
      v13 = v11;
      v14 = MEMORY[0];
      *&v12 = 136315394;
      v32 = v12;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (MEMORY[0] != v14)
          {
            objc_enumerationMutation(obja);
          }

          v16 = *(8 * i);
          v17 = [v16 rangeOfString:@"://"];
          if (v17 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v17 = [v16 substringToIndex:v17];
          }

          if (dword_1ED843FF0)
          {
            v25 = OUTLINED_FUNCTION_12_49();
            if (os_log_type_enabled(v25, v70))
            {
              v26 = v71;
            }

            else
            {
              v26 = v71 & 0xFFFFFFFE;
            }

            if (v26)
            {
              OUTLINED_FUNCTION_5_29();
              OUTLINED_FUNCTION_13();
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_2_4();
            v17 = fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

        v13 = OUTLINED_FUNCTION_16_41(v17, v18, v19, v20, v21, v22, v23, v24, v28, v30, v32, *(&v32 + 1), v35, obja, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69);
      }

      while (v13);
    }

    CFRelease(obja);
  }
}

- (void)_generateMemgraph:.cold.2()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void soft_ReportMemoryExceptionFromTask(task_t description:{BOOL, const char * _Nullable, dispatch_queue_t _Nullable, void (^ _Nullable)(NSError * _Nullable))"), @"FigCaptureMemoryReporter.m", 38, @"%s", dlerror()}];
  __break(1u);
}

@end