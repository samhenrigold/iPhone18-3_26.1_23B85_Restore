void sub_2334FE628(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  v7 = (a1 + 40);
  v8 = *(a1 + 32);
  v9 = objc_msgSend_hashedRouteUIDs(*(a1 + 40), a2, a3, a4, a5);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2334FE740;
  v15[3] = &unk_2789DBBC0;
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  *&v12 = *(a1 + 64);
  *(&v12 + 1) = *v7;
  *&v13 = v10;
  *(&v13 + 1) = v11;
  v16 = v13;
  v17 = v12;
  v18 = *(a1 + 72);
  objc_msgSend_resolveWithHashedRouteIdentifiers_audioRoutingInfo_completion_(v8, v14, v9, v5, v15);
}

void sub_2334FE740(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2334FE810;
  v10[3] = &unk_2789DBB98;
  v11 = v4;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v12 = v6;
  v13 = v7;
  v14 = v8;
  objc_msgSend_sendCommand_toDestination_withOptions_completion_(v11, v9, 26, a2, v5, v10);
}

void sub_2334FE810(uint64_t a1, void *a2)
{
  v78 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = objc_alloc_init(MEMORY[0x277D47218]);
  v10 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v6, v7, v8, v9);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v11, @"Set Shuffle Mode", @"pluginname", v12);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v13, MEMORY[0x277CBEC38], @"success", v14);
  v15 = MEMORY[0x277CCABB0];
  objc_msgSend_timeIntervalSinceNow(*(a1 + 40), v16, v17, v18, v19);
  v25 = objc_msgSend_numberWithDouble_(v15, v21, v22, v23, v24, fabs(v20));
  objc_msgSend_setObject_forKeyedSubscript_(v10, v26, v25, @"duration", v27);

  if (v3)
  {
    v32 = objc_alloc(MEMORY[0x277D47208]);
    v37 = objc_msgSend_localizedDescription(v3, v33, v34, v35, v36);
    v41 = objc_msgSend_initWithReason_(v32, v38, v37, v39, v40);

    objc_msgSend_setObject_forKeyedSubscript_(v10, v42, MEMORY[0x277CBEC28], @"success", v43);
    v48 = objc_msgSend_localizedDescription(v3, v44, v45, v46, v47);
    objc_msgSend_setObject_forKeyedSubscript_(v10, v49, v48, @"errorstring", v50);

    v5 = v41;
  }

  if (!objc_msgSend_length(*(*(a1 + 48) + 56), v28, v29, v30, v31))
  {
    v55 = objc_msgSend_aceId(*(a1 + 48), v51, v52, v53, v54);
    v56 = sub_233505670(@"Set Shuffle Mode", v55);
    v57 = *(a1 + 48);
    v58 = *(v57 + 56);
    *(v57 + 56) = v56;
  }

  v59 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
  {
    v64 = *(*(a1 + 48) + 56);
    v65 = objc_msgSend_dictionary(v5, v60, v61, v62, v63);
    *buf = 138543618;
    v75 = v64;
    v76 = 2114;
    v77 = v65;
    _os_log_impl(&dword_2334D9000, v59, OS_LOG_TYPE_DEFAULT, "Set Shuffle Mode (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
  }

  v66 = *(a1 + 56);
  v71 = objc_msgSend_dictionary(v5, v67, v68, v69, v70);
  (*(v66 + 16))(v66, v71);

  v73 = v10;
  v72 = v10;
  AnalyticsSendEventLazy();
}

void sub_2334FEE54(uint64_t a1, void *a2)
{
  v75 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v9 = objc_msgSend_allKeys(v3, v5, v6, v7, v8);
  if (!v3)
  {
    v10 = objc_alloc(MEMORY[0x277D47208]);
    v14 = objc_msgSend_initWithReason_(v10, v11, @"UID decoding error", v12, v13);
    if (!objc_msgSend_length(*(*(a1 + 40) + 64), v15, v16, v17, v18))
    {
      v23 = objc_msgSend_aceId(*(a1 + 40), v19, v20, v21, v22);
      v24 = sub_233505670(@"Set Volume Level", v23);
      v25 = *(*(a1 + 40) + 64);
      *(*(a1 + 40) + 64) = v24;
    }

    v26 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v31 = *(*(a1 + 40) + 64);
      v32 = objc_msgSend_dictionary(v14, v27, v28, v29, v30);
      *buf = 138543618;
      *&buf[4] = v31;
      *&buf[12] = 2114;
      *&buf[14] = v32;
      _os_log_impl(&dword_2334D9000, v26, OS_LOG_TYPE_ERROR, "Set Volume Level (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
    }

    v33 = *(a1 + 48);
    v38 = objc_msgSend_dictionary(v14, v34, v35, v36, v37);
    (*(v33 + 16))(v33, v38);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v72 = sub_2334FF2CC;
  v73 = sub_2334FF2DC;
  v74 = objc_alloc_init(MEMORY[0x277D47208]);
  v39 = dispatch_group_create();
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = sub_2334FF2E4;
  v67[3] = &unk_2789DB990;
  v40 = v39;
  v41 = *(a1 + 40);
  v68 = v40;
  v69 = v41;
  v70 = buf;
  v42 = MEMORY[0x2383A14D0](v67);
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = sub_2334FF3D0;
  v62[3] = &unk_2789DB9E0;
  v62[4] = *(a1 + 40);
  v43 = v9;
  v63 = v43;
  v44 = v42;
  v65 = v44;
  v45 = v40;
  v64 = v45;
  v66 = buf;
  v46 = MEMORY[0x2383A14D0](v62);
  v47 = objc_alloc_init(MEMORY[0x277D27838]);
  v48 = *(a1 + 40);
  v49 = *(v48 + 56);
  *(v48 + 56) = v47;

  dispatch_group_enter(v45);
  v50 = *(*(a1 + 40) + 56);
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = sub_2334FFB7C;
  v59[3] = &unk_2789DBA30;
  v51 = v45;
  v60 = v51;
  v52 = v46;
  v61 = v52;
  objc_msgSend_discoverRemoteControlEndpointsMatchingUIDs_completion_(v50, v53, v43, v59, v54);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2334FFD30;
  block[3] = &unk_2789DBA58;
  v55 = *(a1 + 48);
  block[4] = *(a1 + 40);
  v58 = buf;
  v57 = v55;
  dispatch_group_notify(v51, MEMORY[0x277D85CD0], block);

  _Block_object_dispose(buf, 8);
}

uint64_t sub_2334FF2CC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2334FF2E4(uint64_t a1, const void *a2, void *a3, float a4)
{
  v6 = a3;
  CFRetain(a2);
  dispatch_group_enter(*(a1 + 32));
  v8 = *(a1 + 32);
  v7 = v8.i64[0];
  MRAVEndpointSetOutputDeviceUIDVolume();
}

void sub_2334FF3D0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v183 = *MEMORY[0x277D85DE8];
  if (!objc_msgSend_length(*(*(a1 + 32) + 64), a2, a3, a4, a5))
  {
    v10 = objc_msgSend_aceId(*(a1 + 32), v6, v7, v8, v9);
    v11 = sub_233505670(@"Set Volume Level", v10);
    v12 = *(a1 + 32);
    v13 = *(v12 + 64);
    *(v12 + 64) = v11;
  }

  v14 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(a1 + 32);
    v20 = v19[8];
    v21 = objc_msgSend_volumeValue(v19, v15, v16, v17, v18);
    objc_msgSend_floatValue(v21, v22, v23, v24, v25);
    *buf = 138543874;
    v178 = v20;
    v179 = 2048;
    v180 = v26;
    v181 = 2114;
    v182 = a2;
    _os_log_impl(&dword_2334D9000, v14, OS_LOG_TYPE_DEFAULT, "Set Volume Level (setvolume) <%{public}@>: volume: %f endpoint %{public}@", buf, 0x20u);
  }

  v171 = 0u;
  v172 = 0u;
  v173 = 0u;
  v174 = 0u;
  obj = MRAVEndpointCopyOutputDevices();
  v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v27, &v171, v176, 16);
  if (v28)
  {
    v33 = v28;
    v34 = *v172;
    v160 = *MEMORY[0x277D48738];
    v157 = *MEMORY[0x277D48730];
    v156 = *MEMORY[0x277D48728];
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v172 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v36 = *(*(&v171 + 1) + 8 * i);
        v37 = objc_msgSend_uid(v36, v29, v30, v31, v32);
        v167 = 0u;
        v168 = 0u;
        v169 = 0u;
        v170 = 0u;
        v38 = *(a1 + 40);
        v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v39, &v167, v175, 16);
        if (!v40)
        {
          goto LABEL_25;
        }

        v44 = v40;
        v45 = *v168;
        while (2)
        {
          for (j = 0; j != v44; ++j)
          {
            if (*v168 != v45)
            {
              objc_enumerationMutation(v38);
            }

            if (objc_msgSend_containsUID_(v36, v41, *(*(&v167 + 1) + 8 * j), v42, v43))
            {

              v51 = objc_msgSend_actionType(*(a1 + 32), v47, v48, v49, v50);
              isEqualToString = objc_msgSend_isEqualToString_(v51, v52, v160, v53, v54);

              v60 = *(a1 + 32);
              if (isEqualToString)
              {
                if (!objc_msgSend_length(v60[8], v56, v57, v58, v59))
                {
                  v65 = objc_msgSend_aceId(*(a1 + 32), v61, v62, v63, v64);
                  v66 = sub_233505670(@"Set Volume Level", v65);
                  v67 = *(a1 + 32);
                  v68 = *(v67 + 64);
                  *(v67 + 64) = v66;
                }

                v69 = _MPLogCategoryAssistant();
                if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
                {
                  v74 = *(a1 + 32);
                  v75 = v74[8];
                  v76 = objc_msgSend_volumeValue(v74, v70, v71, v72, v73);
                  objc_msgSend_floatValue(v76, v77, v78, v79, v80);
                  *buf = 138543874;
                  v178 = v75;
                  v179 = 2048;
                  v180 = v81;
                  v181 = 2114;
                  v182 = v37;
                  _os_log_impl(&dword_2334D9000, v69, OS_LOG_TYPE_DEFAULT, "Set Volume Level (setvolume) <%{public}@>: set volume: %f outputDeviceUID %{public}@", buf, 0x20u);
                }

                v82 = *(a1 + 56);
                v38 = objc_msgSend_volumeValue(*(a1 + 32), v83, v84, v85, v86);
                objc_msgSend_floatValue(v38, v87, v88, v89, v90);
                (*(v82 + 16))(v82, a2, v37);
                goto LABEL_25;
              }

              v91 = objc_msgSend_actionType(v60, v56, v57, v58, v59);
              v95 = objc_msgSend_isEqualToString_(v91, v92, v157, v93, v94);

              v100 = *(a1 + 32);
              if (v95)
              {
                if (!objc_msgSend_length(v100[8], v96, v97, v98, v99))
                {
                  v105 = objc_msgSend_aceId(*(a1 + 32), v101, v102, v103, v104);
                  v106 = sub_233505670(@"Set Volume Level", v105);
                  v107 = *(a1 + 32);
                  v108 = *(v107 + 64);
                  *(v107 + 64) = v106;
                }

                v109 = _MPLogCategoryAssistant();
                if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
                {
                  v114 = *(a1 + 32);
                  v115 = v114[8];
                  v116 = objc_msgSend_volumeValue(v114, v110, v111, v112, v113);
                  objc_msgSend_floatValue(v116, v117, v118, v119, v120);
                  *buf = 138543874;
                  v178 = v115;
                  v179 = 2048;
                  v180 = v121;
                  v181 = 2114;
                  v182 = v37;
                  _os_log_impl(&dword_2334D9000, v109, OS_LOG_TYPE_DEFAULT, "Set Volume Level (setvolume) <%{public}@>: increase volume: %f outputDeviceUID %{public}@", buf, 0x20u);
                }

                dispatch_group_enter(*(a1 + 48));
                CFRetain(a2);
                v166 = *(a1 + 56);
                v164 = v37;
                v165 = *(a1 + 48);
                MRAVEndpointGetOutputDeviceUIDVolume();

                v122 = v166;
              }

              else
              {
                v123 = objc_msgSend_actionType(v100, v96, v97, v98, v99);
                v127 = objc_msgSend_isEqualToString_(v123, v124, v156, v125, v126);

                if (!v127)
                {
                  v153 = objc_alloc_init(MEMORY[0x277D47208]);
                  v154 = *(*(a1 + 64) + 8);
                  v155 = *(v154 + 40);
                  *(v154 + 40) = v153;

                  goto LABEL_40;
                }

                if (!objc_msgSend_length(*(*(a1 + 32) + 64), v128, v129, v130, v131))
                {
                  v136 = objc_msgSend_aceId(*(a1 + 32), v132, v133, v134, v135);
                  v137 = sub_233505670(@"Set Volume Level", v136);
                  v138 = *(a1 + 32);
                  v139 = *(v138 + 64);
                  *(v138 + 64) = v137;
                }

                v140 = _MPLogCategoryAssistant();
                if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
                {
                  v145 = *(a1 + 32);
                  v146 = v145[8];
                  v147 = objc_msgSend_volumeValue(v145, v141, v142, v143, v144);
                  objc_msgSend_floatValue(v147, v148, v149, v150, v151);
                  *buf = 138543874;
                  v178 = v146;
                  v179 = 2048;
                  v180 = v152;
                  v181 = 2114;
                  v182 = v37;
                  _os_log_impl(&dword_2334D9000, v140, OS_LOG_TYPE_DEFAULT, "Set Volume Level (setvolume) <%{public}@>: decrease volume: %f outputDeviceUID %{public}@", buf, 0x20u);
                }

                dispatch_group_enter(*(a1 + 48));
                CFRetain(a2);
                v163 = *(a1 + 56);
                v161 = v37;
                v162 = *(a1 + 48);
                MRAVEndpointGetOutputDeviceUIDVolume();

                v122 = v163;
              }

              goto LABEL_40;
            }
          }

          v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v41, &v167, v175, 16);
          if (v44)
          {
            continue;
          }

          break;
        }

LABEL_25:

LABEL_40:
      }

      v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v29, &v171, v176, 16);
    }

    while (v33);
  }
}

void sub_2334FFB7C(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = a2;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v3, &v20, v24, 16);
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      v7 = 0;
      do
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v20 + 1) + 8 * v7);
        v9 = objc_alloc_init(MEMORY[0x277D27830]);
        dispatch_group_enter(*(a1 + 32));
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = sub_2334FFE8C;
        v15[3] = &unk_2789DBA08;
        v16 = v9;
        v18 = *(a1 + 40);
        v19 = v8;
        v17 = *(a1 + 32);
        v10 = v9;
        objc_msgSend_connectToEndpoint_completion_(v10, v11, v8, v15, v12);

        ++v7;
      }

      while (v5 != v7);
      v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v20, v24, 16);
    }

    while (v5);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_2334FFD30(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = *MEMORY[0x277D85DE8];
  if (!objc_msgSend_length(*(*(a1 + 32) + 64), a2, a3, a4, a5))
  {
    v10 = objc_msgSend_aceId(*(a1 + 32), v6, v7, v8, v9);
    v11 = sub_233505670(@"Set Volume Level", v10);
    v12 = *(a1 + 32);
    v13 = *(v12 + 64);
    *(v12 + 64) = v11;
  }

  v14 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(*(a1 + 32) + 64);
    v20 = objc_msgSend_dictionary(*(*(*(a1 + 48) + 8) + 40), v15, v16, v17, v18);
    v27 = 138543618;
    v28 = v19;
    v29 = 2114;
    v30 = v20;
    _os_log_impl(&dword_2334D9000, v14, OS_LOG_TYPE_DEFAULT, "Set Volume Level (completion) <%{public}@>: notifying assistant %{public}@", &v27, 0x16u);
  }

  v21 = *(a1 + 40);
  v26 = objc_msgSend_dictionary(*(*(*(a1 + 48) + 8) + 40), v22, v23, v24, v25);
  (*(v21 + 16))(v21, v26);
}

void sub_2334FFE8C(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(v2 + 16);
  v5 = *(a1 + 32);
  v4(v2, v3);
  dispatch_group_leave(*(a1 + 40));
}

void sub_2334FFF04(uint64_t a1, void *a2, float a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = _MPLogCategoryAssistant();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_msgSend_msv_description(v5, v8, v9, v10, v11);
      v25 = 134218242;
      v26 = a3;
      v27 = 2114;
      v28 = v12;
      _os_log_impl(&dword_2334D9000, v7, OS_LOG_TYPE_ERROR, "volume: %f error=%{public}@", &v25, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 134217984;
      v26 = a3;
      _os_log_impl(&dword_2334D9000, v7, OS_LOG_TYPE_DEFAULT, "volume: %f", &v25, 0xCu);
    }

    v17 = objc_msgSend_volumeValue(*(a1 + 32), v13, v14, v15, v16);
    objc_msgSend_floatValue(v17, v18, v19, v20, v21);
    v23 = v22 + a3;

    v24.n128_u32[0] = 1.0;
    if (v23 <= 1.0)
    {
      v24.n128_f32[0] = v23;
    }

    (*(*(a1 + 56) + 16))(v24);
  }

  CFRelease(*(a1 + 64));
  dispatch_group_leave(*(a1 + 48));
}

void sub_233500088(uint64_t a1, void *a2, float a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = _MPLogCategoryAssistant();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_msgSend_msv_description(v5, v8, v9, v10, v11);
      v24 = 134218242;
      v25 = a3;
      v26 = 2114;
      v27 = v12;
      _os_log_impl(&dword_2334D9000, v7, OS_LOG_TYPE_ERROR, "volume: %f error=%{public}@", &v24, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 134217984;
      v25 = a3;
      _os_log_impl(&dword_2334D9000, v7, OS_LOG_TYPE_DEFAULT, "volume: %f", &v24, 0xCu);
    }

    v17 = objc_msgSend_volumeValue(*(a1 + 32), v13, v14, v15, v16);
    objc_msgSend_floatValue(v17, v18, v19, v20, v21);
    v23 = a3 - v22;

    (*(*(a1 + 56) + 16))(fmaxf(v23, 0.0));
  }

  CFRelease(*(a1 + 64));
  dispatch_group_leave(*(a1 + 48));
}

void sub_233500208(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_length(*(*(a1 + 32) + 64), a2, a3, a4, a5);
  if (a2)
  {
    if (!v7)
    {
      v12 = objc_msgSend_aceId(*(a1 + 32), v8, v9, v10, v11);
      v13 = sub_233505670(@"Set Volume Level", v12);
      v14 = *(a1 + 32);
      v15 = *(v14 + 64);
      *(v14 + 64) = v13;
    }

    v16 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = *(*(a1 + 32) + 64);
      v27 = 138543618;
      v28 = v17;
      v29 = 2114;
      v30 = *&a2;
      _os_log_impl(&dword_2334D9000, v16, OS_LOG_TYPE_ERROR, "Set Volume Level (setvolume) <%{public}@>: volume set failed with error: %{public}@", &v27, 0x16u);
    }
  }

  else
  {
    if (!v7)
    {
      v18 = objc_msgSend_aceId(*(a1 + 32), v8, v9, v10, v11);
      v19 = sub_233505670(@"Set Volume Level", v18);
      v20 = *(a1 + 32);
      v21 = *(v20 + 64);
      *(v20 + 64) = v19;
    }

    v22 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(*(a1 + 32) + 64);
      v24 = *(a1 + 64);
      v27 = 138543618;
      v28 = v23;
      v29 = 2048;
      v30 = v24;
      _os_log_impl(&dword_2334D9000, v22, OS_LOG_TYPE_DEFAULT, "Set Volume Level (setvolume) <%{public}@>: new volume: %f", &v27, 0x16u);
    }

    v25 = objc_alloc_init(MEMORY[0x277D47218]);
    v26 = *(*(a1 + 48) + 8);
    v16 = *(v26 + 40);
    *(v26 + 40) = v25;
  }

  CFRelease(*(a1 + 56));
  dispatch_group_leave(*(a1 + 40));
}

void sub_23350078C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  v7 = (a1 + 40);
  v8 = *(a1 + 32);
  v9 = objc_msgSend_hashedRouteUIDs(*(a1 + 40), a2, a3, a4, a5);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2335008A8;
  v15[3] = &unk_2789DBAA8;
  v10 = *(a1 + 48);
  v19 = *(a1 + 80);
  v11 = *(a1 + 56);
  *&v12 = *(a1 + 64);
  *(&v12 + 1) = *v7;
  *&v13 = v10;
  *(&v13 + 1) = v11;
  v16 = v13;
  v17 = v12;
  v18 = *(a1 + 72);
  objc_msgSend_resolveWithHashedRouteIdentifiers_audioRoutingInfo_completion_(v8, v14, v9, v5, v15);
}

void sub_2335008A8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 72);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_233500984;
  v11[3] = &unk_2789DBB98;
  v12 = v5;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v13 = v7;
  v14 = v8;
  v15 = v9;
  objc_msgSend_sendCommand_toDestination_withOptions_completion_(v12, v10, v4, a2, v6, v11);
}

