@interface FCCKPrivateDatabaseSchema
+ (FCCKPrivateDatabaseSchema)databaseSchemaWithZones:(void *)zones records:(void *)records recordTypeVersionMapping:(void *)mapping recordNameVersionMapping:;
- (FCCKPrivateDatabaseSchema)init;
- (FCCKRecordIDMapping)mappingFromRecord:(uint64_t)record toVersion:;
- (FCCKRecordIDMapping)mappingFromRecordID:(uint64_t)d toVersion:;
- (FCCKRecordTypeMapping)mappingFromRecordType:(void *)type inZoneName:(uint64_t)name toVersion:;
- (FCCKRecordZoneIDMapping)mappingFromRecordZoneName:(uint64_t)name toVersion:;
- (id)mappingFromRecordType:(void *)type inZoneID:(uint64_t)d toVersion:;
- (id)mappingFromRecordZoneID:(uint64_t)d toVersion:;
- (id)recordNamesInDefaultZoneChangedFromVersion:(uint64_t)version toVersion:;
- (id)schemaForZoneWithName:(id *)name;
- (id)zoneNamesWithChangesFromVersion:(uint64_t)version toVersion:;
- (void)enumerateZoneSchemasForVersion:(void *)version withBlock:;
- (void)enumerateZoneSchemasWithBlock:(uint64_t)block;
- (void)schemaForZoneContainingRecordID:(void *)d;
@end

@implementation FCCKPrivateDatabaseSchema

