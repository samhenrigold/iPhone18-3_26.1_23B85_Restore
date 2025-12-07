@interface BMLocationHashedCoordinates
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMLocationHashedCoordinates)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMLocationHashedCoordinates)initWithLocationHashAt300Meters:(id)meters locationHashAt2500Meters:(id)at2500Meters locationHashAt156Kilometers:(id)kilometers floor:(id)floor speedBucket:(int)bucket altitudeBucket:(int)altitudeBucket distanceBucketFromHome:(int)home distanceBucketFromWork:(int)self0 distanceBucketFromGym:(int)self1 distanceBucketFromSchool:(int)self2;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMLocationHashedCoordinates

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if ((!-[BMLocationHashedCoordinates hasLocationHashAt300Meters](self, "hasLocationHashAt300Meters") && ![v5 hasLocationHashAt300Meters] || -[BMLocationHashedCoordinates hasLocationHashAt300Meters](self, "hasLocationHashAt300Meters") && objc_msgSend(v5, "hasLocationHashAt300Meters") && (v6 = -[BMLocationHashedCoordinates locationHashAt300Meters](self, "locationHashAt300Meters"), v6 == objc_msgSend(v5, "locationHashAt300Meters"))) && (!-[BMLocationHashedCoordinates hasLocationHashAt2500Meters](self, "hasLocationHashAt2500Meters") && !objc_msgSend(v5, "hasLocationHashAt2500Meters") || -[BMLocationHashedCoordinates hasLocationHashAt2500Meters](self, "hasLocationHashAt2500Meters") && objc_msgSend(v5, "hasLocationHashAt2500Meters") && (v7 = -[BMLocationHashedCoordinates locationHashAt2500Meters](self, "locationHashAt2500Meters"), v7 == objc_msgSend(v5, "locationHashAt2500Meters"))) && (!-[BMLocationHashedCoordinates hasLocationHashAt156Kilometers](self, "hasLocationHashAt156Kilometers") && !objc_msgSend(v5, "hasLocationHashAt156Kilometers") || -[BMLocationHashedCoordinates hasLocationHashAt156Kilometers](self, "hasLocationHashAt156Kilometers") && objc_msgSend(v5, "hasLocationHashAt156Kilometers") && (v8 = -[BMLocationHashedCoordinates locationHashAt156Kilometers](self, "locationHashAt156Kilometers"), v8 == objc_msgSend(v5, "locationHashAt156Kilometers"))) && (!-[BMLocationHashedCoordinates hasFloor](self, "hasFloor") && !objc_msgSend(v5, "hasFloor") || -[BMLocationHashedCoordinates hasFloor](self, "hasFloor") && objc_msgSend(v5, "hasFloor") && (v9 = -[BMLocationHashedCoordinates floor](self, "floor"), v9 == objc_msgSend(v5, "floor"))) && (v10 = -[BMLocationHashedCoordinates speedBucket](self, "speedBucket"), v10 == objc_msgSend(v5, "speedBucket")) && (v11 = -[BMLocationHashedCoordinates altitudeBucket](self, "altitudeBucket"), v11 == objc_msgSend(v5, "altitudeBucket")) && (v12 = -[BMLocationHashedCoordinates distanceBucketFromHome](self, "distanceBucketFromHome"), v12 == objc_msgSend(v5, "distanceBucketFromHome")) && (v13 = -[BMLocationHashedCoordinates distanceBucketFromWork](self, "distanceBucketFromWork"), v13 == objc_msgSend(v5, "distanceBucketFromWork")) && (v14 = -[BMLocationHashedCoordinates distanceBucketFromGym](self, "distanceBucketFromGym"), v14 == objc_msgSend(v5, "distanceBucketFromGym")))
    {
      distanceBucketFromSchool = [(BMLocationHashedCoordinates *)self distanceBucketFromSchool];
      v16 = distanceBucketFromSchool == [v5 distanceBucketFromSchool];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)jsonDictionary
{
  v37[10] = *MEMORY[0x1E69E9840];
  if ([(BMLocationHashedCoordinates *)self hasLocationHashAt300Meters])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMLocationHashedCoordinates locationHashAt300Meters](self, "locationHashAt300Meters")}];
  }

  else
  {
    v3 = 0;
  }

  if ([(BMLocationHashedCoordinates *)self hasLocationHashAt2500Meters])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMLocationHashedCoordinates locationHashAt2500Meters](self, "locationHashAt2500Meters")}];
  }

  else
  {
    v4 = 0;
  }

  if ([(BMLocationHashedCoordinates *)self hasLocationHashAt156Kilometers])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMLocationHashedCoordinates locationHashAt156Kilometers](self, "locationHashAt156Kilometers")}];
  }

  else
  {
    v5 = 0;
  }

  if ([(BMLocationHashedCoordinates *)self hasFloor])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLocationHashedCoordinates floor](self, "floor")}];
  }

  else
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLocationHashedCoordinates speedBucket](self, "speedBucket")}];
  v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLocationHashedCoordinates altitudeBucket](self, "altitudeBucket")}];
  v35 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLocationHashedCoordinates distanceBucketFromHome](self, "distanceBucketFromHome")}];
  v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLocationHashedCoordinates distanceBucketFromWork](self, "distanceBucketFromWork")}];
  v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLocationHashedCoordinates distanceBucketFromGym](self, "distanceBucketFromGym")}];
  v11 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLocationHashedCoordinates distanceBucketFromSchool](self, "distanceBucketFromSchool")}];
  v36[0] = @"locationHashAt300Meters";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v29 = null;
  v37[0] = null;
  v36[1] = @"locationHashAt2500Meters";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = null2;
  v37[1] = null2;
  v36[2] = @"locationHashAt156Kilometers";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = v3;
  v27 = null3;
  v37[2] = null3;
  v36[3] = @"floor";
  null4 = v6;
  if (!v6)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = v4;
  v26 = null4;
  v37[3] = null4;
  v36[4] = @"speedBucket";
  null5 = v7;
  if (!v7)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = v5;
  v25 = null5;
  v37[4] = null5;
  v36[5] = @"altitudeBucket";
  null6 = v8;
  if (!v8)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = v6;
  v37[5] = null6;
  v36[6] = @"distanceBucketFromHome";
  null7 = v35;
  if (!v35)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v19 = v7;
  v37[6] = null7;
  v36[7] = @"distanceBucketFromWork";
  null8 = v9;
  if (!v9)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = v8;
  v37[7] = null8;
  v36[8] = @"distanceBucketFromGym";
  null9 = v10;
  if (!v10)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v37[8] = null9;
  v36[9] = @"distanceBucketFromSchool";
  null10 = v11;
  if (!v11)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v37[9] = null10;
  v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:10];
  if (v11)
  {
    if (v10)
    {
      goto LABEL_35;
    }
  }

  else
  {

    if (v10)
    {
      goto LABEL_35;
    }
  }

