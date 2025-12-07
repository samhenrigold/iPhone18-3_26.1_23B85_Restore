@interface ARDaemonStatusLogger
- (id)generateStringFromStatusDictionary:(id)dictionary forServerObject:(id)object andProcessName:(id)name;
- (void)_logOrGenerateString:(id)string fromDictionary:(id)dictionary forServerObject:(id)object andProcessName:(id)name;
- (void)_logProcessInformationFromDictionary:(id)dictionary forServerObject:(id)object andProcessName:(id)name generatedTestString:(id)string;
- (void)_logSystemInformationFromDictionary:(id)dictionary forServerObject:(id)object generatedTestString:(id)string;
@end

@implementation ARDaemonStatusLogger

- (id)generateStringFromStatusDictionary:(id)dictionary forServerObject:(id)object andProcessName:(id)name
{
  v8 = MEMORY[0x1E696AD60];
  nameCopy = name;
  objectCopy = object;
  dictionaryCopy = dictionary;
  v12 = objc_alloc_init(v8);
  [(ARDaemonStatusLogger *)self _logOrGenerateString:v12 fromDictionary:dictionaryCopy forServerObject:objectCopy andProcessName:nameCopy];

  return v12;
}

- (void)_logOrGenerateString:(id)string fromDictionary:(id)dictionary forServerObject:(id)object andProcessName:(id)name
{
  v47 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  dictionaryCopy = dictionary;
  objectCopy = object;
  nameCopy = name;
  v14 = _ARLogGeneral_48(nameCopy);
  v15 = v14;
  if (!stringCopy)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v46 = objectCopy;
      _os_log_impl(&dword_1C241C000, v15, OS_LOG_TYPE_INFO, "ARServer <%{public}p>: Status [UPDATE] START", buf, 0xCu);
    }

    v17 = _ARLogGeneral_48(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v46 = objectCopy;
      _os_log_impl(&dword_1C241C000, v17, OS_LOG_TYPE_INFO, "ARServer <%{public}p>: Status [UPDATE] {", buf, 0xCu);
    }

    goto LABEL_6;
  }

  *buf = 134349056;
  v46 = objectCopy;
  v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1C241C000, v14, 1, "ARServer <%{public}p>: Status [UPDATE] START", buf, 12);

  v24 = 0x1E696A000uLL;
  if (v22)
  {
    v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"ARServer <%{public}p>: Status [UPDATE] START"];
    v26 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"%[^\\{]" options:1 error:0];
    if ([v26 numberOfMatchesInString:v25 options:0 range:{0, objc_msgSend(v25, "length")}])
    {
      v27 = [@"Privacy annotation missing:\n\t" stringByAppendingString:v25];

      v24 = 0x1E696A000;
    }

    else
    {

      v24 = 0x1E696A000uLL;
      v27 = [MEMORY[0x1E696AEC0] stringWithCString:v22 encoding:4];
    }

    [stringCopy appendString:v27];
    [stringCopy appendString:@"\n"];
    free(v22);
  }

  v33 = _ARLogGeneral_48(v23);
  *buf = 134349056;
  v46 = objectCopy;
  LODWORD(v43) = 12;
  v34 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1C241C000, v33, 1, "ARServer <%{public}p>: Status [UPDATE] {", buf, v43);

  if (v34)
  {
    v35 = [*(v24 + 3776) stringWithUTF8String:"ARServer <%{public}p>: Status [UPDATE] {"];
    v36 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"%[^\\{]" options:1 error:0];
    if ([v36 numberOfMatchesInString:v35 options:0 range:{0, objc_msgSend(v35, "length")}])
    {
      [@"Privacy annotation missing:\n\t" stringByAppendingString:v35];
      v17 = v37 = v35;
    }

    else
    {

      v17 = [*(v24 + 3776) stringWithCString:v34 encoding:4];
    }

    [stringCopy appendString:v17];
    [stringCopy appendString:@"\n"];
    free(v34);
