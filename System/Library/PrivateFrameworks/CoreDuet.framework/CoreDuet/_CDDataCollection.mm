@interface _CDDataCollection
- (BOOL)submitDataForCollection;
- (_CDDataCollection)initWithStorage:(id)storage activity:(id)activity;
- (_CDDataCollection)initWithStorage:(id)storage activity:(id)activity sessionPath:(id)path dataDirectory:(id)directory collectionDate:(id)date samplingRate:(double)rate daysPerBatch:(unint64_t)batch eventStreams:(id)self0 maxBatches:(unint64_t)self1;
- (id)dataPath;
- (id)truncatedFileHandle;
- (void)_execute;
- (void)cleanup;
- (void)execute;
- (void)setSession:(uint64_t)session;
@end

@implementation _CDDataCollection

- (_CDDataCollection)initWithStorage:(id)storage activity:(id)activity
{
  storageCopy = storage;
  activityCopy = activity;
  v8 = +[_CDPaths defaultSessionPathForDataCollection];
  v9 = +[_CDPaths defaultDirectoryPathForDataCollection];
  date = [MEMORY[0x1E695DF00] date];
  v11 = 1.0;
  if (!CRIsAppleInternal())
  {
    v12 = OSAGetDATaskingValue();
    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v12 doubleValue];
        v11 = v13;
      }

      else
      {
        v11 = 0.0001;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v12 doubleValue];
        v11 = v14;
      }
    }

    else
    {
      v11 = 0.0001;
    }
  }

  v15 = +[_CDLogging dataCollectionChannel];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [_CDDataCollection initWithStorage:v15 activity:?];
  }

  v16 = OSAGetDATaskingValue();
  if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntegerValue = [v16 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 7;
  }

  v18 = OSAGetDATaskingValue();
  if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntegerValue2 = [v18 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue2 = 1000;
  }

  v20 = [(_CDDataCollection *)self initWithStorage:storageCopy activity:activityCopy sessionPath:v8 dataDirectory:v9 collectionDate:date samplingRate:unsignedIntegerValue daysPerBatch:v11 eventStreams:0 maxBatches:unsignedIntegerValue2];

  return v20;
}

- (_CDDataCollection)initWithStorage:(id)storage activity:(id)activity sessionPath:(id)path dataDirectory:(id)directory collectionDate:(id)date samplingRate:(double)rate daysPerBatch:(unint64_t)batch eventStreams:(id)self0 maxBatches:(unint64_t)self1
{
  storageCopy = storage;
  activityCopy = activity;
  pathCopy = path;
  directoryCopy = directory;
  dateCopy = date;
  streamsCopy = streams;
  v45.receiver = self;
  v45.super_class = _CDDataCollection;
  v25 = [(_CDDataCollection *)&v45 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_storage, storage);
    objc_storeStrong(&v26->_activity, activity);
    v28 = [pathCopy copy];
    sessionPath = v26->_sessionPath;
    v26->_sessionPath = v28;

    v30 = [directoryCopy copy];
    dataDirectory = v26->_dataDirectory;
    v26->_dataDirectory = v30;

    v32 = [dateCopy copy];
    collectionDate = v26->_collectionDate;
    v26->_collectionDate = v32;

    v26->_samplingRate = rate;
    v26->_daysPerBatch = batch;
    v26->_maxBatches = batches;
    v34 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v26->_sessionPath options:0 error:0];
    v35 = 0;
    if (v34)
    {
      v44 = 0;
      v35 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v34 error:&v44];
      v36 = v44;
      if (v36)
      {
        v43 = +[_CDLogging dataCollectionChannel];
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          [_CDDataCollection initWithStorage:v36 activity:v43 sessionPath:v37 dataDirectory:? collectionDate:? samplingRate:? daysPerBatch:? eventStreams:? maxBatches:?];
        }
      }
    }

    session = v26->_session;
    v26->_session = v35;
    v39 = v35;

    *&v26->_selectedForDataCollection = 256;
    submissionBlock = v26->_submissionBlock;
    v26->_submissionBlock = &__block_literal_global_81;

    v41 = [[_CDEventStreamsRegister alloc] initWithEventStreams:streamsCopy];
    eventStreamsRegister = v26->_eventStreamsRegister;
    v26->_eventStreamsRegister = v41;
  }

  return v26;
}