void sub_233500984(uint64_t a1, void *a2)
{
  v78 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = objc_alloc_init(MEMORY[0x277D47218]);
  v10 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v6, v7, v8, v9);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v11, @"Skip Time Interval", @"pluginname", v12);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v13, MEMORY[0x277CBEC38], @"success", v14);
  v15 = MEMORY[0x277CCABB0];
  objc_msgSend_timeIntervalSinceNow(*(a1 + 40), v16, v17, v18, v19);
  v25 = objc_msgSend_numberWithDouble_(v15, v21, v22, v23, v24, fabs(v20));
  objc_msgSend_setObject_forKeyedSubscript_(v10, v26, v25, @"duration", v27);

  if (v3)
  {
    v32 = objc_alloc(MEMORY[0x277D47208]);
    v37 = objc_msgSend_localizedDescription(v3, v33, v34, v35, v36);
    v41 = objc_msgSend_initWithReason_(v32, v38, v37, v39, v40);

    objc_msgSend_setObject_forKeyedSubscript_(v10, v42, MEMORY[0x277CBEC28], @"success", v43);
    v48 = objc_msgSend_localizedDescription(v3, v44, v45, v46, v47);
    objc_msgSend_setObject_forKeyedSubscript_(v10, v49, v48, @"errorstring", v50);

    v5 = v41;
  }

  if (!objc_msgSend_length(*(*(a1 + 48) + 56), v28, v29, v30, v31))
  {
    v55 = objc_msgSend_aceId(*(a1 + 48), v51, v52, v53, v54);
    v56 = sub_233505670(@"Skip Time Interval", v55);
    v57 = *(a1 + 48);
    v58 = *(v57 + 56);
    *(v57 + 56) = v56;
  }

  v59 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
  {
    v64 = *(*(a1 + 48) + 56);
    v65 = objc_msgSend_dictionary(v5, v60, v61, v62, v63);
    *buf = 138543618;
    v75 = v64;
    v76 = 2114;
    v77 = v65;
    _os_log_impl(&dword_2334D9000, v59, OS_LOG_TYPE_DEFAULT, "Skip Time Interval (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
  }

  v66 = *(a1 + 56);
  v71 = objc_msgSend_dictionary(v5, v67, v68, v69, v70);
  (*(v66 + 16))(v66, v71);

  v73 = v10;
  v72 = v10;
  AnalyticsSendEventLazy();
}

void sub_233500F50(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  v7 = (a1 + 40);
  v8 = *(a1 + 32);
  v9 = objc_msgSend_hashedRouteUIDs(*(a1 + 40), a2, a3, a4, a5);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_233501068;
  v15[3] = &unk_2789DBBC0;
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  *&v12 = *(a1 + 64);
  *(&v12 + 1) = *v7;
  *&v13 = v10;
  *(&v13 + 1) = v11;
  v16 = v13;
  v17 = v12;
  v18 = *(a1 + 72);
  objc_msgSend_resolveWithHashedRouteIdentifiers_audioRoutingInfo_completion_(v8, v14, v9, v5, v15);
}

void sub_233501068(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_233501138;
  v10[3] = &unk_2789DBB98;
  v11 = v4;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v12 = v6;
  v13 = v7;
  v14 = v8;
  objc_msgSend_sendCommand_toDestination_withOptions_completion_(v11, v9, 4, a2, v5, v10);
}

void sub_233501138(uint64_t a1, void *a2)
{
  v78 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = objc_alloc_init(MEMORY[0x277D47218]);
  v10 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v6, v7, v8, v9);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v11, @"Skip To Next Item", @"pluginname", v12);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v13, MEMORY[0x277CBEC38], @"success", v14);
  v15 = MEMORY[0x277CCABB0];
  objc_msgSend_timeIntervalSinceNow(*(a1 + 40), v16, v17, v18, v19);
  v25 = objc_msgSend_numberWithDouble_(v15, v21, v22, v23, v24, fabs(v20));
  objc_msgSend_setObject_forKeyedSubscript_(v10, v26, v25, @"duration", v27);

  if (v3)
  {
    v32 = objc_alloc(MEMORY[0x277D47208]);
    v37 = objc_msgSend_localizedDescription(v3, v33, v34, v35, v36);
    v41 = objc_msgSend_initWithReason_(v32, v38, v37, v39, v40);

    objc_msgSend_setObject_forKeyedSubscript_(v10, v42, MEMORY[0x277CBEC28], @"success", v43);
    v48 = objc_msgSend_localizedDescription(v3, v44, v45, v46, v47);
    objc_msgSend_setObject_forKeyedSubscript_(v10, v49, v48, @"errorstring", v50);

    v5 = v41;
  }

  if (!objc_msgSend_length(*(*(a1 + 48) + 56), v28, v29, v30, v31))
  {
    v55 = objc_msgSend_aceId(*(a1 + 48), v51, v52, v53, v54);
    v56 = sub_233505670(@"Skip To Next Item", v55);
    v57 = *(a1 + 48);
    v58 = *(v57 + 56);
    *(v57 + 56) = v56;
  }

  v59 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
  {
    v64 = *(*(a1 + 48) + 56);
    v65 = objc_msgSend_dictionary(v5, v60, v61, v62, v63);
    *buf = 138543618;
    v75 = v64;
    v76 = 2114;
    v77 = v65;
    _os_log_impl(&dword_2334D9000, v59, OS_LOG_TYPE_DEFAULT, "Skip To Next Item (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
  }

  v66 = *(a1 + 56);
  v71 = objc_msgSend_dictionary(v5, v67, v68, v69, v70);
  (*(v66 + 16))(v66, v71);

  v73 = v10;
  v72 = v10;
  AnalyticsSendEventLazy();
}

void sub_233501758(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  v7 = *(a1 + 32);
  v8 = objc_msgSend_hashedRouteUIDs(*(a1 + 40), a2, a3, a4, a5);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23350184C;
  v15[3] = &unk_2789DBB48;
  v14 = *(a1 + 40);
  v9 = *(&v14 + 1);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  *&v12 = v10;
  *(&v12 + 1) = v11;
  v16 = v14;
  v17 = v12;
  objc_msgSend_resolveWithHashedRouteIdentifiers_audioRoutingInfo_completion_(v7, v13, v8, v5, v15);
}

void sub_23350184C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(v4 + 56);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_233501918;
  v8[3] = &unk_2789DBB20;
  v8[4] = v4;
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  objc_msgSend_sendCommand_toDestination_withOptions_completion_(v6, v7, 5, a2, v5, v8);
}

void sub_233501918(uint64_t a1, void *a2)
{
  v78 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(*(a1 + 32) + 56);
  v5 = objc_alloc_init(MEMORY[0x277D47218]);
  v10 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v6, v7, v8, v9);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v11, @"Seek To Previous Item", @"pluginname", v12);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v13, MEMORY[0x277CBEC38], @"success", v14);
  v15 = MEMORY[0x277CCABB0];
  objc_msgSend_timeIntervalSinceNow(*(a1 + 40), v16, v17, v18, v19);
  v25 = objc_msgSend_numberWithDouble_(v15, v21, v22, v23, v24, fabs(v20));
  objc_msgSend_setObject_forKeyedSubscript_(v10, v26, v25, @"duration", v27);

  if (v3)
  {
    v32 = objc_alloc(MEMORY[0x277D47208]);
    v37 = objc_msgSend_localizedDescription(v3, v33, v34, v35, v36);
    v41 = objc_msgSend_initWithReason_(v32, v38, v37, v39, v40);

    objc_msgSend_setObject_forKeyedSubscript_(v10, v42, MEMORY[0x277CBEC28], @"success", v43);
    v48 = objc_msgSend_localizedDescription(v3, v44, v45, v46, v47);
    objc_msgSend_setObject_forKeyedSubscript_(v10, v49, v48, @"errorstring", v50);

    v5 = v41;
  }

  if (!objc_msgSend_length(*(*(a1 + 32) + 64), v28, v29, v30, v31))
  {
    v55 = objc_msgSend_aceId(*(a1 + 32), v51, v52, v53, v54);
    v56 = sub_233505670(@"Seek To Previous Item", v55);
    v57 = *(a1 + 32);
    v58 = *(v57 + 64);
    *(v57 + 64) = v56;
  }

  v59 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
  {
    v64 = *(*(a1 + 32) + 64);
    v65 = objc_msgSend_dictionary(v5, v60, v61, v62, v63);
    *buf = 138543618;
    v75 = v64;
    v76 = 2114;
    v77 = v65;
    _os_log_impl(&dword_2334D9000, v59, OS_LOG_TYPE_DEFAULT, "Seek To Previous Item (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
  }

  v66 = *(a1 + 48);
  v71 = objc_msgSend_dictionary(v5, v67, v68, v69, v70);
  (*(v66 + 16))(v66, v71);

  v73 = v10;
  v72 = v10;
  AnalyticsSendEventLazy();
}

void sub_233501F48(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_233502050;
  v12[3] = &unk_2789DBBC0;
  v6 = (a1 + 72);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *&v9 = *(a1 + 64);
  *(&v9 + 1) = *v6;
  *&v10 = v7;
  *(&v10 + 1) = v8;
  v13 = v10;
  v14 = v9;
  v15 = *(a1 + 80);
  objc_msgSend_resolveWithHashedRouteIdentifiers_audioRoutingInfo_completion_(v4, v11, v5, a2, v12);
}

void sub_233502050(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_233502120;
  v10[3] = &unk_2789DBB98;
  v11 = v4;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v12 = v6;
  v13 = v7;
  v14 = v8;
  objc_msgSend_sendCommand_toDestination_withOptions_completion_(v11, v9, 0, a2, v5, v10);
}

void sub_233502120(uint64_t a1, void *a2)
{
  v78 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = objc_alloc_init(MEMORY[0x277D47218]);
  v10 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v6, v7, v8, v9);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v11, @"Start Playback", @"pluginname", v12);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v13, MEMORY[0x277CBEC38], @"success", v14);
  v15 = MEMORY[0x277CCABB0];
  objc_msgSend_timeIntervalSinceNow(*(a1 + 40), v16, v17, v18, v19);
  v25 = objc_msgSend_numberWithDouble_(v15, v21, v22, v23, v24, fabs(v20));
  objc_msgSend_setObject_forKeyedSubscript_(v10, v26, v25, @"duration", v27);

  if (v3)
  {
    v32 = objc_alloc(MEMORY[0x277D47208]);
    v37 = objc_msgSend_localizedDescription(v3, v33, v34, v35, v36);
    v41 = objc_msgSend_initWithReason_(v32, v38, v37, v39, v40);

    objc_msgSend_setObject_forKeyedSubscript_(v10, v42, MEMORY[0x277CBEC28], @"success", v43);
    v48 = objc_msgSend_localizedDescription(v3, v44, v45, v46, v47);
    objc_msgSend_setObject_forKeyedSubscript_(v10, v49, v48, @"errorstring", v50);

    v5 = v41;
  }

  if (!objc_msgSend_length(*(*(a1 + 48) + 56), v28, v29, v30, v31))
  {
    v55 = objc_msgSend_aceId(*(a1 + 48), v51, v52, v53, v54);
    v56 = sub_233505670(@"Start Playback", v55);
    v57 = *(a1 + 48);
    v58 = *(v57 + 56);
    *(v57 + 56) = v56;
  }

  v59 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
  {
    v64 = *(*(a1 + 48) + 56);
    v65 = objc_msgSend_dictionary(v5, v60, v61, v62, v63);
    *buf = 138543618;
    v75 = v64;
    v76 = 2114;
    v77 = v65;
    _os_log_impl(&dword_2334D9000, v59, OS_LOG_TYPE_DEFAULT, "Start Playback (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
  }

  v66 = *(a1 + 56);
  v71 = objc_msgSend_dictionary(v5, v67, v68, v69, v70);
  (*(v66 + 16))(v66, v71);

  v73 = v10;
  v72 = v10;
  AnalyticsSendEventLazy();
}

id sub_233502524(void *a1)
{
  v1 = *MEMORY[0x277CD56B0];
  v2 = a1;
  v6 = objc_msgSend_valueForProperty_(v2, v3, v1, v4, v5);
  v11 = objc_msgSend_longLongValue(v6, v7, v8, v9, v10);

  v12 = objc_alloc_init(MEMORY[0x277CCACE0]);
  v17 = objc_msgSend_identifierURLScheme(v2, v13, v14, v15, v16);

  objc_msgSend_setScheme_(v12, v18, v17, v19, v20);
  objc_msgSend_setHost_(v12, v21, @"device", v22, v23);
  v27 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v24, @"/%lld", v25, v26, v11);
  objc_msgSend_setPath_(v12, v28, v27, v29, v30);

  v35 = objc_msgSend_URL(v12, v31, v32, v33, v34);

  return v35;
}

uint64_t sub_23350261C(void *a1)
{
  v1 = qword_27DE0E780;
  v6 = a1;
  if (v1 != -1)
  {
    dispatch_once(&qword_27DE0E780, &unk_2848D4420);
  }

  v7 = qword_27DE0E778;
  v8 = objc_msgSend_host(v6, v2, v3, v4, v5);

  v12 = objc_msgSend_objectForKey_(v7, v9, v8, v10, v11);
  v17 = objc_msgSend_integerValue(v12, v13, v14, v15, v16);

  return v17;
}

void sub_2335026B4(uint64_t a1, const char *a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v4[0] = @"device";
  v4[1] = @"multiverse";
  v5[0] = &unk_2848D8CA0;
  v5[1] = &unk_2848D8CB8;
  v4[2] = @"store";
  v4[3] = @"ulid";
  v5[2] = &unk_2848D8CD0;
  v5[3] = &unk_2848D8CE8;
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v5, v4, 4);
  v3 = qword_27DE0E778;
  qword_27DE0E778 = v2;
}

void sub_233504040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, ...)
{
  va_start(va, a35);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_23350408C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2335040A4(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_233504158;
  v5[3] = &unk_2789DBC78;
  v5[4] = *(a1 + 32);
  v4 = *(a1 + 40);
  v3 = v4;
  v6 = v4;
  sub_233507BFC(@"Subscription Status Sync Handler", @"*", 1, a2, v5);
}

void sub_233504158(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  *(v7 + 16) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 40));
}

uint64_t sub_2335046B4(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v41 = 0;
    v42 = &v41;
    v43 = 0x2020000000;
    v44 = 0;
    v5 = v1;
    v10 = objc_msgSend_itemsQuery(v5, v6, v7, v8, v9);
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = sub_233504870;
    v40[3] = &unk_2789DBD18;
    v40[4] = &v41;
    objc_msgSend__enumerateItemsUsingBlock_(v10, v11, v40, v12, v13);

    v14 = *(v42 + 24);
    _Block_object_dispose(&v41, 8);
  }

  else
  {
    v15 = *MEMORY[0x277CD57C8];
    v16 = *MEMORY[0x277CD5798];
    v17 = objc_msgSend_setWithObjects_(MEMORY[0x277CBEB98], v2, *MEMORY[0x277CD57C8], v3, v4, *MEMORY[0x277CD5798], 0);
    v21 = objc_msgSend_valuesForProperties_(v1, v18, v17, v19, v20);

    v25 = objc_msgSend_objectForKey_(v21, v22, v15, v23, v24);
    v30 = objc_msgSend_integerValue(v25, v26, v27, v28, v29);

    if ((v30 & 0x300) != 0)
    {
      v34 = objc_msgSend_objectForKey_(v21, v31, v16, v32, v33);
      v14 = objc_msgSend_BOOLValue(v34, v35, v36, v37, v38);
    }

    else
    {
      v14 = (v30 & 0x805) != 0;
    }
  }

  return v14 & 1;
}

void sub_233504858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_233504870(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if (v5)
  {
    if (*(*(*(a1 + 32) + 8) + 24) & 1) != 0 || (v6 = v5, *(*(*(a1 + 32) + 8) + 24) = sub_2335046B4(v5), v5 = v6, (*(*(*(a1 + 32) + 8) + 24)))
    {
      *a3 = 1;
    }
  }
}

void sub_233504D4C(uint64_t a1, const char *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v4 + 8);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_233504E8C;
  v14[3] = &unk_2789DBCC8;
  v14[4] = v4;
  objc_msgSend_enumerateEntityChangesAfterSyncAnchor_maximumRevisionType_inUsersLibrary_usingBlock_(v5, a2, v3, 0, 1, v14);
  v6 = *(a1 + 32);
  if (*(v6 + 42) == 1)
  {
    v7 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      v8 = "Sync Handler (enumeration): aborted";
      v9 = v7;
      v10 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&dword_2334D9000, v9, v10, v8, v13, 2u);
    }
  }

  else
  {
    dispatch_semaphore_wait(*(v6 + 16), 0xFFFFFFFFFFFFFFFFLL);
    v11 = *(a1 + 32);
    v12 = *(v11 + 32);
    *(v11 + 32) = 0;

    dispatch_semaphore_signal(*(*(a1 + 32) + 24));
    v7 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *v13 = 0;
      v8 = "Sync Handler (enumeration): finished";
      v9 = v7;
      v10 = OS_LOG_TYPE_DEBUG;
      goto LABEL_6;
    }
  }
}

void sub_233504E8C(uint64_t a1, void *a2, _BYTE *a3)
{
  v56 = a2;
  v5 = objc_autoreleasePoolPush();
  dispatch_semaphore_wait(*(*(a1 + 32) + 16), 0xFFFFFFFFFFFFFFFFLL);
  if (*(*(a1 + 32) + 42) == 1)
  {
    *a3 = 1;
    goto LABEL_21;
  }

  v14 = objc_msgSend_entity(v56, v6, v7, v8, v9);
  if (*(*(a1 + 32) + 41) == 1 && objc_msgSend_deletionType(v56, v10, v11, v12, v13))
  {
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = objc_msgSend_valueForProperty_(v14, v16, *MEMORY[0x277CD5918], v17, v18);
    if (objc_msgSend_BOOLValue(v19, v20, v21, v22, v23))
    {
LABEL_10:
      v15 = 16;
LABEL_19:

      goto LABEL_20;
    }

    v27 = objc_msgSend_valueForProperty_(v14, v24, *MEMORY[0x277CD5920], v25, v26);
    if (objc_msgSend_BOOLValue(v27, v28, v29, v30, v31))
    {

      goto LABEL_10;
    }

    v48 = objc_msgSend_valueForProperty_(v14, v32, *MEMORY[0x277CD5910], v33, v34);
    v53 = objc_msgSend_BOOLValue(v48, v49, v50, v51, v52);

    if ((v53 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v42 = objc_msgSend_valueForProperty_(v14, v39, *MEMORY[0x277CD57A0], v40, v41);
        v47 = objc_msgSend_BOOLValue(v42, v43, v44, v45, v46);

        if ((v47 & 1) == 0)
        {
          *(*(a1 + 32) + 40) = 1;
        }
      }

      goto LABEL_18;
    }

    if (objc_msgSend_groupingType(v14, v35, v36, v37, v38))
    {
LABEL_18:
      v54 = *(a1 + 32);
      v55 = v56;
      v19 = *(v54 + 32);
      *(v54 + 32) = v55;
      v15 = 24;
      goto LABEL_19;
    }
  }

LABEL_5:
  v15 = 16;
LABEL_20:
  dispatch_semaphore_signal(*(*(a1 + 32) + v15));

LABEL_21:
  objc_autoreleasePoolPop(v5);
}

uint64_t sub_233505178()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABD8]);
  v1 = qword_2814EE818;
  qword_2814EE818 = v0;

  v5 = qword_2814EE818;

  return objc_msgSend_setMaxConcurrentOperationCount_(v5, v2, 5, v3, v4);
}

id sub_2335051C8(void *a1)
{
  v1 = a1;
  v5 = objc_msgSend_objectForKeyedSubscript_(v1, v2, *MEMORY[0x277D27C30], v3, v4);
  if (objc_msgSend_isEqualToString_(v5, v6, *MEMORY[0x277D27B10], v7, v8))
  {
    v12 = MEMORY[0x277D47588];
LABEL_5:
    v16 = objc_alloc_init(v12);
    goto LABEL_7;
  }

  if (objc_msgSend_isEqualToString_(v5, v9, *MEMORY[0x277D27AF0], v10, v11))
  {
    v12 = MEMORY[0x277D47520];
    goto LABEL_5;
  }

  v16 = objc_alloc_init(MEMORY[0x277D475B8]);
  v20 = objc_msgSend_objectForKeyedSubscript_(v1, v17, *MEMORY[0x277D27C00], v18, v19);
  objc_msgSend_setGenre_(v16, v21, v20, v22, v23);

LABEL_7:
  v24 = objc_msgSend_objectForKeyedSubscript_(v1, v13, *MEMORY[0x277D27B70], v14, v15);
  objc_msgSend_setArtist_(v16, v25, v24, v26, v27);

  v31 = objc_msgSend_objectForKeyedSubscript_(v1, v28, *MEMORY[0x277D27B60], v29, v30);
  objc_msgSend_setAlbum_(v16, v32, v31, v33, v34);

  v38 = objc_msgSend_objectForKeyedSubscript_(v1, v35, *MEMORY[0x277D27C88], v36, v37);
  objc_msgSend_setTitle_(v16, v39, v38, v40, v41);

  v45 = objc_msgSend_objectForKeyedSubscript_(v1, v42, *MEMORY[0x277D27CC0], v43, v44);
  v50 = objc_msgSend_longLongValue(v45, v46, v47, v48, v49);

  if (objc_msgSend_isEqualToString_(v5, v51, *MEMORY[0x277D27AF8], v52, v53))
  {
    v54 = objc_alloc_init(MEMORY[0x277CCACE0]);
    objc_msgSend_setScheme_(v54, v55, @"x-sampradiotrack", v56, v57);
    objc_msgSend_setHost_(v54, v58, @"device", v59, v60);
    v64 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v61, @"/%lld", v62, v63, v50);
    objc_msgSend_setPath_(v54, v65, v64, v66, v67);

    v72 = objc_msgSend_URL(v54, v68, v69, v70, v71);

    objc_msgSend_setIdentifier_(v16, v73, v72, v74, v75);
  }

  else
  {
    v76 = objc_alloc(MEMORY[0x277CD5DE0]);
    v80 = objc_msgSend_initWithPersistentID_(v76, v77, v50, v78, v79);
    if (v80)
    {
      v81 = MEMORY[0x277D27840];
      v72 = v80;
      v82 = objc_alloc_init(v81);
      v87 = objc_msgSend_multiverseIdentifier(v72, v83, v84, v85, v86);
      v92 = objc_msgSend_data(v87, v88, v89, v90, v91);
      v96 = objc_msgSend_encodeURLData_(v82, v93, v92, v94, v95);
      v97 = objc_alloc_init(MEMORY[0x277CCACE0]);
      v102 = objc_msgSend_identifierURLScheme(v72, v98, v99, v100, v101);

      objc_msgSend_setScheme_(v97, v103, v102, v104, v105);
      objc_msgSend_setHost_(v97, v106, @"multiverse", v107, v108);
      v112 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v109, @"/%@", v110, v111, v96);
      objc_msgSend_setPath_(v97, v113, v112, v114, v115);

      v120 = objc_msgSend_URL(v97, v116, v117, v118, v119);

      objc_msgSend_setIdentifier_(v16, v121, v120, v122, v123);
    }

    else
    {
      v72 = 0;
    }
  }

  return v16;
}