LABEL_6:
  }

  [(ARDaemonStatusLogger *)self _logProcessInformationFromDictionary:dictionaryCopy forServerObject:objectCopy andProcessName:nameCopy generatedTestString:stringCopy];
  v18 = _ARLogGeneral_48([(ARDaemonStatusLogger *)self _logSystemInformationFromDictionary:dictionaryCopy forServerObject:objectCopy generatedTestString:stringCopy]);
  v19 = v18;
  if (!stringCopy)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v46 = objectCopy;
      _os_log_impl(&dword_1C241C000, v19, OS_LOG_TYPE_INFO, "ARServer <%{public}p>: Status [UPDATE] }", buf, 0xCu);
    }

    v21 = _ARLogGeneral_48(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v46 = objectCopy;
      _os_log_impl(&dword_1C241C000, v21, OS_LOG_TYPE_INFO, "ARServer <%{public}p>: Status [UPDATE] END", buf, 0xCu);
    }

    goto LABEL_12;
  }

  *buf = 134349056;
  v46 = objectCopy;
  LODWORD(v42) = 12;
  v28 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1C241C000, v18, 1, "ARServer <%{public}p>: Status [UPDATE] }", buf, v42);

  if (v28)
  {
    v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"ARServer <%{public}p>: Status [UPDATE] }"];
    v31 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"%[^\\{]" options:1 error:0];
    if ([v31 numberOfMatchesInString:v30 options:0 range:{0, objc_msgSend(v30, "length")}])
    {
      v32 = [@"Privacy annotation missing:\n\t" stringByAppendingString:v30];
    }

    else
    {

      v32 = [MEMORY[0x1E696AEC0] stringWithCString:v28 encoding:4];
    }

    [stringCopy appendString:v32];
    [stringCopy appendString:@"\n"];
    free(v28);
  }

  v38 = _ARLogGeneral_48(v29);
  *buf = 134349056;
  v46 = objectCopy;
  LODWORD(v44) = 12;
  v39 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1C241C000, v38, 1, "ARServer <%{public}p>: Status [UPDATE] END", buf, v44);

  if (v39)
  {
    v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"ARServer <%{public}p>: Status [UPDATE] END"];
    v41 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"%[^\\{]" options:1 error:0];
    if ([v41 numberOfMatchesInString:v40 options:0 range:{0, objc_msgSend(v40, "length")}])
    {
      v21 = [@"Privacy annotation missing:\n\t" stringByAppendingString:v40];
    }

    else
    {

      v21 = [MEMORY[0x1E696AEC0] stringWithCString:v39 encoding:4];
    }

    [stringCopy appendString:v21];
    [stringCopy appendString:@"\n"];
    free(v39);
LABEL_12:
  }
}