- (void)execute
{
  [(_CDDataCollection *)self _execute];

  [(_CDDataCollection *)self cleanup];
}

- (void)_execute
{
  v219 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v3 = *(self + 56);
    if (!*(self + 64))
    {
      v1 = +[_CDDataCollectionSession generateNewSession];
      [(_CDDataCollection *)self setSession:v1];

      v4 = *(self + 72);
      v5 = arc4random_uniform(0xF4241u) / 1000000.0;
      *(self + 8) = v5 <= v4;
      if (v5 > v4)
      {
        goto LABEL_22;
      }

      v6 = +[_CDLogging dataCollectionChannel];
      if (OUTLINED_FUNCTION_44(v6))
      {
        *buf = 0;
        OUTLINED_FUNCTION_1_29();
        _os_log_debug_impl(v7, v8, v9, v10, v11, 2u);
      }
    }

    if ([(_CDCloudFamilyDataCollectionSession *)*(self + 64) isValidForCollectionDate:v3])
    {
      v12 = +[_CDLogging dataCollectionChannel];
      if (OUTLINED_FUNCTION_44(v12))
      {
        v25 = MEMORY[0x1E696AD98];
        v26 = *(self + 64);
        if (v26)
        {
          v27 = v26[5];
        }

        else
        {
          v27 = 0;
        }

        v28 = v26;
        [v25 numberWithUnsignedInteger:v27];
        v216 = *buf = 138412290;
        OUTLINED_FUNCTION_1_29();
        _os_log_debug_impl(v29, v30, v31, v32, v33, 0xCu);
      }

      v13 = *(self + 64);
      if (v13)
      {
        v13 = *(v13 + 32);
      }

      v14 = *(self + 80) * 86400.0;
      if (v13)
      {
        v15 = *(self + 64);
        v16 = v15 ? v15[4] : 0;
        v17 = v15;
        [v3 timeIntervalSinceDate:v16];
        v19 = v18;

        if (v19 < v14)
        {
          v24 = +[_CDLogging dataCollectionChannel];
          if (OUTLINED_FUNCTION_44(v24))
          {
            *buf = 0;
            OUTLINED_FUNCTION_1_29();
            _os_log_debug_impl(v44, v45, v46, v47, v48, 2u);
          }

          *(self + 9) = 0;
          goto LABEL_22;
        }
      }

      v20 = *(self + 64);
      if (v20)
      {
        v21 = v20[5];
        v22 = *(self + 88);

        if (v21 > v22)
        {
          v23 = +[_CDLogging dataCollectionChannel];
          if (OUTLINED_FUNCTION_44(v23))
          {
            v34 = MEMORY[0x1E696AD98];
            v35 = *(self + 64);
            if (v35)
            {
              v36 = v35[5];
            }

            else
            {
              v36 = 0;
            }

            v37 = v35;
            v38 = [v34 numberWithUnsignedInteger:v36];
            [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(self + 88)];
            *buf = 138412546;
            v216 = v38;
            v218 = v217 = 2112;
            OUTLINED_FUNCTION_1_29();
            _os_log_debug_impl(v39, v40, v41, v42, v43, 0x16u);
          }

          goto LABEL_22;
        }
      }

      truncatedFileHandle = [(_CDDataCollection *)self truncatedFileHandle];
      if (!truncatedFileHandle)
      {
        obj = +[_CDLogging dataCollectionChannel];
        if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_191750000, obj, OS_LOG_TYPE_ERROR, "Failed to open file for writing data collection data", buf, 2u);
        }

LABEL_30:

        goto LABEL_22;
      }

      v49 = *(self + 96);
      if (v49)
      {
        v50 = v49[1];
      }

      else
      {
        v50 = 0;
      }

      v51 = v49;
      v52 = [v50 copy];

      v53 = [_DKQuery startDateSortDescriptorAscending:1];
      v214 = v53;
      v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v214 count:1];

      v55 = *(self + 64);
      v56 = v55;
      if (!v55 || (v57 = v55[3]) == 0)
      {
        v57 = [MEMORY[0x1E695DF00] dateWithTimeInterval:v3 sinceDate:-v14];
      }

      v186 = v54;

      v58 = +[_CDLogging dataCollectionChannel];
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v216 = v57;
        OUTLINED_FUNCTION_4_20(&dword_191750000, v58, v59, "Querying for events since %@", buf);
      }

      v184 = v57;
      v185 = [_DKQuery predicateForEventsWithStartInDateRangeFromAfter:v57 to:v3];
      v199 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v207 = 0u;
      v208 = 0u;
      v209 = 0u;
      v210 = 0u;
      obj = v52;
      v60 = [obj countByEnumeratingWithState:&v207 objects:v213 count:16];
      if (v60)
      {
        v61 = v60;
        v62 = *v208;
        do
        {
          for (i = 0; i != v61; ++i)
          {
            if (*v208 != v62)
            {
              objc_enumerationMutation(obj);
            }

            name = [*(*(&v207 + 1) + 8 * i) name];
            v65 = [_DKQuery predicateForEventsWithStreamName:name];

            [v199 addObject:v65];
          }

          v61 = [obj countByEnumeratingWithState:&v207 objects:v213 count:16];
        }

        while (v61);
      }

      v66 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v199];
      v67 = MEMORY[0x1E696AB28];
      v212[0] = v185;
      v212[1] = v66;
      v182 = v66;
      v68 = [MEMORY[0x1E695DEC8] arrayWithObjects:v212 count:2];
      v187 = [v67 andPredicateWithSubpredicates:v68];

      v69 = MEMORY[0x1E696AEC0];
      v70 = *(self + 64);
      if (v70)
      {
        v71 = v70[1];
      }

      else
      {
        v71 = 0;
      }

      v72 = MEMORY[0x1E696AD98];
      v73 = *(self + 64);
      v74 = v186;
      v183 = v3;
      if (v73)
      {
        v75 = v73[5];
      }

      else
      {
        v75 = 0;
      }

      v76 = v73;
      v77 = v71;
      v78 = v70;
      v180 = [v72 numberWithUnsignedInteger:v75];
      v79 = [v69 stringWithFormat:@"{collection_id: new_format, sessionID:%@, batch:%@, events:[", v77];

      v181 = v79;
      v80 = [v79 dataUsingEncoding:4];
      [truncatedFileHandle writeData:v80];

      getEventHandlerDictForStreams = [(_CDEventStreamsRegister *)*(self + 96) getEventHandlerDictForStreams];
      v194 = 0;
      v82 = 0;
      v196 = 0;
      v83 = v187;
      while (1)
      {
        v84 = objc_autoreleasePoolPush();
        activity = [self activity];
        if (activity)
        {
          v86 = activity;
          activity2 = [self activity];
          if (xpc_activity_should_defer(activity2))
          {
            activity3 = [self activity];
            v89 = xpc_activity_set_state(activity3, 3);

            if (v89)
            {
              *(self + 9) = 0;
              objc_autoreleasePoolPop(v84);
              v120 = 0;
              v121 = v82;
              v3 = v183;
              goto LABEL_83;
            }
          }

          else
          {
          }
        }

        v195 = v84;
        v90 = v196;
        v91 = [_DKEventQuery eventQueryWithPredicate:v83 eventStreams:obj offset:v196 limit:128 sortDescriptors:v74];
        v92 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_CDDataCollection.m"];
        v179 = 474;
        v93 = [v92 stringByAppendingFormat:@":%d"];
        [v91 setClientName:v93];

        [v91 setTracker:&__block_literal_global_99];
        storage = [self storage];
        v206 = 0;
        v121 = [storage executeQuery:v91 error:&v206];
        v120 = v206;

        if (!v120 && [v121 count])
        {
          v189 = v91;
          v190 = 0;
          context = objc_autoreleasePoolPush();
          v202 = 0u;
          v203 = 0u;
          v204 = 0u;
          v205 = 0u;
          v192 = v121;
          v95 = v121;
          v96 = [v95 countByEnumeratingWithState:&v202 objects:v211 count:16];
          if (v96)
          {
            v97 = v96;
            v98 = *v203;
            do
            {
              for (j = 0; j != v97; ++j)
              {
                if (*v203 != v98)
                {
                  objc_enumerationMutation(v95);
                }

                v100 = *(*(&v202 + 1) + 8 * j);
                stream = [v100 stream];
                name2 = [stream name];
                v103 = [getEventHandlerDictForStreams objectForKey:name2];

                if (v103)
                {
                  stream2 = [v100 stream];
                  name3 = [stream2 name];
                  v106 = [getEventHandlerDictForStreams objectForKey:name3];

                  [v106 eventHandler:v100 withFileHandle:truncatedFileHandle];
                }

                else
                {
                  v106 = +[_CDLogging dataCollectionChannel];
                  if (os_log_type_enabled(v106, OS_LOG_TYPE_DEBUG))
                  {
                    stream3 = [v100 stream];
                    name4 = [stream3 name];
                    OUTLINED_FUNCTION_0_37(name4, v109, v110, v111, v112, v113, v114, v115, v116, v179, v180, v181, v182, v183, v184, v185, v186, v187, context, v189, v190, v192, v194, v195, v196, v117);
                    *(v119 + 4) = v118;
                    _os_log_debug_impl(&dword_191750000, v106, OS_LOG_TYPE_DEBUG, "Event handler not found for eventStream: %@ in eventStreamHandlerDict", buf, 0xCu);
                  }
                }
              }

              v97 = [v95 countByEnumeratingWithState:&v202 objects:v211 count:16];
            }

            while (v97);
          }

          v194 += [v95 count];
          objc_autoreleasePoolPop(context);
          v74 = v186;
          v83 = v187;
          v120 = v190;
          v121 = v192;
          v90 = v196;
          v91 = v189;
        }

        objc_autoreleasePoolPop(v195);
        if (v120)
        {
          break;
        }

        v196 = v90 + 128;
        v82 = v121;
        if ([v121 count] != 128)
        {
          goto LABEL_78;
        }
      }

      v122 = +[_CDLogging dataCollectionChannel];
      v123 = os_log_type_enabled(v122, OS_LOG_TYPE_ERROR);
      if (v123)
      {
        OUTLINED_FUNCTION_0_37(v123, v124, v125, v126, v127, v128, v129, v130, v131, v179, v180, v181, v182, v183, v184, v185, v186, v187, context, v189, v190, v192, v194, v195, v196, v132);
        *(v133 + 4) = v120;
        OUTLINED_FUNCTION_10(&dword_191750000, v122, v134, "Error querying events during data collection: %@", buf);
      }