id sub_23350552C(void *a1)
{
  v1 = MEMORY[0x277D471B8];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  objc_msgSend_setDate_(v3, v4, v2, v5, v6);

  v11 = objc_msgSend_defaultTimeZone(MEMORY[0x277CBEBB0], v7, v8, v9, v10);
  v16 = objc_msgSend_name(v11, v12, v13, v14, v15);
  objc_msgSend_setTimeZoneId_(v3, v17, v16, v18, v19);

  return v3;
}

BOOL sub_2335055C0(void *a1)
{
  v1 = a1;
  v6 = objc_msgSend_defaultIdentityStore(MEMORY[0x277D7FCA8], v2, v3, v4, v5);
  v25 = 0;
  v9 = objc_msgSend_getPropertiesForUserIdentity_error_(v6, v7, v1, &v25, v8);

  v14 = objc_msgSend_DSID(v9, v10, v11, v12, v13);
  v23 = objc_msgSend_unsignedLongLongValue(v14, v15, v16, v17, v18) && objc_msgSend_isActiveLocker(v9, v19, v20, v21, v22) && MPCloudControllerGetSagaOnDiskDatabaseRevisionForUserIdentity() == 0;

  return v23;
}

id sub_233505670(void *a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = MEMORY[0x277CCACA8];
  v9 = objc_msgSend_substringToIndex_(v4, v6, 3, v7, v8);
  v14 = objc_msgSend_length(v4, v10, v11, v12, v13);
  v18 = objc_msgSend_substringFromIndex_(v4, v15, v14 - 3, v16, v17);
  v22 = objc_msgSend_stringWithFormat_(v5, v19, @"%@%@", v20, v21, v9, v18);

  v23 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v26 = v3;
    v27 = 2114;
    v28 = v22;
    v29 = 2114;
    v30 = v4;
    _os_log_impl(&dword_2334D9000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ (gethash) <%{public}@>: ace id: %{public}@", buf, 0x20u);
  }

  return v22;
}

void sub_2335057BC(void *a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v23 = v5;
    v24 = 2114;
    v25 = v6;
    _os_log_impl(&dword_2334D9000, v8, OS_LOG_TYPE_INFO, "%{public}@ (hashedroute) <%{public}@>: encoded route UID table", buf, 0x16u);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v7;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v18, v28, 16);
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        v16 = _MPLogCategoryAssistant();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 138543874;
          v23 = v5;
          v24 = 2114;
          v25 = v6;
          v26 = 2114;
          v27 = v15;
          _os_log_impl(&dword_2334D9000, v16, OS_LOG_TYPE_INFO, "%{public}@ (hashedroute) <%{public}@>: id: %{public}@", buf, 0x20u);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v17, &v18, v28, 16);
    }

    while (v12);
  }
}

uint64_t sub_2335059A8(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v1 = a1;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1, v2, &v11, v15, 16);
  if (v7)
  {
    v8 = *v12;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v1);
        }

        if (!objc_msgSend_unsignedIntValue(*(*(&v11 + 1) + 8 * i), v3, v4, v5, v6, v11))
        {
          v7 = 1;
          goto LABEL_11;
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1, v3, &v11, v15, 16);
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

id sub_233505AA8(void *a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (objc_msgSend_containsObject_(v1, v2, &unk_2848D8D00, v3, v4))
  {
LABEL_2:
    v5 = objc_alloc_init(MEMORY[0x277D47218]);
    goto LABEL_23;
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v6 = v1;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v37, v41, 16);
  if (!v8)
  {
LABEL_20:

    v23 = objc_alloc(MEMORY[0x277D47208]);
    v27 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v24, @"player statuses: %@", v25, v26, v6);
    v31 = objc_msgSend_initWithReason_(v23, v28, v27, v29, v30);

    goto LABEL_24;
  }

  v13 = v8;
  v14 = *v38;
  v15 = MEMORY[0x277D48640];
  v16 = MEMORY[0x277D485A0];
  v17 = MEMORY[0x277D485E8];
  v18 = MEMORY[0x277D486B8];
LABEL_5:
  v19 = 0;
  while (1)
  {
    if (*v38 != v14)
    {
      objc_enumerationMutation(v6);
    }

    v20 = objc_msgSend_unsignedIntValue(*(*(&v37 + 1) + 8 * v19), v9, v10, v11, v12);
    if (v20 > 99)
    {
      break;
    }

    if (v20 == 1)
    {
      v21 = v15;
      goto LABEL_17;
    }

    if (v20 == 20)
    {
      v21 = v16;
      goto LABEL_17;
    }

LABEL_18:
    if (v13 == ++v19)
    {
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v37, v41, 16);
      if (v13)
      {
        goto LABEL_5;
      }

      goto LABEL_20;
    }
  }

  if (v20 != 101)
  {
    if (v20 == 100)
    {
      v21 = v18;
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v21 = v17;
LABEL_17:
  v22 = *v21;
  if (*v21 == -1)
  {
    goto LABEL_18;
  }

  if (!v22)
  {
    goto LABEL_2;
  }

  v32 = objc_alloc(MEMORY[0x277D47208]);
  v5 = objc_msgSend_initWithErrorCode_(v32, v33, v22, v34, v35);
LABEL_23:
  v31 = v5;
LABEL_24:

  return v31;
}

void sub_233505CB8(void *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v7 = a3;
  v47 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = a2;
  v11 = a4;
  v12 = a5;
  v17 = objc_msgSend_date(MEMORY[0x277CBEAA8], v13, v14, v15, v16);
  v22 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v18, v19, v20, v21);
  objc_msgSend_setObject_forKeyedSubscript_(v22, v23, v9, @"pluginname", v24);
  v25 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = MRMediaRemoteCopyCommandDescription();
    *buf = 138543874;
    v42 = v9;
    v43 = 2114;
    v44 = v10;
    v45 = 2114;
    v46 = v26;
    _os_log_impl(&dword_2334D9000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ (feedback) <%{public}@>: feedback command %{public}@", buf, 0x20u);
  }

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = sub_233505EDC;
  v33[3] = &unk_2789DBE08;
  v40 = v7;
  v34 = v9;
  v35 = v10;
  v36 = v11;
  v37 = v22;
  v38 = v17;
  v39 = v12;
  v27 = v17;
  v28 = v22;
  v29 = v12;
  v30 = v11;
  v31 = v10;
  v32 = v9;
  sub_233505EDC(v33, 0);
}

void sub_233505EDC(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v4 = *(a1 + 80);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_233506080;
  v13[3] = &unk_2789DBDE0;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v18 = cf;
  v7 = *(a1 + 48);
  v19 = *(a1 + 80);
  v17 = *(a1 + 72);
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *&v10 = v5;
  *(&v10 + 1) = v6;
  v14 = v10;
  v15 = v9;
  v16 = *(a1 + 64);
  v11 = v13;
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = sub_233506244;
  v23 = &unk_2789DBE30;
  v25 = v4;
  v24 = v11;
  v12 = v11;
  MRMediaRemoteGetSupportedCommandsForOrigin();
}

void sub_233506080(id *a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = a1[4];
    v5 = a1[5];
    *buf = 138543618;
    v17 = v4;
    v18 = 2114;
    v19 = v5;
    _os_log_impl(&dword_2334D9000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ (feedback) <%{public}@>: getting now playing", buf, 0x16u);
  }

  v6 = a1[6];
  v7 = a1[4];
  v8 = a1[5];
  v15 = a1[9];
  v9 = a1[7];
  *&v10 = v8;
  *(&v10 + 1) = v9;
  *&v11 = v6;
  *(&v11 + 1) = v7;
  v12 = v11;
  v13 = v10;
  v14 = a1[8];
  MRMediaRemoteGetNowPlayingInfoWithOptionalArtwork();
}

uint64_t sub_233506244(uint64_t a1, CFArrayRef theArray)
{
  Count = CFArrayGetCount(theArray);
  if (Count >= 1)
  {
    v5 = Count;
    v6 = 0;
    v7 = 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v6);
      v9 = MEMORY[0x2383A0F00](ValueAtIndex) == *(a1 + 40);
      v6 = v7++;
    }

    while (!v9 && v5 > v6);
  }

  v11 = *(*(a1 + 32) + 16);

  return v11();
}

void sub_2335062DC(uint64_t a1, void *a2)
{
  v96 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v89 = 0;
  v7 = objc_msgSend_objectForKey_(v3, v4, *MEMORY[0x277D27C28], v5, v6);
  v12 = objc_msgSend_BOOLValue(v7, v8, v9, v10, v11);

  if (v12)
  {
    v87[1] = MEMORY[0x277D85DD0];
    v87[2] = 3221225472;
    v87[3] = sub_2335067AC;
    v87[4] = &unk_2789DBD40;
    v88 = v3;
    v15 = MPMediaRemoteCommandOptionsForFeedbackOrPurchaseCommandEvent();
    v20 = objc_msgSend_mutableCopy(v15, v16, v17, v18, v19);

    v21 = MEMORY[0x277D485C0];
  }

  else
  {
    v20 = 0;
    v21 = MEMORY[0x277D485C0];
  }

  v22 = *v21;
  if (*(a1 + 92) == 1)
  {
    v23 = *(a1 + 32);
    if (v23)
    {
      v87[0] = 0;
      v24 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x277CCAAB0], v13, v23, 1, v87);
      v27 = v87[0];
      if (!v27)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v20, v25, v24, *MEMORY[0x277D27E18], v26);
      }
    }

    objc_msgSend_setObject_forKeyedSubscript_(v20, v13, @"com.apple.MediaAssistant.siri", *MEMORY[0x277D27DC0], v14);
    v28 = objc_alloc_init(MEMORY[0x277D27850]);
    objc_msgSend_setOrigin_(v28, v29, *(a1 + 80), v30, v31);
    v32 = objc_alloc_init(MEMORY[0x277D27828]);
    v33 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = *(a1 + 40);
      v35 = *(a1 + 48);
      *buf = 138543874;
      v91 = v34;
      v92 = 2114;
      v93 = v35;
      v94 = 2114;
      v95 = v20;
      _os_log_impl(&dword_2334D9000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@ (feedback) <%{public}@>: sending command with options: %{public}@", buf, 0x20u);
    }

    v36 = *(a1 + 88);
    v81[0] = MEMORY[0x277D85DD0];
    v81[1] = 3221225472;
    v81[2] = sub_2335067B8;
    v81[3] = &unk_2789DBD90;
    v82 = v32;
    v85 = *(a1 + 72);
    v83 = *(a1 + 56);
    v86 = v22;
    v84 = *(a1 + 64);
    v37 = v32;
    objc_msgSend_sendCommand_toDestination_withOptions_completion_(v37, v38, v36, v28, v20, v81);
  }

  else
  {
    if (!*(a1 + 72))
    {
      goto LABEL_19;
    }

    v39 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = *(a1 + 40);
      v41 = *(a1 + 48);
      *buf = 138543618;
      v91 = v40;
      v92 = 2114;
      v93 = v41;
      _os_log_impl(&dword_2334D9000, v39, OS_LOG_TYPE_ERROR, "%{public}@ (feedback) <%{public}@>: command not supported", buf, 0x16u);
    }

    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 56), v42, MEMORY[0x277CBEC28], @"success", v43);
    v47 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v44, v22, v45, v46);
    v52 = objc_msgSend_stringValue(v47, v48, v49, v50, v51);
    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 56), v53, v52, @"errorcode", v54);

    v55 = MEMORY[0x277CCABB0];
    objc_msgSend_timeIntervalSinceNow(*(a1 + 64), v56, v57, v58, v59);
    v65 = objc_msgSend_numberWithDouble_(v55, v61, v62, v63, v64, fabs(v60));
    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 56), v66, v65, @"duration", v67);

    v68 = *(a1 + 72);
    v69 = objc_alloc(MEMORY[0x277D47208]);
    v73 = objc_msgSend_initWithErrorCode_(v69, v70, v22, v71, v72);
    v78 = objc_msgSend_dictionary(v73, v74, v75, v76, v77);
    (*(v68 + 16))(v68, v78);

    v80 = *(a1 + 56);
    AnalyticsSendEventLazy();
    v28 = v80;
  }

LABEL_19:
  v79 = *(a1 + 80);
  if (v79)
  {
    CFRelease(v79);
  }
}

void sub_2335067B8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  if (*(a1 + 56))
  {
    if (sub_2335059A8(a3))
    {
      v6 = objc_alloc_init(MEMORY[0x277D47218]);
      v11 = objc_msgSend_dictionary(v6, v7, v8, v9, v10);

      objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 40), v12, MEMORY[0x277CBEC38], @"success", v13);
    }

    else
    {
      v18 = objc_alloc(MEMORY[0x277D47208]);
      v22 = objc_msgSend_initWithErrorCode_(v18, v19, *(a1 + 64), v20, v21);
      v11 = objc_msgSend_dictionary(v22, v23, v24, v25, v26);

      objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 40), v27, MEMORY[0x277CBEC28], @"success", v28);
      v32 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v29, *(a1 + 64), v30, v31);
      v37 = objc_msgSend_stringValue(v32, v33, v34, v35, v36);
      objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 40), v38, v37, @"errorcode", v39);
    }

    v40 = MEMORY[0x277CCABB0];
    objc_msgSend_timeIntervalSinceNow(*(a1 + 48), v14, v15, v16, v17);
    v46 = objc_msgSend_numberWithDouble_(v40, v42, v43, v44, v45, fabs(v41));
    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 40), v47, v46, @"duration", v48);

    (*(*(a1 + 56) + 16))();
    v49 = *(a1 + 40);
    AnalyticsSendEventLazy();
  }
}

id sub_23350699C()
{
  if (qword_27DE0E788 != -1)
  {
    dispatch_once(&qword_27DE0E788, &unk_2848D4460);
  }

  v1 = qword_27DE0E790;

  return v1;
}

uint64_t sub_2335069F0()
{
  qword_27DE0E790 = dispatch_group_create();

  return MEMORY[0x2821F96F8]();
}

void sub_233506A24(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v101 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (MSVDeviceIsAudioAccessory())
  {
    v83 = v12;
    v14 = objc_alloc_init(MEMORY[0x277CEF318]);
    v90[0] = MEMORY[0x277D85DD0];
    v90[1] = 3221225472;
    v90[2] = sub_2335070FC;
    v90[3] = &unk_2789DBEC8;
    v15 = v14;
    v91 = v15;
    v16 = v9;
    v92 = v16;
    v82 = v10;
    v17 = v10;
    v93 = v17;
    v80 = v13;
    v94 = v80;
    v81 = MEMORY[0x2383A14D0](v90);
    v18 = v16;
    v19 = v17;
    v24 = objc_msgSend_currentDeviceInfo(MEMORY[0x277D7FA80], v20, v21, v22, v23);
    isInternalBuild = objc_msgSend_isInternalBuild(v24, v25, v26, v27, v28);

    if (isInternalBuild)
    {
      CFPreferencesAppSynchronize(@"com.apple.mobileipod");
      v30 = CFPreferencesCopyAppValue(@"SiriLibrarySharedUserID", @"com.apple.mobileipod");
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v31 = v30;
        if (v31)
        {
          v32 = _MPLogCategoryAssistant();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v96 = v18;
            v97 = 2114;
            v98 = v19;
            _os_log_impl(&dword_2334D9000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@ (utility) <%{public}@>: override library Shared User ID in place", buf, 0x16u);
          }
        }
      }

      else
      {
        v31 = 0;
      }
    }

    else
    {
      v31 = 0;
    }

    v38 = v18;
    v39 = v19;
    v44 = objc_msgSend_currentDeviceInfo(MEMORY[0x277D7FA80], v40, v41, v42, v43);
    v49 = objc_msgSend_isInternalBuild(v44, v45, v46, v47, v48);

    if (v49)
    {
      CFPreferencesAppSynchronize(@"com.apple.mobileipod");
      v50 = CFPreferencesCopyAppValue(@"SiriRequesterSharedUserID", @"com.apple.mobileipod");
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v51 = v50;
        if (v51)
        {
          v52 = _MPLogCategoryAssistant();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v96 = v38;
            v97 = 2114;
            v98 = v39;
            _os_log_impl(&dword_2334D9000, v52, OS_LOG_TYPE_DEFAULT, "%{public}@ (utility) <%{public}@>: override requester Shared User ID in place", buf, 0x16u);
          }
        }
      }

      else
      {
        v51 = 0;
      }
    }

    else
    {
      v51 = 0;
    }

    v12 = v83;

    if (v31)
    {
      if (v51)
      {
LABEL_25:
        if (objc_msgSend_length(v31, v53, v54, v55, v56))
        {
          v61 = _MPLogCategoryAssistant();
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543875;
            v96 = v38;
            v97 = 2114;
            v98 = v39;
            v99 = 2113;
            v100 = v31;
            _os_log_impl(&dword_2334D9000, v61, OS_LOG_TYPE_DEFAULT, "%{public}@ (sharedid) <%{public}@>: library Shared User ID %{private}@", buf, 0x20u);
          }

          v84[0] = MEMORY[0x277D85DD0];
          v84[1] = 3221225472;
          v84[2] = sub_233507224;
          v84[3] = &unk_2789DBF18;
          v85 = v38;
          v86 = v39;
          v87 = v51;
          v62 = v81;
          v88 = v81;
          v89 = v80;
          (v81)[2](v88, v31, 1, v84);

          v63 = v85;
        }

        else
        {
          v64 = objc_msgSend_length(v51, v57, v58, v59, v60);
          v65 = _MPLogCategoryAssistant();
          v66 = os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT);
          if (v64)
          {
            if (v66)
            {
              v71 = objc_msgSend_activeAccount(MEMORY[0x277D7FCA0], v67, v68, v69, v70);
              *buf = 138543875;
              v96 = v38;
              v97 = 2114;
              v98 = v39;
              v99 = 2113;
              v100 = v71;
              _os_log_impl(&dword_2334D9000, v65, OS_LOG_TYPE_DEFAULT, "%{public}@ (sharedid) <%{public}@>: using %{private}@ in forced guest mode with forced private listening: YES", buf, 0x20u);
            }

            v63 = objc_msgSend_activeAccount(MEMORY[0x277D7FCA0], v72, v73, v74, v75);
            (*(v80 + 2))(v80, v63, MEMORY[0x277CBEC38]);
            v12 = v83;
          }

          else
          {
            v12 = v83;
            if (v66)
            {
              *buf = 138543618;
              v96 = v38;
              v97 = 2114;
              v98 = v39;
              _os_log_impl(&dword_2334D9000, v65, OS_LOG_TYPE_DEFAULT, "%{public}@ (sharedid) <%{public}@>: using active account with configured private listening", buf, 0x16u);
            }

            v63 = objc_msgSend_activeAccount(MEMORY[0x277D7FCA0], v76, v77, v78, v79);
            (*(v80 + 2))(v80, v63, 0);
          }

          v62 = v81;
        }

        v10 = v82;
        goto LABEL_40;
      }
    }

    else
    {
      v31 = v83;
      if (v51)
      {
        goto LABEL_25;
      }
    }

    v51 = v11;
    goto LABEL_25;
  }

  v33 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v96 = v9;
    v97 = 2114;
    v98 = v10;
    _os_log_impl(&dword_2334D9000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@ (sharedid) <%{public}@>: using active account with configured private listening for single user only device", buf, 0x16u);
  }

  v15 = objc_msgSend_activeAccount(MEMORY[0x277D7FCA0], v34, v35, v36, v37);
  (*(v13 + 2))(v13, v15, 0);
LABEL_40:
}

void sub_2335070FC(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = *(a1 + 32);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2335076B0;
  v14[3] = &unk_2789DBEA0;
  v15 = v9;
  v21 = a3;
  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = v8;
  v18 = v7;
  v10 = v7;
  v11 = v8;
  objc_msgSend_getHomeUserIdForSharedUserId_completion_(v15, v12, v10, v14, v13);
}

