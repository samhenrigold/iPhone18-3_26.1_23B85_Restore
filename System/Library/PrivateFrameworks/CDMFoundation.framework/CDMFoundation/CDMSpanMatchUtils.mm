@interface CDMSpanMatchUtils
+ (BOOL)isSamePosition:(id)position spanB:(id)b asrMapA:(id)a asrMapB:(id)mapB cdmTokenChainA:(id)chainA cdmTokenChainB:(id)chainB;
+ (BOOL)isSpanOnlyForExternalParsers:(id)parsers;
+ (BOOL)matcherNameIsSupportedForAsrAlternative:(id)alternative;
+ (double)calculateAsrConfidenceForCharIndexBegin:(int64_t)begin charIndexEnd:(int64_t)end asrTimingMap:(id)map asrHypothesis:(id)hypothesis;
+ (id)createAsrAlternativeIdentifier:(id)identifier nameSpace:(id)space nodeIndex:(unsigned int)index backingAppBundleId:(id)id sourceComponent:(int)component asrConfidence:(double)confidence;
+ (void)addAsrConfidenceToSpans:(id)spans tokenChain:(id)chain asrTimingMap:(id)map asrHypothesis:(id)hypothesis;
+ (void)addEntitySpansFrom:(id)from to:(id)to confidence:(double)confidence;
+ (void)mergeAsrAlternativeIntoSpan:(id)span asrAltSpan:(id)altSpan asrAltCdmTokenChain:(id)chain asrAltHypothesis:(id)hypothesis asrAltTimingMap:(id)map;
+ (void)postProcessSpans:(id)spans asrSpansMap:(id)map asrHypothesis:(id)hypothesis asrMaps:(id)maps topAsrTokenChain:(id)chain asrMapTopAsr:(id)asr topAsrSpansFiltered:(id)filtered;
+ (void)processAsrAlternative:(id)alternative topAsrTokenChain:(id)chain cdmTokenChainAltAsr:(id)asr asrMapTopAsr:(id)topAsr asrMapAltAsr:(id)altAsr spansTopAsr:(id)spansTopAsr asrHypothesis:(id)hypothesis;
+ (void)setAsrHypothesisIndexForTopAsrSpans:(id)spans;
@end

@implementation CDMSpanMatchUtils

+ (void)postProcessSpans:(id)spans asrSpansMap:(id)map asrHypothesis:(id)hypothesis asrMaps:(id)maps topAsrTokenChain:(id)chain asrMapTopAsr:(id)asr topAsrSpansFiltered:(id)filtered
{
  v53 = *MEMORY[0x1E69E9840];
  spansCopy = spans;
  mapCopy = map;
  hypothesisCopy = hypothesis;
  mapsCopy = maps;
  chainCopy = chain;
  asrCopy = asr;
  filteredCopy = filtered;
  if ([spansCopy count] > 1)
  {
    v19 = [spansCopy count];
    v20 = [hypothesisCopy count];
    v17 = CDMOSLoggerForCategory(0);
    v21 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);
    if (v19 == v20)
    {
      if (v21)
      {
        *buf = 136315138;
        v50 = "+[CDMSpanMatchUtils postProcessSpans:asrSpansMap:asrHypothesis:asrMaps:topAsrTokenChain:asrMapTopAsr:topAsrSpansFiltered:]";
        _os_log_debug_impl(&dword_1DC287000, v17, OS_LOG_TYPE_DEBUG, "%s Processing ASR alternatives 2..n", buf, 0xCu);
      }

      v22 = os_signpost_id_generate(CDMLogContext);
      v23 = CDMLogContext;
      v24 = v23;
      v43 = v22 - 1;
      if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1DC287000, v24, OS_SIGNPOST_INTERVAL_BEGIN, v22, "SpanMatcher", "Post-process ASR alternative(s)", buf, 2u);
      }

      spid = v22;

      date = [MEMORY[0x1E695DF00] date];
      if ([spansCopy count] >= 2)
      {
        v25 = 1;
        do
        {
          v26 = [spansCopy objectAtIndexedSubscript:v25];
          v27 = [CDMTokenChain alloc];
          tokenChain = [v26 tokenChain];
          v29 = [(CDMTokenChain *)v27 initWithProtoTokenChain:tokenChain];

          asrId = [v26 asrId];
          v31 = [mapsCopy objectForKey:asrId];

          asrId2 = [v26 asrId];
          v33 = [mapCopy objectForKey:asrId2];

          v34 = CDMOSLoggerForCategory(0);
          v35 = v25 + 1;
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v50 = "+[CDMSpanMatchUtils postProcessSpans:asrSpansMap:asrHypothesis:asrMaps:topAsrTokenChain:asrMapTopAsr:topAsrSpansFiltered:]";
            v51 = 1024;
            LODWORD(v52) = v25 + 1;
            _os_log_debug_impl(&dword_1DC287000, v34, OS_LOG_TYPE_DEBUG, "%s Processing spans from ASR alt #%d", buf, 0x12u);
          }

          v36 = [hypothesisCopy objectAtIndexedSubscript:v25];
          [CDMSpanMatchUtils processAsrAlternative:v33 topAsrTokenChain:chainCopy cdmTokenChainAltAsr:v29 asrMapTopAsr:asrCopy asrMapAltAsr:v31 spansTopAsr:filteredCopy asrHypothesis:v36, spid];

          v25 = v35;
        }

        while ([spansCopy count] > v35);
      }

      v17 = date;
      [date timeIntervalSinceNow];
      v38 = v37;
      v39 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v50 = "+[CDMSpanMatchUtils postProcessSpans:asrSpansMap:asrHypothesis:asrMaps:topAsrTokenChain:asrMapTopAsr:topAsrSpansFiltered:]";
        v51 = 2048;
        v52 = -v38;
        _os_log_debug_impl(&dword_1DC287000, v39, OS_LOG_TYPE_DEBUG, "%s Done post-processing ASR alternatives, took %f sec", buf, 0x16u);
      }

      v40 = CDMLogContext;
      v41 = v40;
      if (v43 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1DC287000, v41, OS_SIGNPOST_INTERVAL_END, spid, "SpanMatcher", "", buf, 2u);
      }
    }

    else if (v21)
    {
      *buf = 136315138;
      v50 = "+[CDMSpanMatchUtils postProcessSpans:asrSpansMap:asrHypothesis:asrMaps:topAsrTokenChain:asrMapTopAsr:topAsrSpansFiltered:]";
      v18 = "%s Span match requests and ASR hypothesis counts are not equal, skipping span matching for ASR alternatives";
      goto LABEL_18;
    }
  }

  else
  {
    v17 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v50 = "+[CDMSpanMatchUtils postProcessSpans:asrSpansMap:asrHypothesis:asrMaps:topAsrTokenChain:asrMapTopAsr:topAsrSpansFiltered:]";
      v18 = "%s Moving on as there are no ASR alternatives to process";
LABEL_18:
      _os_log_debug_impl(&dword_1DC287000, v17, OS_LOG_TYPE_DEBUG, v18, buf, 0xCu);
    }
  }
}

