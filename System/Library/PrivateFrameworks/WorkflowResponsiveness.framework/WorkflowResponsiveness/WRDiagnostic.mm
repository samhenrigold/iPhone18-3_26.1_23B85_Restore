@interface WRDiagnostic
+ (id)diagnosticsForWorkflowName:(void *)name signpostName:(void *)signpostName diagnosticDicts:(int)dicts diagnosticsEnabled:(int)enabled checkForOverrides:(uint64_t *)overrides error:;
+ (id)diagnosticsWithDict:(void *)dict backupName:(uint64_t *)name error:;
- (BOOL)hasAnySpindumpReports;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)encodedDict;
- (id)initWithDict:(void *)dict backupName:(uint64_t *)name error:;
- (id)isValidForSignpost;
- (id)isValidForWorkflow;
- (id)validate;
- (uint64_t)applyDict:(uint64_t *)dict error:;
- (unint64_t)hash;
@end

@implementation WRDiagnostic

- (id)encodedDict
{
  v3 = objc_alloc(MEMORY[0x277CBEB38]);
  name = [(WRDiagnostic *)self name];
  v5 = [v3 initWithObjectsAndKeys:{name, @"name", 0}];

  if ([(WRDiagnostic *)self hasTriggerThresholdCount])
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[WRDiagnostic triggerThresholdCount](self, "triggerThresholdCount")}];
    [v5 setObject:v6 forKeyedSubscript:@"trigger_threshold_count"];
  }

  if ([(WRDiagnostic *)self hasTriggerThresholdDurationUnion])
  {
    v7 = MEMORY[0x277CCABB0];
    [(WRDiagnostic *)self triggerThresholdDurationUnion];
    v8 = [v7 numberWithDouble:?];
    [v5 setObject:v8 forKeyedSubscript:@"trigger_threshold_duration_union"];
  }

  if ([(WRDiagnostic *)self hasTriggerThresholdDurationSum])
  {
    v9 = MEMORY[0x277CCABB0];
    [(WRDiagnostic *)self triggerThresholdDurationSum];
    v10 = [v9 numberWithDouble:?];
    [v5 setObject:v10 forKeyedSubscript:@"trigger_threshold_duration_sum"];
  }

  if ([(WRDiagnostic *)self hasTriggerThresholdDurationSingle])
  {
    v11 = MEMORY[0x277CCABB0];
    [(WRDiagnostic *)self triggerThresholdDurationSingle];
    v12 = [v11 numberWithDouble:?];
    [v5 setObject:v12 forKeyedSubscript:@"trigger_threshold_duration_single"];
  }

  if ([(WRDiagnostic *)self triggerEventTimeout])
  {
    [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"trigger_event_timeout"];
  }

  if ([(WRDiagnostic *)self gatherTailspin])
  {
    [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"gather_tailspin"];
  }

  if ([(WRDiagnostic *)self tailspinIncludeOSLogs])
  {
    [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"option_tailspin_includes_oslogs"];
  }

  if ([(WRDiagnostic *)self reportSpindumpForThisThread])
  {
    [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"report_spindump_this_thread"];
  }

  reportSpindumpForThreadWithName = [(WRDiagnostic *)self reportSpindumpForThreadWithName];

  if (reportSpindumpForThreadWithName)
  {
    reportSpindumpForThreadWithName2 = [(WRDiagnostic *)self reportSpindumpForThreadWithName];
    [v5 setObject:reportSpindumpForThreadWithName2 forKeyedSubscript:@"report_spindump_thread_name"];
  }

  if ([(WRDiagnostic *)self reportSpindumpForMainThread])
  {
    [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"report_spindump_main_thread"];
  }

  if ([(WRDiagnostic *)self reportSpindumpForThisDispatchQueue])
  {
    [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"report_spindump_this_dispatchqueue"];
  }

  reportSpindumpForDispatchQueueWithLabel = [(WRDiagnostic *)self reportSpindumpForDispatchQueueWithLabel];

  if (reportSpindumpForDispatchQueueWithLabel)
  {
    reportSpindumpForDispatchQueueWithLabel2 = [(WRDiagnostic *)self reportSpindumpForDispatchQueueWithLabel];
    [v5 setObject:reportSpindumpForDispatchQueueWithLabel2 forKeyedSubscript:@"report_spindump_dispatchqueue_label"];
  }

  reportOtherSignpostWithName = [(WRDiagnostic *)self reportOtherSignpostWithName];

  if (reportOtherSignpostWithName)
  {
    reportOtherSignpostWithName2 = [(WRDiagnostic *)self reportOtherSignpostWithName];
    [v5 setObject:reportOtherSignpostWithName2 forKeyedSubscript:@"option_report_other_signpost"];
  }

  reportProcessesWithName = [(WRDiagnostic *)self reportProcessesWithName];

  if (reportProcessesWithName)
  {
    reportProcessesWithName2 = [(WRDiagnostic *)self reportProcessesWithName];
    [v5 setObject:reportProcessesWithName2 forKeyedSubscript:@"option_report_other_processes"];
  }

  if ([(WRDiagnostic *)self reportOmittingNetworkBoundIntervals])
  {
    [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"option_report_omit_network_bound_intervals"];
  }

  v21 = [v5 copy];

  return v21;
}

- (BOOL)hasAnySpindumpReports
{
  if ([(WRDiagnostic *)self reportSpindumpForThisThread])
  {
    return 1;
  }

  reportSpindumpForThreadWithName = [(WRDiagnostic *)self reportSpindumpForThreadWithName];
  if (reportSpindumpForThreadWithName || [(WRDiagnostic *)self reportSpindumpForMainThread]|| [(WRDiagnostic *)self reportSpindumpForThisDispatchQueue])
  {
    v3 = 1;
  }

  else
  {
    reportSpindumpForDispatchQueueWithLabel = [(WRDiagnostic *)self reportSpindumpForDispatchQueueWithLabel];
    v3 = reportSpindumpForDispatchQueueWithLabel != 0;
  }

  return v3;
}

