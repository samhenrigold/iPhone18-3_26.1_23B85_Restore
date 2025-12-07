@interface CCToolKitToolToolDefinitionVersion1
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCToolKitToolAppDefinition)sourceApplication;
- (CCToolKitToolContainerDefinition)attributionContainer;
- (CCToolKitToolContainerDefinition)sourceContainer;
- (CCToolKitToolToolDefinitionVersion1)initWithId:(id)id name:(id)name toolType:(unsigned int)type parameters:(id)parameters outputType:(id)outputType outputResultName:(id)resultName sourceApplication:(id)application descriptionSummary:(id)self0 categories:(id)self1 searchKeywords:(id)self2 deprecationDefinition:(id)self3 requirements:(id)self4 flags:(id)self5 authenticationPolicy:(unsigned int)self6 sampleInvocations:(id)self7 systemProtocols:(id)self8 customIcon:(id)self9 hiddenParameters:(id)hiddenParameters sourceContainer:(id)container attributionContainer:(id)attributionContainer visibilityFlags:(id)visibilityFlags descriptionAttribution:(id)attribution descriptionResult:(id)result descriptionNote:(id)note descriptionRequires:(id)requires backingLinkActionIdentifiers:(id)identifiers additionalAttributionContainers:(id)containers error:(id *)id0;
- (CCToolKitToolToolDefinitionVersion1)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCToolKitToolToolDefinitionVersion1Deprecation)deprecationDefinition;
- (CCToolKitToolToolDefinitionVersion1ToolIcon)customIcon;
- (CCToolKitToolTypeInstance)outputType;
- (NSArray)additionalAttributionContainers;
- (NSArray)backingLinkActionIdentifiers;
- (NSArray)categories;
- (NSArray)hiddenParameters;
- (NSArray)parameters;
- (NSArray)requirements;
- (NSArray)sampleInvocations;
- (NSArray)searchKeywords;
- (NSArray)systemProtocols;
- (NSString)descriptionAttribution;
- (NSString)descriptionNote;
- (NSString)descriptionRequires;
- (NSString)descriptionResult;
- (NSString)descriptionSummary;
- (NSString)id;
- (NSString)name;
- (NSString)outputResultName;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCToolKitToolToolDefinitionVersion1

- (CCToolKitToolToolDefinitionVersion1)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v310 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  objc_opt_class();
  v300 = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"id"];
    v238 = [dictionaryCopy objectForKeyedSubscript:@"name"];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"toolType"];
    v11 = v10;
    selfCopy = self;
    if (v10)
    {
      unsignedIntegerValue = [v10 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 0;
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"parameters"];
    v239 = v9;
    if (v14)
    {
      objc_opt_class();
      v299 = v8;
      v15 = CCValidateIsInstanceOfExpectedClass();
      v16 = v8;

      if ((v15 & 1) == 0)
      {
        CCSetError();
        v13 = 0;
        v42 = v238;
LABEL_209:

        v8 = v16;
        goto LABEL_210;
      }

      errorCopy = error;
      v234 = v11;
      v17 = objc_opt_new();
      v295 = 0u;
      v296 = 0u;
      v297 = 0u;
      v298 = 0u;
      v18 = v14;
      v19 = [v18 countByEnumeratingWithState:&v295 objects:v309 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v296;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v296 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v295 + 1) + 8 * i);
            v24 = [CCToolKitToolToolDefinitionVersion1Parameter alloc];
            v294 = 0;
            v25 = [(CCToolKitToolToolDefinitionVersion1Parameter *)v24 initWithJSONDictionary:v23 error:&v294];
            v26 = v294;
            if (v25)
            {
              v27 = v26 == 0;
            }

            else
            {
              v27 = 0;
            }

            if (!v27)
            {
              v41 = v26;
              CCSetError();

              v13 = 0;
              v14 = v18;
              v42 = v238;
              v11 = v234;
              goto LABEL_209;
            }

            [v17 addObject:v25];
          }

          v20 = [v18 countByEnumeratingWithState:&v295 objects:v309 count:16];
        }

        while (v20);
      }

      v11 = v234;
      v14 = v17;
      error = errorCopy;
    }

    else
    {
      v16 = v8;
    }

    v28 = [dictionaryCopy objectForKeyedSubscript:@"outputType"];
    if (v28)
    {
      v293 = 0;
      v29 = [[CCToolKitToolTypeInstance alloc] initWithJSONDictionary:v28 error:&v293];
      v30 = v293;
      v31 = v30;
      if (!v29 || v30)
      {
        v233 = v29;
        CCSetError();
        v13 = 0;
        v42 = v238;
LABEL_208:

        goto LABEL_209;
      }

      v28 = v29;
    }

    v32 = [dictionaryCopy objectForKeyedSubscript:@"outputResultName"];
    v33 = [dictionaryCopy objectForKeyedSubscript:@"sourceApplication"];
    v235 = v11;
    if (v33)
    {
      v34 = dictionaryCopy;
      v35 = v32;
      v36 = unsignedIntegerValue;
      errorCopy2 = error;
      v292 = 0;
      v38 = [[CCToolKitToolAppDefinition alloc] initWithJSONDictionary:v33 error:&v292];
      v39 = v292;
      v40 = v38;
      if (!v38 || v39)
      {
        v233 = v33;
        v224 = v39;
        CCSetError();
        v13 = 0;
        self = selfCopy;
        v42 = v238;
        v31 = v35;
        dictionaryCopy = v34;
        v11 = v235;
        goto LABEL_207;
      }

      v212 = v35;
      v221 = v14;

      v33 = v38;
      error = errorCopy2;
      unsignedIntegerValue = v36;
      dictionaryCopy = v34;
      v11 = v235;
    }

    else
    {
      v212 = v32;
      v221 = v14;
    }

    v213 = v28;
    v224 = [dictionaryCopy objectForKeyedSubscript:@"descriptionSummary"];
    v43 = [dictionaryCopy objectForKeyedSubscript:@"categories"];
    v233 = v33;
    if (!v43)
    {
      v236 = 0;
      v46 = v16;
      goto LABEL_50;
    }

    v44 = v43;
    objc_opt_class();
    v291 = v16;
    v45 = CCValidateIsInstanceOfExpectedClass();
    v46 = v16;

    if (v45)
    {
      v47 = unsignedIntegerValue;
      errorCopy3 = error;
      v236 = objc_opt_new();
      v287 = 0u;
      v288 = 0u;
      v289 = 0u;
      v290 = 0u;
      v48 = v44;
      v49 = [(CCToolKitToolAppDefinition *)v48 countByEnumeratingWithState:&v287 objects:v308 count:16];
      if (v49)
      {
        v50 = v49;
        v51 = *v288;
        do
        {
          for (j = 0; j != v50; ++j)
          {
            if (*v288 != v51)
            {
              objc_enumerationMutation(v48);
            }

            v53 = *(*(&v287 + 1) + 8 * j);
            v54 = [CCToolKitToolToolDefinitionVersion1Category alloc];
            v286 = 0;
            v55 = [(CCToolKitToolToolDefinitionVersion1Category *)v54 initWithJSONDictionary:v53 error:&v286];
            v56 = v286;
            if (v55)
            {
              v57 = v56 == 0;
            }

            else
            {
              v57 = 0;
            }

            if (!v57)
            {
              v77 = v56;
              CCSetError();

              v13 = 0;
              v40 = v48;
              v16 = v46;
              self = selfCopy;
              v42 = v238;
              v11 = v235;
              v14 = v221;
              v28 = v213;
              goto LABEL_206;
            }

            [(CCToolKitToolAppDefinition *)v236 addObject:v55];
          }

          v50 = [(CCToolKitToolAppDefinition *)v48 countByEnumeratingWithState:&v287 objects:v308 count:16];
        }

        while (v50);
      }

      v33 = v233;
      v11 = v235;
      error = errorCopy3;
      unsignedIntegerValue = v47;
LABEL_50:
      v58 = [dictionaryCopy objectForKeyedSubscript:@"searchKeywords"];
      v59 = [dictionaryCopy objectForKeyedSubscript:@"deprecationDefinition"];
      v14 = v221;
      if (v59)
      {
        v285 = 0;
        v60 = [[CCToolKitToolToolDefinitionVersion1Deprecation alloc] initWithJSONDictionary:v59 error:&v285];
        v61 = v285;
        if (!v60 || v61)
        {
          v90 = v61;
          CCSetError();

          v13 = 0;
          goto LABEL_205;
        }

        v59 = v60;
      }

      v62 = [dictionaryCopy objectForKeyedSubscript:@"requirements"];
      v210 = v59;
      if (v62)
      {
        v63 = v62;
        v64 = v11;
        objc_opt_class();
        v284 = v46;
        v65 = CCValidateIsInstanceOfExpectedClass();
        v66 = v46;

        if ((v65 & 1) == 0)
        {
          CCSetError();
          v13 = 0;
          v90 = v63;
          v46 = v66;
          v11 = v64;
          v14 = v221;
LABEL_84:
          v59 = v210;
LABEL_205:

          v16 = v46;
          v28 = v213;
          v40 = v236;
          self = selfCopy;
          v42 = v238;
LABEL_206:
          v31 = v212;
          goto LABEL_207;
        }

        v214 = unsignedIntegerValue;
        errorCopy4 = error;
        v223 = objc_opt_new();
        v280 = 0u;
        v281 = 0u;
        v282 = 0u;
        v283 = 0u;
        v67 = v63;
        v68 = [v67 countByEnumeratingWithState:&v280 objects:v307 count:16];
        if (v68)
        {
          v69 = v68;
          v70 = *v281;
          do
          {
            for (k = 0; k != v69; ++k)
            {
              if (*v281 != v70)
              {
                objc_enumerationMutation(v67);
              }

              v72 = *(*(&v280 + 1) + 8 * k);
              v73 = [CCToolKitToolRuntimeRequirement alloc];
              v279 = 0;
              v74 = [(CCToolKitToolRuntimeRequirement *)v73 initWithJSONDictionary:v72 error:&v279];
              v75 = v279;
              if (v74)
              {
                v76 = v75 == 0;
              }

              else
              {
                v76 = 0;
              }

              if (!v76)
              {
                v89 = v75;
                CCSetError();

                v13 = 0;
                v90 = v67;
                v46 = v66;
                v11 = v64;
                v14 = v221;
                goto LABEL_84;
              }

              [v223 addObject:v74];
            }

            v69 = [v67 countByEnumeratingWithState:&v280 objects:v307 count:16];
          }

          while (v69);
        }

        v11 = v64;
        error = errorCopy4;
        v33 = v233;
        unsignedIntegerValue = v214;
        v59 = v210;
      }

      else
      {
        v223 = 0;
        v66 = v46;
      }

      v78 = [dictionaryCopy objectForKeyedSubscript:@"flags"];
      if (v78)
      {
        v79 = v78;
        objc_opt_class();
        v278 = v66;
        v80 = CCValidateIsInstanceOfExpectedClass();
        v46 = v66;

        if ((v80 & 1) == 0)
        {
          CCSetError();
          v13 = 0;
          v92 = v79;
          v11 = v235;
          v14 = v221;
LABEL_90:
          v59 = v210;
          goto LABEL_204;
        }

        v206 = v58;
        v215 = unsignedIntegerValue;
        errorCopy5 = error;
        v211 = objc_opt_new();
        v274 = 0u;
        v275 = 0u;
        v276 = 0u;
        v277 = 0u;
        v81 = v79;
        v82 = [v81 countByEnumeratingWithState:&v274 objects:v306 count:16];
        if (v82)
        {
          v83 = v82;
          v84 = *v275;
          while (2)
          {
            v85 = 0;
            v86 = v46;
            do
            {
              if (*v275 != v84)
              {
                objc_enumerationMutation(v81);
              }

              v87 = *(*(&v274 + 1) + 8 * v85);
              objc_opt_class();
              v273 = v86;
              v88 = CCValidateIsInstanceOfExpectedClass();
              v46 = v86;

              if (!v88)
              {
                CCSetError();

                v13 = 0;
                v92 = v81;
                v11 = v235;
                v14 = v221;
                v58 = v206;
                goto LABEL_90;
              }

              [v211 appendEnumValue:{objc_msgSend(v87, "unsignedIntValue")}];
              ++v85;
              v86 = v46;
            }

            while (v83 != v85);
            v83 = [v81 countByEnumeratingWithState:&v274 objects:v306 count:16];
            if (v83)
            {
              continue;
            }

            break;
          }
        }

        v66 = v46;
        v11 = v235;
        error = errorCopy5;
        unsignedIntegerValue = v215;
        v58 = v206;
        v59 = v210;
      }

      else
      {
        v211 = 0;
      }

      v91 = [dictionaryCopy objectForKeyedSubscript:@"authenticationPolicy"];
      v204 = v91;
      if (v91)
      {
        unsignedIntegerValue2 = [v91 unsignedIntegerValue];
      }

      else
      {
        unsignedIntegerValue2 = 0;
      }

      v93 = [dictionaryCopy objectForKeyedSubscript:@"sampleInvocations"];
      if (v93)
      {
        v94 = v93;
        v95 = v11;
        objc_opt_class();
        v272 = v66;
        v96 = CCValidateIsInstanceOfExpectedClass();
        v46 = v66;

        if ((v96 & 1) == 0)
        {
          CCSetError();
          v13 = 0;
          v123 = v94;
          v11 = v95;
          v14 = v221;
LABEL_124:
          v59 = v210;
          v92 = v211;
          goto LABEL_203;
        }

        v216 = unsignedIntegerValue;
        errorCopy6 = error;
        v209 = objc_opt_new();
        v268 = 0u;
        v269 = 0u;
        v270 = 0u;
        v271 = 0u;
        v97 = v94;
        v98 = [v97 countByEnumeratingWithState:&v268 objects:v305 count:16];
        if (v98)
        {
          v99 = v98;
          v100 = *v269;
          do
          {
            for (m = 0; m != v99; ++m)
            {
              if (*v269 != v100)
              {
                objc_enumerationMutation(v97);
              }

              v102 = *(*(&v268 + 1) + 8 * m);
              v103 = [CCToolKitToolSampleInvocationDefinition alloc];
              v267 = 0;
              v104 = [(CCToolKitToolSampleInvocationDefinition *)v103 initWithJSONDictionary:v102 error:&v267];
              v105 = v267;
              if (v104)
              {
                v106 = v105 == 0;
              }

              else
              {
                v106 = 0;
              }

              if (!v106)
              {
                v122 = v105;
                CCSetError();

                v13 = 0;
                v123 = v97;
                v11 = v95;
                v14 = v221;
                goto LABEL_124;
              }

              [v209 addObject:v104];
            }

            v99 = [v97 countByEnumeratingWithState:&v268 objects:v305 count:16];
          }

          while (v99);
        }

        v11 = v95;
        error = errorCopy6;
        v33 = v233;
        unsignedIntegerValue = v216;
        v59 = v210;
      }

      else
      {
        v209 = 0;
        v46 = v66;
      }

      v107 = [dictionaryCopy objectForKeyedSubscript:@"systemProtocols"];
      if (v107)
      {
        v108 = v107;
        v109 = v11;
        objc_opt_class();
        v266 = v46;
        v110 = CCValidateIsInstanceOfExpectedClass();
        v111 = v46;

        if ((v110 & 1) == 0)
        {
          CCSetError();
          v13 = 0;
          v112 = v108;
          v11 = v109;
          v14 = v221;
LABEL_131:
          v59 = v210;
          v92 = v211;
          v123 = v209;
          goto LABEL_202;
        }

        v217 = unsignedIntegerValue;
        errorCopy7 = error;
        v205 = objc_opt_new();
        v262 = 0u;
        v263 = 0u;
        v264 = 0u;
        v265 = 0u;
        v112 = v108;
        v113 = [v112 countByEnumeratingWithState:&v262 objects:v304 count:16];
        if (v113)
        {
          v114 = v113;
          v115 = *v263;
          do
          {
            for (n = 0; n != v114; ++n)
            {
              if (*v263 != v115)
              {
                objc_enumerationMutation(v112);
              }

              v117 = *(*(&v262 + 1) + 8 * n);
              v118 = [CCToolKitToolSystemToolProtocol alloc];
              v261 = 0;
              v119 = [(CCToolKitToolSystemToolProtocol *)v118 initWithJSONDictionary:v117 error:&v261];
              v120 = v261;
              if (v119)
              {
                v121 = v120 == 0;
              }

              else
              {
                v121 = 0;
              }

              if (!v121)
              {
                v127 = v120;
                CCSetError();

                v13 = 0;
                v11 = v109;
                v14 = v221;
                goto LABEL_131;
              }

              [v205 addObject:v119];
            }

            v114 = [v112 countByEnumeratingWithState:&v262 objects:v304 count:16];
          }

          while (v114);
        }

        v11 = v109;
        error = errorCopy7;
        v33 = v233;
        unsignedIntegerValue = v217;
        v59 = v210;
      }

      else
      {
        v205 = 0;
        v111 = v46;
      }

      v124 = [dictionaryCopy objectForKeyedSubscript:@"customIcon"];
      v14 = v221;
      if (v124)
      {
        v260 = 0;
        v201 = v124;
        v124 = [[CCToolKitToolToolDefinitionVersion1ToolIcon alloc] initWithJSONDictionary:v124 error:&v260];
        v125 = v260;
        if (!v124 || v125)
        {
          v142 = v125;
          CCSetError();

          v148 = v142;
          v13 = 0;
          goto LABEL_156;
        }

        v126 = v221;
      }

      else
      {
        v126 = v221;
      }

      v201 = v124;
      v128 = [dictionaryCopy objectForKeyedSubscript:@"hiddenParameters"];
      if (!v128)
      {
        v203 = 0;
        v131 = v111;
        goto LABEL_150;
      }

      v129 = v128;
      objc_opt_class();
      v259 = v111;
      v130 = CCValidateIsInstanceOfExpectedClass();
      v131 = v111;

      if (v130)
      {
        v218 = unsignedIntegerValue;
        errorCopy8 = error;
        v203 = objc_opt_new();
        v255 = 0u;
        v256 = 0u;
        v257 = 0u;
        v258 = 0u;
        v132 = v129;
        v133 = [v132 countByEnumeratingWithState:&v255 objects:v303 count:16];
        if (v133)
        {
          v134 = v133;
          v135 = *v256;
          do
          {
            for (ii = 0; ii != v134; ++ii)
            {
              if (*v256 != v135)
              {
                objc_enumerationMutation(v132);
              }

              v137 = *(*(&v255 + 1) + 8 * ii);
              v138 = [CCToolKitToolToolDefinitionVersion1Parameter alloc];
              v254 = 0;
              v139 = [(CCToolKitToolToolDefinitionVersion1Parameter *)v138 initWithJSONDictionary:v137 error:&v254];
              v140 = v254;
              if (v139)
              {
                v141 = v140 == 0;
              }

              else
              {
                v141 = 0;
              }

              if (!v141)
              {
                v147 = v140;
                CCSetError();

                v13 = 0;
                v148 = v132;
                v111 = v131;
                v11 = v235;
                v14 = v126;
                goto LABEL_155;
              }

              [v203 addObject:v139];
            }

            v134 = [v132 countByEnumeratingWithState:&v255 objects:v303 count:16];
          }

          while (v134);
        }

        v33 = v233;
        v11 = v235;
        error = errorCopy8;
        unsignedIntegerValue = v218;
LABEL_150:
        v143 = [dictionaryCopy objectForKeyedSubscript:@"sourceContainer"];
        v222 = v126;
        if (v143)
        {
          v197 = v131;
          v253 = 0;
          v144 = [[CCToolKitToolContainerDefinition alloc] initWithJSONDictionary:v143 error:&v253];
          v145 = v253;
          v146 = v145;
          v59 = v210;
          v199 = v144;
          if (!v144 || v145)
          {
            CCSetError();
            v13 = 0;
            v92 = v211;
            v123 = v209;
            v131 = v197;
            v152 = v199;
            goto LABEL_200;
          }

          v131 = v197;
          v143 = v199;
        }

        else
        {
          v59 = v210;
        }

        v149 = [dictionaryCopy objectForKeyedSubscript:@"attributionContainer"];
        v198 = v143;
        if (!v149)
        {
          v196 = 0;
LABEL_164:
          v153 = [dictionaryCopy objectForKeyedSubscript:@"visibilityFlags"];
          if (v153)
          {
            v154 = v153;
            objc_opt_class();
            v251 = v131;
            v155 = CCValidateIsInstanceOfExpectedClass();
            v156 = v131;

            if ((v155 & 1) == 0)
            {
              CCSetError();
              v13 = 0;
              v152 = v154;
              v131 = v156;
              v11 = v235;
LABEL_194:
              v59 = v210;
              v92 = v211;
              v123 = v209;
              v146 = v196;
              v143 = v198;
              goto LABEL_200;
            }

            v200 = objc_opt_new();
            v247 = 0u;
            v248 = 0u;
            v249 = 0u;
            v250 = 0u;
            v157 = v154;
            v158 = [(CCToolKitToolContainerDefinition *)v157 countByEnumeratingWithState:&v247 objects:v302 count:16];
            errorCopy9 = error;
            v219 = unsignedIntegerValue;
            v207 = v58;
            if (v158)
            {
              v159 = v158;
              v160 = *v248;
              while (2)
              {
                v161 = 0;
                v162 = v156;
                do
                {
                  if (*v248 != v160)
                  {
                    objc_enumerationMutation(v157);
                  }

                  v163 = *(*(&v247 + 1) + 8 * v161);
                  objc_opt_class();
                  v246 = v162;
                  v164 = CCValidateIsInstanceOfExpectedClass();
                  v156 = v162;

                  if (!v164)
                  {
                    CCSetError();

                    v13 = 0;
                    v152 = v157;
                    v131 = v156;
                    v11 = v235;
                    v58 = v207;
                    goto LABEL_194;
                  }

                  -[CCToolKitToolContainerDefinition appendEnumValue:](v200, "appendEnumValue:", [v163 unsignedIntValue]);
                  ++v161;
                  v162 = v156;
                }

                while (v159 != v161);
                v159 = [(CCToolKitToolContainerDefinition *)v157 countByEnumeratingWithState:&v247 objects:v302 count:16];
                if (v159)
                {
                  continue;
                }

                break;
              }
            }

            v131 = v156;
            v11 = v235;
            error = errorCopy9;
            unsignedIntegerValue = v219;
            v58 = v207;
            v59 = v210;
          }

          else
          {
            v200 = 0;
          }

          v191 = [dictionaryCopy objectForKeyedSubscript:@"descriptionAttribution"];
          v166 = [dictionaryCopy objectForKeyedSubscript:@"descriptionResult"];
          v195 = [dictionaryCopy objectForKeyedSubscript:@"descriptionNote"];
          v194 = [dictionaryCopy objectForKeyedSubscript:@"descriptionRequires"];
          v193 = [dictionaryCopy objectForKeyedSubscript:@"backingLinkActionIdentifiers"];
          v167 = [dictionaryCopy objectForKeyedSubscript:@"additionalAttributionContainers"];
          v192 = v166;
          if (v167)
          {
            v220 = unsignedIntegerValue;
            objc_opt_class();
            v245 = v131;
            v168 = CCValidateIsInstanceOfExpectedClass();
            v169 = v131;

            if ((v168 & 1) == 0)
            {
              CCSetError();
              v13 = 0;
              v92 = v211;
              v146 = v196;
              v184 = v191;
LABEL_199:

              v131 = v169;
              v123 = v209;
              v143 = v198;
              v152 = v200;
              goto LABEL_200;
            }

            v189 = dictionaryCopy;
            v190 = v169;
            v208 = v58;
            errorCopy10 = error;
            v171 = objc_opt_new();
            v172 = v167;
            v167 = v171;
            v241 = 0u;
            v242 = 0u;
            v243 = 0u;
            v244 = 0u;
            v173 = v172;
            v174 = [v173 countByEnumeratingWithState:&v241 objects:v301 count:16];
            if (v174)
            {
              v175 = v174;
              v176 = *v242;
              do
              {
                for (jj = 0; jj != v175; ++jj)
                {
                  if (*v242 != v176)
                  {
                    objc_enumerationMutation(v173);
                  }

                  v178 = *(*(&v241 + 1) + 8 * jj);
                  v179 = [CCToolKitToolContainerDefinition alloc];
                  v240 = 0;
                  v180 = [(CCToolKitToolContainerDefinition *)v179 initWithJSONDictionary:v178 error:&v240];
                  v181 = v240;
                  if (v180)
                  {
                    v182 = v181 == 0;
                  }

                  else
                  {
                    v182 = 0;
                  }

                  if (!v182)
                  {
                    v183 = v181;
                    CCSetError();

                    v167 = v173;
                    v13 = 0;
                    v11 = v235;
                    v58 = v208;
                    v92 = v211;
                    dictionaryCopy = v189;
                    v146 = v196;
                    v184 = v191;
                    goto LABEL_198;
                  }

                  [v167 addObject:v180];
                }

                v175 = [v173 countByEnumeratingWithState:&v241 objects:v301 count:16];
              }

              while (v175);
            }

            v33 = v233;
            v11 = v235;
            error = errorCopy10;
            unsignedIntegerValue = v220;
            v58 = v208;
            dictionaryCopy = v189;
            v166 = v192;
          }

          else
          {
            v190 = v131;
          }

          errorCopy11 = error;
          v187 = v166;
          v184 = v191;
          v146 = v196;
          LODWORD(v186) = unsignedIntegerValue2;
          v92 = v211;
          v13 = [[CCToolKitToolToolDefinitionVersion1 alloc] initWithId:v239 name:v238 toolType:unsignedIntegerValue parameters:v222 outputType:v213 outputResultName:v212 sourceApplication:v33 descriptionSummary:v224 categories:v236 searchKeywords:v58 deprecationDefinition:v59 requirements:v223 flags:v211 authenticationPolicy:v186 sampleInvocations:v209 systemProtocols:v205 customIcon:v201 hiddenParameters:v203 sourceContainer:v198 attributionContainer:v196 visibilityFlags:v200 descriptionAttribution:v191 descriptionResult:v187 descriptionNote:v195 descriptionRequires:v194 backingLinkActionIdentifiers:v193 additionalAttributionContainers:v167 error:errorCopy11];
LABEL_198:
          v169 = v190;
          goto LABEL_199;
        }

        v146 = v149;
        v252 = 0;
        v150 = [[CCToolKitToolContainerDefinition alloc] initWithJSONDictionary:v149 error:&v252];
        v151 = v252;
        if (v150 && !v151)
        {

          v196 = v150;
          goto LABEL_164;
        }

        v165 = v151;
        CCSetError();

        v152 = v165;
        v13 = 0;
        v92 = v211;
        v123 = v209;
        v143 = v198;
LABEL_200:

        v111 = v131;
        v148 = v203;
        v14 = v222;
        goto LABEL_201;
      }

      CCSetError();
      v13 = 0;
      v148 = v129;
      v111 = v131;
      v11 = v235;
      v14 = v126;
LABEL_155:
      v59 = v210;
LABEL_156:
      v92 = v211;
      v123 = v209;
LABEL_201:

      v112 = v205;
LABEL_202:

      v46 = v111;
LABEL_203:

LABEL_204:
      v90 = v223;
      goto LABEL_205;
    }

    CCSetError();
    v13 = 0;
    v40 = v44;
    v16 = v46;
    v11 = v235;
    v14 = v221;
    v31 = v212;
    v28 = v213;
    self = selfCopy;
    v42 = v238;