+ (void)processAsrAlternative:(id)alternative topAsrTokenChain:(id)chain cdmTokenChainAltAsr:(id)asr asrMapTopAsr:(id)topAsr asrMapAltAsr:(id)altAsr spansTopAsr:(id)spansTopAsr asrHypothesis:(id)hypothesis
{
  v68 = *MEMORY[0x1E69E9840];
  alternativeCopy = alternative;
  chainCopy = chain;
  asrCopy = asr;
  topAsrCopy = topAsr;
  altAsrCopy = altAsr;
  spansTopAsrCopy = spansTopAsr;
  hypothesisCopy = hypothesis;
  v15 = os_signpost_id_generate(CDMLogContext);
  v16 = CDMLogContext;
  v17 = v16;
  v38 = v15 - 1;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "SpanMatcher", "Post-process one ASR alternative", buf, 2u);
  }

  spid = v15;

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = alternativeCopy;
  v42 = [obj countByEnumeratingWithState:&v54 objects:v67 count:16];
  if (v42)
  {
    v40 = *v55;
    do
    {
      v18 = 0;
      do
      {
        if (*v55 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v43 = v18;
        v19 = *(*(&v54 + 1) + 8 * v18);
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v49 = spansTopAsrCopy;
        v20 = [v49 countByEnumeratingWithState:&v50 objects:v66 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v51;
          do
          {
            v23 = 0;
            do
            {
              if (*v51 != v22)
              {
                objc_enumerationMutation(v49);
              }

              v24 = *(*(&v50 + 1) + 8 * v23);
              label = [v19 label];
              label2 = [v24 label];
              if (([label isEqualToString:label2] & 1) == 0)
              {
                goto LABEL_17;
              }

              input = [v19 input];
              input2 = [v24 input];
              if ([input isEqualToString:input2])
              {

LABEL_17:
                goto LABEL_18;
              }

              v29 = [CDMSpanMatchUtils isSamePosition:v24 spanB:v19 asrMapA:topAsrCopy asrMapB:altAsrCopy cdmTokenChainA:chainCopy cdmTokenChainB:asrCopy];

              if (v29)
              {
                v30 = CDMOSLoggerForCategory(0);
                if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
                {
                  input3 = [v24 input];
                  input4 = [v19 input];
                  label3 = [v19 label];
                  *buf = 136315906;
                  v59 = "+[CDMSpanMatchUtils processAsrAlternative:topAsrTokenChain:cdmTokenChainAltAsr:asrMapTopAsr:asrMapAltAsr:spansTopAsr:asrHypothesis:]";
                  v60 = 2112;
                  v61 = input3;
                  v62 = 2112;
                  v63 = input4;
                  v64 = 2112;
                  v65 = label3;
                  _os_log_debug_impl(&dword_1DC287000, v30, OS_LOG_TYPE_DEBUG, "%s Updating UsoEntityIdentifier as these 2 spans have 1) Same spanLabel 2) Different input value 3) AND are considered the same per ASR timing info. spanTopAsr=[%@], spanAltAsr=[%@], label=[%@]", buf, 0x2Au);
                }

                [CDMSpanMatchUtils mergeAsrAlternativeIntoSpan:v24 asrAltSpan:v19 asrAltCdmTokenChain:asrCopy asrAltHypothesis:hypothesisCopy asrAltTimingMap:altAsrCopy];
              }

LABEL_18:
              ++v23;
            }

            while (v21 != v23);
            v34 = [v49 countByEnumeratingWithState:&v50 objects:v66 count:16];
            v21 = v34;
          }

          while (v34);
        }

        v18 = v43 + 1;
      }

      while (v43 + 1 != v42);
      v42 = [obj countByEnumeratingWithState:&v54 objects:v67 count:16];
    }

    while (v42);
  }

  v35 = CDMLogContext;
  v36 = v35;
  if (v38 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v36, OS_SIGNPOST_INTERVAL_END, spid, "SpanMatcher", "", buf, 2u);
  }
}