+ (id)diagnosticsForWorkflowName:(void *)name signpostName:(void *)signpostName diagnosticDicts:(int)dicts diagnosticsEnabled:(int)enabled checkForOverrides:(uint64_t *)overrides error:
{
  v175 = *MEMORY[0x277D85DE8];
  v147 = a2;
  nameCopy = name;
  signpostNameCopy = signpostName;
  objc_opt_self();
  v162 = 0;
  if (overrides)
  {
    *overrides = 0;
  }

  else
  {
    overrides = &v162;
  }

  if ([signpostNameCopy count] == 1)
  {
    v14 = v147;
    if (nameCopy)
    {
      v14 = nameCopy;
    }

    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v158 = 0u;
  v159 = 0u;
  v160 = 0u;
  v161 = 0u;
  v17 = signpostNameCopy;
  v18 = [v17 countByEnumeratingWithState:&v158 objects:v174 count:16];
  v145 = v15;
  v146 = v16;
  v144 = v17;
  if (v18)
  {
    v19 = v18;
    v20 = 0x279EE3000uLL;
    v21 = *v159;
    v141 = *v159;
    do
    {
      v22 = 0;
      do
      {
        if (*v159 != v21)
        {
          v23 = v22;
          objc_enumerationMutation(v17);
          v22 = v23;
        }

        v143 = v22;
        v24 = [(WRDiagnostic *)*(v20 + 104) diagnosticsWithDict:v15 backupName:overrides error:?];
        v25 = v24;
        if (!v24)
        {
          goto LABEL_112;
        }

        if (nameCopy)
        {
          [(WRDiagnostic *)v24 isValidForSignpost];
        }

        else
        {
          [(WRDiagnostic *)v24 isValidForWorkflow];
        }
        v26 = ;
        *overrides = v26;
        if (v26)
        {
          goto LABEL_112;
        }

        v137 = v19;
        dictsCopy = dicts;
        enabledCopy = enabled;
        v156 = 0u;
        v157 = 0u;
        v154 = 0u;
        v155 = 0u;
        v27 = v16;
        v28 = [v27 countByEnumeratingWithState:&v154 objects:v173 count:16];
        if (!v28)
        {
          goto LABEL_27;
        }

        v29 = v28;
        v30 = *v155;
        do
        {
          for (i = 0; i != v29; ++i)
          {
            if (*v155 != v30)
            {
              objc_enumerationMutation(v27);
            }

            name = [*(*(&v154 + 1) + 8 * i) name];
            name2 = [v25 name];
            v34 = [name isEqualToString:name2];

            if (v34)
            {
              name3 = [v25 name];
              *overrides = WRMakeError(8, @"Multiple diagnostics with name %@", v125, v126, v127, v128, v129, v130, name3);

              v15 = v145;
              v16 = v146;
              v17 = v144;
LABEL_112:

              v131 = 0;
              goto LABEL_118;
            }
          }

          v29 = [v27 countByEnumeratingWithState:&v154 objects:v173 count:16];
        }

        while (v29);
LABEL_27:

        enabled = enabledCopy;
        if (!enabledCopy)
        {
LABEL_36:
          if ((dictsCopy & 1) == 0)
          {

            v25 = 0;
            v38 = 0;
            goto LABEL_43;
          }

          v37 = 0;
          v38 = 0;
          goto LABEL_38;
        }

        name4 = [v25 name];
        if (nameCopy)
        {
          v153 = 0;
          v36 = &v153;
          WROverrideDiagnosticForSignpost(v147, nameCopy, name4, &v153);
        }

        else
        {
          v152 = 0;
          v36 = &v152;
          WROverrideDiagnosticForWorkflow(v147, name4, &v152);
        }
        v37 = ;
        v38 = *v36;

        if (v37)
        {
          v49 = [v25 copy];
          v151 = v38;
          v50 = [(WRDiagnostic *)v49 applyDict:v37 error:&v151];
          v51 = v151;

          if (!v50)
          {
            v135 = v51;
            v52 = nameCopy;
            v53 = __error();
            v54 = *v53;
            v55 = _wrlog(v53);
            v56 = os_log_type_enabled(v55, OS_LOG_TYPE_FAULT);
            if (nameCopy)
            {
              if (v56)
              {
                [v25 name];
                v57 = v133 = v49;
                v58 = [v135 description];
                *buf = 138544386;
                v164 = v147;
                v165 = 2114;
                v166 = nameCopy;
                v167 = 2114;
                v168 = v57;
                v169 = 2114;
                v170 = v58;
                v171 = 2114;
                v172 = v37;
                v59 = v55;
                v60 = "%{public}@: %{public}@: diagnostic %{public}@: invalid override dict: %{public}@\n%{public}@";
                v61 = 52;
                goto LABEL_68;
              }
            }

            else if (v56)
            {
              [v25 name];
              v57 = v133 = v49;
              v58 = [v135 description];
              *buf = 138544130;
              v164 = v147;
              v165 = 2114;
              v166 = v57;
              v167 = 2114;
              v168 = v58;
              v169 = 2114;
              v170 = v37;
              v59 = v55;
              v60 = "%{public}@: diagnostic %{public}@: invalid override dict: %{public}@\n%{public}@";
              v61 = 42;
LABEL_68:
              _os_log_fault_impl(&dword_2746E5000, v59, OS_LOG_TYPE_FAULT, v60, buf, v61);

              enabled = enabledCopy;
              v49 = v133;
            }

            *__error() = v54;
            v62 = 0;
LABEL_52:
            v38 = v135;
LABEL_53:

            v25 = v62;
LABEL_38:
            v19 = v137;
            if (v25)
            {
              [v27 addObject:v25];
            }

            goto LABEL_44;
          }

          if (nameCopy)
          {
            isValidForSignpost = [(WRDiagnostic *)v49 isValidForSignpost];

            if (!isValidForSignpost)
            {
              v64 = v49;
              v95 = nameCopy;
              v96 = __error();
              v136 = *v96;
              v66 = _wrlog(v96);
              if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
              {
                name5 = [v25 name];
                v68 = [v25 debugDescription];
                v69 = [v64 debugDescription];
                *buf = 138544386;
                v164 = v147;
                v165 = 2114;
                v166 = nameCopy;
                v167 = 2114;
                v168 = name5;
                v169 = 2114;
                v170 = v68;
                v171 = 2114;
                v172 = v69;
                v70 = v66;
                v71 = "%{public}@: %{public}@: diagnostic %{public}@: applied override: %{public}@ -> %{public}@";
                v72 = 52;
LABEL_75:
                _os_log_impl(&dword_2746E5000, v70, OS_LOG_TYPE_INFO, v71, buf, v72);
              }

LABEL_76:

              *__error() = v136;
              v49 = v64;
              v62 = v64;
              v38 = 0;
              enabled = enabledCopy;
              goto LABEL_53;
            }
          }

          else
          {
            isValidForSignpost = [(WRDiagnostic *)v49 isValidForWorkflow];

            if (!isValidForSignpost)
            {
              v64 = v49;
              v65 = __error();
              v136 = *v65;
              v66 = _wrlog(v65);
              if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
              {
                name5 = [v25 name];
                v68 = [v25 debugDescription];
                v69 = [v64 debugDescription];
                *buf = 138544130;
                v164 = v147;
                v165 = 2114;
                v166 = name5;
                v167 = 2114;
                v168 = v68;
                v169 = 2114;
                v170 = v69;
                v70 = v66;
                v71 = "%{public}@: diagnostic %{public}@: applied override: %{public}@ -> %{public}@";
                v72 = 42;
                goto LABEL_75;
              }

              goto LABEL_76;
            }
          }

          v73 = isValidForSignpost;
          domain = [isValidForSignpost domain];
          v135 = v73;
          if (![domain isEqualToString:@"WorkflowResponsivenessError"])
          {

            goto LABEL_70;
          }

          v75 = v49;
          code = [v73 code];

          v77 = code == 3;
          v49 = v75;
          if (!v77)
          {
LABEL_70:
            v86 = __error();
            v87 = *v86;
            v88 = _wrlog(v86);
            v89 = os_log_type_enabled(v88, OS_LOG_TYPE_FAULT);
            if (nameCopy)
            {
              if (v89)
              {
                [v25 name];
                v90 = v134 = v49;
                v91 = [v135 description];
                *buf = 138544386;
                v164 = v147;
                v165 = 2114;
                v166 = nameCopy;
                v167 = 2114;
                v168 = v90;
                v169 = 2114;
                v170 = v91;
                v171 = 2114;
                v172 = v37;
                v92 = v88;
                v93 = "%{public}@: %{public}@: diagnostic %{public}@: invalid override dict: %{public}@\n%{public}@";
                v94 = 52;
                goto LABEL_84;
              }
            }

            else if (v89)
            {
              [v25 name];
              v90 = v134 = v49;
              v91 = [v135 description];
              *buf = 138544130;
              v164 = v147;
              v165 = 2114;
              v166 = v90;
              v167 = 2114;
              v168 = v91;
              v169 = 2114;
              v170 = v37;
              v92 = v88;
              v93 = "%{public}@: diagnostic %{public}@: invalid override dict: %{public}@\n%{public}@";
              v94 = 42;
LABEL_84:
              _os_log_fault_impl(&dword_2746E5000, v92, OS_LOG_TYPE_FAULT, v93, buf, v94);

              v49 = v134;
            }

            v62 = 0;
            *__error() = v87;
            goto LABEL_52;
          }

          v78 = __error();
          v79 = *v78;
          v80 = _wrlog(v78);
          v81 = os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT);
          if (nameCopy)
          {
            if (v81)
            {
              name6 = [v25 name];
              *buf = 138543874;
              v164 = v147;
              v165 = 2114;
              v166 = nameCopy;
              v167 = 2114;
              v168 = name6;
              v83 = v80;
              v84 = "%{public}@: %{public}@: diagnostic %{public}@: disabled via override";
              v85 = 32;
              goto LABEL_81;
            }
          }

          else if (v81)
          {
            name6 = [v25 name];
            *buf = 138543618;
            v164 = v147;
            v165 = 2114;
            v166 = name6;
            v83 = v80;
            v84 = "%{public}@: diagnostic %{public}@: disabled via override";
            v85 = 22;
LABEL_81:
            _os_log_impl(&dword_2746E5000, v83, OS_LOG_TYPE_DEFAULT, v84, buf, v85);
          }

          v62 = 0;
          *__error() = v79;
          enabled = enabledCopy;
          v49 = v75;
          goto LABEL_52;
        }

        if (!v38)
        {
          goto LABEL_36;
        }

        v39 = nameCopy;
        v40 = __error();
        v41 = *v40;
        v42 = _wrlog(v40);
        v43 = os_log_type_enabled(v42, OS_LOG_TYPE_FAULT);
        if (nameCopy)
        {
          if (v43)
          {
            name7 = [v25 name];
            v45 = [v38 description];
            *buf = 138544130;
            v164 = v147;
            v165 = 2114;
            v166 = nameCopy;
            v167 = 2114;
            v168 = name7;
            v169 = 2114;
            v170 = v45;
            v46 = v42;
            v47 = "%{public}@: %{public}@: diagnostic %{public}@: invalid override settings: %{public}@";
            v48 = 42;
            goto LABEL_55;
          }
        }

        else if (v43)
        {
          name7 = [v25 name];
          v45 = [v38 description];
          *buf = 138543874;
          v164 = v147;
          v165 = 2114;
          v166 = name7;
          v167 = 2114;
          v168 = v45;
          v46 = v42;
          v47 = "%{public}@: diagnostic %{public}@: invalid override settings: %{public}@";
          v48 = 32;
LABEL_55:
          _os_log_fault_impl(&dword_2746E5000, v46, OS_LOG_TYPE_FAULT, v47, buf, v48);

          enabled = enabledCopy;
        }

        *__error() = v41;
        v25 = 0;
LABEL_43:
        v37 = 0;
        v19 = v137;
LABEL_44:

        v22 = v143 + 1;
        v15 = v145;
        v16 = v146;
        v17 = v144;
        dicts = dictsCopy;
        v20 = 0x279EE3000;
        v21 = v141;
      }

      while (v143 + 1 != v19);
      v97 = [v144 countByEnumeratingWithState:&v158 objects:v174 count:16];
      v19 = v97;
    }

    while (v97);
  }

  if (!enabled)
  {
    goto LABEL_114;
  }

  v98 = 1;
  v99 = 0x277CCA000uLL;
  while (1)
  {
    v100 = [objc_alloc(*(v99 + 3240)) initWithFormat:@"%u", v98];
    if (nameCopy)
    {
      v150 = 0;
      v101 = &v150;
      WROverrideDiagnosticForSignpost(v147, nameCopy, v100, &v150);
    }

    else
    {
      v149 = 0;
      v101 = &v149;
      WROverrideDiagnosticForWorkflow(v147, v100, &v149);
    }
    v102 = ;
    v103 = *v101;
    v104 = v103;
    if (!v102)
    {
      break;
    }

    v148 = v103;
    v105 = [WRDiagnostic diagnosticsWithDict:v102 backupName:v100 error:&v148];
    v115 = v148;

    if (!v105)
    {
      v116 = v99;
      v140 = nameCopy;
      v117 = __error();
      v118 = *v117;
      v119 = _wrlog(v117);
      v120 = os_log_type_enabled(v119, OS_LOG_TYPE_FAULT);
      if (nameCopy)
      {
        if (v120)
        {
          v138 = [v115 description];
          *buf = 138544386;
          v164 = v147;
          v165 = 2114;
          v166 = nameCopy;
          v167 = 2114;
          v168 = v100;
          v169 = 2114;
          v170 = v138;
          v171 = 2114;
          v172 = v102;
          v121 = v119;
          v122 = "%{public}@: %{public}@: diagnostic %{public}@: invalid new dict: %{public}@\n%{public}@";
          v123 = 52;
          goto LABEL_110;
        }
      }

      else if (v120)
      {
        v138 = [v115 description];
        *buf = 138544130;
        v164 = v147;
        v165 = 2114;
        v166 = v100;
        v167 = 2114;
        v168 = v138;
        v169 = 2114;
        v170 = v102;
        v121 = v119;
        v122 = "%{public}@: diagnostic %{public}@: invalid new dict: %{public}@\n%{public}@";
        v123 = 42;
LABEL_110:
        _os_log_fault_impl(&dword_2746E5000, v121, OS_LOG_TYPE_FAULT, v122, buf, v123);
      }

      *__error() = v118;
      v99 = v116;
      goto LABEL_98;
    }

    [v146 addObject:v105];
LABEL_98:

    v98 = (v98 + 1);
    if (v98 == 100)
    {
      goto LABEL_114;
    }
  }

  if (v103)
  {
    v105 = nameCopy;
    v106 = __error();
    v107 = *v106;
    v108 = _wrlog(v106);
    v109 = os_log_type_enabled(v108, OS_LOG_TYPE_FAULT);
    if (nameCopy)
    {
      if (v109)
      {
        [v104 description];
        v111 = v110 = v99;
        *buf = 138544130;
        v164 = v147;
        v165 = 2114;
        v166 = nameCopy;
        v167 = 2114;
        v168 = v100;
        v169 = 2114;
        v170 = v111;
        v112 = v108;
        v113 = "%{public}@: %{public}@: diagnostic %{public}@: invalid new settings: %{public}@";
        v114 = 42;
LABEL_106:
        _os_log_fault_impl(&dword_2746E5000, v112, OS_LOG_TYPE_FAULT, v113, buf, v114);

        v99 = v110;
      }
    }

    else if (v109)
    {
      [v104 description];
      v111 = v110 = v99;
      *buf = 138543874;
      v164 = v147;
      v165 = 2114;
      v166 = v100;
      v167 = 2114;
      v168 = v111;
      v112 = v108;
      v113 = "%{public}@: diagnostic %{public}@: invalid new settings: %{public}@";
      v114 = 32;
      goto LABEL_106;
    }

    *__error() = v107;
    v115 = v104;
    goto LABEL_98;
  }

LABEL_114:
  v16 = v146;
  if ([v146 count])
  {
    [v146 sortUsingComparator:&__block_literal_global_3];
    v131 = [v146 copy];
  }

  else
  {
    v131 = 0;
  }

  v17 = v144;
  v15 = v145;
LABEL_118:

  return v131;
}