void sub_233507224(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    *buf = 138543875;
    v27 = v5;
    v28 = 2114;
    v29 = v6;
    v30 = 2113;
    v31 = v3;
    _os_log_impl(&dword_2334D9000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ (sharedid) <%{public}@>: library User Identity %{private}@", buf, 0x20u);
  }

  v11 = objc_msgSend_length(*(a1 + 48), v7, v8, v9, v10);
  v12 = _MPLogCategoryAssistant();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v13)
    {
      v14 = *(a1 + 32);
      v15 = *(a1 + 40);
      v16 = *(a1 + 48);
      *buf = 138543875;
      v27 = v14;
      v28 = 2114;
      v29 = v15;
      v30 = 2113;
      v31 = v16;
      _os_log_impl(&dword_2334D9000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ (sharedid) <%{public}@>: requester Shared User ID %{private}@", buf, 0x20u);
    }

    v18 = *(a1 + 48);
    v17 = *(a1 + 56);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_2335074A0;
    v21[3] = &unk_2789DBEF0;
    v22 = *(a1 + 32);
    v23 = *(a1 + 40);
    v24 = v3;
    v25 = *(a1 + 64);
    (*(v17 + 16))(v17, v18, 0, v21);
  }

  else
  {
    if (v13)
    {
      v19 = *(a1 + 32);
      v20 = *(a1 + 40);
      *buf = 138543875;
      v27 = v19;
      v28 = 2114;
      v29 = v20;
      v30 = 2113;
      v31 = v3;
      _os_log_impl(&dword_2334D9000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ (sharedid) <%{public}@>: using %{private}@ in guest mode with forced private listening: YES", buf, 0x20u);
    }

    (*(*(a1 + 64) + 16))();
  }
}

void sub_2335074A0(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v29 = 138543875;
    v30 = v5;
    v31 = 2114;
    v32 = v6;
    v33 = 2113;
    v34 = v3;
    _os_log_impl(&dword_2334D9000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ (sharedid) <%{public}@>: requester User Identity %{private}@", &v29, 0x20u);
  }

  v11 = objc_msgSend_DSID(v3, v7, v8, v9, v10);
  v16 = objc_msgSend_DSID(*(a1 + 48), v12, v13, v14, v15);
  isEqualToNumber = objc_msgSend_isEqualToNumber_(v11, v17, v16, v18, v19);

  v21 = _MPLogCategoryAssistant();
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
  if (isEqualToNumber)
  {
    if (v22)
    {
      v23 = *(a1 + 32);
      v24 = *(a1 + 40);
      v25 = *(a1 + 48);
      v29 = 138543875;
      v30 = v23;
      v31 = 2114;
      v32 = v24;
      v33 = 2113;
      v34 = v25;
      _os_log_impl(&dword_2334D9000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ (sharedid) <%{public}@>: using %{private}@ and not enforcing private listening override because requester and library match", &v29, 0x20u);
    }
  }

  else if (v22)
  {
    v26 = *(a1 + 32);
    v27 = *(a1 + 40);
    v28 = *(a1 + 48);
    v29 = 138543875;
    v30 = v26;
    v31 = 2114;
    v32 = v27;
    v33 = 2113;
    v34 = v28;
    _os_log_impl(&dword_2334D9000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ (sharedid) <%{public}@>: using %{private}@ in cross-user mode with forced private listening: YES", &v29, 0x20u);
  }

  (*(*(a1 + 56) + 16))();
}

void sub_2335076B0(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v10 = *(a1 + 56);
      *buf = 138544131;
      v34 = v8;
      v35 = 2114;
      v36 = v9;
      v37 = 2113;
      v38 = v10;
      v39 = 2114;
      v40 = v6;
      _os_log_impl(&dword_2334D9000, v7, OS_LOG_TYPE_ERROR, "%{public}@ (sharedid) <%{public}@>: shared ID %{private}@ not available: %{public}@", buf, 0x2Au);
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x277CCAD78]);
    v15 = objc_msgSend_initWithUUIDString_(v11, v12, v5, v13, v14);
    v20 = objc_msgSend_ic_sharedAccountStore(MEMORY[0x277CB8F48], v16, v17, v18, v19);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_2335078E0;
    v24[3] = &unk_2789DBE78;
    v25 = *(a1 + 32);
    v32 = *(a1 + 80);
    v26 = *(a1 + 40);
    v27 = *(a1 + 48);
    v28 = v5;
    v30 = *(a1 + 64);
    v31 = *(a1 + 72);
    v29 = v15;
    v21 = v15;
    objc_msgSend_ic_storeAccountForHomeUserIdentifier_completion_(v20, v22, v21, v24, v23);
  }
}

void sub_2335078E0(uint64_t a1, void *a2, void *a3)
{
  v78 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v11 = *(a1 + 32);
  if (v6)
  {
    v12 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 40);
      v14 = *(a1 + 48);
      v15 = *(a1 + 56);
      v70 = 138544131;
      v71 = v13;
      v72 = 2114;
      v73 = v14;
      v74 = 2113;
      v75 = v15;
      v76 = 2114;
      v77 = v6;
      v16 = "%{public}@ (sharedid) <%{public}@>: home ID %{private}@ not found in database: %{public}@";
      v17 = v12;
      v18 = 42;
LABEL_4:
      _os_log_impl(&dword_2334D9000, v17, OS_LOG_TYPE_ERROR, v16, &v70, v18);
      goto LABEL_5;
    }

    goto LABEL_5;
  }

  v20 = objc_msgSend_ic_DSID(v5, v7, v8, v9, v10);
  v25 = objc_msgSend_longLongValue(v20, v21, v22, v23, v24);

  if (!v25)
  {
    v62 = *(a1 + 88);
    v63 = _MPLogCategoryAssistant();
    v12 = v63;
    if (v62 != 1)
    {
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        v67 = *(a1 + 40);
        v68 = *(a1 + 48);
        v69 = *(a1 + 56);
        v70 = 138543875;
        v71 = v67;
        v72 = 2114;
        v73 = v68;
        v74 = 2113;
        v75 = v69;
        _os_log_impl(&dword_2334D9000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ (sharedid) <%{public}@>: no DSID for home ID: %{private}@, but it is NOT required", &v70, 0x20u);
      }

      v19 = *(*(a1 + 80) + 16);
      goto LABEL_6;
    }

    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      v64 = *(a1 + 40);
      v65 = *(a1 + 48);
      v66 = *(a1 + 56);
      v70 = 138543875;
      v71 = v64;
      v72 = 2114;
      v73 = v65;
      v74 = 2113;
      v75 = v66;
      v16 = "%{public}@ (sharedid) <%{public}@>: no DSID for home ID: %{private}@";
      v17 = v12;
      v18 = 32;
      goto LABEL_4;
    }

LABEL_5:

    v19 = *(*(a1 + 72) + 16);
LABEL_6:
    v19();
    goto LABEL_13;
  }

  v30 = objc_msgSend_ic_privateListeningEnabledForHomeUsers(v5, v26, v27, v28, v29);
  v34 = objc_msgSend_objectForKey_(v30, v31, *(a1 + 64), v32, v33);

  if (objc_msgSend_isCurrentDeviceValidHomeAccessory(MEMORY[0x277CD5D90], v35, v36, v37, v38))
  {
    v43 = objc_msgSend_userMonitorWithHomeIdentifier_(MEMORY[0x277CD5D98], v39, *(a1 + 64), v41, v42);
    v48 = v43;
    if (v43)
    {
      v49 = MEMORY[0x277CCABB0];
      isPrivateListeningEnabledForCurrentAccessory = objc_msgSend_isPrivateListeningEnabledForCurrentAccessory(v43, v44, v45, v46, v47);
      v54 = objc_msgSend_numberWithBool_(v49, v51, isPrivateListeningEnabledForCurrentAccessory, v52, v53);

      v34 = v54;
    }
  }

  v55 = *(a1 + 80);
  v56 = MEMORY[0x277D7FCA0];
  v57 = objc_msgSend_ic_DSID(v5, v39, v40, v41, v42);
  v61 = objc_msgSend_specificAccountWithDSID_(v56, v58, v57, v59, v60);
  (*(v55 + 16))(v55, v61, v34);

LABEL_13:
}

void sub_233507BFC(void *a1, void *a2, int a3, void *a4, void *a5)
{
  v559 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a4;
  v10 = a2;
  v424 = a1;
  v422 = v9;
  v423 = v8;
  v421 = v10;
  if (!_os_feature_enabled_impl())
  {
    v322 = v424;
    v323 = v10;
    v324 = v8;
    v325 = v323;
    v326 = v9;
    v446 = v324;
    v331 = objc_msgSend_date(MEMORY[0x277CBEAA8], v327, v328, v329, v330);
    v336 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v332, v333, v334, v335);
    objc_msgSend_setObject_forKeyedSubscript_(v336, v337, v322, @"plugin_name", v338);
    v499 = 0;
    v500 = &v499;
    v501 = 0x3010000000;
    v504 = 0;
    v502 = &unk_233518917;
    v503 = 0;
    v339 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v339, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = v322;
      *&buf[12] = 2114;
      *&buf[14] = v325;
      _os_log_impl(&dword_2334D9000, v339, OS_LOG_TYPE_DEFAULT, "%{public}@ (clientstate) <%{public}@>: getting dynamite client state using ACAccount", buf, 0x16u);
    }

    v448 = dispatch_queue_create("com.apple.Assistant.MPAssistantUtilitiesGetDynamiteClientState", 0);
    v340 = dispatch_group_create();
    v341 = objc_alloc_init(MEMORY[0x277D472D0]);
    block = 0;
    p_block = &block;
    v491 = 0x3032000000;
    v492 = sub_2335095FC;
    v493 = sub_23350960C;
    v494 = 0;
    *&v510 = 0;
    *(&v510 + 1) = &v510;
    *&v511 = 0x3032000000;
    *(&v511 + 1) = sub_2335095FC;
    *&v512 = sub_23350960C;
    *(&v512 + 1) = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v342, v343, v344, v345);
    *&v467 = 0;
    *(&v467 + 1) = &v467;
    *&v468 = 0x2810000000;
    *(&v468 + 1) = &unk_233518917;
    LODWORD(v469) = 0;
    if (MSVDeviceIsAudioAccessory())
    {
      goto LABEL_61;
    }

    v350 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v350, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = v322;
      *&buf[12] = 2114;
      *&buf[14] = v325;
      _os_log_impl(&dword_2334D9000, v350, OS_LOG_TYPE_DEFAULT, "%{public}@ (clientstate) <%{public}@>: getting stored WLK configuration", buf, 0x16u);
    }

    v528 = 0;
    v529 = &v528;
    v530 = 0x2050000000;
    v355 = qword_2814EE808;
    v531 = qword_2814EE808;
    if (!qword_2814EE808)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = sub_233509614;
      v545 = &unk_2789DC280;
      *&v546 = &v528;
      sub_233509614(buf, v351, v352, v353, v354);
      v355 = *(v529 + 24);
    }

    v356 = v355;
    _Block_object_dispose(&v528, 8);
    v361 = objc_msgSend_sharedInstance(v355, v357, v358, v359, v360);
    v366 = objc_msgSend_storedConfiguration(v361, v362, v363, v364, v365);

    if (v366)
    {
      active = objc_msgSend_activeUser(v366, v367, v368, v369, v370);
      objc_msgSend_setActiveTvUser_(v341, v372, active, v373, v374);
      v375 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v375, OS_LOG_TYPE_DEFAULT))
      {
        v380 = objc_msgSend_activeUser(v366, v376, v377, v378, v379);
        *buf = 138543874;
        *&buf[4] = v322;
        *&buf[12] = 2114;
        *&buf[14] = v325;
        *&buf[22] = 1024;
        LODWORD(v545) = v380;
        _os_log_impl(&dword_2334D9000, v375, OS_LOG_TYPE_DEFAULT, "%{public}@ (clientstate) <%{public}@>: active TV user: %{BOOL}u", buf, 0x1Cu);
      }
    }

    else
    {
      v528 = 0;
      v529 = &v528;
      v530 = 0x2050000000;
      v381 = qword_27DE0E798;
      v531 = qword_27DE0E798;
      if (!qword_27DE0E798)
      {
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = sub_2335096DC;
        v545 = &unk_2789DC280;
        *&v546 = &v528;
        sub_2335096DC(buf, v367, v368, v369, v370);
        v381 = *(v529 + 24);
      }

      v382 = v381;
      _Block_object_dispose(&v528, 8);
      if (!v381)
      {
        goto LABEL_60;
      }

      dispatch_group_enter(v340);
      v383 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v383, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        *&buf[4] = v322;
        *&buf[12] = 2114;
        *&buf[14] = v325;
        _os_log_impl(&dword_2334D9000, v383, OS_LOG_TYPE_DEFAULT, "%{public}@ (clientstate) <%{public}@>: getting WLK configuration", buf, 0x16u);
      }

      v388 = objc_msgSend_sharedInstance(v381, v384, v385, v386, v387);
      v450 = MEMORY[0x277D85DD0];
      v451 = 3221225472;
      v452 = sub_2335097A4;
      v453 = &unk_2789DBFE0;
      v454 = v448;
      v455 = v341;
      v456 = v322;
      v457 = v325;
      v458 = v340;
      objc_msgSend_fetchConfigurationWithCompletionHandler_(v388, v389, &v450, v390, v391);

      v375 = v454;
    }

LABEL_60:
LABEL_61:
    v392 = v326;
    v393 = v336;
    v514 = 0;
    v515 = &v514;
    v516 = 0x2020000000;
    LODWORD(v517) = 0;
    v483 = 0;
    v484 = &v483;
    v485 = 0x2020000000;
    LODWORD(v486) = 0;
    v394 = objc_msgSend_array(MEMORY[0x277CBEB18], v346, v347, v348, v349);
    dispatch_group_enter(v340);
    v399 = objc_msgSend_ic_sharedAccountStore(MEMORY[0x277CB8F48], v395, v396, v397, v398);
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = sub_233509884;
    v545 = &unk_2789DC078;
    v444 = v392;
    *&v546 = v444;
    v400 = v322;
    *(&v546 + 1) = v400;
    v401 = v325;
    v547 = v401;
    v402 = v340;
    v548 = v402;
    v558 = a3;
    v403 = v448;
    v549 = v403;
    v552 = &v467;
    v553 = &v510;
    v404 = v341;
    v550 = v404;
    v554 = &v483;
    v405 = v394;
    v551 = v405;
    v555 = &v514;
    v556 = &block;
    v557 = &v499;
    objc_msgSend_ic_allStoreAccountsWithCompletion_(v399, v406, buf, v407, v408);

    v409 = v393;
    v528 = MEMORY[0x277D85DD0];
    v529 = 3221225472;
    v530 = sub_23350AC7C;
    v531 = &unk_2789DC0A0;
    v532 = v400;
    v533 = v401;
    v534 = v404;
    v535 = v405;
    v539 = &block;
    v538 = v446;
    v536 = v393;
    v537 = v331;
    v540 = &v510;
    v541 = &v499;
    v542 = &v514;
    v543 = &v483;
    v410 = v331;
    v411 = v409;
    v449 = v446;
    v412 = v405;
    v413 = v404;
    v414 = v401;
    v415 = v400;
    dispatch_group_notify(v402, v403, &v528);

    _Block_object_dispose(&v483, 8);
    _Block_object_dispose(&v514, 8);
    _Block_object_dispose(&v467, 8);
    _Block_object_dispose(&v510, 8);

    _Block_object_dispose(&block, 8);
    _Block_object_dispose(&v499, 8);

    goto LABEL_62;
  }

  v441 = v424;
  v440 = v10;
  v11 = v9;
  v418 = v8;
  v417 = objc_msgSend_date(MEMORY[0x277CBEAA8], v12, v13, v14, v15);
  v420 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v16, v17, v18, v19);
  objc_msgSend_setObject_forKeyedSubscript_(v420, v20, v441, @"plugin_name", v21);
  v483 = 0;
  v484 = &v483;
  v485 = 0x3010000000;
  v488 = 0;
  v486 = &unk_233518917;
  v487 = 0;
  v22 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    *&buf[4] = v441;
    *&buf[12] = 2114;
    *&buf[14] = v440;
    *&buf[22] = 1024;
    LODWORD(v545) = a3;
    _os_log_impl(&dword_2334D9000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ (clientstate) <%{public}@>: getting dynamite client state using media user state, syncing: %d", buf, 0x1Cu);
  }

  v434 = dispatch_queue_create("com.apple.Assistant.MPAssistantUtilitiesGetDynamiteClientState", 0);
  group = dispatch_group_create();
  v432 = objc_alloc_init(MEMORY[0x277D472D0]);
  v481[0] = 0;
  v481[1] = v481;
  v481[2] = 0x3032000000;
  v481[3] = sub_2335095FC;
  v481[4] = sub_23350960C;
  v482 = 0;
  v479[0] = 0;
  v479[1] = v479;
  v479[2] = 0x3032000000;
  v479[3] = sub_2335095FC;
  v479[4] = sub_23350960C;
  v480 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v23, v24, v25, v26);
  v477[0] = 0;
  v477[1] = v477;
  v477[2] = 0x2810000000;
  v477[3] = &unk_233518917;
  v478 = 0;
  v31 = objc_msgSend_shared(MEMORY[0x277D7FB20], v27, v28, v29, v30);
  v419 = objc_msgSend_allUserStates(v31, v32, v33, v34, v35);

  v475[0] = MEMORY[0x277D85DD0];
  v475[1] = 3221225472;
  v475[2] = sub_23350D370;
  v475[3] = &unk_2789DBF40;
  v416 = v11;
  v476 = v416;
  v437 = objc_msgSend_msv_firstWhere_(v419, v36, v475, v37, v38);
  v39 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v44 = objc_msgSend_debugDescription(v437, v40, v41, v42, v43);
    *buf = 138543875;
    *&buf[4] = v441;
    *&buf[12] = 2114;
    *&buf[14] = v440;
    *&buf[22] = 2113;
    v545 = v44;
    _os_log_impl(&dword_2334D9000, v39, OS_LOG_TYPE_DEFAULT, "%{public}@ (clientstate) <%{public}@>: found prefferedMediaUserStateCandidate=%{private}@", buf, 0x20u);
  }

  v473[0] = 0;
  v473[1] = v473;
  v473[2] = 0x2020000000;
  v474 = 0;
  v471[0] = 0;
  v471[1] = v471;
  v471[2] = 0x2020000000;
  v472 = 0;
  v431 = objc_msgSend_array(MEMORY[0x277CBEB18], v45, v46, v47, v48);
  v469 = 0u;
  v470 = 0u;
  v467 = 0u;
  v468 = 0u;
  v53 = objc_msgSend_shared(MEMORY[0x277D7FB20], v49, v50, v51, v52);
  obj = objc_msgSend_allUserStates(v53, v54, v55, v56, v57);

  v436 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v58, &v467, &v528, 16);
  if (v436)
  {
    v429 = *MEMORY[0x277D47D60];
    v430 = *v468;
    v428 = *MEMORY[0x277D47D68];
    v426 = *MEMORY[0x277D483C8];
    v427 = *MEMORY[0x277D483C0];
    do
    {
      for (i = 0; i != v436; ++i)
      {
        if (*v468 != v430)
        {
          objc_enumerationMutation(obj);
        }

        v62 = *(*(&v467 + 1) + 8 * i);
        isEqual = objc_msgSend_isEqual_(v62, v59, v437, v60, v61);
        isActive = isEqual;
        if (v437)
        {
          v69 = 1;
        }

        else
        {
          v69 = isEqual;
        }

        if ((v69 & 1) == 0)
        {
          isActive = objc_msgSend_isActive(v62, v64, v65, v66, v67);
        }

        dispatch_group_enter(group);
        v450 = MEMORY[0x277D85DD0];
        v451 = 3221225472;
        v452 = sub_23350D3B4;
        v453 = &unk_2789DBF90;
        v454 = v434;
        v465 = isActive;
        v70 = v441;
        v455 = v70;
        v71 = v440;
        v456 = v71;
        v457 = v62;
        v461 = v477;
        v462 = v479;
        v72 = v432;
        v466 = a3;
        v458 = v72;
        v463 = v471;
        v459 = v431;
        v464 = v473;
        v460 = group;
        v445 = v70;
        v443 = v71;
        v73 = v62;
        v438 = &v450;
        v74 = _MPLogCategoryAssistant();
        if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
        {
          v79 = objc_msgSend_shortDebugName(v73, v75, v76, v77, v78);
          *buf = 138543875;
          *&buf[4] = v441;
          *&buf[12] = 2114;
          *&buf[14] = v440;
          *&buf[22] = 2113;
          v545 = v79;
          _os_log_impl(&dword_2334D9000, v74, OS_LOG_TYPE_DEFAULT, "%{public}@ (userstate) <%{public}@>: getting user state for %{private}@", buf, 0x20u);
        }

        v514 = 0;
        v515 = &v514;
        v516 = 0x3032000000;
        v517 = sub_2335095FC;
        v518 = sub_23350960C;
        v80 = MEMORY[0x277D47B78];
        v447 = v73;
        v81 = objc_alloc_init(v80);
        v86 = objc_msgSend_ageVerificationRequired(v447, v82, v83, v84, v85);
        objc_msgSend_setAgeVerificationRequired_(v81, v87, v86, v88, v89);
        v90 = MEMORY[0x277CCABB0];
        v95 = objc_msgSend_music(v447, v91, v92, v93, v94);
        v100 = objc_msgSend_usesListeningHistory(v95, v96, v97, v98, v99);
        v104 = objc_msgSend_numberWithInt_(v90, v101, v100 ^ 1u, v102, v103);
        objc_msgSend_setUserHistoryUnmodifiable_(v81, v105, v104, v106, v107);

        v112 = objc_msgSend_music(v447, v108, v109, v110, v111);
        v117 = objc_msgSend_subscriptionStatus(v112, v113, v114, v115, v116);
        v122 = (~objc_msgSend_capabilities(v117, v118, v119, v120, v121) & 0x101) == 0;

        if (v122)
        {
          objc_msgSend_setStatus_(v81, v123, v429, v124, v125);
        }

        else
        {
          objc_msgSend_setStatus_(v81, v123, v428, v124, v125);
        }

        objc_msgSend_setIsPromotionRelatedStatus_(v81, v126, 0, v127, v128);
        v133 = objc_msgSend_music(v447, v129, v130, v131, v132);
        v138 = objc_msgSend_subscriptionStatus(v133, v134, v135, v136, v137);
        v143 = objc_msgSend_eligibleOffers(v138, v139, v140, v141, v142);
        objc_msgSend_setEligibleOffers_(v81, v144, v143, v145, v146);

        v151 = objc_msgSend_music(v447, v147, v148, v149, v150);
        v156 = objc_msgSend_subscriptionStatus(v151, v152, v153, v154, v155);
        if (objc_msgSend_isMatchEnabled(v156, v157, v158, v159, v160))
        {
          objc_msgSend_setITunesMatchSubscriptionStatus_(v81, v161, v427, v162, v163);
        }

        else
        {
          objc_msgSend_setITunesMatchSubscriptionStatus_(v81, v161, v426, v162, v163);
        }

        v164 = objc_alloc_init(MEMORY[0x277D47B80]);
        v165 = MEMORY[0x277CCABB0];
        v170 = objc_msgSend_music(v447, v166, v167, v168, v169);
        v175 = objc_msgSend_libraryAuthTokenStatus(v170, v171, v172, v173, v174);
        v180 = objc_msgSend_lastError(v175, v176, v177, v178, v179);
        v185 = objc_msgSend_code(v180, v181, v182, v183, v184);
        v189 = objc_msgSend_numberWithInteger_(v165, v186, v185, v187, v188);
        objc_msgSend_setErrorCode_(v164, v190, v189, v191, v192);

        v193 = MEMORY[0x277CCABB0];
        v198 = objc_msgSend_music(v447, v194, v195, v196, v197);
        v203 = objc_msgSend_libraryAuthTokenStatus(v198, v199, v200, v201, v202);
        v208 = objc_msgSend_lastUpdatedDate(v203, v204, v205, v206, v207);
        objc_msgSend_timeIntervalSinceReferenceDate(v208, v209, v210, v211, v212);
        v217 = objc_msgSend_numberWithDouble_(v193, v213, v214, v215, v216);
        objc_msgSend_setLastUpdateAttemptTime_(v164, v218, v217, v219, v220);

        v221 = MEMORY[0x277CCABB0];
        v226 = objc_msgSend_music(v447, v222, v223, v224, v225);

        v231 = objc_msgSend_libraryAuthTokenStatus(v226, v227, v228, v229, v230);
        shouldExcludeFromBackgroundRefresh = objc_msgSend_shouldExcludeFromBackgroundRefresh(v231, v232, v233, v234, v235);
        v240 = objc_msgSend_numberWithBool_(v221, v237, shouldExcludeFromBackgroundRefresh, v238, v239);
        objc_msgSend_setShouldExcludeFromBackgroundRefresh_(v164, v241, v240, v242, v243);

        objc_msgSend_setUserTokenStatus_(v81, v244, v164, v245, v246);
        v519 = v81;
        v251 = objc_msgSend_homeUserIDs(v447, v247, v248, v249, v250);
        LOBYTE(v164) = objc_msgSend_count(v251, v252, v253, v254, v255) == 0;

        if (v164)
        {
          v309 = _MPLogCategoryAssistant();
          if (os_log_type_enabled(v309, OS_LOG_TYPE_DEFAULT))
          {
            v314 = objc_msgSend_shortDebugName(v447, v310, v311, v312, v313);
            *buf = 138543875;
            *&buf[4] = v441;
            *&buf[12] = 2114;
            *&buf[14] = v440;
            *&buf[22] = 2113;
            v545 = v314;
            _os_log_impl(&dword_2334D9000, v309, OS_LOG_TYPE_DEFAULT, "%{public}@ (userstate) <%{public}@>: user does not have any home IDs for %{private}@", buf, 0x20u);
          }

          v452(v438, 0, v515[5]);
        }

        else
        {
          v256 = _MPLogCategoryAssistant();
          if (os_log_type_enabled(v256, OS_LOG_TYPE_DEFAULT))
          {
            v261 = objc_msgSend_shortDebugName(v447, v257, v258, v259, v260);
            v262 = MEMORY[0x277CCABB0];
            v267 = objc_msgSend_homeUserIDs(v447, v263, v264, v265, v266);
            v272 = objc_msgSend_count(v267, v268, v269, v270, v271);
            v276 = objc_msgSend_numberWithUnsignedInteger_(v262, v273, v272, v274, v275);
            *buf = 138544131;
            *&buf[4] = v441;
            *&buf[12] = 2114;
            *&buf[14] = v440;
            *&buf[22] = 2113;
            v545 = v261;
            LOWORD(v546) = 2114;
            *(&v546 + 2) = v276;
            _os_log_impl(&dword_2334D9000, v256, OS_LOG_TYPE_DEFAULT, "%{public}@ (userstate) <%{public}@>: media user state %{private}@ has %{public}@ homeUserIDs", buf, 0x2Au);
          }

          queue = dispatch_queue_create("com.apple.Assistant.MPAssistantGetDynamiteClientState.userState", 0);
          v281 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v277, v278, v279, v280);
          v286 = objc_alloc_init(sub_2334DA3E8(v281, v282, v283, v284, v285));
          v287 = dispatch_group_create();
          v510 = 0u;
          v511 = 0u;
          v512 = 0u;
          v513 = 0u;
          v292 = objc_msgSend_homeUserIDs(v447, v288, v289, v290, v291);
          v294 = objc_msgSend_countByEnumeratingWithState_objects_count_(v292, v293, &v510, buf, 16);
          if (v294)
          {
            v295 = *v511;
            do
            {
              for (j = 0; j != v294; ++j)
              {
                if (*v511 != v295)
                {
                  objc_enumerationMutation(v292);
                }

                v297 = *(*(&v510 + 1) + 8 * j);
                dispatch_group_enter(v287);
                v298 = _MPLogCategoryAssistant();
                if (os_log_type_enabled(v298, OS_LOG_TYPE_DEFAULT))
                {
                  v303 = objc_msgSend_shortDebugName(v447, v299, v300, v301, v302);
                  *v520 = 138544131;
                  v521 = v441;
                  v522 = 2114;
                  v523 = v440;
                  v524 = 2113;
                  v525 = v297;
                  v526 = 2113;
                  v527 = v303;
                  _os_log_impl(&dword_2334D9000, v298, OS_LOG_TYPE_DEFAULT, "%{public}@ (userstate) <%{public}@>: fetching shared user id for home user id %{private}@ for %{private}@", v520, 0x2Au);
                }

                v499 = MEMORY[0x277D85DD0];
                v500 = 3221225472;
                v501 = sub_23350D850;
                v502 = &unk_2789DC0F0;
                v304 = v286;
                v503 = v304;
                v504 = v445;
                v505 = v443;
                v506 = v447;
                v507 = v287;
                v508 = queue;
                v509 = v281;
                objc_msgSend_getConformingSharedUserIdForHomeUserId_completion_(v304, v305, v297, &v499, v306);
              }

              v294 = objc_msgSend_countByEnumeratingWithState_objects_count_(v292, v307, &v510, buf, 16);
            }

            while (v294);
          }

          block = MEMORY[0x277D85DD0];
          p_block = 3221225472;
          v491 = sub_23350DAA8;
          v492 = &unk_2789DC118;
          v493 = v445;
          v494 = v443;
          v495 = v447;
          v497 = v438;
          v496 = v281;
          v498 = &v514;
          v308 = v281;
          dispatch_group_notify(v287, queue, &block);
        }

        _Block_object_dispose(&v514, 8);
      }

      v436 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v59, &v467, &v528, 16);
    }

    while (v436);
  }

  *buf = MEMORY[0x277D85DD0];
  *&buf[8] = 3221225472;
  *&buf[16] = sub_23350D518;
  v545 = &unk_2789DC0A0;
  *&v546 = v432;
  *(&v546 + 1) = v431;
  v547 = v441;
  v548 = v440;
  v552 = v481;
  v551 = v418;
  v549 = v420;
  v550 = v417;
  v553 = v479;
  v554 = &v483;
  v555 = v473;
  v556 = v471;
  v315 = v417;
  v316 = v420;
  v317 = v418;
  v318 = v440;
  v319 = v441;
  v320 = v431;
  v321 = v432;
  dispatch_group_notify(group, v434, buf);

  _Block_object_dispose(v471, 8);
  _Block_object_dispose(v473, 8);

  _Block_object_dispose(v477, 8);
  _Block_object_dispose(v479, 8);

  _Block_object_dispose(v481, 8);
  _Block_object_dispose(&v483, 8);