LABEL_78:
      if (v194)
      {
        v135 = [@" "];
        v136 = [v135 length];

        [truncatedFileHandle truncateFileAtOffset:{objc_msgSend(truncatedFileHandle, "offsetInFile") - v136}];
      }

      v137 = [MEMORY[0x1E696AEC0] stringWithFormat:@"]}"];
      v138 = [v137 dataUsingEncoding:4];
      [truncatedFileHandle writeData:v138];

      [truncatedFileHandle closeFile];
      v139 = +[_CDLogging dataCollectionChannel];
      v3 = v183;
      if (os_log_type_enabled(v139, OS_LOG_TYPE_DEBUG))
      {
        v140 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v194];
        OUTLINED_FUNCTION_0_37(v140, v141, v142, v143, v144, v145, v146, v147, v148, v179, v180, v181, v182, v183, v184, v185, v186, v187, context, v189, v190, v192, v194, v195, v196, v149);
        *(v151 + 4) = v150;
        OUTLINED_FUNCTION_4_20(&dword_191750000, v139, v152, "Wrote %@ events for data collection", buf);
      }

      v83 = v187;
      if (![(_CDDataCollection *)self submitDataForCollection])
      {
LABEL_83:
        v154 = v181;
        v153 = v182;
        goto LABEL_84;
      }

      v191 = v120;
      v193 = v121;
      lastObject = [v121 lastObject];
      startDate = [lastObject startDate];

      v157 = v3;
      v158 = [(_CDDataCollectionSession *)*(self + 64) subsequentSessionWithlatestStartDate:startDate lastCollectionDate:v3];
      v201 = 0;
      v159 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v158 requiringSecureCoding:1 error:&v201];
      v160 = v201;
      if (v160)
      {
        v161 = v160;
      }

      else
      {
        stringByDeletingLastPathComponent = [*(self + 48) stringByDeletingLastPathComponent];
        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        [defaultManager createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:0];

        v164 = *(self + 48);
        v200 = 0;
        v165 = v164;
        [v159 writeToFile:v165 options:0 error:&v200];
        v161 = v200;

        if (!v161)
        {
          *(self + 9) = 0;
          goto LABEL_91;
        }
      }

      v166 = +[_CDLogging dataCollectionChannel];
      v167 = os_log_type_enabled(v166, OS_LOG_TYPE_ERROR);
      if (v167)
      {
        OUTLINED_FUNCTION_0_37(v167, v168, v169, v170, v171, v172, v173, v174, v175, v179, v180, v181, v182, v183, v184, v185, v186, v187, context, v189, v191, v193, v194, v195, v196, v176);
        *(v177 + 4) = v161;
        OUTLINED_FUNCTION_10(&dword_191750000, v166, v178, "Error archiving subsequent data collection session: %@", buf);
      }

