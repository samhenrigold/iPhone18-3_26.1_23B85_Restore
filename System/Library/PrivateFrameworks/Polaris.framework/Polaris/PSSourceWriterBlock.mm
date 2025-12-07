@interface PSSourceWriterBlock
- (PRMWriterInstance)getWriterInstForKey:(id)key;
- (PSSourceTask)sourceTask;
- (PSSourceWriterBlock)initWithSourceTask:(id)task synchronizer:(ps_synchronizer *)synchronizer transitionManager:(id)manager frameStepping:(BOOL)stepping;
- (PSTransitionManager)transitionManager;
- (void)acquireOutputBuffer:(ps_resource *)buffer key:(id)key;
- (void)releaseOutputBufferForKey:(id)key;
- (void)setupResultsWithContext:(id)context device:(id)device;
- (void)stop;
@end

@implementation PSSourceWriterBlock

- (PSSourceWriterBlock)initWithSourceTask:(id)task synchronizer:(ps_synchronizer *)synchronizer transitionManager:(id)manager frameStepping:(BOOL)stepping
{
  v17.receiver = self;
  v17.super_class = PSSourceWriterBlock;
  managerCopy = manager;
  taskCopy = task;
  v11 = [(PSSourceWriterBlock *)&v17 init];
  objc_storeWeak(&v11->_sourceTask, taskCopy);

  v11->_outputs = 0;
  v11->_prm_mgr = [managerCopy prm_mgr];
  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  writerInsts = v11->_writerInsts;
  v11->_writerInsts = v12;

  v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
  frameIDs = v11->_frameIDs;
  v11->_frameIDs = v14;

  v11->_sourceTaskData = 0;
  v11->_localSourceTaskData = 0;
  atomic_store(0, &v11->_transitionPendingStorage);
  atomic_store(0, &v11->_pendingReaders);
  v11->_synchronizer = synchronizer;
  objc_storeWeak(&v11->_transitionManager, managerCopy);

  v11->_frameStepping = stepping;
  return v11;
}

- (void)acquireOutputBuffer:(ps_resource *)buffer key:(id)key
{
  v4 = [(PSSourceWriterBlock *)self getWriterInstForKey:key];

  ps_prm_acquire_write_resources(v4);
}

- (void)releaseOutputBufferForKey:(id)key
{
  keyCopy = key;
  v5 = [(PSSourceWriterBlock *)self getWriterInstForKey:keyCopy];
  v8 = [(NSMutableDictionary *)self->_frameIDs objectForKeyedSubscript:keyCopy];
  unsignedLongLongValue = [v8 unsignedLongLongValue];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:unsignedLongLongValue + 1];
  [(NSMutableDictionary *)self->_frameIDs setObject:v7 forKeyedSubscript:keyCopy];

  ps_prm_relinquish_writer_resources(v5);
  ps_prm_publish_writer_resources(v5);
}

- (PRMWriterInstance)getWriterInstForKey:(id)key
{
  keyCopy = key;
  v5 = [(NSMutableDictionary *)self->_writerInsts objectForKeyedSubscript:keyCopy];

  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_writerInsts objectForKeyedSubscript:keyCopy];
    pointerValue = [v6 pointerValue];

    return pointerValue;
  }

  else
  {
    v9 = [(PSSourceWriterBlock *)&v13 getWriterInstForKey:keyCopy];
    [(PSSourceWriterBlock *)v9 setupResultsWithContext:v10 device:v11, v12];
  }

  return result;
}