LABEL_62:
}

void sub_23350949C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  _Block_object_dispose(&STACK[0x450], 8);
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&STACK[0x3B0], 8);
  _Block_object_dispose(&STACK[0x308], 8);
  _Block_object_dispose(&STACK[0x358], 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2335095FC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_233509614(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_23350D1AC(a1, a2, a3, a4, a5);
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WLKStoredConfigurationManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_2814EE808 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v10 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v6, v7, v8, v9);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "Class getWLKStoredConfigurationManagerClass(void)_block_invoke", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v10, v15, v14, @"MPAssistantUtilities.m", 50, @"Unable to find class %s", "WLKStoredConfigurationManager");

    __break(1u);
  }
}

void sub_2335096DC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_23350D1AC(a1, a2, a3, a4, a5);
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WLKConfigurationManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_27DE0E798 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v10 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v6, v7, v8, v9);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "Class getWLKConfigurationManagerClass(void)_block_invoke", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v10, v15, v14, @"MPAssistantUtilities.m", 48, @"Unable to find class %s", "WLKConfigurationManager");

    __break(1u);
  }
}

void sub_2335097A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23350D0C8;
  v6[3] = &unk_2789DBFB8;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = v3;
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v5 = v3;
  dispatch_sync(v4, v6);
  dispatch_group_leave(*(a1 + 64));
}

void sub_233509884(uint64_t a1, void *a2, void *a3)
{
  v371 = *MEMORY[0x277D85DE8];
  v220 = a2;
  v221 = a3;
  v235 = objc_msgSend_msv_filter_(v220, v4, &unk_2848D4480, v5, v6);
  if (*(a1 + 32))
  {
    v273 = 0u;
    v274 = 0u;
    v271 = 0u;
    v272 = 0u;
    obj = v235;
    v241 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v271, v356, 16);
    if (v241)
    {
      v240 = *v272;
      do
      {
        v12 = 0;
        do
        {
          if (*v272 != v240)
          {
            v13 = v12;
            objc_enumerationMutation(obj);
            v12 = v13;
          }

          v245 = v12;
          v14 = *(*(&v271 + 1) + 8 * v12);
          v15 = objc_msgSend_ic_homeUserIdentifiers(v14, v8, v9, v10, v11);
          if ((objc_msgSend_ams_isLocalAccount(v14, v16, v17, v18, v19) & 1) != 0 || !objc_msgSend_count(v15, v20, v21, v22, v23))
          {
            goto LABEL_23;
          }

          v269 = 0u;
          v270 = 0u;
          v267 = 0u;
          v268 = 0u;
          v24 = v15;
          v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v267, v355, 16);
          if (!v30)
          {

LABEL_23:
            goto LABEL_24;
          }

          v239 = 0;
          v31 = *v268;
          do
          {
            for (i = 0; i != v30; ++i)
            {
              if (*v268 != v31)
              {
                objc_enumerationMutation(v24);
              }

              v33 = objc_msgSend_UUIDString(*(*(&v267 + 1) + 8 * i), v26, v27, v28, v29);
              isEqual = objc_msgSend_isEqual_(v33, v34, *(a1 + 32), v35, v36);

              if (isEqual)
              {
                v38 = _MPLogCategoryAssistant();
                if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
                {
                  v40 = *(a1 + 40);
                  v39 = *(a1 + 48);
                  v41 = *(a1 + 32);
                  *buf = 138543875;
                  v366 = v40;
                  v367 = 2114;
                  v368 = v39;
                  v369 = 2113;
                  v370 = v41;
                  _os_log_impl(&dword_2334D9000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@ (preferredMediaUserHomeUserID) <%{public}@>: found preferredMediaUser's account with home ID: %{private}@", buf, 0x20u);
                }

                v42 = v14;
                v239 = v42;
              }
            }

            v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v26, &v267, v355, 16);
          }

          while (v30);

          if (v239)
          {
            goto LABEL_27;
          }

LABEL_24:
          v12 = v245 + 1;
        }

        while ((v245 + 1) != v241);
        v241 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v271, v356, 16);
      }

      while (v241);
    }

    v239 = 0;
LABEL_27:
  }

  else
  {
    v239 = 0;
  }

  v265 = 0u;
  v266 = 0u;
  v263 = 0u;
  v264 = 0u;
  v223 = v235;
  v229 = objc_msgSend_countByEnumeratingWithState_objects_count_(v223, v43, &v263, v354, 16);
  if (v229)
  {
    v228 = *v264;
    do
    {
      v48 = 0;
      do
      {
        if (*v264 != v228)
        {
          v49 = v48;
          objc_enumerationMutation(v223);
          v48 = v49;
        }

        v236 = v48;
        v50 = *(*(&v263 + 1) + 8 * v48);
        if (objc_msgSend_ams_isLocalAccount(v50, v44, v45, v46, v47))
        {
          v51 = _MPLogCategoryAssistant();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            v52 = *(a1 + 40);
            v53 = *(a1 + 48);
            *buf = 138543618;
            v366 = v52;
            v367 = 2114;
            v368 = v53;
            _os_log_impl(&dword_2334D9000, v51, OS_LOG_TYPE_DEFAULT, "%{public}@ (clientstate) <%{public}@>: skipping local account", buf, 0x16u);
          }
        }

        else
        {
          dispatch_group_enter(*(a1 + 56));
          v55 = *(a1 + 40);
          v54 = *(a1 + 48);
          v56 = *(a1 + 136);
          v249[0] = MEMORY[0x277D85DD0];
          v249[1] = 3221225472;
          v250 = sub_23350AFB0;
          v251 = &unk_2789DC050;
          v252 = *(a1 + 64);
          v253 = v50;
          v254 = v239;
          v57 = *(a1 + 40);
          v58 = *(a1 + 48);
          v258 = *(a1 + 88);
          v59 = *(a1 + 72);
          v262 = *(a1 + 136);
          v259 = *(a1 + 104);
          v60 = *(a1 + 80);
          *&v61 = v59;
          *(&v61 + 1) = v60;
          *&v62 = v57;
          *(&v62 + 1) = v58;
          v255 = v62;
          v256 = v61;
          v260 = *(a1 + 112);
          v261 = *(a1 + 128);
          v257 = *(a1 + 56);
          v233 = v55;
          v234 = v54;
          obja = v50;
          v231 = v249;
          v348 = 0;
          v349 = &v348;
          v350 = 0x3010000000;
          v351 = &unk_233518917;
          v352 = 0;
          v353 = 0;
          v246 = objc_alloc_init(sub_2334DA3E8(v231, v63, v64, v65, v66));
          v67 = _MPLogCategoryAssistant();
          v242 = v56;
          if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
          {
            v72 = objc_msgSend_shortDebugName(obja, v68, v69, v70, v71);
            *buf = 138543875;
            v366 = v233;
            v367 = 2114;
            v368 = v234;
            v369 = 2113;
            v370 = v72;
            _os_log_impl(&dword_2334D9000, v67, OS_LOG_TYPE_DEFAULT, "%{public}@ (userstate) <%{public}@>: getting user state for %{private}@", buf, 0x20u);
          }

          v230 = objc_alloc_init(MEMORY[0x277D47B78]);
          v346[0] = 0;
          v346[1] = v346;
          v346[2] = 0x2810000000;
          v346[3] = &unk_233518917;
          v347 = 0;
          v344[0] = 0;
          v344[1] = v344;
          v344[2] = 0x3032000000;
          v344[3] = sub_2335095FC;
          v344[4] = sub_23350960C;
          v345 = 0;
          v77 = objc_msgSend_ic_DSID(obja, v73, v74, v75, v76);
          v82 = objc_msgSend_longLongValue(v77, v78, v79, v80, v81) == 0;

          if (v82)
          {
            v163 = _MPLogCategoryAssistant();
            if (os_log_type_enabled(v163, OS_LOG_TYPE_ERROR))
            {
              v168 = objc_msgSend_shortDebugName(obja, v164, v165, v166, v167);
              *buf = 138543875;
              v366 = v233;
              v367 = 2114;
              v368 = v234;
              v369 = 2113;
              v370 = v168;
              _os_log_impl(&dword_2334D9000, v163, OS_LOG_TYPE_ERROR, "%{public}@ (userstate) <%{public}@>: no DSID found in account for %{private}@", buf, 0x20u);
            }

            v250(v231, 0, 0, 0, 0, 0, v349[8], v349[9], v349[10], v349[11]);
          }

          else
          {
            v87 = MEMORY[0x277D7FCA0];
            v88 = objc_msgSend_ic_DSID(obja, v83, v84, v85, v86);
            group = objc_msgSend_specificAccountWithDSID_(v87, v89, v88, v90, v91);

            v92 = dispatch_group_create();
            v97 = objc_msgSend_date(MEMORY[0x277CBEAA8], v93, v94, v95, v96);
            dispatch_group_enter(v92);
            v102 = objc_msgSend_defaultManager(MEMORY[0x277D7FA28], v98, v99, v100, v101);
            v335[0] = MEMORY[0x277D85DD0];
            v335[1] = 3221225472;
            v335[2] = sub_23350B1A4;
            v335[3] = &unk_2789DC140;
            v103 = v233;
            v336 = v103;
            v104 = v234;
            v337 = v104;
            v105 = obja;
            v338 = v105;
            v342 = v346;
            v106 = v230;
            v339 = v106;
            v343 = &v348;
            v107 = v97;
            v340 = v107;
            v108 = v92;
            v341 = v108;
            objc_msgSend_getAgeVerificationStateWithCompletion_(v102, v109, v335, v110, v111);

            dispatch_group_enter(v108);
            v333[0] = 0;
            v333[1] = v333;
            v333[2] = 0x3032000000;
            v333[3] = sub_2335095FC;
            v333[4] = sub_23350960C;
            v334 = 0;
            v116 = objc_msgSend_defaultIdentityStore(MEMORY[0x277D7FCA8], v112, v113, v114, v115);
            v323[0] = MEMORY[0x277D85DD0];
            v323[1] = 3221225472;
            v323[2] = sub_23350B314;
            v323[3] = &unk_2789DC168;
            v117 = v103;
            v324 = v117;
            v118 = v104;
            v325 = v118;
            v119 = v105;
            v326 = v119;
            v330 = v346;
            v120 = v106;
            v327 = v120;
            v331 = v333;
            v332 = &v348;
            v121 = v107;
            v328 = v121;
            v122 = v108;
            v329 = v122;
            objc_msgSend_getPropertiesForUserIdentity_completionHandler_(v116, v123, group, v323, v124);

            v125 = _MPLogCategoryAssistant();
            if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
            {
              v130 = objc_msgSend_shortDebugName(v119, v126, v127, v128, v129);
              *buf = 138543875;
              v366 = v117;
              v367 = 2114;
              v368 = v118;
              v369 = 2113;
              v370 = v130;
              _os_log_impl(&dword_2334D9000, v125, OS_LOG_TYPE_DEFAULT, "%{public}@ (userstate) <%{public}@>: fetching subscription status for %{private}@", buf, 0x20u);
            }

            dispatch_group_enter(v122);
            v131 = objc_alloc(MEMORY[0x277D7FC30]);
            v321[0] = MEMORY[0x277D85DD0];
            v321[1] = 3221225472;
            v321[2] = sub_23350B518;
            v321[3] = &unk_2789DC190;
            v226 = group;
            v322 = v226;
            v135 = objc_msgSend_initWithBlock_(v131, v132, v321, v133, v134);
            v136 = v120;
            v137 = objc_alloc(MEMORY[0x277D7FB88]);
            v232 = objc_msgSend_initWithStoreRequestContext_(v137, v138, v135, v139, v140);
            objc_msgSend_setAllowsFallbackToExpiredStatus_(v232, v141, 1, v142, v143);
            objc_msgSend_setAllowsFallbackToStatusNeedingReload_(v232, v144, 1, v145, v146);
            v151 = objc_msgSend_sharedStatusController(MEMORY[0x277D7FB78], v147, v148, v149, v150);
            v310[0] = MEMORY[0x277D85DD0];
            v310[1] = 3221225472;
            v310[2] = sub_23350B58C;
            v310[3] = &unk_2789DC1E0;
            v152 = v117;
            v311 = v152;
            v153 = v118;
            v312 = v153;
            v154 = v119;
            v313 = v154;
            v224 = v135;
            v314 = v224;
            v318 = v346;
            v319 = v344;
            v227 = v136;
            v315 = v227;
            v320 = &v348;
            v225 = v121;
            v316 = v225;
            groupa = v122;
            v317 = groupa;
            objc_msgSend_performSubscriptionStatusRequest_withCompletionHandler_(v151, v155, v232, v310, v156);

            if (v242)
            {
              v157 = _MPLogCategoryAssistant();
              if (os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
              {
                v162 = objc_msgSend_shortDebugName(v154, v158, v159, v160, v161);
                *buf = 138543875;
                v366 = v152;
                v367 = 2114;
                v368 = v153;
                v369 = 2113;
                v370 = v162;
                _os_log_impl(&dword_2334D9000, v157, OS_LOG_TYPE_DEFAULT, "%{public}@ (userstate) <%{public}@>: not syncing token for %{private}@", buf, 0x20u);
              }
            }

            else
            {
              v169 = _MPLogCategoryAssistant();
              if (os_log_type_enabled(v169, OS_LOG_TYPE_DEFAULT))
              {
                v174 = objc_msgSend_shortDebugName(v154, v170, v171, v172, v173);
                *buf = 138543875;
                v366 = v152;
                v367 = 2114;
                v368 = v153;
                v369 = 2113;
                v370 = v174;
                _os_log_impl(&dword_2334D9000, v169, OS_LOG_TYPE_DEFAULT, "%{public}@ (userstate) <%{public}@>: fetching store client token for %{private}@", buf, 0x20u);
              }

              dispatch_group_enter(groupa);
              v298 = MEMORY[0x277D85DD0];
              v299 = 3221225472;
              v300 = sub_23350B9FC;
              v301 = &unk_2789DC208;
              v308 = v346;
              v302 = v152;
              v303 = v153;
              v304 = v154;
              v305 = v227;
              v309 = &v348;
              v306 = v225;
              v307 = groupa;
              MPStoreGetClientTokenStatusForIdentity();

              v157 = v302;
            }

            v179 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v175, v176, v177, v178);
            if (MSVDeviceIsAudioAccessory())
            {
              v184 = objc_msgSend_ic_homeUserIdentifiers(v154, v180, v181, v182, v183);
              v222 = objc_msgSend_count(v184, v185, v186, v187, v188) != 0;

              if (v222)
              {
                v296 = 0u;
                v297 = 0u;
                v294 = 0u;
                v295 = 0u;
                v193 = objc_msgSend_ic_homeUserIdentifiers(v154, v189, v190, v191, v192);
                v199 = objc_msgSend_countByEnumeratingWithState_objects_count_(v193, v194, &v294, buf, 16);
                v243 = v193;
                if (v199)
                {
                  v200 = *v295;
                  do
                  {
                    for (j = 0; j != v199; ++j)
                    {
                      if (*v295 != v200)
                      {
                        objc_enumerationMutation(v243);
                      }

                      v202 = objc_msgSend_UUIDString(*(*(&v294 + 1) + 8 * j), v195, v196, v197, v198);
                      dispatch_group_enter(groupa);
                      v203 = _MPLogCategoryAssistant();
                      if (os_log_type_enabled(v203, OS_LOG_TYPE_DEFAULT))
                      {
                        v208 = objc_msgSend_shortDebugName(v154, v204, v205, v206, v207);
                        *v357 = 138544131;
                        v358 = v152;
                        v359 = 2114;
                        v360 = v153;
                        v361 = 2113;
                        v362 = v202;
                        v363 = 2113;
                        v364 = v208;
                        _os_log_impl(&dword_2334D9000, v203, OS_LOG_TYPE_DEFAULT, "%{public}@ (userstate) <%{public}@>: fetching shared user id for home user id %{private}@ for %{private}@", v357, 0x2Au);
                      }

                      v286[0] = MEMORY[0x277D85DD0];
                      v286[1] = 3221225472;
                      v286[2] = sub_23350BDD0;
                      v286[3] = &unk_2789DC230;
                      v209 = v246;
                      v287 = v209;
                      v288 = v152;
                      v289 = v153;
                      v290 = v154;
                      v291 = groupa;
                      v293 = v346;
                      v292 = v179;
                      objc_msgSend_getConformingSharedUserIdForHomeUserId_completion_(v209, v210, v202, v286, v211);
                    }

                    v199 = objc_msgSend_countByEnumeratingWithState_objects_count_(v243, v195, &v294, buf, 16);
                  }

                  while (v199);
                }
              }

              else
              {
                v243 = _MPLogCategoryAssistant();
                if (os_log_type_enabled(v243, OS_LOG_TYPE_DEFAULT))
                {
                  v217 = objc_msgSend_shortDebugName(v154, v213, v214, v215, v216);
                  *buf = 138543875;
                  v366 = v152;
                  v367 = 2114;
                  v368 = v153;
                  v369 = 2113;
                  v370 = v217;
                  _os_log_impl(&dword_2334D9000, v243, OS_LOG_TYPE_DEFAULT, "%{public}@ (userstate) <%{public}@>: user does not have any home IDs for %{private}@", buf, 0x20u);
                }
              }

              v212 = v222;
            }

            else
            {
              v212 = 0;
            }

            v218 = dispatch_get_global_queue(0, 0);
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = sub_23350BFCC;
            block[3] = &unk_2789DC258;
            v276 = v152;
            v277 = v153;
            v278 = v154;
            v281 = v231;
            v279 = v227;
            v280 = v179;
            v282 = v344;
            v283 = v333;
            v285 = v212;
            v284 = &v348;
            v219 = v179;
            dispatch_group_notify(groupa, v218, block);

            _Block_object_dispose(v333, 8);
          }

          _Block_object_dispose(v344, 8);

          _Block_object_dispose(v346, 8);
          _Block_object_dispose(&v348, 8);

          v51 = v252;
        }

        v48 = v236 + 1;
      }

      while (v236 + 1 != v229);
      v229 = objc_msgSend_countByEnumeratingWithState_objects_count_(v223, v44, &v263, v354, 16);
    }

    while (v229);
  }

  dispatch_group_leave(*(a1 + 56));
}

