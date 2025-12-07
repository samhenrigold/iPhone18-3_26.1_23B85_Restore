@interface BMEventExtractor
- (BMEventExtractor)initWithBMMiningTaskConfig:(id)config;
- (id)extractEventsFilteredByTypes:(id)types taskSpecificEventProviders:(id)providers error:(id *)error;
@end

@implementation BMEventExtractor

- (BMEventExtractor)initWithBMMiningTaskConfig:(id)config
{
  configCopy = config;
  v9.receiver = self;
  v9.super_class = BMEventExtractor;
  v6 = [(BMEventExtractor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_shouldStop = 0;
    objc_storeStrong(&v6->_bmMiningTaskConfig, config);
  }

  return v7;
}

- (id)extractEventsFilteredByTypes:(id)types taskSpecificEventProviders:(id)providers error:(id *)error
{
  v168 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  providersCopy = providers;
  v123 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v124 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v152 = 0u;
  v153 = 0u;
  v154 = 0u;
  v155 = 0u;
  v8 = typesCopy;
  v9 = [v8 countByEnumeratingWithState:&v152 objects:v167 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v153;
    do
    {
      v12 = v8;
      for (i = 0; i != v10; ++i)
      {
        if (*v153 != v11)
        {
          objc_enumerationMutation(v12);
        }

        v14 = *(*(&v152 + 1) + 8 * i);
        if ([(BMEventExtractor *)self shouldStop])
        {
          v8 = v12;
          array = v12;
          v65 = MEMORY[0x277CBEBF8];
          goto LABEL_106;
        }

        eventStream = [v14 eventStream];

        if (eventStream)
        {
          eventStream2 = [v14 eventStream];
          name = [eventStream2 name];
          v18 = [v124 objectForKey:name];

          if (!v18)
          {
            v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
            eventStream3 = [v14 eventStream];
            name2 = [eventStream3 name];
            [v124 setObject:v18 forKey:name2];
          }

          [v18 addObject:v14];
          eventStream4 = [v14 eventStream];
          [v123 addObject:eventStream4];
        }
      }

      v8 = v12;
      v10 = [v12 countByEnumeratingWithState:&v152 objects:v167 count:16];
    }

    while (v10);
  }

  array = [MEMORY[0x277CBEB18] array];
  if ([v123 count])
  {
    v23 = objc_autoreleasePoolPush();
    knowledgeStoreWithDirectReadOnlyAccess = [MEMORY[0x277CFE208] knowledgeStoreWithDirectReadOnlyAccess];
    v25 = MEMORY[0x277CFE1E0];
    allObjects = [v123 allObjects];
    v27 = [MEMORY[0x277CFE260] startDateSortDescriptorAscending:0];
    v166 = v27;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v166 count:1];
    v29 = [v25 eventQueryWithPredicate:0 eventStreams:allObjects offset:0 limit:50000 sortDescriptors:v28];

    v151 = 0;
    v107 = v29;
    v30 = [knowledgeStoreWithDirectReadOnlyAccess executeQuery:v29 error:&v151];
    v31 = v151;
    v32 = v31;
    if (v30)
    {
      v103 = knowledgeStoreWithDirectReadOnlyAccess;
      v105 = v23;
      v111 = v31;
      v149 = 0u;
      v150 = 0u;
      v147 = 0u;
      v148 = 0u;
      v101 = v30;
      obj = v30;
      v120 = [obj countByEnumeratingWithState:&v147 objects:v165 count:16];
      if (v120)
      {
        context = *v148;
        v102 = v8;
        do
        {
          for (j = 0; j != v120; j = j + 1)
          {
            if (*v148 != context)
            {
              objc_enumerationMutation(obj);
            }

            v34 = *(*(&v147 + 1) + 8 * j);
            if ([(BMEventExtractor *)self shouldStop])
            {

              objc_autoreleasePoolPop(v105);
              v65 = MEMORY[0x277CBEBF8];
              v8 = v102;
              goto LABEL_104;
            }

            v145 = 0u;
            v146 = 0u;
            v143 = 0u;
            v144 = 0u;
            stream = [v34 stream];
            name3 = [stream name];
            v37 = [v124 objectForKey:name3];

            v38 = [v37 countByEnumeratingWithState:&v143 objects:v164 count:16];
            if (v38)
            {
              v39 = v38;
              v40 = *v144;
              do
              {
                for (k = 0; k != v39; ++k)
                {
                  if (*v144 != v40)
                  {
                    objc_enumerationMutation(v37);
                  }

                  v42 = *(*(&v143 + 1) + 8 * k);
                  v43 = objc_autoreleasePoolPush();
                  v44 = [v42 extractEventFromDKEvent:v34];
                  if (v44)
                  {
                    [array addObject:v44];
                  }

                  objc_autoreleasePoolPop(v43);
                }

                v39 = [v37 countByEnumeratingWithState:&v143 objects:v164 count:16];
              }

              while (v39);
            }
          }

          v8 = v102;
          v120 = [obj countByEnumeratingWithState:&v147 objects:v165 count:16];
        }

        while (v120);
      }

      v32 = v111;
      knowledgeStoreWithDirectReadOnlyAccess = v103;
      v23 = v105;
      v30 = v101;
    }

    objc_autoreleasePoolPop(v23);
    if (v32)
    {
      goto LABEL_97;
    }
  }

  v45 = 0x278D06000uLL;
  v46 = +[BMItemType interactionRecipients];
  v47 = [v8 containsObject:v46];

  if (v47)
  {
    v48 = objc_autoreleasePoolPush();
    v49 = BMLog(v48);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
    {
      [BMEventExtractor extractEventsFilteredByTypes:? taskSpecificEventProviders:? error:?];
    }

    bmMiningTaskConfig = [(BMEventExtractor *)self bmMiningTaskConfig];

    if (bmMiningTaskConfig)
    {
      v52 = BMLog(v51);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
      {
        [BMEventExtractor extractEventsFilteredByTypes:? taskSpecificEventProviders:? error:?];
      }
    }

    v53 = [BMInteractionProvider alloc];
    bmMiningTaskConfig2 = [(BMEventExtractor *)self bmMiningTaskConfig];
    v55 = [(BMInteractionProvider *)v53 initWithBMMiningTaskConfig:bmMiningTaskConfig2];

    v142 = 0;
    v56 = [(BMInteractionProvider *)v55 interactionEventsForTypes:v8 error:&v142];
    v32 = v142;
    if (v56)
    {
      obja = v55;
      contexta = v48;
      v140 = 0u;
      v141 = 0u;
      v138 = 0u;
      v139 = 0u;
      v108 = v56;
      v121 = v56;
      v57 = [v121 countByEnumeratingWithState:&v138 objects:v163 count:16];
      if (!v57)
      {
        goto LABEL_52;
      }

      v58 = v57;
      v59 = *v139;
      v111 = v32;
      while (1)
      {
        for (m = 0; m != v58; ++m)
        {
          if (*v139 != v59)
          {
            objc_enumerationMutation(v121);
          }

          v61 = *(*(&v138 + 1) + 8 * m);
          if ([(BMEventExtractor *)self shouldStop])
          {
LABEL_101:

            objc_autoreleasePoolPop(contexta);
            v65 = MEMORY[0x277CBEBF8];
LABEL_104:
            v32 = v111;
            goto LABEL_105;
          }

          item = [v61 item];
          type = [item type];
          v64 = [v8 containsObject:type];

          if (v64)
          {
            [array addObject:v61];
          }
        }

        v58 = [v121 countByEnumeratingWithState:&v138 objects:v163 count:16];
        v32 = v111;
        if (!v58)
        {
LABEL_52:

          v45 = 0x278D06000;
          v48 = contexta;
          v55 = obja;
          v56 = v108;
          break;
        }
      }
    }

    objc_autoreleasePoolPop(v48);
  }

  else
  {
    v32 = 0;
  }

  locationIdentifier = [*(v45 + 840) locationIdentifier];
  v111 = v32;
  if ([v8 containsObject:locationIdentifier])
  {
    goto LABEL_59;
  }

  enterLocation = [*(v45 + 840) enterLocation];
  if ([v8 containsObject:enterLocation])
  {

LABEL_59:
LABEL_60:
    v68 = objc_autoreleasePoolPush();
    v69 = objc_alloc_init(BMCoreRoutineProvider);
    locationEvents = [(BMCoreRoutineProvider *)v69 locationEvents];
    if (locationEvents)
    {
      obja = v69;
      contexta = v68;
      v136 = 0u;
      v137 = 0u;
      v134 = 0u;
      v135 = 0u;
      v109 = locationEvents;
      v121 = locationEvents;
      v71 = [v121 countByEnumeratingWithState:&v134 objects:v162 count:16];
      if (v71)
      {
        v72 = v71;
        v73 = *v135;
        do
        {
          for (n = 0; n != v72; ++n)
          {
            if (*v135 != v73)
            {
              objc_enumerationMutation(v121);
            }

            v75 = *(*(&v134 + 1) + 8 * n);
            if ([(BMEventExtractor *)self shouldStop])
            {
              goto LABEL_101;
            }

            item2 = [v75 item];
            type2 = [item2 type];
            v78 = [v8 containsObject:type2];

            if (v78)
            {
              [array addObject:v75];
            }
          }

          v72 = [v121 countByEnumeratingWithState:&v134 objects:v162 count:16];
        }

        while (v72);
      }

      locationEvents = v109;
      v32 = v111;
      v68 = contexta;
      v69 = obja;
    }

    objc_autoreleasePoolPop(v68);
    goto LABEL_73;
  }

  exitLocation = [*(v45 + 840) exitLocation];
  v99 = [v8 containsObject:exitLocation];

  if (v99)
  {
    goto LABEL_60;
  }

LABEL_73:
  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v79 = providersCopy;
  v80 = [v79 countByEnumeratingWithState:&v130 objects:v161 count:16];
  if (!v80)
  {
    goto LABEL_96;
  }

  v81 = v80;
  v82 = *v131;
  v106 = v79;
  v100 = *v131;
  do
  {
    v83 = 0;
    do
    {
      if (*v131 != v82)
      {
        objc_enumerationMutation(v79);
      }

      objb = v83;
      v84 = *(*(&v130 + 1) + 8 * v83);
      v129 = 0;
      v85 = [v84 eventsForTypes:v8 error:&v129];
      v86 = v129;
      contextb = v86;
      if (v85)
      {
        v127 = 0u;
        v128 = 0u;
        v125 = 0u;
        v126 = 0u;
        v110 = v85;
        v122 = v85;
        v87 = [v122 countByEnumeratingWithState:&v125 objects:v160 count:16];
        if (v87)
        {
          v88 = v87;
          v104 = v81;
          v89 = v8;
          v90 = *v126;
          while (2)
          {
            for (ii = 0; ii != v88; ++ii)
            {
              if (*v126 != v90)
              {
                objc_enumerationMutation(v122);
              }

              v92 = *(*(&v125 + 1) + 8 * ii);
              if ([(BMEventExtractor *)self shouldStop])
              {

                v65 = MEMORY[0x277CBEBF8];
                v8 = v89;
                goto LABEL_104;
              }

              item3 = [v92 item];
              type3 = [item3 type];
              v95 = [v89 containsObject:type3];

              if (v95)
              {
                [array addObject:v92];
              }
            }

            v88 = [v122 countByEnumeratingWithState:&v125 objects:v160 count:16];
            if (v88)
            {
              continue;
            }

            break;
          }

          v8 = v89;
          v32 = v111;
          v81 = v104;
          v79 = v106;
          v82 = v100;
        }
      }

      else
      {
        if (!v86)
        {
          goto LABEL_94;
        }

        v110 = 0;
        v122 = BMLog(v86);
        if (os_log_type_enabled(v122, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412546;
          v157 = contextb;
          v158 = 2112;
          v159 = v84;
          _os_log_fault_impl(&dword_241ACA000, v122, OS_LOG_TYPE_FAULT, "Unexpected error in taskSpecificEventProvider {error: %@, provider: %@}", buf, 0x16u);
        }
      }

      v85 = v110;
LABEL_94:

      v83 = objb + 1;
    }

    while (objb + 1 != v81);
    v81 = [v79 countByEnumeratingWithState:&v130 objects:v161 count:16];
  }

  while (v81);
LABEL_96:

  if (v32)
  {
LABEL_97:

    array = 0;
  }

  if (error)
  {
    v96 = v32;
    *error = v32;
  }

  array = array;
  v65 = array;
LABEL_105:

LABEL_106:

  return v65;
}

- (void)extractEventsFilteredByTypes:(void *)a1 taskSpecificEventProviders:error:.cold.1(void *a1)
{
  v1 = [a1 bmMiningTaskConfig];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  OUTLINED_FUNCTION_0_0(&dword_241ACA000, v2, v3, "Passing bmMiningTaskConfig to BMInteractionProvider %@", v4, v5, v6, v7, v8, DWORD2(v8));
}

- (void)extractEventsFilteredByTypes:(void *)a1 taskSpecificEventProviders:error:.cold.2(void *a1)
{
  v1 = MEMORY[0x277CCABB0];
  v2 = [a1 bmMiningTaskConfig];
  v3 = [v1 numberWithBool:{objc_msgSend(v2, "interactionExtractedTopicFromAttachmentFactorInUse")}];
  LODWORD(v10) = 138412290;
  *(&v10 + 4) = v3;
  OUTLINED_FUNCTION_0_0(&dword_241ACA000, v4, v5, "Passing bmMiningTaskConfig to BMInteractionProvider with interactionExtractedTopicFromAttachmentFactorInUse as %@", v6, v7, v8, v9, v10, DWORD2(v10));
}

@end