@interface _OSLogIndexEnumerator
- (_OSLogIndexEnumerator)initWithIndex:(id)index metadata:(id *)metadata fileBootList:(id)list catalogFilter:(id)filter options:(unsigned int)options catalogCacheSize:(unsigned int)size dataCacehSize:(unsigned int)cacehSize;
- (void)dealloc;
- (void)enumerateTracepointsInRange:(os_timesync_range_s *)range timesync:(_os_timesync_db_s *)timesync options:(unsigned int)options usingBlock:(id)block;
@end

@implementation _OSLogIndexEnumerator

- (void)enumerateTracepointsInRange:(os_timesync_range_s *)range timesync:(_os_timesync_db_s *)timesync options:(unsigned int)options usingBlock:(id)block
{
  v6 = *&options;
  v154 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  rangeCopy = range;
  if (range->var0)
  {
    v9 = *(range->var0 + 3);
  }

  else
  {
    v9 = 0;
  }

  v138[0] = 0;
  v138[1] = v138;
  v138[2] = 0x2020000000;
  v139 = 0;
  v10 = *(timesync + 10);
  v140[0] = 0;
  v140[1] = v10;
  if (!v9)
  {
    goto LABEL_191;
  }

  if ((v6 & 8) != 0)
  {
    v11 = v9 - 1;
  }

  else
  {
    v11 = 0;
  }

  v119 = 0;
  if ((v6 & 8) != 0)
  {
    v12 = -1;
  }

  else
  {
    v12 = 0;
  }

  v114 = v12;
  var3 = range->var3;
  if ((v6 & 8) != 0)
  {
    v13 = 16;
  }

  else
  {
    v13 = 8;
  }

  bounds = self->_bounds;
  v112 = v13;
  v14 = 1;
  if ((v6 & 8) != 0)
  {
    v14 = -1;
  }

  v113 = v14;
  do
  {
    v15 = var3[v11];
    v153 = *v15;
    v118 = v11;
    v140[0] = v11;
    selfCopy = self;
    v17 = _os_trace_uuid_map_lookup(rangeCopy->var0, &v153);
    firstObject = [(NSMutableArray *)self->_fileBootQ firstObject];
    v121 = v9;
    if (firstObject)
    {
      do
      {
        v19 = _os_trace_uuid_map_lookup(rangeCopy->var0, [firstObject bootUUID]);
        if (v19 == v17)
        {
          break;
        }

        if ((v6 & 8) != 0)
        {
          if (v19 <= v17)
          {
            break;
          }
        }

        else if (v19 >= v17)
        {
          break;
        }

        [(NSMutableArray *)self->_fileBootQ removeObjectAtIndex:0];
        firstObject2 = [(NSMutableArray *)self->_fileBootQ firstObject];

        firstObject = firstObject2;
      }

      while (firstObject2);
    }

    v122 = selfCopy;
    firstObject3 = [(NSMutableArray *)self->_fileBootQ firstObject];
    if (firstObject3)
    {
      do
      {
        bootUUID = [firstObject3 bootUUID];
        if (*bootUUID != v153)
        {
          break;
        }

        [(NSMutableArray *)self->_fileBootQ removeObjectAtIndex:0];
        if ([firstObject3 _determineTimespan])
        {
          [(NSMutableArray *)self->_fileStartQ addObject:firstObject3];
          [(NSMutableArray *)self->_fileEndQ addObject:firstObject3];
        }

        firstObject4 = [(NSMutableArray *)self->_fileBootQ firstObject];

        firstObject3 = firstObject4;
      }

      while (firstObject4);
    }

    [(NSMutableArray *)self->_fileStartQ sortUsingFunction:_OSLogIndexOrderForOpening context:v6, bounds];
    [(NSMutableArray *)self->_fileEndQ sortUsingFunction:_OSLogIndexOrderForClosing context:v6];

    v134 = 0;
    v135 = &v134;
    v24 = v114;
    v136 = 0x2020000000;
    if (!v119)
    {
      v24 = *(&rangeCopy->var0 + v112);
    }

    v137 = v24;
    firstObject5 = [(NSMutableArray *)self->_fileStartQ firstObject];
    v26 = firstObject5;
    if (!firstObject5 || (v27 = [firstObject5 bootUUID], *v27 != *v15))
    {

      goto LABEL_183;
    }

    v28 = v27[1] == *(v15 + 1);

    if (!v28)
    {
      goto LABEL_183;
    }

    [(_BaseTracepointBuffer *)self->_tracepoints beginInsertingTracepointsClippingFromTime:0];
    for (i = 0; i != 6; ++i)
    {
      v30 = bounds[i];
      if (v30 && *&v30->var3[0][0] == v153)
      {
        [(_BaseTracepointBuffer *)self->_tracepoints insertNonsparsePoint:v30->var1 uuid:v30->var3 ttl:(0x1E0E07030100uLL >> (8 * i)) & 0x1F inMemory:0];
      }
    }

    live_bound = self->_live_bound;
    if (live_bound && *&live_bound->var3[0][0] == v153)
    {
      [(_BaseTracepointBuffer *)self->_tracepoints insertNonsparsePoint:live_bound->var1 uuid:live_bound->var3 ttl:0 inMemory:1];
    }

    [(_BaseTracepointBuffer *)self->_tracepoints insertTimesyncPoints:timesync forBoot:&v153 oldestContinuousTime:v135[3]];
    [(_BaseTracepointBuffer *)self->_tracepoints finishedInsertingTracepointsWithNextMajorTime:0 options:v6];
    v130 = 0;
    v131 = &v130;
    v132 = 0x2020000000;
    v133 = 1;
    while (2)
    {
      context = objc_autoreleasePoolPush();
      v32 = v135[3];
      v33 = v122;
      [(_BaseTracepointBuffer *)self->_tracepoints beginInsertingTracepointsClippingFromTime:v32];
      firstObject6 = [(NSMutableArray *)self->_fileStartQ firstObject];
      if (!firstObject6)
      {
        goto LABEL_69;
      }

      firstObject7 = [(NSMutableArray *)self->_fileStartQ firstObject];
      v36 = firstObject7;
      v37 = (v6 & 8) != 0 ? [firstObject7 endTime] < v32 : objc_msgSend(firstObject7, "oldestTime") > v32;

      if (v37)
      {
        goto LABEL_69;
      }

      v116 = v33;
      firstObject8 = [(NSMutableArray *)self->_fileStartQ firstObject];
      if (!firstObject8)
      {
        goto LABEL_68;
      }

      while (1)
      {
        bootUUID2 = [firstObject8 bootUUID];
        if (*bootUUID2 == v153)
        {
          break;
        }

        [(NSMutableArray *)self->_fileStartQ removeObjectAtIndex:0];
        firstObject9 = [(NSMutableArray *)self->_fileStartQ firstObject];

        firstObject8 = firstObject9;
        if (!firstObject9)
        {
          goto LABEL_68;
        }
      }

      while (1)
      {
        bootUUID3 = [firstObject8 bootUUID];
        if (*bootUUID3 != v153)
        {
          v43 = firstObject8;
          goto LABEL_67;
        }

        v42 = firstObject8;
        v43 = v42;
        if ((v6 & 8) != 0)
        {
          break;
        }

        if ([v42 oldestTime] > v32)
        {
          goto LABEL_66;
        }

        if ([v43 endTime] >= v32)
        {
LABEL_60:
          v141 = 0;
          v44 = v116;
          v45 = v43;
          v46 = [v45 copyMappedChunkStore:&v141];
          if (v46)
          {
            v47 = v44;
            v48 = v46;
            v152[0] = 0;
            v152[1] = v152;
            v152[2] = 0x2020000000;
            v152[3] = 0;
            v150[0] = 0;
            v150[1] = v150;
            v150[2] = 0x3032000000;
            v150[3] = __Block_byref_object_copy_;
            v150[4] = __Block_byref_object_dispose_;
            v151 = 0;
            v142 = MEMORY[0x277D85DD0];
            v143 = 3221225472;
            v144 = ___oie_advance_cursor_open_store_block_invoke;
            v145 = &unk_2787ADEE8;
            v148 = v152;
            v149 = v150;
            v49 = v48;
            v146 = v49;
            v50 = v47;
            v147 = v50;
            [(_OSLogIndexEnumerator *)v49 enumerateChunksUsingBlock:&v142];
            [(NSMutableArray *)self->_catalogStartQ sortUsingFunction:_OSLogIndexOrderForOpening context:v6];

            _Block_object_dispose(v150, 8);
            _Block_object_dispose(v152, 8);
          }
        }

LABEL_63:
        [(NSMutableArray *)self->_fileStartQ removeObjectAtIndex:0];
        firstObject8 = [(NSMutableArray *)self->_fileStartQ firstObject];

        if (!firstObject8)
        {
          v43 = 0;
          goto LABEL_67;
        }
      }

      if ([v42 endTime] >= v32)
      {

        if ([v43 oldestTime] <= v32)
        {
          goto LABEL_60;
        }

        goto LABEL_63;
      }

LABEL_66:

LABEL_67:
LABEL_68:

LABEL_69:
      firstObject10 = [(NSMutableArray *)self->_catalogStartQ firstObject];
      if (!firstObject10)
      {
        goto LABEL_94;
      }

      firstObject11 = [(NSMutableArray *)self->_catalogStartQ firstObject];
      v53 = firstObject11;
      v54 = (v6 & 8) != 0 ? [firstObject11 endTime] < v32 : objc_msgSend(firstObject11, "oldestTime") > v32;

      if (v54)
      {
        goto LABEL_94;
      }

      v55 = v33;
      firstObject12 = [(NSMutableArray *)self->_catalogStartQ firstObject];
      firstObject13 = firstObject12;
      if (!firstObject12)
      {
        goto LABEL_93;
      }

      if ((v6 & 8) == 0)
      {
        if ([firstObject12 oldestTime] <= v32)
        {
          goto LABEL_79;
        }

LABEL_192:
        qword_27DA52778 = "BUG IN LIBTRACE: _oie_advance_cursor_open_catalogs called with nothing to open yet";
        __break(1u);
        goto LABEL_193;
      }

      if ([firstObject12 endTime] < v32)
      {
        goto LABEL_192;
      }

LABEL_79:
      while (2)
      {
        v58 = firstObject13;
        v59 = v58;
        if ((v6 & 8) == 0)
        {
          if ([v58 oldestTime] > v32)
          {
            goto LABEL_91;
          }

          if ([v59 endTime] < v32)
          {
            goto LABEL_89;
          }

LABEL_85:
          if (!self->_catalogFilter || (v60 = v59, [v59 catalog]) && (catalogFilter = self->_catalogFilter, v62 = v59, -[_OSLogCatalogFilter isKeptCatalog:](catalogFilter, "isKeptCatalog:", objc_msgSend(v59, "catalog"))))
          {
            v63 = v55;
            v142 = MEMORY[0x277D85DD0];
            v143 = 3221225472;
            v144 = ___oie_advance_cursor_open_catalog_block_invoke;
            v145 = &unk_2787ADF10;
            v146 = v63;
            [v59 enumerateSubchunksUsingBlock:&v142];
          }

LABEL_89:
          [(NSMutableArray *)self->_catalogStartQ removeObjectAtIndex:0];
          firstObject13 = [(NSMutableArray *)self->_catalogStartQ firstObject];

          if (!firstObject13)
          {
            v59 = 0;
            goto LABEL_92;
          }

          continue;
        }

        break;
      }

      if ([v58 endTime] >= v32)
      {

        if ([v59 oldestTime] <= v32)
        {
          goto LABEL_85;
        }

        goto LABEL_89;
      }

LABEL_91:

LABEL_92:
      subchunkStartQ = self->_subchunkStartQ;
      v65 = self->_subchunkEndQ;
      v66 = subchunkStartQ;
      [(NSMutableArray *)v66 sortUsingFunction:_OSLogIndexOrderForOpening context:v6];
      [(NSMutableArray *)v65 sortUsingFunction:_OSLogIndexOrderForClosing context:v6];

LABEL_93:
LABEL_94:
      firstObject14 = [(NSMutableArray *)self->_subchunkStartQ firstObject];
      if (!firstObject14)
      {
        goto LABEL_115;
      }

      firstObject15 = [(NSMutableArray *)self->_subchunkStartQ firstObject];
      v69 = firstObject15;
      v70 = (v6 & 8) != 0 ? [firstObject15 endTime] < v32 : objc_msgSend(firstObject15, "oldestTime") > v32;

      if (v70)
      {
        goto LABEL_115;
      }

      v71 = v33;
      firstObject16 = [(NSMutableArray *)self->_subchunkStartQ firstObject];
      firstObject17 = firstObject16;
      if (!firstObject16)
      {
        goto LABEL_114;
      }

      if ((v6 & 8) != 0)
      {
        if ([firstObject16 endTime] < v32)
        {
          goto LABEL_195;
        }
      }

      else if ([firstObject16 oldestTime] > v32)
      {
        goto LABEL_195;
      }

      while (2)
      {
        v74 = firstObject17;
        v75 = v74;
        if ((v6 & 8) == 0)
        {
          if ([v74 oldestTime] > v32)
          {
            goto LABEL_113;
          }

          if ([v75 endTime] < v32)
          {
            goto LABEL_111;
          }

LABEL_110:
          v76 = v71;
          v77 = v75;
          v142 = MEMORY[0x277D85DD0];
          v143 = 3221225472;
          v144 = ___oie_advance_cursor_open_subchunk_block_invoke;
          v145 = &unk_2787ADF38;
          v146 = v76;
          v147 = v77;
          LODWORD(v148) = v6;
          [(_OSLogIndexEnumerator *)v77 enumerateChunksUsingBlock:&v142];

LABEL_111:
          [(NSMutableArray *)self->_subchunkStartQ removeObjectAtIndex:0];
          firstObject17 = [(NSMutableArray *)self->_subchunkStartQ firstObject];

          if (!firstObject17)
          {
            goto LABEL_114;
          }

          continue;
        }

        break;
      }

      if ([v74 endTime] >= v32)
      {

        if ([v75 oldestTime] <= v32)
        {
          goto LABEL_110;
        }

        goto LABEL_111;
      }

LABEL_113:

LABEL_114:
LABEL_115:
      firstObject18 = [(NSMutableArray *)self->_subchunkEndQ firstObject];
      if (!firstObject18)
      {
        goto LABEL_133;
      }

      firstObject19 = [(NSMutableArray *)self->_subchunkEndQ firstObject];
      v80 = firstObject19;
      if ((v6 & 8) != 0)
      {
        v82 = [firstObject19 oldestTime] > v32;

        if (!v82)
        {
          goto LABEL_133;
        }
      }

      else
      {
        v81 = [firstObject19 endTime] < v32;

        if (!v81)
        {
          goto LABEL_133;
        }
      }

      v83 = v33;
      firstObject20 = [(NSMutableArray *)self->_subchunkEndQ firstObject];
      firstObject21 = firstObject20;
      if (!firstObject20)
      {
        goto LABEL_132;
      }

      if ((v6 & 8) == 0)
      {
        if ([firstObject20 endTime] < v32)
        {
          goto LABEL_125;
        }

        goto LABEL_194;
      }

      if ([firstObject20 oldestTime] <= v32)
      {
        goto LABEL_194;
      }

LABEL_125:
      while (2)
      {
        v86 = firstObject21;
        v87 = v86;
        if ((v6 & 8) == 0)
        {
          if ([v86 endTime] >= v32)
          {
            break;
          }

          goto LABEL_129;
        }

        if ([v86 oldestTime] > v32)
        {
LABEL_129:

          [(NSMutableArray *)self->_subchunkEndQ removeObjectAtIndex:0];
          firstObject21 = [(NSMutableArray *)self->_subchunkEndQ firstObject];

          if (!firstObject21)
          {
            goto LABEL_132;
          }

          continue;
        }

        break;
      }

LABEL_132:
LABEL_133:
      firstObject22 = [(NSMutableArray *)self->_fileEndQ firstObject];
      if (!firstObject22)
      {
        goto LABEL_151;
      }

      firstObject23 = [(NSMutableArray *)self->_fileEndQ firstObject];
      v90 = firstObject23;
      if ((v6 & 8) != 0)
      {
        v92 = [firstObject23 oldestTime] > v32;

        if (!v92)
        {
          goto LABEL_151;
        }
      }

      else
      {
        v91 = [firstObject23 endTime] < v32;

        if (!v91)
        {
          goto LABEL_151;
        }
      }

      v93 = v33;
      firstObject24 = [(NSMutableArray *)self->_fileEndQ firstObject];
      firstObject25 = firstObject24;
      if (!firstObject24)
      {
        goto LABEL_150;
      }

      if ((v6 & 8) == 0)
      {
        if ([firstObject24 endTime] < v32)
        {
          goto LABEL_143;
        }

LABEL_193:
        qword_27DA52778 = "BUG IN LIBTRACE: _oie_advance_cursor_close_files called with nothing to close";
        __break(1u);
LABEL_194:
        qword_27DA52778 = "BUG IN LIBTRACE: _oie_advance_cursor_close_subchunks called with nothing to close";
        __break(1u);
LABEL_195:
        qword_27DA52778 = "BUG IN LIBTRACE: _oie_advance_cursor_open_subchunks called with nothing to open yet";
        __break(1u);
        goto LABEL_196;
      }

      if ([firstObject24 oldestTime] <= v32)
      {
        goto LABEL_193;
      }

LABEL_143:
      while (2)
      {
        v96 = firstObject25;
        v97 = v96;
        if ((v6 & 8) == 0)
        {
          if ([v96 endTime] >= v32)
          {
            break;
          }

          goto LABEL_147;
        }

        if ([v96 oldestTime] > v32)
        {
LABEL_147:

          [(NSMutableArray *)self->_fileEndQ removeObjectAtIndex:0];
          firstObject25 = [(NSMutableArray *)self->_fileEndQ firstObject];

          if (!firstObject25)
          {
            goto LABEL_150;
          }

          continue;
        }

        break;
      }

LABEL_150:
LABEL_151:
      next_major_time = _oie_get_next_major_time(v33, v6, &v153);
      [(_BaseTracepointBuffer *)self->_tracepoints finishedInsertingTracepointsWithNextMajorTime:next_major_time options:v6];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(_BaseTracepointBuffer *)self->_tracepoints retireOversize:v32];
      }

      else
      {
        [(NSMutableArray *)self->_oversizeChunks sortUsingSelector:sel_compare_];
        v99 = v33;
        firstObject26 = [(NSMutableArray *)self->_oversizeChunks firstObject];
        if (firstObject26)
        {
          do
          {
            timestamp = [firstObject26 timestamp];
            if (timestamp == v32)
            {
              break;
            }

            if ((v6 & 8) != 0)
            {
              if (timestamp <= v32)
              {
                break;
              }
            }

            else if (timestamp >= v32)
            {
              break;
            }

            [(NSMutableArray *)self->_oversizeChunks removeObjectAtIndex:0];
            firstObject27 = [(NSMutableArray *)self->_oversizeChunks firstObject];

            firstObject26 = firstObject27;
          }

          while (firstObject27);
        }
      }

      if (v121 == 1)
      {
        if ((v6 & 8) != 0)
        {
          if (next_major_time <= rangeCopy->var1)
          {
            next_major_time = rangeCopy->var1;
          }
        }

        else if (next_major_time >= rangeCopy->var2)
        {
          next_major_time = rangeCopy->var2;
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(_BaseTracepointBuffer *)self->_tracepoints setupStoresForIndex:self->_index];
      }

      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __81___OSLogIndexEnumerator_enumerateTracepointsInRange_timesync_options_usingBlock___block_invoke;
      aBlock[3] = &unk_2787ADDA0;
      v126 = &v134;
      v127 = v138;
      v103 = blockCopy;
      v129 = v140;
      v125 = v103;
      v128 = &v130;
      v104 = _Block_copy(aBlock);
      [(_BaseTracepointBuffer *)self->_tracepoints enumerateEventsFromTime:v135[3] to:next_major_time options:v6 usingBlock:v104];
      v105 = v135[3];
      if (v105 >= next_major_time)
      {
        v106 = next_major_time;
      }

      else
      {
        v106 = v135[3];
      }

      if (v105 <= next_major_time)
      {
        v105 = next_major_time;
      }

      if ((v6 & 8) != 0)
      {
        v105 = v106;
      }

      v135[3] = v105;

      objc_autoreleasePoolPop(context);
      if (*(v131 + 24) == 1)
      {
        v107 = v135[3];
        v108 = v33;
        v109 = _oie_get_next_major_time(v108, v6, &v153);
        if (v109 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          if (v109 == v107)
          {

            continue;
          }

          if ((v6 & 8) != 0)
          {
            if (v109 > v107)
            {
              goto LABEL_196;
            }
          }

          else if (v109 < v107)
          {
LABEL_196:
            qword_27DA52778 = "BUG IN LIBTRACE: iteration skipped a major time";
            __break(1u);
          }
        }
      }

      break;
    }

    _Block_object_dispose(&v130, 8);
