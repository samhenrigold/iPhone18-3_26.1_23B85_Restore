@interface BMIntelligenceEngineInteractionCandidateType
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMIntelligenceEngineInteractionCandidateType)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMIntelligenceEngineInteractionCandidateType)initWithUnknown:(id)unknown primitive:(id)primitive device:(id)device schema:(id)schema tool:(id)tool app:(id)app file:(id)file person:(id)self0 placemark:(id)self1 custom:(id)self2;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMIntelligenceEngineInteractionCandidateType

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    unknown = [(BMIntelligenceEngineInteractionCandidateType *)self unknown];
    unknown2 = [v5 unknown];
    v8 = unknown2;
    if (unknown == unknown2)
    {
    }

    else
    {
      unknown3 = [(BMIntelligenceEngineInteractionCandidateType *)self unknown];
      unknown4 = [v5 unknown];
      v11 = [unknown3 isEqual:unknown4];

      if (!v11)
      {
        goto LABEL_37;
      }
    }

    primitive = [(BMIntelligenceEngineInteractionCandidateType *)self primitive];
    primitive2 = [v5 primitive];
    v15 = primitive2;
    if (primitive == primitive2)
    {
    }

    else
    {
      primitive3 = [(BMIntelligenceEngineInteractionCandidateType *)self primitive];
      primitive4 = [v5 primitive];
      v18 = [primitive3 isEqual:primitive4];

      if (!v18)
      {
        goto LABEL_37;
      }
    }

    device = [(BMIntelligenceEngineInteractionCandidateType *)self device];
    device2 = [v5 device];
    v21 = device2;
    if (device == device2)
    {
    }

    else
    {
      device3 = [(BMIntelligenceEngineInteractionCandidateType *)self device];
      device4 = [v5 device];
      v24 = [device3 isEqual:device4];

      if (!v24)
      {
        goto LABEL_37;
      }
    }

    schema = [(BMIntelligenceEngineInteractionCandidateType *)self schema];
    schema2 = [v5 schema];
    v27 = schema2;
    if (schema == schema2)
    {
    }

    else
    {
      schema3 = [(BMIntelligenceEngineInteractionCandidateType *)self schema];
      schema4 = [v5 schema];
      v30 = [schema3 isEqual:schema4];

      if (!v30)
      {
        goto LABEL_37;
      }
    }

    tool = [(BMIntelligenceEngineInteractionCandidateType *)self tool];
    tool2 = [v5 tool];
    v33 = tool2;
    if (tool == tool2)
    {
    }

    else
    {
      tool3 = [(BMIntelligenceEngineInteractionCandidateType *)self tool];
      tool4 = [v5 tool];
      v36 = [tool3 isEqual:tool4];

      if (!v36)
      {
        goto LABEL_37;
      }
    }

    v37 = [(BMIntelligenceEngineInteractionCandidateType *)self app];
    v38 = [v5 app];
    v39 = v38;
    if (v37 == v38)
    {
    }

    else
    {
      v40 = [(BMIntelligenceEngineInteractionCandidateType *)self app];
      v41 = [v5 app];
      v42 = [v40 isEqual:v41];

      if (!v42)
      {
        goto LABEL_37;
      }
    }

    file = [(BMIntelligenceEngineInteractionCandidateType *)self file];
    file2 = [v5 file];
    v45 = file2;
    if (file == file2)
    {
    }

    else
    {
      file3 = [(BMIntelligenceEngineInteractionCandidateType *)self file];
      file4 = [v5 file];
      v48 = [file3 isEqual:file4];

      if (!v48)
      {
        goto LABEL_37;
      }
    }

    person = [(BMIntelligenceEngineInteractionCandidateType *)self person];
    person2 = [v5 person];
    v51 = person2;
    if (person == person2)
    {
    }

    else
    {
      person3 = [(BMIntelligenceEngineInteractionCandidateType *)self person];
      person4 = [v5 person];
      v54 = [person3 isEqual:person4];

      if (!v54)
      {
        goto LABEL_37;
      }
    }

    placemark = [(BMIntelligenceEngineInteractionCandidateType *)self placemark];
    placemark2 = [v5 placemark];
    v57 = placemark2;
    if (placemark == placemark2)
    {
    }

    else
    {
      placemark3 = [(BMIntelligenceEngineInteractionCandidateType *)self placemark];
      placemark4 = [v5 placemark];
      v60 = [placemark3 isEqual:placemark4];

      if (!v60)
      {
LABEL_37:
        v12 = 0;
LABEL_38:

        goto LABEL_39;
      }
    }

    custom = [(BMIntelligenceEngineInteractionCandidateType *)self custom];
    custom2 = [v5 custom];
    if (custom == custom2)
    {
      v12 = 1;
    }

    else
    {
      custom3 = [(BMIntelligenceEngineInteractionCandidateType *)self custom];
      custom4 = [v5 custom];
      v12 = [custom3 isEqual:custom4];
    }

    goto LABEL_38;
  }

  v12 = 0;