- (void)setupResultsWithContext:(id)context device:(id)device
{
  v260 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  deviceCopy = device;
  WeakRetained = objc_loadWeakRetained(&self->_sourceTask);
  outputs = [WeakRetained outputs];
  [outputs count];
  self->_outputs = ps_resource_array_create();

  v8 = malloc_type_calloc(1uLL, 0x100uLL, 0x102004027845E25uLL);
  v8->var4 = self->_synchronizer;
  self->_sourceTaskData = v8;
  v230 = v8;
  v8->var3 = 0;
  v223 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v248 = 0u;
  v249 = 0u;
  v250 = 0u;
  v251 = 0u;
  selfCopy = self;
  v9 = objc_loadWeakRetained(&self->_sourceTask);
  outputs2 = [v9 outputs];

  v238 = outputs2;
  v11 = [outputs2 countByEnumeratingWithState:&v248 objects:v259 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v249;
    do
    {
      v14 = 0;
      do
      {
        if (*v249 != v13)
        {
          objc_enumerationMutation(v238);
        }

        resourceKey = [*(*(&v248 + 1) + 8 * v14) resourceKey];
        v16 = [contextCopy resourceStreamForKey:resourceKey];

        resourceClass = [v16 resourceClass];
        if (resourceClass <= 0xB && ((1 << resourceClass) & 0xB80) != 0)
        {
          [v16 provider];
        }

        if (ps_resource_stream_provider_is_rc())
        {
          v19 = &unk_2870CAD58;
        }

        else
        {
          v19 = &unk_2870CAD70;
        }

        [v223 addObject:v19];

        ++v14;
      }

      while (v12 != v14);
      v20 = [v238 countByEnumeratingWithState:&v248 objects:v259 count:16];
      v12 = v20;
    }

    while (v20);
  }

  firstObject = [v223 firstObject];
  bOOLValue = [firstObject BOOLValue];

  v22 = selfCopy;
  if ([v223 count])
  {
    v23 = 0;
    do
    {
      v24 = [v223 objectAtIndexedSubscript:v23];
      bOOLValue2 = [v24 BOOLValue];

      if (bOOLValue != bOOLValue2)
      {
        goto LABEL_181;
      }

      ++v23;
    }

    while ([v223 count] > v23);
  }

  v246 = 0u;
  v247 = 0u;
  v244 = 0u;
  v245 = 0u;
  v26 = objc_loadWeakRetained(&selfCopy->_sourceTask);
  outputs3 = [v26 outputs];

  v216 = outputs3;
  v221 = [outputs3 countByEnumeratingWithState:&v244 objects:v258 count:16];
  if (v221)
  {
    var2 = v230->var2;
    var1 = v230->var1;
    v219 = *v245;
    *&v28 = 136315138;
    v217 = v28;
    *&v28 = 134217984;
    v212 = v28;
    *&v28 = 67109632;
    v211 = v28;
    *&v28 = 136315394;
    v213 = v28;
    do
    {
      v29 = 0;
      do
      {
        if (*v245 != v219)
        {
          objc_enumerationMutation(v216);
        }

        v232 = v29;
        v30 = *(*(&v244 + 1) + 8 * v29);
        resourceKey2 = [v30 resourceKey];
        provider = [contextCopy resourceStreamForKey:resourceKey2];

        resource = ps_resource_array_get_resource();
        v237 = v30;
        resourceKey3 = [v30 resourceKey];
        MEMORY[0x25F8C9510](resource, [resourceKey3 UTF8String]);

        MEMORY[0x25F8C94C0](resource, 0, 1);
        MEMORY[0x25F8C93F0](resource, [provider resourceClass]);
        if ([provider resourceClass] == 9)
        {
          v35 = 4;
        }

        else if ([provider resourceClass] == 11)
        {
          v35 = 4;
        }

        else
        {
          v35 = 1;
        }

        v231 = v35;
        MEMORY[0x25F8C94A0](resource, 1);
        v236 = provider;
        if ((bOOLValue & 1) == 0)
        {
          v41 = ps_prm_opts_create();
          v42 = v237;
          resourceKey4 = [v237 resourceKey];
          capacity = [v42 capacity];
          v45 = objc_loadWeakRetained(&selfCopy->_transitionManager);
          executionSession = [v45 executionSession];
          v47 = [executionSession gsm];
          v48 = capacity;
          v22 = selfCopy;
          [PSGraphCompiler populateWriterOpts:v41 forKey:resourceKey4 withCapacity:v48 forGraph:0 withResStream:v236 withContext:contextCopy retainedBufferIndexers:0 withGSM:v47];

          writer_instance = ps_prm_create_writer_instance(v22->_prm_mgr, v41);
          ps_prm_opts_destroy(v41);
          frameIDs = v22->_frameIDs;
          resourceKey5 = [v42 resourceKey];
          [(NSMutableDictionary *)frameIDs setObject:&unk_2870CAD88 forKeyedSubscript:resourceKey5];

          v52 = [MEMORY[0x277CCAE60] valueWithPointer:writer_instance];
          writerInsts = v22->_writerInsts;
          resourceKey6 = [v42 resourceKey];
          [(NSMutableDictionary *)writerInsts setObject:v52 forKeyedSubscript:resourceKey6];

          provider = v236;
          [provider provider];
          if (ps_resource_stream_provider_has_iosurface_metadata())
          {
            v55 = 1;
          }

          else
          {
            [provider provider];
            if (ps_resource_stream_provider_has_cfdata_metadata())
            {
              v55 = 0;
            }

            else
            {
              [provider provider];
              if ((ps_resource_stream_provider_has_no_metadata() & 1) == 0)
              {
                goto LABEL_175;
              }

              v55 = 2;
            }
          }

          MEMORY[0x25F8C9520](resource, v55);
          resourceKey7 = [v237 resourceKey];
          [(PSSourceWriterBlock *)v22 acquireOutputBuffer:resource key:resourceKey7];

          goto LABEL_142;
        }

        v36 = v237;
        resourceKey8 = [v237 resourceKey];
        v224 = [PSRCConstants resourceIDForKey:resourceKey8];

        resourceKey9 = [v36 resourceKey];
        v39 = [deviceCopy propertiesForKey:resourceKey9];
        syncedKey = [v39 syncedKey];

        v227 = syncedKey;
        if (syncedKey)
        {
          v229 = [PSRCConstants resourceIDForKey:syncedKey];
        }

        else
        {
          v229 = 0;
        }

        resourceKey10 = [v237 resourceKey];
        v57 = [deviceCopy propertiesForKey:resourceKey10];

        v58 = v224;
        v226 = v57;
        if (v57)
        {
          sensorFrameRate = [v57 sensorFrameRate];
        }

        else
        {
          sensorFrameRate = 0;
        }

        resourceClass2 = [provider resourceClass];
        v61 = resourceClass2;
        if (resourceClass2 > 8)
        {
          if (resourceClass2 == 9)
          {
            v62 = __PLSLogSharedInstance(9);
            if (!os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_60;
            }

            v63 = v236;
            [v236 key];
            v65 = v64 = 9;
            uTF8String = [v65 UTF8String];
            v253 = v217;
            *v254 = uTF8String;
            v67 = v62;
            v68 = "Received a data buffer stream for %s";
          }

          else
          {
            if (resourceClass2 != 11)
            {
              goto LABEL_174;
            }

            v62 = __PLSLogSharedInstance(11);
            if (!os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
            {
LABEL_60:
              v63 = v236;
              goto LABEL_61;
            }

            v63 = v236;
            [v236 key];
            v65 = v64 = 11;
            uTF8String2 = [v65 UTF8String];
            v253 = v217;
            *v254 = uTF8String2;
            v67 = v62;
            v68 = "Received a pearl buffer stream for %s";
          }
        }

        else if (resourceClass2 == 7)
        {
          v62 = __PLSLogSharedInstance(7);
          if (!os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_60;
          }

          v63 = v236;
          [v236 key];
          v65 = v64 = 7;
          uTF8String3 = [v65 UTF8String];
          v253 = v217;
          *v254 = uTF8String3;
          v67 = v62;
          v68 = "Received a pixel buffer stream for %s";
        }

        else
        {
          if (resourceClass2 != 8)
          {
            goto LABEL_174;
          }

          v62 = __PLSLogSharedInstance(8);
          if (!os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_60;
          }

          v63 = v236;
          [v236 key];
          v65 = v64 = 8;
          uTF8String4 = [v65 UTF8String];
          v253 = v217;
          *v254 = uTF8String4;
          v67 = v62;
          v68 = "Received a jasper buffer stream for %s";
        }

        _os_log_impl(&dword_25EA3A000, v67, OS_LOG_TYPE_DEBUG, v68, &v253, 0xCu);

        v61 = v64;
LABEL_61:

        provider = [v63 provider];
        v225 = v61;
        MEMORY[0x25F8C93F0](resource, v61);
        v73 = MEMORY[0x25F8C94A0](resource, 1);
        v74 = __PLSLogSharedInstance(v73);
        if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
        {
          v253 = v212;
          *v254 = provider;
          _os_log_impl(&dword_25EA3A000, v74, OS_LOG_TYPE_DEBUG, "Stream provider: %lu", &v253, 0xCu);
        }

        if (provider >= 9)
        {
          goto LABEL_157;
        }

        v75 = dword_25EB77230[provider];
        v76 = (provider - 6) > 2;
        v218 = provider - 6;
        v77 = MEMORY[0x25F8C9520](resource, (provider - 6) < 3);
        v78 = __PLSLogSharedInstance(v77);
        if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
        {
          v253 = v211;
          *v254 = provider;
          *&v254[4] = 1024;
          *&v254[6] = v75;
          *v255 = 1024;
          *&v255[2] = (provider - 6) > 2;
          _os_log_impl(&dword_25EA3A000, v78, OS_LOG_TYPE_DEBUG, "Converted the stream provider type: %u into buffer writer provider type: %d with metadata type: %d", &v253, 0x14u);
        }

        v79 = objc_loadWeakRetained(&v22->_transitionManager);
        executionSession2 = [v79 executionSession];
        v81 = ps_buffer_writer_init(0, [executionSession2 gsm]);

        resourceKey11 = [v237 resourceKey];
        ps_buffer_writer_setkey(v81, [resourceKey11 UTF8String]);

        v233 = v81;
        cam_stream_attr = ps_buffer_writer_get_cam_stream_attr(v81);
        v84 = cam_stream_attr;
        cam_stream_attr[5].i32[3] = v75;
        cam_stream_attr[1].i64[0] = v225;
        if (provider == 1)
        {
          v85 = objc_loadWeakRetained(&v22->_sourceTask);
          bufferPool = [v85 bufferPool];

          if (!bufferPool)
          {
            [PSSourceWriterBlock setupResultsWithContext:v236 device:?];
LABEL_168:
            v243 = 0;
            v197 = v237;
            resourceKey12 = [v237 resourceKey];
            uTF8String5 = [resourceKey12 UTF8String];
            asprintf(&v243, "Wrong number of surfaces receieved for (%s). Should be %u. Recevied %lu", uTF8String5, v22, [provider count]);

            v200 = __PLSLogSharedInstance(v199);
            if (os_log_type_enabled(v200, OS_LOG_TYPE_FAULT))
            {
              uTF8String5 = [v197 resourceKey];
              v89UTF8String = [uTF8String5 UTF8String];
              v202 = [provider count];
              v253 = 136316162;
              *v254 = "[PSSourceWriterBlock setupResultsWithContext:device:]";
              *&v254[8] = 1024;
              *v255 = 472;
              *&v255[4] = 2080;
              *&v255[6] = v89UTF8String;
              *&v255[14] = 1024;
              *&v255[16] = v22;
              v256 = 2048;
              v257 = v202;
              _os_log_impl(&dword_25EA3A000, v200, OS_LOG_TYPE_FAULT, "%s:%d Wrong number of surfaces receieved for (%s). Should be %u. Recevied %lu", &v253, 0x2Cu);
            }

            v203 = OSLogFlushBuffers();
            if (!v203)
            {
              goto LABEL_151;
            }

            uTF8String5 = v203;
            v184 = __PLSLogSharedInstance(v203);
            if (!os_log_type_enabled(v184, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_154;
            }

            while (1)
            {
LABEL_153:
              v253 = v213;
              *v254 = "[PSSourceWriterBlock setupResultsWithContext:device:]";
              *&v254[8] = 1024;
              *v255 = uTF8String5;
              _os_log_impl(&dword_25EA3A000, v184, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v253, 0x12u);
              do
              {
LABEL_154:

                while (1)
                {
                  abort_with_reason();
LABEL_156:
                  [PSSourceWriterBlock setupResultsWithContext:uTF8String5 device:?];
LABEL_157:
                  v243 = 0;
                  uTF8String5 = v236;
                  v185 = [v236 key];
                  asprintf(&v243, "Unrecognized provider type was provided: %d for key: %s", provider, [v185 UTF8String]);

                  v187 = __PLSLogSharedInstance(v186);
                  if (os_log_type_enabled(v187, OS_LOG_TYPE_FAULT))
                  {
                    uTF8String5 = [uTF8String5 key];
                    v89UTF8String2 = [uTF8String5 UTF8String];
                    v253 = 136315906;
                    *v254 = "[PSSourceWriterBlock setupResultsWithContext:device:]";
                    *&v254[8] = 1024;
                    *v255 = 315;
                    *&v255[4] = 1024;
                    *&v255[6] = provider;
                    *&v255[10] = 2080;
                    *&v255[12] = v89UTF8String2;
                    _os_log_impl(&dword_25EA3A000, v187, OS_LOG_TYPE_FAULT, "%s:%d Unrecognized provider type was provided: %d for key: %s", &v253, 0x22u);
                  }

                  v189 = OSLogFlushBuffers();
                  if (v189)
                  {
                    break;
                  }

LABEL_151:
                  usleep(0x1E8480u);
                }

                uTF8String5 = v189;
                v184 = __PLSLogSharedInstance(v189);
              }

              while (!os_log_type_enabled(v184, OS_LOG_TYPE_ERROR));
            }
          }
        }

        v234 = v84;
        v87 = __PLSLogSharedInstance(cam_stream_attr);
        v88 = os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG);
        uTF8String5 = v236;
        if (v88)
        {
          v90 = [v236 key];
          uTF8String6 = [v90 UTF8String];
          v253 = v217;
          *v254 = uTF8String6;
          _os_log_impl(&dword_25EA3A000, v87, OS_LOG_TYPE_DEBUG, "Setting up camera view counts for stream: %s", &v253, 0xCu);
        }

        provider = PSTransitionMonitor;
        v92 = [uTF8String5 key];
        v93 = [PSRCConstants getCameraDepthForKey:v92];
        v94 = v234;
        v234->i32[0] = v93;

        v95 = [uTF8String5 key];
        v94->i32[1] = [PSRCConstants getWriterDepthForKey:v95];

        v96 = [uTF8String5 key];
        v94->i32[2] = [PSRCConstants getReaderDepthForKey:v96];

        if (![uTF8String5 retainedISPRCCount])
        {
          goto LABEL_156;
        }

        v94->i32[3] = [uTF8String5 retainedISPRCCount];
        rcFrameID = [v226 rcFrameID];
        v98 = rcFrameID;
        v99 = __PLSLogSharedInstance(rcFrameID);
        v100 = os_log_type_enabled(v99, OS_LOG_TYPE_DEBUG);
        if (v98)
        {
          if (v100)
          {
            resourceKey13 = [v237 resourceKey];
            uTF8String7 = [resourceKey13 UTF8String];
            v253 = v213;
            *v254 = "[PSSourceWriterBlock setupResultsWithContext:device:]";
            *&v254[8] = 2080;
            *v255 = uTF8String7;
            _os_log_impl(&dword_25EA3A000, v99, OS_LOG_TYPE_DEBUG, "%s this camera %s has frameid delivered by RC ", &v253, 0x16u);
          }

          synchronizer = 0;
        }

        else
        {
          if (v100)
          {
            resourceKey14 = [v237 resourceKey];
            uTF8String8 = [resourceKey14 UTF8String];
            v253 = v213;
            *v254 = "[PSSourceWriterBlock setupResultsWithContext:device:]";
            *&v254[8] = 2080;
            *v255 = uTF8String8;
            _os_log_impl(&dword_25EA3A000, v99, OS_LOG_TYPE_DEBUG, "%s this camera %s has frameid set by Polaris ", &v253, 0x16u);
          }

          synchronizer = v22->_synchronizer;
        }

        v94[1].i64[1] = synchronizer;
        provider = v236;
        if (v58)
        {
          unsignedLongValue = [v58 unsignedLongValue];
        }

        else
        {
          unsignedLongValue = 156;
        }

        v94[2].i64[0] = unsignedLongValue;
        if (v229)
        {
          unsignedLongValue2 = [v229 unsignedLongValue];
        }

        else
        {
          unsignedLongValue2 = 156;
        }

        v94[3].i64[0] = unsignedLongValue2;
        v108 = v237;
        resourceKey15 = [v237 resourceKey];
        v94[3].i64[1] = ps_telemetry_create_string_id([resourceKey15 UTF8String]);

        resourceKey16 = [v108 resourceKey];
        v111 = [PLSDevice getAriadneID:resourceKey16];
        v234[4].i64[0] = v111;

        v112 = v234;
        v113 = [PLSDevice getAriadneID:v227];
        v114 = v231;
        v112[4].i64[1] = v113;
        v112[5].i64[0] = v114;
        v112[2].i64[1] = sensorFrameRate;
        v112[5].i32[2] = v76;
        ps_buffer_writer_create_resource(v233);
        v115 = objc_loadWeakRetained(&v22->_sourceTask);
        bufferPool2 = [v115 bufferPool];

        if (bufferPool2)
        {
          v118 = __PLSLogSharedInstance(v117);
          if (os_log_type_enabled(v118, OS_LOG_TYPE_DEBUG))
          {
            v119 = [provider key];
            uTF8String9 = [v119 UTF8String];
            v253 = v217;
            *v254 = uTF8String9;
            _os_log_impl(&dword_25EA3A000, v118, OS_LOG_TYPE_DEBUG, "Received a pixel buffer stream for %s", &v253, 0xCu);
          }

          v121 = objc_loadWeakRetained(&v22->_sourceTask);
          provider = [v121 bufferPool];

          v122 = v112->i32[3] + v112->i32[0] + (v112->i32[2] + v112->i32[1]) * v231;
          v123 = [provider count];
          if (v123 != v122)
          {
            v243 = 0;
            v190 = v237;
            resourceKey17 = [v237 resourceKey];
            uTF8String5 = [resourceKey17 UTF8String];
            asprintf(&v243, "Wrong number of surfaces receieved for (%s). Should be %u. Recevied %lu", uTF8String5, v122, [provider count]);

            v193 = __PLSLogSharedInstance(v192);
            if (os_log_type_enabled(v193, OS_LOG_TYPE_FAULT))
            {
              uTF8String5 = [v190 resourceKey];
              v89UTF8String3 = [uTF8String5 UTF8String];
              v195 = [provider count];
              v253 = 136316162;
              *v254 = "[PSSourceWriterBlock setupResultsWithContext:device:]";
              *&v254[8] = 1024;
              *v255 = 408;
              *&v255[4] = 2080;
              *&v255[6] = v89UTF8String3;
              *&v255[14] = 1024;
              *&v255[16] = v122;
              v256 = 2048;
              v257 = v195;
              _os_log_impl(&dword_25EA3A000, v193, OS_LOG_TYPE_FAULT, "%s:%d Wrong number of surfaces receieved for (%s). Should be %u. Recevied %lu", &v253, 0x2Cu);
            }

            v196 = OSLogFlushBuffers();
            if (!v196)
            {
              goto LABEL_151;
            }

            uTF8String5 = v196;
            v184 = __PLSLogSharedInstance(v196);
            if (!os_log_type_enabled(v184, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_154;
            }

            goto LABEL_153;
          }

          v124 = v123;
          v125 = v210 - ((8 * v123 + 15) & 0xFFFFFFFFFFFFFFF0);
          if ((8 * v123) >= 0x200)
          {
            v126 = 512;
          }

          else
          {
            v126 = 8 * v123;
          }

          bzero(v210 - ((8 * v123 + 15) & 0xFFFFFFFFFFFFFFF0), v126);
          if (v122)
          {
            v127 = 0;
            do
            {
              *&v125[8 * v127] = [provider objectAtIndex:v127];
              ++v127;
            }

            while (v124 != v127);
          }

          v128 = v233;
          ps_buffer_writer_camerastream_install_bufferpool(v233, v125);

          v22 = selfCopy;
          provider = v236;
        }

        else
        {
          v129 = objc_loadWeakRetained(&v22->_sourceTask);
          pearlBufferPools = [v129 pearlBufferPools];

          v132 = __PLSLogSharedInstance(v131);
          v133 = os_log_type_enabled(v132, OS_LOG_TYPE_DEBUG);
          if (pearlBufferPools)
          {
            if (v133)
            {
              v134 = [provider key];
              uTF8String10 = [v134 UTF8String];
              v253 = v217;
              *v254 = uTF8String10;
              _os_log_impl(&dword_25EA3A000, v132, OS_LOG_TYPE_DEBUG, "Received a pearl buffer stream for %s", &v253, 0xCu);
            }

            v136 = objc_loadWeakRetained(&v22->_sourceTask);
            pearlBufferPools2 = [v136 pearlBufferPools];
            v138 = [pearlBufferPools2 count];

            if (v138 != 4)
            {
              [PSSourceWriterBlock setupResultsWithContext:&v22->_sourceTask device:?];
LABEL_181:
              [PSSourceWriterBlock setupResultsWithContext:&v22->_sourceTask device:?];
            }

            v210[1] = v210;
            v139 = vaddvq_s32(*v112);
            v140 = v22;
            v141 = v139;
            v142 = &v210[-4 * v139];
            if (8 * (4 * v139) >= 0x200)
            {
              v143 = 512;
            }

            else
            {
              v143 = 32 * v139;
            }

            bzero(&v210[-4 * v139], v143);
            v241 = 0u;
            v242 = 0u;
            v239 = 0u;
            v240 = 0u;
            v144 = objc_loadWeakRetained(&v140->_sourceTask);
            pearlBufferPools3 = [v144 pearlBufferPools];

            v238 = pearlBufferPools3;
            v146 = [pearlBufferPools3 countByEnumeratingWithState:&v239 objects:v252 count:16];
            if (v146)
            {
              v147 = v146;
              v148 = 0;
              v149 = *v240;
              do
              {
                for (i = 0; i != v147; ++i)
                {
                  if (*v240 != v149)
                  {
                    objc_enumerationMutation(v238);
                  }

                  v151 = *(*(&v239 + 1) + 8 * i);
                  if ([v151 count] != v141)
                  {
                    v243 = 0;
                    v177 = v237;
                    resourceKey18 = [v237 resourceKey];
                    uTF8String5 = [resourceKey18 UTF8String];
                    asprintf(&v243, "Wrong number of surfaces recieved one of the buffer pools for %s. Should have been %u, received %lu", uTF8String5, v141, [v151 count]);

                    v180 = __PLSLogSharedInstance(v179);
                    provider = &v253;
                    if (os_log_type_enabled(v180, OS_LOG_TYPE_FAULT))
                    {
                      uTF8String5 = [v177 resourceKey];
                      v89UTF8String4 = [uTF8String5 UTF8String];
                      v182 = [v151 count];
                      v253 = 136316162;
                      *v254 = "[PSSourceWriterBlock setupResultsWithContext:device:]";
                      *&v254[8] = 1024;
                      *v255 = 437;
                      *&v255[4] = 2080;
                      *&v255[6] = v89UTF8String4;
                      *&v255[14] = 1024;
                      *&v255[16] = v141;
                      v256 = 2048;
                      v257 = v182;
                      _os_log_impl(&dword_25EA3A000, v180, OS_LOG_TYPE_FAULT, "%s:%d Wrong number of surfaces recieved one of the buffer pools for %s. Should have been %u, received %lu", &v253, 0x2Cu);
                    }

                    v183 = OSLogFlushBuffers();
                    if (!v183)
                    {
                      goto LABEL_151;
                    }

                    uTF8String5 = v183;
                    v184 = __PLSLogSharedInstance(v183);
                    if (!os_log_type_enabled(v184, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_154;
                    }

                    goto LABEL_153;
                  }

                  if (v141)
                  {
                    for (j = 0; j != v141; ++j)
                    {
                      v142[(v148 + j)] = [v151 objectAtIndex:j];
                    }

                    v148 += j;
                  }
                }

                v147 = [v238 countByEnumeratingWithState:&v239 objects:v252 count:16];
              }

              while (v147);
            }

            v128 = v233;
            ps_buffer_writer_camerastream_install_bufferpool(v233, v142);
            v22 = selfCopy;
            provider = v236;
            v58 = v224;
          }

          else
          {
            if (v133)
            {
              LOWORD(v253) = 0;
              _os_log_impl(&dword_25EA3A000, v132, OS_LOG_TYPE_DEBUG, "No buffers were found to install", &v253, 2u);
            }

            v128 = v233;
            ps_buffer_writer_camerastream_install_bufferpool(v233, 0);
          }
        }

        if (v218 <= 2)
        {
          v153 = objc_loadWeakRetained(&v22->_sourceTask);
          metadataBufferPool = [v153 metadataBufferPool];

          if (!metadataBufferPool)
          {
            [PSSourceWriterBlock setupResultsWithContext:? device:?];
LABEL_174:
            [PSSourceWriterBlock setupResultsWithContext:v237 device:?];
LABEL_175:
            v243 = 0;
            resourceKey19 = [v237 resourceKey];
            uTF8String5 = [resourceKey19 UTF8String];
            asprintf(&v243, "Metadata ill-defined for key %s, provider type %d", uTF8String5, [provider provider]);

            v206 = __PLSLogSharedInstance(v205);
            if (os_log_type_enabled(v206, OS_LOG_TYPE_FAULT))
            {
              uTF8String5 = [v237 resourceKey];
              v89UTF8String5 = [uTF8String5 UTF8String];
              provider2 = [v236 provider];
              v253 = 136315906;
              *v254 = "[PSSourceWriterBlock setupResultsWithContext:device:]";
              *&v254[8] = 1024;
              *v255 = 245;
              *&v255[4] = 2080;
              *&v255[6] = v89UTF8String5;
              *&v255[14] = 1024;
              *&v255[16] = provider2;
              _os_log_impl(&dword_25EA3A000, v206, OS_LOG_TYPE_FAULT, "%s:%d Metadata ill-defined for key %s, provider type %d", &v253, 0x22u);
            }

            v209 = OSLogFlushBuffers();
            if (!v209)
            {
              goto LABEL_151;
            }

            uTF8String5 = v209;
            v184 = __PLSLogSharedInstance(v209);
            if (!os_log_type_enabled(v184, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_154;
            }

            goto LABEL_153;
          }

          v155 = objc_loadWeakRetained(&v22->_sourceTask);
          provider = [v155 metadataBufferPool];

          v156 = v234->i32[1];
          v157 = v234->i32[3] + v234->i32[0];
          if (v225 == 11)
          {
            LODWORD(v22) = v157 + v156 + v234->i32[2];
          }

          else
          {
            LODWORD(v22) = v157 + (v234->i32[2] + v156) * v231;
          }

          v158 = [provider count];
          if (v158 != v22)
          {
            goto LABEL_168;
          }

          v159 = v158;
          v160 = v210 - ((8 * v158 + 15) & 0xFFFFFFFFFFFFFFF0);
          if ((8 * v158) >= 0x200)
          {
            v161 = 512;
          }

          else
          {
            v161 = 8 * v158;
          }

          bzero(v210 - ((8 * v158 + 15) & 0xFFFFFFFFFFFFFFF0), v161);
          if (v22)
          {
            v162 = 0;
            do
            {
              *&v160[8 * v162] = [provider objectAtIndex:v162];
              ++v162;
            }

            while (v159 != v162);
          }

          v128 = v233;
          ps_buffer_writer_camerastream_install_metadata_bufferpool(v233, v160);

          v22 = selfCopy;
          provider = v236;
        }

        if (v22->_synchronizer)
        {
          if (v58)
          {
            unsignedLongValue3 = [v58 unsignedLongValue];
          }

          else
          {
            unsignedLongValue3 = 156;
          }

          if (v229)
          {
            unsignedLongValue4 = [v229 unsignedLongValue];
          }

          else
          {
            unsignedLongValue4 = 156;
          }

          v128 = v233;
          if (*(*(v233 + 21) + 24))
          {
            ps_synchronizer_register_writer(v22->_synchronizer, v233, unsignedLongValue3, unsignedLongValue4);
          }

          var3 = v230->var3;
          v166 = var2;
          var1[var3] = unsignedLongValue3;
          *&v166[8 * var3] = unsignedLongValue4;
        }

        v167 = v230;
        v168 = v230->var3;
        v230->var0[v168] = v128;
        v167->var3 = v168 + 1;
LABEL_142:

        v29 = v232 + 1;
      }

      while (v232 + 1 != v221);
      v221 = [v216 countByEnumeratingWithState:&v244 objects:v258 count:16];
    }

    while (v221);
  }

  if (bOOLValue)
  {
    v169 = objc_loadWeakRetained(&v22->_sourceTask);
    [v169 setSourceTaskData:v230];

    v170 = objc_loadWeakRetained(&v22->_sourceTask);
    [v170 setResources:v22->_outputs];

    v171 = objc_loadWeakRetained(&v22->_sourceTask);
    [v171 setSourceTaskFunction:source_writer_func];

    v172 = deviceCopy;
  }

  else
  {
    v173 = malloc_type_calloc(1uLL, 0x10uLL, 0x80040803F642BuLL);
    v22->_localSourceTaskData = v173;
    objc_storeWeak(v173, v22);
    v172 = deviceCopy;
    objc_storeWeak(v173 + 1, deviceCopy);
    v174 = objc_loadWeakRetained(&v22->_sourceTask);
    [v174 setSourceTaskData:v173];

    v175 = objc_loadWeakRetained(&v22->_sourceTask);
    [v175 setResources:v22->_outputs];

    v176 = objc_loadWeakRetained(&v22->_sourceTask);
    [v176 setSourceTaskFunction:local_source_writer_func];

    v22->_sourceTaskData = 0;
    free(v230);
  }
}

- (void)stop
{
  v29 = *MEMORY[0x277D85DE8];
  sourceTaskData = self->_sourceTaskData;
  if (sourceTaskData)
  {
    if (sourceTaskData->var3)
    {
      v4 = 0;
      do
      {
        v5 = sourceTaskData->var0[v4];
        if (!*(v5 + 16))
        {
          v6 = *(v5 + 21);
          if (v6[3])
          {
            ps_synchronizer_unregister_writer(self->_synchronizer, v6[4], v6[6]);
            v5 = self->_sourceTaskData->var0[v4];
          }
        }

        ps_buffer_writer_release(v5);
        ++v4;
        sourceTaskData = self->_sourceTaskData;
      }

      while (v4 < sourceTaskData->var3);
    }

    free(sourceTaskData);
  }

  if (self->_localSourceTaskData)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = self->_writerInsts;
    v8 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v24;
      do
      {
        v11 = 0;
        do
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [(PSSourceWriterBlock *)self releaseOutputBufferForKey:*(*(&v23 + 1) + 8 * v11++)];
        }

        while (v9 != v11);
        v9 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v9);
    }

    objc_storeWeak(&self->_localSourceTaskData->var0, 0);
    objc_storeWeak(&self->_localSourceTaskData->var1, 0);
    free(self->_localSourceTaskData);
  }

  if (self->_outputs)
  {
    ps_resource_array_free();
    self->_outputs = 0;
  }

  writerInsts = self->_writerInsts;
  if (writerInsts)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v13 = writerInsts;
    v14 = [(NSMutableDictionary *)v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v20;
      do
      {
        v17 = 0;
        do
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(v13);
          }

          ps_prm_delete_writer_instance(self->_prm_mgr, [(PSSourceWriterBlock *)self getWriterInstForKey:*(*(&v19 + 1) + 8 * v17++), v19]);
        }

        while (v15 != v17);
        v15 = [(NSMutableDictionary *)v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v15);
    }

    v18 = self->_writerInsts;
    self->_writerInsts = 0;
  }
}

