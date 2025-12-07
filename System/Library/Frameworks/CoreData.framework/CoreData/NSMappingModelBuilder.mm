@interface NSMappingModelBuilder
@end

@implementation NSMappingModelBuilder

uint64_t __64___NSMappingModelBuilder_inferPropertyMappingsForEntityMapping___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  ++*(*(*(a1 + 48) + 8) + 24);
  if (a3)
  {
    v5 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a3, [a2 renamingIdentifier]);
  }

  else
  {
    v5 = [a2 renamingIdentifier];
  }

  [*(a1 + 32) setObject:a2 forKey:v5];
  v6 = *(a1 + 40);
  v7 = [a2 name];

  return [v6 addObject:v7];
}

void *__64___NSMappingModelBuilder_inferPropertyMappingsForEntityMapping___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  result = [a2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v17;
    v8 = 0x1E6EC0000uLL;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(a2);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        if ([v10 isNSArray])
        {
          v11 = *(a1 + 32);
          goto LABEL_8;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v8;
          v14 = *(*(*(a1 + 32) + 8) + 40);
          [v10 elements];
          objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a3, [v10 renamingIdentifier]);
          v12 = *(v14 + 16);
          v8 = v13;
          goto LABEL_11;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = *(a1 + 40);
LABEL_8:
          v12 = *(*(*(v11 + 8) + 40) + 16);
LABEL_11:
          v12();
        }

        v9 = v9 + 1;
      }

      while (v6 != v9);
      result = [a2 countByEnumeratingWithState:&v16 objects:v20 count:16];
      v6 = result;
    }

    while (result);
  }

  return result;
}