+ (void)setAsrHypothesisIndexForTopAsrSpans:(id)spans
{
  v27 = *MEMORY[0x1E69E9840];
  spansCopy = spans;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = [spansCopy countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(spansCopy);
        }

        v8 = *(*(&v21 + 1) + 8 * i);
        if ([v8 hasUsoGraph])
        {
          usoGraph = [v8 usoGraph];
          alignments = [usoGraph alignments];

          if (alignments)
          {
            v19 = 0u;
            v20 = 0u;
            v17 = 0u;
            v18 = 0u;
            usoGraph2 = [v8 usoGraph];
            alignments2 = [usoGraph2 alignments];

            v13 = [alignments2 countByEnumeratingWithState:&v17 objects:v25 count:16];
            if (v13)
            {
              v14 = v13;
              v15 = *v18;
              do
              {
                for (j = 0; j != v14; ++j)
                {
                  if (*v18 != v15)
                  {
                    objc_enumerationMutation(alignments2);
                  }

                  [*(*(&v17 + 1) + 8 * j) setAsrHypothesisIndex:0];
                }

                v14 = [alignments2 countByEnumeratingWithState:&v17 objects:v25 count:16];
              }

              while (v14);
            }
          }
        }
      }

      v5 = [spansCopy countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v5);
  }
}

+ (BOOL)isSpanOnlyForExternalParsers:(id)parsers
{
  v54 = *MEMORY[0x1E69E9840];
  parsersCopy = parsers;
  if ([parsersCopy hasUsoGraph])
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v37 = parsersCopy;
    usoGraph = [parsersCopy usoGraph];
    identifiers = [usoGraph identifiers];

    v6 = [identifiers countByEnumeratingWithState:&v47 objects:v53 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v48;
      v9 = *MEMORY[0x1E69D24A8];
      v10 = *MEMORY[0x1E69D2458];
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v48 != v8)
          {
            objc_enumerationMutation(identifiers);
          }

          v12 = *(*(&v47 + 1) + 8 * i);
          value = [v12 value];
          if ([value isEqualToString:v9])
          {
            namespaceA = [v12 namespaceA];
            value2 = [namespaceA value];
            v16 = [value2 isEqualToString:v10];

            if (v16)
            {
LABEL_36:
              v32 = 1;
              goto LABEL_37;
            }
          }

          else
          {
          }
        }

        v7 = [identifiers countByEnumeratingWithState:&v47 objects:v53 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    if (+[CDMFeatureFlags isUsoEntitySpanEnabled])
    {
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      usoGraph2 = [v37 usoGraph];
      identifiers = [usoGraph2 spans];

      v35 = [identifiers countByEnumeratingWithState:&v43 objects:v52 count:16];
      if (v35)
      {
        v18 = *v44;
        v19 = *MEMORY[0x1E69D24A8];
        v38 = *MEMORY[0x1E69D2458];
        v34 = *v44;
        do
        {
          v20 = 0;
          do
          {
            if (*v44 != v18)
            {
              objc_enumerationMutation(identifiers);
            }

            v36 = v20;
            v21 = *(*(&v43 + 1) + 8 * v20);
            v39 = 0u;
            v40 = 0u;
            v41 = 0u;
            v42 = 0u;
            properties = [v21 properties];
            v23 = [properties countByEnumeratingWithState:&v39 objects:v51 count:16];
            if (v23)
            {
              v24 = v23;
              v25 = *v40;
              do
              {
                for (j = 0; j != v24; ++j)
                {
                  if (*v40 != v25)
                  {
                    objc_enumerationMutation(properties);
                  }

                  v27 = *(*(&v39 + 1) + 8 * j);
                  if ([v27 hasValueString])
                  {
                    valueString = [v27 valueString];
                    value3 = [valueString value];
                    if ([value3 isEqualToString:v19])
                    {
                      v30 = [v27 key];
                      v31 = [v30 isEqualToString:v38];

                      if (v31)
                      {

                        goto LABEL_36;
                      }
                    }

                    else
                    {
                    }
                  }
                }

                v24 = [properties countByEnumeratingWithState:&v39 objects:v51 count:16];
              }

              while (v24);
            }

            v20 = v36 + 1;
            v18 = v34;
          }

          while (v36 + 1 != v35);
          v35 = [identifiers countByEnumeratingWithState:&v43 objects:v52 count:16];
        }

        while (v35);
      }

      v32 = 0;
LABEL_37:
    }

    else
    {
      v32 = 0;
    }

    parsersCopy = v37;
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

+ (void)addEntitySpansFrom:(id)from to:(id)to confidence:(double)confidence
{
  v36 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  toCopy = to;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  usoGraph = [fromCopy usoGraph];
  spans = [usoGraph spans];

  v11 = spans;
  v12 = [spans countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v12)
  {
    v14 = v12;
    v15 = *v28;
    *&v13 = 136315394;
    v26 = v13;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v18 = *(*(&v27 + 1) + 8 * i);
        v19 = [v18 copy];
        v20 = objc_alloc_init(MEMORY[0x1E69D1138]);
        input = [fromCopy input];
        [v20 setAlternative:input];

        if (confidence != -1.0)
        {
          v22 = objc_alloc_init(MEMORY[0x1E69D1118]);
          confidenceCopy = confidence;
          *&v23 = confidenceCopy;
          [v22 setValue:v23];
          [v20 setProbability:v22];
        }

        [v19 addAlternatives:v20];
        usoGraph2 = [toCopy usoGraph];
        [usoGraph2 addSpans:v19];

        v25 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          *buf = v26;
          v32 = "+[CDMSpanMatchUtils addEntitySpansFrom:to:confidence:]";
          v33 = 2112;
          v34 = v18;
          _os_log_debug_impl(&dword_1DC287000, v25, OS_LOG_TYPE_DEBUG, "%s Copied to spanDest (i.e. top ASR's span), usoEntitySpan:%@", buf, 0x16u);
        }
      }

      v14 = [v11 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v14);
  }
}