LABEL_91:
      v3 = v157;
      v74 = v186;
      v83 = v187;
      v154 = v181;
      v153 = v182;
      v120 = v191;
      v121 = v193;
LABEL_84:

      goto LABEL_30;
    }

LABEL_22:
  }
}

- (void)cleanup
{
  v15 = *MEMORY[0x1E69E9840];
  if (self && *(self + 9) == 1)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v3 = *(self + 48);
    v12 = 0;
    v4 = v3;
    [defaultManager removeItemAtPath:v4 error:&v12];
    v5 = v12;

    if (!v5)
    {
LABEL_13:

      return;
    }

    userInfo = [v5 userInfo];
    v7 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

    if (v7)
    {
      domain = [v7 domain];
      if ([domain isEqualToString:*MEMORY[0x1E696A798]])
      {
        code = [v7 code];

        if (code == 2)
        {
          goto LABEL_12;
        }
      }

      else
      {
      }

      v10 = +[_CDLogging dataCollectionChannel];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v13 = 138412290;
        v14 = v5;
        OUTLINED_FUNCTION_10(&dword_191750000, v10, v11, "Error remove previous session file: %@", &v13);
      }
    }

LABEL_12:

    goto LABEL_13;
  }
}

- (void)setSession:(uint64_t)session
{
  if (session)
  {
    objc_storeStrong((session + 64), a2);
  }
}