void __64___NSMappingModelBuilder_inferPropertyMappingsForEntityMapping___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v200[1] = *MEMORY[0x1E69E9840];
  if (([a2 isTransient] & 1) == 0)
  {
    if (a3)
    {
      v6 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a3, [a2 renamingIdentifier]);
    }

    else
    {
      v6 = [a2 renamingIdentifier];
    }

    v7 = v6;
    v8 = [*(a1 + 32) objectForKey:v6];
    v9 = [a2 _propertyType];
    v10 = [v8 _propertyType];
    v194 = v9;
    if (!v8 || v10 == v9)
    {
LABEL_18:
      v17 = 56;
      if (!v8)
      {
        v17 = 48;
      }

      [*(a1 + v17) addObject:{objc_msgSend(a2, "_qualifiedName")}];
      if ([a2 _isAttribute])
      {
        if ([*(a1 + 64) objectForKey:a3])
        {
          v18 = [*(a1 + 64) objectForKey:a3];
        }

        else
        {
          v18 = 0;
        }

        v28 = *(a1 + 40);
        v29 = [v8 _namespace];
        if (v18)
        {
          v30 = v18;
        }

        else
        {
          v30 = a3;
        }

        if (!v28)
        {
          goto LABEL_225;
        }

        v31 = v29;
        if (v30)
        {
          v32 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v30, [a2 name]);
        }

        else
        {
          v32 = [a2 name];
        }

        v33 = v32;
        if (v8)
        {
          v34 = [objc_msgSend(a2 "userInfo")];
          if (!v34 || (v35 = v34, v192 = v7, v36 = [v8 attributeType], v37 = v36 == objc_msgSend(a2, "attributeType"), v7 = v192, v37) && (objc_msgSend(a2, "attributeType") == 1000 || objc_msgSend(a2, "attributeType") == 1800))
          {
            v38 = [v8 attributeType];
            v39 = [a2 attributeType];
            if (!v38 || !v39)
            {
LABEL_152:
              v53 = objc_alloc(MEMORY[0x1E696ABC0]);
              v54 = *MEMORY[0x1E696A250];
              v55 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v33, @"property", objc_msgSend(*(v28 + 24), "destinationEntityName"), @"entity", @"Source and destination attribute types are incompatible", @"reason", 0}];
              goto LABEL_153;
            }

            if (v38 == v39)
            {
LABEL_142:
              v94 = 0;
              if (v31)
              {
LABEL_143:
                v95 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v31, [v8 name]);
LABEL_178:
                v118 = v95;
                v190 = v33;
                if (![v8 isOptional] || (objc_msgSend(a2, "isOptional") & 1) != 0)
                {
                  if ([a2 attributeType] == 1000 && objc_msgSend(a2, "storesBinaryDataExternally") && (objc_msgSend(v8, "storesBinaryDataExternally") & 1) == 0)
                  {
                    contexta = v94;
                    v187 = v28;
                    v128 = [MEMORY[0x1E696ABC8] expressionForKeyPath:v118];
                    v129 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObject:v128];
                    v130 = MEMORY[0x1E696ABC8];
                    v131 = [MEMORY[0x1E696ABC8] expressionForEvaluatedObject];
                    v132 = @"_prependExternalBlobToken:";
                  }

                  else
                  {
                    if ([a2 attributeType] == 1000 && objc_msgSend(v8, "storesBinaryDataExternally") && !objc_msgSend(a2, "storesBinaryDataExternally"))
                    {
                      v133 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v134 = *MEMORY[0x1E696A250];
                      v135 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v33, @"property", objc_msgSend(*(v28 + 24), "destinationEntityName"), @"entity", @"Unable to use inferred mapping to move external reference into store.", @"Reason", 0}];
LABEL_223:
                      v96 = v135;
                      v97 = v133;
                      v98 = v134;
                      goto LABEL_224;
                    }

                    v187 = v28;
                    contexta = v94;
                    if ([v8 attributeType] != 1800 || objc_msgSend(a2, "attributeType") != 2200)
                    {
                      v120 = [MEMORY[0x1E696ABC8] expressionForKeyPath:v118];
LABEL_202:
                      v138 = MEMORY[0x1E696ABC8];
                      v139 = [MEMORY[0x1E696ABC8] expressionForVariable:@"source"];
                      v44 = [v138 expressionForFunction:v139 selectorName:@"valueForKey:" arguments:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObject:", objc_msgSend(MEMORY[0x1E696ABC8], "expressionForConstantValue:", v118))}];
                      *buf = [[NSPropertyTransform alloc] initWithPropertyName:v33 valueExpression:v120];
                      v43 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:buf count:1];

                      goto LABEL_221;
                    }

                    if ([v8 valueTransformerName])
                    {
                      v119 = [v8 valueTransformerName];
                    }

                    else
                    {
                      v119 = @"NSSecureUnarchiveFromDataTransformerName";
                    }

                    v136 = [a2 adapterName];
                    v137 = [MEMORY[0x1E696ABC8] expressionForKeyPath:v118];
                    v129 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v119, v136, v137, 0}];
                    v130 = MEMORY[0x1E696ABC8];
                    v131 = [MEMORY[0x1E696ABC8] expressionForEvaluatedObject];
                    v132 = @"_convertTransformableToCodable:";
                  }

                  v120 = [v130 expressionForFunction:v131 selectorName:v132 arguments:v129];

                  goto LABEL_202;
                }

                if (![a2 defaultValue])
                {
                  if ([objc_opt_class() migrationDebugLevel] >= 2)
                  {
                    v121 = v28;
                    v122 = v7;
                    v123 = objc_autoreleasePoolPush();
                    if (_NSCoreDataIsOSLogEnabled(2))
                    {
                      if (_pflogging_catastrophic_mode)
                      {
                        LogStream = _PFLogGetLogStream(1);
                        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
                        {
                          v125 = [*(v121 + 24) sourceEntityName];
                          v126 = [*(v121 + 24) destinationEntityName];
                          *buf = 138413058;
                          *&buf[4] = v125;
                          *&buf[12] = 2112;
                          *&buf[14] = v118;
                          *&buf[22] = 2112;
                          *&buf[24] = v126;
                          v196 = 2112;
                          v197 = v190;
                          v127 = "CoreData: error: (migration) attribute mapping for (%@->%@ to %@->%@) requires data validation during store migration, mapping a previously optional attribute to a mandatory attribute without a default value.\n\n";
LABEL_249:
                          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, v127, buf, 0x2Au);
                        }
                      }

                      else
                      {
                        LogStream = _PFLogGetLogStream(2);
                        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
                        {
                          v178 = [*(v121 + 24) sourceEntityName];
                          v179 = [*(v121 + 24) destinationEntityName];
                          *buf = 138413058;
                          *&buf[4] = v178;
                          *&buf[12] = 2112;
                          *&buf[14] = v118;
                          *&buf[22] = 2112;
                          *&buf[24] = v179;
                          v196 = 2112;
                          v197 = v190;
                          v127 = "CoreData: warning: (migration) attribute mapping for (%@->%@ to %@->%@) requires data validation during store migration, mapping a previously optional attribute to a mandatory attribute without a default value.\n\n";
                          goto LABEL_249;
                        }
                      }
                    }

                    v140 = _pflogging_catastrophic_mode;
                    v141 = [*(v121 + 24) sourceEntityName];
                    v142 = [*(v121 + 24) destinationEntityName];
                    v37 = v140 == 0;
                    v94 = 1;
                    if (v37)
                    {
                      v143 = 2;
                    }

                    else
                    {
                      v143 = 1;
                    }

                    _NSCoreDataLog_console(v143, "(migration) attribute mapping for (%@->%@ to %@->%@) requires data validation during store migration, mapping a previously optional attribute to a mandatory attribute without a default value.\n", v141, v118, v142, v190);
                    objc_autoreleasePoolPop(v123);
                    v7 = v122;
                    v28 = v121;
                    goto LABEL_211;
                  }

                  v94 = 1;
                }