+ (FCCKPrivateDatabaseSchema)databaseSchemaWithZones:(void *)zones records:(void *)records recordTypeVersionMapping:(void *)mapping recordNameVersionMapping:
{
  v175 = *MEMORY[0x1E69E9840];
  mappingCopy = mapping;
  recordsCopy = records;
  zonesCopy = zones;
  v12 = a2;
  objc_opt_self();
  v13 = [FCCKPrivateDatabaseSchema alloc];
  v14 = v12;
  v15 = zonesCopy;
  v16 = recordsCopy;
  v17 = mappingCopy;
  if (v13)
  {
    v146.receiver = v13;
    v146.super_class = FCCKPrivateDatabaseSchema;
    v18 = objc_msgSendSuper2(&v146, sel_init);
    if (v18)
    {
      v118 = v18;
      v101 = v17;
      v105 = v16;
      v106 = v15;
      v112 = [MEMORY[0x1E695DFA8] set];
      v104 = [MEMORY[0x1E695DFA8] set];
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      array = [MEMORY[0x1E695DF70] array];
      [MEMORY[0x1E695DF90] dictionary];
      v103 = v102 = v14;
      v142 = 0u;
      v143 = 0u;
      v144 = 0u;
      v145 = 0u;
      obj = v14;
      v19 = [obj countByEnumeratingWithState:&v142 objects:v174 count:16];
      v20 = MEMORY[0x1E695B800];
      if (v19)
      {
        v21 = v19;
        v22 = *v143;
        v23 = *MEMORY[0x1E695B800];
        do
        {
          v24 = 0;
          do
          {
            if (*v143 != v22)
            {
              objc_enumerationMutation(obj);
            }

            v25 = *(*(&v142 + 1) + 8 * v24);
            if (v25)
            {
              v26 = *(v25 + 16);
            }

            else
            {
              v26 = 0;
            }

            v27 = v26;
            v28 = [v27 isEqualToString:v23];

            if (v28)
            {
              [array addObject:v25];
            }

            else
            {
              if (v25)
              {
                v29 = *(v25 + 16);
              }

              else
              {
                v29 = 0;
              }

              v30 = v29;
              [dictionary setObject:v25 forKeyedSubscript:v30];
            }

            if (v25)
            {
              v31 = *(v25 + 16);
            }

            else
            {
              v31 = 0;
            }

            v32 = v31;
            [v112 addObject:v32];

            ++v24;
          }

          while (v21 != v24);
          v33 = [obj countByEnumeratingWithState:&v142 objects:v174 count:16];
          v21 = v33;
        }

        while (v33);
      }

      v140 = 0u;
      v141 = 0u;
      v138 = 0u;
      v139 = 0u;
      v110 = v106;
      v34 = [v110 countByEnumeratingWithState:&v138 objects:v173 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v139;
        do
        {
          v37 = 0;
          do
          {
            if (*v139 != v36)
            {
              objc_enumerationMutation(v110);
            }

            v38 = *(*(&v138 + 1) + 8 * v37);
            if (v38)
            {
              v39 = *(v38 + 16);
              [v103 setObject:v38 forKeyedSubscript:v39];

              v40 = *(v38 + 16);
            }

            else
            {
              [v103 setObject:0 forKeyedSubscript:0];
              v40 = 0;
            }

            v41 = v40;
            [v104 addObject:v41];

            ++v37;
          }

          while (v35 != v37);
          v42 = [v110 countByEnumeratingWithState:&v138 objects:v173 count:16];
          v35 = v42;
        }

        while (v42);
      }

      v43 = [v105 mappingByTransformingValuesWithBlock:&__block_literal_global_138];
      v44 = v118;
      zoneNameVersionMapping = v118->_zoneNameVersionMapping;
      v118->_zoneNameVersionMapping = v43;

      objc_storeStrong(&v118->_recordTypeVersionMapping, records);
      objc_storeStrong(&v118->_recordNameVersionMapping, mapping);
      objc_storeStrong(&v118->_zoneSchemasByName, dictionary);
      objc_storeStrong(&v118->_defaultZoneSchemas, array);
      objc_storeStrong(&v118->_recordSchemasByType, v103);
      v46 = 0;
      v47 = *v20;
      do
      {
        v136 = 0u;
        v137 = 0u;
        v134 = 0u;
        v135 = 0u;
        v114 = v46;
        v48 = [(FCCKPrivateDatabaseVersionMapping *)v44->_recordTypeVersionMapping allValuesForVersion:?];
        v49 = [v48 countByEnumeratingWithState:&v134 objects:v172 count:16];
        if (v49)
        {
          v50 = v49;
          v51 = *v135;
          do
          {
            for (i = 0; i != v50; ++i)
            {
              if (*v135 != v51)
              {
                objc_enumerationMutation(v48);
              }

              v53 = *(*(&v134 + 1) + 8 * i);
              first = [v53 first];
              if ([first isEqualToString:v47])
              {
              }

              else
              {
                zoneSchemasByName = v118->_zoneSchemasByName;
                first2 = [v53 first];
                v57 = [(NSDictionary *)zoneSchemasByName objectForKey:first2];

                if (!v57 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  v64 = objc_alloc(MEMORY[0x1E696AEC0]);
                  first3 = [v53 first];
                  v66 = [v64 initWithFormat:@"missing zone name in schema: %@", first3];
                  *buf = 136315906;
                  v165 = "[FCCKPrivateDatabaseSchema initWithZoneSchemas:recordSchemas:recordTypeVersionMapping:recordNameVersionMapping:]";
                  v166 = 2080;
                  v167 = "FCCKPrivateDatabaseSchema.m";
                  v168 = 1024;
                  v169 = 91;
                  v170 = 2114;
                  v171 = v66;
                  _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
                }
              }

              recordSchemasByType = v118->_recordSchemasByType;
              second = [v53 second];
              v60 = [(NSDictionary *)recordSchemasByType objectForKey:second];

              if (!v60 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                v61 = objc_alloc(MEMORY[0x1E696AEC0]);
                second2 = [v53 second];
                v63 = [v61 initWithFormat:@"missing record type in schema: %@", second2];
                *buf = 136315906;
                v165 = "[FCCKPrivateDatabaseSchema initWithZoneSchemas:recordSchemas:recordTypeVersionMapping:recordNameVersionMapping:]";
                v166 = 2080;
                v167 = "FCCKPrivateDatabaseSchema.m";
                v168 = 1024;
                v169 = 92;
                v170 = 2114;
                v171 = v63;
                _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
              }
            }

            v50 = [v48 countByEnumeratingWithState:&v134 objects:v172 count:16];
          }

          while (v50);
        }

        v46 = v114 + 1;
        v44 = v118;
      }

      while (v114 != 3);
      v132 = 0u;
      v133 = 0u;
      v130 = 0u;
      v131 = 0u;
      v109 = obj;
      v113 = [v109 countByEnumeratingWithState:&v130 objects:buf count:16];
      if (v113)
      {
        v111 = *v131;
        do
        {
          v67 = 0;
          do
          {
            if (*v131 != v111)
            {
              objc_enumerationMutation(v109);
            }

            v68 = *(*(&v130 + 1) + 8 * v67);
            recordTypeVersionMapping = v44->_recordTypeVersionMapping;
            v129[0] = MEMORY[0x1E69E9820];
            v129[1] = 3221225472;
            v129[2] = __113__FCCKPrivateDatabaseSchema_initWithZoneSchemas_recordSchemas_recordTypeVersionMapping_recordNameVersionMapping___block_invoke_17;
            v129[3] = &unk_1E7C44AF8;
            v129[4] = v68;
            if (![(FCCKPrivateDatabaseVersionMapping *)recordTypeVersionMapping containsValuePassingTest:v129]&& os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v82 = objc_alloc(MEMORY[0x1E696AEC0]);
              if (v68)
              {
                v83 = *(v68 + 16);
              }

              else
              {
                v83 = 0;
              }

              v84 = v83;
              v85 = [v82 initWithFormat:@"missing zone name in version mapping: %@", v84];
              *v155 = 136315906;
              v156 = "[FCCKPrivateDatabaseSchema initWithZoneSchemas:recordSchemas:recordTypeVersionMapping:recordNameVersionMapping:]";
              v157 = 2080;
              v158 = "FCCKPrivateDatabaseSchema.m";
              v159 = 1024;
              v160 = 99;
              v161 = 2114;
              v162 = v85;
              _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v155, 0x26u);
            }

            v125 = 0u;
            v126 = 0u;
            v127 = 0u;
            v128 = 0u;
            v115 = v67;
            if (v68)
            {
              v70 = *(v68 + 32);
            }

            else
            {
              v70 = 0;
            }

            v71 = v70;
            v72 = [v71 countByEnumeratingWithState:&v125 objects:v163 count:16];
            if (v72)
            {
              v73 = v72;
              v74 = *v126;
              do
              {
                v75 = 0;
                do
                {
                  if (*v126 != v74)
                  {
                    objc_enumerationMutation(v71);
                  }

                  v76 = *(*(&v125 + 1) + 8 * v75);
                  recordNameVersionMapping = v44->_recordNameVersionMapping;
                  v124[0] = MEMORY[0x1E69E9820];
                  v124[1] = 3221225472;
                  v124[2] = __113__FCCKPrivateDatabaseSchema_initWithZoneSchemas_recordSchemas_recordTypeVersionMapping_recordNameVersionMapping___block_invoke_22;
                  v124[3] = &unk_1E7C44B20;
                  v124[4] = v68;
                  v124[5] = v76;
                  if (![(FCCKPrivateDatabaseVersionMapping *)recordNameVersionMapping containsValuePassingTest:v124]&& os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                  {
                    obja = objc_alloc(MEMORY[0x1E696AEC0]);
                    if (v68)
                    {
                      v78 = *(v68 + 16);
                    }

                    else
                    {
                      v78 = 0;
                    }

                    v79 = v78;
                    v80 = [obja initWithFormat:@"missing static record in name mapping: %@:%@", v79, v76];
                    *v155 = 136315906;
                    v156 = "[FCCKPrivateDatabaseSchema initWithZoneSchemas:recordSchemas:recordTypeVersionMapping:recordNameVersionMapping:]";
                    v157 = 2080;
                    v158 = "FCCKPrivateDatabaseSchema.m";
                    v159 = 1024;
                    v160 = 104;
                    v161 = 2114;
                    v162 = v80;
                    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v155, 0x26u);

                    v44 = v118;
                  }

                  ++v75;
                }

                while (v73 != v75);
                v81 = [v71 countByEnumeratingWithState:&v125 objects:v163 count:16];
                v73 = v81;
              }

              while (v81);
            }

            v67 = v115 + 1;
          }

          while (v115 + 1 != v113);
          v86 = [v109 countByEnumeratingWithState:&v130 objects:buf count:16];
          v113 = v86;
        }

        while (v86);
      }

      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      v87 = v110;
      v88 = [v87 countByEnumeratingWithState:&v120 objects:v155 count:16];
      if (v88)
      {
        v89 = v88;
        v90 = *v121;
        v91 = MEMORY[0x1E69E9C10];
        do
        {
          v92 = 0;
          do
          {
            if (*v121 != v90)
            {
              objc_enumerationMutation(v87);
            }

            v93 = *(*(&v120 + 1) + 8 * v92);
            v94 = v118->_recordTypeVersionMapping;
            v119[0] = MEMORY[0x1E69E9820];
            v119[1] = 3221225472;
            v119[2] = __113__FCCKPrivateDatabaseSchema_initWithZoneSchemas_recordSchemas_recordTypeVersionMapping_recordNameVersionMapping___block_invoke_26;
            v119[3] = &unk_1E7C44AF8;
            v119[4] = v93;
            if (![(FCCKPrivateDatabaseVersionMapping *)v94 containsValuePassingTest:v119]&& os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
            {
              v95 = objc_alloc(MEMORY[0x1E696AEC0]);
              if (v93)
              {
                v96 = *(v93 + 16);
              }

              else
              {
                v96 = 0;
              }

              v97 = v96;
              v98 = [v95 initWithFormat:@"missing record type in version mapping: %@", v97];
              *v147 = 136315906;
              v148 = "[FCCKPrivateDatabaseSchema initWithZoneSchemas:recordSchemas:recordTypeVersionMapping:recordNameVersionMapping:]";
              v149 = 2080;
              v150 = "FCCKPrivateDatabaseSchema.m";
              v151 = 1024;
              v152 = 111;
              v153 = 2114;
              v154 = v98;
              _os_log_error_impl(&dword_1B63EF000, v91, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v147, 0x26u);
            }

            ++v92;
          }

          while (v89 != v92);
          v99 = [v87 countByEnumeratingWithState:&v120 objects:v155 count:16];
          v89 = v99;
        }

        while (v99);
      }

      v17 = v101;
      v14 = v102;
      v16 = v105;
      v15 = v106;
      v13 = v118;
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (FCCKPrivateDatabaseSchema)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCCKPrivateDatabaseSchema init]";
    v10 = 2080;
    v11 = "FCCKPrivateDatabaseSchema.m";
    v12 = 1024;
    v13 = 40;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCCKPrivateDatabaseSchema init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

uint64_t __113__FCCKPrivateDatabaseSchema_initWithZoneSchemas_recordSchemas_recordTypeVersionMapping_recordNameVersionMapping___block_invoke_17(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  if (v2)
  {
    v4 = *(v2 + 16);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = [v3 first];

  v7 = [v5 isEqualToString:v6];
  return v7;
}

uint64_t __113__FCCKPrivateDatabaseSchema_initWithZoneSchemas_recordSchemas_recordTypeVersionMapping_recordNameVersionMapping___block_invoke_22(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v4 = v4[2];
  }

  v5 = v4;
  v6 = [v3 first];
  if ([v5 isEqualToString:v6])
  {
    v7 = *(a1 + 40);
    v8 = [v3 second];
    v9 = [v7 isEqualToString:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __113__FCCKPrivateDatabaseSchema_initWithZoneSchemas_recordSchemas_recordTypeVersionMapping_recordNameVersionMapping___block_invoke_26(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  if (v2)
  {
    v4 = *(v2 + 16);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = [v3 second];

  v7 = [v5 isEqualToString:v6];
  return v7;
}

- (FCCKRecordIDMapping)mappingFromRecord:(uint64_t)record toVersion:
{
  selfCopy = self;
  if (self)
  {
    v5 = a2;
    recordID = [v5 recordID];
    v7 = [(FCCKPrivateDatabaseSchema *)selfCopy mappingFromRecordID:recordID toVersion:record];

    recordType = [v5 recordType];
    recordID2 = [v5 recordID];

    zoneID = [recordID2 zoneID];
    v11 = [(FCCKPrivateDatabaseSchema *)selfCopy mappingFromRecordType:recordType inZoneID:zoneID toVersion:record];

    v12 = [FCCKRecordMapping alloc];
    fromZoneSchema = [v7 fromZoneSchema];
    toZoneSchema = [v7 toZoneSchema];
    fromRecordSchema = [v11 fromRecordSchema];
    toRecordSchema = [v11 toRecordSchema];
    selfCopy = [(FCCKRecordMapping *)v12 initWithFromZoneSchema:fromZoneSchema toZoneSchema:toZoneSchema fromRecordSchema:fromRecordSchema toRecordSchema:toRecordSchema recordIDMapping:v7];
  }

  return selfCopy;
}

- (FCCKRecordIDMapping)mappingFromRecordID:(uint64_t)d toVersion:
{
  v5 = a2;
  v6 = v5;
  if (self)
  {
    zoneID = [v5 zoneID];
    zoneName = [zoneID zoneName];
    recordName = [v6 recordName];
    v10 = [FCPair pairWithFirst:zoneName second:recordName];

    v11 = [(NSString *)self->_fromRecordName mapValue:v10 toVersion:d];
    second = [v11 second];
    v13 = second;
    if (second)
    {
      recordName2 = second;
    }

    else
    {
      recordName2 = [v6 recordName];
    }

    v15 = recordName2;

    zoneID2 = [v6 zoneID];
    zoneName2 = [zoneID2 zoneName];
    v18 = [zoneName2 isEqualToString:*MEMORY[0x1E695B800]];

    if (v18)
    {
      isa = self[1].super.isa;
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __59__FCCKPrivateDatabaseSchema_mappingFromRecordID_toVersion___block_invoke;
      v43[3] = &unk_1E7C44B48;
      v20 = v6;
      v44 = v20;
      v21 = [(objc_class *)isa fc_firstObjectPassingTest:v43];
      v22 = self[1].super.isa;
      v38 = MEMORY[0x1E69E9820];
      v39 = 3221225472;
      v40 = __59__FCCKPrivateDatabaseSchema_mappingFromRecordID_toVersion___block_invoke_2;
      v41 = &unk_1E7C44B48;
      v23 = v15;
      v42 = v23;
      v24 = [(objc_class *)v22 fc_firstObjectPassingTest:&v38];
      v25 = [FCCKRecordIDMapping alloc];
      recordName3 = [v20 recordName];
      self = [(FCCKRecordIDMapping *)v25 initWithFromZoneSchema:v21 toZoneSchema:v24 fromRecordName:recordName3 toRecordName:v23];
    }

    else
    {
      zoneID3 = [v6 zoneID];
      zoneName3 = [zoneID3 zoneName];
      v29 = [(FCCKPrivateDatabaseSchema *)&self->super.isa schemaForZoneWithName:zoneName3];

      fromZoneSchema = self->_fromZoneSchema;
      zoneID4 = [v6 zoneID];
      zoneName4 = [zoneID4 zoneName];
      v33 = [(FCCKZoneSchema *)fromZoneSchema mapValue:zoneName4 toVersion:d];

      v34 = [(FCCKPrivateDatabaseSchema *)&self->super.isa schemaForZoneWithName:v33];
      v35 = [FCCKRecordIDMapping alloc];
      recordName4 = [v6 recordName];
      self = [(FCCKRecordIDMapping *)v35 initWithFromZoneSchema:v29 toZoneSchema:v34 fromRecordName:recordName4 toRecordName:v15];
    }
  }

  return self;
}

- (id)mappingFromRecordType:(void *)type inZoneID:(uint64_t)d toVersion:
{
  if (self)
  {
    v7 = a2;
    zoneName = [type zoneName];
    v9 = [(FCCKPrivateDatabaseSchema *)self mappingFromRecordType:v7 inZoneName:zoneName toVersion:d];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __59__FCCKPrivateDatabaseSchema_mappingFromRecordID_toVersion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 recordName];
  if (v3)
  {
    v5 = [v3[4] containsObject:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __59__FCCKPrivateDatabaseSchema_mappingFromRecordID_toVersion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return [*(a2 + 32) containsObject:*(a1 + 32)];
  }

  else
  {
    return 0;
  }
}

- (id)schemaForZoneWithName:(id *)name
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (name)
  {
    if ([v3 isEqualToString:*MEMORY[0x1E695B800]] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"to get the schema for the default zone, use schemaForZoneContainingRecordID:"];
      v7 = 136315906;
      v8 = "[FCCKPrivateDatabaseSchema schemaForZoneWithName:]";
      v9 = 2080;
      v10 = "FCCKPrivateDatabaseSchema.m";
      v11 = 1024;
      v12 = 218;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v7, 0x26u);
    }

    name = [name[4] objectForKeyedSubscript:v4];
  }

  return name;
}

- (id)mappingFromRecordZoneID:(uint64_t)d toVersion:
{
  if (self)
  {
    zoneName = [a2 zoneName];
    v6 = [(FCCKPrivateDatabaseSchema *)self mappingFromRecordZoneName:zoneName toVersion:d];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (FCCKRecordZoneIDMapping)mappingFromRecordZoneName:(uint64_t)name toVersion:
{
  selfCopy = self;
  if (self)
  {
    v5 = a2;
    v6 = [(FCCKPrivateDatabaseSchema *)&selfCopy->super.isa schemaForZoneWithName:v5];
    v7 = [(FCCKZoneSchema *)selfCopy->_fromZoneSchema mapValue:v5 toVersion:name];

    v8 = [(FCCKPrivateDatabaseSchema *)&selfCopy->super.isa schemaForZoneWithName:v7];
    selfCopy = [[FCCKRecordZoneIDMapping alloc] initWithFromZoneSchema:v6 toZoneSchema:v8];
  }

  return selfCopy;
}

- (FCCKRecordTypeMapping)mappingFromRecordType:(void *)type inZoneName:(uint64_t)name toVersion:
{
  typeCopy = type;
  if (self)
  {
    isa = self[2].super.isa;
    v9 = a2;
    v10 = [(objc_class *)isa objectForKeyedSubscript:v9];
    v11 = [FCPair pairWithFirst:typeCopy second:v9];

    v12 = [(FCCKZoneSchema *)self->_toZoneSchema mapValue:v11 toVersion:name];
    v13 = self[2].super.isa;
    second = [v12 second];
    v15 = [(objc_class *)v13 objectForKeyedSubscript:second];

    if ([typeCopy isEqualToString:*MEMORY[0x1E695B800]])
    {
      v16 = [FCCKRecordZoneIDMapping alloc];
      firstObject = [(FCCKZoneSchema *)self[1]._toZoneSchema firstObject];
      firstObject2 = [(FCCKZoneSchema *)self[1]._toZoneSchema firstObject];
      v19 = [(FCCKRecordZoneIDMapping *)v16 initWithFromZoneSchema:firstObject toZoneSchema:firstObject2];
    }

    else
    {
      v19 = [(FCCKPrivateDatabaseSchema *)self mappingFromRecordZoneName:typeCopy toVersion:name];
    }

    v20 = [FCCKRecordTypeMapping alloc];
    fromZoneSchema = [(FCCKRecordZoneIDMapping *)v19 fromZoneSchema];
    toZoneSchema = [(FCCKRecordZoneIDMapping *)v19 toZoneSchema];
    v23 = [(FCCKRecordTypeMapping *)v20 initWithFromZoneSchema:fromZoneSchema toZoneSchema:toZoneSchema fromRecordSchema:v10 toRecordSchema:v15];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (void)schemaForZoneContainingRecordID:(void *)d
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (d)
  {
    if (!v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"can't resolve the default zone without a record ID"];
      *buf = 136315906;
      v17 = "[FCCKPrivateDatabaseSchema schemaForZoneContainingRecordID:]";
      v18 = 2080;
      v19 = "FCCKPrivateDatabaseSchema.m";
      v20 = 1024;
      v21 = 231;
      v22 = 2114;
      v23 = v13;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    zoneID = [v4 zoneID];
    zoneName = [zoneID zoneName];
    v7 = [zoneName isEqualToString:*MEMORY[0x1E695B800]];

    if (v7)
    {
      v8 = d[5];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __61__FCCKPrivateDatabaseSchema_schemaForZoneContainingRecordID___block_invoke;
      v14[3] = &unk_1E7C44B48;
      v15 = v4;
      d = [v8 fc_firstObjectPassingTest:v14];
      zoneID2 = v15;
    }

    else
    {
      v10 = d[4];
      zoneID2 = [v4 zoneID];
      zoneName2 = [zoneID2 zoneName];
      d = [v10 objectForKeyedSubscript:zoneName2];
    }
  }

  return d;
}

uint64_t __61__FCCKPrivateDatabaseSchema_schemaForZoneContainingRecordID___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 recordName];
  if (v3)
  {
    v5 = [v3[4] containsObject:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)enumerateZoneSchemasForVersion:(void *)version withBlock:
{
  v28 = *MEMORY[0x1E69E9840];
  versionCopy = version;
  v6 = versionCopy;
  if (self && versionCopy)
  {
    v7 = [self[1] allValuesForVersion:a2];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      do
      {
        v11 = 0;
        do
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [self[4] objectForKeyedSubscript:*(*(&v22 + 1) + 8 * v11)];
          if (v12)
          {
            (v6)[2](v6, v12);
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v9);
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v13 = self[5];
    v14 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v19;
      do
      {
        v17 = 0;
        do
        {
          if (*v19 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v6[2](v6, *(*(&v18 + 1) + 8 * v17++));
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v15);
    }
  }
}

- (void)enumerateZoneSchemasWithBlock:(uint64_t)block
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (block && v3)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    allValues = [*(block + 32) allValues];
    v6 = [allValues countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      do
      {
        v9 = 0;
        do
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(allValues);
          }

          v4[2](v4, *(*(&v19 + 1) + 8 * v9++));
        }

        while (v7 != v9);
        v7 = [allValues countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v7);
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v10 = *(block + 40);
    v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v16;
      do
      {
        v14 = 0;
        do
        {
          if (*v16 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v4[2](v4, *(*(&v15 + 1) + 8 * v14++));
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
      }

      while (v12);
    }
  }
}

- (id)zoneNamesWithChangesFromVersion:(uint64_t)version toVersion:
{
  if (self)
  {
    var38[0] = MEMORY[0x1E69E9820];
    var38[1] = 3221225472;
    var38[2] = __71__FCCKPrivateDatabaseSchema_zoneNamesWithChangesFromVersion_toVersion___block_invoke;
    var38[3] = &unk_1E7C44B70;
    var38[4] = self;
    var38[5] = a2;
    var38[6] = version;
    self = [MEMORY[0x1E695DFD8] fc_set:var38];
    v3 = var38[8];
  }

  return self;
}

void __71__FCCKPrivateDatabaseSchema_zoneNamesWithChangesFromVersion_toVersion___block_invoke(void *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [*(a1[4] + 16) allValuesModifiedFromVersion:a1[5] toVersion:{a1[6], 0}];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v10 + 1) + 8 * v8) first];
        [v3 addObject:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (id)recordNamesInDefaultZoneChangedFromVersion:(uint64_t)version toVersion:
{
  if (self)
  {
    var38[0] = MEMORY[0x1E69E9820];
    var38[1] = 3221225472;
    var38[2] = __82__FCCKPrivateDatabaseSchema_recordNamesInDefaultZoneChangedFromVersion_toVersion___block_invoke;
    var38[3] = &unk_1E7C44B70;
    var38[4] = self;
    var38[5] = a2;
    var38[6] = version;
    self = [MEMORY[0x1E695DFD8] fc_set:var38];
    v3 = var38[8];
  }

  return self;
}

void __82__FCCKPrivateDatabaseSchema_recordNamesInDefaultZoneChangedFromVersion_toVersion___block_invoke(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [*(a1[4] + 24) allValuesModifiedFromVersion:a1[5] toVersion:{a1[6], 0}];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    v8 = *MEMORY[0x1E695B800];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 first];
        v12 = [v11 isEqualToString:v8];

        if (v12)
        {
          v13 = [v10 second];
          [v3 addObject:v13];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

@end