void sub_23350ABC8(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x508], 8);
  _Block_object_dispose(&STACK[0x598], 8);
  _Block_object_dispose(&STACK[0x5C8], 8);
  _Block_object_dispose(&STACK[0x5F0], 8);
  _Unwind_Resume(a1);
}

void sub_23350AC7C(uint64_t a1, uint64_t a2)
{
  v90 = *MEMORY[0x277D85DE8];
  v3 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    *buf = 138543874;
    v85 = v4;
    v86 = 2114;
    v87 = v5;
    v88 = 2114;
    v89 = v6;
    _os_log_impl(&dword_2334D9000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ (clientstate) <%{public}@>: finished getting dynamite client state: %{public}@", buf, 0x20u);
  }

  objc_msgSend_setInContextUsersStates_(*(a1 + 48), v7, *(a1 + 56), v8, v9);
  v10 = sub_23350552C(*(*(*(a1 + 88) + 8) + 40));
  objc_msgSend_setExpirationDate_(*(a1 + 48), v11, v10, v12, v13);

  (*(*(a1 + 80) + 16))();
  v14 = MEMORY[0x277CCABB0];
  objc_msgSend_timeIntervalSinceNow(*(a1 + 72), v15, v16, v17, v18);
  v24 = objc_msgSend_numberWithDouble_(v14, v20, v21, v22, v23, fabs(v19));
  objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 64), v25, v24, @"duration", v26);

  LODWORD(v27) = *(*(*(a1 + 104) + 8) + 32);
  v32 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v28, v29, v30, v31, v27);
  objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 64), v33, v32, @"age_verification_duration", v34);

  LODWORD(v35) = *(*(*(a1 + 104) + 8) + 36);
  v40 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v36, v37, v38, v39, v35);
  objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 64), v41, v40, @"subscription_status_duration", v42);

  LODWORD(v43) = *(*(*(a1 + 104) + 8) + 40);
  v48 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v44, v45, v46, v47, v43);
  objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 64), v49, v48, @"token_duration", v50);

  LODWORD(v51) = *(*(*(a1 + 104) + 8) + 44);
  v56 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v52, v53, v54, v55, v51);
  objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 64), v57, v56, @"use_history_duration", v58);

  v59 = MEMORY[0x277CCABB0];
  v64 = objc_msgSend_count(*(a1 + 56), v60, v61, v62, v63);
  v68 = objc_msgSend_numberWithUnsignedInteger_(v59, v65, v64, v66, v67);
  objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 64), v69, v68, @"accounts_on_device", v70);

  v74 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v71, *(*(*(a1 + 112) + 8) + 24), v72, v73);
  objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 64), v75, v74, @"accounts_without_state", v76);

  v80 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v77, *(*(*(a1 + 120) + 8) + 24), v78, v79);
  objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 64), v81, v80, @"token_failure", v82);

  v83 = *(a1 + 64);
  AnalyticsSendEventLazy();
}

void sub_23350AFB0(uint64_t a1, void *a2, void *a3, void *a4, void *a5, char a6, float a7, float a8, float a9, float a10)
{
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23350C52C;
  block[3] = &unk_2789DC028;
  v35 = v19;
  v33 = *(a1 + 40);
  v24 = *(&v33 + 1);
  v25 = *(a1 + 56);
  v26 = *(a1 + 64);
  *&v27 = v25;
  *(&v27 + 1) = v26;
  v36 = v33;
  v37 = v27;
  v43 = *(a1 + 96);
  v38 = *(a1 + 72);
  v39 = v22;
  v51 = *(a1 + 144);
  v44 = *(a1 + 112);
  v40 = v21;
  v28 = *(a1 + 80);
  v52 = a6;
  v41 = v28;
  v42 = v20;
  v45 = *(a1 + 120);
  v46 = *(a1 + 136);
  v47 = a7;
  v48 = a8;
  v49 = a9;
  v50 = a10;
  v29 = v20;
  v30 = v21;
  v31 = v22;
  v32 = v19;
  dispatch_sync(v23, block);
  dispatch_group_leave(*(a1 + 88));
}

void sub_23350B1A4(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = objc_msgSend_status(v3, v5, v6, v7, v8);
    v16 = objc_msgSend_shortDebugName(*(a1 + 48), v12, v13, v14, v15);
    v26 = 138544131;
    v27 = v9;
    v28 = 2114;
    v29 = v10;
    v30 = 2048;
    v31 = v11;
    v32 = 2113;
    v33 = v16;
    _os_log_impl(&dword_2334D9000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ (userstate) <%{public}@>: age verification: %ld for %{private}@", &v26, 0x2Au);
  }

  os_unfair_lock_lock((*(*(a1 + 80) + 8) + 32));
  if (objc_msgSend_status(v3, v17, v18, v19, v20) == 2)
  {
    objc_msgSend_setAgeVerificationRequired_(*(a1 + 56), v21, 1, v23, v24);
  }

  objc_msgSend_timeIntervalSinceNow(*(a1 + 64), v21, v22, v23, v24);
  *&v25 = v25;
  *(*(*(a1 + 88) + 8) + 32) = fabsf(*&v25);
  os_unfair_lock_unlock((*(*(a1 + 80) + 8) + 32));
  dispatch_group_leave(*(a1 + 72));
}

void sub_23350B314(uint64_t a1, void *a2)
{
  v69 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v8 = objc_msgSend_privateListeningEnabled(v3, v4, v5, v6, v7);
  if (objc_msgSend_isCurrentDeviceValidHomeAccessory(MEMORY[0x277CD5D90], v9, v10, v11, v12))
  {
    v17 = MEMORY[0x277CD5D98];
    v18 = objc_msgSend_homeUserIdentifiers(v3, v13, v14, v15, v16);
    v22 = objc_msgSend_userMonitorWithHomeIdentifiers_(v17, v19, v18, v20, v21);

    if (v22)
    {
      v27 = MEMORY[0x277CCABB0];
      isPrivateListeningEnabledForCurrentAccessory = objc_msgSend_isPrivateListeningEnabledForCurrentAccessory(v22, v23, v24, v25, v26);
      v32 = objc_msgSend_numberWithBool_(v27, v29, isPrivateListeningEnabledForCurrentAccessory, v30, v31);

      v8 = v32;
    }
  }

  v33 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v38 = *(a1 + 32);
    v39 = *(a1 + 40);
    v40 = objc_msgSend_shortDebugName(*(a1 + 48), v34, v35, v36, v37);
    v61 = 138544131;
    v62 = v38;
    v63 = 2114;
    v64 = v39;
    v65 = 2114;
    v66 = v8;
    v67 = 2113;
    v68 = v40;
    _os_log_impl(&dword_2334D9000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@ (userstate) <%{public}@>: user history unmodifiable: %{public}@ for %{private}@", &v61, 0x2Au);
  }

  os_unfair_lock_lock((*(*(a1 + 80) + 8) + 32));
  objc_msgSend_setUserHistoryUnmodifiable_(*(a1 + 56), v41, v8, v42, v43);
  v44 = MEMORY[0x277CCABB0];
  isActiveLocker = objc_msgSend_isActiveLocker(v3, v45, v46, v47, v48);
  v53 = objc_msgSend_numberWithBool_(v44, v50, isActiveLocker, v51, v52);
  v54 = *(*(a1 + 88) + 8);
  v55 = *(v54 + 40);
  *(v54 + 40) = v53;

  objc_msgSend_timeIntervalSinceNow(*(a1 + 64), v56, v57, v58, v59);
  *&v60 = v60;
  *(*(*(a1 + 96) + 8) + 44) = fabsf(*&v60);
  os_unfair_lock_unlock((*(*(a1 + 80) + 8) + 32));
  dispatch_group_leave(*(a1 + 72));
}

void sub_23350B518(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  objc_msgSend_setIdentity_(v3, v4, v2, v5, v6);
  v7 = objc_alloc(MEMORY[0x277D7FC40]);
  v14 = objc_msgSend_initWithUserInteractionLevel_(v7, v8, 1, v9, v10);
  objc_msgSend_setAuthenticationProvider_(v3, v11, v14, v12, v13);
}

void sub_23350B58C(uint64_t a1, void *a2, void *a3)
{
  v113 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v10 = a3;
  if (v10)
  {
    v11 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      *buf = 138543874;
      v106 = v12;
      v107 = 2114;
      v108 = v13;
      v109 = 2114;
      *v110 = v10;
      _os_log_impl(&dword_2334D9000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ (userstate) <%{public}@>: Failed to load subscription status. error=%{public}@", buf, 0x20u);
    }

    v18 = objc_msgSend_domain(v10, v14, v15, v16, v17);
    if (objc_msgSend_isEqualToString_(v18, v19, *MEMORY[0x277D7F900], v20, v21))
    {
      v26 = objc_msgSend_code(v10, v22, v23, v24, v25);

      if (v26 == -7007)
      {
        v27 = _MPLogCategoryAssistant();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v32 = *(a1 + 32);
          v33 = *(a1 + 40);
          v34 = objc_msgSend_shortDebugName(*(a1 + 48), v28, v29, v30, v31);
          *buf = 138543875;
          v106 = v32;
          v107 = 2114;
          v108 = v33;
          v109 = 2113;
          *v110 = v34;
          _os_log_impl(&dword_2334D9000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@ (userstate) <%{public}@>: Privacy acceptance required - falling back to lightweight status for %{private}@", buf, 0x20u);
        }

        v35 = objc_alloc(MEMORY[0x277D7FAF8]);
        v39 = objc_msgSend_initWithRequestContext_(v35, v36, *(a1 + 56), v37, v38);
        v96[0] = MEMORY[0x277D85DD0];
        v96[1] = 3221225472;
        v96[2] = sub_23350C0E8;
        v96[3] = &unk_2789DC1B8;
        v103 = *(a1 + 88);
        v97 = *(a1 + 32);
        v98 = *(a1 + 40);
        v99 = *(a1 + 48);
        v40 = *(a1 + 64);
        v41 = *(a1 + 104);
        v100 = v40;
        v104 = v41;
        v101 = *(a1 + 72);
        v102 = *(a1 + 80);
        objc_msgSend_performRequestWithResponseHandler_(v39, v42, v96, v43, v44);

        goto LABEL_17;
      }
    }

    else
    {
    }
  }

  v39 = objc_msgSend_subscriptionStatus(v5, v6, v7, v8, v9);
  v49 = objc_msgSend_capabilities(v39, v45, v46, v47, v48) & 0x101;
  isMatchEnabled = objc_msgSend_isMatchEnabled(v39, v50, v51, v52, v53);
  v55 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
  {
    v60 = v39;
    v61 = v10;
    v62 = *(a1 + 32);
    v63 = *(a1 + 40);
    v64 = objc_msgSend_shortDebugName(*(a1 + 48), v56, v57, v58, v59);
    *buf = 138544387;
    v106 = v62;
    v107 = 2114;
    v108 = v63;
    v10 = v61;
    v39 = v60;
    v109 = 1024;
    *v110 = v49 == 257;
    *&v110[4] = 1024;
    *&v110[6] = isMatchEnabled;
    v111 = 2113;
    v112 = v64;
    _os_log_impl(&dword_2334D9000, v55, OS_LOG_TYPE_DEFAULT, "%{public}@ (userstate) <%{public}@>: store account is a subscriber: %{BOOL}u, match subscriber: %{BOOL}u for %{private}@", buf, 0x2Cu);
  }

  os_unfair_lock_lock((*(*(a1 + 88) + 8) + 32));
  v68 = MEMORY[0x277D47D60];
  if (v49 != 257)
  {
    v68 = MEMORY[0x277D47D68];
  }

  objc_msgSend_setStatus_(*(a1 + 64), v65, *v68, v66, v67);
  v72 = MEMORY[0x277D483C0];
  if (!isMatchEnabled)
  {
    v72 = MEMORY[0x277D483C8];
  }

  objc_msgSend_setITunesMatchSubscriptionStatus_(*(a1 + 64), v69, *v72, v70, v71);
  objc_msgSend_setIsPromotionRelatedStatus_(*(a1 + 64), v73, 0, v74, v75);
  v80 = objc_msgSend_eligibleOffers(v39, v76, v77, v78, v79);
  objc_msgSend_setEligibleOffers_(*(a1 + 64), v81, v80, v82, v83);

  objc_msgSend_timeIntervalSinceNow(*(a1 + 72), v84, v85, v86, v87);
  *&v88 = v88;
  *(*(*(a1 + 104) + 8) + 44) = fabsf(*&v88);
  v93 = objc_msgSend_expirationDate(v39, v89, v90, v91, v92);
  v94 = *(*(a1 + 96) + 8);
  v95 = *(v94 + 40);
  *(v94 + 40) = v93;

  os_unfair_lock_unlock((*(*(a1 + 88) + 8) + 32));
  dispatch_group_leave(*(a1 + 80));
LABEL_17:
}

void sub_23350B9FC(uint64_t a1, void *a2, void *a3)
{
  v135 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  os_unfair_lock_lock((*(*(a1 + 80) + 8) + 32));
  v11 = objc_alloc_init(MEMORY[0x277D47B80]);
  if (v6)
  {
    v12 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 32);
      v18 = *(a1 + 40);
      v19 = objc_msgSend_shortDebugName(*(a1 + 48), v13, v14, v15, v16);
      v127 = 138544131;
      v128 = v17;
      v129 = 2114;
      v130 = v18;
      v131 = 2113;
      v132 = v19;
      v133 = 2114;
      v134 = v6;
      _os_log_impl(&dword_2334D9000, v12, OS_LOG_TYPE_ERROR, "%{public}@ (userstate) <%{public}@>: failed fetching store client token status for %{private}@: %{public}@", &v127, 0x2Au);
    }

    v20 = MEMORY[0x277CCABB0];
    v25 = objc_msgSend_code(v6, v21, v22, v23, v24);
    v29 = objc_msgSend_numberWithInteger_(v20, v26, v25, v27, v28);
    objc_msgSend_setErrorCode_(v11, v30, v29, v31, v32);
  }

  else
  {
    v33 = MEMORY[0x277CCABB0];
    objc_msgSend_lastUpdateAttemptTime(v5, v7, v8, v9, v10);
    v38 = objc_msgSend_numberWithDouble_(v33, v34, v35, v36, v37);
    objc_msgSend_setLastUpdateAttemptTime_(v11, v39, v38, v40, v41);

    v42 = MEMORY[0x277CCABB0];
    shouldExcludeFromBackgroundRefresh = objc_msgSend_shouldExcludeFromBackgroundRefresh(v5, v43, v44, v45, v46);
    v51 = objc_msgSend_numberWithBool_(v42, v48, shouldExcludeFromBackgroundRefresh, v49, v50);
    objc_msgSend_setShouldExcludeFromBackgroundRefresh_(v11, v52, v51, v53, v54);

    v59 = objc_msgSend_lastError(v5, v55, v56, v57, v58);

    v60 = _MPLogCategoryAssistant();
    v61 = v60;
    if (v59)
    {
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        v66 = *(a1 + 32);
        v67 = *(a1 + 40);
        v68 = objc_msgSend_shortDebugName(*(a1 + 48), v62, v63, v64, v65);
        v73 = objc_msgSend_lastError(v5, v69, v70, v71, v72);
        v127 = 138544131;
        v128 = v66;
        v129 = 2114;
        v130 = v67;
        v131 = 2113;
        v132 = v68;
        v133 = 2114;
        v134 = v73;
        _os_log_impl(&dword_2334D9000, v61, OS_LOG_TYPE_ERROR, "%{public}@ (userstate) <%{public}@>: error fetching client token for %{private}@: %{public}@", &v127, 0x2Au);
      }

      v74 = MEMORY[0x277CCABB0];
      v29 = objc_msgSend_lastError(v5, v75, v76, v77, v78);
      v83 = objc_msgSend_code(v29, v79, v80, v81, v82);
      v87 = objc_msgSend_numberWithInteger_(v74, v84, v83, v85, v86);
      objc_msgSend_setErrorCode_(v11, v88, v87, v89, v90);
    }

    else
    {
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        v95 = *(a1 + 32);
        v96 = *(a1 + 40);
        v97 = objc_msgSend_tokenResult(v5, v91, v92, v93, v94);
        v102 = objc_msgSend_token(v97, v98, v99, v100, v101);
        v107 = objc_msgSend_shortDebugName(*(a1 + 48), v103, v104, v105, v106);
        v127 = 138544131;
        v128 = v95;
        v129 = 2114;
        v130 = v96;
        v131 = 2113;
        v132 = v102;
        v133 = 2113;
        v134 = v107;
        _os_log_impl(&dword_2334D9000, v61, OS_LOG_TYPE_DEFAULT, "%{public}@ (userstate) <%{public}@>: fetched store client token %{private}@ for %{private}@", &v127, 0x2Au);
      }

      v29 = objc_msgSend_tokenResult(v5, v108, v109, v110, v111);
      v87 = objc_msgSend_token(v29, v112, v113, v114, v115);
      objc_msgSend_setUserToken_(*(a1 + 56), v116, v87, v117, v118);
    }
  }

  objc_msgSend_setUserTokenStatus_(*(a1 + 56), v119, v11, v120, v121);
  objc_msgSend_timeIntervalSinceNow(*(a1 + 64), v122, v123, v124, v125);
  *&v126 = v126;
  *(*(*(a1 + 88) + 8) + 40) = fabsf(*&v126);
  os_unfair_lock_unlock((*(*(a1 + 80) + 8) + 32));
  dispatch_group_leave(*(a1 + 72));
}

