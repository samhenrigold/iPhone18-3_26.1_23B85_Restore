@interface SRFaceMetrics
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (NSArray)partialFaceExpressions;
- (NSArray)wholeFaceExpressions;
- (NSString)description;
- (SRFaceMetrics)init;
- (SRFaceMetrics)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp;
- (SRFaceMetrics)initWithCoder:(id)coder;
- (SRFaceMetrics)initWithHAFacialMetricsPacket:(id)packet;
- (SRFaceMetrics)initWithVersion:(id)version sessionIdentifier:(id)identifier context:(unint64_t)context faceAnchor:(id)anchor wholeFaceExpressions:(id)expressions partialFaceExpressions:(id)faceExpressions;
- (SRFaceMetrics)initWithVersion:(id)version sessionIdentifier:(id)identifier context:(unint64_t)context faceIdentifier:(id)faceIdentifier trackingData:(id)data wholeFaceExpressions:(id)expressions partialFaceExpressions:(id)faceExpressions;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SRFaceMetrics

- (SRFaceMetrics)init
{
  [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];

  return 0;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    SRLogFaceMetrics = os_log_create("com.apple.SensorKit", "SRLogFaceMetrics");
  }
}

- (SRFaceMetrics)initWithVersion:(id)version sessionIdentifier:(id)identifier context:(unint64_t)context faceAnchor:(id)anchor wholeFaceExpressions:(id)expressions partialFaceExpressions:(id)faceExpressions
{
  v16.receiver = self;
  v16.super_class = SRFaceMetrics;
  v14 = [(SRFaceMetrics *)&v16 init];
  if (v14)
  {
    v14->_version = [version copy];
    v14->_sessionIdentifier = [identifier copy];
    v14->_context = context;
    v14->_faceAnchor = anchor;
    v14->_mutableWholeFaceExpressions = [expressions mutableCopy];
    v14->_mutablePartialFaceExpressions = [faceExpressions mutableCopy];
  }

  return v14;
}

- (SRFaceMetrics)initWithHAFacialMetricsPacket:(id)packet
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [SRFaceMetricsPacket packetWithData:packet];
  v5 = SRLogFaceMetrics;
  if (v4)
  {
    v6 = v4;
    if (os_log_type_enabled(SRLogFaceMetrics, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      version = [(SRFaceMetricsPacket *)v6 version];
      _os_log_impl(&dword_1C914D000, v5, OS_LOG_TYPE_INFO, "Legacy data support: got %@ version of HAFacialMetricsPacket", buf, 0xCu);
    }

    return [(SRFaceMetrics *)self initWithVersion:[(SRFaceMetricsPacket *)v6 version] sessionIdentifier:[(SRFaceMetricsPacket *)v6 sessionIdentifier] context:[(SRFaceMetricsPacket *)v6 context] faceIdentifier:[(SRFaceMetricsPacket *)v6 faceIdentifier] trackingData:[(SRFaceMetricsPacket *)v6 trackingData] wholeFaceExpressions:[(SRFaceMetricsPacket *)v6 wholeFaceExpressions] partialFaceExpressions:[(SRFaceMetricsPacket *)v6 partialFaceExpressions]];
  }

  else
  {
    if (os_log_type_enabled(SRLogFaceMetrics, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1C914D000, v5, OS_LOG_TYPE_FAULT, "Failed to create SRFaceMetricsPacket", buf, 2u);
    }

    return 0;
  }
}

