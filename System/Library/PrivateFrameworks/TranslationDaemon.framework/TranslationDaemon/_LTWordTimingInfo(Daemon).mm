@interface _LTWordTimingInfo(Daemon)
+ (id)smoothedWordTimingWithTextRangeInfoFrom:()Daemon wordTimingInfo:;
+ (id)wordTimingInfoFromArray:()Daemon text:;
+ (id)wordTimingInfoFromSiriTTSService:()Daemon text:;
- (id)initWithFTWordTimingInfo:()Daemon;
@end

@implementation _LTWordTimingInfo(Daemon)

- (id)initWithFTWordTimingInfo:()Daemon
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = &off_284893148;
  v5 = objc_msgSendSuper2(&v10, sel_init);
  if (v5)
  {
    word = [v4 word];
    [v5 setWord:word];

    [v5 setSampleIndex:{objc_msgSend(v4, "sample_idx")}];
    [v5 setOffset:{objc_msgSend(v4, "offset")}];
    [v5 setLength:{objc_msgSend(v4, "length")}];
    [v4 timestamp];
    [v5 setStartTime:v7];
    v8 = v5;
  }

  return v5;
}

+ (id)wordTimingInfoFromArray:()Daemon text:
{
  v5 = MEMORY[0x277CBEB18];
  v6 = a4;
  v7 = a3;
  array = [v5 array];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58___LTWordTimingInfo_Daemon__wordTimingInfoFromArray_text___block_invoke;
  v12[3] = &unk_2789B8250;
  v13 = array;
  v9 = array;
  [v7 enumerateObjectsUsingBlock:v12];

  v10 = [objc_opt_class() smoothedWordTimingWithTextRangeInfoFrom:v6 wordTimingInfo:v9];

  return v10;
}

+ (id)wordTimingInfoFromSiriTTSService:()Daemon text:
{
  v5 = MEMORY[0x277CBEB18];
  v6 = a4;
  v7 = a3;
  array = [v5 array];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67___LTWordTimingInfo_Daemon__wordTimingInfoFromSiriTTSService_text___block_invoke;
  v12[3] = &unk_2789B8278;
  v13 = array;
  v9 = array;
  [v7 enumerateObjectsUsingBlock:v12];

  v10 = [objc_opt_class() smoothedWordTimingWithTextRangeInfoFrom:v6 wordTimingInfo:v9];

  return v10;
}