LABEL_39:

  return v12;
}

- (id)jsonDictionary
{
  v48[10] = *MEMORY[0x1E69E9840];
  unknown = [(BMIntelligenceEngineInteractionCandidateType *)self unknown];
  jsonDictionary = [unknown jsonDictionary];

  primitive = [(BMIntelligenceEngineInteractionCandidateType *)self primitive];
  jsonDictionary2 = [primitive jsonDictionary];

  device = [(BMIntelligenceEngineInteractionCandidateType *)self device];
  jsonDictionary3 = [device jsonDictionary];

  schema = [(BMIntelligenceEngineInteractionCandidateType *)self schema];
  jsonDictionary4 = [schema jsonDictionary];

  tool = [(BMIntelligenceEngineInteractionCandidateType *)self tool];
  jsonDictionary5 = [tool jsonDictionary];

  v13 = [(BMIntelligenceEngineInteractionCandidateType *)self app];
  jsonDictionary6 = [v13 jsonDictionary];

  file = [(BMIntelligenceEngineInteractionCandidateType *)self file];
  jsonDictionary7 = [file jsonDictionary];

  person = [(BMIntelligenceEngineInteractionCandidateType *)self person];
  jsonDictionary8 = [person jsonDictionary];

  placemark = [(BMIntelligenceEngineInteractionCandidateType *)self placemark];
  jsonDictionary9 = [placemark jsonDictionary];

  custom = [(BMIntelligenceEngineInteractionCandidateType *)self custom];
  jsonDictionary10 = [custom jsonDictionary];

  v47[0] = @"unknown";
  null = jsonDictionary;
  if (!jsonDictionary)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v40 = null;
  v48[0] = null;
  v47[1] = @"primitive";
  null2 = jsonDictionary2;
  if (!jsonDictionary2)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v39 = null2;
  v48[1] = null2;
  v47[2] = @"device";
  null3 = jsonDictionary3;
  if (!jsonDictionary3)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v45 = jsonDictionary;
  v38 = null3;
  v48[2] = null3;
  v47[3] = @"schema";
  null4 = jsonDictionary4;
  if (!jsonDictionary4)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v44 = jsonDictionary2;
  v37 = null4;
  v48[3] = null4;
  v47[4] = @"tool";
  null5 = jsonDictionary5;
  if (!jsonDictionary5)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v43 = jsonDictionary3;
  v36 = null5;
  v48[4] = null5;
  v47[5] = @"app";
  null6 = jsonDictionary6;
  if (!jsonDictionary6)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v42 = jsonDictionary4;
  v48[5] = null6;
  v47[6] = @"file";
  null7 = jsonDictionary7;
  if (!jsonDictionary7)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = jsonDictionary7;
  v30 = jsonDictionary5;
  v48[6] = null7;
  v47[7] = @"person";
  null8 = jsonDictionary8;
  if (!jsonDictionary8)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = jsonDictionary6;
  v48[7] = null8;
  v47[8] = @"placemark";
  null9 = jsonDictionary9;
  if (!jsonDictionary9)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v48[8] = null9;
  v47[9] = @"custom";
  null10 = jsonDictionary10;
  if (!jsonDictionary10)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v48[9] = null10;
  v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:10];
  if (jsonDictionary10)
  {
    if (jsonDictionary9)
    {
      goto LABEL_23;
    }
  }

  else
  {

    if (jsonDictionary9)
    {
      goto LABEL_23;
    }
  }