- (SRFaceMetrics)initWithVersion:(id)version sessionIdentifier:(id)identifier context:(unint64_t)context faceIdentifier:(id)faceIdentifier trackingData:(id)data wholeFaceExpressions:(id)expressions partialFaceExpressions:(id)faceExpressions
{
  v15 = [objc_alloc(MEMORY[0x1E6986468]) initWithTrackingData:data anchorIdentifier:faceIdentifier];
  v16 = [objc_alloc(MEMORY[0x1E6986450]) initWithIdentifier:faceIdentifier faceTrackingData:v15];
  if (v16)
  {

    return [(SRFaceMetrics *)self initWithVersion:version sessionIdentifier:identifier context:context faceAnchor:v16 wholeFaceExpressions:expressions partialFaceExpressions:faceExpressions];
  }

  else
  {
    v18 = SRLogFaceMetrics;
    if (os_log_type_enabled(SRLogFaceMetrics, OS_LOG_TYPE_ERROR))
    {
      *v19 = 0;
      _os_log_error_impl(&dword_1C914D000, v18, OS_LOG_TYPE_ERROR, "Failed to create face anchor", v19, 2u);
    }

    return 0;
  }
}

- (NSArray)wholeFaceExpressions
{
  if (![(SRFaceMetrics *)self mutableWholeFaceExpressions])
  {
    return MEMORY[0x1E695E0F0];
  }

  v3 = MEMORY[0x1E695DEC8];
  mutableWholeFaceExpressions = [(SRFaceMetrics *)self mutableWholeFaceExpressions];

  return [v3 arrayWithArray:mutableWholeFaceExpressions];
}