+ (id)smoothedWordTimingWithTextRangeInfoFrom:()Daemon wordTimingInfo:
{
  v112 = *MEMORY[0x277D85DE8];
  v95 = a3;
  v5 = a4;
  array = [MEMORY[0x277CBEB18] array];
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v100 objects:v111 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = 0;
    v10 = *v101;
    do
    {
      v11 = 0;
      do
      {
        if (*v101 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v100 + 1) + 8 * v11);
        v13 = _LTOSLogTTS(v6, v7);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v106 = v12;
          _os_log_debug_impl(&dword_232E53000, v13, OS_LOG_TYPE_DEBUG, "Smoothing _LTWordTimingInfo: %@", buf, 0xCu);
        }

        v14 = objc_alloc_init(MEMORY[0x277CE1C50]);
        word = [v12 word];
        [v14 setWord:word];

        [v14 setSampleIndex:{objc_msgSend(v12, "sampleIndex")}];
        [v12 startTime];
        [v14 setStartTime:?];
        offset = [v12 offset];
        v17 = [v12 length];
        if (NSClassFromString(&cfstr_Sirittsnsrange.isa))
        {
          v18 = [NSClassFromString(&cfstr_Sirittsnsrange.isa) mapUtf8RangeToUtf16:offset inText:v17, v95];
          [v14 setTextRange:{v18, v19}];
        }

        [v14 textRange];
        [v14 setLength:v20];
        [v14 setOffset:{objc_msgSend(v14, "textRange")}];
        textRange = [v14 textRange];
        if (textRange != offset || v22 != v17)
        {
          v23 = _LTOSLogTTS(textRange, v22);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            v24 = v23;
            v114.location = offset;
            v114.length = v17;
            v25 = NSStringFromRange(v114);
            v115.location = [v14 textRange];
            v26 = NSStringFromRange(v115);
            word2 = [v14 word];
            v28 = [word2 length];
            *buf = 138412802;
            v106 = v25;
            v107 = 2112;
            v108 = v26;
            v109 = 2048;
            v110 = v28;
            _os_log_impl(&dword_232E53000, v24, OS_LOG_TYPE_INFO, "Corrected FTWordTimingInfo UTF8(%@) range to UTF16(%@), word length: %zu", buf, 0x20u);
          }
        }

        if (v9 && ([v9 startTime], v30 = v29, v31 = objc_msgSend(v14, "startTime"), v30 == v33))
        {
          v34 = _LTOSLogTTS(v31, v32);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_232E53000, v34, OS_LOG_TYPE_INFO, "Merging _LTWordTimingInfo to previous one because same start timestamp", buf, 2u);
          }

          word3 = [v9 word];
          word4 = [v14 word];
          v37 = [word3 stringByAppendingString:word4];
          [v9 setWord:v37];

          [v9 textRange];
          v39 = v38;
          word5 = [v14 word];
          v41 = [word5 length] + v39;

          [v9 setTextRange:{objc_msgSend(v9, "textRange"), v41}];
          [v9 setLength:v41];
        }

        else
        {
          [array addObject:v14];
          v42 = v14;

          v9 = v42;
        }

        ++v11;
      }

      while (v8 != v11);
      v6 = [obj countByEnumeratingWithState:&v100 objects:v111 count:16];
      v8 = v6;
    }

    while (v6);
  }

  else
  {
    v9 = 0;
  }

  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v94 = array;
  v43 = [v94 countByEnumeratingWithState:&v96 objects:v104 count:16];
  if (!v43)
  {
    length = 0;
    v73 = v95;
    goto LABEL_47;
  }

  v46 = v43;
  length = 0;
  location = 0;
  v49 = 0;
  v50 = *v97;
  *&v45 = 134218240;
  v91 = v45;
  do
  {
    v51 = 0;
    do
    {
      v52 = v49;
      if (*v97 != v50)
      {
        objc_enumerationMutation(v94);
      }

      v53 = *(*(&v96 + 1) + 8 * v51);
      v54 = _LTOSLogTTS(v43, v44);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v106 = v53;
        _os_log_debug_impl(&dword_232E53000, v54, OS_LOG_TYPE_DEBUG, "Smoothed _LTWordTimingInfo:\n%@", buf, 0xCu);
      }

      v121.location = [v53 textRange];
      v121.length = v55;
      v116.location = location;
      v116.length = length;
      v56 = NSUnionRange(v116, v121);
      location = v56.location;
      length = v56.length;
      word6 = [v53 word];
      v58 = [word6 length];
      [v53 textRange];
      v60 = v59;

      if (v58 != v60 && (v63 = _LTOSLogTTS(v61, v62), os_log_type_enabled(v63, OS_LOG_TYPE_ERROR)))
      {
        v77 = v63;
        word7 = [v53 word];
        v79 = [word7 length];
        [v53 textRange];
        *buf = v91;
        v106 = v79;
        v107 = 2048;
        v108 = v80;
        _os_log_error_impl(&dword_232E53000, v77, OS_LOG_TYPE_ERROR, "_LTWordTimingInfo word length(%zu) and text range length(%zu) don't match", buf, 0x16u);

        if (!v52)
        {
          goto LABEL_37;
        }
      }

      else if (!v52)
      {
        goto LABEL_37;
      }

      textRange2 = [v52 textRange];
      v66 = v65;
      v122.location = [v53 textRange];
      v122.length = v67;
      v117.location = textRange2;
      v117.length = v66;
      v68 = NSIntersectionRange(v117, v122);
      if (v68.length)
      {
        v69 = _LTOSLogTTS(v68.location, v68.length);
        if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
        {
          v84 = v69;
          v119.location = [v53 textRange];
          v85 = NSStringFromRange(v119);
          v120.location = [v52 textRange];
          v86 = NSStringFromRange(v120);
          *buf = 138412546;
          v106 = v85;
          v107 = 2112;
          v108 = v86;
          _os_log_error_impl(&dword_232E53000, v84, OS_LOG_TYPE_ERROR, "_LTWordTimingInfo text range(%@) overlaps with previous one(%@)", buf, 0x16u);
        }
      }

LABEL_37:
      textRange3 = [v53 textRange];
      [v53 textRange];
      v72 = v71 + textRange3;
      v73 = v95;
      v74 = [v95 length];
      if (v72 > v74)
      {
        v76 = _LTOSLogTTS(v74, v75);
        if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
        {
          v81 = v76;
          v118.location = [v53 textRange];
          v82 = NSStringFromRange(v118);
          v83 = [v95 length];
          *buf = 138412546;
          v106 = v82;
          v107 = 2048;
          v108 = v83;
          _os_log_error_impl(&dword_232E53000, v81, OS_LOG_TYPE_ERROR, "_LTWordTimingInfo text range(%@) is out of range from total text(text.length: %zu)", buf, 0x16u);
        }
      }

      v49 = v53;

      ++v51;
    }

    while (v46 != v51);
    v43 = [v94 countByEnumeratingWithState:&v96 objects:v104 count:16];
    v46 = v43;
  }

  while (v43);

LABEL_47:
  v87 = [v73 length];
  if (length != v87)
  {
    v89 = _LTOSLogTTS(v87, v88);
    if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
    {
      [(_LTWordTimingInfo(Daemon) *)v89 smoothedWordTimingWithTextRangeInfoFrom:v73 wordTimingInfo:length];
    }
  }

  return v94;
}

+ (void)smoothedWordTimingWithTextRangeInfoFrom:()Daemon wordTimingInfo:.cold.1(void *a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = 134218240;
  v7 = a3;
  v8 = 2048;
  v9 = [a2 length];
  _os_log_error_impl(&dword_232E53000, v5, OS_LOG_TYPE_ERROR, "Union of _LTWordTimingInfo ranges length(%zu) does not match text length(%zu)", &v6, 0x16u);
}

@end