LABEL_207:

    goto LABEL_208;
  }

  CCSetError();
  v13 = 0;
LABEL_210:

  return v13;
}

- (id)jsonDictionary
{
  v124 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  if (self->_id)
  {
    v4 = [(CCToolKitToolToolDefinitionVersion1 *)self id];
    [v3 setObject:v4 forKeyedSubscript:@"id"];
  }

  if (self->_name)
  {
    name = [(CCToolKitToolToolDefinitionVersion1 *)self name];
    [v3 setObject:name forKeyedSubscript:@"name"];
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolToolDefinitionVersion1 toolType](self, "toolType")}];
  [v3 setObject:v6 forKeyedSubscript:@"toolType"];

  if (self->_parameters)
  {
    v7 = objc_opt_new();
    v113 = 0u;
    v114 = 0u;
    v115 = 0u;
    v116 = 0u;
    parameters = [(CCToolKitToolToolDefinitionVersion1 *)self parameters];
    v9 = [parameters countByEnumeratingWithState:&v113 objects:v123 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v114;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v114 != v11)
          {
            objc_enumerationMutation(parameters);
          }

          jsonDictionary = [*(*(&v113 + 1) + 8 * i) jsonDictionary];
          [v7 addObject:jsonDictionary];
        }

        v10 = [parameters countByEnumeratingWithState:&v113 objects:v123 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKeyedSubscript:@"parameters"];
  }

  if (self->_outputType)
  {
    outputType = [(CCToolKitToolToolDefinitionVersion1 *)self outputType];
    jsonDictionary2 = [outputType jsonDictionary];
    [v3 setObject:jsonDictionary2 forKeyedSubscript:@"outputType"];
  }

  if (self->_outputResultName)
  {
    outputResultName = [(CCToolKitToolToolDefinitionVersion1 *)self outputResultName];
    [v3 setObject:outputResultName forKeyedSubscript:@"outputResultName"];
  }

  if (self->_sourceApplication)
  {
    sourceApplication = [(CCToolKitToolToolDefinitionVersion1 *)self sourceApplication];
    jsonDictionary3 = [sourceApplication jsonDictionary];
    [v3 setObject:jsonDictionary3 forKeyedSubscript:@"sourceApplication"];
  }

  if (self->_descriptionSummary)
  {
    descriptionSummary = [(CCToolKitToolToolDefinitionVersion1 *)self descriptionSummary];
    [v3 setObject:descriptionSummary forKeyedSubscript:@"descriptionSummary"];
  }

  if (self->_categories)
  {
    v20 = objc_opt_new();
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v112 = 0u;
    categories = [(CCToolKitToolToolDefinitionVersion1 *)self categories];
    v22 = [categories countByEnumeratingWithState:&v109 objects:v122 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v110;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v110 != v24)
          {
            objc_enumerationMutation(categories);
          }

          jsonDictionary4 = [*(*(&v109 + 1) + 8 * j) jsonDictionary];
          [v20 addObject:jsonDictionary4];
        }

        v23 = [categories countByEnumeratingWithState:&v109 objects:v122 count:16];
      }

      while (v23);
    }

    [v3 setObject:v20 forKeyedSubscript:@"categories"];
  }

  if (self->_searchKeywords)
  {
    searchKeywords = [(CCToolKitToolToolDefinitionVersion1 *)self searchKeywords];
    [v3 setObject:searchKeywords forKeyedSubscript:@"searchKeywords"];
  }

  if (self->_deprecationDefinition)
  {
    deprecationDefinition = [(CCToolKitToolToolDefinitionVersion1 *)self deprecationDefinition];
    jsonDictionary5 = [deprecationDefinition jsonDictionary];
    [v3 setObject:jsonDictionary5 forKeyedSubscript:@"deprecationDefinition"];
  }

  if (self->_requirements)
  {
    v30 = objc_opt_new();
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    requirements = [(CCToolKitToolToolDefinitionVersion1 *)self requirements];
    v32 = [requirements countByEnumeratingWithState:&v105 objects:v121 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v106;
      do
      {
        for (k = 0; k != v33; ++k)
        {
          if (*v106 != v34)
          {
            objc_enumerationMutation(requirements);
          }

          jsonDictionary6 = [*(*(&v105 + 1) + 8 * k) jsonDictionary];
          [v30 addObject:jsonDictionary6];
        }

        v33 = [requirements countByEnumeratingWithState:&v105 objects:v121 count:16];
      }

      while (v33);
    }

    [v3 setObject:v30 forKeyedSubscript:@"requirements"];
  }

  if (self->_flags)
  {
    v37 = objc_opt_new();
    flags = [(CCToolKitToolToolDefinitionVersion1 *)self flags];
    v103[0] = MEMORY[0x1E69E9820];
    v103[1] = 3221225472;
    v103[2] = __53__CCToolKitToolToolDefinitionVersion1_jsonDictionary__block_invoke;
    v103[3] = &unk_1E73E8EA0;
    v104 = v37;
    v39 = v37;
    [flags enumerateEnumValuesWithBlock:v103];

    [v3 setObject:v39 forKeyedSubscript:@"flags"];
  }

  v40 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolToolDefinitionVersion1 authenticationPolicy](self, "authenticationPolicy")}];
  [v3 setObject:v40 forKeyedSubscript:@"authenticationPolicy"];

  if (self->_sampleInvocations)
  {
    v41 = objc_opt_new();
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    sampleInvocations = [(CCToolKitToolToolDefinitionVersion1 *)self sampleInvocations];
    v43 = [sampleInvocations countByEnumeratingWithState:&v99 objects:v120 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v100;
      do
      {
        for (m = 0; m != v44; ++m)
        {
          if (*v100 != v45)
          {
            objc_enumerationMutation(sampleInvocations);
          }

          jsonDictionary7 = [*(*(&v99 + 1) + 8 * m) jsonDictionary];
          [v41 addObject:jsonDictionary7];
        }

        v44 = [sampleInvocations countByEnumeratingWithState:&v99 objects:v120 count:16];
      }

      while (v44);
    }

    [v3 setObject:v41 forKeyedSubscript:@"sampleInvocations"];
  }

  if (self->_systemProtocols)
  {
    v48 = objc_opt_new();
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    systemProtocols = [(CCToolKitToolToolDefinitionVersion1 *)self systemProtocols];
    v50 = [systemProtocols countByEnumeratingWithState:&v95 objects:v119 count:16];
    if (v50)
    {
      v51 = v50;
      v52 = *v96;
      do
      {
        for (n = 0; n != v51; ++n)
        {
          if (*v96 != v52)
          {
            objc_enumerationMutation(systemProtocols);
          }

          jsonDictionary8 = [*(*(&v95 + 1) + 8 * n) jsonDictionary];
          [v48 addObject:jsonDictionary8];
        }

        v51 = [systemProtocols countByEnumeratingWithState:&v95 objects:v119 count:16];
      }

      while (v51);
    }

    [v3 setObject:v48 forKeyedSubscript:@"systemProtocols"];
  }

  if (self->_customIcon)
  {
    customIcon = [(CCToolKitToolToolDefinitionVersion1 *)self customIcon];
    jsonDictionary9 = [customIcon jsonDictionary];
    [v3 setObject:jsonDictionary9 forKeyedSubscript:@"customIcon"];
  }

  if (self->_hiddenParameters)
  {
    v57 = objc_opt_new();
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    hiddenParameters = [(CCToolKitToolToolDefinitionVersion1 *)self hiddenParameters];
    v59 = [hiddenParameters countByEnumeratingWithState:&v91 objects:v118 count:16];
    if (v59)
    {
      v60 = v59;
      v61 = *v92;
      do
      {
        for (ii = 0; ii != v60; ++ii)
        {
          if (*v92 != v61)
          {
            objc_enumerationMutation(hiddenParameters);
          }

          jsonDictionary10 = [*(*(&v91 + 1) + 8 * ii) jsonDictionary];
          [v57 addObject:jsonDictionary10];
        }

        v60 = [hiddenParameters countByEnumeratingWithState:&v91 objects:v118 count:16];
      }

      while (v60);
    }

    [v3 setObject:v57 forKeyedSubscript:@"hiddenParameters"];
  }

  if (self->_sourceContainer)
  {
    sourceContainer = [(CCToolKitToolToolDefinitionVersion1 *)self sourceContainer];
    jsonDictionary11 = [sourceContainer jsonDictionary];
    [v3 setObject:jsonDictionary11 forKeyedSubscript:@"sourceContainer"];
  }

  if (self->_attributionContainer)
  {
    attributionContainer = [(CCToolKitToolToolDefinitionVersion1 *)self attributionContainer];
    jsonDictionary12 = [attributionContainer jsonDictionary];
    [v3 setObject:jsonDictionary12 forKeyedSubscript:@"attributionContainer"];
  }

  if (self->_visibilityFlags)
  {
    v68 = objc_opt_new();
    visibilityFlags = [(CCToolKitToolToolDefinitionVersion1 *)self visibilityFlags];
    v89[0] = MEMORY[0x1E69E9820];
    v89[1] = 3221225472;
    v89[2] = __53__CCToolKitToolToolDefinitionVersion1_jsonDictionary__block_invoke_2;
    v89[3] = &unk_1E73E8EA0;
    v90 = v68;
    v70 = v68;
    [visibilityFlags enumerateEnumValuesWithBlock:v89];

    [v3 setObject:v70 forKeyedSubscript:@"visibilityFlags"];
  }

  if (self->_descriptionAttribution)
  {
    descriptionAttribution = [(CCToolKitToolToolDefinitionVersion1 *)self descriptionAttribution];
    [v3 setObject:descriptionAttribution forKeyedSubscript:@"descriptionAttribution"];
  }

  if (self->_descriptionResult)
  {
    descriptionResult = [(CCToolKitToolToolDefinitionVersion1 *)self descriptionResult];
    [v3 setObject:descriptionResult forKeyedSubscript:@"descriptionResult"];
  }

  if (self->_descriptionNote)
  {
    descriptionNote = [(CCToolKitToolToolDefinitionVersion1 *)self descriptionNote];
    [v3 setObject:descriptionNote forKeyedSubscript:@"descriptionNote"];
  }

  if (self->_descriptionRequires)
  {
    descriptionRequires = [(CCToolKitToolToolDefinitionVersion1 *)self descriptionRequires];
    [v3 setObject:descriptionRequires forKeyedSubscript:@"descriptionRequires"];
  }

  if (self->_backingLinkActionIdentifiers)
  {
    backingLinkActionIdentifiers = [(CCToolKitToolToolDefinitionVersion1 *)self backingLinkActionIdentifiers];
    [v3 setObject:backingLinkActionIdentifiers forKeyedSubscript:@"backingLinkActionIdentifiers"];
  }

  if (self->_additionalAttributionContainers)
  {
    v76 = objc_opt_new();
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    additionalAttributionContainers = [(CCToolKitToolToolDefinitionVersion1 *)self additionalAttributionContainers];
    v78 = [additionalAttributionContainers countByEnumeratingWithState:&v85 objects:v117 count:16];
    if (v78)
    {
      v79 = v78;
      v80 = *v86;
      do
      {
        for (jj = 0; jj != v79; ++jj)
        {
          if (*v86 != v80)
          {
            objc_enumerationMutation(additionalAttributionContainers);
          }

          jsonDictionary13 = [*(*(&v85 + 1) + 8 * jj) jsonDictionary];
          [v76 addObject:jsonDictionary13];
        }

        v79 = [additionalAttributionContainers countByEnumeratingWithState:&v85 objects:v117 count:16];
      }

      while (v79);
    }

    [v3 setObject:v76 forKeyedSubscript:@"additionalAttributionContainers"];
  }

  v83 = [v3 copy];

  return v83;
}