LABEL_23:
  if (!jsonDictionary8)
  {
  }

  if (!v29)
  {
  }

  if (!v32)
  {
  }

  if (!v30)
  {
  }

  if (!v42)
  {
  }

  if (v43)
  {
    if (v44)
    {
      goto LABEL_35;
    }

LABEL_42:

    if (v45)
    {
      goto LABEL_36;
    }

    goto LABEL_43;
  }

  if (!v44)
  {
    goto LABEL_42;
  }

LABEL_35:
  if (v45)
  {
    goto LABEL_36;
  }

LABEL_43:

LABEL_36:

  return v41;
}

- (BMIntelligenceEngineInteractionCandidateType)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v167[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"unknown"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v137 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    v147 = 0;
    v137 = [[BMIntelligenceEngineInteractionEmpty alloc] initWithJSONDictionary:v8 error:&v147];
    v29 = v147;
    if (v29)
    {
      if (error)
      {
        v29 = v29;
        *error = v29;
      }

LABEL_63:
      v27 = 0;
      v28 = v137;
      goto LABEL_82;
    }

LABEL_4:
    v8 = [dictionaryCopy objectForKeyedSubscript:@"primitive"];
    if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v9 = 0;
LABEL_7:
      v10 = [dictionaryCopy objectForKeyedSubscript:@"device"];
      if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v11 = v9;
        v133 = 0;
        goto LABEL_10;
      }

      v128 = v7;
      v11 = v9;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v31 = v10;
        v145 = 0;
        v133 = [[BMIntelligenceEngineInteractionDeviceType alloc] initWithJSONDictionary:v31 error:&v145];
        v32 = v145;
        if (v32)
        {
          v135 = v31;
          v28 = v137;
          if (error)
          {
            v32 = v32;
            *error = v32;
          }

          v27 = 0;
          v26 = v133;
          goto LABEL_80;
        }