- (id)truncatedFileHandle
{
  v14 = *MEMORY[0x1E69E9840];
  if (self)
  {
    dataPath = [(_CDDataCollection *)self dataPath];
    stringByDeletingLastPathComponent = [dataPath stringByDeletingLastPathComponent];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v11 = 0;
    [defaultManager createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v11];
    v4 = v11;

    if (v4)
    {
      v5 = +[_CDLogging dataCollectionChannel];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v12 = 138412290;
        v13 = v4;
        OUTLINED_FUNCTION_10(&dword_191750000, v5, v6, "Error creating directory for data collection: %@", &v12);
      }

      v7 = 0;
    }

    else
    {
      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      data = [MEMORY[0x1E695DEF0] data];
      [defaultManager2 createFileAtPath:dataPath contents:data attributes:0];

      v7 = [MEMORY[0x1E696AC00] fileHandleForWritingAtPath:dataPath];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)submitDataForCollection
{
  v25 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  v2 = +[_CDLogging dataCollectionChannel];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_191750000, v2, OS_LOG_TYPE_DEBUG, "Compressing data collection json file", buf, 2u);
  }

  dataPath = [(_CDDataCollection *)self dataPath];
  v4 = [dataPath stringByAppendingPathExtension:@"tar.gz"];
  fileSystemRepresentation = [dataPath fileSystemRepresentation];
  lastPathComponent = [dataPath lastPathComponent];
  [lastPathComponent fileSystemRepresentation];

  [v4 fileSystemRepresentation];
  archive_write_new();
  if (!archive_write_add_filter_gzip() && !archive_write_set_format_pax_restricted() && !archive_write_open_filename())
  {
    bzero(&v20, 0x90uLL);
    stat(fileSystemRepresentation, &v20);
    archive_entry_new();
    archive_entry_set_size();
    archive_entry_set_filetype();
    archive_entry_set_perm();
    archive_entry_set_pathname();
    if (!archive_write_header())
    {
      v13 = open(fileSystemRepresentation, 0);
      while (read(v13, buf, 0x2000uLL))
      {
        archive_write_data();
      }

      close(v13);
      archive_entry_free();
      archive_write_close();
      archive_write_free();
      v19 = 0;
      v14 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v4 options:8 error:&v19];
      v15 = v19;
      v10 = v15 == 0;
      if (v15)
      {
        lastPathComponent2 = +[_CDLogging dataCollectionChannel];
        if (os_log_type_enabled(lastPathComponent2, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v22 = v15;
          OUTLINED_FUNCTION_10(&dword_191750000, lastPathComponent2, v17, "Error mapping gzipped data collection file for DA submission: %@", buf);
        }
      }

      else
      {
        lastPathComponent2 = [v4 lastPathComponent];
        submissionBlock = [self submissionBlock];
        (submissionBlock)[2](submissionBlock, lastPathComponent2, v14);
      }

      goto LABEL_12;
    }

    archive_entry_free();
  }

  v7 = archive_errno();
  v8 = archive_error_string();
  v9 = +[_CDLogging dataCollectionChannel];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v12 = [MEMORY[0x1E696AD98] numberWithInt:v7];
    *buf = 138412546;
    v22 = v12;
    v23 = 2080;
    v24 = v8;
    _os_log_error_impl(&dword_191750000, v9, OS_LOG_TYPE_ERROR, "Error compressing data collection file. code:%@ %s", buf, 0x16u);
  }

  archive_write_close();
  archive_write_free();
  v10 = 0;