void __53__CCToolKitToolToolDefinitionVersion1_jsonDictionary__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
  [v2 addObject:v3];
}

void __53__CCToolKitToolToolDefinitionVersion1_jsonDictionary__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
  [v2 addObject:v3];
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  v6 = MEMORY[0x1E69939A8];
  v37 = blockCopy;
  if (self->_id)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] stringValue:self->_id];
    v37[2](v37, v7);
  }

  if (self->_name)
  {
    v8 = objc_alloc(MEMORY[0x1E69939F0]);
    v9 = *v6;
    v10 = [v8 initWithFieldType:v9 stringValue:self->_name];
    v37[2](v37, v10);
  }

  else
  {
    v9 = *v6;
  }

  v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 enumValue:self->_toolType];
  v37[2](v37, v11);

  if (self->_parameters)
  {
    v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 repeatedSubMessageValue:self->_parameters];
    v37[2](v37, v12);
  }

  if (self->_outputType)
  {
    v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 subMessageValue:self->_outputType];
    v37[2](v37, v13);
  }

  if (self->_outputResultName)
  {
    v14 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 stringValue:self->_outputResultName];
    v37[2](v37, v14);
  }

  if (self->_sourceApplication)
  {
    v15 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 subMessageValue:self->_sourceApplication];
    v37[2](v37, v15);
  }

  if (self->_descriptionSummary)
  {
    v16 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 stringValue:self->_descriptionSummary];
    v37[2](v37, v16);
  }

  if (self->_categories)
  {
    v17 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 repeatedSubMessageValue:self->_categories];
    v37[2](v37, v17);
  }

  if (self->_searchKeywords)
  {
    v18 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 repeatedStringValue:self->_searchKeywords];
    v37[2](v37, v18);
  }

  if (self->_deprecationDefinition)
  {
    v19 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 subMessageValue:self->_deprecationDefinition];
    v37[2](v37, v19);
  }

  if (self->_requirements)
  {
    v20 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 repeatedSubMessageValue:self->_requirements];
    v37[2](v37, v20);
  }

  if (self->_flags)
  {
    v21 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 repeatedEnumValue:self->_flags];
    v37[2](v37, v21);
  }

  v22 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 enumValue:self->_authenticationPolicy];
  v37[2](v37, v22);

  if (self->_sampleInvocations)
  {
    v23 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 repeatedSubMessageValue:self->_sampleInvocations];
    v37[2](v37, v23);
  }

  if (self->_systemProtocols)
  {
    v24 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 repeatedSubMessageValue:self->_systemProtocols];
    v37[2](v37, v24);
  }

  if (self->_customIcon)
  {
    v25 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 subMessageValue:self->_customIcon];
    v37[2](v37, v25);
  }

  if (self->_hiddenParameters)
  {
    v26 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 repeatedSubMessageValue:self->_hiddenParameters];
    v37[2](v37, v26);
  }

  if (self->_sourceContainer)
  {
    v27 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 subMessageValue:self->_sourceContainer];
    v37[2](v37, v27);
  }

  if (self->_attributionContainer)
  {
    v28 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 subMessageValue:self->_attributionContainer];
    v37[2](v37, v28);
  }

  if (self->_visibilityFlags)
  {
    v29 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 repeatedEnumValue:self->_visibilityFlags];
    v37[2](v37, v29);
  }

  if (self->_descriptionAttribution)
  {
    v30 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 stringValue:self->_descriptionAttribution];
    v37[2](v37, v30);
  }

  if (self->_descriptionResult)
  {
    v31 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 stringValue:self->_descriptionResult];
    v37[2](v37, v31);
  }

  if (self->_descriptionNote)
  {
    v32 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 stringValue:self->_descriptionNote];
    v37[2](v37, v32);
  }

  if (self->_descriptionRequires)
  {
    v33 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 stringValue:self->_descriptionRequires];
    v37[2](v37, v33);
  }

  if (self->_backingLinkActionIdentifiers)
  {
    v34 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 repeatedStringValue:self->_backingLinkActionIdentifiers];
    v37[2](v37, v34);
  }

  v35 = v37;
  if (self->_additionalAttributionContainers)
  {
    v36 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 repeatedSubMessageValue:self->_additionalAttributionContainers];
    v37[2](v37, v36);

    v35 = v37;
  }
}