LABEL_10:
        v12 = [dictionaryCopy objectForKeyedSubscript:@"schema"];
        v135 = v12;
        if (!v12 || (v13 = v12, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v132 = 0;
LABEL_13:
          [dictionaryCopy objectForKeyedSubscript:@"tool"];
          v14 = v9 = v11;
          v126 = v10;
          if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (!error)
              {
                v27 = 0;
                v26 = v133;
                v28 = v137;
                goto LABEL_79;
              }

              v123 = objc_alloc(MEMORY[0x1E696ABC0]);
              v63 = *MEMORY[0x1E698F240];
              v158 = *MEMORY[0x1E696A578];
              v120 = v8;
              selfCopy = self;
              v65 = objc_alloc(MEMORY[0x1E696AEC0]);
              v104 = objc_opt_class();
              v66 = v65;
              self = selfCopy;
              v124 = [v66 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v104, @"tool"];
              v159 = v124;
              v67 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v159 forKeys:&v158 count:1];
              v68 = v123;
              v69 = v63;
              v28 = v137;
              v121 = v67;
              v27 = 0;
              *error = [v68 initWithDomain:v69 code:2 userInfo:?];
              v8 = v120;
              v26 = v133;
              goto LABEL_38;
            }

            v48 = v14;
            v143 = 0;
            v124 = [[BMIntelligenceEngineInteractionToolType alloc] initWithJSONDictionary:v48 error:&v143];
            v49 = v143;
            if (v49)
            {
              v121 = v48;
              if (error)
              {
                v49 = v49;
                *error = v49;
              }

              v27 = 0;
              goto LABEL_126;
            }
          }

          else
          {
            v124 = 0;
          }

          v15 = [dictionaryCopy objectForKeyedSubscript:@"app"];
          v121 = v15;
          if (!v15 || (v16 = v15, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v119 = 0;
            goto LABEL_19;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v53 = v16;
            v142 = 0;
            v119 = [[BMIntelligenceEngineInteractionAppType alloc] initWithJSONDictionary:v53 error:&v142];
            v54 = v142;
            if (v54)
            {
              v117 = v53;
              if (error)
              {
                v54 = v54;
                *error = v54;
              }

              v27 = 0;
              goto LABEL_131;
            }

LABEL_19:
            v17 = [dictionaryCopy objectForKeyedSubscript:@"file"];
            v117 = v17;
            if (!v17 || (v18 = v17, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v116 = 0;
              goto LABEL_22;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v61 = v18;
              v141 = 0;
              v116 = [[BMIntelligenceEngineInteractionFileType alloc] initWithJSONDictionary:v61 error:&v141];
              v62 = v141;
              if (v62)
              {
                v114 = v61;
                if (error)
                {
                  v62 = v62;
                  *error = v62;
                }

                v27 = 0;
                goto LABEL_134;
              }

LABEL_22:
              v19 = [dictionaryCopy objectForKeyedSubscript:@"person"];
              v114 = v19;
              if (!v19 || (v20 = v19, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v113 = 0;
LABEL_25:
                v21 = [dictionaryCopy objectForKeyedSubscript:@"placemark"];
                v111 = v21;
                if (!v21 || (v22 = v21, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  selfCopy4 = self;
                  v127 = 0;
LABEL_28:
                  v24 = [dictionaryCopy objectForKeyedSubscript:@"custom"];
                  if (!v24 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v25 = 0;
LABEL_31:
                    v26 = v133;
                    v27 = [(BMIntelligenceEngineInteractionCandidateType *)selfCopy4 initWithUnknown:v137 primitive:v9 device:v133 schema:v132 tool:v124 app:v119 file:v116 person:v113 placemark:v127 custom:v25];
                    selfCopy4 = v27;
LABEL_32:

LABEL_33:
                    v28 = v137;
LABEL_34:

                    self = selfCopy4;
                    v10 = v126;
LABEL_35:

LABEL_36:
LABEL_37:

LABEL_38:
LABEL_79:

                    goto LABEL_80;
                  }

                  v110 = v14;
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v89 = v24;
                    v138 = 0;
                    v25 = [[BMIntelligenceEngineInteractionCustomType alloc] initWithJSONDictionary:v89 error:&v138];
                    v90 = v138;
                    if (v90)
                    {
                      if (error)
                      {
                        v90 = v90;
                        *error = v90;
                      }

                      v27 = 0;
                      v26 = v133;
                      goto LABEL_32;
                    }

                    goto LABEL_31;
                  }

                  if (error)
                  {
                    v109 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v108 = *MEMORY[0x1E698F240];
                    v148 = *MEMORY[0x1E696A578];
                    v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"custom"];
                    v149 = v25;
                    v102 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v149 forKeys:&v148 count:1];
                    *error = [v109 initWithDomain:v108 code:2 userInfo:v102];

                    v27 = 0;
                    v26 = v133;
                    goto LABEL_32;
                  }

                  v27 = 0;
                  v28 = v137;
LABEL_140:
                  v26 = v133;
                  v14 = v110;
                  goto LABEL_34;
                }

                v110 = v14;
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  selfCopy4 = self;
                  v24 = v22;
                  v139 = 0;
                  v127 = [[BMIntelligenceEngineInteractionPlacemarkType alloc] initWithJSONDictionary:v24 error:&v139];
                  v80 = v139;
                  if (v80)
                  {
                    if (error)
                    {
                      v80 = v80;
                      *error = v80;
                    }

                    v27 = 0;
                    v26 = v133;
                    goto LABEL_33;
                  }

                  goto LABEL_28;
                }

                if (error)
                {
                  selfCopy4 = self;
                  v99 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v100 = *MEMORY[0x1E698F240];
                  v150 = *MEMORY[0x1E696A578];
                  v127 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"placemark"];
                  v151 = v127;
                  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v151 forKeys:&v150 count:1];
                  v101 = [v99 initWithDomain:v100 code:2 userInfo:v24];
                  v27 = 0;
                  *error = v101;
                  v28 = v137;
                  goto LABEL_140;
                }

                v27 = 0;
                v28 = v137;
LABEL_137:
                v26 = v133;
                goto LABEL_35;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v70 = v20;
                v140 = 0;
                v113 = [[BMIntelligenceEngineInteractionPersonType alloc] initWithJSONDictionary:v70 error:&v140];
                v71 = v140;
                if (v71)
                {
                  v111 = v70;
                  v10 = v126;
                  if (error)
                  {
                    v71 = v71;
                    *error = v71;
                  }

                  v27 = 0;
                  v26 = v133;
                  v28 = v137;
                  goto LABEL_35;
                }

                v10 = v126;
                goto LABEL_25;
              }

              if (error)
              {
                v112 = objc_alloc(MEMORY[0x1E696ABC0]);
                v91 = *MEMORY[0x1E698F240];
                v152 = *MEMORY[0x1E696A578];
                v131 = v7;
                v92 = v8;
                selfCopy5 = self;
                v94 = objc_alloc(MEMORY[0x1E696AEC0]);
                v107 = objc_opt_class();
                v95 = v94;
                self = selfCopy5;
                v113 = [v95 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v107, @"person"];
                v153 = v113;
                v96 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v153 forKeys:&v152 count:1];
                v97 = v112;
                v98 = v91;
                v28 = v137;
                v111 = v96;
                v27 = 0;
                *error = [v97 initWithDomain:v98 code:2 userInfo:?];
                v8 = v92;
                v7 = v131;
                goto LABEL_137;
              }

              v27 = 0;