+ (void)mergeAsrAlternativeIntoSpan:(id)span asrAltSpan:(id)altSpan asrAltCdmTokenChain:(id)chain asrAltHypothesis:(id)hypothesis asrAltTimingMap:(id)map
{
  v76 = *MEMORY[0x1E69E9840];
  spanCopy = span;
  altSpanCopy = altSpan;
  chainCopy = chain;
  hypothesisCopy = hypothesis;
  mapCopy = map;
  if (([altSpanCopy hasUsoGraph]& 1) == 0)
  {
    v26 = CDMOSLoggerForCategory(0);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      goto LABEL_41;
    }

    *buf = 136315394;
    v69 = "+[CDMSpanMatchUtils mergeAsrAlternativeIntoSpan:asrAltSpan:asrAltCdmTokenChain:asrAltHypothesis:asrAltTimingMap:]";
    v70 = 2112;
    v71 = altSpanCopy;
    v27 = "%s [WARN]: Did not expect asrAltSpan without USO graph. asrAltSpan=%@";
LABEL_17:
    _os_log_impl(&dword_1DC287000, v26, OS_LOG_TYPE_INFO, v27, buf, 0x16u);
    goto LABEL_41;
  }

  if (([spanCopy hasUsoGraph]& 1) == 0)
  {
    v26 = CDMOSLoggerForCategory(0);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      goto LABEL_41;
    }

    *buf = 136315394;
    v69 = "+[CDMSpanMatchUtils mergeAsrAlternativeIntoSpan:asrAltSpan:asrAltCdmTokenChain:asrAltHypothesis:asrAltTimingMap:]";
    v70 = 2112;
    v71 = spanCopy;
    v27 = "%s [WARN]: Did not expect spanDest without USO graph. spanDest=%@";
    goto LABEL_17;
  }

  v59 = mapCopy;
  v56 = hypothesisCopy;
  v57 = chainCopy;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  usoGraph = [spanCopy usoGraph];
  identifiers = [usoGraph identifiers];

  v19 = [identifiers countByEnumeratingWithState:&v64 objects:v75 count:16];
  selfCopy = self;
  if (v19)
  {
    v20 = v19;
    groupIndex = 0;
    v22 = *v65;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v65 != v22)
        {
          objc_enumerationMutation(identifiers);
        }

        v24 = *(*(&v64 + 1) + 8 * i);
        if ([v24 groupIndex] > groupIndex)
        {
          groupIndex = [v24 groupIndex];
        }
      }

      v20 = [identifiers countByEnumeratingWithState:&v64 objects:v75 count:16];
    }

    while (v20);
    v25 = groupIndex + 1;
  }

  else
  {
    v25 = 1;
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = altSpanCopy;
  usoGraph2 = [altSpanCopy usoGraph];
  identifiers2 = [usoGraph2 identifiers];

  v30 = [identifiers2 countByEnumeratingWithState:&v60 objects:v74 count:16];
  if (v30)
  {
    v31 = v30;
    v26 = 0;
    v32 = *v61;
    do
    {
      v33 = 0;
      v34 = v26;
      do
      {
        if (*v61 != v32)
        {
          objc_enumerationMutation(identifiers2);
        }

        v35 = *(*(&v60 + 1) + 8 * v33);
        [v35 setGroupIndex:v25];
        usoGraph3 = [spanCopy usoGraph];
        [usoGraph3 addIdentifiers:v35];

        v37 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v69 = "+[CDMSpanMatchUtils mergeAsrAlternativeIntoSpan:asrAltSpan:asrAltCdmTokenChain:asrAltHypothesis:asrAltTimingMap:]";
          v70 = 2112;
          v71 = v35;
          _os_log_debug_impl(&dword_1DC287000, v37, OS_LOG_TYPE_DEBUG, "%s Copied to spanDest (i.e. top ASR's span), identifier:%@", buf, 0x16u);
        }

        v26 = v35;
        ++v33;
        v34 = v26;
      }

      while (v31 != v33);
      v31 = [identifiers2 countByEnumeratingWithState:&v60 objects:v74 count:16];
    }

    while (v31);
  }

  else
  {
    v26 = 0;
  }

  chainCopy = v57;
  tokens = [v57 tokens];
  altSpanCopy = v58;
  v39 = [tokens objectAtIndexedSubscript:{-[NSObject startTokenIndex](v58, "startTokenIndex")}];
  begin = [v39 begin];

  tokens2 = [v57 tokens];
  v42 = [tokens2 objectAtIndexedSubscript:{-[NSObject endTokenIndex](v58, "endTokenIndex") - 1}];
  v43 = [v42 end];

  v44 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
  {
    label = [v58 label];
    input = [v58 input];
    *buf = 136315650;
    v69 = "+[CDMSpanMatchUtils mergeAsrAlternativeIntoSpan:asrAltSpan:asrAltCdmTokenChain:asrAltHypothesis:asrAltTimingMap:]";
    v70 = 2112;
    v71 = label;
    v72 = 2112;
    v73 = input;
    _os_log_debug_impl(&dword_1DC287000, v44, OS_LOG_TYPE_DEBUG, "%s Annotating ASR confidence on span label=%@, matchedText=%@", buf, 0x20u);

    altSpanCopy = v58;
  }

  hypothesisCopy = v56;
  mapCopy = v59;
  [selfCopy calculateAsrConfidenceForCharIndexBegin:begin charIndexEnd:v43 asrTimingMap:v59 asrHypothesis:v56];
  v46 = v45;
  if (+[CDMFeatureFlags isUsoEntitySpanEnabled])
  {
    [selfCopy addEntitySpansFrom:altSpanCopy to:spanCopy confidence:v46];
  }

  if (v46 == -1.0)
  {
    v47 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v69 = "+[CDMSpanMatchUtils mergeAsrAlternativeIntoSpan:asrAltSpan:asrAltCdmTokenChain:asrAltHypothesis:asrAltTimingMap:]";
      _os_log_debug_impl(&dword_1DC287000, v47, OS_LOG_TYPE_DEBUG, "%s ASR confidence is missing on one or more ASR tokens, not annotating the span", buf, 0xCu);
    }
  }

  else
  {
    input2 = [altSpanCopy input];
    nodeIndex = [v26 nodeIndex];
    backingAppBundleId = [v26 backingAppBundleId];
    v47 = [CDMSpanMatchUtils createAsrAlternativeIdentifier:input2 nameSpace:@"asr_alternative" nodeIndex:nodeIndex backingAppBundleId:backingAppBundleId sourceComponent:[v26 sourceComponent] asrConfidence:v46];

    [v47 setGroupIndex:v25];
    usoGraph4 = [spanCopy usoGraph];
    [usoGraph4 addIdentifiers:v47];

    v52 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v69 = "+[CDMSpanMatchUtils mergeAsrAlternativeIntoSpan:asrAltSpan:asrAltCdmTokenChain:asrAltHypothesis:asrAltTimingMap:]";
      v70 = 2112;
      v71 = v47;
      _os_log_debug_impl(&dword_1DC287000, v52, OS_LOG_TYPE_DEBUG, "%s Added an extra asr_alternative to spanDest (i.e. top ASR's span), asrAltIdentifier:%@", buf, 0x16u);
    }

    mapCopy = v59;
  }