void sub_23350BDD0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v39 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v11 = _MPLogCategoryAssistant();
  v12 = v11;
  if (v9)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 40);
      v18 = *(a1 + 48);
      v19 = objc_msgSend_shortDebugName(*(a1 + 56), v13, v14, v15, v16);
      v29 = 138544131;
      v30 = v17;
      v31 = 2114;
      v32 = v18;
      v33 = 2113;
      v34 = v19;
      v35 = 2114;
      v36 = v9;
      _os_log_impl(&dword_2334D9000, v12, OS_LOG_TYPE_ERROR, "%{public}@ (userstate) <%{public}@>: failed fetching shared user id for %{private}@: %{public}@", &v29, 0x2Au);
    }
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(a1 + 40);
      v25 = *(a1 + 48);
      v26 = objc_msgSend_shortDebugName(*(a1 + 56), v20, v21, v22, v23);
      v29 = 138544387;
      v30 = v24;
      v31 = 2114;
      v32 = v25;
      v33 = 2114;
      v34 = v8;
      v35 = 2113;
      v36 = v7;
      v37 = 2114;
      v38 = v26;
      _os_log_impl(&dword_2334D9000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ (userstate) <%{public}@>: fetched shared user id: %{public}@:%{private}@ for %{public}@", &v29, 0x34u);
    }

    os_unfair_lock_lock((*(*(a1 + 80) + 8) + 32));
    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 72), v27, v7, v8, v28);
    os_unfair_lock_unlock((*(*(a1 + 80) + 8) + 32));
  }

  dispatch_group_leave(*(a1 + 64));
}

uint64_t sub_23350BFCC(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = objc_msgSend_shortDebugName(*(a1 + 48), v4, v5, v6, v7);
    v12 = 138543875;
    v13 = v8;
    v14 = 2114;
    v15 = v9;
    v16 = 2113;
    v17 = v10;
    _os_log_impl(&dword_2334D9000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ (userstate) <%{public}@>: finished getting user state for %{private}@", &v12, 0x20u);
  }

  return (*(*(a1 + 72) + 16))(*(*(*(a1 + 96) + 8) + 32), *(*(*(a1 + 96) + 8) + 36), *(*(*(a1 + 96) + 8) + 40), *(*(*(a1 + 96) + 8) + 44));
}

void sub_23350C0E8(uint64_t a1, void *a2)
{
  v58 = *MEMORY[0x277D85DE8];
  v3 = *(*(a1 + 80) + 8);
  v4 = a2;
  os_unfair_lock_lock(v3 + 8);
  v9 = objc_msgSend_lightweightSubscriptionStatus(v4, v5, v6, v7, v8);

  v14 = objc_msgSend_expirationDate(v9, v10, v11, v12, v13);
  v15 = *(*(a1 + 88) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  v21 = objc_msgSend_capabilities(v9, v17, v18, v19, v20) & 0x101;
  v22 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v27 = *(a1 + 32);
    v28 = *(a1 + 40);
    v29 = objc_msgSend_shortDebugName(*(a1 + 48), v23, v24, v25, v26);
    v50 = 138544131;
    v51 = v27;
    v52 = 2114;
    v53 = v28;
    v54 = 1024;
    v55 = v21 == 257;
    v56 = 2113;
    v57 = v29;
    _os_log_impl(&dword_2334D9000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ (userstate) <%{public}@>: store account is a subscriber: %{BOOL}u for %{private}@", &v50, 0x26u);
  }

  v33 = MEMORY[0x277D47D60];
  if (v21 != 257)
  {
    v33 = MEMORY[0x277D47D68];
  }

  objc_msgSend_setStatus_(*(a1 + 56), v30, *v33, v31, v32);
  objc_msgSend_setIsPromotionRelatedStatus_(*(a1 + 56), v34, 0, v35, v36);
  v41 = objc_msgSend_eligibleOffers(v9, v37, v38, v39, v40);
  objc_msgSend_setEligibleOffers_(*(a1 + 56), v42, v41, v43, v44);

  objc_msgSend_timeIntervalSinceNow(*(a1 + 64), v45, v46, v47, v48);
  *&v49 = v49;
  *(*(*(a1 + 96) + 8) + 44) = fabsf(*&v49);
  os_unfair_lock_unlock((*(*(a1 + 80) + 8) + 32));
  dispatch_group_leave(*(a1 + 72));
}

Class sub_23350C2CC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = *MEMORY[0x277D85DE8];
  v22[0] = 0;
  if (!qword_2814EE830)
  {
    v22[1] = MEMORY[0x277D85DD0];
    v22[2] = 3221225472;
    v22[3] = sub_23350C4B8;
    v22[4] = &unk_2789DC2B8;
    v22[5] = v22;
    v23 = xmmword_2789DC2D8;
    v24 = 0;
    qword_2814EE830 = _sl_dlopen();
  }

  if (!qword_2814EE830)
  {
    v11 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, a3, a4, a5);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "void *AssistantServicesLibrary(void)", v13, v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v11, v16, v15, @"MPAssistantUtilities.m", 60, @"%s", v22[0]);

    goto LABEL_10;
  }

  if (v22[0])
  {
    free(v22[0]);
  }

  result = objc_getClass("AFMultiUserConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v11 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v7, v8, v9, v10);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "Class getAFMultiUserConnectionClass(void)_block_invoke", v18, v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v11, v21, v20, @"MPAssistantUtilities.m", 61, @"Unable to find class %s", "AFMultiUserConnection");

LABEL_10:
    __break(1u);
  }

  qword_2814EE810 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_23350C4B8(uint64_t a1)
{
  result = _sl_dlopen();
  qword_2814EE830 = result;
  return result;
}

void sub_23350C52C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1;
  v373 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    if ((objc_msgSend_isEqual_(*(a1 + 40), a2, *(a1 + 48), a4, a5) & 1) != 0 || !*(v5 + 48) && objc_msgSend_isActive(*(v5 + 40), v6, v7, v8, v9))
    {
      v10 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(v5 + 56);
        v16 = *(v5 + 64);
        v17 = objc_msgSend_shortDebugName(*(v5 + 40), v11, v12, v13, v14);
        *buf = 138543875;
        v363 = v15;
        v364 = 2114;
        v365 = v16;
        v366 = 2113;
        v367 = v17;
        _os_log_impl(&dword_2334D9000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ (clientstate) <%{public}@>: account %{private}@ is default", buf, 0x20u);
      }

      v18 = MEMORY[0x277CCACA8];
      v23 = objc_msgSend_syncSharedUserId(*(v5 + 32), v19, v20, v21, v22);
      v28 = objc_msgSend_userHistoryUnmodifiable(*(v5 + 32), v24, v25, v26, v27);
      v33 = objc_msgSend_stringValue(v28, v29, v30, v31, v32);
      v38 = objc_msgSend_status(*(v5 + 32), v34, v35, v36, v37);
      if (objc_msgSend_ageVerificationRequired(*(v5 + 32), v39, v40, v41, v42))
      {
        v47 = @"YES";
      }

      else
      {
        v47 = @"NO";
      }

      v48 = objc_msgSend_defaultMediaPlaybackAppBundleIdentifier(*(v5 + 32), v43, v44, v45, v46);
      if (objc_msgSend_isPromotionRelatedStatus(*(v5 + 32), v49, v50, v51, v52))
      {
        v57 = @"YES";
      }

      else
      {
        v57 = @"NO";
      }

      v58 = objc_msgSend_eligibleOffers(*(a1 + 32), v53, v54, v55, v56);
      v352 = v57;
      v5 = a1;
      v62 = objc_msgSend_stringWithFormat_(v18, v59, @"Default_UserState_v2_%@_%@_%@_%@_%@_%@_%@", v60, v61, v23, v33, v38, v47, v48, v352, v58);

      os_unfair_lock_lock((*(*(a1 + 112) + 8) + 32));
      v63 = *(*(*(a1 + 120) + 8) + 40);
      v68 = objc_msgSend_ic_DSID(*(a1 + 40), v64, v65, v66, v67);
      objc_msgSend_setObject_forKeyedSubscript_(v63, v69, v62, v68, v70);

      os_unfair_lock_unlock((*(*(a1 + 112) + 8) + 32));
      objc_msgSend_setDefaultUserState_(*(v5 + 72), v71, *(v5 + 32), v72, v73);
      v74 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
      {
        v79 = *(a1 + 56);
        v80 = *(a1 + 64);
        v81 = objc_msgSend_dictionary(*(a1 + 32), v75, v76, v77, v78);
        *buf = 138543875;
        v363 = v79;
        v364 = 2114;
        v365 = v80;
        v366 = 2113;
        v367 = v81;
        _os_log_impl(&dword_2334D9000, v74, OS_LOG_TYPE_DEFAULT, "%{public}@ (clientstate) <%{public}@>: default user state: %{private}@", buf, 0x20u);
      }

      objc_msgSend_setICloudMusicLibraryToggle_(*(a1 + 72), v82, *(a1 + 80), v83, v84);
      v89 = objc_msgSend_ageVerificationRequired(*(a1 + 32), v85, v86, v87, v88);
      objc_msgSend_setAgeVerificationRequired_(*(a1 + 72), v90, v89, v91, v92);
      v97 = objc_msgSend_status(*(a1 + 32), v93, v94, v95, v96);
      objc_msgSend_setStatus_(*(a1 + 72), v98, v97, v99, v100);

      v105 = objc_msgSend_iTunesMatchSubscriptionStatus(*(a1 + 32), v101, v102, v103, v104);
      objc_msgSend_setITunesMatchSubscriptionStatus_(*(a1 + 72), v106, v105, v107, v108);

      v113 = objc_msgSend_userHistoryUnmodifiable(*(a1 + 32), v109, v110, v111, v112);
      objc_msgSend_setUserHistoryUnmodifiable_(*(a1 + 72), v114, v113, v115, v116);

      v121 = objc_msgSend_userToken(*(a1 + 32), v117, v118, v119, v120);
      objc_msgSend_setUserToken_(*(a1 + 72), v122, v121, v123, v124);

      v129 = objc_msgSend_userTokenStatus(*(a1 + 32), v125, v126, v127, v128);
      objc_msgSend_setUserTokenStatus_(*(a1 + 72), v130, v129, v131, v132);

      v137 = objc_msgSend_eligibleOffers(*(a1 + 32), v133, v134, v135, v136);
      objc_msgSend_setEligibleOffers_(*(a1 + 72), v138, v137, v139, v140);

      isPromotionRelatedStatus = objc_msgSend_isPromotionRelatedStatus(*(a1 + 32), v141, v142, v143, v144);
      objc_msgSend_setIsPromotionRelatedStatus_(*(a1 + 72), v146, isPromotionRelatedStatus, v147, v148);
      v153 = objc_msgSend_xpAbCookie(*(a1 + 32), v149, v150, v151, v152);
      objc_msgSend_setXpAbCookie_(*(a1 + 72), v154, v153, v155, v156);

      if ((*(a1 + 176) & 1) == 0)
      {
        v161 = objc_msgSend_userToken(*(a1 + 72), v157, v158, v159, v160);
        v166 = objc_msgSend_length(v161, v162, v163, v164, v165);

        if (!v166)
        {
          ++*(*(*(a1 + 128) + 8) + 24);
        }
      }
    }

    v360 = 0u;
    v361 = 0u;
    v358 = 0u;
    v359 = 0u;
    obj = objc_msgSend_allKeys(*(v5 + 88), v6, v7, v8, v9);
    v356 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v167, &v358, v372, 16);
    if (v356)
    {
      v354 = *v359;
      do
      {
        v168 = 0;
        do
        {
          if (*v359 != v354)
          {
            objc_enumerationMutation(obj);
          }

          v169 = *(*(&v358 + 1) + 8 * v168);
          v170 = _MPLogCategoryAssistant();
          if (os_log_type_enabled(v170, OS_LOG_TYPE_DEFAULT))
          {
            v175 = *(v5 + 56);
            v176 = *(v5 + 64);
            v177 = objc_msgSend_shortDebugName(*(v5 + 40), v171, v172, v173, v174);
            v181 = objc_msgSend_objectForKeyedSubscript_(*(v5 + 88), v178, v169, v179, v180);
            *buf = 138544387;
            v363 = v175;
            v364 = 2114;
            v365 = v176;
            v366 = 2113;
            v367 = v177;
            v368 = 2114;
            v369 = v169;
            v370 = 2113;
            v371 = v181;
            _os_log_impl(&dword_2334D9000, v170, OS_LOG_TYPE_DEFAULT, "%{public}@ (clientstate) <%{public}@>: account %{private}@ has shared user ID %{public}@:%{private}@", buf, 0x34u);
          }

          v357 = v168;

          v189 = objc_msgSend_copy(*(v5 + 32), v182, v183, v184, v185);
          if ((*(v5 + 176) & 1) == 0)
          {
            v190 = objc_msgSend_objectForKeyedSubscript_(*(v5 + 88), v186, v169, v187, v188);
            objc_msgSend_setSharedUserId_(v189, v191, v190, v192, v193);
          }

          objc_msgSend_setSyncSharedUserId_(v189, v186, v169, v187, v188);
          v194 = MEMORY[0x277CCACA8];
          v199 = objc_msgSend_syncSharedUserId(v189, v195, v196, v197, v198);
          v204 = objc_msgSend_userHistoryUnmodifiable(v189, v200, v201, v202, v203);
          v209 = objc_msgSend_stringValue(v204, v205, v206, v207, v208);
          v214 = objc_msgSend_status(v189, v210, v211, v212, v213);
          v223 = @"NO";
          if (objc_msgSend_ageVerificationRequired(v189, v215, v216, v217, v218))
          {
            v224 = @"YES";
          }

          else
          {
            v224 = @"NO";
          }

          v225 = objc_msgSend_defaultMediaPlaybackAppBundleIdentifier(v189, v219, v220, v221, v222);
          if (objc_msgSend_isPromotionRelatedStatus(v189, v226, v227, v228, v229))
          {
            v223 = @"YES";
          }

          v234 = objc_msgSend_eligibleOffers(v189, v230, v231, v232, v233);
          v238 = objc_msgSend_stringWithFormat_(v194, v235, @"UserState_v2_%@_%@_%@_%@_%@_%@_%@", v236, v237, v199, v209, v214, v224, v225, v223, v234);

          v5 = a1;
          v239 = _MPLogCategoryAssistant();
          if (os_log_type_enabled(v239, OS_LOG_TYPE_DEFAULT))
          {
            v244 = *(a1 + 56);
            v245 = *(a1 + 64);
            v246 = objc_msgSend_shortDebugName(*(a1 + 40), v240, v241, v242, v243);
            v251 = objc_msgSend_dictionary(v189, v247, v248, v249, v250);
            *buf = 138544131;
            v363 = v244;
            v364 = 2114;
            v365 = v245;
            v366 = 2113;
            v367 = v246;
            v368 = 2113;
            v369 = v251;
            _os_log_impl(&dword_2334D9000, v239, OS_LOG_TYPE_DEFAULT, "%{public}@ (clientstate) <%{public}@>: %{private}@ user state: %{private}@", buf, 0x2Au);
          }

          os_unfair_lock_lock((*(*(a1 + 112) + 8) + 32));
          objc_msgSend_addObject_(*(a1 + 96), v252, v189, v253, v254);
          v255 = *(*(*(a1 + 120) + 8) + 40);
          v260 = objc_msgSend_ic_DSID(*(a1 + 40), v256, v257, v258, v259);
          objc_msgSend_setObject_forKeyedSubscript_(v255, v261, v238, v260, v262);

          os_unfair_lock_unlock((*(*(a1 + 112) + 8) + 32));
          v168 = v357 + 1;
        }

        while (v356 != v357 + 1);
        v356 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v263, &v358, v372, 16);
      }

      while (v356);
    }

    if (!objc_msgSend_count(*(v5 + 88), v264, v265, v266, v267) && *(v5 + 177) == 1)
    {
      v268 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v268, OS_LOG_TYPE_DEFAULT))
      {
        v273 = *(v5 + 56);
        v274 = *(v5 + 64);
        v275 = objc_msgSend_shortDebugName(*(v5 + 40), v269, v270, v271, v272);
        *buf = 138543875;
        v363 = v273;
        v364 = 2114;
        v365 = v274;
        v366 = 2113;
        v367 = v275;
        _os_log_impl(&dword_2334D9000, v268, OS_LOG_TYPE_DEFAULT, "%{public}@ (clientstate) <%{public}@>: account %{private}@ has no shared user IDs", buf, 0x20u);
      }

      v276 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v276, OS_LOG_TYPE_DEFAULT))
      {
        v281 = *(v5 + 56);
        v282 = *(v5 + 64);
        v283 = objc_msgSend_shortDebugName(*(v5 + 40), v277, v278, v279, v280);
        v288 = objc_msgSend_dictionary(*(v5 + 32), v284, v285, v286, v287);
        *buf = 138544131;
        v363 = v281;
        v364 = 2114;
        v365 = v282;
        v366 = 2113;
        v367 = v283;
        v368 = 2113;
        v369 = v288;
        _os_log_impl(&dword_2334D9000, v276, OS_LOG_TYPE_DEFAULT, "%{public}@ (clientstate) <%{public}@>: %{private}@ user state: %{private}@", buf, 0x2Au);
      }

      v289 = MEMORY[0x277CCACA8];
      v294 = objc_msgSend_userHistoryUnmodifiable(*(v5 + 32), v290, v291, v292, v293);
      v299 = objc_msgSend_stringValue(v294, v295, v296, v297, v298);
      v304 = objc_msgSend_status(*(v5 + 32), v300, v301, v302, v303);
      if (objc_msgSend_ageVerificationRequired(*(v5 + 32), v305, v306, v307, v308))
      {
        v313 = @"YES";
      }

      else
      {
        v313 = @"NO";
      }

      v314 = objc_msgSend_defaultMediaPlaybackAppBundleIdentifier(*(v5 + 32), v309, v310, v311, v312);
      v318 = objc_msgSend_stringWithFormat_(v289, v315, @"UserState_v2_%@_%@_%@_%@_%@", v316, v317, @"none", v299, v304, v313, v314);

      os_unfair_lock_lock((*(*(v5 + 112) + 8) + 32));
      v319 = *(v5 + 96);
      v324 = objc_msgSend_copy(*(v5 + 32), v320, v321, v322, v323);
      objc_msgSend_addObject_(v319, v325, v324, v326, v327);

      v328 = *(*(*(v5 + 120) + 8) + 40);
      v333 = objc_msgSend_ic_DSID(*(v5 + 40), v329, v330, v331, v332);
      objc_msgSend_setObject_forKeyedSubscript_(v328, v334, v318, v333, v335);

      os_unfair_lock_unlock((*(*(v5 + 112) + 8) + 32));
    }
  }

  else
  {
    ++*(*(*(a1 + 136) + 8) + 24);
  }

  v336 = *(v5 + 104);
  if (v336)
  {
    if (!*(*(*(v5 + 144) + 8) + 40) || (objc_msgSend_timeIntervalSince1970(v336, a2, a3, a4, a5), v338 = v337, objc_msgSend_timeIntervalSince1970(*(*(*(v5 + 144) + 8) + 40), v339, v340, v341, v342), v338 < v343))
    {
      v344 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v344, OS_LOG_TYPE_DEFAULT))
      {
        v349 = *(v5 + 56);
        v350 = *(v5 + 64);
        v351 = objc_msgSend_shortDebugName(*(v5 + 40), v345, v346, v347, v348);
        *buf = 138543875;
        v363 = v349;
        v364 = 2114;
        v365 = v350;
        v366 = 2113;
        v367 = v351;
        _os_log_impl(&dword_2334D9000, v344, OS_LOG_TYPE_DEFAULT, "%{public}@ (clientstate) <%{public}@>: account %{private}@ has shortest expiration time", buf, 0x20u);
      }

      objc_storeStrong((*(*(v5 + 144) + 8) + 40), *(v5 + 104));
    }
  }

  *(*(*(v5 + 152) + 8) + 32) = *(v5 + 160) + *(*(*(v5 + 152) + 8) + 32);
  *(*(*(v5 + 152) + 8) + 40) = *(v5 + 168) + *(*(*(v5 + 152) + 8) + 40);
  *(*(*(v5 + 152) + 8) + 44) = *(v5 + 172) + *(*(*(v5 + 152) + 8) + 44);
  *(*(*(v5 + 152) + 8) + 36) = *(v5 + 164) + *(*(*(v5 + 152) + 8) + 36);
}

uint64_t sub_23350D060(uint64_t a1, void *a2)
{
  v2 = a2;
  v7 = objc_msgSend_currentDeviceInfo(MEMORY[0x277D7FA80], v3, v4, v5, v6);
  if (objc_msgSend_supportsMultipleITunesAccounts(v7, v8, v9, v10, v11))
  {
    isActive = 1;
  }

  else
  {
    isActive = objc_msgSend_isActive(v2, v12, v13, v14, v15);
  }

  return isActive;
}