LABEL_211:
                if ([a2 attributeType] == 1000 && objc_msgSend(a2, "storesBinaryDataExternally") && (objc_msgSend(v8, "storesBinaryDataExternally") & 1) == 0)
                {
                  contexta = v94;
                  v187 = v28;
                  v193 = v7;
                  v159 = [MEMORY[0x1E696ABC8] expressionForKeyPath:v118];
                  v160 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObject:v159];
                  v182 = [MEMORY[0x1E696ABC8] expressionForFunction:objc_msgSend(MEMORY[0x1E696ABC8] selectorName:"expressionForEvaluatedObject") arguments:{@"_prependExternalBlobToken:", v160}];
                }

                else
                {
                  if ([a2 attributeType] == 1000 && objc_msgSend(v8, "storesBinaryDataExternally") && !objc_msgSend(a2, "storesBinaryDataExternally"))
                  {
                    v133 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v134 = *MEMORY[0x1E696A250];
                    v135 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v190, @"property", objc_msgSend(*(v28 + 24), "destinationEntityName"), @"entity", @"Unable to use inferred mapping to move external reference into store.", 0, v180}];
                    goto LABEL_223;
                  }

                  contexta = v94;
                  v187 = v28;
                  v193 = v7;
                  v182 = [MEMORY[0x1E696ABC8] expressionForKeyPath:v118];
                }

                v144 = MEMORY[0x1E696ABC8];
                v145 = [MEMORY[0x1E696ABC8] expressionForVariable:@"entityPolicy"];
                v146 = MEMORY[0x1E695DEC8];
                v33 = v190;
                v147 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v190];
                v148 = [MEMORY[0x1E696ABC8] expressionForVariable:@"source"];
                v44 = [v144 expressionForFunction:v145 selectorName:@"_nonNilValueOrDefaultValueForAttribute:source:destination:" arguments:{objc_msgSend(v146, "arrayWithObjects:", v147, v148, objc_msgSend(MEMORY[0x1E696ABC8], "expressionForVariable:", @"destination", 0)}];
                v149 = [[NSPropertyTransform alloc] initWithPropertyName:v190 valueExpression:v182];
                v150 = [NSPropertyTransform alloc];
                v151 = -[NSPropertyTransform initWithPropertyName:valueExpression:](v150, "initWithPropertyName:valueExpression:", v190, [MEMORY[0x1E696ABC8] expressionForConstantValue:{objc_msgSend(a2, "defaultValue")}]);
                v153 = v151;
                if (v151)
                {
                  objc_setProperty_nonatomic(v151, v152, v149, 24);
                  v153->_replaceMissingValueOnly = 1;
                }

                v43 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v149, v153, 0}];

                v7 = v193;
LABEL_221:
                v28 = v187;
                v41 = contexta;
                if (!v43)
                {
                  goto LABEL_222;
                }

                goto LABEL_62;
              }

LABEL_177:
              v95 = [v8 name];
              goto LABEL_178;
            }

            v40 = 1;
            if (v38 > 399)
            {
              if (v38 != 400 && v38 != 500 && v38 != 600)
              {
                goto LABEL_130;
              }
            }

            else if (v38 != 100 && v38 != 200 && v38 != 300)
            {
LABEL_130:
              v40 = 0;
            }

            if (v39 > 399)
            {
              if (v39 != 400 && v39 != 600 && v39 != 500)
              {
LABEL_149:
                if (v39 != 800)
                {
                  v40 = 0;
                }

                if ((v40 & 1) == 0)
                {
                  goto LABEL_152;
                }

                goto LABEL_142;
              }
            }

            else if (v39 != 100 && v39 != 200 && v39 != 300)
            {
              goto LABEL_149;
            }

            if (v38 == 800)
            {
              v40 = 1;
            }

            if ((v40 & 1) == 0)
            {
              goto LABEL_152;
            }

            goto LABEL_142;
          }

          if (([v8 attributeType] == 1800 || objc_msgSend(v8, "attributeType") == 2200) && objc_msgSend(a2, "attributeType") == 1000 || objc_msgSend(v8, "attributeType") == 1000 && (objc_msgSend(a2, "attributeType") == 1800 || objc_msgSend(a2, "attributeType") == 2200))
          {
            if ([v8 attributeType] == 1000 && (objc_msgSend(v8, "storesBinaryDataExternally") & 1) != 0 || objc_msgSend(a2, "attributeType") == 1000 && objc_msgSend(a2, "storesBinaryDataExternally"))
            {
              v53 = objc_alloc(MEMORY[0x1E696ABC0]);
              v54 = *MEMORY[0x1E696A250];
              v55 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v33, @"property", objc_msgSend(*(v28 + 24), "destinationEntityName"), @"entity", @"Type Transformation expects NSBinaryDataAttributeType NOT to be stored externally", @"reason", 0}];
LABEL_153:
              v96 = v55;
              v97 = v53;
              v98 = v54;