LABEL_41:
}

+ (id)createAsrAlternativeIdentifier:(id)identifier nameSpace:(id)space nodeIndex:(unsigned int)index backingAppBundleId:(id)id sourceComponent:(int)component asrConfidence:(double)confidence
{
  v9 = *&component;
  v10 = *&index;
  v13 = MEMORY[0x1E69D1250];
  idCopy = id;
  spaceCopy = space;
  identifierCopy = identifier;
  v17 = objc_alloc_init(v13);
  v18 = objc_alloc_init(MEMORY[0x1E69D1128]);
  [v18 setValue:spaceCopy];

  [v17 setNamespaceA:v18];
  [v17 setValue:identifierCopy];

  [v17 setNodeIndex:v10];
  [v17 setBackingAppBundleId:idCopy];

  [v17 setSourceComponent:v9];
  v19 = objc_alloc_init(MEMORY[0x1E69D1110]);
  [v19 setValue:confidence];
  [v17 setProbability:v19];

  return v17;
}

+ (void)addAsrConfidenceToSpans:(id)spans tokenChain:(id)chain asrTimingMap:(id)map asrHypothesis:(id)hypothesis
{
  v84 = *MEMORY[0x1E69E9840];
  spansCopy = spans;
  chainCopy = chain;
  mapCopy = map;
  hypothesisCopy = hypothesis;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v12 = spansCopy;
  v13 = [v12 countByEnumeratingWithState:&v72 objects:v83 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v73;
    v58 = v12;
    v59 = chainCopy;
    selfCopy = self;
    v64 = *v73;
    while (2)
    {
      v16 = 0;
      v65 = v14;
      do
      {
        if (*v73 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v72 + 1) + 8 * v16);
        v18 = *[v17 matcherNames];
        v66 = v16;
        if (v18 >= 9)
        {
          v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v18];
        }

        else
        {
          v19 = off_1E862FB60[v18];
        }

        v67 = v19;
        if ([self matcherNameIsSupportedForAsrAlternative:v19])
        {
          if ([v17 hasUsoGraph])
          {
            usoGraph = [v17 usoGraph];
            identifiers = [usoGraph identifiers];
            v22 = [identifiers count];

            v14 = v65;
            v15 = v64;
            if (v22)
            {
              tokens = [chainCopy tokens];
              v24 = [tokens objectAtIndexedSubscript:{objc_msgSend(v17, "startTokenIndex")}];
              begin = [v24 begin];

              if ([v17 endTokenIndex])
              {
                tokens2 = [chainCopy tokens];
                v27 = [tokens2 objectAtIndexedSubscript:{objc_msgSend(v17, "endTokenIndex") - 1}];
                v28 = [v27 end];

                v29 = CDMOSLoggerForCategory(0);
                if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
                {
                  label = [v17 label];
                  input = [v17 input];
                  *buf = 136315650;
                  v78 = "+[CDMSpanMatchUtils addAsrConfidenceToSpans:tokenChain:asrTimingMap:asrHypothesis:]";
                  v79 = 2112;
                  v80 = label;
                  v81 = 2112;
                  v82 = input;
                  v55 = input;
                  _os_log_debug_impl(&dword_1DC287000, v29, OS_LOG_TYPE_DEBUG, "%s Annotating ASR confidence on span label=%@, matchedText=%@", buf, 0x20u);
                }

                [self calculateAsrConfidenceForCharIndexBegin:begin charIndexEnd:v28 asrTimingMap:mapCopy asrHypothesis:hypothesisCopy];
                if (v30 == -1.0)
                {
                  v56 = CDMOSLoggerForCategory(0);
                  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 136315138;
                    v78 = "+[CDMSpanMatchUtils addAsrConfidenceToSpans:tokenChain:asrTimingMap:asrHypothesis:]";
                    _os_log_debug_impl(&dword_1DC287000, v56, OS_LOG_TYPE_DEBUG, "%s ASR confidence is missing on one or more ASR tokens, not annotating the span", buf, 0xCu);
                  }

                  goto LABEL_36;
                }

                v31 = v30;
                usoGraph2 = [v17 usoGraph];
                identifiers2 = [usoGraph2 identifiers];
                v34 = [identifiers2 objectAtIndexedSubscript:0];

                usoGraph3 = [v17 usoGraph];
                identifiers3 = [usoGraph3 identifiers];
                input2 = [v17 input];
                nodeIndex = [v34 nodeIndex];
                backingAppBundleId = [v34 backingAppBundleId];
                v62 = v34;
                v40 = [CDMSpanMatchUtils createAsrAlternativeIdentifier:input2 nameSpace:@"asr_alternative" nodeIndex:nodeIndex backingAppBundleId:backingAppBundleId sourceComponent:[v34 sourceComponent] asrConfidence:v31];
                [identifiers3 addObject:v40];

                if (+[CDMFeatureFlags isUsoEntitySpanEnabled])
                {
                  v70 = 0u;
                  v71 = 0u;
                  v68 = 0u;
                  v69 = 0u;
                  usoGraph4 = [v17 usoGraph];
                  spans = [usoGraph4 spans];

                  v43 = [spans countByEnumeratingWithState:&v68 objects:v76 count:16];
                  if (v43)
                  {
                    v44 = v43;
                    v45 = *v69;
                    v46 = v31;
                    do
                    {
                      for (i = 0; i != v44; ++i)
                      {
                        if (*v69 != v45)
                        {
                          objc_enumerationMutation(spans);
                        }

                        v48 = *(*(&v68 + 1) + 8 * i);
                        v49 = objc_alloc_init(MEMORY[0x1E69D1138]);
                        input3 = [v17 input];
                        [v49 setAlternative:input3];

                        v51 = objc_alloc_init(MEMORY[0x1E69D1118]);
                        *&v52 = v46;
                        [v51 setValue:v52];
                        [v49 setProbability:v51];

                        [v48 addAlternatives:v49];
                      }

                      v44 = [spans countByEnumeratingWithState:&v68 objects:v76 count:16];
                    }

                    while (v44);
                  }

                  v12 = v58;
                  chainCopy = v59;
                  self = selfCopy;
                  v15 = v64;
                  v14 = v65;
                  v53 = v62;
                }

                else
                {
                  self = selfCopy;
                  v12 = v58;
                  v15 = v64;
                  v14 = v65;
                  v53 = v34;
                  chainCopy = v59;
                }
              }

              else
              {
                v53 = CDMOSLoggerForCategory(0);
                if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  v78 = "+[CDMSpanMatchUtils addAsrConfidenceToSpans:tokenChain:asrTimingMap:asrHypothesis:]";
                  v79 = 2112;
                  v80 = v17;
                  _os_log_error_impl(&dword_1DC287000, v53, OS_LOG_TYPE_ERROR, "%s [ERR]: SpanMatchUtil end token index should not be smaller than 1. Offending span is %@", buf, 0x16u);
                }

                v15 = v64;
                v14 = v65;
              }
            }
          }
        }

        v16 = v66 + 1;
      }

      while (v66 + 1 != v14);
      v14 = [v12 countByEnumeratingWithState:&v72 objects:v83 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

LABEL_36:
}