LABEL_35:
  if (!v9)
  {
  }

  if (!v35)
  {
  }

  if (!v21)
  {
  }

  if (!v19)
  {
  }

  if (!v31)
  {
  }

  if (v32)
  {
    if (v33)
    {
      goto LABEL_47;
    }

LABEL_54:

    if (v34)
    {
      goto LABEL_48;
    }

    goto LABEL_55;
  }

  if (!v33)
  {
    goto LABEL_54;
  }

LABEL_47:
  if (v34)
  {
    goto LABEL_48;
  }

LABEL_55:

LABEL_48:

  return v30;
}

- (BMLocationHashedCoordinates)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v137[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v117 = [dictionaryCopy objectForKeyedSubscript:@"locationHashAt300Meters"];
  if (!v117 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v115 = 0;
LABEL_4:
    v6 = [dictionaryCopy objectForKeyedSubscript:@"locationHashAt2500Meters"];
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v26 = 0;
          goto LABEL_82;
        }

        v29 = objc_alloc(MEMORY[0x1E696ABC0]);
        v30 = *MEMORY[0x1E698F240];
        v134 = *MEMORY[0x1E696A578];
        v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"locationHashAt2500Meters"];
        v135 = v31;
        v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v135 forKeys:&v134 count:1];
        v32 = [v29 initWithDomain:v30 code:2 userInfo:v7];
        v26 = 0;
        errorCopy = error;
        error = 0;
        *errorCopy = v32;
        goto LABEL_81;
      }

      v110 = v6;
    }

    else
    {
      v110 = 0;
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"locationHashAt156Kilometers"];
    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v31 = 0;
          v26 = v110;
          goto LABEL_81;
        }

        v34 = objc_alloc(MEMORY[0x1E696ABC0]);
        v35 = *MEMORY[0x1E698F240];
        v132 = *MEMORY[0x1E696A578];
        errorCopy2 = error;
        v37 = v7;
        v38 = objc_alloc(MEMORY[0x1E696AEC0]);
        v93 = objc_opt_class();
        v39 = v38;
        v7 = v37;
        v114 = [v39 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v93, @"locationHashAt156Kilometers"];
        v133 = v114;
        v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v133 forKeys:&v132 count:1];
        v41 = v34;
        v9 = v40;
        v31 = 0;
        error = 0;
        *errorCopy2 = [v41 initWithDomain:v35 code:2 userInfo:v40];
        v26 = v110;
LABEL_80:

LABEL_81:
        goto LABEL_82;
      }

      v108 = v7;
    }

    else
    {
      v108 = 0;
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"floor"];
    v113 = v8;
    if (v8 && (v9 = v8, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v114 = 0;
          v26 = v110;
          v31 = v108;
          goto LABEL_80;
        }

        v43 = objc_alloc(MEMORY[0x1E696ABC0]);
        v44 = *MEMORY[0x1E698F240];
        v130 = *MEMORY[0x1E696A578];
        errorCopy3 = error;
        v46 = v7;
        v47 = objc_alloc(MEMORY[0x1E696AEC0]);
        v94 = objc_opt_class();
        v48 = v47;
        v7 = v46;
        v111 = [v48 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v94, @"floor"];
        v131 = v111;
        v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v131 forKeys:&v130 count:1];
        v50 = v43;
        v9 = v113;
        v106 = v49;
        v114 = 0;
        error = 0;
        *errorCopy3 = [v50 initWithDomain:v44 code:2 userInfo:?];
        v26 = v110;
        v31 = v108;
        goto LABEL_79;
      }

      v114 = v9;
    }

    else
    {
      v114 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"speedBucket"];
    v106 = v10;
    v107 = v6;
    if (v10 && (v11 = v10, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v111 = v11;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v111 = 0;
            v31 = v108;
            v26 = v110;
            v9 = v113;
            goto LABEL_79;
          }

          v57 = objc_alloc(MEMORY[0x1E696ABC0]);
          v58 = *MEMORY[0x1E698F240];
          v128 = *MEMORY[0x1E696A578];
          v59 = v7;
          v60 = objc_alloc(MEMORY[0x1E696AEC0]);
          v96 = objc_opt_class();
          v61 = v60;
          v7 = v59;
          v109 = [v61 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", v96, @"speedBucket"];
          v129 = v109;
          v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v129 forKeys:&v128 count:1];
          v62 = [v57 initWithDomain:v58 code:2 userInfo:v12];
          v111 = 0;
          errorCopy4 = error;
          error = 0;
          *errorCopy4 = v62;
          goto LABEL_102;
        }

        v111 = [MEMORY[0x1E696AD98] numberWithInt:BMLocationHashedCoordinatesSpeedRangeFromString(v11)];
      }
    }

    else
    {
      v111 = 0;
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"altitudeBucket"];
    if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v109 = 0;
      goto LABEL_19;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v109 = v12;
      goto LABEL_19;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v109 = [MEMORY[0x1E696AD98] numberWithInt:BMLocationHashedCoordinatesAltitudeRangeFromString(v12)];