void sub_23350D0C8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = *MEMORY[0x277D85DE8];
  isActiveUser = objc_msgSend_isActiveUser(*(a1 + 40), a2, a3, a4, a5);
  objc_msgSend_setActiveTvUser_(*(a1 + 32), v7, isActiveUser, v8, v9);
  v10 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 48);
    v15 = *(a1 + 56);
    v17 = objc_msgSend_isActiveUser(*(a1 + 40), v11, v12, v13, v14);
    v18 = 138543874;
    v19 = v16;
    v20 = 2114;
    v21 = v15;
    v22 = 1024;
    v23 = v17;
    _os_log_impl(&dword_2334D9000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ (clientstate) <%{public}@>: active TV user: %{BOOL}u", &v18, 0x1Cu);
  }
}

void sub_23350D1AC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v12[0] = 0;
  if (!qword_2814EE828)
  {
    v12[1] = MEMORY[0x277D85DD0];
    v12[2] = 3221225472;
    v12[3] = sub_23350D2FC;
    v12[4] = &unk_2789DC2B8;
    v12[5] = v12;
    v13 = xmmword_2789DC2A0;
    v14 = 0;
    qword_2814EE828 = _sl_dlopen();
  }

  if (!qword_2814EE828)
  {
    v6 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, a3, a4, a5);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "void *WatchListKitLibrary(void)", v8, v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v6, v11, v10, @"MPAssistantUtilities.m", 47, @"%s", v12[0]);

    __break(1u);
    goto LABEL_7;
  }

  v5 = v12[0];
  if (v12[0])
  {
LABEL_7:
    free(v5);
  }
}

uint64_t sub_23350D2FC(uint64_t a1)
{
  result = _sl_dlopen();
  qword_2814EE828 = result;
  return result;
}

uint64_t sub_23350D370(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_homeUserIDs(a2, a2, a3, a4, a5);
  v10 = objc_msgSend_containsObject_(v6, v7, *(a1 + 32), v8, v9);

  return v10;
}

void sub_23350D3B4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23350DBB8;
  block[3] = &unk_2789DBF68;
  v18 = v6;
  v26 = *(a1 + 120);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v23 = *(a1 + 88);
  v16 = *(a1 + 56);
  v10 = *(&v16 + 1);
  *&v11 = v8;
  *(&v11 + 1) = v9;
  v20 = v16;
  v19 = v11;
  v27 = *(a1 + 121);
  v24 = *(a1 + 104);
  v21 = v5;
  v12 = *(a1 + 72);
  v13 = *(a1 + 112);
  v22 = v12;
  v25 = v13;
  v14 = v5;
  v15 = v6;
  dispatch_sync(v7, block);
  dispatch_group_leave(*(a1 + 80));
}

void sub_23350D518(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v90 = *MEMORY[0x277D85DE8];
  objc_msgSend_setInContextUsersStates_(*(a1 + 32), a2, *(a1 + 40), a4, a5);
  v6 = sub_23350552C(*(*(*(a1 + 88) + 8) + 40));
  objc_msgSend_setExpirationDate_(*(a1 + 32), v7, v6, v8, v9);

  v10 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    v13 = *(a1 + 32);
    *buf = 138543875;
    v85 = v11;
    v86 = 2114;
    v87 = v12;
    v88 = 2113;
    v89 = v13;
    _os_log_impl(&dword_2334D9000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ (clientstate) <%{public}@>: finished getting dynamite client state: %{private}@", buf, 0x20u);
  }

  (*(*(a1 + 80) + 16))();
  v14 = MEMORY[0x277CCABB0];
  objc_msgSend_timeIntervalSinceNow(*(a1 + 72), v15, v16, v17, v18);
  v24 = objc_msgSend_numberWithDouble_(v14, v20, v21, v22, v23, fabs(v19));
  objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 64), v25, v24, @"duration", v26);

  LODWORD(v27) = *(*(*(a1 + 104) + 8) + 32);
  v32 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v28, v29, v30, v31, v27);
  objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 64), v33, v32, @"age_verification_duration", v34);

  LODWORD(v35) = *(*(*(a1 + 104) + 8) + 36);
  v40 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v36, v37, v38, v39, v35);
  objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 64), v41, v40, @"subscription_status_duration", v42);

  LODWORD(v43) = *(*(*(a1 + 104) + 8) + 40);
  v48 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v44, v45, v46, v47, v43);
  objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 64), v49, v48, @"token_duration", v50);

  LODWORD(v51) = *(*(*(a1 + 104) + 8) + 44);
  v56 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v52, v53, v54, v55, v51);
  objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 64), v57, v56, @"use_history_duration", v58);

  v59 = MEMORY[0x277CCABB0];
  v64 = objc_msgSend_count(*(a1 + 40), v60, v61, v62, v63);
  v68 = objc_msgSend_numberWithUnsignedInteger_(v59, v65, v64, v66, v67);
  objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 64), v69, v68, @"accounts_on_device", v70);

  v74 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v71, *(*(*(a1 + 112) + 8) + 24), v72, v73);
  objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 64), v75, v74, @"accounts_without_state", v76);

  v80 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v77, *(*(*(a1 + 120) + 8) + 24), v78, v79);
  objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 64), v81, v80, @"token_failure", v82);

  v83 = *(a1 + 64);
  AnalyticsSendEventLazy();
}

void sub_23350D850(uint64_t a1, void *a2, void *a3, void *a4)
{
  v42 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v11 = _MPLogCategoryAssistant();
  v12 = v11;
  if (v9)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 40);
      v18 = *(a1 + 48);
      v19 = objc_msgSend_shortDebugName(*(a1 + 56), v13, v14, v15, v16);
      *buf = 138544131;
      v33 = v17;
      v34 = 2114;
      v35 = v18;
      v36 = 2113;
      v37 = v19;
      v38 = 2114;
      v39 = v9;
      _os_log_impl(&dword_2334D9000, v12, OS_LOG_TYPE_ERROR, "%{public}@ (userstate) <%{public}@>: failed fetching shared user id for %{private}@: %{public}@", buf, 0x2Au);
    }

    dispatch_group_leave(*(a1 + 64));
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(a1 + 40);
      v25 = *(a1 + 48);
      v26 = objc_msgSend_shortDebugName(*(a1 + 56), v20, v21, v22, v23);
      *buf = 138544387;
      v33 = v24;
      v34 = 2114;
      v35 = v25;
      v36 = 2114;
      v37 = v8;
      v38 = 2113;
      v39 = v7;
      v40 = 2114;
      v41 = v26;
      _os_log_impl(&dword_2334D9000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ (userstate) <%{public}@>: fetched shared user id: %{public}@:%{private}@ for %{public}@", buf, 0x34u);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23350DBA8;
    block[3] = &unk_2789DC0C8;
    v27 = *(a1 + 72);
    v29 = *(a1 + 80);
    v30 = v8;
    v31 = v7;
    dispatch_sync(v27, block);
    dispatch_group_leave(*(a1 + 64));
  }
}

uint64_t sub_23350DAA8(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = objc_msgSend_shortDebugName(*(a1 + 48), v4, v5, v6, v7);
    v12 = 138543875;
    v13 = v8;
    v14 = 2114;
    v15 = v9;
    v16 = 2113;
    v17 = v10;
    _os_log_impl(&dword_2334D9000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ (userstate) <%{public}@>: finished getting user state for %{private}@", &v12, 0x20u);
  }

  return (*(*(a1 + 64) + 16))();
}

void sub_23350DBB8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1;
  v388 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    if (*(a1 + 120) == 1)
    {
      v6 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(v5 + 40);
        v12 = *(v5 + 48);
        v13 = objc_msgSend_shortDebugName(*(v5 + 56), v7, v8, v9, v10);
        *buf = 138543875;
        v378 = v11;
        v379 = 2114;
        v380 = v12;
        v381 = 2113;
        v382 = v13;
        _os_log_impl(&dword_2334D9000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ (clientstate) <%{public}@>: account %{private}@ is default", buf, 0x20u);
      }

      v14 = MEMORY[0x277CCACA8];
      v19 = objc_msgSend_syncSharedUserId(*(v5 + 32), v15, v16, v17, v18);
      v24 = objc_msgSend_userHistoryUnmodifiable(*(v5 + 32), v20, v21, v22, v23);
      v29 = objc_msgSend_stringValue(v24, v25, v26, v27, v28);
      v34 = objc_msgSend_status(*(v5 + 32), v30, v31, v32, v33);
      if (objc_msgSend_ageVerificationRequired(*(v5 + 32), v35, v36, v37, v38))
      {
        v43 = @"YES";
      }

      else
      {
        v43 = @"NO";
      }

      v44 = objc_msgSend_defaultMediaPlaybackAppBundleIdentifier(*(v5 + 32), v39, v40, v41, v42);
      if (objc_msgSend_isPromotionRelatedStatus(*(v5 + 32), v45, v46, v47, v48))
      {
        v53 = @"YES";
      }

      else
      {
        v53 = @"NO";
      }

      v54 = objc_msgSend_eligibleOffers(*(a1 + 32), v49, v50, v51, v52);
      v367 = v53;
      v5 = a1;
      v58 = objc_msgSend_stringWithFormat_(v14, v55, @"Default_UserState_v2_%@_%@_%@_%@_%@_%@_%@", v56, v57, v19, v29, v34, v43, v44, v367, v54);

      os_unfair_lock_lock((*(*(a1 + 88) + 8) + 32));
      v59 = *(*(*(a1 + 96) + 8) + 40);
      v64 = objc_msgSend_dsid(*(a1 + 56), v60, v61, v62, v63);
      objc_msgSend_setObject_forKeyedSubscript_(v59, v65, v58, v64, v66);

      os_unfair_lock_unlock((*(*(a1 + 88) + 8) + 32));
      v67 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        v73 = *(a1 + 40);
        v72 = *(a1 + 48);
        v74 = objc_msgSend_dictionary(*(a1 + 32), v68, v69, v70, v71);
        *buf = 138543875;
        v378 = v73;
        v379 = 2114;
        v380 = v72;
        v381 = 2113;
        v382 = v74;
        _os_log_impl(&dword_2334D9000, v67, OS_LOG_TYPE_DEFAULT, "%{public}@ (clientstate) <%{public}@>: default user state: %{private}@", buf, 0x20u);
      }

      objc_msgSend_setDefaultUserState_(*(a1 + 64), v75, *(a1 + 32), v76, v77);
      v78 = MEMORY[0x277CCABB0];
      v83 = objc_msgSend_music(*(a1 + 56), v79, v80, v81, v82);
      v88 = objc_msgSend_cloudLibrarySyncStatus(v83, v84, v85, v86, v87) == 1;
      v92 = objc_msgSend_numberWithInt_(v78, v89, v88, v90, v91);
      objc_msgSend_setICloudMusicLibraryToggle_(*(a1 + 64), v93, v92, v94, v95);

      v100 = objc_msgSend_ageVerificationRequired(*(a1 + 32), v96, v97, v98, v99);
      objc_msgSend_setAgeVerificationRequired_(*(a1 + 64), v101, v100, v102, v103);
      v108 = objc_msgSend_iTunesMatchSubscriptionStatus(*(a1 + 32), v104, v105, v106, v107);
      objc_msgSend_setITunesMatchSubscriptionStatus_(*(a1 + 64), v109, v108, v110, v111);

      v116 = objc_msgSend_userHistoryUnmodifiable(*(a1 + 32), v112, v113, v114, v115);
      objc_msgSend_setUserHistoryUnmodifiable_(*(a1 + 64), v117, v116, v118, v119);

      v124 = objc_msgSend_userToken(*(a1 + 32), v120, v121, v122, v123);
      objc_msgSend_setUserToken_(*(a1 + 64), v125, v124, v126, v127);

      v132 = objc_msgSend_status(*(a1 + 32), v128, v129, v130, v131);
      objc_msgSend_setStatus_(*(a1 + 64), v133, v132, v134, v135);

      v140 = objc_msgSend_userTokenStatus(*(a1 + 32), v136, v137, v138, v139);
      objc_msgSend_setUserTokenStatus_(*(a1 + 64), v141, v140, v142, v143);

      v148 = objc_msgSend_eligibleOffers(*(a1 + 32), v144, v145, v146, v147);
      objc_msgSend_setEligibleOffers_(*(a1 + 64), v149, v148, v150, v151);

      isPromotionRelatedStatus = objc_msgSend_isPromotionRelatedStatus(*(a1 + 32), v152, v153, v154, v155);
      objc_msgSend_setIsPromotionRelatedStatus_(*(a1 + 64), v157, isPromotionRelatedStatus, v158, v159);
      v164 = objc_msgSend_music(*(a1 + 56), v160, v161, v162, v163);
      v169 = objc_msgSend_cookies(v164, v165, v166, v167, v168);
      v174 = objc_msgSend_xpab(v169, v170, v171, v172, v173);
      objc_msgSend_setXpAbCookie_(*(a1 + 64), v175, v174, v176, v177);

      if ((*(a1 + 121) & 1) == 0)
      {
        v182 = objc_msgSend_userToken(*(a1 + 64), v178, v179, v180, v181);
        v187 = objc_msgSend_length(v182, v183, v184, v185, v186);

        if (!v187)
        {
          ++*(*(*(a1 + 104) + 8) + 24);
        }
      }
    }

    v375 = 0u;
    v376 = 0u;
    v373 = 0u;
    v374 = 0u;
    obj = objc_msgSend_allKeys(*(v5 + 72), a2, a3, a4, a5);
    v371 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v188, &v373, v387, 16);
    if (v371)
    {
      v369 = *v374;
      do
      {
        v189 = 0;
        do
        {
          if (*v374 != v369)
          {
            objc_enumerationMutation(obj);
          }

          v190 = *(*(&v373 + 1) + 8 * v189);
          v191 = _MPLogCategoryAssistant();
          if (os_log_type_enabled(v191, OS_LOG_TYPE_DEFAULT))
          {
            v196 = *(v5 + 40);
            v197 = *(v5 + 48);
            v198 = objc_msgSend_shortDebugName(*(v5 + 56), v192, v193, v194, v195);
            v202 = objc_msgSend_objectForKeyedSubscript_(*(v5 + 72), v199, v190, v200, v201);
            *buf = 138544387;
            v378 = v196;
            v379 = 2114;
            v380 = v197;
            v381 = 2113;
            v382 = v198;
            v383 = 2114;
            v384 = v190;
            v385 = 2113;
            v386 = v202;
            _os_log_impl(&dword_2334D9000, v191, OS_LOG_TYPE_DEFAULT, "%{public}@ (clientstate) <%{public}@>: account %{private}@ has shared user ID %{public}@:%{private}@", buf, 0x34u);
          }

          v372 = v189;

          v210 = objc_msgSend_copy(*(v5 + 32), v203, v204, v205, v206);
          if ((*(v5 + 121) & 1) == 0)
          {
            v211 = objc_msgSend_objectForKeyedSubscript_(*(v5 + 72), v207, v190, v208, v209);
            objc_msgSend_setSharedUserId_(v210, v212, v211, v213, v214);
          }

          objc_msgSend_setSyncSharedUserId_(v210, v207, v190, v208, v209);
          v215 = MEMORY[0x277CCACA8];
          v220 = objc_msgSend_syncSharedUserId(v210, v216, v217, v218, v219);
          v225 = objc_msgSend_userHistoryUnmodifiable(v210, v221, v222, v223, v224);
          v230 = objc_msgSend_stringValue(v225, v226, v227, v228, v229);
          v235 = objc_msgSend_status(v210, v231, v232, v233, v234);
          v244 = @"NO";
          if (objc_msgSend_ageVerificationRequired(v210, v236, v237, v238, v239))
          {
            v245 = @"YES";
          }

          else
          {
            v245 = @"NO";
          }

          v246 = objc_msgSend_defaultMediaPlaybackAppBundleIdentifier(v210, v240, v241, v242, v243);
          if (objc_msgSend_isPromotionRelatedStatus(v210, v247, v248, v249, v250))
          {
            v244 = @"YES";
          }

          v255 = objc_msgSend_eligibleOffers(v210, v251, v252, v253, v254);
          v259 = objc_msgSend_stringWithFormat_(v215, v256, @"UserState_v2_%@_%@_%@_%@_%@_%@_%@", v257, v258, v220, v230, v235, v245, v246, v244, v255);

          v5 = a1;
          v260 = _MPLogCategoryAssistant();
          if (os_log_type_enabled(v260, OS_LOG_TYPE_DEFAULT))
          {
            v265 = *(a1 + 40);
            v266 = *(a1 + 48);
            v267 = objc_msgSend_shortDebugName(*(a1 + 56), v261, v262, v263, v264);
            v272 = objc_msgSend_dictionary(v210, v268, v269, v270, v271);
            *buf = 138544131;
            v378 = v265;
            v379 = 2114;
            v380 = v266;
            v381 = 2113;
            v382 = v267;
            v383 = 2113;
            v384 = v272;
            _os_log_impl(&dword_2334D9000, v260, OS_LOG_TYPE_DEFAULT, "%{public}@ (clientstate) <%{public}@>: %{private}@ user state: %{private}@", buf, 0x2Au);
          }

          os_unfair_lock_lock((*(*(a1 + 88) + 8) + 32));
          objc_msgSend_addObject_(*(a1 + 80), v273, v210, v274, v275);
          v276 = *(*(*(a1 + 96) + 8) + 40);
          v281 = objc_msgSend_dsid(*(a1 + 56), v277, v278, v279, v280);
          objc_msgSend_setObject_forKeyedSubscript_(v276, v282, v259, v281, v283);

          os_unfair_lock_unlock((*(*(a1 + 88) + 8) + 32));
          v189 = v372 + 1;
        }

        while (v371 != v372 + 1);
        v371 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v284, &v373, v387, 16);
      }

      while (v371);
    }

    if (!objc_msgSend_count(*(v5 + 72), v285, v286, v287, v288))
    {
      v293 = objc_msgSend_homeUserIDs(*(v5 + 56), v289, v290, v291, v292);
      v298 = objc_msgSend_count(v293, v294, v295, v296, v297);

      if (v298)
      {
        v299 = _MPLogCategoryAssistant();
        if (os_log_type_enabled(v299, OS_LOG_TYPE_DEFAULT))
        {
          v304 = *(v5 + 40);
          v305 = *(v5 + 48);
          v306 = objc_msgSend_shortDebugName(*(v5 + 56), v300, v301, v302, v303);
          *buf = 138543875;
          v378 = v304;
          v379 = 2114;
          v380 = v305;
          v381 = 2113;
          v382 = v306;
          _os_log_impl(&dword_2334D9000, v299, OS_LOG_TYPE_DEFAULT, "%{public}@ (clientstate) <%{public}@>: account %{private}@ has no shared user IDs", buf, 0x20u);
        }

        v307 = _MPLogCategoryAssistant();
        if (os_log_type_enabled(v307, OS_LOG_TYPE_DEFAULT))
        {
          v312 = *(v5 + 40);
          v313 = *(v5 + 48);
          v314 = objc_msgSend_shortDebugName(*(v5 + 56), v308, v309, v310, v311);
          v319 = objc_msgSend_dictionary(*(v5 + 32), v315, v316, v317, v318);
          *buf = 138544131;
          v378 = v312;
          v379 = 2114;
          v380 = v313;
          v381 = 2113;
          v382 = v314;
          v383 = 2113;
          v384 = v319;
          _os_log_impl(&dword_2334D9000, v307, OS_LOG_TYPE_DEFAULT, "%{public}@ (clientstate) <%{public}@>: %{private}@ user state: %{private}@", buf, 0x2Au);
        }

        v320 = MEMORY[0x277CCACA8];
        v325 = objc_msgSend_userHistoryUnmodifiable(*(v5 + 32), v321, v322, v323, v324);
        v330 = objc_msgSend_stringValue(v325, v326, v327, v328, v329);
        v335 = objc_msgSend_status(*(v5 + 32), v331, v332, v333, v334);
        if (objc_msgSend_ageVerificationRequired(*(v5 + 32), v336, v337, v338, v339))
        {
          v344 = @"YES";
        }

        else
        {
          v344 = @"NO";
        }

        v345 = objc_msgSend_defaultMediaPlaybackAppBundleIdentifier(*(v5 + 32), v340, v341, v342, v343);
        v349 = objc_msgSend_stringWithFormat_(v320, v346, @"UserState_v2_%@_%@_%@_%@_%@", v347, v348, @"none", v330, v335, v344, v345);

        os_unfair_lock_lock((*(*(v5 + 88) + 8) + 32));
        v350 = *(v5 + 80);
        v355 = objc_msgSend_copy(*(v5 + 32), v351, v352, v353, v354);
        objc_msgSend_addObject_(v350, v356, v355, v357, v358);

        v359 = *(*(*(v5 + 96) + 8) + 40);
        v364 = objc_msgSend_dsid(*(v5 + 56), v360, v361, v362, v363);
        objc_msgSend_setObject_forKeyedSubscript_(v359, v365, v349, v364, v366);

        os_unfair_lock_unlock((*(*(v5 + 88) + 8) + 32));
      }
    }
  }

  else
  {
    ++*(*(*(a1 + 112) + 8) + 24);
  }
}

ldiv_t ldiv(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x282202960](a1, a2);
  result.rem = v3;
  result.quot = v2;
  return result;
}

lldiv_t lldiv(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x282202968](a1, a2);
  result.rem = v3;
  result.quot = v2;
  return result;
}