LABEL_134:
              v26 = v133;
              v28 = v137;
              goto LABEL_36;
            }

            if (error)
            {
              v115 = objc_alloc(MEMORY[0x1E696ABC0]);
              v81 = *MEMORY[0x1E698F240];
              v154 = *MEMORY[0x1E696A578];
              v130 = v7;
              v82 = v8;
              selfCopy6 = self;
              v84 = objc_alloc(MEMORY[0x1E696AEC0]);
              v106 = objc_opt_class();
              v85 = v84;
              self = selfCopy6;
              v116 = [v85 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v106, @"file"];
              v155 = v116;
              v86 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v155 forKeys:&v154 count:1];
              v87 = v115;
              v88 = v81;
              v28 = v137;
              v114 = v86;
              v27 = 0;
              *error = [v87 initWithDomain:v88 code:2 userInfo:?];
              v8 = v82;
              v7 = v130;
              v26 = v133;
              goto LABEL_36;
            }

            v27 = 0;
LABEL_131:
            v26 = v133;
            v28 = v137;
            goto LABEL_37;
          }

          if (error)
          {
            v118 = objc_alloc(MEMORY[0x1E696ABC0]);
            v72 = *MEMORY[0x1E698F240];
            v156 = *MEMORY[0x1E696A578];
            v129 = v7;
            v73 = v8;
            selfCopy7 = self;
            v75 = objc_alloc(MEMORY[0x1E696AEC0]);
            v105 = objc_opt_class();
            v76 = v75;
            self = selfCopy7;
            v119 = [v76 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v105, @"app"];
            v157 = v119;
            v77 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v157 forKeys:&v156 count:1];
            v78 = v118;
            v79 = v72;
            v28 = v137;
            v117 = v77;
            v27 = 0;
            *error = [v78 initWithDomain:v79 code:2 userInfo:?];
            v8 = v73;
            v7 = v129;
            v26 = v133;
            goto LABEL_37;
          }

          v27 = 0;
LABEL_126:
          v26 = v133;
          v28 = v137;
          goto LABEL_38;
        }

        selfCopy8 = self;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v39 = v13;
          v144 = 0;
          v132 = [[BMIntelligenceEngineInteractionSchemaType alloc] initWithJSONDictionary:v39 error:&v144];
          v40 = v144;
          if (!v40)
          {

            goto LABEL_13;
          }

          v41 = v39;
          if (error)
          {
            v40 = v40;
            *error = v40;
          }

          v27 = 0;
        }

        else
        {
          if (!error)
          {
            v27 = 0;
            v28 = v137;
            v26 = v133;
            v9 = v11;
            goto LABEL_80;
          }

          v122 = objc_alloc(MEMORY[0x1E696ABC0]);
          v55 = *MEMORY[0x1E698F240];
          v160 = *MEMORY[0x1E696A578];
          errorCopy = error;
          v57 = v10;
          v58 = objc_alloc(MEMORY[0x1E696AEC0]);
          v103 = objc_opt_class();
          v59 = v58;
          v10 = v57;
          v132 = [v59 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v103, @"schema"];
          v161 = v132;
          v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v161 forKeys:&v160 count:1];
          v27 = 0;
          *errorCopy = [v122 initWithDomain:v55 code:2 userInfo:v41];
        }

        v28 = v137;
        v26 = v133;
        v9 = v11;
        v14 = v41;
        self = selfCopy8;
        goto LABEL_79;
      }

      if (error)
      {
        errorCopy2 = error;
        v136 = objc_alloc(MEMORY[0x1E696ABC0]);
        v134 = *MEMORY[0x1E698F240];
        v162 = *MEMORY[0x1E696A578];
        v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"device"];
        v163 = v26;
        v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v163 forKeys:&v162 count:1];
        v52 = v136;
        v135 = v51;
        v27 = 0;
        *errorCopy2 = [v52 initWithDomain:v134 code:2 userInfo:?];
        v28 = v137;