- (PSSourceTask)sourceTask
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceTask);

  return WeakRetained;
}

- (PSTransitionManager)transitionManager
{
  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);

  return WeakRetained;
}

- (uint64_t)getWriterInstForKey:(char *)a1 .cold.1(char **a1, id a2)
{
  *a1 = 0;
  v5 = a2;
  v6 = asprintf(a1, "Could not find writer instance for key %s", [a2 UTF8String]);
  v7 = __PLSLogSharedInstance(v6);
  if (OUTLINED_FUNCTION_5(v7))
  {
    [a2 UTF8String];
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d Could not find writer instance for key %s", v10, v11, v12, v13, v25, v26);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v15 = __PLSLogSharedInstance(v14);
    if (OUTLINED_FUNCTION_6(v15))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v25, v26);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v22 = OUTLINED_FUNCTION_0();
  return [PSSourceWriterBlock setupResultsWithContext:v22 device:v23];
}

- (uint64_t)setupResultsWithContext:(char *)a1 device:(id *)location .cold.1(char **a1, id *location)
{
  *a1 = 0;
  WeakRetained = objc_loadWeakRetained(location);
  v5 = [WeakRetained name];
  asprintf(a1, "A mix of RC and non-RC outputs was found for source task %s", [v5 UTF8String]);

  v7 = __PLSLogSharedInstance(v6);
  if (OUTLINED_FUNCTION_5(v7))
  {
    v8 = objc_loadWeakRetained(location);
    v9 = [v8 name];
    [v9 UTF8String];
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v10, v11, "%s:%d A mix of RC and non-RC outputs was found for source task %s", v12, v13, v14, v15, v27, v28);
  }

  v16 = OSLogFlushBuffers();
  if (v16)
  {
    v17 = __PLSLogSharedInstance(v16);
    if (OUTLINED_FUNCTION_6(v17))
    {
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v18, v19, "%s() failed to flush buffers with error code: %d", v20, v21, v22, v23, v27, v28);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v24 = OUTLINED_FUNCTION_0();
  return [PSSourceWriterBlock setupResultsWithContext:v24 device:v25];
}