- (NSArray)partialFaceExpressions
{
  if (![(SRFaceMetrics *)self mutablePartialFaceExpressions])
  {
    return MEMORY[0x1E695E0F0];
  }

  v3 = MEMORY[0x1E695DEC8];
  mutablePartialFaceExpressions = [(SRFaceMetrics *)self mutablePartialFaceExpressions];

  return [v3 arrayWithArray:mutablePartialFaceExpressions];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SRFaceMetrics;
  [(SRFaceMetrics *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [coder encodeObject:-[SRFaceMetrics version](self forKey:{"version"), @"version"}];
  [coder encodeObject:-[SRFaceMetrics sessionIdentifier](self forKey:{"sessionIdentifier"), @"sessionIdentifier"}];
  [coder encodeInteger:-[SRFaceMetrics context](self forKey:{"context"), @"context"}];
  [coder encodeObject:-[SRFaceMetrics faceAnchor](self forKey:{"faceAnchor"), @"faceAnchor"}];
  [coder encodeObject:-[SRFaceMetrics mutableWholeFaceExpressions](self forKey:{"mutableWholeFaceExpressions"), @"wholeFaceExpressions"}];
  mutablePartialFaceExpressions = [(SRFaceMetrics *)self mutablePartialFaceExpressions];

  [coder encodeObject:mutablePartialFaceExpressions forKey:@"partialFaceExpressions"];
}

- (SRFaceMetrics)initWithCoder:(id)coder
{
  v22 = *MEMORY[0x1E69E9840];
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"version"];
  v7 = [coder decodeIntegerForKey:@"context"];
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = [coder decodeObjectOfClasses:objc_msgSend(v8 forKey:{"setWithObjects:", v9, objc_opt_class(), 0), @"wholeFaceExpressions"}];
  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = [coder decodeObjectOfClasses:objc_msgSend(v11 forKey:{"setWithObjects:", v12, objc_opt_class(), 0), @"partialFaceExpressions"}];
  v14 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"sessionIdentifier"];
  if (!v14)
  {
    v18 = SRLogFaceMetrics;
    if (!os_log_type_enabled(SRLogFaceMetrics, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 138412290;
    v21 = 0;
    v19 = "Failed to encode the object. Session identifier:%@";
LABEL_13:
    _os_log_error_impl(&dword_1C914D000, v18, OS_LOG_TYPE_ERROR, v19, buf, 0xCu);
    return 0;
  }

  v15 = v14;
  v16 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"faceAnchor"];
  if (!v16)
  {
    v18 = SRLogFaceMetrics;
    if (!os_log_type_enabled(SRLogFaceMetrics, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 138412290;
    v21 = 0;
    v19 = "Failed to encode the object. Face anchor:%@";
    goto LABEL_13;
  }

  return [(SRFaceMetrics *)self initWithVersion:v6 sessionIdentifier:v15 context:v7 faceAnchor:v16 wholeFaceExpressions:v10 partialFaceExpressions:v13];
}

- (SRFaceMetrics)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp
{
  v19 = *MEMORY[0x1E69E9840];
  if (![representation length])
  {
LABEL_18:

    return 0;
  }

  if ([representation length] != 2348 && objc_msgSend(representation, "length") != 2352 && objc_msgSend(representation, "length") != 2384 && objc_msgSend(representation, "length") != 368 && objc_msgSend(representation, "length") != 424 && objc_msgSend(representation, "length") != 436)
  {
    v16.receiver = self;
    v16.super_class = SRFaceMetrics;
    result = [(SRFaceMetrics *)&v16 init];
    if (!result)
    {
      return result;
    }

    self = result;
    v15 = 0;
    v8 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:representation error:&v15];
    if (v8)
    {
      v9 = v8;
      v10 = objc_opt_class();
      if (v10 == objc_opt_class())
      {

        return v9;
      }

      v11 = SRLogFaceMetrics;
      if (os_log_type_enabled(SRLogFaceMetrics, OS_LOG_TYPE_FAULT))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        *buf = 138543362;
        v18 = v13;
        _os_log_fault_impl(&dword_1C914D000, v11, OS_LOG_TYPE_FAULT, "Unarchived an object of an unexpected class %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v14 = SRLogFaceMetrics;
      if (os_log_type_enabled(SRLogFaceMetrics, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v18 = v15;
        _os_log_error_impl(&dword_1C914D000, v14, OS_LOG_TYPE_ERROR, "Failed to unarchive data because %{public}@", buf, 0xCu);
      }
    }

    goto LABEL_18;
  }

  return [(SRFaceMetrics *)self initWithHAFacialMetricsPacket:representation];
}

- (NSString)description
{
  v160[4] = *MEMORY[0x1E69E9840];
  v3 = [(ARFaceGeometry *)[(ARFaceAnchor *)[(SRFaceMetrics *)self faceAnchor] geometry] description];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &stru_1F48BB5C0;
  }

  v5 = MEMORY[0x1E696AD98];
  [(ARFaceAnchor *)[(SRFaceMetrics *)self faceAnchor] transform];
  v159[0] = [v5 numberWithFloat:?];
  v6 = MEMORY[0x1E696AD98];
  [(ARFaceAnchor *)[(SRFaceMetrics *)self faceAnchor] transform];
  LODWORD(v7) = HIDWORD(v7);
  v159[1] = [v6 numberWithFloat:v7];
  v8 = MEMORY[0x1E696AD98];
  [(ARFaceAnchor *)[(SRFaceMetrics *)self faceAnchor] transform];
  LODWORD(v10) = v9;
  v159[2] = [v8 numberWithFloat:v10];
  v11 = MEMORY[0x1E696AD98];
  [(ARFaceAnchor *)[(SRFaceMetrics *)self faceAnchor] transform];
  LODWORD(v13) = v12;
  v159[3] = [v11 numberWithFloat:v13];
  v160[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v159 count:4];
  v14 = MEMORY[0x1E696AD98];
  [(ARFaceAnchor *)[(SRFaceMetrics *)self faceAnchor] transform];
  v158[0] = [v14 numberWithFloat:v15];
  v16 = MEMORY[0x1E696AD98];
  [(ARFaceAnchor *)[(SRFaceMetrics *)self faceAnchor] transform];
  LODWORD(v18) = v17;
  v158[1] = [v16 numberWithFloat:v18];
  v19 = MEMORY[0x1E696AD98];
  [(ARFaceAnchor *)[(SRFaceMetrics *)self faceAnchor] transform];
  LODWORD(v21) = v20;
  v158[2] = [v19 numberWithFloat:v21];
  v22 = MEMORY[0x1E696AD98];
  [(ARFaceAnchor *)[(SRFaceMetrics *)self faceAnchor] transform];
  LODWORD(v24) = v23;
  v158[3] = [v22 numberWithFloat:v24];
  v160[1] = [MEMORY[0x1E695DEC8] arrayWithObjects:v158 count:4];
  v25 = MEMORY[0x1E696AD98];
  [(ARFaceAnchor *)[(SRFaceMetrics *)self faceAnchor] transform];
  v157[0] = [v25 numberWithFloat:v26];
  v27 = MEMORY[0x1E696AD98];
  [(ARFaceAnchor *)[(SRFaceMetrics *)self faceAnchor] transform];
  LODWORD(v29) = v28;
  v157[1] = [v27 numberWithFloat:v29];
  v30 = MEMORY[0x1E696AD98];
  [(ARFaceAnchor *)[(SRFaceMetrics *)self faceAnchor] transform];
  LODWORD(v32) = v31;
  v157[2] = [v30 numberWithFloat:v32];
  v33 = MEMORY[0x1E696AD98];
  [(ARFaceAnchor *)[(SRFaceMetrics *)self faceAnchor] transform];
  LODWORD(v35) = v34;
  v157[3] = [v33 numberWithFloat:v35];
  v160[2] = [MEMORY[0x1E695DEC8] arrayWithObjects:v157 count:4];
  v36 = MEMORY[0x1E696AD98];
  [(ARFaceAnchor *)[(SRFaceMetrics *)self faceAnchor] transform];
  v156[0] = [v36 numberWithFloat:v37];
  v38 = MEMORY[0x1E696AD98];
  [(ARFaceAnchor *)[(SRFaceMetrics *)self faceAnchor] transform];
  LODWORD(v40) = v39;
  v156[1] = [v38 numberWithFloat:v40];
  v41 = MEMORY[0x1E696AD98];
  [(ARFaceAnchor *)[(SRFaceMetrics *)self faceAnchor] transform];
  LODWORD(v43) = v42;
  v156[2] = [v41 numberWithFloat:v43];
  v44 = MEMORY[0x1E696AD98];
  [(ARFaceAnchor *)[(SRFaceMetrics *)self faceAnchor] transform];
  LODWORD(v46) = v45;
  v156[3] = [v44 numberWithFloat:v46];
  v160[3] = [MEMORY[0x1E695DEC8] arrayWithObjects:v156 count:4];
  v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v160 count:4];
  v48 = MEMORY[0x1E696AD98];
  [(ARFaceAnchor *)[(SRFaceMetrics *)self faceAnchor] leftEyeTransform];
  v154[0] = [v48 numberWithFloat:?];
  v49 = MEMORY[0x1E696AD98];
  [(ARFaceAnchor *)[(SRFaceMetrics *)self faceAnchor] leftEyeTransform];
  LODWORD(v50) = HIDWORD(v50);
  v154[1] = [v49 numberWithFloat:v50];
  v51 = MEMORY[0x1E696AD98];
  [(ARFaceAnchor *)[(SRFaceMetrics *)self faceAnchor] leftEyeTransform];
  LODWORD(v53) = v52;
  v154[2] = [v51 numberWithFloat:v53];
  v54 = MEMORY[0x1E696AD98];
  [(ARFaceAnchor *)[(SRFaceMetrics *)self faceAnchor] leftEyeTransform];
  LODWORD(v56) = v55;
  v154[3] = [v54 numberWithFloat:v56];
  v155[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v154 count:4];
  v57 = MEMORY[0x1E696AD98];
  [(ARFaceAnchor *)[(SRFaceMetrics *)self faceAnchor] leftEyeTransform];
  v153[0] = [v57 numberWithFloat:v58];
  v59 = MEMORY[0x1E696AD98];
  [(ARFaceAnchor *)[(SRFaceMetrics *)self faceAnchor] leftEyeTransform];
  LODWORD(v61) = v60;
  v153[1] = [v59 numberWithFloat:v61];
  v62 = MEMORY[0x1E696AD98];
  [(ARFaceAnchor *)[(SRFaceMetrics *)self faceAnchor] leftEyeTransform];
  LODWORD(v64) = v63;
  v153[2] = [v62 numberWithFloat:v64];
  v65 = MEMORY[0x1E696AD98];
  [(ARFaceAnchor *)[(SRFaceMetrics *)self faceAnchor] leftEyeTransform];
  LODWORD(v67) = v66;
  v153[3] = [v65 numberWithFloat:v67];
  v155[1] = [MEMORY[0x1E695DEC8] arrayWithObjects:v153 count:4];
  v68 = MEMORY[0x1E696AD98];
  [(ARFaceAnchor *)[(SRFaceMetrics *)self faceAnchor] leftEyeTransform];
  v152[0] = [v68 numberWithFloat:v69];
  v70 = MEMORY[0x1E696AD98];
  [(ARFaceAnchor *)[(SRFaceMetrics *)self faceAnchor] leftEyeTransform];
  LODWORD(v72) = v71;
  v152[1] = [v70 numberWithFloat:v72];
  v73 = MEMORY[0x1E696AD98];
  [(ARFaceAnchor *)[(SRFaceMetrics *)self faceAnchor] leftEyeTransform];
  LODWORD(v75) = v74;
  v152[2] = [v73 numberWithFloat:v75];
  v76 = MEMORY[0x1E696AD98];
  [(ARFaceAnchor *)[(SRFaceMetrics *)self faceAnchor] leftEyeTransform];
  LODWORD(v78) = v77;
  v152[3] = [v76 numberWithFloat:v78];
  v155[2] = [MEMORY[0x1E695DEC8] arrayWithObjects:v152 count:4];
  v79 = MEMORY[0x1E696AD98];
  [(ARFaceAnchor *)[(SRFaceMetrics *)self faceAnchor] leftEyeTransform];
  v151[0] = [v79 numberWithFloat:v80];
  v81 = MEMORY[0x1E696AD98];
  [(ARFaceAnchor *)[(SRFaceMetrics *)self faceAnchor] leftEyeTransform];
  LODWORD(v83) = v82;
  v151[1] = [v81 numberWithFloat:v83];
  v84 = MEMORY[0x1E696AD98];
  [(ARFaceAnchor *)[(SRFaceMetrics *)self faceAnchor] leftEyeTransform];
  LODWORD(v86) = v85;
  v151[2] = [v84 numberWithFloat:v86];
  v87 = MEMORY[0x1E696AD98];
  [(ARFaceAnchor *)[(SRFaceMetrics *)self faceAnchor] leftEyeTransform];
  LODWORD(v89) = v88;
  v151[3] = [v87 numberWithFloat:v89];
  v155[3] = [MEMORY[0x1E695DEC8] arrayWithObjects:v151 count:4];
  v90 = [MEMORY[0x1E695DEC8] arrayWithObjects:v155 count:4];
  v91 = MEMORY[0x1E696AD98];
  [(ARFaceAnchor *)[(SRFaceMetrics *)self faceAnchor] rightEyeTransform];
  v149[0] = [v91 numberWithFloat:?];
  v92 = MEMORY[0x1E696AD98];
  [(ARFaceAnchor *)[(SRFaceMetrics *)self faceAnchor] rightEyeTransform];
  LODWORD(v93) = HIDWORD(v93);
  v149[1] = [v92 numberWithFloat:v93];
  v94 = MEMORY[0x1E696AD98];
  [(ARFaceAnchor *)[(SRFaceMetrics *)self faceAnchor] rightEyeTransform];
  LODWORD(v96) = v95;
  v149[2] = [v94 numberWithFloat:v96];
  v97 = MEMORY[0x1E696AD98];
  [(ARFaceAnchor *)[(SRFaceMetrics *)self faceAnchor] rightEyeTransform];
  LODWORD(v99) = v98;
  v149[3] = [v97 numberWithFloat:v99];
  v150[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v149 count:4];
  v100 = MEMORY[0x1E696AD98];
  [(ARFaceAnchor *)[(SRFaceMetrics *)self faceAnchor] rightEyeTransform];
  v148[0] = [v100 numberWithFloat:v101];
  v102 = MEMORY[0x1E696AD98];
  [(ARFaceAnchor *)[(SRFaceMetrics *)self faceAnchor] rightEyeTransform];
  LODWORD(v104) = v103;
  v148[1] = [v102 numberWithFloat:v104];
  v105 = MEMORY[0x1E696AD98];
  [(ARFaceAnchor *)[(SRFaceMetrics *)self faceAnchor] rightEyeTransform];
  LODWORD(v107) = v106;
  v148[2] = [v105 numberWithFloat:v107];
  v108 = MEMORY[0x1E696AD98];
  [(ARFaceAnchor *)[(SRFaceMetrics *)self faceAnchor] rightEyeTransform];
  LODWORD(v110) = v109;
  v148[3] = [v108 numberWithFloat:v110];
  v150[1] = [MEMORY[0x1E695DEC8] arrayWithObjects:v148 count:4];
  v111 = MEMORY[0x1E696AD98];
  [(ARFaceAnchor *)[(SRFaceMetrics *)self faceAnchor] rightEyeTransform];
  v147[0] = [v111 numberWithFloat:v112];
  v113 = MEMORY[0x1E696AD98];
  [(ARFaceAnchor *)[(SRFaceMetrics *)self faceAnchor] rightEyeTransform];
  LODWORD(v115) = v114;
  v147[1] = [v113 numberWithFloat:v115];
  v116 = MEMORY[0x1E696AD98];
  [(ARFaceAnchor *)[(SRFaceMetrics *)self faceAnchor] rightEyeTransform];
  LODWORD(v118) = v117;
  v147[2] = [v116 numberWithFloat:v118];
  v119 = MEMORY[0x1E696AD98];
  [(ARFaceAnchor *)[(SRFaceMetrics *)self faceAnchor] rightEyeTransform];
  LODWORD(v121) = v120;
  v147[3] = [v119 numberWithFloat:v121];
  v150[2] = [MEMORY[0x1E695DEC8] arrayWithObjects:v147 count:4];
  v122 = MEMORY[0x1E696AD98];
  [(ARFaceAnchor *)[(SRFaceMetrics *)self faceAnchor] rightEyeTransform];
  v146[0] = [v122 numberWithFloat:v123];
  v124 = MEMORY[0x1E696AD98];
  [(ARFaceAnchor *)[(SRFaceMetrics *)self faceAnchor] rightEyeTransform];
  LODWORD(v126) = v125;
  v146[1] = [v124 numberWithFloat:v126];
  v127 = MEMORY[0x1E696AD98];
  [(ARFaceAnchor *)[(SRFaceMetrics *)self faceAnchor] rightEyeTransform];
  LODWORD(v129) = v128;
  v146[2] = [v127 numberWithFloat:v129];
  v130 = MEMORY[0x1E696AD98];
  [(ARFaceAnchor *)[(SRFaceMetrics *)self faceAnchor] rightEyeTransform];
  LODWORD(v132) = v131;
  v146[3] = [v130 numberWithFloat:v132];
  v150[3] = [MEMORY[0x1E695DEC8] arrayWithObjects:v146 count:4];
  v133 = [MEMORY[0x1E695DEC8] arrayWithObjects:v150 count:4];
  v134 = MEMORY[0x1E696AD98];
  [(ARFaceAnchor *)[(SRFaceMetrics *)self faceAnchor] lookAtPoint];
  v145[0] = [v134 numberWithFloat:?];
  v135 = MEMORY[0x1E696AD98];
  [(ARFaceAnchor *)[(SRFaceMetrics *)self faceAnchor] lookAtPoint];
  LODWORD(v136) = HIDWORD(v136);
  v145[1] = [v135 numberWithFloat:v136];
  v137 = MEMORY[0x1E696AD98];
  [(ARFaceAnchor *)[(SRFaceMetrics *)self faceAnchor] lookAtPoint];
  LODWORD(v139) = v138;
  v145[2] = [v137 numberWithFloat:v139];
  v140 = [MEMORY[0x1E695DEC8] arrayWithObjects:v145 count:3];
  v141 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{ identifier:%@, sessionIdentifier:%@, geometry:%@, transform:%@, leftEyeTransform:%@, rightEyeTransform:%@, lookAtPoint:%@, blendShapes:%@}", -[ARFaceAnchor identifier](-[SRFaceMetrics faceAnchor](self, "faceAnchor"), "identifier"), -[ARFaceAnchor sessionIdentifier](-[SRFaceMetrics faceAnchor](self, "faceAnchor"), "sessionIdentifier"), v4, v47, v90, v133, v140, -[ARFaceAnchor blendShapes](-[SRFaceMetrics faceAnchor](self, "faceAnchor"), "blendShapes")];
  v142 = MEMORY[0x1E696AEC0];
  v143 = objc_opt_class();
  return [v142 stringWithFormat:@"%@ (%p) {version:%@, session identifier:%@, context:%lu, face anchor:%@, whole face expressions:%@, partial face expressions:%@}", NSStringFromClass(v143), self, -[SRFaceMetrics version](self, "version"), -[SRFaceMetrics sessionIdentifier](self, "sessionIdentifier"), -[SRFaceMetrics context](self, "context"), v141, -[SRFaceMetrics wholeFaceExpressions](self, "wholeFaceExpressions"), -[SRFaceMetrics partialFaceExpressions](self, "partialFaceExpressions")];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v5) = 1;
    return v5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = -[NSString isEqualToString:](-[SRFaceMetrics version](self, "version"), "isEqualToString:", [equal version]);
  if (!v5)
  {
    return v5;
  }

  v5 = -[NSString isEqualToString:](-[SRFaceMetrics sessionIdentifier](self, "sessionIdentifier"), "isEqualToString:", [equal sessionIdentifier]);
  if (!v5)
  {
    return v5;
  }

  context = [(SRFaceMetrics *)self context];
  if (context != [equal context])
  {
LABEL_12:
    LOBYTE(v5) = 0;
    return v5;
  }

  v5 = -[ARFaceAnchor isEqual:](-[SRFaceMetrics faceAnchor](self, "faceAnchor"), "isEqual:", [equal faceAnchor]);
  if (v5)
  {
    v5 = -[NSArray isEqual:](-[SRFaceMetrics wholeFaceExpressions](self, "wholeFaceExpressions"), "isEqual:", [equal wholeFaceExpressions]);
    if (v5)
    {
      partialFaceExpressions = [(SRFaceMetrics *)self partialFaceExpressions];
      partialFaceExpressions2 = [equal partialFaceExpressions];

      LOBYTE(v5) = [(NSArray *)partialFaceExpressions isEqual:partialFaceExpressions2];
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(NSString *)[(SRFaceMetrics *)self version] hash];
  v4 = [(NSString *)[(SRFaceMetrics *)self sessionIdentifier] hash]^ v3;
  context = [(SRFaceMetrics *)self context];
  v6 = v4 ^ context ^ [(NSArray *)[(SRFaceMetrics *)self wholeFaceExpressions] hash];
  v7 = [(NSArray *)[(SRFaceMetrics *)self partialFaceExpressions] hash];
  return v6 ^ v7 ^ [(ARFaceAnchor *)[(SRFaceMetrics *)self faceAnchor] hash];
}

@end