LABEL_12:

  return v10;
}

- (id)dataPath
{
  selfCopy = self;
  if (self)
  {
    if (self[8])
    {
      v2 = self[8];
      if (v2)
      {
        v3 = v2[1];
      }

      else
      {
        v3 = 0;
      }

      v4 = MEMORY[0x1E696AD98];
      v5 = self[8];
      if (v5)
      {
        v6 = v5[5];
      }

      else
      {
        v6 = 0;
      }

      v7 = v5;
      v8 = v3;
      v9 = v2;
      v10 = [v4 numberWithUnsignedInteger:v6];
      v11 = [v8 stringByAppendingFormat:@".%@.json", v10];

      selfCopy = [selfCopy[5] stringByAppendingPathComponent:v11];
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (void)initWithStorage:(NSObject *)a1 activity:.cold.1(NSObject *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v4 = 138412290;
  v5 = v2;
  OUTLINED_FUNCTION_4_20(&dword_191750000, a1, v3, "Sampling Rate: %@", &v4);
}

- (void)initWithStorage:(uint64_t)a3 activity:sessionPath:dataDirectory:collectionDate:samplingRate:daysPerBatch:eventStreams:maxBatches:.cold.1(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  OUTLINED_FUNCTION_10(&dword_191750000, a2, a3, "Error unarchiving data collection session: %@", &v3);
}

@end