uint64_t __115__WRDiagnostic_diagnosticsForWorkflowName_signpostName_diagnosticDicts_diagnosticsEnabled_checkForOverrides_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[WRDiagnostic allocWithZone:?]];
  v5 = [(NSString *)self->_name copy];
  name = v4->_name;
  v4->_name = v5;

  v4->_triggerThresholdDurationSum = self->_triggerThresholdDurationSum;
  v4->_triggerThresholdDurationUnion = self->_triggerThresholdDurationUnion;
  v4->_triggerThresholdDurationSingle = self->_triggerThresholdDurationSingle;
  v4->_triggerThresholdCount = self->_triggerThresholdCount;
  v4->_triggerEventTimeout = self->_triggerEventTimeout;
  v4->_gatherTailspin = self->_gatherTailspin;
  v4->_tailspinIncludeOSLogs = self->_tailspinIncludeOSLogs;
  v4->_reportSpindumpForThisThread = self->_reportSpindumpForThisThread;
  v7 = [(NSString *)self->_reportSpindumpForThreadWithName copy];
  reportSpindumpForThreadWithName = v4->_reportSpindumpForThreadWithName;
  v4->_reportSpindumpForThreadWithName = v7;

  v4->_reportSpindumpForMainThread = self->_reportSpindumpForMainThread;
  v4->_reportSpindumpForThisDispatchQueue = self->_reportSpindumpForThisDispatchQueue;
  v9 = [(NSString *)self->_reportSpindumpForDispatchQueueWithLabel copy];
  reportSpindumpForDispatchQueueWithLabel = v4->_reportSpindumpForDispatchQueueWithLabel;
  v4->_reportSpindumpForDispatchQueueWithLabel = v9;

  v11 = [(NSString *)self->_reportOtherSignpostWithName copy];
  reportOtherSignpostWithName = v4->_reportOtherSignpostWithName;
  v4->_reportOtherSignpostWithName = v11;

  v13 = [(NSString *)self->_reportProcessesWithName copy];
  reportProcessesWithName = v4->_reportProcessesWithName;
  v4->_reportProcessesWithName = v13;

  v4->_reportOmittingNetworkBoundIntervals = self->_reportOmittingNetworkBoundIntervals;
  return v4;
}