- (void)_logProcessInformationFromDictionary:(id)dictionary forServerObject:(id)object andProcessName:(id)name generatedTestString:(id)string
{
  v80 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  objectCopy = object;
  nameCopy = name;
  stringCopy = string;
  v13 = [dictionaryCopy objectForKey:nameCopy];
  v14 = _ARLogGeneral_48(v13);
  v15 = v14;
  if (!stringCopy)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v16 = [v13 objectForKey:@"pid"];
      *buf = 134349570;
      v75 = objectCopy;
      v76 = 2114;
      v77 = nameCopy;
      v78 = 2114;
      v79 = v16;
      _os_log_impl(&dword_1C241C000, v15, OS_LOG_TYPE_INFO, "ARServer <%{public}p>: Status [UPDATE] \t%{public}@: {pid: %{public}@},", buf, 0x20u);
    }

    v18 = _ARLogGeneral_48(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      nameCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_spawn_time", nameCopy];
      v20 = [dictionaryCopy objectForKey:nameCopy];
      *buf = 134349570;
      v75 = objectCopy;
      v76 = 2114;
      v77 = nameCopy;
      v78 = 2114;
      v79 = v20;
      _os_log_impl(&dword_1C241C000, v18, OS_LOG_TYPE_INFO, "ARServer <%{public}p>: Status [UPDATE] \t%{public}@_spawn_time: %{public}@,", buf, 0x20u);
    }

    v22 = _ARLogGeneral_48(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      nameCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_up_time", nameCopy];
      v24 = [dictionaryCopy objectForKey:nameCopy2];
      *buf = 134349570;
      v75 = objectCopy;
      v76 = 2114;
      v77 = nameCopy;
      v78 = 2114;
      v79 = v24;
      _os_log_impl(&dword_1C241C000, v22, OS_LOG_TYPE_INFO, "ARServer <%{public}p>: Status [UPDATE] \t%{public}@_up_time: %{public}@,", buf, 0x20u);
    }

    v26 = _ARLogGeneral_48(v25);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      nameCopy3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_up_time_including_sleep", nameCopy];
      v28 = [dictionaryCopy objectForKey:nameCopy3];
      *buf = 134349570;
      v75 = objectCopy;
      v76 = 2114;
      v77 = nameCopy;
      v78 = 2114;
      v79 = v28;
      _os_log_impl(&dword_1C241C000, v26, OS_LOG_TYPE_INFO, "ARServer <%{public}p>: Status [UPDATE] \t%{public}@_up_time_including_sleep: %{public}@,", buf, 0x20u);
    }

    v30 = _ARLogGeneral_48(v29);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      nameCopy4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_up_time_including_sleep_and_drift_correction", nameCopy];
      v32 = [dictionaryCopy objectForKey:nameCopy4];
      *buf = 134349570;
      v75 = objectCopy;
      v76 = 2114;
      v77 = nameCopy;
      v78 = 2114;
      v79 = v32;
      _os_log_impl(&dword_1C241C000, v30, OS_LOG_TYPE_INFO, "ARServer <%{public}p>: Status [UPDATE] \t%{public}@_up_time_including_sleep_and_drift_correction: %{public}@,", buf, 0x20u);
    }

    goto LABEL_12;
  }

  v33 = [v13 objectForKey:@"pid"];
  *buf = 134349570;
  v75 = objectCopy;
  v76 = 2114;
  v77 = nameCopy;
  v78 = 2114;
  v79 = v33;
  v34 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1C241C000, v15, 1, "ARServer <%{public}p>: Status [UPDATE] \t%{public}@: {pid: %{public}@},", buf, 32);

  if (v34)
  {
    v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"ARServer <%{public}p>: Status [UPDATE] \t%{public}@: {pid: %{public}@}, "}];
    v37 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"%[^\\{]" options:1 error:0];
    if ([v37 numberOfMatchesInString:v36 options:0 range:{0, objc_msgSend(v36, "length")}])
    {
      v38 = [@"Privacy annotation missing:\n\t" stringByAppendingString:v36];
    }

    else
    {

      v38 = [MEMORY[0x1E696AEC0] stringWithCString:v34 encoding:4];
    }

    [stringCopy appendString:v38];
    [stringCopy appendString:@"\n"];
    free(v34);
  }

  v39 = _ARLogGeneral_48(v35);
  nameCopy5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_spawn_time", nameCopy];
  v41 = [dictionaryCopy objectForKey:nameCopy5];
  *buf = 134349570;
  v75 = objectCopy;
  v76 = 2114;
  v77 = nameCopy;
  v78 = 2114;
  v79 = v41;
  LODWORD(v70) = 32;
  v42 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1C241C000, v39, 1, "ARServer <%{public}p>: Status [UPDATE] \t%{public}@_spawn_time: %{public}@,", buf, v70);

  if (v42)
  {
    v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"ARServer <%{public}p>: Status [UPDATE] \t%{public}@_spawn_time: %{public}@, "}];
    v45 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"%[^\\{]" options:1 error:0];
    if ([v45 numberOfMatchesInString:v44 options:0 range:{0, objc_msgSend(v44, "length")}])
    {
      v46 = [@"Privacy annotation missing:\n\t" stringByAppendingString:v44];
    }

    else
    {

      v46 = [MEMORY[0x1E696AEC0] stringWithCString:v42 encoding:4];
    }

    [stringCopy appendString:v46];
    [stringCopy appendString:@"\n"];
    free(v42);
  }

  v47 = _ARLogGeneral_48(v43);
  nameCopy6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_up_time", nameCopy];
  v49 = [dictionaryCopy objectForKey:nameCopy6];
  *buf = 134349570;
  v75 = objectCopy;
  v76 = 2114;
  v77 = nameCopy;
  v78 = 2114;
  v79 = v49;
  LODWORD(v71) = 32;
  v50 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1C241C000, v47, 1, "ARServer <%{public}p>: Status [UPDATE] \t%{public}@_up_time: %{public}@,", buf, v71);

  if (v50)
  {
    v52 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"ARServer <%{public}p>: Status [UPDATE] \t%{public}@_up_time: %{public}@, "}];
    v53 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"%[^\\{]" options:1 error:0];
    if ([v53 numberOfMatchesInString:v52 options:0 range:{0, objc_msgSend(v52, "length")}])
    {
      v54 = [@"Privacy annotation missing:\n\t" stringByAppendingString:v52];
    }

    else
    {

      v54 = [MEMORY[0x1E696AEC0] stringWithCString:v50 encoding:4];
    }

    [stringCopy appendString:v54];
    [stringCopy appendString:@"\n"];
    free(v50);
  }

  v55 = _ARLogGeneral_48(v51);
  nameCopy7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_up_time_including_sleep", nameCopy];
  v57 = [dictionaryCopy objectForKey:nameCopy7];
  *buf = 134349570;
  v75 = objectCopy;
  v76 = 2114;
  v77 = nameCopy;
  v78 = 2114;
  v79 = v57;
  LODWORD(v72) = 32;
  v58 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1C241C000, v55, 1, "ARServer <%{public}p>: Status [UPDATE] \t%{public}@_up_time_including_sleep: %{public}@,", buf, v72);

  if (v58)
  {
    v60 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"ARServer <%{public}p>: Status [UPDATE] \t%{public}@_up_time_including_sleep: %{public}@, "}];
    v61 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"%[^\\{]" options:1 error:0];
    if ([v61 numberOfMatchesInString:v60 options:0 range:{0, objc_msgSend(v60, "length")}])
    {
      v62 = [@"Privacy annotation missing:\n\t" stringByAppendingString:v60];
    }

    else
    {

      v62 = [MEMORY[0x1E696AEC0] stringWithCString:v58 encoding:4];
    }

    [stringCopy appendString:v62];
    [stringCopy appendString:@"\n"];
    free(v58);
  }

  v63 = _ARLogGeneral_48(v59);
  nameCopy8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_up_time_including_sleep_and_drift_correction", nameCopy];
  v65 = [dictionaryCopy objectForKey:nameCopy8];
  *buf = 134349570;
  v75 = objectCopy;
  v76 = 2114;
  v77 = nameCopy;
  v78 = 2114;
  v79 = v65;
  LODWORD(v73) = 32;
  v66 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1C241C000, v63, 1, "ARServer <%{public}p>: Status [UPDATE] \t%{public}@_up_time_including_sleep_and_drift_correction: %{public}@,", buf, v73);

  if (v66)
  {
    v67 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"ARServer <%{public}p>: Status [UPDATE] \t%{public}@_up_time_including_sleep_and_drift_correction: %{public}@, "}];
    v68 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"%[^\\{]" options:1 error:0];
    if ([v68 numberOfMatchesInString:v67 options:0 range:{0, objc_msgSend(v67, "length")}])
    {
      [@"Privacy annotation missing:\n\t" stringByAppendingString:v67];
      v30 = v69 = v67;
    }

    else
    {

      v30 = [MEMORY[0x1E696AEC0] stringWithCString:v66 encoding:4];
    }

    [stringCopy appendString:v30];
    [stringCopy appendString:@"\n"];
    free(v66);