LABEL_183:
    _Block_object_dispose(&v134, 8);
    v11 = v118 + v113;
    ++v119;
    v9 = v121 - 1;
  }

  while (v121 != 1);
LABEL_191:
  _Block_object_dispose(v138, 8);
}

- (void)dealloc
{
  v7 = *MEMORY[0x277D85DE8];
  for (i = 64; i != 112; i += 8)
  {
    v4 = *(&self->super.isa + i);
    if (v4)
    {
      _os_trace_uuid_map_destroy(*v4);
      free(v4);
    }
  }

  live_bound = self->_live_bound;
  if (live_bound)
  {
    _os_trace_uuid_map_destroy(*live_bound);
    free(live_bound);
  }

  v6.receiver = self;
  v6.super_class = _OSLogIndexEnumerator;
  [(_OSLogIndexEnumerator *)&v6 dealloc];
}

- (_OSLogIndexEnumerator)initWithIndex:(id)index metadata:(id *)metadata fileBootList:(id)list catalogFilter:(id)filter options:(unsigned int)options catalogCacheSize:(unsigned int)size dataCacehSize:(unsigned int)cacehSize
{
  v9 = *&size;
  optionsCopy = options;
  indexCopy = index;
  listCopy = list;
  filterCopy = filter;
  v38.receiver = self;
  v38.super_class = _OSLogIndexEnumerator;
  v19 = [(_OSLogIndexEnumerator *)&v38 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_index, index);
    if ((optionsCopy & 0x400) != 0)
    {
      v20->_memEffic = 1;
      v21 = [[_MemoryEfficientTracepointBuffer alloc] init:v9 dataCacheSize:cacehSize];
    }

    else
    {
      v21 = objc_alloc_init(_BaseTracepointBuffer);
    }

    tracepoints = v20->_tracepoints;
    v20->_tracepoints = v21;

    v23 = [listCopy mutableCopy];
    fileBootQ = v20->_fileBootQ;
    v20->_fileBootQ = v23;

    v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
    fileStartQ = v20->_fileStartQ;
    v20->_fileStartQ = v25;

    v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
    fileEndQ = v20->_fileEndQ;
    v20->_fileEndQ = v27;

    v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
    catalogStartQ = v20->_catalogStartQ;
    v20->_catalogStartQ = v29;

    v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
    subchunkStartQ = v20->_subchunkStartQ;
    v20->_subchunkStartQ = v31;

    v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
    subchunkEndQ = v20->_subchunkEndQ;
    v20->_subchunkEndQ = v33;

    v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
    oversizeChunks = v20->_oversizeChunks;
    v20->_oversizeChunks = v35;

    objc_storeStrong(&v20->_catalogFilter, filter);
    if (metadata)
    {
      [(_OSLogIndexEnumerator *)v20 _initTimesyncBounds:metadata];
    }
  }

  return v20;
}

@end