LABEL_19:
      v13 = [dictionaryCopy objectForKeyedSubscript:@"distanceBucketFromHome"];
      v103 = v13;
      if (!v13 || (v14 = v13, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v112 = 0;
        goto LABEL_22;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v112 = v14;
        goto LABEL_22;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v112 = [MEMORY[0x1E696AD98] numberWithInt:BMLocationHashedCoordinatesDistanceRangeFromString(v14)];
LABEL_22:
        v15 = [dictionaryCopy objectForKeyedSubscript:@"distanceBucketFromWork"];
        v101 = v7;
        v102 = v15;
        if (!v15 || (v16 = v15, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v105 = 0;
LABEL_25:
          v17 = [dictionaryCopy objectForKeyedSubscript:@"distanceBucketFromGym"];
          v9 = v113;
          v100 = v12;
          if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              errorCopy8 = error;
              v104 = v17;
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (!error)
                {
                  v104 = 0;
                  v31 = v108;
                  v26 = v110;
                  goto LABEL_75;
                }

                errorCopy6 = error;
                v86 = objc_alloc(MEMORY[0x1E696ABC0]);
                v87 = *MEMORY[0x1E698F240];
                v120 = *MEMORY[0x1E696A578];
                v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"distanceBucketFromGym"];
                v121 = v23;
                v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v121 forKeys:&v120 count:1];
                v88 = [v86 initWithDomain:v87 code:2 userInfo:v19];
                v104 = 0;
                error = 0;
                *errorCopy6 = v88;
                v31 = v108;
                v26 = v110;
                goto LABEL_74;
              }

              errorCopy8 = error;
              v104 = [MEMORY[0x1E696AD98] numberWithInt:BMLocationHashedCoordinatesDistanceRangeFromString(v17)];
            }
          }

          else
          {
            errorCopy8 = error;
            v104 = 0;
          }

          v19 = [dictionaryCopy objectForKeyedSubscript:@"distanceBucketFromSchool"];
          v99 = v17;
          if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v21 = dictionaryCopy;
              selfCopy3 = self;
              v20 = v19;
              v42 = v19;
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (errorCopy8)
                {
                  v89 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v90 = *MEMORY[0x1E698F240];
                  v118 = *MEMORY[0x1E696A578];
                  v91 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"distanceBucketFromSchool"];
                  v119 = v91;
                  v92 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v119 forKeys:&v118 count:1];
                  *errorCopy8 = [v89 initWithDomain:v90 code:2 userInfo:v92];
                }

                v23 = 0;
                error = 0;
                v26 = v110;
                v31 = v108;
                v9 = v113;
                goto LABEL_74;
              }

              v21 = dictionaryCopy;
              selfCopy3 = self;
              v20 = v19;
              v42 = [MEMORY[0x1E696AD98] numberWithInt:BMLocationHashedCoordinatesDistanceRangeFromString(v19)];
            }

            v23 = v42;
          }

          else
          {
            v20 = v19;
            v21 = dictionaryCopy;
            selfCopy3 = self;
            v23 = 0;
          }

          intValue = [v111 intValue];
          intValue2 = [v109 intValue];
          intValue3 = [v112 intValue];
          intValue4 = [v105 intValue];
          intValue5 = [v104 intValue];
          v98 = __PAIR64__([v23 intValue], intValue5);
          v95 = __PAIR64__(intValue4, intValue3);
          v26 = v110;
          v31 = v108;
          error = [BMLocationHashedCoordinates initWithLocationHashAt300Meters:selfCopy3 locationHashAt2500Meters:"initWithLocationHashAt300Meters:locationHashAt2500Meters:locationHashAt156Kilometers:floor:speedBucket:altitudeBucket:distanceBucketFromHome:distanceBucketFromWork:distanceBucketFromGym:distanceBucketFromSchool:" locationHashAt156Kilometers:v115 floor:v110 speedBucket:v108 altitudeBucket:v114 distanceBucketFromHome:intValue distanceBucketFromWork:intValue2 distanceBucketFromGym:v95 distanceBucketFromSchool:v98];
          self = error;
          v6 = v107;
          v9 = v113;
          dictionaryCopy = v21;
          v17 = v99;
          v19 = v20;
LABEL_74:

          v12 = v100;
LABEL_75:

          v7 = v101;
LABEL_76:

LABEL_77:
LABEL_78:

LABEL_79:
          goto LABEL_80;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v105 = v16;
          goto LABEL_25;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v105 = [MEMORY[0x1E696AD98] numberWithInt:BMLocationHashedCoordinatesDistanceRangeFromString(v16)];
          goto LABEL_25;
        }

        if (error)
        {
          v76 = objc_alloc(MEMORY[0x1E696ABC0]);
          errorCopy9 = error;
          v78 = *MEMORY[0x1E698F240];
          v122 = *MEMORY[0x1E696A578];
          v79 = v12;
          v80 = objc_alloc(MEMORY[0x1E696AEC0]);
          v97 = objc_opt_class();
          v81 = v80;
          v12 = v79;
          v104 = [v81 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", v97, @"distanceBucketFromWork"];
          v123 = v104;
          v82 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v123 forKeys:&v122 count:1];
          v83 = v76;
          v17 = v82;
          v84 = [v83 initWithDomain:v78 code:2 userInfo:v82];
          v105 = 0;
          error = 0;
          *errorCopy9 = v84;
          v31 = v108;
          v26 = v110;
          v9 = v113;
          goto LABEL_75;
        }

        v105 = 0;
        v26 = v110;
LABEL_106:
        v31 = v108;
        v9 = v113;
        goto LABEL_76;
      }

      if (error)
      {
        v70 = objc_alloc(MEMORY[0x1E696ABC0]);
        v71 = v7;
        v72 = *MEMORY[0x1E698F240];
        v124 = *MEMORY[0x1E696A578];
        errorCopy10 = error;
        v105 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"distanceBucketFromHome"];
        v125 = v105;
        v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v125 forKeys:&v124 count:1];
        v75 = v72;
        v7 = v71;
        v102 = v74;
        v112 = 0;
        error = 0;
        *errorCopy10 = [v70 initWithDomain:v75 code:2 userInfo:?];
        v6 = v107;
        v26 = v110;
        goto LABEL_106;
      }

      v112 = 0;
LABEL_104:
      v31 = v108;
      v26 = v110;
      v9 = v113;
      goto LABEL_77;
    }

    if (error)
    {
      v64 = objc_alloc(MEMORY[0x1E696ABC0]);
      errorCopy11 = error;
      v66 = v7;
      v67 = *MEMORY[0x1E698F240];
      v126 = *MEMORY[0x1E696A578];
      v112 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"altitudeBucket"];
      v127 = v112;
      v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v127 forKeys:&v126 count:1];
      v69 = v67;
      v7 = v66;
      v103 = v68;
      v109 = 0;
      error = 0;
      *errorCopy11 = [v64 initWithDomain:v69 code:2 userInfo:?];
      goto LABEL_104;
    }

    v109 = 0;