LABEL_224:
              *(v28 + 32) = [v97 initWithDomain:v98 code:134190 userInfo:v96];
              goto LABEL_225;
            }

            v181 = v31;
            v81 = objc_autoreleasePoolPush();
            _pflogInitialize(2);
            v76 = 0;
            v186 = v28;
            v189 = v33;
            context = v81;
            if (_NSCoreDataIsLogEnabled(2) && _pflogging_enable_oslog >= 1)
            {
              if (_pflogging_catastrophic_mode)
              {
                v82 = _PFLogGetLogStream(1);
                if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
                {
                  v83 = [v8 name];
                  v84 = +[NSAttributeDescription stringForAttributeType:](NSAttributeDescription, "stringForAttributeType:", [v8 attributeType]);
                  v85 = [a2 name];
                  v86 = +[NSAttributeDescription stringForAttributeType:](NSAttributeDescription, "stringForAttributeType:", [a2 attributeType]);
                  *buf = 138413314;
                  *&buf[4] = v83;
                  *&buf[12] = 2112;
                  *&buf[14] = v84;
                  *&buf[22] = 2112;
                  *&buf[24] = v85;
                  v196 = 2112;
                  v197 = v86;
                  v198 = 2112;
                  v199 = v35;
                  v87 = "CoreData: error: Transforming %@ (%@) to %@ (%@), was %@\n";
LABEL_238:
                  _os_log_error_impl(&dword_18565F000, v82, OS_LOG_TYPE_ERROR, v87, buf, 0x34u);
                }
              }

              else
              {
                v82 = _PFLogGetLogStream(2);
                if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
                {
                  v161 = [v8 name];
                  v162 = +[NSAttributeDescription stringForAttributeType:](NSAttributeDescription, "stringForAttributeType:", [v8 attributeType]);
                  v163 = [a2 name];
                  v164 = +[NSAttributeDescription stringForAttributeType:](NSAttributeDescription, "stringForAttributeType:", [a2 attributeType]);
                  *buf = 138413314;
                  *&buf[4] = v161;
                  *&buf[12] = 2112;
                  *&buf[14] = v162;
                  *&buf[22] = 2112;
                  *&buf[24] = v163;
                  v196 = 2112;
                  v197 = v164;
                  v198 = 2112;
                  v199 = v35;
                  v87 = "CoreData: warning: Transforming %@ (%@) to %@ (%@), was %@\n";
                  goto LABEL_238;
                }
              }

              v76 = 0;
            }

LABEL_174:
            v112 = _pflogging_catastrophic_mode;
            v113 = [v8 name];
            v114 = +[NSAttributeDescription stringForAttributeType:](NSAttributeDescription, "stringForAttributeType:", [v8 attributeType]);
            v115 = [a2 name];
            v116 = +[NSAttributeDescription stringForAttributeType:](NSAttributeDescription, "stringForAttributeType:", [a2 attributeType]);
            v117 = 1;
            if (!v112)
            {
              v117 = 2;
            }

            _NSCoreDataLog_console(v117, "Transforming %@ (%@) to %@ (%@), was %@", v113, v114, v115, v116, v35);
            objc_autoreleasePoolPop(context);
            v33 = v189;
            v7 = v192;
            v28 = v186;
            v94 = v76;
            v31 = v181;
            if (v181)
            {
              goto LABEL_143;
            }

            goto LABEL_177;
          }

          if ([v8 attributeType] != 1800 || objc_msgSend(a2, "attributeType") != 2200)
          {
            v53 = objc_alloc(MEMORY[0x1E696ABC0]);
            v54 = *MEMORY[0x1E696A250];
            v55 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v33, @"property", objc_msgSend(*(v28 + 24), "destinationEntityName"), @"entity", @"Type Transformation expects NSTransformableAttributeType or NSBinaryDataAttributeType", @"reason", 0}];
            goto LABEL_153;
          }

          v74 = objc_autoreleasePoolPush();
          _pflogInitialize(2);
          v186 = v28;
          v189 = v33;
          v181 = v31;
          context = v74;
          if (_NSCoreDataIsLogEnabled(2) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v75 = _PFLogGetLogStream(1);
              if (!os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
              {
                v76 = 1;
                goto LABEL_174;
              }

              v165 = [v8 name];
              v166 = +[NSAttributeDescription stringForAttributeType:](NSAttributeDescription, "stringForAttributeType:", [v8 attributeType]);
              v167 = [a2 name];
              v168 = +[NSAttributeDescription stringForAttributeType:](NSAttributeDescription, "stringForAttributeType:", [a2 attributeType]);
              *buf = 138413314;
              *&buf[4] = v165;
              *&buf[12] = 2112;
              *&buf[14] = v166;
              *&buf[22] = 2112;
              *&buf[24] = v167;
              v196 = 2112;
              v197 = v168;
              v198 = 2112;
              v199 = v35;
              v169 = "CoreData: error: Transforming %@ (%@) to %@ (%@), was %@\n";
              goto LABEL_247;
            }

            v75 = _PFLogGetLogStream(2);
            if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
            {
              v174 = [v8 name];
              v175 = +[NSAttributeDescription stringForAttributeType:](NSAttributeDescription, "stringForAttributeType:", [v8 attributeType]);
              v176 = [a2 name];
              v177 = +[NSAttributeDescription stringForAttributeType:](NSAttributeDescription, "stringForAttributeType:", [a2 attributeType]);
              *buf = 138413314;
              *&buf[4] = v174;
              *&buf[12] = 2112;
              *&buf[14] = v175;
              *&buf[22] = 2112;
              *&buf[24] = v176;
              v196 = 2112;
              v197 = v177;
              v198 = 2112;
              v199 = v35;
              v169 = "CoreData: warning: Transforming %@ (%@) to %@ (%@), was %@\n";
LABEL_247:
              _os_log_error_impl(&dword_18565F000, v75, OS_LOG_TYPE_ERROR, v169, buf, 0x34u);
            }
          }

          v76 = 1;
          goto LABEL_174;
        }

        if (([a2 isOptional] & 1) != 0 || objc_msgSend(a2, "defaultValue"))
        {
          v41 = 0;
          goto LABEL_61;
        }

        if ([objc_opt_class() migrationDebugLevel] < 2)
        {
          v41 = 1;
          goto LABEL_61;
        }

        v89 = objc_autoreleasePoolPush();
        _pflogInitialize(2);
        if (_NSCoreDataIsLogEnabled(2) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v90 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
            {
              v91 = [*(v28 + 24) destinationEntityName];
              *buf = 138412546;
              *&buf[4] = v91;
              *&buf[12] = 2112;
              *&buf[14] = v33;
              v92 = "CoreData: error: (migration) attribute mapping for (%@->%@) requires data validation during store migration, mapping a new, mandatory attribute without a default value.\n\n";
LABEL_245:
              _os_log_error_impl(&dword_18565F000, v90, OS_LOG_TYPE_ERROR, v92, buf, 0x16u);
            }
          }

          else
          {
            v90 = _PFLogGetLogStream(2);
            if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
            {
              v173 = [*(v28 + 24) destinationEntityName];
              *buf = 138412546;
              *&buf[4] = v173;
              *&buf[12] = 2112;
              *&buf[14] = v33;
              v92 = "CoreData: warning: (migration) attribute mapping for (%@->%@) requires data validation during store migration, mapping a new, mandatory attribute without a default value.\n\n";
              goto LABEL_245;
            }
          }
        }

        v109 = _pflogging_catastrophic_mode;
        v110 = [*(v28 + 24) destinationEntityName];
        v37 = v109 == 0;
        v41 = 1;
        if (v37)
        {
          v111 = 2;
        }

        else
        {
          v111 = 1;
        }

        _NSCoreDataLog_console(v111, "(migration) attribute mapping for (%@->%@) requires data validation during store migration, mapping a new, mandatory attribute without a default value.\n", v110, v33);
        objc_autoreleasePoolPop(v89);