- (NSArray)additionalAttributionContainers
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_additionalAttributionContainers copyItems:1];

  return v2;
}

- (NSArray)backingLinkActionIdentifiers
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_backingLinkActionIdentifiers copyItems:1];

  return v2;
}

- (NSString)descriptionRequires
{
  v2 = [(NSString *)self->_descriptionRequires copy];

  return v2;
}

- (NSString)descriptionNote
{
  v2 = [(NSString *)self->_descriptionNote copy];

  return v2;
}

- (NSString)descriptionResult
{
  v2 = [(NSString *)self->_descriptionResult copy];

  return v2;
}

- (NSString)descriptionAttribution
{
  v2 = [(NSString *)self->_descriptionAttribution copy];

  return v2;
}

- (CCToolKitToolContainerDefinition)attributionContainer
{
  v2 = [(CCToolKitToolContainerDefinition *)self->_attributionContainer copy];

  return v2;
}

- (CCToolKitToolContainerDefinition)sourceContainer
{
  v2 = [(CCToolKitToolContainerDefinition *)self->_sourceContainer copy];

  return v2;
}

- (NSArray)hiddenParameters
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_hiddenParameters copyItems:1];

  return v2;
}

- (CCToolKitToolToolDefinitionVersion1ToolIcon)customIcon
{
  v2 = [(CCToolKitToolToolDefinitionVersion1ToolIcon *)self->_customIcon copy];

  return v2;
}

- (NSArray)systemProtocols
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_systemProtocols copyItems:1];

  return v2;
}

- (NSArray)sampleInvocations
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_sampleInvocations copyItems:1];

  return v2;
}

- (NSArray)requirements
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_requirements copyItems:1];

  return v2;
}

- (CCToolKitToolToolDefinitionVersion1Deprecation)deprecationDefinition
{
  v2 = [(CCToolKitToolToolDefinitionVersion1Deprecation *)self->_deprecationDefinition copy];

  return v2;
}

- (NSArray)searchKeywords
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_searchKeywords copyItems:1];

  return v2;
}

- (NSArray)categories
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_categories copyItems:1];

  return v2;
}

- (NSString)descriptionSummary
{
  v2 = [(NSString *)self->_descriptionSummary copy];

  return v2;
}

- (CCToolKitToolAppDefinition)sourceApplication
{
  v2 = [(CCToolKitToolAppDefinition *)self->_sourceApplication copy];

  return v2;
}

- (NSString)outputResultName
{
  v2 = [(NSString *)self->_outputResultName copy];

  return v2;
}

- (CCToolKitToolTypeInstance)outputType
{
  v2 = [(CCToolKitToolTypeInstance *)self->_outputType copy];

  return v2;
}

- (NSArray)parameters
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_parameters copyItems:1];

  return v2;
}

- (NSString)name
{
  v2 = [(NSString *)self->_name copy];

  return v2;
}