- (uint64_t)setupResultsWithContext:(char *)a1 device:(id *)location .cold.2(char **a1, id *location)
{
  *a1 = 0;
  WeakRetained = objc_loadWeakRetained(location);
  v5 = [WeakRetained pearlBufferPools];
  asprintf(a1, "An incorrect number of pearl buffer pools were provided. Polaris is expecting three (dx, dy, score, depth). %lu were provided", [v5 count]);

  v7 = __PLSLogSharedInstance(v6);
  if (OUTLINED_FUNCTION_5(v7))
  {
    v8 = objc_loadWeakRetained(location);
    v9 = [v8 pearlBufferPools];
    [v9 count];
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v10, v11, "%s:%d An incorrect number of pearl buffer pools were provided. Polaris is expecting three (dx, dy, score, depth). %lu were provided", v12, v13, v14, v15, v26, v27);
  }

  v16 = OSLogFlushBuffers();
  if (v16)
  {
    v17 = __PLSLogSharedInstance(v16);
    if (OUTLINED_FUNCTION_6(v17))
    {
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v18, v19, "%s() failed to flush buffers with error code: %d", v20, v21, v22, v23, v26, v27);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v24 = OUTLINED_FUNCTION_0();
  return [PSSourceWriterBlock setupResultsWithContext:v24 device:?];
}