LABEL_80:

LABEL_81:
        goto LABEL_82;
      }

      v27 = 0;
      v28 = v137;
LABEL_103:
      v7 = v128;
      goto LABEL_81;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v8;
      v146 = 0;
      v9 = [[BMIntelligenceEngineInteractionEmpty alloc] initWithJSONDictionary:v10 error:&v146];
      v30 = v146;
      if (v30)
      {
        if (error)
        {
          v30 = v30;
          *error = v30;
        }

        v27 = 0;
        v28 = v137;
        goto LABEL_81;
      }

      goto LABEL_7;
    }

    if (error)
    {
      selfCopy9 = self;
      v43 = objc_alloc(MEMORY[0x1E696ABC0]);
      v44 = *MEMORY[0x1E698F240];
      v164 = *MEMORY[0x1E696A578];
      v128 = v7;
      v45 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"primitive"];
      v165 = v45;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v165 forKeys:&v164 count:1];
      v46 = v43;
      self = selfCopy9;
      v9 = v45;
      v47 = v44;
      v28 = v137;
      v27 = 0;
      *error = [v46 initWithDomain:v47 code:2 userInfo:v10];
      goto LABEL_103;
    }

    goto LABEL_63;
  }

  if (!error)
  {
    v27 = 0;
    goto LABEL_83;
  }

  selfCopy10 = self;
  v34 = objc_alloc(MEMORY[0x1E696ABC0]);
  v35 = *MEMORY[0x1E698F240];
  v166 = *MEMORY[0x1E696A578];
  v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"unknown"];
  v167[0] = v36;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v167 forKeys:&v166 count:1];
  v37 = v34;
  self = selfCopy10;
  v38 = v35;
  v28 = v36;
  v27 = 0;
  *error = [v37 initWithDomain:v38 code:2 userInfo:v8];
LABEL_82:

LABEL_83:
  return v27;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMIntelligenceEngineInteractionCandidateType *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_unknown)
  {
    PBDataWriterPlaceMark();
    [(BMIntelligenceEngineInteractionEmpty *)self->_unknown writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_primitive)
  {
    PBDataWriterPlaceMark();
    [(BMIntelligenceEngineInteractionEmpty *)self->_primitive writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_device)
  {
    PBDataWriterPlaceMark();
    [(BMIntelligenceEngineInteractionDeviceType *)self->_device writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_schema)
  {
    PBDataWriterPlaceMark();
    [(BMIntelligenceEngineInteractionSchemaType *)self->_schema writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_tool)
  {
    PBDataWriterPlaceMark();
    [(BMIntelligenceEngineInteractionToolType *)self->_tool writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_app)
  {
    PBDataWriterPlaceMark();
    [(BMIntelligenceEngineInteractionAppType *)self->_app writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_file)
  {
    PBDataWriterPlaceMark();
    [(BMIntelligenceEngineInteractionFileType *)self->_file writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_person)
  {
    PBDataWriterPlaceMark();
    [(BMIntelligenceEngineInteractionPersonType *)self->_person writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_placemark)
  {
    PBDataWriterPlaceMark();
    [(BMIntelligenceEngineInteractionPlacemarkType *)self->_placemark writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_custom)
  {
    PBDataWriterPlaceMark();
    [(BMIntelligenceEngineInteractionCustomType *)self->_custom writeTo:toCopy];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v22.receiver = self;
  v22.super_class = BMIntelligenceEngineInteractionCandidateType;
  v5 = [(BMEventBase *)&v22 init];
  if (!v5)
  {
    goto LABEL_68;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v23) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v23 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v23 & 0x7F) << v7;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        if (v8++ >= 9)
        {
          v14 = 0;
          goto LABEL_16;
        }
      }

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        break;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) > 5)
      {
        if (v15 <= 7)
        {
          if (v15 == 6)
          {
            v23 = 0;
            v24 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_67;
            }

            v16 = [[BMIntelligenceEngineInteractionAppType alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_67;
            }

            v17 = 64;
            goto LABEL_61;
          }

          if (v15 == 7)
          {
            v23 = 0;
            v24 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_67;
            }

            v16 = [[BMIntelligenceEngineInteractionFileType alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_67;
            }

            v17 = 72;
            goto LABEL_61;
          }
        }

        else
        {
          switch(v15)
          {
            case 8:
              v23 = 0;
              v24 = 0;
              if (!PBReaderPlaceMark())
              {
                goto LABEL_67;
              }

              v16 = [[BMIntelligenceEngineInteractionPersonType alloc] initByReadFrom:fromCopy];
              if (!v16)
              {
                goto LABEL_67;
              }

              v17 = 80;
              goto LABEL_61;
            case 9:
              v23 = 0;
              v24 = 0;
              if (!PBReaderPlaceMark())
              {
                goto LABEL_67;
              }

              v16 = [[BMIntelligenceEngineInteractionPlacemarkType alloc] initByReadFrom:fromCopy];
              if (!v16)
              {
                goto LABEL_67;
              }

              v17 = 88;
              goto LABEL_61;
            case 0xA:
              v23 = 0;
              v24 = 0;
              if (!PBReaderPlaceMark())
              {
                goto LABEL_67;
              }

              v16 = [[BMIntelligenceEngineInteractionCustomType alloc] initByReadFrom:fromCopy];
              if (!v16)
              {
                goto LABEL_67;
              }

              v17 = 96;
              goto LABEL_61;
          }
        }
      }

      else if (v15 <= 2)
      {
        if (v15 == 1)
        {
          v23 = 0;
          v24 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_67;
          }

          v16 = [[BMIntelligenceEngineInteractionEmpty alloc] initByReadFrom:fromCopy];
          if (!v16)
          {
            goto LABEL_67;
          }

          v17 = 24;
          goto LABEL_61;
        }

        if (v15 == 2)
        {
          v23 = 0;
          v24 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_67;
          }

          v16 = [[BMIntelligenceEngineInteractionEmpty alloc] initByReadFrom:fromCopy];
          if (!v16)
          {
            goto LABEL_67;
          }

          v17 = 32;
          goto LABEL_61;
        }
      }

      else
      {
        switch(v15)
        {
          case 3:
            v23 = 0;
            v24 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_67;
            }

            v16 = [[BMIntelligenceEngineInteractionDeviceType alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_67;
            }

            v17 = 40;
            goto LABEL_61;
          case 4:
            v23 = 0;
            v24 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_67;
            }

            v16 = [[BMIntelligenceEngineInteractionSchemaType alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_67;
            }

            v17 = 48;
            goto LABEL_61;
          case 5:
            v23 = 0;
            v24 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_67;
            }

            v16 = [[BMIntelligenceEngineInteractionToolType alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_67;
            }

            v17 = 56;
LABEL_61:
            v18 = *(&v5->super.super.isa + v17);
            *(&v5->super.super.isa + v17) = v16;

            PBReaderRecallMark();
            goto LABEL_62;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_67;
      }

LABEL_62:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_67:
    v20 = 0;
  }

  else
  {
LABEL_68:
    v20 = v5;
  }

  return v20;
}

- (NSString)description
{
  v15 = objc_alloc(MEMORY[0x1E696AEC0]);
  unknown = [(BMIntelligenceEngineInteractionCandidateType *)self unknown];
  primitive = [(BMIntelligenceEngineInteractionCandidateType *)self primitive];
  device = [(BMIntelligenceEngineInteractionCandidateType *)self device];
  schema = [(BMIntelligenceEngineInteractionCandidateType *)self schema];
  tool = [(BMIntelligenceEngineInteractionCandidateType *)self tool];
  v7 = [(BMIntelligenceEngineInteractionCandidateType *)self app];
  file = [(BMIntelligenceEngineInteractionCandidateType *)self file];
  person = [(BMIntelligenceEngineInteractionCandidateType *)self person];
  placemark = [(BMIntelligenceEngineInteractionCandidateType *)self placemark];
  custom = [(BMIntelligenceEngineInteractionCandidateType *)self custom];
  v12 = [v15 initWithFormat:@"BMIntelligenceEngineInteractionCandidateType with unknown: %@, primitive: %@, device: %@, schema: %@, tool: %@, app: %@, file: %@, person: %@, placemark: %@, custom: %@", unknown, primitive, device, schema, tool, v7, file, person, placemark, custom];

  return v12;
}

- (BMIntelligenceEngineInteractionCandidateType)initWithUnknown:(id)unknown primitive:(id)primitive device:(id)device schema:(id)schema tool:(id)tool app:(id)app file:(id)file person:(id)self0 placemark:(id)self1 custom:(id)self2
{
  unknownCopy = unknown;
  primitiveCopy = primitive;
  deviceCopy = device;
  schemaCopy = schema;
  schemaCopy2 = schema;
  toolCopy = tool;
  toolCopy2 = tool;
  appCopy = app;
  fileCopy = file;
  personCopy = person;
  placemarkCopy = placemark;
  customCopy = custom;
  v33.receiver = self;
  v33.super_class = BMIntelligenceEngineInteractionCandidateType;
  v22 = [(BMEventBase *)&v33 init];
  if (v22)
  {
    v22->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v22->_unknown, unknown);
    objc_storeStrong(&v22->_primitive, primitive);
    objc_storeStrong(&v22->_device, device);
    objc_storeStrong(&v22->_schema, schemaCopy);
    objc_storeStrong(&v22->_tool, toolCopy);
    objc_storeStrong(&v22->_app, app);
    objc_storeStrong(&v22->_file, file);
    objc_storeStrong(&v22->_person, person);
    objc_storeStrong(&v22->_placemark, placemark);
    objc_storeStrong(&v22->_custom, custom);
  }

  return v22;
}

+ (id)protoFields
{
  v14[10] = *MEMORY[0x1E69E9840];
  v13 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"unknown" number:1 type:14 subMessageClass:objc_opt_class()];
  v14[0] = v13;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"primitive" number:2 type:14 subMessageClass:objc_opt_class()];
  v14[1] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"device" number:3 type:14 subMessageClass:objc_opt_class()];
  v14[2] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"schema" number:4 type:14 subMessageClass:objc_opt_class()];
  v14[3] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"tool" number:5 type:14 subMessageClass:objc_opt_class()];
  v14[4] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"app" number:6 type:14 subMessageClass:objc_opt_class()];
  v14[5] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"file" number:7 type:14 subMessageClass:objc_opt_class()];
  v14[6] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"person" number:8 type:14 subMessageClass:objc_opt_class()];
  v14[7] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"placemark" number:9 type:14 subMessageClass:objc_opt_class()];
  v14[8] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"custom" number:10 type:14 subMessageClass:objc_opt_class()];
  v14[9] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:10];

  return v11;
}