LABEL_102:
    v6 = v107;
    v31 = v108;
    v26 = v110;
    v9 = v113;
    goto LABEL_78;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v115 = v117;
    goto LABEL_4;
  }

  if (error)
  {
    v24 = objc_alloc(MEMORY[0x1E696ABC0]);
    v25 = *MEMORY[0x1E698F240];
    v136 = *MEMORY[0x1E696A578];
    v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"locationHashAt300Meters"];
    v137[0] = v26;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v137 forKeys:&v136 count:1];
    v27 = [v24 initWithDomain:v25 code:2 userInfo:v6];
    v115 = 0;
    errorCopy12 = error;
    error = 0;
    *errorCopy12 = v27;
LABEL_82:

    goto LABEL_83;
  }

  v115 = 0;
LABEL_83:

  return error;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMLocationHashedCoordinates *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_hasLocationHashAt300Meters)
  {
    PBDataWriterWriteUint64Field();
  }

  if (self->_hasLocationHashAt2500Meters)
  {
    PBDataWriterWriteUint64Field();
  }

  if (self->_hasLocationHashAt156Kilometers)
  {
    PBDataWriterWriteUint64Field();
  }

  if (self->_hasFloor)
  {
    PBDataWriterWriteInt32Field();
  }

  PBDataWriterWriteUint32Field();
  PBDataWriterWriteUint32Field();
  PBDataWriterWriteUint32Field();
  PBDataWriterWriteUint32Field();
  PBDataWriterWriteUint32Field();
  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v79.receiver = self;
  v79.super_class = BMLocationHashedCoordinates;
  v5 = [(BMEventBase *)&v79 init];
  if (!v5)
  {
    goto LABEL_168;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_166;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v80 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v80 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v80 & 0x7F) << v7;
        if ((v80 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        v13 = v8++ >= 9;
        if (v13)
        {
          v14 = 0;
          goto LABEL_16;
        }
      }

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        goto LABEL_166;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) > 9)
      {
        break;
      }

      if (v15 <= 2)
      {
        if (v15 == 1)
        {
          v40 = 0;
          v41 = 0;
          v42 = 0;
          v5->_hasLocationHashAt300Meters = 1;
          while (1)
          {
            v80 = 0;
            v43 = [fromCopy position] + 1;
            if (v43 >= [fromCopy position] && (v44 = objc_msgSend(fromCopy, "position") + 1, v44 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v80 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v42 = (((v80 & 0x7F) << v40) | v42);
            if ((v80 & 0x80) == 0)
            {
              break;
            }

            v40 += 7;
            v13 = v41++ >= 9;
            if (v13)
            {
              v34 = 0;
              goto LABEL_134;
            }
          }

          if ([fromCopy hasError])
          {
            v34 = 0;
          }

          else
          {
            v34 = v42;
          }

LABEL_134:
          v74 = 56;
        }

        else
        {
          if (v15 != 2)
          {
            goto LABEL_121;
          }

          v28 = 0;
          v29 = 0;
          v30 = 0;
          v5->_hasLocationHashAt2500Meters = 1;
          while (1)
          {
            v80 = 0;
            v31 = [fromCopy position] + 1;
            if (v31 >= [fromCopy position] && (v32 = objc_msgSend(fromCopy, "position") + 1, v32 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v80 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v30 = (((v80 & 0x7F) << v28) | v30);
            if ((v80 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v13 = v29++ >= 9;
            if (v13)
            {
              v34 = 0;
              goto LABEL_126;
            }
          }

          if ([fromCopy hasError])
          {
            v34 = 0;
          }

          else
          {
            v34 = v30;
          }

LABEL_126:
          v74 = 64;
        }
      }

      else
      {
        if (v15 != 3)
        {
          if (v15 == 8)
          {
            v62 = 0;
            v63 = 0;
            v64 = 0;
            v5->_hasFloor = 1;
            while (1)
            {
              v80 = 0;
              v65 = [fromCopy position] + 1;
              if (v65 >= [fromCopy position] && (v66 = objc_msgSend(fromCopy, "position") + 1, v66 <= objc_msgSend(fromCopy, "length")))
              {
                data4 = [fromCopy data];
                [data4 getBytes:&v80 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v64 |= (v80 & 0x7F) << v62;
              if ((v80 & 0x80) == 0)
              {
                break;
              }

              v62 += 7;
              v13 = v63++ >= 9;
              if (v13)
              {
                v68 = 0;
                goto LABEL_159;
              }
            }

            if ([fromCopy hasError])
            {
              v68 = 0;
            }

            else
            {
              v68 = v64;
            }

LABEL_159:
            v5->_floor = v68;
            goto LABEL_165;
          }

          if (v15 != 9)
          {
            goto LABEL_121;
          }

          v16 = 0;
          v17 = 0;
          v18 = 0;
          while (1)
          {
            v80 = 0;
            v19 = [fromCopy position] + 1;
            if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
            {
              data5 = [fromCopy data];
              [data5 getBytes:&v80 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v18 |= (v80 & 0x7F) << v16;
            if ((v80 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v22 = v17++ > 8;
            if (v22)
            {
              goto LABEL_150;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v18 > 0xA)
          {
LABEL_150:
            LODWORD(v18) = 0;
          }

          v75 = 32;
          goto LABEL_164;
        }

        v51 = 0;
        v52 = 0;
        v53 = 0;
        v5->_hasLocationHashAt156Kilometers = 1;
        while (1)
        {
          v80 = 0;
          v54 = [fromCopy position] + 1;
          if (v54 >= [fromCopy position] && (v55 = objc_msgSend(fromCopy, "position") + 1, v55 <= objc_msgSend(fromCopy, "length")))
          {
            data6 = [fromCopy data];
            [data6 getBytes:&v80 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v53 = (((v80 & 0x7F) << v51) | v53);
          if ((v80 & 0x80) == 0)
          {
            break;
          }

          v51 += 7;
          v13 = v52++ >= 9;
          if (v13)
          {
            v34 = 0;
            goto LABEL_142;
          }
        }

        if ([fromCopy hasError])
        {
          v34 = 0;
        }

        else
        {
          v34 = v53;
        }

LABEL_142:
        v74 = 72;
      }

      *(&v5->super.super.isa + v74) = v34;
LABEL_165:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_166;
      }
    }

    if (v15 <= 11)
    {
      if (v15 == 10)
      {
        v46 = 0;
        v47 = 0;
        v18 = 0;
        while (1)
        {
          v80 = 0;
          v48 = [fromCopy position] + 1;
          if (v48 >= [fromCopy position] && (v49 = objc_msgSend(fromCopy, "position") + 1, v49 <= objc_msgSend(fromCopy, "length")))
          {
            data7 = [fromCopy data];
            [data7 getBytes:&v80 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v18 |= (v80 & 0x7F) << v46;
          if ((v80 & 0x80) == 0)
          {
            break;
          }

          v46 += 7;
          v22 = v47++ > 8;
          if (v22)
          {
            goto LABEL_137;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v18 > 9)
        {
LABEL_137:
          LODWORD(v18) = 0;
        }

        v75 = 36;
      }

      else
      {
        if (v15 != 11)
        {
LABEL_121:
          if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_167;
          }

          goto LABEL_165;
        }

        v35 = 0;
        v36 = 0;
        v18 = 0;
        while (1)
        {
          v80 = 0;
          v37 = [fromCopy position] + 1;
          if (v37 >= [fromCopy position] && (v38 = objc_msgSend(fromCopy, "position") + 1, v38 <= objc_msgSend(fromCopy, "length")))
          {
            data8 = [fromCopy data];
            [data8 getBytes:&v80 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v18 |= (v80 & 0x7F) << v35;
          if ((v80 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v22 = v36++ > 8;
          if (v22)
          {
            goto LABEL_129;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v18 > 9)
        {
LABEL_129:
          LODWORD(v18) = 0;
        }

        v75 = 40;
      }
    }

    else
    {
      switch(v15)
      {
        case 0xC:
          v57 = 0;
          v58 = 0;
          v18 = 0;
          while (1)
          {
            v80 = 0;
            v59 = [fromCopy position] + 1;
            if (v59 >= [fromCopy position] && (v60 = objc_msgSend(fromCopy, "position") + 1, v60 <= objc_msgSend(fromCopy, "length")))
            {
              data9 = [fromCopy data];
              [data9 getBytes:&v80 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v18 |= (v80 & 0x7F) << v57;
            if ((v80 & 0x80) == 0)
            {
              break;
            }

            v57 += 7;
            v22 = v58++ > 8;
            if (v22)
            {
              goto LABEL_146;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v18 > 9)
          {
LABEL_146:
            LODWORD(v18) = 0;
          }

          v75 = 44;
          break;
        case 0xD:
          v69 = 0;
          v70 = 0;
          v18 = 0;
          while (1)
          {
            v80 = 0;
            v71 = [fromCopy position] + 1;
            if (v71 >= [fromCopy position] && (v72 = objc_msgSend(fromCopy, "position") + 1, v72 <= objc_msgSend(fromCopy, "length")))
            {
              data10 = [fromCopy data];
              [data10 getBytes:&v80 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v18 |= (v80 & 0x7F) << v69;
            if ((v80 & 0x80) == 0)
            {
              break;
            }

            v69 += 7;
            v22 = v70++ > 8;
            if (v22)
            {
              goto LABEL_162;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v18 > 9)
          {
LABEL_162:
            LODWORD(v18) = 0;
          }

          v75 = 48;
          break;
        case 0xE:
          v23 = 0;
          v24 = 0;
          v18 = 0;
          while (1)
          {
            v80 = 0;
            v25 = [fromCopy position] + 1;
            if (v25 >= [fromCopy position] && (v26 = objc_msgSend(fromCopy, "position") + 1, v26 <= objc_msgSend(fromCopy, "length")))
            {
              data11 = [fromCopy data];
              [data11 getBytes:&v80 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v18 |= (v80 & 0x7F) << v23;
            if ((v80 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v22 = v24++ > 8;
            if (v22)
            {
              goto LABEL_154;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v18 > 9)
          {
LABEL_154:
            LODWORD(v18) = 0;
          }

          v75 = 52;
          break;
        default:
          goto LABEL_121;
      }
    }

LABEL_164:
    *(&v5->super.super.isa + v75) = v18;
    goto LABEL_165;
  }

LABEL_166:
  if ([fromCopy hasError])
  {
LABEL_167:
    v77 = 0;
  }

  else
  {
LABEL_168:
    v77 = v5;
  }

  return v77;
}

- (NSString)description
{
  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMLocationHashedCoordinates locationHashAt300Meters](self, "locationHashAt300Meters")}];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMLocationHashedCoordinates locationHashAt2500Meters](self, "locationHashAt2500Meters")}];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMLocationHashedCoordinates locationHashAt156Kilometers](self, "locationHashAt156Kilometers")}];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLocationHashedCoordinates floor](self, "floor")}];
  v7 = BMLocationHashedCoordinatesSpeedRangeAsString([(BMLocationHashedCoordinates *)self speedBucket]);
  v8 = BMLocationHashedCoordinatesAltitudeRangeAsString([(BMLocationHashedCoordinates *)self altitudeBucket]);
  v9 = BMLocationHashedCoordinatesDistanceRangeAsString([(BMLocationHashedCoordinates *)self distanceBucketFromHome]);
  v10 = BMLocationHashedCoordinatesDistanceRangeAsString([(BMLocationHashedCoordinates *)self distanceBucketFromWork]);
  v11 = BMLocationHashedCoordinatesDistanceRangeAsString([(BMLocationHashedCoordinates *)self distanceBucketFromGym]);
  v12 = BMLocationHashedCoordinatesDistanceRangeAsString([(BMLocationHashedCoordinates *)self distanceBucketFromSchool]);
  v15 = [v14 initWithFormat:@"BMLocationHashedCoordinates with locationHashAt300Meters: %@, locationHashAt2500Meters: %@, locationHashAt156Kilometers: %@, floor: %@, speedBucket: %@, altitudeBucket: %@, distanceBucketFromHome: %@, distanceBucketFromWork: %@, distanceBucketFromGym: %@, distanceBucketFromSchool: %@", v3, v4, v5, v6, v7, v8, v9, v10, v11, v12];

  return v15;
}

- (BMLocationHashedCoordinates)initWithLocationHashAt300Meters:(id)meters locationHashAt2500Meters:(id)at2500Meters locationHashAt156Kilometers:(id)kilometers floor:(id)floor speedBucket:(int)bucket altitudeBucket:(int)altitudeBucket distanceBucketFromHome:(int)home distanceBucketFromWork:(int)self0 distanceBucketFromGym:(int)self1 distanceBucketFromSchool:(int)self2
{
  metersCopy = meters;
  at2500MetersCopy = at2500Meters;
  kilometersCopy = kilometers;
  floorCopy = floor;
  v28.receiver = self;
  v28.super_class = BMLocationHashedCoordinates;
  v22 = [(BMEventBase *)&v28 init];
  if (v22)
  {
    v22->_dataVersion = [objc_opt_class() latestDataVersion];
    if (metersCopy)
    {
      v22->_hasLocationHashAt300Meters = 1;
      unsignedLongLongValue = [metersCopy unsignedLongLongValue];
    }

    else
    {
      unsignedLongLongValue = 0;
      v22->_hasLocationHashAt300Meters = 0;
    }

    v22->_locationHashAt300Meters = unsignedLongLongValue;
    if (at2500MetersCopy)
    {
      v22->_hasLocationHashAt2500Meters = 1;
      unsignedLongLongValue2 = [at2500MetersCopy unsignedLongLongValue];
    }

    else
    {
      unsignedLongLongValue2 = 0;
      v22->_hasLocationHashAt2500Meters = 0;
    }

    v22->_locationHashAt2500Meters = unsignedLongLongValue2;
    if (kilometersCopy)
    {
      v22->_hasLocationHashAt156Kilometers = 1;
      unsignedLongLongValue3 = [kilometersCopy unsignedLongLongValue];
    }

    else
    {
      unsignedLongLongValue3 = 0;
      v22->_hasLocationHashAt156Kilometers = 0;
    }

    v22->_locationHashAt156Kilometers = unsignedLongLongValue3;
    if (floorCopy)
    {
      v22->_hasFloor = 1;
      intValue = [floorCopy intValue];
    }

    else
    {
      v22->_hasFloor = 0;
      intValue = -1;
    }

    v22->_floor = intValue;
    v22->_speedBucket = bucket;
    v22->_altitudeBucket = altitudeBucket;
    v22->_distanceBucketFromHome = home;
    v22->_distanceBucketFromWork = work;
    v22->_distanceBucketFromGym = gym;
    v22->_distanceBucketFromSchool = school;
  }

  return v22;
}

+ (id)protoFields
{
  v18[14] = *MEMORY[0x1E69E9840];
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"locationHashAt300Meters" number:1 type:5 subMessageClass:0];
  v18[0] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"locationHashAt2500Meters" number:2 type:5 subMessageClass:0];
  v18[1] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"locationHashAt156Kilometers" number:3 type:5 subMessageClass:0];
  v18[2] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"distanceFromHomeOfCurrentLocationInMeters" number:4 type:1 subMessageClass:0];
  v18[3] = v14;
  v13 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"distanceFromWorkOfCurrentLocationInMeters" number:5 type:1 subMessageClass:0];
  v18[4] = v13;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"distanceFromSchoolOfCurrentLocationInMeters" number:6 type:1 subMessageClass:0];
  v18[5] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"distanceFromGymOfCurrentLocationInMeters" number:7 type:1 subMessageClass:0];
  v18[6] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"floor" number:8 type:2 subMessageClass:0];
  v18[7] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"speedBucket" number:9 type:4 subMessageClass:0];
  v18[8] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"altitudeBucket" number:10 type:4 subMessageClass:0];
  v18[9] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"distanceBucketFromHome" number:11 type:4 subMessageClass:0];
  v18[10] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"distanceBucketFromWork" number:12 type:4 subMessageClass:0];
  v18[11] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"distanceBucketFromGym" number:13 type:4 subMessageClass:0];
  v18[12] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"distanceBucketFromSchool" number:14 type:4 subMessageClass:0];
  v18[13] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:14];

  return v11;
}

+ (id)columns
{
  v18[14] = *MEMORY[0x1E69E9840];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"locationHashAt300Meters" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:5 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"locationHashAt2500Meters" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:5 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"locationHashAt156Kilometers" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:5 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"distanceFromHomeOfCurrentLocationInMeters" dataType:1 requestOnly:0 fieldNumber:4 protoDataType:1 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"distanceFromWorkOfCurrentLocationInMeters" dataType:1 requestOnly:0 fieldNumber:5 protoDataType:1 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"distanceFromSchoolOfCurrentLocationInMeters" dataType:1 requestOnly:0 fieldNumber:6 protoDataType:1 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"distanceFromGymOfCurrentLocationInMeters" dataType:1 requestOnly:0 fieldNumber:7 protoDataType:1 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"floor" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:2 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"speedBucket" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:4 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"altitudeBucket" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:4 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"distanceBucketFromHome" dataType:0 requestOnly:0 fieldNumber:11 protoDataType:4 convertedType:0];
  v12 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"distanceBucketFromWork" dataType:0 requestOnly:0 fieldNumber:12 protoDataType:4 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"distanceBucketFromGym" dataType:0 requestOnly:0 fieldNumber:13 protoDataType:4 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"distanceBucketFromSchool" dataType:0 requestOnly:0 fieldNumber:14 protoDataType:4 convertedType:0];
  v18[0] = v17;
  v18[1] = v16;
  v18[2] = v15;
  v18[3] = v14;
  v18[4] = v2;
  v18[5] = v3;
  v18[6] = v4;
  v18[7] = v5;
  v18[8] = v13;
  v18[9] = v6;
  v18[10] = v7;
  v18[11] = v12;
  v18[12] = v8;
  v18[13] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:14];

  return v11;
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

    v8 = [[BMLocationHashedCoordinates alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[6] = 0;
    }
  }

  return v4;
}

@end