- (uint64_t)setupResultsWithContext:(char *)a1 device:.cold.3(char **a1)
{
  *a1 = 0;
  v2 = asprintf(a1, "Got nil metadata buffer pool");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    *v23 = 136315394;
    *&v23[4] = "[PSSourceWriterBlock setupResultsWithContext:device:]";
    *&v23[12] = 1024;
    *&v23[14] = 453;
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Got nil metadata buffer pool", v6, v7, v8, v9, *v23, *&v23[8], *&v23[16]);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = v10;
    v12 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v12))
    {
      *v22 = 136315394;
      *&v22[4] = "[PSSourceWriterBlock setupResultsWithContext:device:]";
      *&v22[12] = 1024;
      *&v22[14] = v11;
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, *v22, *&v22[8], *&v22[16]);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return [PSSourceWriterBlock setupResultsWithContext:v19 device:v20];
}

- (uint64_t)setupResultsWithContext:(char *)a1 device:(void *)a2 .cold.4(char **a1, void *a2)
{
  *a1 = 0;
  v4 = [a2 key];
  asprintf(a1, "retainedISPRCCount = 0 in the resourcestream for stream: %s. Did RC forget to set retainedISPRCCount?", [v4 UTF8String]);

  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    v7 = [a2 key];
    [v7 UTF8String];
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d retainedISPRCCount = 0 in the resourcestream for stream: %s. Did RC forget to set retainedISPRCCount?", v10, v11, v12, v13, v25, v26);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v15 = __PLSLogSharedInstance(v14);
    if (OUTLINED_FUNCTION_6(v15))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v25, v26);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v22 = OUTLINED_FUNCTION_0();
  return [PSSourceWriterBlock setupResultsWithContext:v22 device:v23];
}