- (NSString)id
{
  v2 = [(NSString *)self->_id copy];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error
{
  errorCopy = error;
  dataCopy = data;
  v5 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:dataCopy];
  v6 = MEMORY[0x1E6993AB8];
  v7 = MEMORY[0x1E6993AB0];
  if (*&v5[*MEMORY[0x1E6993AB8]] >= *&v5[*MEMORY[0x1E6993AB0]])
  {
    v98 = 0;
    v99 = 0;
    v102 = 0;
    v103 = 0;
    v9 = 0;
    v100 = 0;
    v101 = 0;
    v96 = 0;
    v97 = 0;
    v104 = 0;
    v95 = 0;
LABEL_121:
    v8 = 0;
  }

  else
  {
    v8 = 0;
    v95 = 0;
    v96 = 0;
    v103 = 0;
    v104 = 0;
    v101 = 0;
    v102 = 0;
    v97 = 0;
    v98 = 0;
    v99 = 0;
    v100 = 0;
    v9 = 0;
    v10 = MEMORY[0x1E6993AA8];
    v11 = MEMORY[0x1E6993AA0];
    do
    {
      if (*&v5[*v10])
      {
        v12 = 0;
      }

      else
      {
        v12 = v8 == 0;
      }

      if (!v12)
      {
        break;
      }

      v13 = 0;
      v14 = 0;
      v15 = 0;
      while (1)
      {
        v16 = *v6;
        v17 = *&v5[v16];
        v18 = v17 + 1;
        if (v17 == -1 || v18 > *&v5[*v7])
        {
          break;
        }

        v19 = *(*&v5[*v11] + v17);
        *&v5[v16] = v18;
        v15 |= (v19 & 0x7F) << v13;
        if ((v19 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        v13 += 7;
        v20 = v14++ >= 9;
        if (v20)
        {
          v21 = 0;
          if (*&v5[*v10])
          {
            goto LABEL_121;
          }

          goto LABEL_21;
        }
      }

      *&v5[*v10] = 1;
LABEL_17:
      v22 = *&v5[*v10];
      if (v22)
      {
        v21 = 0;
      }

      else
      {
        v21 = v15;
      }

      if (v22)
      {
        goto LABEL_121;
      }

LABEL_21:
      switch((v21 >> 3))
      {
        case 1u:
          v23 = CCPBReaderReadStringNoCopy();
          v24 = 24;
          goto LABEL_98;
        case 2u:
          v23 = CCPBReaderReadStringNoCopy();
          v24 = 32;
          goto LABEL_98;
        case 3u:
          v38 = 0;
          v39 = 0;
          v40 = 0;
          while (2)
          {
            v41 = *v6;
            v42 = *&v5[v41];
            v43 = v42 + 1;
            if (v42 == -1 || v43 > *&v5[*v7])
            {
              *&v5[*v10] = 1;
            }

            else
            {
              v44 = *(*&v5[*v11] + v42);
              *&v5[v41] = v43;
              v40 |= (v44 & 0x7F) << v38;
              if (v44 < 0)
              {
                v38 += 7;
                v20 = v39++ >= 9;
                if (v20)
                {
                  LODWORD(v40) = 0;
                  goto LABEL_112;
                }

                continue;
              }
            }

            break;
          }

          if (*&v5[*v10])
          {
            LODWORD(v40) = 0;
          }

LABEL_112:
          v8 = 0;
          v63 = 16;
          goto LABEL_117;
        case 4u:
          v29 = CCPBReaderReadDataNoCopy();
          if (!v96)
          {
            v96 = objc_opt_new();
          }

          v46 = [CCToolKitToolToolDefinitionVersion1Parameter alloc];
          v117[0] = 0;
          v31 = [(CCItemMessage *)v46 initWithData:v29 error:v117];
          v8 = v117[0];
          if (v8 || !v31)
          {
            goto LABEL_106;
          }

          v32 = v96;
          goto LABEL_105;
        case 5u:
          v34 = [CCToolKitToolTypeInstance alloc];
          v26 = CCPBReaderReadDataNoCopy();
          v116 = 0;
          v27 = [(CCItemMessage *)v34 initWithData:v26 error:&v116];
          v8 = v116;
          v28 = 48;
          goto LABEL_95;
        case 6u:
          v23 = CCPBReaderReadStringNoCopy();
          v24 = 56;
          goto LABEL_98;
        case 7u:
          v54 = [CCToolKitToolAppDefinition alloc];
          v26 = CCPBReaderReadDataNoCopy();
          v115 = 0;
          v27 = [(CCItemMessage *)v54 initWithData:v26 error:&v115];
          v8 = v115;
          v28 = 64;
          goto LABEL_95;
        case 8u:
          v23 = CCPBReaderReadStringNoCopy();
          v24 = 72;
          goto LABEL_98;
        case 9u:
          v29 = CCPBReaderReadDataNoCopy();
          if (!v95)
          {
            v95 = objc_opt_new();
          }

          v57 = [CCToolKitToolToolDefinitionVersion1Category alloc];
          v114 = 0;
          v31 = [(CCItemMessage *)v57 initWithData:v29 error:&v114];
          v8 = v114;
          if (v8 || !v31)
          {
            goto LABEL_106;
          }

          v32 = v95;
          goto LABEL_105;
        case 0xAu:
          v36 = CCPBReaderReadStringNoCopy();
          if (!v104)
          {
            v104 = objc_opt_new();
          }

          if (!v36)
          {
            goto LABEL_47;
          }

          v37 = v104;
          goto LABEL_46;
        case 0xBu:
          v56 = [CCToolKitToolToolDefinitionVersion1Deprecation alloc];
          v26 = CCPBReaderReadDataNoCopy();
          v113 = 0;
          v27 = [(CCItemMessage *)v56 initWithData:v26 error:&v113];
          v8 = v113;
          v28 = 96;
          goto LABEL_95;
        case 0xCu:
          v29 = CCPBReaderReadDataNoCopy();
          if (!v102)
          {
            v102 = objc_opt_new();
          }

          v33 = [CCToolKitToolRuntimeRequirement alloc];
          v112 = 0;
          v31 = [(CCItemMessage *)v33 initWithData:v29 error:&v112];
          v8 = v112;
          if (v8 || !v31)
          {
            goto LABEL_106;
          }

          v32 = v102;
          goto LABEL_105;
        case 0xDu:
          v35 = v97;
          if (!v97)
          {
            v35 = objc_opt_new();
          }

          v97 = v35;
          goto LABEL_75;
        case 0xEu:
          v48 = 0;
          v49 = 0;
          v40 = 0;
          break;
        case 0xFu:
          v29 = CCPBReaderReadDataNoCopy();
          if (!v101)
          {
            v101 = objc_opt_new();
          }

          v30 = [CCToolKitToolSampleInvocationDefinition alloc];
          v111 = 0;
          v31 = [(CCItemMessage *)v30 initWithData:v29 error:&v111];
          v8 = v111;
          if (v8 || !v31)
          {
            goto LABEL_106;
          }

          v32 = v101;
          goto LABEL_105;
        case 0x10u:
          v29 = CCPBReaderReadDataNoCopy();
          if (!v100)
          {
            v100 = objc_opt_new();
          }

          v45 = [CCToolKitToolSystemToolProtocol alloc];
          v110 = 0;
          v31 = [(CCItemMessage *)v45 initWithData:v29 error:&v110];
          v8 = v110;
          if (v8 || !v31)
          {
            goto LABEL_106;
          }

          v32 = v100;
          goto LABEL_105;
        case 0x11u:
          v25 = [CCToolKitToolToolDefinitionVersion1ToolIcon alloc];
          v26 = CCPBReaderReadDataNoCopy();
          v109 = 0;
          v27 = [(CCItemMessage *)v25 initWithData:v26 error:&v109];
          v8 = v109;
          v28 = 136;
          goto LABEL_95;
        case 0x12u:
          v29 = CCPBReaderReadDataNoCopy();
          if (!v99)
          {
            v99 = objc_opt_new();
          }

          v47 = [CCToolKitToolToolDefinitionVersion1Parameter alloc];
          v108 = 0;
          v31 = [(CCItemMessage *)v47 initWithData:v29 error:&v108];
          v8 = v108;
          if (v8 || !v31)
          {
            goto LABEL_106;
          }

          v32 = v99;
          goto LABEL_105;
        case 0x13u:
          v55 = [CCToolKitToolContainerDefinition alloc];
          v26 = CCPBReaderReadDataNoCopy();
          v107 = 0;
          v27 = [(CCItemMessage *)v55 initWithData:v26 error:&v107];
          v8 = v107;
          v28 = 152;
          goto LABEL_95;
        case 0x14u:
          v58 = [CCToolKitToolContainerDefinition alloc];
          v26 = CCPBReaderReadDataNoCopy();
          v106 = 0;
          v27 = [(CCItemMessage *)v58 initWithData:v26 error:&v106];
          v8 = v106;
          v28 = 160;
LABEL_95:
          v59 = *(&self->super.super.isa + v28);
          *(&self->super.super.isa + v28) = v27;

          goto LABEL_96;
        case 0x15u:
          if (!v9)
          {
            v9 = objc_opt_new();
          }

LABEL_75:
          CCPBReaderAppendRepeatedEnumFieldValues();
          goto LABEL_99;
        case 0x16u:
          v23 = CCPBReaderReadStringNoCopy();
          v24 = 176;
          goto LABEL_98;
        case 0x17u:
          v23 = CCPBReaderReadStringNoCopy();
          v24 = 184;
          goto LABEL_98;
        case 0x18u:
          v23 = CCPBReaderReadStringNoCopy();
          v24 = 192;
          goto LABEL_98;
        case 0x19u:
          v23 = CCPBReaderReadStringNoCopy();
          v24 = 200;
LABEL_98:
          v60 = *(&self->super.super.isa + v24);
          *(&self->super.super.isa + v24) = v23;

          goto LABEL_99;
        case 0x1Au:
          v36 = CCPBReaderReadStringNoCopy();
          if (!v103)
          {
            v103 = objc_opt_new();
          }

          if (v36)
          {
            v37 = v103;
LABEL_46:
            [v37 addObject:{v36, errorCopy}];
          }

LABEL_47:

          goto LABEL_99;
        case 0x1Bu:
          v29 = CCPBReaderReadDataNoCopy();
          if (!v98)
          {
            v98 = objc_opt_new();
          }

          v61 = [CCToolKitToolContainerDefinition alloc];
          v105 = 0;
          v31 = [(CCItemMessage *)v61 initWithData:v29 error:&v105];
          v8 = v105;
          if (!v8 && v31)
          {
            v32 = v98;
LABEL_105:
            [v32 addObject:{v31, errorCopy}];
          }

LABEL_106:

          continue;
        default:
          if (CCPBReaderSkipValueWithTag())
          {
LABEL_99:
            v8 = 0;
          }

          else
          {
            v62 = objc_opt_class();
            v26 = NSStringFromClass(v62);
            v8 = CCSkipFieldErrorForMessage();
LABEL_96:
          }

          continue;
      }

      while (1)
      {
        v50 = *v6;
        v51 = *&v5[v50];
        v52 = v51 + 1;
        if (v51 == -1 || v52 > *&v5[*v7])
        {
          break;
        }

        v53 = *(*&v5[*v11] + v51);
        *&v5[v50] = v52;
        v40 |= (v53 & 0x7F) << v48;
        if ((v53 & 0x80) == 0)
        {
          goto LABEL_114;
        }

        v48 += 7;
        v20 = v49++ >= 9;
        if (v20)
        {
          LODWORD(v40) = 0;
          goto LABEL_116;
        }
      }

      *&v5[*v10] = 1;
LABEL_114:
      if (*&v5[*v10])
      {
        LODWORD(v40) = 0;
      }

LABEL_116:
      v8 = 0;
      v63 = 20;
LABEL_117:
      *(&self->super.super.isa + v63) = v40;
    }

    while (*&v5[*v6] < *&v5[*v7]);
  }

  v64 = [v96 copy];
  parameters = self->_parameters;
  self->_parameters = v64;

  v66 = [v95 copy];
  categories = self->_categories;
  self->_categories = v66;

  v68 = [v104 copy];
  searchKeywords = self->_searchKeywords;
  self->_searchKeywords = v68;

  v70 = [v102 copy];
  requirements = self->_requirements;
  self->_requirements = v70;

  v72 = v97;
  v73 = [v97 copy];
  flags = self->_flags;
  self->_flags = v73;

  v75 = [v101 copy];
  sampleInvocations = self->_sampleInvocations;
  self->_sampleInvocations = v75;

  v77 = [v100 copy];
  systemProtocols = self->_systemProtocols;
  self->_systemProtocols = v77;

  v79 = [v99 copy];
  hiddenParameters = self->_hiddenParameters;
  self->_hiddenParameters = v79;

  v81 = [v9 copy];
  visibilityFlags = self->_visibilityFlags;
  self->_visibilityFlags = v81;

  v83 = [v103 copy];
  backingLinkActionIdentifiers = self->_backingLinkActionIdentifiers;
  self->_backingLinkActionIdentifiers = v83;

  v85 = [v98 copy];
  additionalAttributionContainers = self->_additionalAttributionContainers;
  self->_additionalAttributionContainers = v85;

  if (v8)
  {
    CCSetError();
    v87 = 0;
    v88 = dataCopy;
  }

  else
  {
    v88 = dataCopy;
    if (*&v5[*MEMORY[0x1E6993AA8]])
    {
      v89 = objc_opt_class();
      v90 = NSStringFromClass(v89);
      v91 = CCInvalidBufferErrorForMessage();
      CCSetError();

      v87 = 0;
    }

    else
    {
      v87 = 1;
    }

    v72 = v97;
  }

  return v87;
}

- (CCToolKitToolToolDefinitionVersion1)initWithId:(id)id name:(id)name toolType:(unsigned int)type parameters:(id)parameters outputType:(id)outputType outputResultName:(id)resultName sourceApplication:(id)application descriptionSummary:(id)self0 categories:(id)self1 searchKeywords:(id)self2 deprecationDefinition:(id)self3 requirements:(id)self4 flags:(id)self5 authenticationPolicy:(unsigned int)self6 sampleInvocations:(id)self7 systemProtocols:(id)self8 customIcon:(id)self9 hiddenParameters:(id)hiddenParameters sourceContainer:(id)container attributionContainer:(id)attributionContainer visibilityFlags:(id)visibilityFlags descriptionAttribution:(id)attribution descriptionResult:(id)result descriptionNote:(id)note descriptionRequires:(id)requires backingLinkActionIdentifiers:(id)identifiers additionalAttributionContainers:(id)containers error:(id *)id0
{
  v251 = *MEMORY[0x1E69E9840];
  idCopy = id;
  nameCopy = name;
  parametersCopy = parameters;
  outputTypeCopy = outputType;
  resultNameCopy = resultName;
  applicationCopy = application;
  summaryCopy = summary;
  categoriesCopy = categories;
  keywordsCopy = keywords;
  definitionCopy = definition;
  requirementsCopy = requirements;
  flagsCopy = flags;
  invocationsCopy = invocations;
  protocolsCopy = protocols;
  iconCopy = icon;
  hiddenParametersCopy = hiddenParameters;
  containerCopy = container;
  attributionContainerCopy = attributionContainer;
  visibilityFlagsCopy = visibilityFlags;
  attributionCopy = attribution;
  resultCopy = result;
  noteCopy = note;
  requiresCopy = requires;
  identifiersCopy = identifiers;
  containersCopy = containers;
  v38 = objc_opt_new();
  if (idCopy)
  {
    objc_opt_class();
    v241 = 0;
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v40 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      goto LABEL_140;
    }

    CCPBDataWriterWriteStringField();
  }

  else
  {
    v40 = 0;
  }

  if (nameCopy)
  {
    objc_opt_class();
    v240 = v40;
    v41 = CCValidateIsInstanceOfExpectedClass();
    v42 = v40;

    if (!v41)
    {
      goto LABEL_145;
    }

    CCPBDataWriterWriteStringField();
    if (!type)
    {
LABEL_8:
      v40 = v42;
      if (parametersCopy)
      {
        goto LABEL_9;
      }

LABEL_24:
      v42 = v40;
      v52 = resultNameCopy;
      if (!outputTypeCopy)
      {
        goto LABEL_18;
      }

LABEL_25:
      objc_opt_class();
      v233 = v42;
      v56 = CCValidateIsInstanceOfExpectedClass();
      v40 = v42;

      if (!v56)
      {
        goto LABEL_106;
      }

      data = [outputTypeCopy data];
      CCPBDataWriterWriteDataField();

      if (v52)
      {
        goto LABEL_19;
      }

LABEL_27:
      v54 = v40;
      goto LABEL_28;
    }
  }

  else
  {
    v42 = v40;
    if (!type)
    {
      goto LABEL_8;
    }
  }

  v239 = v42;
  v55 = CCValidateEnumField();
  v40 = v42;

  if (!v55)
  {
    goto LABEL_140;
  }

  CCPBDataWriterWriteUint32Field();
  if (!parametersCopy)
  {
    goto LABEL_24;
  }

LABEL_9:
  objc_opt_class();
  v238 = v40;
  v43 = CCValidateArrayValues();
  v42 = v40;

  if (!v43)
  {
    goto LABEL_145;
  }

  v151 = nameCopy;
  v44 = outputTypeCopy;
  v45 = idCopy;
  v236 = 0u;
  v237 = 0u;
  v234 = 0u;
  v235 = 0u;
  v46 = parametersCopy;
  v47 = [v46 countByEnumeratingWithState:&v234 objects:v250 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = *v235;
    do
    {
      for (i = 0; i != v48; ++i)
      {
        if (*v235 != v49)
        {
          objc_enumerationMutation(v46);
        }

        data2 = [*(*(&v234 + 1) + 8 * i) data];
        CCPBDataWriterWriteDataField();
      }

      v48 = [v46 countByEnumeratingWithState:&v234 objects:v250 count:16];
    }

    while (v48);
  }

  idCopy = v45;
  outputTypeCopy = v44;
  nameCopy = v151;
  v52 = resultNameCopy;
  if (outputTypeCopy)
  {
    goto LABEL_25;
  }

LABEL_18:
  v40 = v42;
  if (!v52)
  {
    goto LABEL_27;
  }

LABEL_19:
  objc_opt_class();
  v232 = v40;
  v53 = CCValidateIsInstanceOfExpectedClass();
  v54 = v40;

  if (!v53)
  {
    goto LABEL_118;
  }

  CCPBDataWriterWriteStringField();
LABEL_28:
  if (applicationCopy)
  {
    objc_opt_class();
    v231 = v54;
    v58 = CCValidateIsInstanceOfExpectedClass();
    v40 = v54;

    if (!v58)
    {
      goto LABEL_106;
    }

    data3 = [applicationCopy data];
    CCPBDataWriterWriteDataField();
  }

  else
  {
    v40 = v54;
  }

  if (summaryCopy)
  {
    objc_opt_class();
    v230 = v40;
    v60 = CCValidateIsInstanceOfExpectedClass();
    v54 = v40;

    if (!v60)
    {
      goto LABEL_118;
    }

    CCPBDataWriterWriteStringField();
  }

  else
  {
    v54 = v40;
  }

  if (categoriesCopy)
  {
    objc_opt_class();
    v229 = v54;
    v61 = CCValidateArrayValues();
    v40 = v54;

    if (!v61)
    {
      goto LABEL_106;
    }

    v152 = parametersCopy;
    v62 = outputTypeCopy;
    v63 = idCopy;
    v227 = 0u;
    v228 = 0u;
    v225 = 0u;
    v226 = 0u;
    v64 = categoriesCopy;
    v65 = [v64 countByEnumeratingWithState:&v225 objects:v249 count:16];
    if (v65)
    {
      v66 = v65;
      v67 = *v226;
      do
      {
        for (j = 0; j != v66; ++j)
        {
          if (*v226 != v67)
          {
            objc_enumerationMutation(v64);
          }

          data4 = [*(*(&v225 + 1) + 8 * j) data];
          CCPBDataWriterWriteDataField();
        }

        v66 = [v64 countByEnumeratingWithState:&v225 objects:v249 count:16];
      }

      while (v66);
    }

    idCopy = v63;
    outputTypeCopy = v62;
    parametersCopy = v152;
    v52 = resultNameCopy;
  }

  else
  {
    v40 = v54;
  }

  if (keywordsCopy)
  {
    objc_opt_class();
    v224 = v40;
    v70 = CCValidateArrayValues();
    v54 = v40;

    if (!v70)
    {
      goto LABEL_118;
    }

    v71 = nameCopy;
    v72 = parametersCopy;
    v73 = outputTypeCopy;
    v74 = idCopy;
    v222 = 0u;
    v223 = 0u;
    v220 = 0u;
    v221 = 0u;
    v75 = keywordsCopy;
    v76 = [v75 countByEnumeratingWithState:&v220 objects:v248 count:16];
    if (v76)
    {
      v77 = v76;
      v78 = *v221;
      do
      {
        for (k = 0; k != v77; ++k)
        {
          if (*v221 != v78)
          {
            objc_enumerationMutation(v75);
          }

          CCPBDataWriterWriteStringField();
        }

        v77 = [v75 countByEnumeratingWithState:&v220 objects:v248 count:16];
      }

      while (v77);
    }

    idCopy = v74;
    outputTypeCopy = v73;
    parametersCopy = v72;
    nameCopy = v71;
    v52 = resultNameCopy;
  }

  else
  {
    v54 = v40;
  }

  if (definitionCopy)
  {
    objc_opt_class();
    v219 = v54;
    v80 = CCValidateIsInstanceOfExpectedClass();
    v40 = v54;

    if (!v80)
    {
      goto LABEL_106;
    }

    data5 = [definitionCopy data];
    CCPBDataWriterWriteDataField();
  }

  else
  {
    v40 = v54;
  }

  if (requirementsCopy)
  {
    objc_opt_class();
    v218 = v40;
    v82 = CCValidateArrayValues();
    v54 = v40;

    if (!v82)
    {
      goto LABEL_118;
    }

    v153 = parametersCopy;
    v83 = outputTypeCopy;
    v84 = idCopy;
    v216 = 0u;
    v217 = 0u;
    v214 = 0u;
    v215 = 0u;
    v85 = requirementsCopy;
    v86 = [v85 countByEnumeratingWithState:&v214 objects:v247 count:16];
    if (v86)
    {
      v87 = v86;
      v88 = *v215;
      do
      {
        for (m = 0; m != v87; ++m)
        {
          if (*v215 != v88)
          {
            objc_enumerationMutation(v85);
          }

          data6 = [*(*(&v214 + 1) + 8 * m) data];
          CCPBDataWriterWriteDataField();
        }

        v87 = [v85 countByEnumeratingWithState:&v214 objects:v247 count:16];
      }

      while (v87);
    }

    idCopy = v84;
    outputTypeCopy = v83;
    parametersCopy = v153;
    v52 = resultNameCopy;
  }

  else
  {
    v54 = v40;
  }

  if (flagsCopy)
  {
    objc_opt_class();
    v213 = v54;
    v91 = CCValidateIsInstanceOfExpectedClass();
    v40 = v54;

    if (!v91)
    {
      goto LABEL_106;
    }

    CCPBDataWriterWriteRepeatedUInt32Field();
  }

  else
  {
    v40 = v54;
  }

  if (policy)
  {
    v212 = v40;
    v92 = CCValidateEnumField();
    v42 = v40;

    if (!v92)
    {
      goto LABEL_145;
    }

    CCPBDataWriterWriteUint32Field();
  }

  else
  {
    v42 = v40;
  }

  if (invocationsCopy)
  {
    objc_opt_class();
    v211 = v42;
    v93 = CCValidateArrayValues();
    v40 = v42;

    if (!v93)
    {
      goto LABEL_140;
    }

    v154 = parametersCopy;
    v94 = outputTypeCopy;
    v95 = idCopy;
    v209 = 0u;
    v210 = 0u;
    v207 = 0u;
    v208 = 0u;
    v96 = invocationsCopy;
    v97 = [v96 countByEnumeratingWithState:&v207 objects:v246 count:16];
    if (v97)
    {
      v98 = v97;
      v99 = *v208;
      do
      {
        for (n = 0; n != v98; ++n)
        {
          if (*v208 != v99)
          {
            objc_enumerationMutation(v96);
          }

          data7 = [*(*(&v207 + 1) + 8 * n) data];
          CCPBDataWriterWriteDataField();
        }

        v98 = [v96 countByEnumeratingWithState:&v207 objects:v246 count:16];
      }

      while (v98);
    }

    idCopy = v95;
    outputTypeCopy = v94;
    parametersCopy = v154;
  }

  else
  {
    v40 = v42;
  }

  v52 = resultNameCopy;
  if (protocolsCopy)
  {
    objc_opt_class();
    v206 = v40;
    v102 = CCValidateArrayValues();
    v54 = v40;

    if (v102)
    {
      v155 = parametersCopy;
      v103 = outputTypeCopy;
      v104 = idCopy;
      v204 = 0u;
      v205 = 0u;
      v202 = 0u;
      v203 = 0u;
      v105 = protocolsCopy;
      v106 = [v105 countByEnumeratingWithState:&v202 objects:v245 count:16];
      if (v106)
      {
        v107 = v106;
        v108 = *v203;
        do
        {
          for (ii = 0; ii != v107; ++ii)
          {
            if (*v203 != v108)
            {
              objc_enumerationMutation(v105);
            }

            data8 = [*(*(&v202 + 1) + 8 * ii) data];
            CCPBDataWriterWriteDataField();
          }

          v107 = [v105 countByEnumeratingWithState:&v202 objects:v245 count:16];
        }

        while (v107);
      }

      idCopy = v104;
      outputTypeCopy = v103;
      parametersCopy = v155;
      v52 = resultNameCopy;
      goto LABEL_103;
    }

LABEL_118:
    CCSetError();
    v113 = 0;
    v40 = v54;
    goto LABEL_119;
  }

  v54 = v40;
LABEL_103:
  if (!iconCopy)
  {
    v40 = v54;
    goto LABEL_108;
  }

  objc_opt_class();
  v201 = v54;
  v111 = CCValidateIsInstanceOfExpectedClass();
  v40 = v54;

  if (v111)
  {
    data9 = [iconCopy data];
    CCPBDataWriterWriteDataField();

LABEL_108:
    if (!hiddenParametersCopy)
    {
      v54 = v40;
LABEL_121:
      if (containerCopy)
      {
        objc_opt_class();
        v195 = v54;
        v124 = CCValidateIsInstanceOfExpectedClass();
        v40 = v54;

        if (!v124)
        {
          goto LABEL_140;
        }

        data10 = [containerCopy data];
        CCPBDataWriterWriteDataField();
      }

      else
      {
        v40 = v54;
      }

      if (attributionContainerCopy)
      {
        objc_opt_class();
        v194 = v40;
        v126 = CCValidateIsInstanceOfExpectedClass();
        v42 = v40;

        if (!v126)
        {
          goto LABEL_145;
        }

        data11 = [attributionContainerCopy data];
        CCPBDataWriterWriteDataField();
      }

      else
      {
        v42 = v40;
      }

      if (visibilityFlagsCopy)
      {
        objc_opt_class();
        v193 = v42;
        v128 = CCValidateIsInstanceOfExpectedClass();
        v40 = v42;

        if (!v128)
        {
          goto LABEL_140;
        }

        CCPBDataWriterWriteRepeatedUInt32Field();
      }

      else
      {
        v40 = v42;
      }

      if (!attributionCopy)
      {
        v42 = v40;
        goto LABEL_137;
      }

      objc_opt_class();
      v192 = v40;
      v129 = CCValidateIsInstanceOfExpectedClass();
      v42 = v40;

      if (v129)
      {
        CCPBDataWriterWriteStringField();
LABEL_137:
        if (!resultCopy)
        {
          v40 = v42;
          goto LABEL_142;
        }

        objc_opt_class();
        v191 = v42;
        v130 = CCValidateIsInstanceOfExpectedClass();
        v40 = v42;

        if (v130)
        {
          CCPBDataWriterWriteStringField();
LABEL_142:
          if (!noteCopy)
          {
            v42 = v40;
LABEL_150:
            v149 = idCopy;
            if (requiresCopy)
            {
              objc_opt_class();
              v189 = v42;
              v133 = CCValidateIsInstanceOfExpectedClass();
              v40 = v42;

              if (!v133)
              {
                goto LABEL_175;
              }

              CCPBDataWriterWriteStringField();
            }

            else
            {
              v40 = v42;
            }

            if (identifiersCopy)
            {
              objc_opt_class();
              v188 = v40;
              v134 = CCValidateArrayValues();
              v135 = v40;

              if (!v134)
              {
                CCSetError();
                v113 = 0;
                v40 = v135;
                goto LABEL_177;
              }

              v186 = 0u;
              v187 = 0u;
              v184 = 0u;
              v185 = 0u;
              v136 = identifiersCopy;
              v137 = [v136 countByEnumeratingWithState:&v184 objects:v243 count:16];
              if (v137)
              {
                v138 = v137;
                v139 = *v185;
                do
                {
                  for (jj = 0; jj != v138; ++jj)
                  {
                    if (*v185 != v139)
                    {
                      objc_enumerationMutation(v136);
                    }

                    CCPBDataWriterWriteStringField();
                  }

                  v138 = [v136 countByEnumeratingWithState:&v184 objects:v243 count:16];
                }

                while (v138);
              }
            }

            else
            {
              v135 = v40;
            }

            if (!containersCopy)
            {
              v40 = v135;
LABEL_179:
              immutableData = [v38 immutableData];
              selfCopy3 = [(CCItemMessage *)self initWithData:immutableData error:error];

              v113 = selfCopy3;
              goto LABEL_180;
            }

            objc_opt_class();
            v183 = v135;
            v141 = CCValidateArrayValues();
            v40 = v135;

            if (v141)
            {
              v181 = 0u;
              v182 = 0u;
              v179 = 0u;
              v180 = 0u;
              v142 = containersCopy;
              v143 = [v142 countByEnumeratingWithState:&v179 objects:v242 count:16];
              if (v143)
              {
                v144 = v143;
                v145 = *v180;
                do
                {
                  for (kk = 0; kk != v144; ++kk)
                  {
                    if (*v180 != v145)
                    {
                      objc_enumerationMutation(v142);
                    }

                    data12 = [*(*(&v179 + 1) + 8 * kk) data];
                    CCPBDataWriterWriteDataField();
                  }

                  v144 = [v142 countByEnumeratingWithState:&v179 objects:v242 count:16];
                }

                while (v144);
              }

              goto LABEL_179;
            }

LABEL_175:
            CCSetError();
            v113 = 0;
LABEL_177:
            selfCopy3 = self;
LABEL_180:
            idCopy = v149;
            goto LABEL_147;
          }

          objc_opt_class();
          v190 = v40;
          v131 = CCValidateIsInstanceOfExpectedClass();
          v42 = v40;

          if (v131)
          {
            CCPBDataWriterWriteStringField();
            goto LABEL_150;
          }

          goto LABEL_145;
        }

LABEL_140:
        CCSetError();
        v113 = 0;
LABEL_146:
        selfCopy3 = self;
LABEL_147:
        v52 = resultNameCopy;
        goto LABEL_148;
      }

LABEL_145:
      CCSetError();
      v113 = 0;
      v40 = v42;
      goto LABEL_146;
    }

    objc_opt_class();
    v200 = v40;
    v114 = CCValidateArrayValues();
    v54 = v40;

    if (v114)
    {
      v156 = parametersCopy;
      v115 = outputTypeCopy;
      v116 = idCopy;
      v198 = 0u;
      v199 = 0u;
      v196 = 0u;
      v197 = 0u;
      v117 = hiddenParametersCopy;
      v118 = [v117 countByEnumeratingWithState:&v196 objects:v244 count:16];
      if (v118)
      {
        v119 = v118;
        v120 = *v197;
        do
        {
          for (mm = 0; mm != v119; ++mm)
          {
            if (*v197 != v120)
            {
              objc_enumerationMutation(v117);
            }

            data13 = [*(*(&v196 + 1) + 8 * mm) data];
            CCPBDataWriterWriteDataField();
          }

          v119 = [v117 countByEnumeratingWithState:&v196 objects:v244 count:16];
        }

        while (v119);
      }

      idCopy = v116;
      outputTypeCopy = v115;
      parametersCopy = v156;
      goto LABEL_121;
    }

    goto LABEL_118;
  }

LABEL_106:
  CCSetError();
  v113 = 0;
LABEL_119:
  selfCopy3 = self;
LABEL_148:

  return v113;
}

@end