LABEL_61:
        v42 = [NSPropertyTransform alloc];
        *buf = -[NSPropertyTransform initWithPropertyName:valueExpression:](v42, "initWithPropertyName:valueExpression:", v33, [MEMORY[0x1E696ABC8] expressionForConstantValue:{objc_msgSend(a2, "defaultValue")}]);
        v43 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:buf count:1];

        v44 = 0;
        if (!v43)
        {
LABEL_222:
          v133 = objc_alloc(MEMORY[0x1E696ABC0]);
          v134 = *MEMORY[0x1E696A250];
          v135 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v33, @"property", objc_msgSend(*(v28 + 24), "destinationEntityName"), @"entity", @"Unable to infer mapping for attribute", @"reason", 0}];
          goto LABEL_223;
        }

LABEL_62:
        v45 = objc_alloc_init(NSPropertyMapping);
        [(NSPropertyMapping *)v45 setName:v33];
        [(NSPropertyMapping *)v45 setValueExpression:v44];
        [(NSPropertyMapping *)v45 _setPropertyTransforms:v43];

        if (v41)
        {
          v46 = objc_alloc(MEMORY[0x1E695DF20]);
          v47 = [MEMORY[0x1E696AD98] numberWithBool:1];
          v48 = [v46 initWithObjectsAndKeys:{v47, _NSInferredMappingCouldFailValidation, 0}];
          [(NSPropertyMapping *)v45 setUserInfo:v48];
          v200[0] = NSPropertyTransformMandatoryPropertyValidation;
          -[NSPropertyMapping _setTransformValidations:](v45, [MEMORY[0x1E695DEC8] arrayWithObjects:v200 count:1]);
          v49 = [*(v28 + 24) userInfo];
          if (v49)
          {
            v50 = v49;
            if (([objc_msgSend(v49 objectForKey:{_NSInferredMappingCouldFailValidation), "BOOLValue"}] & 1) == 0)
            {
              v51 = [v50 mutableCopy];
              v52 = [MEMORY[0x1E696AD98] numberWithBool:1];
              [v51 setObject:v52 forKey:_NSInferredMappingCouldFailValidation];
              [*(v28 + 24) setUserInfo:v51];
            }
          }

          else
          {
            [*(v28 + 24) setUserInfo:v48];
          }
        }

        if (v45)
        {
          v93 = 72;
          goto LABEL_125;
        }

        goto LABEL_225;
      }

      if (![a2 _isRelationship])
      {
        goto LABEL_225;
      }

      v19 = *(a1 + 40);
      if (!v19)
      {
        goto LABEL_225;
      }

      v20 = [a2 name];
      v191 = v7;
      if (v8)
      {
        v21 = [v8 name];
        v185 = a1;
        if (([v8 isOptional] & 1) == 0 && (!objc_msgSend(v8, "isToMany") || objc_msgSend(v8, "minCount")) || (objc_msgSend(a2, "isOptional") & 1) != 0 || objc_msgSend(a2, "isToMany") && !objc_msgSend(a2, "minCount"))
        {
          v56 = 0;
        }

        else
        {
          if ([objc_opt_class() migrationDebugLevel] >= 2)
          {
            v22 = v21;
            v23 = objc_autoreleasePoolPush();
            _pflogInitialize(2);
            if (_NSCoreDataIsLogEnabled(2) && _pflogging_enable_oslog >= 1)
            {
              if (_pflogging_catastrophic_mode)
              {
                v24 = _PFLogGetLogStream(1);
                if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                {
                  v25 = [*(v19 + 24) sourceEntityName];
                  v26 = [*(v19 + 24) destinationEntityName];
                  *buf = 138413058;
                  *&buf[4] = v25;
                  *&buf[12] = 2112;
                  *&buf[14] = v21;
                  *&buf[22] = 2112;
                  *&buf[24] = v26;
                  v196 = 2112;
                  v197 = v20;
                  v27 = "CoreData: error: (migration) relationship mapping for (%@->%@ to %@->%@) requires data validation during store migration, mapping a previously optional relationship to a mandatory relationship.\n\n";
LABEL_243:
                  _os_log_error_impl(&dword_18565F000, v24, OS_LOG_TYPE_ERROR, v27, buf, 0x2Au);
                }
              }

              else
              {
                v24 = _PFLogGetLogStream(2);
                if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                {
                  v171 = [*(v19 + 24) sourceEntityName];
                  v172 = [*(v19 + 24) destinationEntityName];
                  *buf = 138413058;
                  *&buf[4] = v171;
                  *&buf[12] = 2112;
                  *&buf[14] = v21;
                  *&buf[22] = 2112;
                  *&buf[24] = v172;
                  v196 = 2112;
                  v197 = v20;
                  v27 = "CoreData: warning: (migration) relationship mapping for (%@->%@ to %@->%@) requires data validation during store migration, mapping a previously optional relationship to a mandatory relationship.\n\n";
                  goto LABEL_243;
                }
              }
            }

            v105 = _pflogging_catastrophic_mode;
            v106 = [*(v19 + 24) sourceEntityName];
            v107 = [*(v19 + 24) destinationEntityName];
            v56 = 1;
            if (v105)
            {
              v108 = 1;
            }

            else
            {
              v108 = 2;
            }

            v21 = v22;
            _NSCoreDataLog_console(v108, "(migration) relationship mapping for (%@->%@ to %@->%@) requires data validation during store migration, mapping a previously optional relationship to a mandatory relationship.\n", v106, v22, v107, v20);
            objc_autoreleasePoolPop(v23);
            goto LABEL_82;
          }

          v56 = 1;
        }

LABEL_82:
        v57 = v20;
        if ([v8 isToMany] && !objc_msgSend(a2, "isToMany"))
        {
          v88 = @"Can not map from a to-many to a to-one relationship";
          a1 = v185;
LABEL_161:
          v104 = objc_alloc(MEMORY[0x1E696ABC0]);
          *(v19 + 32) = [v104 initWithDomain:*MEMORY[0x1E696A250] code:134190 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjectsAndKeys:", v57, @"property", objc_msgSend(*(v19 + 24), "destinationEntityName"), @"entity", v88, @"reason", 0)}];
          v7 = v191;
          goto LABEL_225;
        }

        v188 = v19;
        v58 = MEMORY[0x1E696ABC8];
        v59 = v21;
        v60 = [MEMORY[0x1E696ABC8] expressionForVariable:@"source"];
        v61 = [v58 expressionForFunction:v60 selectorName:@"valueForKey:" arguments:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObject:", objc_msgSend(MEMORY[0x1E696ABC8], "expressionForConstantValue:", v59))}];
        v62 = MEMORY[0x1E696ABC8];
        v63 = [MEMORY[0x1E696ABC8] expressionForVariable:@"manager"];
        v64 = [v62 expressionForFunction:v63 selectorName:@"destinationInstancesForSourceRelationshipNamed:sourceInstances:" arguments:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:", objc_msgSend(MEMORY[0x1E696ABC8], "expressionForConstantValue:", v59), v61, 0)}];
        v65 = [NSPropertyTransform alloc];
        *buf = -[NSPropertyTransform initWithPropertyName:valueExpression:](v65, "initWithPropertyName:valueExpression:", v20, [MEMORY[0x1E696ABC8] expressionForKeyPath:v59]);
        v66 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:buf count:1];

        a1 = v185;
        if (v66)
        {
          goto LABEL_85;
        }

LABEL_160:
        v57 = v20;
        v88 = @"Unable to infer mapping for relationship";
        v19 = v188;
        goto LABEL_161;
      }

      v188 = v19;
      if (([a2 isOptional] & 1) != 0 || objc_msgSend(a2, "isToMany") && !objc_msgSend(a2, "minCount"))
      {
        v56 = 0;
        goto LABEL_159;
      }

      if ([objc_opt_class() migrationDebugLevel] < 2)
      {
        v56 = 1;
        goto LABEL_159;
      }

      v77 = objc_autoreleasePoolPush();
      _pflogInitialize(2);
      if (_NSCoreDataIsLogEnabled(2) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v78 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
          {
            v79 = [*(v19 + 24) destinationEntityName];
            *buf = 138412546;
            *&buf[4] = v79;
            *&buf[12] = 2112;
            *&buf[14] = v20;
            v80 = "CoreData: error: (migration) relationship mapping for (%@->%@) requires data validation during store migration, mapping a new, mandatory relationship.\n\n";
LABEL_241:
            _os_log_error_impl(&dword_18565F000, v78, OS_LOG_TYPE_ERROR, v80, buf, 0x16u);
          }
        }

        else
        {
          v78 = _PFLogGetLogStream(2);
          if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
          {
            v170 = [*(v19 + 24) destinationEntityName];
            *buf = 138412546;
            *&buf[4] = v170;
            *&buf[12] = 2112;
            *&buf[14] = v20;
            v80 = "CoreData: warning: (migration) relationship mapping for (%@->%@) requires data validation during store migration, mapping a new, mandatory relationship.\n\n";
            goto LABEL_241;
          }
        }
      }

      v99 = _pflogging_catastrophic_mode;
      v100 = [*(v19 + 24) destinationEntityName];
      v56 = 1;
      if (v99)
      {
        v101 = 1;
      }

      else
      {
        v101 = 2;
      }

      _NSCoreDataLog_console(v101, "(migration) relationship mapping for (%@->%@) requires data validation during store migration, mapping a new, mandatory relationship.\n", v100, v20);
      objc_autoreleasePoolPop(v77);
LABEL_159:
      v102 = [NSPropertyTransform alloc];
      v103 = [a2 name];
      *buf = -[NSPropertyTransform initWithPropertyName:valueExpression:](v102, "initWithPropertyName:valueExpression:", v103, [MEMORY[0x1E696ABC8] expressionForConstantValue:0]);
      v66 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:buf count:1];

      v64 = 0;
      if (v66)
      {
LABEL_85:
        v45 = objc_alloc_init(NSPropertyMapping);
        [(NSPropertyMapping *)v45 setName:v20];
        [(NSPropertyMapping *)v45 setValueExpression:v64];
        [(NSPropertyMapping *)v45 _setPropertyTransforms:v66];

        if (v56)
        {
          v67 = objc_alloc(MEMORY[0x1E695DF20]);
          v68 = [MEMORY[0x1E696AD98] numberWithBool:1];
          v69 = [v67 initWithObjectsAndKeys:{v68, _NSInferredMappingCouldFailValidation, 0}];
          [(NSPropertyMapping *)v45 setUserInfo:v69];
          v200[0] = NSPropertyTransformMandatoryPropertyValidation;
          -[NSPropertyMapping _setTransformValidations:](v45, [MEMORY[0x1E695DEC8] arrayWithObjects:v200 count:1]);
          v70 = [*(v188 + 24) userInfo];
          if (v70)
          {
            v71 = v70;
            if (([objc_msgSend(v70 objectForKey:{_NSInferredMappingCouldFailValidation), "BOOLValue"}] & 1) == 0)
            {
              v72 = [v71 mutableCopy];
              v73 = [MEMORY[0x1E696AD98] numberWithBool:1];
              [v72 setObject:v73 forKey:_NSInferredMappingCouldFailValidation];
              [*(v188 + 24) setUserInfo:v72];
            }
          }

          else
          {
            [*(v188 + 24) setUserInfo:v69];
          }
        }

        v7 = v191;
        if (v45)
        {
          v93 = 80;
LABEL_125:
          [*(a1 + v93) addObject:v45];

          if (v8)
          {
            [*(a1 + 88) removeObject:{objc_msgSend(v8, "name")}];
          }

          return;
        }

LABEL_225:
        if ([objc_opt_class() migrationDebugLevel] < 2)
        {
LABEL_232:
          *(*(*(a1 + 96) + 8) + 24) = 1;
          return;
        }

        v154 = objc_autoreleasePoolPush();
        _pflogInitialize(1);
        if (_pflogging_enable_oslog >= 1)
        {
          v155 = _pflogging_catastrophic_mode;
          v156 = _PFLogGetLogStream(1);
          v157 = os_log_type_enabled(v156, OS_LOG_TYPE_ERROR);
          if (v155)
          {
            if (v157)
            {
              goto LABEL_234;
            }
          }

          else if (v157)
          {
LABEL_234:
            v158 = [v8 name];
            *buf = 67109634;
            *&buf[4] = v194;
            *&buf[8] = 2112;
            *&buf[10] = v7;
            *&buf[18] = 2112;
            *&buf[20] = v158;
            _os_log_error_impl(&dword_18565F000, v156, OS_LOG_TYPE_ERROR, "CoreData: error: (migration) uninferrable, non-transient property type '%u' for destination model property (renaming identifier '%@'), source model property (renaming identifier '%@').\n", buf, 0x1Cu);
          }
        }

        _NSCoreDataLog_console(1, "(migration) uninferrable, non-transient property type '%u' for destination model property (renaming identifier '%@'), source model property (renaming identifier '%@').", v194, v7, [v8 name]);
        objc_autoreleasePoolPop(v154);
        goto LABEL_232;
      }

      goto LABEL_160;
    }

    if ([objc_opt_class() migrationDebugLevel] < 2)
    {
LABEL_17:
      v8 = 0;
      goto LABEL_18;
    }

    v11 = objc_autoreleasePoolPush();
    _pflogInitialize(2);
    if (_NSCoreDataIsLogEnabled(2) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v12 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          *&buf[4] = v7;
          *&buf[12] = 2112;
          *&buf[14] = [v8 name];
          v13 = "CoreData: error: (migration) destination model property (renaming identifier '%@') matches the renaming identifier for a different type of property (%@) in the source model. Properties cannot be mapped to other property types.\n\n";
LABEL_205:
          _os_log_error_impl(&dword_18565F000, v12, OS_LOG_TYPE_ERROR, v13, buf, 0x16u);
        }
      }

      else
      {
        v12 = _PFLogGetLogStream(2);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          *&buf[4] = v7;
          *&buf[12] = 2112;
          *&buf[14] = [v8 name];
          v13 = "CoreData: warning: (migration) destination model property (renaming identifier '%@') matches the renaming identifier for a different type of property (%@) in the source model. Properties cannot be mapped to other property types.\n\n";
          goto LABEL_205;
        }
      }
    }

    v14 = _pflogging_catastrophic_mode;
    v15 = [v8 name];
    v16 = 1;
    if (!v14)
    {
      v16 = 2;
    }

    _NSCoreDataLog_console(v16, "(migration) destination model property (renaming identifier '%@') matches the renaming identifier for a different type of property (%@) in the source model. Properties cannot be mapped to other property types.\n", v7, v15);
    objc_autoreleasePoolPop(v11);
    goto LABEL_17;
  }
}