+ (BOOL)matcherNameIsSupportedForAsrAlternative:(id)alternative
{
  alternativeCopy = alternative;
  if ([alternativeCopy isEqualToString:@"SIRI_VOCABULARY_MATCHER"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [alternativeCopy isEqualToString:@"VOC_TRIE_MATCHER"];
  }

  return v4;
}

+ (double)calculateAsrConfidenceForCharIndexBegin:(int64_t)begin charIndexEnd:(int64_t)end asrTimingMap:(id)map asrHypothesis:(id)hypothesis
{
  v41 = *MEMORY[0x1E69E9840];
  mapCopy = map;
  hypothesisCopy = hypothesis;
  if ([hypothesisCopy asrTokensCount])
  {
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:begin];
    v12 = [mapCopy objectForKey:v11];

    v13 = [MEMORY[0x1E696AD98] numberWithInteger:end];
    v14 = [mapCopy objectForKey:v13];

    v15 = 0.0;
    if (v12 && v14)
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      asrTokens = [hypothesisCopy asrTokens];
      v17 = [asrTokens countByEnumeratingWithState:&v32 objects:v40 count:16];
      v15 = -1.0;
      if (v17)
      {
        v19 = v17;
        v31 = mapCopy;
        v20 = 0;
        v21 = *v33;
        v22 = 0.0;
        *&v18 = 136315394;
        v30 = v18;
        while (2)
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v33 != v21)
            {
              objc_enumerationMutation(asrTokens);
            }

            v24 = *(*(&v32 + 1) + 8 * i);
            if (![v24 hasConfidenceScore])
            {
              goto LABEL_20;
            }

            startMilliSeconds = [v24 startMilliSeconds];
            if (startMilliSeconds >= [v12 intValue])
            {
              endMilliSeconds = [v24 endMilliSeconds];
              if (endMilliSeconds > [v14 intValue])
              {
                goto LABEL_17;
              }

              v27 = CDMOSLoggerForCategory(0);
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
              {
                *buf = v30;
                v37 = "+[CDMSpanMatchUtils calculateAsrConfidenceForCharIndexBegin:charIndexEnd:asrTimingMap:asrHypothesis:]";
                v38 = 2112;
                v39 = *&v24;
                _os_log_debug_impl(&dword_1DC287000, v27, OS_LOG_TYPE_DEBUG, "%s Average ASR confidence calculation includes token=%@", buf, 0x16u);
              }

              [v24 confidenceScore];
              v22 = v22 + v28;
              ++v20;
            }
          }

          v19 = [asrTokens countByEnumeratingWithState:&v32 objects:v40 count:16];
          if (v19)
          {
            continue;
          }

          break;
        }