LABEL_12:
  }
}

- (void)_logSystemInformationFromDictionary:(id)dictionary forServerObject:(id)object generatedTestString:(id)string
{
  v56 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  objectCopy = object;
  stringCopy = string;
  v10 = _ARLogGeneral_48(stringCopy);
  v11 = v10;
  if (!stringCopy)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = [dictionaryCopy objectForKey:@"system_boot_time"];
      *buf = 134349314;
      v53 = objectCopy;
      v54 = 2114;
      v55 = v12;
      _os_log_impl(&dword_1C241C000, v11, OS_LOG_TYPE_INFO, "ARServer <%{public}p>: Status [UPDATE] \tsystem_boot_time: %{public}@,", buf, 0x16u);
    }

    v14 = _ARLogGeneral_48(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [dictionaryCopy objectForKey:@"system_up_time"];
      *buf = 134349314;
      v53 = objectCopy;
      v54 = 2114;
      v55 = v15;
      _os_log_impl(&dword_1C241C000, v14, OS_LOG_TYPE_INFO, "ARServer <%{public}p>: Status [UPDATE] \tsystem_up_time: %{public}@,", buf, 0x16u);
    }

    v17 = _ARLogGeneral_48(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = [dictionaryCopy objectForKey:@"system_up_time_including_sleep"];
      *buf = 134349314;
      v53 = objectCopy;
      v54 = 2114;
      v55 = v18;
      _os_log_impl(&dword_1C241C000, v17, OS_LOG_TYPE_INFO, "ARServer <%{public}p>: Status [UPDATE] \tsystem_up_time_including_sleep: %{public}@,", buf, 0x16u);
    }

    v20 = _ARLogGeneral_48(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = [dictionaryCopy objectForKey:@"system_up_time_including_sleep_and_drift_correction"];
      *buf = 134349314;
      v53 = objectCopy;
      v54 = 2114;
      v55 = v21;
      _os_log_impl(&dword_1C241C000, v20, OS_LOG_TYPE_INFO, "ARServer <%{public}p>: Status [UPDATE] \tsystem_up_time_including_sleep_and_drift_correction: %{public}@,", buf, 0x16u);
    }

    goto LABEL_10;
  }

  v22 = [dictionaryCopy objectForKey:@"system_boot_time"];
  *buf = 134349314;
  v53 = objectCopy;
  v54 = 2114;
  v55 = v22;
  v23 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1C241C000, v11, 1, "ARServer <%{public}p>: Status [UPDATE] \tsystem_boot_time: %{public}@,", buf, 22);

  v25 = 0x1E696A000uLL;
  if (v23)
  {
    v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"ARServer <%{public}p>: Status [UPDATE] \tsystem_boot_time: %{public}@, "}];
    v27 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"%[^\\{]" options:1 error:0];
    if ([v27 numberOfMatchesInString:v26 options:0 range:{0, objc_msgSend(v26, "length")}])
    {
      v28 = [@"Privacy annotation missing:\n\t" stringByAppendingString:v26];

      v25 = 0x1E696A000;
    }

    else
    {

      v25 = 0x1E696A000uLL;
      v28 = [MEMORY[0x1E696AEC0] stringWithCString:v23 encoding:4];
    }

    [stringCopy appendString:v28];
    [stringCopy appendString:@"\n"];
    free(v23);
  }

  v29 = _ARLogGeneral_48(v24);
  v30 = [dictionaryCopy objectForKey:@"system_up_time"];
  *buf = 134349314;
  v53 = objectCopy;
  v54 = 2114;
  v55 = v30;
  LODWORD(v49) = 22;
  v31 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1C241C000, v29, 1, "ARServer <%{public}p>: Status [UPDATE] \tsystem_up_time: %{public}@,", buf, v49);

  if (v31)
  {
    v33 = [*(v25 + 3776) stringWithUTF8String:{"ARServer <%{public}p>: Status [UPDATE] \tsystem_up_time: %{public}@, "}];
    v34 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"%[^\\{]" options:1 error:0];
    if ([v34 numberOfMatchesInString:v33 options:0 range:{0, objc_msgSend(v33, "length")}])
    {
      v35 = [@"Privacy annotation missing:\n\t" stringByAppendingString:v33];

      v25 = 0x1E696A000;
    }

    else
    {

      v25 = 0x1E696A000uLL;
      v35 = [MEMORY[0x1E696AEC0] stringWithCString:v31 encoding:4];
    }

    [stringCopy appendString:v35];
    [stringCopy appendString:@"\n"];
    free(v31);
  }

  v36 = _ARLogGeneral_48(v32);
  v37 = [dictionaryCopy objectForKey:@"system_up_time_including_sleep"];
  *buf = 134349314;
  v53 = objectCopy;
  v54 = 2114;
  v55 = v37;
  LODWORD(v50) = 22;
  v38 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1C241C000, v36, 1, "ARServer <%{public}p>: Status [UPDATE] \tsystem_up_time_including_sleep: %{public}@,", buf, v50);

  if (v38)
  {
    v40 = [*(v25 + 3776) stringWithUTF8String:{"ARServer <%{public}p>: Status [UPDATE] \tsystem_up_time_including_sleep: %{public}@, "}];
    v41 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"%[^\\{]" options:1 error:0];
    if ([v41 numberOfMatchesInString:v40 options:0 range:{0, objc_msgSend(v40, "length")}])
    {
      v42 = [@"Privacy annotation missing:\n\t" stringByAppendingString:v40];

      v25 = 0x1E696A000;
    }

    else
    {

      v25 = 0x1E696A000uLL;
      v42 = [MEMORY[0x1E696AEC0] stringWithCString:v38 encoding:4];
    }

    [stringCopy appendString:v42];
    [stringCopy appendString:@"\n"];
    free(v38);
  }

  v43 = _ARLogGeneral_48(v39);
  v44 = [dictionaryCopy objectForKey:@"system_up_time_including_sleep_and_drift_correction"];
  *buf = 134349314;
  v53 = objectCopy;
  v54 = 2114;
  v55 = v44;
  LODWORD(v51) = 22;
  v45 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1C241C000, v43, 1, "ARServer <%{public}p>: Status [UPDATE] \tsystem_up_time_including_sleep_and_drift_correction: %{public}@,", buf, v51);

  if (v45)
  {
    v46 = [*(v25 + 3776) stringWithUTF8String:{"ARServer <%{public}p>: Status [UPDATE] \tsystem_up_time_including_sleep_and_drift_correction: %{public}@, "}];
    v47 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"%[^\\{]" options:1 error:0];
    if ([v47 numberOfMatchesInString:v46 options:0 range:{0, objc_msgSend(v46, "length")}])
    {
      [@"Privacy annotation missing:\n\t" stringByAppendingString:v46];
      v20 = v48 = v46;
    }

    else
    {

      v20 = [*(v25 + 3776) stringWithCString:v45 encoding:4];
    }

    [stringCopy appendString:v20];
    [stringCopy appendString:@"\n"];
    free(v45);
LABEL_10:
  }
}

@end