void *__64___NSMappingModelBuilder_inferPropertyMappingsForEntityMapping___block_invoke_59(uint64_t a1, void *a2, uint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  result = [a2 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (result)
  {
    v6 = result;
    v27 = *v29;
    do
    {
      v7 = 0;
      do
      {
        if (*v29 != v27)
        {
          objc_enumerationMutation(a2);
        }

        v8 = *(*(&v28 + 1) + 8 * v7);
        if ([v8 isNSArray])
        {
          v9 = *(a1 + 40);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v8 renamingIdentifier] && (objc_msgSend(objc_msgSend(v8, "renamingIdentifier"), "isEqualToString:", objc_msgSend(v8, "name")) & 1) == 0)
            {
              v20 = *(a1 + 32);
              if (a3)
              {
                v21 = [*(a1 + 32) objectForKey:a3];
                v22 = *(a1 + 32);
                v23 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v21, [v8 name]);
                [v22 setObject:v23 forKey:{objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a3, objc_msgSend(v8, "renamingIdentifier"))}];
                v15 = *(*(*(a1 + 40) + 8) + 40);
                [v8 elements];
                objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a3, [v8 renamingIdentifier]);
              }

              else
              {
                v25 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [v8 name]);
                [v20 setObject:v25 forKey:{objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], objc_msgSend(v8, "renamingIdentifier"))}];
                v15 = *(*(*(a1 + 40) + 8) + 40);
                [v8 elements];
                [v8 renamingIdentifier];
              }
            }

            else
            {
              v11 = *(a1 + 32);
              if (a3)
              {
                v12 = [*(a1 + 32) objectForKey:a3];
                v13 = *(a1 + 32);
                v14 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v12, [v8 name]);
                [v13 setObject:v14 forKey:{objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a3, objc_msgSend(v8, "renamingIdentifier"))}];
                v15 = *(*(*(a1 + 40) + 8) + 40);
                [v8 elements];
                objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a3, [v8 name]);
              }

              else
              {
                v24 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [v8 name]);
                [v11 setObject:v24 forKey:{objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], objc_msgSend(v8, "renamingIdentifier"))}];
                v15 = *(*(*(a1 + 40) + 8) + 40);
                [v8 elements];
                [v8 name];
              }
            }

            v10 = *(v15 + 16);
            goto LABEL_26;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_27;
          }

          v16 = [v8 superCompositeAttribute];
          if (v16)
          {
            v17 = v16;
            if ([v16 renamingIdentifier])
            {
              if (([objc_msgSend(v17 "renamingIdentifier")] & 1) == 0)
              {
                v18 = *(a1 + 32);
                v19 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [v17 name]);
                [v18 setObject:v19 forKey:{objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], objc_msgSend(v17, "renamingIdentifier"))}];
              }
            }
          }

          v9 = *(a1 + 48);
        }

        v10 = *(*(*(v9 + 8) + 40) + 16);
LABEL_26:
        v10();
LABEL_27:
        v7 = v7 + 1;
      }

      while (v6 != v7);
      result = [a2 countByEnumeratingWithState:&v28 objects:v32 count:16];
      v6 = result;
    }

    while (result);
  }

  return result;
}

@end