LABEL_17:

        if (v20)
        {
          asrTokens = CDMOSLoggerForCategory(0);
          v15 = v22 / v20;
          if (os_log_type_enabled(asrTokens, OS_LOG_TYPE_DEBUG))
          {
            *buf = v30;
            v37 = "+[CDMSpanMatchUtils calculateAsrConfidenceForCharIndexBegin:charIndexEnd:asrTimingMap:asrHypothesis:]";
            v38 = 2048;
            v39 = v22 / v20;
            _os_log_debug_impl(&dword_1DC287000, asrTokens, OS_LOG_TYPE_DEBUG, "%s Average ASR confidence is %f", buf, 0x16u);
          }

LABEL_20:
          mapCopy = v31;
          goto LABEL_21;
        }

        v15 = -1.0;
        mapCopy = v31;
      }

      else
      {
LABEL_21:
      }
    }
  }

  else
  {
    v15 = -1.0;
  }

  return v15;
}

+ (BOOL)isSamePosition:(id)position spanB:(id)b asrMapA:(id)a asrMapB:(id)mapB cdmTokenChainA:(id)chainA cdmTokenChainB:(id)chainB
{
  v89 = *MEMORY[0x1E69E9840];
  positionCopy = position;
  bCopy = b;
  aCopy = a;
  mapBCopy = mapB;
  chainACopy = chainA;
  chainBCopy = chainB;
  startTokenIndex = [positionCopy startTokenIndex];
  tokens = [chainACopy tokens];
  v21 = [tokens count];

  if (v21 <= startTokenIndex)
  {
    v42 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      startTokenIndex2 = [positionCopy startTokenIndex];
      tokens2 = [chainACopy tokens];
      *buf = 136315650;
      v76 = "+[CDMSpanMatchUtils isSamePosition:spanB:asrMapA:asrMapB:cdmTokenChainA:cdmTokenChainB:]";
      v77 = 1024;
      *v78 = startTokenIndex2;
      *&v78[4] = 2048;
      *&v78[6] = [tokens2 count];
      v54 = "%s [WARN]: spanA.startTokenIndex=%u is out of range with tokens.count=%zd";
LABEL_20:
      _os_log_impl(&dword_1DC287000, v42, OS_LOG_TYPE_INFO, v54, buf, 0x1Cu);
    }

LABEL_28:
    v51 = 0;
    goto LABEL_29;
  }

  tokens3 = [chainACopy tokens];
  v23 = [tokens3 objectAtIndexedSubscript:{objc_msgSend(positionCopy, "startTokenIndex")}];
  begin = [v23 begin];

  v25 = [positionCopy endTokenIndex] - 1;
  tokens4 = [chainACopy tokens];
  v27 = [tokens4 count];

  if (v27 <= v25)
  {
    v42 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      v55 = [positionCopy endTokenIndex] - 1;
      tokens5 = [chainACopy tokens];
      *buf = 136315650;
      v76 = "+[CDMSpanMatchUtils isSamePosition:spanB:asrMapA:asrMapB:cdmTokenChainA:cdmTokenChainB:]";
      v77 = 1024;
      *v78 = v55;
      *&v78[4] = 2048;
      *&v78[6] = [tokens5 count];
      v57 = "%s [WARN]: (spanA.endTokenIndex - 1)=%u is out of range with tokens.count=%zd";
LABEL_23:
      _os_log_impl(&dword_1DC287000, v42, OS_LOG_TYPE_INFO, v57, buf, 0x1Cu);

      goto LABEL_28;
    }

    goto LABEL_28;
  }

  tokens6 = [chainACopy tokens];
  v29 = [tokens6 objectAtIndexedSubscript:{objc_msgSend(positionCopy, "endTokenIndex") - 1}];
  v73 = [v29 end];

  LODWORD(tokens6) = [bCopy startTokenIndex];
  tokens7 = [chainBCopy tokens];
  v31 = [tokens7 count];

  if (v31 <= tokens6)
  {
    v42 = CDMOSLoggerForCategory(0);
    if (!os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      goto LABEL_28;
    }

    startTokenIndex3 = [bCopy startTokenIndex];
    tokens2 = [chainBCopy tokens];
    *buf = 136315650;
    v76 = "+[CDMSpanMatchUtils isSamePosition:spanB:asrMapA:asrMapB:cdmTokenChainA:cdmTokenChainB:]";
    v77 = 1024;
    *v78 = startTokenIndex3;
    *&v78[4] = 2048;
    *&v78[6] = [tokens2 count];
    v54 = "%s [WARN]: spanB.startTokenIndex=%u is out of range with tokens.count=%zd";
    goto LABEL_20;
  }

  tokens8 = [chainBCopy tokens];
  v33 = [tokens8 objectAtIndexedSubscript:{objc_msgSend(bCopy, "startTokenIndex")}];
  begin2 = [v33 begin];

  v34 = [bCopy endTokenIndex] - 1;
  tokens9 = [chainBCopy tokens];
  v36 = [tokens9 count];

  if (v36 <= v34)
  {
    v42 = CDMOSLoggerForCategory(0);
    if (!os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      goto LABEL_28;
    }

    v59 = [bCopy endTokenIndex] - 1;
    tokens5 = [chainBCopy tokens];
    *buf = 136315650;
    v76 = "+[CDMSpanMatchUtils isSamePosition:spanB:asrMapA:asrMapB:cdmTokenChainA:cdmTokenChainB:]";
    v77 = 1024;
    *v78 = v59;
    *&v78[4] = 2048;
    *&v78[6] = [tokens5 count];
    v57 = "%s [WARN]: (spanB.endTokenIndex - 1)=%u is out of range with tokens.count=%zd";
    goto LABEL_23;
  }

  tokens10 = [chainBCopy tokens];
  v38 = [tokens10 objectAtIndexedSubscript:{objc_msgSend(bCopy, "endTokenIndex") - 1}];
  v39 = [v38 end];

  v40 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316674;
    v76 = "+[CDMSpanMatchUtils isSamePosition:spanB:asrMapA:asrMapB:cdmTokenChainA:cdmTokenChainB:]";
    v77 = 2048;
    *v78 = begin;
    *&v78[8] = 2048;
    *&v78[10] = v73;
    v79 = 2048;
    v80 = begin2;
    v81 = 2048;
    v82 = v39;
    v83 = 2112;
    v84 = aCopy;
    v85 = 2112;
    v86 = mapBCopy;
    _os_log_debug_impl(&dword_1DC287000, v40, OS_LOG_TYPE_DEBUG, "%s Used span's start/end token index + CDMTokenChain's indices to find the ASR character indices. spanACharIndexBegin=%ld, spanACharIndexEnd=%ld, spanBCharIndexBegin=%ld, spanBCharIndexEnd=%ld, asrMapA=%@, asrMapB=%@", buf, 0x48u);
  }

  v41 = [MEMORY[0x1E696AD98] numberWithInteger:begin];
  v42 = [aCopy objectForKey:v41];

  if (!v42)
  {
    goto LABEL_28;
  }

  v43 = [MEMORY[0x1E696AD98] numberWithInteger:v73];
  v44 = [aCopy objectForKey:v43];

  if (v44)
  {
    v69 = v44;
    v45 = [MEMORY[0x1E696AD98] numberWithInteger:begin2];
    v46 = [mapBCopy objectForKey:v45];

    v74 = v46;
    if (v46)
    {
      v47 = [MEMORY[0x1E696AD98] numberWithInteger:v39];
      v48 = [mapBCopy objectForKey:v47];

      v72 = v48;
      if (v48)
      {
        v49 = CDMOSLoggerForCategory(0);
        v50 = v74;
        v44 = v69;
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136316162;
          v76 = "+[CDMSpanMatchUtils isSamePosition:spanB:asrMapA:asrMapB:cdmTokenChainA:cdmTokenChainB:]";
          v77 = 2112;
          *v78 = v42;
          *&v78[8] = 2112;
          *&v78[10] = v69;
          v79 = 2112;
          v80 = v74;
          v81 = 2112;
          v82 = v72;
          _os_log_debug_impl(&dword_1DC287000, v49, OS_LOG_TYPE_DEBUG, "%s Found spanAAsrTimingBegin=%@, spanAAsrTimingEnd=%@, spanBAsrTimingBegin=%@, spanBAsrTimingEnd=%@", buf, 0x34u);
        }

        if (-[NSObject isEqualToNumber:](v42, "isEqualToNumber:", v74) && [v69 isEqualToNumber:v72])
        {
          log = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
          {
            input = [positionCopy input];
            input2 = [bCopy input];
            label = [bCopy label];
            *buf = 136316418;
            v76 = "+[CDMSpanMatchUtils isSamePosition:spanB:asrMapA:asrMapB:cdmTokenChainA:cdmTokenChainB:]";
            v77 = 2112;
            *v78 = input;
            *&v78[8] = 2112;
            *&v78[10] = input2;
            v79 = 2112;
            v80 = label;
            v64 = label;
            v81 = 2112;
            v82 = v42;
            v83 = 2112;
            v84 = v69;
            _os_log_debug_impl(&dword_1DC287000, log, OS_LOG_TYPE_DEBUG, "%s These 2 spans are considered the same per ASR timing info. spanTopAsr=[%@], spanAltAsr=[%@], label=[%@], asrTiming{Begin/End}=%@/%@", buf, 0x3Eu);
          }

          v51 = 1;
        }

        else
        {
          log = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
          {
            input3 = [positionCopy input];
            input4 = [bCopy input];
            label2 = [bCopy label];
            *buf = 136316930;
            v76 = "+[CDMSpanMatchUtils isSamePosition:spanB:asrMapA:asrMapB:cdmTokenChainA:cdmTokenChainB:]";
            v77 = 2112;
            *v78 = input3;
            *&v78[8] = 2112;
            *&v78[10] = input4;
            v79 = 2112;
            v80 = label2;
            v62 = label2;
            v81 = 2112;
            v82 = v42;
            v83 = 2112;
            v84 = v69;
            v85 = 2112;
            v86 = v74;
            v87 = 2112;
            v88 = v72;
            _os_log_debug_impl(&dword_1DC287000, log, OS_LOG_TYPE_DEBUG, "%s These 2 spans are NOT considered the same per ASR timing info. spanTopAsr=[%@], spanAltAsr=[%@], label=[%@], spanAAsrTiming{Begin/End}=%@/%@, spanBAsrTiming{Begin/End}=%@/%@", buf, 0x52u);
          }

          v51 = 0;
        }
      }

      else
      {
        v51 = 0;
        v50 = v74;
        v44 = v69;
      }
    }

    else
    {
      v51 = 0;
      v50 = 0;
      v44 = v69;
    }
  }

  else
  {
    v51 = 0;
  }

LABEL_29:
  return v51;
}

@end