- (uint64_t)setupResultsWithContext:(char *)a1 device:(void *)a2 .cold.5(char **a1, void *a2)
{
  *a1 = 0;
  v4 = [a2 key];
  asprintf(a1, "Cannot install null buffer pool for streaming codec stream: %s", [v4 UTF8String]);

  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    v7 = [a2 key];
    [v7 UTF8String];
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d Cannot install null buffer pool for streaming codec stream: %s", v10, v11, v12, v13, v25, v26);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v15 = __PLSLogSharedInstance(v14);
    if (OUTLINED_FUNCTION_6(v15))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v25, v26);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v22 = OUTLINED_FUNCTION_0();
  return [PSSourceWriterBlock setupResultsWithContext:v22 device:v23];
}

- (uint64_t)setupResultsWithContext:(char *)a1 device:(void *)a2 .cold.6(char **a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = [a2 resourceKey];
  asprintf(a1, "(%s): Unsupported resource class for resource key (%s)", "[PSSourceWriterBlock setupResultsWithContext:device:]", [v4 UTF8String]);

  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    v7 = [a2 resourceKey];
    *buf = 136315906;
    v21 = "[PSSourceWriterBlock setupResultsWithContext:device:]";
    v22 = 1024;
    v23 = 484;
    v24 = 2080;
    v25 = "[PSSourceWriterBlock setupResultsWithContext:device:]";
    v26 = 2080;
    v27 = [v7 UTF8String];
    _os_log_impl(&dword_25EA3A000, v4, OS_LOG_TYPE_FAULT, "%s:%d (%s): Unsupported resource class for resource key (%s)", buf, 0x26u);
  }

  v8 = OSLogFlushBuffers();
  if (v8)
  {
    v9 = __PLSLogSharedInstance(v8);
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  return ps_exec_block_create_cold_1(v16);
}

@end