- (id)debugDescription
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"name:%@\ntriggerThresholdDurationSum:%f\ntriggerThresholdDurationUnion:%f\ntriggerThresholdDurationSingle:%f\ntriggerThresholdCount:%u\ntriggerEventTimeout:%u\ngatherTailspin:%u\ntailspinIncludeOSLogs:%u\nreportSpindumpForThisThread:%u\nreportSpindumpForThreadWithName:%@\nreportSpindumpForMainThread:%u\nreportSpindumpForThisDispatchQueue:%u\nreportSpindumpForDispatchQueueWithLabel:%@\nreportOtherSignpostWithName:%@\nreportProcessesWithName:%@\nreportOmittingNetworkBoundIntervals:%u\n", self->_name, *&self->_triggerThresholdDurationSum, *&self->_triggerThresholdDurationUnion, *&self->_triggerThresholdDurationSingle, self->_triggerThresholdCount, self->_triggerEventTimeout, self->_gatherTailspin, self->_tailspinIncludeOSLogs, self->_reportSpindumpForThisThread, self->_reportSpindumpForThreadWithName, self->_reportSpindumpForMainThread, self->_reportSpindumpForThisDispatchQueue, self->_reportSpindumpForDispatchQueueWithLabel, self->_reportOtherSignpostWithName, self->_reportProcessesWithName, self->_reportOmittingNetworkBoundIntervals];

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v25 = 1;
    goto LABEL_18;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v25 = 0;
    goto LABEL_18;
  }

  v7 = equalCopy;
  [(WRDiagnostic *)self triggerThresholdDurationSum];
  v9 = v8;
  [(WRDiagnostic *)v7 triggerThresholdDurationSum];
  if (v9 == v10)
  {
    [(WRDiagnostic *)self triggerThresholdDurationUnion];
    v12 = v11;
    [(WRDiagnostic *)v7 triggerThresholdDurationUnion];
    if (v12 == v13)
    {
      [(WRDiagnostic *)self triggerThresholdDurationSingle];
      v15 = v14;
      [(WRDiagnostic *)v7 triggerThresholdDurationSingle];
      if (v15 == v16)
      {
        triggerThresholdCount = [(WRDiagnostic *)self triggerThresholdCount];
        if (triggerThresholdCount == [(WRDiagnostic *)v7 triggerThresholdCount])
        {
          triggerEventTimeout = [(WRDiagnostic *)self triggerEventTimeout];
          if (triggerEventTimeout == [(WRDiagnostic *)v7 triggerEventTimeout])
          {
            gatherTailspin = [(WRDiagnostic *)self gatherTailspin];
            if (gatherTailspin == [(WRDiagnostic *)v7 gatherTailspin])
            {
              tailspinIncludeOSLogs = [(WRDiagnostic *)self tailspinIncludeOSLogs];
              if (tailspinIncludeOSLogs == [(WRDiagnostic *)v7 tailspinIncludeOSLogs])
              {
                reportSpindumpForThisThread = [(WRDiagnostic *)self reportSpindumpForThisThread];
                if (reportSpindumpForThisThread == [(WRDiagnostic *)v7 reportSpindumpForThisThread])
                {
                  reportSpindumpForMainThread = [(WRDiagnostic *)self reportSpindumpForMainThread];
                  if (reportSpindumpForMainThread == [(WRDiagnostic *)v7 reportSpindumpForMainThread])
                  {
                    reportSpindumpForThisDispatchQueue = [(WRDiagnostic *)self reportSpindumpForThisDispatchQueue];
                    if (reportSpindumpForThisDispatchQueue == [(WRDiagnostic *)v7 reportSpindumpForThisDispatchQueue])
                    {
                      reportOmittingNetworkBoundIntervals = [(WRDiagnostic *)self reportOmittingNetworkBoundIntervals];
                      if (reportOmittingNetworkBoundIntervals == [(WRDiagnostic *)v7 reportOmittingNetworkBoundIntervals])
                      {
                        name = [(WRDiagnostic *)self name];
                        name2 = [(WRDiagnostic *)v7 name];
                        if (![name isEqualToString:name2])
                        {
                          v25 = 0;
LABEL_68:

                          goto LABEL_15;
                        }

                        reportSpindumpForThreadWithName = [(WRDiagnostic *)self reportSpindumpForThreadWithName];
                        if (reportSpindumpForThreadWithName || ([(WRDiagnostic *)v7 reportSpindumpForThreadWithName], (v61 = objc_claimAutoreleasedReturnValue()) != 0))
                        {
                          reportSpindumpForThreadWithName2 = [(WRDiagnostic *)self reportSpindumpForThreadWithName];
                          if (!reportSpindumpForThreadWithName2)
                          {
                            goto LABEL_64;
                          }

                          v3 = reportSpindumpForThreadWithName2;
                          reportSpindumpForThreadWithName3 = [(WRDiagnostic *)v7 reportSpindumpForThreadWithName];
                          if (!reportSpindumpForThreadWithName3)
                          {
LABEL_63:

                            goto LABEL_64;
                          }

                          v4 = reportSpindumpForThreadWithName3;
                          reportSpindumpForThreadWithName4 = [(WRDiagnostic *)self reportSpindumpForThreadWithName];
                          reportSpindumpForThreadWithName5 = [(WRDiagnostic *)v7 reportSpindumpForThreadWithName];
                          v60 = reportSpindumpForThreadWithName4;
                          if (([reportSpindumpForThreadWithName4 isEqualToString:?] & 1) == 0)
                          {
LABEL_62:

                            goto LABEL_63;
                          }

                          v58 = 1;
                        }

                        else
                        {
                          v61 = 0;
                          v58 = 0;
                        }

                        reportSpindumpForDispatchQueueWithLabel = [(WRDiagnostic *)self reportSpindumpForDispatchQueueWithLabel];
                        if (reportSpindumpForDispatchQueueWithLabel || ([(WRDiagnostic *)v7 reportSpindumpForDispatchQueueWithLabel], (v56 = objc_claimAutoreleasedReturnValue()) != 0))
                        {
                          reportSpindumpForDispatchQueueWithLabel2 = [(WRDiagnostic *)self reportSpindumpForDispatchQueueWithLabel];
                          if (!reportSpindumpForDispatchQueueWithLabel2)
                          {
                            v25 = 0;
LABEL_83:
                            if (!reportSpindumpForDispatchQueueWithLabel)
                            {
                            }

                            if (v58)
                            {
                            }

                            goto LABEL_65;
                          }

                          reportSpindumpForDispatchQueueWithLabel3 = [(WRDiagnostic *)v7 reportSpindumpForDispatchQueueWithLabel];
                          if (reportSpindumpForDispatchQueueWithLabel3)
                          {
                            reportSpindumpForDispatchQueueWithLabel4 = [(WRDiagnostic *)self reportSpindumpForDispatchQueueWithLabel];
                            reportSpindumpForDispatchQueueWithLabel5 = [(WRDiagnostic *)v7 reportSpindumpForDispatchQueueWithLabel];
                            v53 = reportSpindumpForDispatchQueueWithLabel4;
                            if ([reportSpindumpForDispatchQueueWithLabel4 isEqualToString:?])
                            {
                              v51 = 1;
                              goto LABEL_39;
                            }
                          }

                          if (!reportSpindumpForDispatchQueueWithLabel)
                          {

                            goto LABEL_61;
                          }

LABEL_60:

LABEL_61:
                          if (v58)
                          {
                            goto LABEL_62;
                          }

LABEL_64:
                          v25 = 0;
LABEL_65:
                          if (!reportSpindumpForThreadWithName)
                          {
                          }

                          goto LABEL_68;
                        }

                        v56 = 0;
                        v51 = 0;
LABEL_39:
                        reportOtherSignpostWithName = [(WRDiagnostic *)self reportOtherSignpostWithName];
                        if (!reportOtherSignpostWithName)
                        {
                          reportOtherSignpostWithName2 = [(WRDiagnostic *)v7 reportOtherSignpostWithName];
                          if (!reportOtherSignpostWithName2)
                          {
                            reportOtherSignpostWithName2 = 0;
                            v44 = 0;
                            goto LABEL_50;
                          }
                        }

                        reportOtherSignpostWithName3 = [(WRDiagnostic *)self reportOtherSignpostWithName];
                        if (!reportOtherSignpostWithName3)
                        {
                          v25 = 0;
                          goto LABEL_77;
                        }

                        reportOtherSignpostWithName4 = [(WRDiagnostic *)v7 reportOtherSignpostWithName];
                        if (reportOtherSignpostWithName4)
                        {
                          reportOtherSignpostWithName5 = [(WRDiagnostic *)self reportOtherSignpostWithName];
                          reportOtherSignpostWithName6 = [(WRDiagnostic *)v7 reportOtherSignpostWithName];
                          v46 = reportOtherSignpostWithName5;
                          if ([reportOtherSignpostWithName5 isEqualToString:?])
                          {
                            v44 = 1;
LABEL_50:
                            reportProcessesWithName = [(WRDiagnostic *)self reportProcessesWithName];
                            if (!reportProcessesWithName)
                            {
                              reportProcessesWithName2 = [(WRDiagnostic *)v7 reportProcessesWithName];
                              if (!reportProcessesWithName2)
                              {
                                reportProcessesWithName2 = 0;
                                v25 = 1;
                                goto LABEL_74;
                              }
                            }

                            reportProcessesWithName3 = [(WRDiagnostic *)self reportProcessesWithName];
                            if (reportProcessesWithName3)
                            {
                              reportProcessesWithName4 = [(WRDiagnostic *)v7 reportProcessesWithName];
                              if (reportProcessesWithName4)
                              {
                                reportProcessesWithName5 = [(WRDiagnostic *)self reportProcessesWithName];
                                reportProcessesWithName6 = [(WRDiagnostic *)v7 reportProcessesWithName];
                                v25 = [reportProcessesWithName5 isEqualToString:reportProcessesWithName6];

                                goto LABEL_71;
                              }
                            }

                            v25 = 0;
LABEL_71:
                            if (reportProcessesWithName)
                            {
                              v38 = reportProcessesWithName;
LABEL_75:

                              if ((v44 & 1) == 0)
                              {
                                if (!reportOtherSignpostWithName)
                                {
                                  v39 = reportOtherSignpostWithName2;
LABEL_81:

                                  if (v51)
                                  {
                                  }

                                  goto LABEL_83;
                                }

LABEL_80:
                                v39 = reportOtherSignpostWithName;
                                goto LABEL_81;
                              }

LABEL_77:
                              if (!reportOtherSignpostWithName)
                              {
                              }

                              goto LABEL_80;
                            }

LABEL_74:
                            v38 = reportProcessesWithName2;
                            goto LABEL_75;
                          }
                        }

                        if (reportOtherSignpostWithName)
                        {
                          v36 = reportOtherSignpostWithName;
                        }

                        else
                        {
                          v36 = reportOtherSignpostWithName2;
                        }

                        if (v51)
                        {
                        }

                        if (!reportSpindumpForDispatchQueueWithLabel)
                        {
                        }

                        goto LABEL_60;
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

  v25 = 0;
LABEL_15:

LABEL_18:
  return v25;
}

- (unint64_t)hash
{
  name = [(WRDiagnostic *)self name];
  v3 = [name hash];

  return v3;
}

- (id)initWithDict:(void *)dict backupName:(uint64_t *)name error:
{
  v7 = a2;
  dictCopy = dict;
  if (!self)
  {
    v25 = 0;
    goto LABEL_13;
  }

  v30 = 0;
  if (name)
  {
    *name = 0;
  }

  else
  {
    name = &v30;
  }

  v29.receiver = self;
  v29.super_class = WRDiagnostic;
  v15 = objc_msgSendSuper2(&v29, sel_init);
  if (!v15)
  {
    WRMakeError(2, @"Unable to init", v9, v10, v11, v12, v13, v14, v28);
LABEL_11:
    *name = v25 = 0;
    goto LABEL_12;
  }

  v16 = WRCheckForBadDiagnosticDict(v7);
  *name = v16;
  if (!v16)
  {
    v17 = [v7 objectForKeyedSubscript:@"name"];
    v18 = v15[3];
    v15[3] = v17;

    if (!v15[3])
    {
      if (*name)
      {
        goto LABEL_9;
      }

      if (!dictCopy)
      {
        WRMakeError(7, @"Mutiple diagnostic dictionaries in array, but no name: %@", v19, v20, v21, v22, v23, v24, v7);
        goto LABEL_11;
      }

      objc_storeStrong(v15 + 3, dict);
    }

    if ([(WRDiagnostic *)v15 applyDict:v7 error:name])
    {
      validate = [(WRDiagnostic *)v15 validate];
      *name = validate;
      if (!validate)
      {
        v25 = v15;
        goto LABEL_12;
      }
    }
  }

LABEL_9:
  v25 = 0;
LABEL_12:

LABEL_13:
  return v25;
}

- (uint64_t)applyDict:(uint64_t *)dict error:
{
  v5 = a2;
  if (self)
  {
    v104 = 0;
    if (dict)
    {
      *dict = 0;
    }

    else
    {
      dict = &v104;
    }

    v6 = @"trigger_threshold_duration_sum";
    v7 = OUTLINED_FUNCTION_0_0();
    v10 = DictGetNumber(v7, v8, v9);
    v11 = v10;
    if (v10)
    {
      [v10 doubleValue];
      if (v18 < 0.0)
      {
        goto LABEL_15;
      }

      *(self + 40) = v18;
    }

    else if (*dict)
    {
      goto LABEL_86;
    }

    v6 = @"trigger_threshold_duration_union";
    v19 = OUTLINED_FUNCTION_0_0();
    v22 = DictGetNumber(v19, v20, v21);
    v11 = v22;
    if (!v22)
    {
      if (*dict)
      {
        goto LABEL_86;
      }

LABEL_13:

      v6 = @"trigger_threshold_duration_single";
      v24 = OUTLINED_FUNCTION_0_0();
      v27 = DictGetNumber(v24, v25, v26);
      v11 = v27;
      if (v27)
      {
        [v27 doubleValue];
        if (v28 < 0.0)
        {
          goto LABEL_15;
        }

        *(self + 32) = v28;
      }

      else if (*dict)
      {
        goto LABEL_86;
      }

      v29 = OUTLINED_FUNCTION_49();
      v32 = DictGetNumber(v29, v30, v31);
      v33 = v32;
      if (v32)
      {
        *(self + 16) = [v32 unsignedIntValue];
      }

      else if (*dict)
      {
        goto LABEL_27;
      }

      v34 = @"trigger_event_timeout";
      v35 = OUTLINED_FUNCTION_0_0();
      v38 = DictGetNumber(v35, v36, v37);
      v11 = v38;
      if (v38)
      {
        if ([v38 intValue] && objc_msgSend(v11, "intValue") != 1)
        {
          goto LABEL_59;
        }

        *(self + 8) = [v11 BOOLValue];
      }

      else if (*dict)
      {
        goto LABEL_86;
      }

      v34 = @"gather_tailspin";
      v39 = OUTLINED_FUNCTION_0_0();
      v42 = DictGetNumber(v39, v40, v41);
      v11 = v42;
      if (v42)
      {
        if ([v42 intValue] && objc_msgSend(v11, "intValue") != 1)
        {
          goto LABEL_59;
        }

        *(self + 9) = [v11 BOOLValue];
      }

      else if (*dict)
      {
        goto LABEL_86;
      }

      v34 = @"option_tailspin_includes_oslogs";
      v43 = OUTLINED_FUNCTION_0_0();
      v46 = DictGetNumber(v43, v44, v45);
      v11 = v46;
      if (v46)
      {
        if ([v46 intValue] && objc_msgSend(v11, "intValue") != 1)
        {
          goto LABEL_59;
        }

        *(self + 10) = [v11 BOOLValue];
      }

      else if (*dict)
      {
        goto LABEL_86;
      }

      v34 = @"report_spindump_this_thread";
      v47 = OUTLINED_FUNCTION_0_0();
      v50 = DictGetNumber(v47, v48, v49);
      v11 = v50;
      if (v50)
      {
        if ([v50 intValue] && objc_msgSend(v11, "intValue") != 1)
        {
          goto LABEL_59;
        }

        *(self + 11) = [v11 BOOLValue];
      }

      else if (*dict)
      {
        goto LABEL_86;
      }

      v51 = OUTLINED_FUNCTION_49();
      v54 = DictGetString(v51, v52, v53);
      v55 = v54;
      if (v54)
      {
        v56 = [v54 length];
        if (v56)
        {
          v56 = v55;
        }

        v57 = *(self + 56);
        *(self + 56) = v56;
      }

      else if (*dict)
      {
        goto LABEL_27;
      }

      v34 = @"report_spindump_main_thread";
      v58 = OUTLINED_FUNCTION_0_0();
      v61 = DictGetNumber(v58, v59, v60);
      v11 = v61;
      if (v61)
      {
        if ([v61 intValue] && objc_msgSend(v11, "intValue") != 1)
        {
          goto LABEL_59;
        }

        *(self + 12) = [v11 BOOLValue];
      }

      else if (*dict)
      {
        goto LABEL_86;
      }

      v34 = @"report_spindump_this_dispatchqueue";
      v62 = OUTLINED_FUNCTION_0_0();
      v65 = DictGetNumber(v62, v63, v64);
      v11 = v65;
      if (!v65)
      {
        if (*dict)
        {
          goto LABEL_86;
        }

        goto LABEL_61;
      }

      if (![v65 intValue] || objc_msgSend(v11, "intValue") == 1)
      {
        *(self + 13) = [v11 BOOLValue];
LABEL_61:

        v72 = OUTLINED_FUNCTION_49();
        v75 = DictGetString(v72, v73, v74);
        v76 = v75;
        if (v75)
        {
          v77 = [v75 length];
          if (v77)
          {
            v77 = v76;
          }

          v78 = *(self + 64);
          *(self + 64) = v77;
        }

        else if (*dict)
        {
          goto LABEL_27;
        }

        v79 = OUTLINED_FUNCTION_49();
        v82 = DictGetString(v79, v80, v81);
        v83 = v82;
        if (v82)
        {
          v84 = [v82 length];
          if (v84)
          {
            v84 = v83;
          }

          v85 = *(self + 72);
          *(self + 72) = v84;

          goto LABEL_69;
        }

        if (!*dict)
        {
LABEL_69:

          v86 = OUTLINED_FUNCTION_49();
          v89 = DictGetString(v86, v87, v88);
          v90 = v89;
          if (v89)
          {
            v91 = [v89 length];
            if (v91)
            {
              v91 = v90;
            }

            v92 = *(self + 80);
            *(self + 80) = v91;

LABEL_73:
            v93 = OUTLINED_FUNCTION_0_0();
            v96 = DictGetNumber(v93, v94, v95);
            v11 = v96;
            if (v96)
            {
              if (![v96 intValue] || objc_msgSend(v11, "intValue") == 1)
              {
                *(self + 14) = [v11 BOOLValue];
LABEL_84:
                self = 1;
                goto LABEL_87;
              }

              [v11 intValue];
              *dict = WRMakeError(8, @"Bad BOOL for %@: %d", v97, v98, v99, v100, v101, v102, @"option_report_omit_network_bound_intervals");
            }

            else if (!*dict)
            {
              goto LABEL_84;
            }

LABEL_86:
            self = 0;
            goto LABEL_87;
          }

          if (!*dict)
          {
            goto LABEL_73;
          }
        }

LABEL_27:
        self = 0;
        goto LABEL_88;
      }

LABEL_59:
      [v11 intValue];
      WRMakeError(8, @"Bad BOOL for %@: %d", v66, v67, v68, v69, v70, v71, v34);
      goto LABEL_16;
    }

    [v22 doubleValue];
    if (v23 >= 0.0)
    {
      *(self + 48) = v23;
      goto LABEL_13;
    }

LABEL_15:
    WRMakeError(8, @"Bad num for %@: %f", v12, v13, v14, v15, v16, v17, v6);
LABEL_16:
    *dict = self = 0;
LABEL_87:
  }

LABEL_88:

  return self;
}

- (id)validate
{
  selfCopy = self;
  if (self)
  {
    reportSpindumpForThisThread = [self reportSpindumpForThisThread];
    reportSpindumpForThreadWithName = [selfCopy reportSpindumpForThreadWithName];

    if (reportSpindumpForThisThread)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    if (reportSpindumpForThreadWithName)
    {
      v5 = v4;
    }

    else
    {
      v5 = reportSpindumpForThisThread;
    }

    reportSpindumpForMainThread = [selfCopy reportSpindumpForMainThread];
    v7 = v5 + reportSpindumpForMainThread + [selfCopy reportSpindumpForThisDispatchQueue];
    reportSpindumpForDispatchQueueWithLabel = [selfCopy reportSpindumpForDispatchQueueWithLabel];

    if (reportSpindumpForDispatchQueueWithLabel)
    {
      v9 = v7 + 1;
    }

    else
    {
      v9 = v7;
    }

    if (v9 >= 2)
    {
      name = [selfCopy name];
      WRMakeError(8, @"reporting multiple spindumps from a single diagnostic %@", v11, v12, v13, v14, v15, v16, name);
      selfCopy = LABEL_13:;
LABEL_45:

      goto LABEL_46;
    }

    if (v9 == 1 && ([selfCopy gatherTailspin] & 1) == 0)
    {
      name = [selfCopy name];
      WRMakeError(8, @"reporting spindump, but not gathering tailspin in diagnostic %@", v25, v26, v27, v28, v29, v30, name);
      goto LABEL_13;
    }

    reportProcessesWithName = [selfCopy reportProcessesWithName];

    if (reportProcessesWithName)
    {
      if ([selfCopy reportSpindumpForThisThread])
      {
        name = [selfCopy reportProcessesWithName];
        name2 = [selfCopy name];
        WRMakeError(8, @"Cannot report spindump for this thread, but in a specified process %@ in diagnostic %@", v19, v20, v21, v22, v23, v24, name);
        selfCopy = LABEL_22:;
LABEL_44:

        goto LABEL_45;
      }

      if ([selfCopy reportSpindumpForThisDispatchQueue])
      {
        name = [selfCopy reportProcessesWithName];
        name2 = [selfCopy name];
        WRMakeError(8, @"Cannot report spindump for this dispatch queue, but in a specified process %@ in diagnostic %@", v31, v32, v33, v34, v35, v36, name);
        goto LABEL_22;
      }
    }

    reportSpindumpForThreadWithName2 = [selfCopy reportSpindumpForThreadWithName];
    name = reportSpindumpForThreadWithName2;
    if (reportSpindumpForThreadWithName2 && [reportSpindumpForThreadWithName2 hasPrefix:@"^"] && objc_msgSend(name, "hasSuffix:", @"$"))
    {
      v65 = 0;
      v38 = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:name options:0 error:&v65];
      name2 = v65;
      if (!v38)
      {
        name3 = [selfCopy name];
        WRMakeError(8, @"Invalid thread name regex %@: %@ in diagnostic %@", v50, v51, v52, v53, v54, v55, name);
        goto LABEL_42;
      }
    }

    reportSpindumpForDispatchQueueWithLabel2 = [selfCopy reportSpindumpForDispatchQueueWithLabel];
    name2 = reportSpindumpForDispatchQueueWithLabel2;
    if (reportSpindumpForDispatchQueueWithLabel2 && [reportSpindumpForDispatchQueueWithLabel2 hasPrefix:@"^"] && objc_msgSend(name2, "hasSuffix:", @"$"))
    {
      v64 = 0;
      v40 = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:name2 options:0 error:&v64];
      name3 = v64;
      if (!v40)
      {
        name4 = [selfCopy name];
        selfCopy = WRMakeError(8, @"Invalid dispatch queue label regex %@: %@ in diagnostic %@", v56, v57, v58, v59, v60, v61, name2);

        goto LABEL_43;
      }
    }

    if ([selfCopy gatherTailspin])
    {
      if ([selfCopy hasTriggerThresholdDurationSum] & 1) != 0 || (objc_msgSend(selfCopy, "hasTriggerThresholdDurationUnion") & 1) != 0 || (objc_msgSend(selfCopy, "hasTriggerThresholdDurationSingle") & 1) != 0 || (objc_msgSend(selfCopy, "hasTriggerThresholdCount") & 1) != 0 || (objc_msgSend(selfCopy, "triggerEventTimeout"))
      {
        selfCopy = 0;
        goto LABEL_44;
      }

      name3 = [selfCopy name];
      v62 = name3;
      v48 = @"no threshold for diagnostic %@";
    }

    else
    {
      name3 = [selfCopy name];
      v62 = name3;
      v48 = @"no diagnostics enabled in diagnostic %@";
    }

    WRMakeError(3, v48, v42, v43, v44, v45, v46, v47, v62);
    selfCopy = LABEL_42:;
LABEL_43:

    goto LABEL_44;
  }

LABEL_46:

  return selfCopy;
}

+ (id)diagnosticsWithDict:(void *)dict backupName:(uint64_t *)name error:
{
  dictCopy = dict;
  v7 = a2;
  objc_opt_self();
  v8 = [[WRDiagnostic alloc] initWithDict:v7 backupName:dictCopy error:name];

  return v8;
}

- (id)isValidForWorkflow
{
  if (self)
  {
    selfCopy = self;
    if ([self hasTriggerThresholdCount])
    {
      v9 = @"diagnostic count threshold is invalid for the workflow";
    }

    else if ([selfCopy hasTriggerThresholdDurationSum])
    {
      v9 = @"diagnostic interval sum threshold is invalid for the workflow";
    }

    else
    {
      if (![selfCopy hasTriggerThresholdDurationUnion])
      {
        self = [(WRDiagnostic *)selfCopy validate];
        goto LABEL_9;
      }

      v9 = @"diagnostic interval union threshold is invalid for the workflow";
    }

    self = WRMakeError(8, v9, v3, v4, v5, v6, v7, v8, v11);
LABEL_9:
    v1 = vars8;
  }

  return self;
}

- (id)isValidForSignpost
{
  if (self)
  {
    selfCopy = self;
    if ([self triggerEventTimeout])
    {
      v9 = @"diagnostic event timeout threshold is invalid for signposts";
    }

    else
    {
      if (![selfCopy reportOmittingNetworkBoundIntervals])
      {
        self = [(WRDiagnostic *)selfCopy validate];
        goto LABEL_7;
      }

      v9 = @"omitting network bound intervals is invalid for signposts";
    }

    self = WRMakeError(8, v9, v3, v4, v5, v6, v7, v8, v11);
LABEL_7:
    v1 = vars8;
  }

  return self;
}

@end