+ (id)columns
{
  v16[10] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"unknown_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_388];
  v15 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"primitive_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_390];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"device_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_392];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"schema_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_394];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"tool_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_396];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"app_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_398];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"file_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_400];
  v8 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"person_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_402];
  v9 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"placemark_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_404];
  v10 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"custom_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_406];
  v16[0] = v2;
  v16[1] = v15;
  v16[2] = v3;
  v16[3] = v4;
  v11 = v4;
  v12 = v5;
  v16[4] = v5;
  v16[5] = v6;
  v16[6] = v7;
  v16[7] = v8;
  v16[8] = v9;
  v16[9] = v10;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:10];

  return v13;
}

id __55__BMIntelligenceEngineInteractionCandidateType_columns__block_invoke_10(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 custom];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __55__BMIntelligenceEngineInteractionCandidateType_columns__block_invoke_9(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 placemark];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __55__BMIntelligenceEngineInteractionCandidateType_columns__block_invoke_8(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 person];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __55__BMIntelligenceEngineInteractionCandidateType_columns__block_invoke_7(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 file];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __55__BMIntelligenceEngineInteractionCandidateType_columns__block_invoke_6(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 app];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __55__BMIntelligenceEngineInteractionCandidateType_columns__block_invoke_5(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 tool];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __55__BMIntelligenceEngineInteractionCandidateType_columns__block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 schema];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __55__BMIntelligenceEngineInteractionCandidateType_columns__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 device];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __55__BMIntelligenceEngineInteractionCandidateType_columns__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 primitive];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __55__BMIntelligenceEngineInteractionCandidateType_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 unknown];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v7 = [[v5 alloc] initWithData:dataCopy];

    v8 = [[BMIntelligenceEngineInteractionCandidateType alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end