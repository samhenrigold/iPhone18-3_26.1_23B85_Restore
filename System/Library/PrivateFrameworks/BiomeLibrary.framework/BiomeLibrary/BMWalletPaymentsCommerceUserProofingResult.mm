@interface BMWalletPaymentsCommerceUserProofingResult
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMWalletPaymentsCommerceUserProofingResult)initWithAge:(id)age gender:(id)gender skinTone:(id)tone ethnicity:(id)ethnicity deviceLanguage:(id)language proofingDecision:(id)decision issuer:(id)issuer alAssessment:(id)self0 alGestureAssessment:(id)self1 axSettings:(id)self2 alFacVersion:(id)self3 alFacePoseVersion:(id)self4 alPadtoolVersion:(id)self5 alPrdVersion:(id)self6 didStepUp:(id)self7 plGestureAssessment:(id)self8 plAssessment:(id)self9 plFacVersion:(id)facVersion plFacePoseVersion:(id)facePoseVersion plPadtoolVersion:(id)plPadtoolVersion plPrdVersion:(id)plPrdVersion shadowLabel:(id)label smFacVersion:(id)smFacVersion smFacePoseVersion:(id)smFacePoseVersion smPrdVersion:(id)smPrdVersion smPadtoolVersion:(id)smPadtoolVersion smLivenessAssessment:(id)livenessAssessment smGestureAssessment:(id)age0 smLivenessType:(id)age1 fmAssessment:(id)age2 fmModelVersion:(id)age3 fmDetectorModelVersion:(id)age4 fmSMAssessment:(id)age5 fmSMModelVersion:(id)age6 fmSMDetectorModelVersion:(id)age7 identityType:(id)age8;
- (BMWalletPaymentsCommerceUserProofingResult)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_axSettingsJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMWalletPaymentsCommerceUserProofingResult

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = [(BMWalletPaymentsCommerceUserProofingResult *)self age];
    v7 = [v5 age];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMWalletPaymentsCommerceUserProofingResult *)self age];
      v10 = [v5 age];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_142;
      }
    }

    gender = [(BMWalletPaymentsCommerceUserProofingResult *)self gender];
    gender2 = [v5 gender];
    v15 = gender2;
    if (gender == gender2)
    {
    }

    else
    {
      gender3 = [(BMWalletPaymentsCommerceUserProofingResult *)self gender];
      gender4 = [v5 gender];
      v18 = [gender3 isEqual:gender4];

      if (!v18)
      {
        goto LABEL_142;
      }
    }

    skinTone = [(BMWalletPaymentsCommerceUserProofingResult *)self skinTone];
    skinTone2 = [v5 skinTone];
    v21 = skinTone2;
    if (skinTone == skinTone2)
    {
    }

    else
    {
      skinTone3 = [(BMWalletPaymentsCommerceUserProofingResult *)self skinTone];
      skinTone4 = [v5 skinTone];
      v24 = [skinTone3 isEqual:skinTone4];

      if (!v24)
      {
        goto LABEL_142;
      }
    }

    ethnicity = [(BMWalletPaymentsCommerceUserProofingResult *)self ethnicity];
    ethnicity2 = [v5 ethnicity];
    v27 = ethnicity2;
    if (ethnicity == ethnicity2)
    {
    }

    else
    {
      ethnicity3 = [(BMWalletPaymentsCommerceUserProofingResult *)self ethnicity];
      ethnicity4 = [v5 ethnicity];
      v30 = [ethnicity3 isEqual:ethnicity4];

      if (!v30)
      {
        goto LABEL_142;
      }
    }

    deviceLanguage = [(BMWalletPaymentsCommerceUserProofingResult *)self deviceLanguage];
    deviceLanguage2 = [v5 deviceLanguage];
    v33 = deviceLanguage2;
    if (deviceLanguage == deviceLanguage2)
    {
    }

    else
    {
      deviceLanguage3 = [(BMWalletPaymentsCommerceUserProofingResult *)self deviceLanguage];
      deviceLanguage4 = [v5 deviceLanguage];
      v36 = [deviceLanguage3 isEqual:deviceLanguage4];

      if (!v36)
      {
        goto LABEL_142;
      }
    }

    proofingDecision = [(BMWalletPaymentsCommerceUserProofingResult *)self proofingDecision];
    proofingDecision2 = [v5 proofingDecision];
    v39 = proofingDecision2;
    if (proofingDecision == proofingDecision2)
    {
    }

    else
    {
      proofingDecision3 = [(BMWalletPaymentsCommerceUserProofingResult *)self proofingDecision];
      proofingDecision4 = [v5 proofingDecision];
      v42 = [proofingDecision3 isEqual:proofingDecision4];

      if (!v42)
      {
        goto LABEL_142;
      }
    }

    issuer = [(BMWalletPaymentsCommerceUserProofingResult *)self issuer];
    issuer2 = [v5 issuer];
    v45 = issuer2;
    if (issuer == issuer2)
    {
    }

    else
    {
      issuer3 = [(BMWalletPaymentsCommerceUserProofingResult *)self issuer];
      issuer4 = [v5 issuer];
      v48 = [issuer3 isEqual:issuer4];

      if (!v48)
      {
        goto LABEL_142;
      }
    }

    alAssessment = [(BMWalletPaymentsCommerceUserProofingResult *)self alAssessment];
    alAssessment2 = [v5 alAssessment];
    v51 = alAssessment2;
    if (alAssessment == alAssessment2)
    {
    }

    else
    {
      alAssessment3 = [(BMWalletPaymentsCommerceUserProofingResult *)self alAssessment];
      alAssessment4 = [v5 alAssessment];
      v54 = [alAssessment3 isEqual:alAssessment4];

      if (!v54)
      {
        goto LABEL_142;
      }
    }

    alGestureAssessment = [(BMWalletPaymentsCommerceUserProofingResult *)self alGestureAssessment];
    alGestureAssessment2 = [v5 alGestureAssessment];
    v57 = alGestureAssessment2;
    if (alGestureAssessment == alGestureAssessment2)
    {
    }

    else
    {
      alGestureAssessment3 = [(BMWalletPaymentsCommerceUserProofingResult *)self alGestureAssessment];
      alGestureAssessment4 = [v5 alGestureAssessment];
      v60 = [alGestureAssessment3 isEqual:alGestureAssessment4];

      if (!v60)
      {
        goto LABEL_142;
      }
    }

    axSettings = [(BMWalletPaymentsCommerceUserProofingResult *)self axSettings];
    axSettings2 = [v5 axSettings];
    v63 = axSettings2;
    if (axSettings == axSettings2)
    {
    }

    else
    {
      axSettings3 = [(BMWalletPaymentsCommerceUserProofingResult *)self axSettings];
      axSettings4 = [v5 axSettings];
      v66 = [axSettings3 isEqual:axSettings4];

      if (!v66)
      {
        goto LABEL_142;
      }
    }

    alFacVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self alFacVersion];
    alFacVersion2 = [v5 alFacVersion];
    v69 = alFacVersion2;
    if (alFacVersion == alFacVersion2)
    {
    }

    else
    {
      alFacVersion3 = [(BMWalletPaymentsCommerceUserProofingResult *)self alFacVersion];
      alFacVersion4 = [v5 alFacVersion];
      v72 = [alFacVersion3 isEqual:alFacVersion4];

      if (!v72)
      {
        goto LABEL_142;
      }
    }

    alFacePoseVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self alFacePoseVersion];
    alFacePoseVersion2 = [v5 alFacePoseVersion];
    v75 = alFacePoseVersion2;
    if (alFacePoseVersion == alFacePoseVersion2)
    {
    }

    else
    {
      alFacePoseVersion3 = [(BMWalletPaymentsCommerceUserProofingResult *)self alFacePoseVersion];
      alFacePoseVersion4 = [v5 alFacePoseVersion];
      v78 = [alFacePoseVersion3 isEqual:alFacePoseVersion4];

      if (!v78)
      {
        goto LABEL_142;
      }
    }

    alPadtoolVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self alPadtoolVersion];
    alPadtoolVersion2 = [v5 alPadtoolVersion];
    v81 = alPadtoolVersion2;
    if (alPadtoolVersion == alPadtoolVersion2)
    {
    }

    else
    {
      alPadtoolVersion3 = [(BMWalletPaymentsCommerceUserProofingResult *)self alPadtoolVersion];
      alPadtoolVersion4 = [v5 alPadtoolVersion];
      v84 = [alPadtoolVersion3 isEqual:alPadtoolVersion4];

      if (!v84)
      {
        goto LABEL_142;
      }
    }

    alPrdVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self alPrdVersion];
    alPrdVersion2 = [v5 alPrdVersion];
    v87 = alPrdVersion2;
    if (alPrdVersion == alPrdVersion2)
    {
    }

    else
    {
      alPrdVersion3 = [(BMWalletPaymentsCommerceUserProofingResult *)self alPrdVersion];
      alPrdVersion4 = [v5 alPrdVersion];
      v90 = [alPrdVersion3 isEqual:alPrdVersion4];

      if (!v90)
      {
        goto LABEL_142;
      }
    }

    if (-[BMWalletPaymentsCommerceUserProofingResult hasDidStepUp](self, "hasDidStepUp") || [v5 hasDidStepUp])
    {
      if (![(BMWalletPaymentsCommerceUserProofingResult *)self hasDidStepUp])
      {
        goto LABEL_142;
      }

      if (![v5 hasDidStepUp])
      {
        goto LABEL_142;
      }

      didStepUp = [(BMWalletPaymentsCommerceUserProofingResult *)self didStepUp];
      if (didStepUp != [v5 didStepUp])
      {
        goto LABEL_142;
      }
    }

    plGestureAssessment = [(BMWalletPaymentsCommerceUserProofingResult *)self plGestureAssessment];
    plGestureAssessment2 = [v5 plGestureAssessment];
    v94 = plGestureAssessment2;
    if (plGestureAssessment == plGestureAssessment2)
    {
    }

    else
    {
      plGestureAssessment3 = [(BMWalletPaymentsCommerceUserProofingResult *)self plGestureAssessment];
      plGestureAssessment4 = [v5 plGestureAssessment];
      v97 = [plGestureAssessment3 isEqual:plGestureAssessment4];

      if (!v97)
      {
        goto LABEL_142;
      }
    }

    plAssessment = [(BMWalletPaymentsCommerceUserProofingResult *)self plAssessment];
    plAssessment2 = [v5 plAssessment];
    v100 = plAssessment2;
    if (plAssessment == plAssessment2)
    {
    }

    else
    {
      plAssessment3 = [(BMWalletPaymentsCommerceUserProofingResult *)self plAssessment];
      plAssessment4 = [v5 plAssessment];
      v103 = [plAssessment3 isEqual:plAssessment4];

      if (!v103)
      {
        goto LABEL_142;
      }
    }

    plFacVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self plFacVersion];
    plFacVersion2 = [v5 plFacVersion];
    v106 = plFacVersion2;
    if (plFacVersion == plFacVersion2)
    {
    }

    else
    {
      plFacVersion3 = [(BMWalletPaymentsCommerceUserProofingResult *)self plFacVersion];
      plFacVersion4 = [v5 plFacVersion];
      v109 = [plFacVersion3 isEqual:plFacVersion4];

      if (!v109)
      {
        goto LABEL_142;
      }
    }

    plFacePoseVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self plFacePoseVersion];
    plFacePoseVersion2 = [v5 plFacePoseVersion];
    v112 = plFacePoseVersion2;
    if (plFacePoseVersion == plFacePoseVersion2)
    {
    }

    else
    {
      plFacePoseVersion3 = [(BMWalletPaymentsCommerceUserProofingResult *)self plFacePoseVersion];
      plFacePoseVersion4 = [v5 plFacePoseVersion];
      v115 = [plFacePoseVersion3 isEqual:plFacePoseVersion4];

      if (!v115)
      {
        goto LABEL_142;
      }
    }

    plPadtoolVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self plPadtoolVersion];
    plPadtoolVersion2 = [v5 plPadtoolVersion];
    v118 = plPadtoolVersion2;
    if (plPadtoolVersion == plPadtoolVersion2)
    {
    }

    else
    {
      plPadtoolVersion3 = [(BMWalletPaymentsCommerceUserProofingResult *)self plPadtoolVersion];
      plPadtoolVersion4 = [v5 plPadtoolVersion];
      v121 = [plPadtoolVersion3 isEqual:plPadtoolVersion4];

      if (!v121)
      {
        goto LABEL_142;
      }
    }

    plPrdVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self plPrdVersion];
    plPrdVersion2 = [v5 plPrdVersion];
    v124 = plPrdVersion2;
    if (plPrdVersion == plPrdVersion2)
    {
    }

    else
    {
      plPrdVersion3 = [(BMWalletPaymentsCommerceUserProofingResult *)self plPrdVersion];
      plPrdVersion4 = [v5 plPrdVersion];
      v127 = [plPrdVersion3 isEqual:plPrdVersion4];

      if (!v127)
      {
        goto LABEL_142;
      }
    }

    shadowLabel = [(BMWalletPaymentsCommerceUserProofingResult *)self shadowLabel];
    shadowLabel2 = [v5 shadowLabel];
    v130 = shadowLabel2;
    if (shadowLabel == shadowLabel2)
    {
    }

    else
    {
      shadowLabel3 = [(BMWalletPaymentsCommerceUserProofingResult *)self shadowLabel];
      shadowLabel4 = [v5 shadowLabel];
      v133 = [shadowLabel3 isEqual:shadowLabel4];

      if (!v133)
      {
        goto LABEL_142;
      }
    }

    smFacVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self smFacVersion];
    smFacVersion2 = [v5 smFacVersion];
    v136 = smFacVersion2;
    if (smFacVersion == smFacVersion2)
    {
    }

    else
    {
      smFacVersion3 = [(BMWalletPaymentsCommerceUserProofingResult *)self smFacVersion];
      smFacVersion4 = [v5 smFacVersion];
      v139 = [smFacVersion3 isEqual:smFacVersion4];

      if (!v139)
      {
        goto LABEL_142;
      }
    }

    smFacePoseVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self smFacePoseVersion];
    smFacePoseVersion2 = [v5 smFacePoseVersion];
    v142 = smFacePoseVersion2;
    if (smFacePoseVersion == smFacePoseVersion2)
    {
    }

    else
    {
      smFacePoseVersion3 = [(BMWalletPaymentsCommerceUserProofingResult *)self smFacePoseVersion];
      smFacePoseVersion4 = [v5 smFacePoseVersion];
      v145 = [smFacePoseVersion3 isEqual:smFacePoseVersion4];

      if (!v145)
      {
        goto LABEL_142;
      }
    }

    smPrdVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self smPrdVersion];
    smPrdVersion2 = [v5 smPrdVersion];
    v148 = smPrdVersion2;
    if (smPrdVersion == smPrdVersion2)
    {
    }

    else
    {
      smPrdVersion3 = [(BMWalletPaymentsCommerceUserProofingResult *)self smPrdVersion];
      smPrdVersion4 = [v5 smPrdVersion];
      v151 = [smPrdVersion3 isEqual:smPrdVersion4];

      if (!v151)
      {
        goto LABEL_142;
      }
    }

    smPadtoolVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self smPadtoolVersion];
    smPadtoolVersion2 = [v5 smPadtoolVersion];
    v154 = smPadtoolVersion2;
    if (smPadtoolVersion == smPadtoolVersion2)
    {
    }

    else
    {
      smPadtoolVersion3 = [(BMWalletPaymentsCommerceUserProofingResult *)self smPadtoolVersion];
      smPadtoolVersion4 = [v5 smPadtoolVersion];
      v157 = [smPadtoolVersion3 isEqual:smPadtoolVersion4];

      if (!v157)
      {
        goto LABEL_142;
      }
    }

    smLivenessAssessment = [(BMWalletPaymentsCommerceUserProofingResult *)self smLivenessAssessment];
    smLivenessAssessment2 = [v5 smLivenessAssessment];
    v160 = smLivenessAssessment2;
    if (smLivenessAssessment == smLivenessAssessment2)
    {
    }

    else
    {
      smLivenessAssessment3 = [(BMWalletPaymentsCommerceUserProofingResult *)self smLivenessAssessment];
      smLivenessAssessment4 = [v5 smLivenessAssessment];
      v163 = [smLivenessAssessment3 isEqual:smLivenessAssessment4];

      if (!v163)
      {
        goto LABEL_142;
      }
    }

    smGestureAssessment = [(BMWalletPaymentsCommerceUserProofingResult *)self smGestureAssessment];
    smGestureAssessment2 = [v5 smGestureAssessment];
    v166 = smGestureAssessment2;
    if (smGestureAssessment == smGestureAssessment2)
    {
    }

    else
    {
      smGestureAssessment3 = [(BMWalletPaymentsCommerceUserProofingResult *)self smGestureAssessment];
      smGestureAssessment4 = [v5 smGestureAssessment];
      v169 = [smGestureAssessment3 isEqual:smGestureAssessment4];

      if (!v169)
      {
        goto LABEL_142;
      }
    }

    smLivenessType = [(BMWalletPaymentsCommerceUserProofingResult *)self smLivenessType];
    smLivenessType2 = [v5 smLivenessType];
    v172 = smLivenessType2;
    if (smLivenessType == smLivenessType2)
    {
    }

    else
    {
      smLivenessType3 = [(BMWalletPaymentsCommerceUserProofingResult *)self smLivenessType];
      smLivenessType4 = [v5 smLivenessType];
      v175 = [smLivenessType3 isEqual:smLivenessType4];

      if (!v175)
      {
        goto LABEL_142;
      }
    }

    fmAssessment = [(BMWalletPaymentsCommerceUserProofingResult *)self fmAssessment];
    fmAssessment2 = [v5 fmAssessment];
    v178 = fmAssessment2;
    if (fmAssessment == fmAssessment2)
    {
    }

    else
    {
      fmAssessment3 = [(BMWalletPaymentsCommerceUserProofingResult *)self fmAssessment];
      fmAssessment4 = [v5 fmAssessment];
      v181 = [fmAssessment3 isEqual:fmAssessment4];

      if (!v181)
      {
        goto LABEL_142;
      }
    }

    fmModelVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self fmModelVersion];
    fmModelVersion2 = [v5 fmModelVersion];
    v184 = fmModelVersion2;
    if (fmModelVersion == fmModelVersion2)
    {
    }

    else
    {
      fmModelVersion3 = [(BMWalletPaymentsCommerceUserProofingResult *)self fmModelVersion];
      fmModelVersion4 = [v5 fmModelVersion];
      v187 = [fmModelVersion3 isEqual:fmModelVersion4];

      if (!v187)
      {
        goto LABEL_142;
      }
    }

    fmDetectorModelVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self fmDetectorModelVersion];
    fmDetectorModelVersion2 = [v5 fmDetectorModelVersion];
    v190 = fmDetectorModelVersion2;
    if (fmDetectorModelVersion == fmDetectorModelVersion2)
    {
    }

    else
    {
      fmDetectorModelVersion3 = [(BMWalletPaymentsCommerceUserProofingResult *)self fmDetectorModelVersion];
      fmDetectorModelVersion4 = [v5 fmDetectorModelVersion];
      v193 = [fmDetectorModelVersion3 isEqual:fmDetectorModelVersion4];

      if (!v193)
      {
        goto LABEL_142;
      }
    }

    fmSMAssessment = [(BMWalletPaymentsCommerceUserProofingResult *)self fmSMAssessment];
    fmSMAssessment2 = [v5 fmSMAssessment];
    v196 = fmSMAssessment2;
    if (fmSMAssessment == fmSMAssessment2)
    {
    }

    else
    {
      fmSMAssessment3 = [(BMWalletPaymentsCommerceUserProofingResult *)self fmSMAssessment];
      fmSMAssessment4 = [v5 fmSMAssessment];
      v199 = [fmSMAssessment3 isEqual:fmSMAssessment4];

      if (!v199)
      {
        goto LABEL_142;
      }
    }

    fmSMModelVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self fmSMModelVersion];
    fmSMModelVersion2 = [v5 fmSMModelVersion];
    v202 = fmSMModelVersion2;
    if (fmSMModelVersion == fmSMModelVersion2)
    {
    }

    else
    {
      fmSMModelVersion3 = [(BMWalletPaymentsCommerceUserProofingResult *)self fmSMModelVersion];
      fmSMModelVersion4 = [v5 fmSMModelVersion];
      v205 = [fmSMModelVersion3 isEqual:fmSMModelVersion4];

      if (!v205)
      {
        goto LABEL_142;
      }
    }

    fmSMDetectorModelVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self fmSMDetectorModelVersion];
    fmSMDetectorModelVersion2 = [v5 fmSMDetectorModelVersion];
    v208 = fmSMDetectorModelVersion2;
    if (fmSMDetectorModelVersion == fmSMDetectorModelVersion2)
    {
    }

    else
    {
      fmSMDetectorModelVersion3 = [(BMWalletPaymentsCommerceUserProofingResult *)self fmSMDetectorModelVersion];
      fmSMDetectorModelVersion4 = [v5 fmSMDetectorModelVersion];
      v211 = [fmSMDetectorModelVersion3 isEqual:fmSMDetectorModelVersion4];

      if (!v211)
      {
LABEL_142:
        v12 = 0;
LABEL_143:

        goto LABEL_144;
      }
    }

    identityType = [(BMWalletPaymentsCommerceUserProofingResult *)self identityType];
    identityType2 = [v5 identityType];
    if (identityType == identityType2)
    {
      v12 = 1;
    }

    else
    {
      identityType3 = [(BMWalletPaymentsCommerceUserProofingResult *)self identityType];
      identityType4 = [v5 identityType];
      v12 = [identityType3 isEqual:identityType4];
    }

    goto LABEL_143;
  }

  v12 = 0;
LABEL_144:

  return v12;
}

- (id)jsonDictionary
{
  v251 = *MEMORY[0x1E69E9840];
  null60 = [(BMWalletPaymentsCommerceUserProofingResult *)self age];
  gender = [(BMWalletPaymentsCommerceUserProofingResult *)self gender];
  skinTone = [(BMWalletPaymentsCommerceUserProofingResult *)self skinTone];
  ethnicity = [(BMWalletPaymentsCommerceUserProofingResult *)self ethnicity];
  deviceLanguage = [(BMWalletPaymentsCommerceUserProofingResult *)self deviceLanguage];
  proofingDecision = [(BMWalletPaymentsCommerceUserProofingResult *)self proofingDecision];
  issuer = [(BMWalletPaymentsCommerceUserProofingResult *)self issuer];
  alAssessment = [(BMWalletPaymentsCommerceUserProofingResult *)self alAssessment];
  alGestureAssessment = [(BMWalletPaymentsCommerceUserProofingResult *)self alGestureAssessment];
  _axSettingsJSONArray = [(BMWalletPaymentsCommerceUserProofingResult *)self _axSettingsJSONArray];
  alFacVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self alFacVersion];
  alFacePoseVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self alFacePoseVersion];
  alPadtoolVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self alPadtoolVersion];
  alPrdVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self alPrdVersion];
  if ([(BMWalletPaymentsCommerceUserProofingResult *)self hasDidStepUp])
  {
    v135 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMWalletPaymentsCommerceUserProofingResult didStepUp](self, "didStepUp")}];
  }

  else
  {
    v135 = 0;
  }

  plGestureAssessment = [(BMWalletPaymentsCommerceUserProofingResult *)self plGestureAssessment];
  plAssessment = [(BMWalletPaymentsCommerceUserProofingResult *)self plAssessment];
  plFacVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self plFacVersion];
  plFacePoseVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self plFacePoseVersion];
  plPadtoolVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self plPadtoolVersion];
  plPrdVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self plPrdVersion];
  shadowLabel = [(BMWalletPaymentsCommerceUserProofingResult *)self shadowLabel];
  smFacVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self smFacVersion];
  smFacePoseVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self smFacePoseVersion];
  smPrdVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self smPrdVersion];
  smPadtoolVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self smPadtoolVersion];
  smLivenessAssessment = [(BMWalletPaymentsCommerceUserProofingResult *)self smLivenessAssessment];
  smGestureAssessment = [(BMWalletPaymentsCommerceUserProofingResult *)self smGestureAssessment];
  smLivenessType = [(BMWalletPaymentsCommerceUserProofingResult *)self smLivenessType];
  fmAssessment = [(BMWalletPaymentsCommerceUserProofingResult *)self fmAssessment];
  fmModelVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self fmModelVersion];
  fmDetectorModelVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self fmDetectorModelVersion];
  fmSMAssessment = [(BMWalletPaymentsCommerceUserProofingResult *)self fmSMAssessment];
  fmSMModelVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self fmSMModelVersion];
  fmSMDetectorModelVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self fmSMDetectorModelVersion];
  identityType = [(BMWalletPaymentsCommerceUserProofingResult *)self identityType];
  v140[0] = @"age";
  null = null60;
  if (!null60)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v106 = null;
  v195[0] = null;
  v140[1] = @"gender";
  null2 = gender;
  if (!gender)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v105 = null2;
  v195[1] = null2;
  v140[2] = @"skinTone";
  null3 = skinTone;
  if (!skinTone)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v104 = null3;
  v195[2] = null3;
  v140[3] = @"ethnicity";
  null4 = ethnicity;
  if (!ethnicity)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v103 = null4;
  v195[3] = null4;
  v140[4] = @"deviceLanguage";
  null5 = deviceLanguage;
  if (!deviceLanguage)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v102 = null5;
  v195[4] = null5;
  v140[5] = @"proofingDecision";
  null6 = proofingDecision;
  if (!proofingDecision)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v112 = identityType;
  v101 = null6;
  v195[5] = null6;
  v140[6] = @"issuer";
  null7 = issuer;
  if (!issuer)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v100 = null7;
  v195[6] = null7;
  v140[7] = @"alAssessment";
  if (alAssessment)
  {
    v196 = alAssessment;
    v141 = @"livenessAssessment";
    null9 = alAssessment;
  }

  else
  {
    null8 = [MEMORY[0x1E695DFB0] null];
    v196 = null8;
    v141 = @"livenessAssessment";
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v99 = null9;
  v197 = null9;
  v142 = @"alGestureAssessment";
  if (alGestureAssessment)
  {
    v198 = alGestureAssessment;
    v143 = @"gestureAssessment";
    null11 = alGestureAssessment;
  }

  else
  {
    null10 = [MEMORY[0x1E695DFB0] null];
    v198 = null10;
    v143 = @"gestureAssessment";
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v98 = null11;
  v199 = null11;
  v144 = @"axSettings";
  null12 = _axSettingsJSONArray;
  if (!_axSettingsJSONArray)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v97 = null12;
  v200 = null12;
  v145 = @"alFacVersion";
  if (alFacVersion)
  {
    v201 = alFacVersion;
    v146 = @"facVersion";
    null14 = alFacVersion;
  }

  else
  {
    null13 = [MEMORY[0x1E695DFB0] null];
    v201 = null13;
    v146 = @"facVersion";
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v96 = null14;
  v202 = null14;
  v147 = @"alFacePoseVersion";
  if (alFacePoseVersion)
  {
    v203 = alFacePoseVersion;
    v148 = @"facePoseVersion";
    null16 = alFacePoseVersion;
  }

  else
  {
    null15 = [MEMORY[0x1E695DFB0] null];
    v203 = null15;
    v148 = @"facePoseVersion";
    null16 = [MEMORY[0x1E695DFB0] null];
  }

  v95 = null16;
  v204 = null16;
  v149 = @"alPadtoolVersion";
  if (alPadtoolVersion)
  {
    v205 = alPadtoolVersion;
    v150 = @"padtoolVersion";
    null18 = alPadtoolVersion;
  }

  else
  {
    null17 = [MEMORY[0x1E695DFB0] null];
    v205 = null17;
    v150 = @"padtoolVersion";
    null18 = [MEMORY[0x1E695DFB0] null];
  }

  v94 = null18;
  v206 = null18;
  v151 = @"alPrdVersion";
  if (alPrdVersion)
  {
    v207 = alPrdVersion;
    v152 = @"prdVersion";
    null20 = alPrdVersion;
  }

  else
  {
    null19 = [MEMORY[0x1E695DFB0] null];
    v207 = null19;
    v152 = @"prdVersion";
    null20 = [MEMORY[0x1E695DFB0] null];
  }

  v93 = null20;
  v208 = null20;
  v153 = @"didStepUp";
  null21 = v135;
  if (!v135)
  {
    null21 = [MEMORY[0x1E695DFB0] null];
  }

  v92 = null21;
  v209 = null21;
  v154 = @"plGestureAssessment";
  if (plGestureAssessment)
  {
    v210 = plGestureAssessment;
    v155 = @"passiveGestureAssessment";
    null23 = plGestureAssessment;
  }

  else
  {
    null22 = [MEMORY[0x1E695DFB0] null];
    v210 = null22;
    v155 = @"passiveGestureAssessment";
    null23 = [MEMORY[0x1E695DFB0] null];
  }

  v91 = null23;
  v211 = null23;
  v156 = @"plAssessment";
  if (plAssessment)
  {
    v212 = plAssessment;
    v157 = @"passiveLivenessAssessment";
    null25 = plAssessment;
  }

  else
  {
    null24 = [MEMORY[0x1E695DFB0] null];
    v212 = null24;
    v157 = @"passiveLivenessAssessment";
    null25 = [MEMORY[0x1E695DFB0] null];
  }

  v90 = null25;
  v213 = null25;
  v158 = @"plFacVersion";
  if (plFacVersion)
  {
    v214 = plFacVersion;
    v159 = @"passiveLivenessFacVersion";
    null27 = plFacVersion;
  }

  else
  {
    null26 = [MEMORY[0x1E695DFB0] null];
    v214 = null26;
    v159 = @"passiveLivenessFacVersion";
    null27 = [MEMORY[0x1E695DFB0] null];
  }

  v89 = null27;
  v215 = null27;
  v160 = @"plFacePoseVersion";
  if (plFacePoseVersion)
  {
    v216 = plFacePoseVersion;
    v161 = @"passiveLivenessFacePoseVersion";
    null29 = plFacePoseVersion;
  }

  else
  {
    null28 = [MEMORY[0x1E695DFB0] null];
    v216 = null28;
    v161 = @"passiveLivenessFacePoseVersion";
    null29 = [MEMORY[0x1E695DFB0] null];
  }

  v88 = null29;
  v217 = null29;
  v162 = @"plPadtoolVersion";
  if (plPadtoolVersion)
  {
    v218 = plPadtoolVersion;
    v163 = @"passiveLivenessPadtoolVersion";
    null31 = plPadtoolVersion;
  }

  else
  {
    null30 = [MEMORY[0x1E695DFB0] null];
    v218 = null30;
    v163 = @"passiveLivenessPadtoolVersion";
    null31 = [MEMORY[0x1E695DFB0] null];
  }

  v87 = null31;
  v219 = null31;
  v164 = @"plPrdVersion";
  if (plPrdVersion)
  {
    v220 = plPrdVersion;
    v165 = @"passiveLivenessPrdVersion";
    null33 = plPrdVersion;
  }

  else
  {
    null32 = [MEMORY[0x1E695DFB0] null];
    v220 = null32;
    v165 = @"passiveLivenessPrdVersion";
    null33 = [MEMORY[0x1E695DFB0] null];
  }

  v86 = null33;
  v221 = null33;
  v166 = @"shadowLabel";
  if (shadowLabel)
  {
    v222 = shadowLabel;
    v167 = @"livenessShadowLabel";
    null35 = shadowLabel;
  }

  else
  {
    null34 = [MEMORY[0x1E695DFB0] null];
    v222 = null34;
    v167 = @"livenessShadowLabel";
    null35 = [MEMORY[0x1E695DFB0] null];
  }

  v85 = null35;
  v223 = null35;
  v168 = @"smFacVersion";
  if (smFacVersion)
  {
    v224 = smFacVersion;
    v169 = @"livenessShadowFacVersion";
    null37 = smFacVersion;
  }

  else
  {
    null36 = [MEMORY[0x1E695DFB0] null];
    v224 = null36;
    v169 = @"livenessShadowFacVersion";
    null37 = [MEMORY[0x1E695DFB0] null];
  }

  v84 = null37;
  v225 = null37;
  v170 = @"smFacePoseVersion";
  if (smFacePoseVersion)
  {
    v226 = smFacePoseVersion;
    v171 = @"livenessShadowFacePoseVersion";
    null39 = smFacePoseVersion;
  }

  else
  {
    null38 = [MEMORY[0x1E695DFB0] null];
    v226 = null38;
    v171 = @"livenessShadowFacePoseVersion";
    null39 = [MEMORY[0x1E695DFB0] null];
  }

  v83 = null39;
  v227 = null39;
  v172 = @"smPrdVersion";
  if (smPrdVersion)
  {
    v228 = smPrdVersion;
    v173 = @"livenessShadowPrdVersion";
    null41 = smPrdVersion;
  }

  else
  {
    null40 = [MEMORY[0x1E695DFB0] null];
    v228 = null40;
    v173 = @"livenessShadowPrdVersion";
    null41 = [MEMORY[0x1E695DFB0] null];
  }

  v82 = null41;
  v229 = null41;
  v174 = @"smPadtoolVersion";
  if (smPadtoolVersion)
  {
    v230 = smPadtoolVersion;
    v175 = @"livenessShadowPadtoolVersion";
    null43 = smPadtoolVersion;
  }

  else
  {
    null42 = [MEMORY[0x1E695DFB0] null];
    v230 = null42;
    v175 = @"livenessShadowPadtoolVersion";
    null43 = [MEMORY[0x1E695DFB0] null];
  }

  v81 = null43;
  v231 = null43;
  v176 = @"smLivenessAssessment";
  if (smLivenessAssessment)
  {
    v232 = smLivenessAssessment;
    v177 = @"livenessShadowLivenessAssessment";
    null45 = smLivenessAssessment;
  }

  else
  {
    null44 = [MEMORY[0x1E695DFB0] null];
    v232 = null44;
    v177 = @"livenessShadowLivenessAssessment";
    null45 = [MEMORY[0x1E695DFB0] null];
  }

  v80 = null45;
  v233 = null45;
  v178 = @"smGestureAssessment";
  if (smGestureAssessment)
  {
    v234 = smGestureAssessment;
    v179 = @"livenessShadowGestureAssessment";
    null47 = smGestureAssessment;
  }

  else
  {
    null46 = [MEMORY[0x1E695DFB0] null];
    v234 = null46;
    v179 = @"livenessShadowGestureAssessment";
    null47 = [MEMORY[0x1E695DFB0] null];
  }

  v110 = gender;
  v111 = null60;
  v79 = null47;
  v235 = null47;
  v180 = @"smLivenessType";
  if (smLivenessType)
  {
    v236 = smLivenessType;
    v181 = @"livenessShadowLivenessType";
    null49 = smLivenessType;
  }

  else
  {
    null48 = [MEMORY[0x1E695DFB0] null];
    v236 = null48;
    v181 = @"livenessShadowLivenessType";
    null49 = [MEMORY[0x1E695DFB0] null];
  }

  v78 = null49;
  v237 = null49;
  v182 = @"fmAssessment";
  if (fmAssessment)
  {
    v238 = fmAssessment;
    v183 = @"faceMatchingAssessment";
    null51 = fmAssessment;
  }

  else
  {
    null50 = [MEMORY[0x1E695DFB0] null];
    v238 = null50;
    v183 = @"faceMatchingAssessment";
    null51 = [MEMORY[0x1E695DFB0] null];
  }

  v77 = null51;
  v239 = null51;
  v184 = @"fmModelVersion";
  if (fmModelVersion)
  {
    v240 = fmModelVersion;
    v185 = @"faceMatchingModelVersion";
    null53 = fmModelVersion;
  }

  else
  {
    null52 = [MEMORY[0x1E695DFB0] null];
    v240 = null52;
    v185 = @"faceMatchingModelVersion";
    null53 = [MEMORY[0x1E695DFB0] null];
  }

  v108 = alAssessment;
  v109 = proofingDecision;
  v76 = null53;
  v241 = null53;
  v186 = @"fmDetectorModelVersion";
  null55 = fmDetectorModelVersion;
  if (fmDetectorModelVersion)
  {
    v242 = fmDetectorModelVersion;
    v187 = @"faceMatchingDetectorModelVersion";
  }

  else
  {
    null54 = [MEMORY[0x1E695DFB0] null];
    v242 = null54;
    v187 = @"faceMatchingDetectorModelVersion";
    null55 = [MEMORY[0x1E695DFB0] null];
  }

  v44 = issuer;
  v243 = null55;
  v188 = @"fmSMAssessment";
  null57 = fmSMAssessment;
  if (fmSMAssessment)
  {
    v244 = fmSMAssessment;
    v189 = @"faceMatchingShadowAssessment";
  }

  else
  {
    null56 = [MEMORY[0x1E695DFB0] null];
    v244 = null56;
    v189 = @"faceMatchingShadowAssessment";
    null57 = [MEMORY[0x1E695DFB0] null];
  }

  v245 = null57;
  v190 = @"fmSMModelVersion";
  v46 = skinTone;
  if (fmSMModelVersion)
  {
    v246 = fmSMModelVersion;
    v191 = @"faceMatchingShadowModelVersion";
    null59 = fmSMModelVersion;
  }

  else
  {
    null60 = 0x1E695D000;
    null58 = [MEMORY[0x1E695DFB0] null];
    v246 = null58;
    v191 = @"faceMatchingShadowModelVersion";
    null59 = [MEMORY[0x1E695DFB0] null];
  }

  v247 = null59;
  v192 = @"fmSMDetectorModelVersion";
  if (fmSMDetectorModelVersion)
  {
    v248 = fmSMDetectorModelVersion;
    v193 = @"faceMatchingShadowDetectorModelVersion";
    null61 = fmSMDetectorModelVersion;
  }

  else
  {
    null60 = [MEMORY[0x1E695DFB0] null];
    v248 = null60;
    v193 = @"faceMatchingShadowDetectorModelVersion";
    null61 = [MEMORY[0x1E695DFB0] null];
  }

  v249 = null61;
  v194 = @"identityType";
  null62 = v112;
  if (!v112)
  {
    null62 = [MEMORY[0x1E695DFB0] null];
  }

  v250 = null62;
  v107 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v195 forKeys:v140 count:62];
  if (!v112)
  {
  }

  if (!fmSMDetectorModelVersion)
  {
  }

  if (!fmSMModelVersion)
  {
  }

  if (!fmSMAssessment)
  {
  }

  if (!fmDetectorModelVersion)
  {
  }

  if (!fmModelVersion)
  {
  }

  if (!fmAssessment)
  {
  }

  if (!smLivenessType)
  {
  }

  if (!smGestureAssessment)
  {
  }

  if (!smLivenessAssessment)
  {
  }

  if (!smPadtoolVersion)
  {
  }

  if (!smPrdVersion)
  {
  }

  if (!smFacePoseVersion)
  {
  }

  if (!smFacVersion)
  {
  }

  if (!shadowLabel)
  {
  }

  if (!plPrdVersion)
  {
  }

  if (!plPadtoolVersion)
  {
  }

  if (!plFacePoseVersion)
  {
  }

  if (!plFacVersion)
  {
  }

  if (!plAssessment)
  {
  }

  if (!plGestureAssessment)
  {
  }

  if (!v135)
  {
  }

  if (!alPrdVersion)
  {
  }

  if (!alPadtoolVersion)
  {
  }

  if (alFacePoseVersion)
  {
    if (alFacVersion)
    {
      goto LABEL_152;
    }
  }

  else
  {

    if (alFacVersion)
    {
      goto LABEL_152;
    }
  }

LABEL_152:
  if (_axSettingsJSONArray)
  {
    if (alGestureAssessment)
    {
      goto LABEL_154;
    }
  }

  else
  {

    if (alGestureAssessment)
    {
LABEL_154:
      if (v108)
      {
        goto LABEL_155;
      }

      goto LABEL_169;
    }
  }

  if (v108)
  {
LABEL_155:
    if (v44)
    {
      goto LABEL_156;
    }

    goto LABEL_170;
  }

LABEL_169:

  if (v44)
  {
LABEL_156:
    if (v109)
    {
      goto LABEL_157;
    }

    goto LABEL_171;
  }

LABEL_170:

  if (v109)
  {
LABEL_157:
    if (deviceLanguage)
    {
      goto LABEL_158;
    }

    goto LABEL_172;
  }

LABEL_171:

  if (deviceLanguage)
  {
LABEL_158:
    if (ethnicity)
    {
      goto LABEL_159;
    }

    goto LABEL_173;
  }

LABEL_172:

  if (ethnicity)
  {
LABEL_159:
    if (v46)
    {
      goto LABEL_160;
    }

    goto LABEL_174;
  }

LABEL_173:

  if (v46)
  {
LABEL_160:
    if (v110)
    {
      goto LABEL_161;
    }

LABEL_175:

    if (v111)
    {
      goto LABEL_162;
    }

    goto LABEL_176;
  }

LABEL_174:

  if (!v110)
  {
    goto LABEL_175;
  }

LABEL_161:
  if (v111)
  {
    goto LABEL_162;
  }

LABEL_176:

LABEL_162:

  return v107;
}

- (id)_axSettingsJSONArray
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  axSettings = [(BMWalletPaymentsCommerceUserProofingResult *)self axSettings];
  v5 = [axSettings countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(axSettings);
        }

        [v3 addObject:*(*(&v10 + 1) + 8 * i)];
      }

      v6 = [axSettings countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BMWalletPaymentsCommerceUserProofingResult)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v409[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"age"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v26 = objc_alloc(MEMORY[0x1E696ABC0]);
        v27 = *MEMORY[0x1E698F240];
        v408 = *MEMORY[0x1E696A578];
        v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"age"];
        v409[0] = v28;
        v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v409 forKeys:&v408 count:1];
        v7 = 0;
        selfCopy5 = 0;
        *error = [v26 initWithDomain:v27 code:2 userInfo:v8];
        goto LABEL_437;
      }

      v7 = 0;
      selfCopy5 = 0;
      goto LABEL_438;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:@"gender"];
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v31 = objc_alloc(MEMORY[0x1E696ABC0]);
        v32 = *MEMORY[0x1E698F240];
        v406 = *MEMORY[0x1E696A578];
        v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"gender"];
        v407 = v33;
        v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v407 forKeys:&v406 count:1];
        v35 = v31;
        v11 = v33;
        v327 = v34;
        v36 = [v35 initWithDomain:v32 code:2 userInfo:v34];
        v28 = 0;
        selfCopy5 = 0;
        *error = v36;
        goto LABEL_436;
      }

      v28 = 0;
      selfCopy5 = 0;
      goto LABEL_437;
    }

    v326 = v8;
  }

  else
  {
    v326 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"skinTone"];
  v325 = v8;
  v327 = v9;
  if (v9 && (v10 = v9, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!error)
      {
        v11 = 0;
        selfCopy5 = 0;
        v28 = v326;
        goto LABEL_436;
      }

      errorCopy = error;
      v37 = objc_alloc(MEMORY[0x1E696ABC0]);
      v38 = *MEMORY[0x1E698F240];
      v404 = *MEMORY[0x1E696A578];
      error = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"skinTone"];
      errorCopy2 = error;
      v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&errorCopy2 forKeys:&v404 count:1];
      v40 = v37;
      v13 = v39;
      v41 = [v40 initWithDomain:v38 code:2 userInfo:v39];
      v11 = 0;
      selfCopy5 = 0;
      *errorCopy = v41;
      goto LABEL_74;
    }

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = [dictionaryCopy objectForKeyedSubscript:@"ethnicity"];
  v324 = v12;
  if (v12)
  {
    v13 = v12;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v323 = v13;
        goto LABEL_13;
      }

      if (error)
      {
        errorCopy3 = error;
        v42 = v11;
        v43 = objc_alloc(MEMORY[0x1E696ABC0]);
        v44 = *MEMORY[0x1E698F240];
        v402 = *MEMORY[0x1E696A578];
        v45 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"ethnicity"];
        v403 = v45;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v403 forKeys:&v402 count:1];
        v46 = v43;
        v11 = v42;
        v47 = [v46 initWithDomain:v44 code:2 userInfo:v14];
        error = 0;
        selfCopy5 = 0;
        *errorCopy3 = v47;
        v28 = v326;
        goto LABEL_434;
      }

      selfCopy5 = 0;
LABEL_74:
      v28 = v326;
      goto LABEL_435;
    }
  }

  v323 = 0;
LABEL_13:
  v14 = [dictionaryCopy objectForKeyedSubscript:@"deviceLanguage"];
  if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v304 = v11;
        v48 = objc_alloc(MEMORY[0x1E696ABC0]);
        v49 = *MEMORY[0x1E698F240];
        v400 = *MEMORY[0x1E696A578];
        errorCopy4 = error;
        v319 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"deviceLanguage"];
        v401 = v319;
        v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v401 forKeys:&v400 count:1];
        v51 = v48;
        v11 = v304;
        error = v323;
        v320 = v50;
        v52 = [v51 initWithDomain:v49 code:2 userInfo:?];
        v45 = 0;
        selfCopy5 = 0;
        *errorCopy4 = v52;
        v28 = v326;
        goto LABEL_433;
      }

      v45 = 0;
      selfCopy5 = 0;
      v28 = v326;
      error = v323;
      goto LABEL_434;
    }

    v311 = v14;
  }

  else
  {
    v311 = 0;
  }

  v15 = [dictionaryCopy objectForKeyedSubscript:@"proofingDecision"];
  v320 = v15;
  if (v15 && (v16 = v15, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v305 = v11;
        v53 = objc_alloc(MEMORY[0x1E696ABC0]);
        v54 = *MEMORY[0x1E698F240];
        v398 = *MEMORY[0x1E696A578];
        errorCopy5 = error;
        v310 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"proofingDecision"];
        v399 = v310;
        v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v399 forKeys:&v398 count:1];
        v55 = v53;
        v11 = v305;
        error = v323;
        v56 = [v55 initWithDomain:v54 code:2 userInfo:v22];
        v319 = 0;
        selfCopy5 = 0;
        *errorCopy5 = v56;
        v28 = v326;
        v45 = v311;
        goto LABEL_432;
      }

      v319 = 0;
      selfCopy5 = 0;
      v28 = v326;
      v45 = v311;
      error = v323;
      goto LABEL_433;
    }

    v30 = v11;
    v18 = v14;
    v19 = v7;
    selfCopy2 = self;
    v21 = v30;
    v321 = v6;
    v319 = v16;
  }

  else
  {
    v17 = v11;
    v18 = v14;
    v19 = v7;
    selfCopy2 = self;
    v21 = v17;
    v321 = v6;
    v319 = 0;
  }

  v318 = v19;
  v22 = [dictionaryCopy objectForKeyedSubscript:@"issuer"];
  v312 = v22;
  if (v22 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v307 = v21;
        v62 = objc_alloc(MEMORY[0x1E696ABC0]);
        v63 = *MEMORY[0x1E698F240];
        v396 = *MEMORY[0x1E696A578];
        errorCopy6 = error;
        error = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"issuer"];
        errorCopy7 = error;
        v309 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&errorCopy7 forKeys:&v396 count:1];
        v65 = [v62 initWithDomain:v63 code:2 userInfo:?];
        v310 = 0;
        selfCopy5 = 0;
        *errorCopy6 = v65;
        v28 = v326;
        v45 = v311;
        v66 = selfCopy2;
        v7 = v318;
        v14 = v18;
        v6 = v321;
        v11 = v307;
        self = v66;
        goto LABEL_431;
      }

      v310 = 0;
      selfCopy5 = 0;
      v28 = v326;
      v45 = v311;
      v101 = selfCopy2;
      v7 = v318;
      v6 = v321;
      v102 = v21;
      self = v101;
      error = v323;
      v14 = v18;
      v11 = v102;
      goto LABEL_432;
    }

    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = [dictionaryCopy objectForKeyedSubscript:@"alAssessment"];
  v310 = v23;
  v302 = v18;
  if (v24)
  {
    v25 = v24;
  }

  else
  {
    v25 = [dictionaryCopy objectForKeyedSubscript:@"livenessAssessment"];

    if (!v25)
    {
      v309 = 0;
      goto LABEL_62;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v309 = v25;
LABEL_62:
    v299 = 0;
    goto LABEL_63;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v309 = v25;
    if (error)
    {
      v306 = v21;
      errorCopy8 = error;
      v58 = objc_alloc(MEMORY[0x1E696ABC0]);
      v59 = *MEMORY[0x1E698F240];
      v394 = *MEMORY[0x1E696A578];
      v301 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"alAssessment"];
      v395 = v301;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v395 forKeys:&v394 count:1];
      v303 = v11 = v306;
      v60 = [v58 initWithDomain:v59 code:2 userInfo:v303];
      error = 0;
      selfCopy5 = 0;
      *errorCopy8 = v60;
      v28 = v326;
      v45 = v311;
      v61 = selfCopy2;
      v7 = v318;
      v6 = v321;
      self = v61;
      goto LABEL_430;
    }

    selfCopy5 = 0;
    v28 = v326;
    v45 = v311;
    v98 = selfCopy2;
    v7 = v318;
    v6 = v321;
    v99 = v21;
    self = v98;
    v14 = v18;
    v11 = v99;
    goto LABEL_431;
  }

  v309 = v25;
  v299 = v309;
LABEL_63:
  v67 = [dictionaryCopy objectForKeyedSubscript:@"alGestureAssessment"];
  if (v67)
  {
    v68 = v67;
  }

  else
  {
    v68 = [dictionaryCopy objectForKeyedSubscript:@"gestureAssessment"];

    if (!v68)
    {
      errorCopy11 = error;
      v303 = 0;
      goto LABEL_76;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v303 = v68;
      if (error)
      {
        v69 = objc_alloc(MEMORY[0x1E696ABC0]);
        v70 = *MEMORY[0x1E698F240];
        v392 = *MEMORY[0x1E696A578];
        v300 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"alGestureAssessment"];
        v393 = v300;
        v297 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v393 forKeys:&v392 count:1];
        v71 = [v69 initWithDomain:v70 code:2 userInfo:?];
        v301 = 0;
        selfCopy5 = 0;
        *error = v71;
        v28 = v326;
        v45 = v311;
        error = v299;
        v6 = v321;
        v11 = v21;
        self = selfCopy2;
        v7 = v318;

        goto LABEL_429;
      }

      v301 = 0;
      selfCopy5 = 0;
      v28 = v326;
      v45 = v311;
      error = v299;
      v6 = v321;
      v11 = v21;
      self = selfCopy2;
      v7 = v318;
      goto LABEL_430;
    }

    errorCopy11 = error;
    v303 = v68;
    v301 = v303;
    goto LABEL_77;
  }

  v303 = v68;
  errorCopy11 = error;
LABEL_76:
  v301 = 0;
LABEL_77:
  v72 = [dictionaryCopy objectForKeyedSubscript:@"axSettings"];
  null = [MEMORY[0x1E695DFB0] null];
  v74 = [v72 isEqual:null];

  v6 = v321;
  v308 = v21;
  if (v74)
  {
    self = selfCopy2;

    v72 = 0;
  }

  else
  {
    v11 = v21;
    self = selfCopy2;
    if (v72)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v7 = v318;
        v300 = v72;
        if (!errorCopy11)
        {
          selfCopy5 = 0;
          v28 = v326;
          v45 = v311;
          error = v299;
          goto LABEL_429;
        }

        v95 = objc_alloc(MEMORY[0x1E696ABC0]);
        v96 = *MEMORY[0x1E698F240];
        v390 = *MEMORY[0x1E696A578];
        v298 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"axSettings"];
        v391 = v298;
        v97 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v391 forKeys:&v390 count:1];
        selfCopy5 = 0;
        *errorCopy11 = [v95 initWithDomain:v96 code:2 userInfo:v97];
        v94 = v97;
        v28 = v326;
        v45 = v311;
LABEL_101:
        error = v299;
        goto LABEL_428;
      }
    }
  }

  v75 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v72, "count")}];
  v329 = 0u;
  v330 = 0u;
  v331 = 0u;
  v332 = 0u;
  v76 = v72;
  v77 = [v76 countByEnumeratingWithState:&v329 objects:v389 count:16];
  v300 = v76;
  v298 = v75;
  if (!v77)
  {
    goto LABEL_90;
  }

  v78 = v77;
  v79 = *v330;
  while (2)
  {
    for (i = 0; i != v78; ++i)
    {
      if (*v330 != v79)
      {
        objc_enumerationMutation(v76);
      }

      v81 = *(*(&v329 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (errorCopy11)
        {
          v85 = objc_alloc(MEMORY[0x1E696ABC0]);
          v86 = *MEMORY[0x1E698F240];
          v387 = *MEMORY[0x1E696A578];
          v296 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"axSettings"];
          v388 = v296;
          v87 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v388 forKeys:&v387 count:1];
          v88 = v85;
          v89 = v86;
          v90 = v87;
LABEL_96:
          v28 = v326;
          v45 = v311;
          v22 = v312;
          error = v299;
          selfCopy5 = 0;
          *errorCopy11 = [v88 initWithDomain:v89 code:2 userInfo:v90];
          v295 = v300;
          v7 = v318;
          v6 = v321;
          goto LABEL_426;
        }

        goto LABEL_97;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy11)
        {
          v91 = objc_alloc(MEMORY[0x1E696ABC0]);
          v92 = *MEMORY[0x1E698F240];
          v385 = *MEMORY[0x1E696A578];
          v296 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"axSettings"];
          v386 = v296;
          v93 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v386 forKeys:&v385 count:1];
          v88 = v91;
          v89 = v92;
          v87 = v93;
          v90 = v93;
          goto LABEL_96;
        }

LABEL_97:
        selfCopy5 = 0;
        v94 = v76;
        v7 = v318;
        v6 = v321;
        v28 = v326;
        v11 = v308;
        v45 = v311;
        v22 = v312;
        goto LABEL_101;
      }

      v82 = v81;
      [v75 addObject:v82];
    }

    v78 = [v76 countByEnumeratingWithState:&v329 objects:v389 count:16];
    v22 = v312;
    if (v78)
    {
      continue;
    }

    break;
  }

LABEL_90:

  v83 = [dictionaryCopy objectForKeyedSubscript:@"alFacVersion"];
  if (v83)
  {
    v84 = v83;

    goto LABEL_105;
  }

  v84 = [dictionaryCopy objectForKeyedSubscript:@"facVersion"];

  if (!v84)
  {
LABEL_106:
    v295 = 0;
    goto LABEL_109;
  }

LABEL_105:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_106;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v296 = v84;
    v7 = v318;
    if (errorCopy11)
    {
      v103 = objc_alloc(MEMORY[0x1E696ABC0]);
      v104 = *MEMORY[0x1E698F240];
      v383 = *MEMORY[0x1E696A578];
      v87 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"alFacVersion"];
      v384 = v87;
      v294 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v384 forKeys:&v383 count:1];
      v295 = 0;
      selfCopy5 = 0;
      *errorCopy11 = [v103 initWithDomain:v104 code:2 userInfo:?];
      v6 = v321;
      v28 = v326;
      v45 = v311;
      goto LABEL_167;
    }

    v295 = 0;
    selfCopy5 = 0;
    v6 = v321;
    v28 = v326;
    v45 = v311;
    error = v299;
    v11 = v308;
    goto LABEL_427;
  }

  v84 = v84;
  v295 = v84;
LABEL_109:
  v100 = [dictionaryCopy objectForKeyedSubscript:@"alFacePoseVersion"];
  v296 = v84;
  if (v100)
  {
    v87 = v100;

    v7 = v318;
    goto LABEL_114;
  }

  v87 = [dictionaryCopy objectForKeyedSubscript:@"facePoseVersion"];

  v7 = v318;
  if (!v87)
  {
    v294 = 0;
    v6 = v321;
LABEL_124:
    v108 = [dictionaryCopy objectForKeyedSubscript:@"alPadtoolVersion"];
    if (v108)
    {
      v107 = v108;
    }

    else
    {
      v107 = [dictionaryCopy objectForKeyedSubscript:@"padtoolVersion"];

      if (!v107)
      {
        goto LABEL_128;
      }
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy11)
        {
          v292 = 0;
          selfCopy5 = 0;
          v28 = v326;
          v45 = v311;
          v22 = v312;
          error = v299;
LABEL_424:

          goto LABEL_425;
        }

        v293 = objc_alloc(MEMORY[0x1E696ABC0]);
        v290 = *MEMORY[0x1E698F240];
        v379 = *MEMORY[0x1E696A578];
        v287 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"alPadtoolVersion"];
        v380 = v287;
        v111 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v380 forKeys:&v379 count:1];
        v112 = v290;
        v289 = v111;
        v113 = [v293 initWithDomain:v112 code:2 userInfo:?];
        v292 = 0;
        selfCopy5 = 0;
        *errorCopy11 = v113;
        v28 = v326;
        v45 = v311;
        v22 = v312;
        error = v299;
        goto LABEL_423;
      }

      v107 = v107;
      v292 = v107;
      v22 = v312;
LABEL_131:
      v109 = [dictionaryCopy objectForKeyedSubscript:@"alPrdVersion"];
      v291 = v107;
      if (v109)
      {
        v110 = v109;
      }

      else
      {
        v110 = [dictionaryCopy objectForKeyedSubscript:@"prdVersion"];

        if (!v110)
        {
          v289 = 0;
          goto LABEL_144;
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v289 = v110;
LABEL_144:
        v287 = 0;
LABEL_145:
        v116 = [dictionaryCopy objectForKeyedSubscript:@"didStepUp"];
        v286 = v116;
        if (!v116 || (v117 = v116, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v284 = 0;
LABEL_148:
          v118 = [dictionaryCopy objectForKeyedSubscript:@"plGestureAssessment"];
          if (v118)
          {
            v119 = v118;
          }

          else
          {
            v119 = [dictionaryCopy objectForKeyedSubscript:@"passiveGestureAssessment"];

            if (!v119)
            {
LABEL_152:
              v281 = 0;
LABEL_155:
              v120 = [dictionaryCopy objectForKeyedSubscript:@"plAssessment"];
              v283 = v119;
              if (v120)
              {
                v121 = v120;
              }

              else
              {
                v121 = [dictionaryCopy objectForKeyedSubscript:@"passiveLivenessAssessment"];

                if (!v121)
                {
                  v280 = 0;
                  goto LABEL_175;
                }
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v280 = v121;
LABEL_175:
                v278 = 0;
                goto LABEL_176;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v280 = v121;
                v278 = v280;
LABEL_176:
                v131 = [dictionaryCopy objectForKeyedSubscript:@"plFacVersion"];
                if (v131)
                {
                  v132 = v131;
                }

                else
                {
                  v132 = [dictionaryCopy objectForKeyedSubscript:@"passiveLivenessFacVersion"];

                  if (!v132)
                  {
LABEL_180:
                    v276 = 0;
LABEL_183:
                    v275 = v132;
                    v133 = [dictionaryCopy objectForKeyedSubscript:@"plFacePoseVersion"];
                    if (v133)
                    {
                      v134 = v133;
                    }

                    else
                    {
                      v134 = [dictionaryCopy objectForKeyedSubscript:@"passiveLivenessFacePoseVersion"];

                      if (!v134)
                      {
                        v273 = 0;
                        goto LABEL_197;
                      }
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v273 = v134;
LABEL_197:
                      v271 = 0;
                      goto LABEL_198;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v273 = v134;
                      v271 = v273;
LABEL_198:
                      v140 = [dictionaryCopy objectForKeyedSubscript:@"plPadtoolVersion"];
                      if (v140)
                      {
                        v141 = v140;
                      }

                      else
                      {
                        v141 = [dictionaryCopy objectForKeyedSubscript:@"passiveLivenessPadtoolVersion"];

                        if (!v141)
                        {
LABEL_202:
                          v269 = 0;
LABEL_205:
                          v268 = v141;
                          v142 = [dictionaryCopy objectForKeyedSubscript:@"plPrdVersion"];
                          if (v142)
                          {
                            v143 = v142;
                          }

                          else
                          {
                            v143 = [dictionaryCopy objectForKeyedSubscript:@"passiveLivenessPrdVersion"];

                            if (!v143)
                            {
                              v264 = 0;
                              v266 = 0;
                              goto LABEL_221;
                            }
                          }

                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v264 = 0;
                            v266 = v143;
LABEL_221:
                            v149 = [dictionaryCopy objectForKeyedSubscript:@"shadowLabel"];
                            if (v149)
                            {
                              v150 = v149;
                            }

                            else
                            {
                              v150 = [dictionaryCopy objectForKeyedSubscript:@"livenessShadowLabel"];

                              if (!v150)
                              {
LABEL_225:
                                v262 = 0;
LABEL_228:
                                v261 = v150;
                                v151 = [dictionaryCopy objectForKeyedSubscript:@"smFacVersion"];
                                if (v151)
                                {
                                  v152 = v151;
                                }

                                else
                                {
                                  v152 = [dictionaryCopy objectForKeyedSubscript:@"livenessShadowFacVersion"];

                                  if (!v152)
                                  {
                                    v257 = 0;
                                    v259 = 0;
                                    goto LABEL_244;
                                  }
                                }

                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v257 = 0;
                                  v259 = v152;
LABEL_244:
                                  v158 = [dictionaryCopy objectForKeyedSubscript:@"smFacePoseVersion"];
                                  if (v158)
                                  {
                                    v159 = v158;
                                  }

                                  else
                                  {
                                    v159 = [dictionaryCopy objectForKeyedSubscript:@"livenessShadowFacePoseVersion"];

                                    if (!v159)
                                    {
LABEL_248:
                                      v255 = 0;
                                      goto LABEL_251;
                                    }
                                  }

                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    goto LABEL_248;
                                  }

                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v159 = v159;
                                    v255 = v159;
LABEL_251:
                                    v254 = v159;
                                    v160 = [dictionaryCopy objectForKeyedSubscript:@"smPrdVersion"];
                                    if (v160)
                                    {
                                      v161 = v160;
                                    }

                                    else
                                    {
                                      v161 = [dictionaryCopy objectForKeyedSubscript:@"livenessShadowPrdVersion"];

                                      if (!v161)
                                      {
                                        v250 = 0;
                                        v252 = 0;
                                        goto LABEL_267;
                                      }
                                    }

                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v250 = v161;
                                      v252 = 0;
                                    }

                                    else
                                    {
                                      objc_opt_class();
                                      if ((objc_opt_isKindOfClass() & 1) == 0)
                                      {
                                        v250 = v161;
                                        if (!errorCopy11)
                                        {
                                          v252 = 0;
                                          selfCopy5 = 0;
                                          v28 = v326;
                                          v45 = v311;
                                          v22 = v312;
                                          error = v299;
LABEL_411:
                                          v164 = v250;
                                          goto LABEL_412;
                                        }

                                        v165 = objc_alloc(MEMORY[0x1E696ABC0]);
                                        v253 = *MEMORY[0x1E698F240];
                                        v355 = *MEMORY[0x1E696A578];
                                        v248 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"smPrdVersion"];
                                        v356 = v248;
                                        v247 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v356 forKeys:&v355 count:1];
                                        v166 = [v165 initWithDomain:v253 code:2 userInfo:?];
                                        v252 = 0;
                                        selfCopy5 = 0;
                                        *errorCopy11 = v166;
                                        goto LABEL_310;
                                      }

                                      v250 = v161;
                                      v252 = v250;
                                    }

LABEL_267:
                                    v167 = [dictionaryCopy objectForKeyedSubscript:@"smPadtoolVersion"];
                                    if (v167)
                                    {
                                      v168 = v167;
                                    }

                                    else
                                    {
                                      v168 = [dictionaryCopy objectForKeyedSubscript:@"livenessShadowPadtoolVersion"];

                                      if (!v168)
                                      {
LABEL_271:
                                        v248 = 0;
LABEL_274:
                                        v247 = v168;
                                        v169 = [dictionaryCopy objectForKeyedSubscript:@"smLivenessAssessment"];
                                        if (v169)
                                        {
                                          v170 = v169;
                                        }

                                        else
                                        {
                                          v170 = [dictionaryCopy objectForKeyedSubscript:@"livenessShadowLivenessAssessment"];

                                          if (!v170)
                                          {
LABEL_278:
                                            v245 = 0;
LABEL_281:
                                            v171 = [dictionaryCopy objectForKeyedSubscript:@"smGestureAssessment"];
                                            v243 = v170;
                                            if (v171)
                                            {
                                              v172 = v171;
                                            }

                                            else
                                            {
                                              v172 = [dictionaryCopy objectForKeyedSubscript:@"livenessShadowGestureAssessment"];

                                              if (!v172)
                                              {
                                                v240 = 0;
                                                v241 = 0;
                                                goto LABEL_300;
                                              }
                                            }

                                            objc_opt_class();
                                            if (objc_opt_isKindOfClass())
                                            {
                                              v240 = 0;
                                              v241 = v172;
LABEL_300:
                                              v182 = [dictionaryCopy objectForKeyedSubscript:@"smLivenessType"];
                                              if (v182)
                                              {
                                                v183 = v182;
                                              }

                                              else
                                              {
                                                v183 = [dictionaryCopy objectForKeyedSubscript:@"livenessShadowLivenessType"];

                                                if (!v183)
                                                {
                                                  v238 = 0;
                                                  v239 = 0;
                                                  goto LABEL_312;
                                                }
                                              }

                                              objc_opt_class();
                                              if (objc_opt_isKindOfClass())
                                              {
                                                v238 = v183;
                                                v239 = 0;
LABEL_312:
                                                v187 = [dictionaryCopy objectForKeyedSubscript:@"fmAssessment"];
                                                selfCopy3 = self;
                                                v322 = v6;
                                                v233 = v87;
                                                if (v187)
                                                {
                                                  v188 = v187;
                                                }

                                                else
                                                {
                                                  v188 = [dictionaryCopy objectForKeyedSubscript:@"faceMatchingAssessment"];

                                                  if (!v188)
                                                  {
                                                    v235 = 0;
                                                    v236 = 0;
                                                    goto LABEL_324;
                                                  }
                                                }

                                                objc_opt_class();
                                                if (objc_opt_isKindOfClass())
                                                {
                                                  v235 = v188;
                                                  v236 = 0;
LABEL_324:
                                                  v191 = [dictionaryCopy objectForKeyedSubscript:@"fmModelVersion"];
                                                  if (v191)
                                                  {
                                                    v192 = v191;
                                                  }

                                                  else
                                                  {
                                                    v192 = [dictionaryCopy objectForKeyedSubscript:@"faceMatchingModelVersion"];

                                                    if (!v192)
                                                    {
LABEL_328:
                                                      v234 = 0;
LABEL_331:
                                                      v193 = [dictionaryCopy objectForKeyedSubscript:@"fmDetectorModelVersion"];
                                                      v232 = v192;
                                                      if (v193)
                                                      {
                                                        v194 = v193;
                                                      }

                                                      else
                                                      {
                                                        v194 = [dictionaryCopy objectForKeyedSubscript:@"faceMatchingDetectorModelVersion"];

                                                        if (!v194)
                                                        {
                                                          v230 = 0;
                                                          v231 = 0;
                                                          goto LABEL_347;
                                                        }
                                                      }

                                                      objc_opt_class();
                                                      if (objc_opt_isKindOfClass())
                                                      {
                                                        v230 = v194;
                                                        v231 = 0;
LABEL_347:
                                                        v199 = [dictionaryCopy objectForKeyedSubscript:@"fmSMAssessment"];
                                                        if (v199)
                                                        {
                                                          v200 = v199;
                                                        }

                                                        else
                                                        {
                                                          v200 = [dictionaryCopy objectForKeyedSubscript:@"faceMatchingShadowAssessment"];

                                                          if (!v200)
                                                          {
                                                            v227 = 0;
                                                            goto LABEL_358;
                                                          }
                                                        }

                                                        objc_opt_class();
                                                        if (objc_opt_isKindOfClass())
                                                        {
                                                          v227 = v200;
LABEL_358:
                                                          v229 = 0;
LABEL_359:
                                                          v203 = [dictionaryCopy objectForKeyedSubscript:@"fmSMModelVersion"];
                                                          if (v203)
                                                          {
                                                            v204 = v203;
                                                          }

                                                          else
                                                          {
                                                            v204 = [dictionaryCopy objectForKeyedSubscript:@"faceMatchingShadowModelVersion"];

                                                            if (!v204)
                                                            {
                                                              v228 = 0;
                                                              goto LABEL_370;
                                                            }
                                                          }

                                                          objc_opt_class();
                                                          v228 = v204;
                                                          if ((objc_opt_isKindOfClass() & 1) == 0)
                                                          {
                                                            objc_opt_class();
                                                            if (objc_opt_isKindOfClass())
                                                            {
                                                              v228 = v204;
                                                              v226 = v228;
LABEL_371:
                                                              v207 = [dictionaryCopy objectForKeyedSubscript:@"fmSMDetectorModelVersion"];
                                                              if (v207)
                                                              {
                                                                v208 = v207;
                                                              }

                                                              else
                                                              {
                                                                selfCopy4 = self;
                                                                v208 = [dictionaryCopy objectForKeyedSubscript:@"faceMatchingShadowDetectorModelVersion"];

                                                                if (!v208)
                                                                {
                                                                  self = selfCopy4;
                                                                  v225 = 0;
                                                                  goto LABEL_383;
                                                                }
                                                              }

                                                              objc_opt_class();
                                                              v225 = v208;
                                                              if (objc_opt_isKindOfClass())
                                                              {
                                                                self = selfCopy3;
LABEL_383:
                                                                v210 = 0;
LABEL_384:
                                                                v223 = [dictionaryCopy objectForKeyedSubscript:@"identityType"];
                                                                v224 = v210;
                                                                if (!v223 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                {
                                                                  v214 = 0;
                                                                  v28 = v326;
                                                                  v45 = v311;
                                                                  error = v299;
                                                                  v215 = v298;
                                                                  v87 = v233;
LABEL_387:
                                                                  v213 = v214;
                                                                  v222 = v210;
                                                                  v7 = v318;
                                                                  self = [(BMWalletPaymentsCommerceUserProofingResult *)self initWithAge:v318 gender:v28 skinTone:v308 ethnicity:v323 deviceLanguage:v45 proofingDecision:v319 issuer:v310 alAssessment:error alGestureAssessment:v301 axSettings:v215 alFacVersion:v295 alFacePoseVersion:v87 alPadtoolVersion:v292 alPrdVersion:v287 didStepUp:v284 plGestureAssessment:v281 plAssessment:v278 plFacVersion:v276 plFacePoseVersion:v271 plPadtoolVersion:v269 plPrdVersion:v264 shadowLabel:v262 smFacVersion:v257 smFacePoseVersion:v255 smPrdVersion:v252 smPadtoolVersion:v248 smLivenessAssessment:v245 smGestureAssessment:v240 smLivenessType:v239 fmAssessment:v236 fmModelVersion:v234 fmDetectorModelVersion:v231 fmSMAssessment:v229 fmSMModelVersion:v226 fmSMDetectorModelVersion:v222 identityType:v214];
                                                                  selfCopy5 = self;
                                                                  v22 = v312;
LABEL_396:

                                                                  v6 = v322;
LABEL_401:

                                                                  goto LABEL_402;
                                                                }

                                                                objc_opt_class();
                                                                if (objc_opt_isKindOfClass())
                                                                {
                                                                  v214 = v223;
                                                                  v28 = v326;
                                                                  v45 = v311;
                                                                  error = v299;
                                                                  v215 = v298;
                                                                  v87 = v233;
                                                                  goto LABEL_387;
                                                                }

                                                                if (errorCopy11)
                                                                {
                                                                  v216 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                  v217 = *MEMORY[0x1E698F240];
                                                                  v333 = *MEMORY[0x1E696A578];
                                                                  v218 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"identityType"];
                                                                  v334 = v218;
                                                                  v219 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v334 forKeys:&v333 count:1];
                                                                  *errorCopy11 = [v216 initWithDomain:v217 code:2 userInfo:v219];
                                                                }

                                                                v213 = 0;
                                                                selfCopy5 = 0;
LABEL_395:
                                                                v7 = v318;
                                                                v28 = v326;
                                                                v45 = v311;
                                                                v22 = v312;
                                                                error = v299;
                                                                v87 = v233;
                                                                v107 = v291;
                                                                goto LABEL_396;
                                                              }

                                                              self = selfCopy3;
                                                              objc_opt_class();
                                                              if (objc_opt_isKindOfClass())
                                                              {
                                                                v225 = v225;
                                                                v210 = v225;
                                                                goto LABEL_384;
                                                              }

                                                              if (errorCopy11)
                                                              {
                                                                v211 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                v212 = *MEMORY[0x1E698F240];
                                                                v335 = *MEMORY[0x1E696A578];
                                                                v213 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"fmSMDetectorModelVersion"];
                                                                v336 = v213;
                                                                v223 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v336 forKeys:&v335 count:1];
                                                                v224 = 0;
                                                                selfCopy5 = 0;
                                                                *errorCopy11 = [v211 initWithDomain:v212 code:2 userInfo:?];
                                                                goto LABEL_395;
                                                              }

                                                              v224 = 0;
                                                              selfCopy5 = 0;
                                                              v7 = v318;
                                                              v28 = v326;
LABEL_400:
                                                              v45 = v311;
                                                              v22 = v312;
                                                              error = v299;
                                                              v87 = v233;
                                                              goto LABEL_401;
                                                            }

                                                            if (errorCopy11)
                                                            {
                                                              v205 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                              v206 = *MEMORY[0x1E698F240];
                                                              v337 = *MEMORY[0x1E696A578];
                                                              v224 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"fmSMModelVersion"];
                                                              v338 = v224;
                                                              v225 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v338 forKeys:&v337 count:1];
                                                              v226 = 0;
                                                              selfCopy5 = 0;
                                                              *errorCopy11 = [v205 initWithDomain:v206 code:2 userInfo:?];
                                                              v28 = v326;
                                                              goto LABEL_400;
                                                            }

                                                            v226 = 0;
                                                            selfCopy5 = 0;
                                                            v28 = v326;
LABEL_398:
                                                            v45 = v311;
                                                            v22 = v312;
                                                            error = v299;
LABEL_402:

                                                            goto LABEL_403;
                                                          }

LABEL_370:
                                                          v226 = 0;
                                                          goto LABEL_371;
                                                        }

                                                        objc_opt_class();
                                                        if (objc_opt_isKindOfClass())
                                                        {
                                                          v227 = v200;
                                                          v229 = v227;
                                                          goto LABEL_359;
                                                        }

                                                        v227 = v200;
                                                        if (errorCopy11)
                                                        {
                                                          v201 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                          v202 = *MEMORY[0x1E698F240];
                                                          v339 = *MEMORY[0x1E696A578];
                                                          v226 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"fmSMAssessment"];
                                                          v340 = v226;
                                                          v228 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v340 forKeys:&v339 count:1];
                                                          v229 = 0;
                                                          selfCopy5 = 0;
                                                          *errorCopy11 = [v201 initWithDomain:v202 code:2 userInfo:?];
                                                          v28 = v326;
                                                          goto LABEL_398;
                                                        }

                                                        v229 = 0;
                                                        selfCopy5 = 0;
LABEL_391:
                                                        v6 = v322;
                                                        v28 = v326;
                                                        v45 = v311;
                                                        v22 = v312;
                                                        error = v299;
LABEL_403:

                                                        goto LABEL_404;
                                                      }

                                                      objc_opt_class();
                                                      if (objc_opt_isKindOfClass())
                                                      {
                                                        v230 = v194;
                                                        v231 = v230;
                                                        goto LABEL_347;
                                                      }

                                                      v230 = v194;
                                                      if (errorCopy11)
                                                      {
                                                        v197 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                        v198 = *MEMORY[0x1E698F240];
                                                        v341 = *MEMORY[0x1E696A578];
                                                        v229 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"fmDetectorModelVersion"];
                                                        v342 = v229;
                                                        v227 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v342 forKeys:&v341 count:1];
                                                        v231 = 0;
                                                        selfCopy5 = 0;
                                                        *errorCopy11 = [v197 initWithDomain:v198 code:2 userInfo:?];
                                                        goto LABEL_391;
                                                      }

                                                      v231 = 0;
                                                      selfCopy5 = 0;
LABEL_381:
                                                      v6 = v322;
                                                      v28 = v326;
                                                      v45 = v311;
                                                      v22 = v312;
                                                      error = v299;
LABEL_404:

                                                      goto LABEL_405;
                                                    }
                                                  }

                                                  objc_opt_class();
                                                  if (objc_opt_isKindOfClass())
                                                  {
                                                    goto LABEL_328;
                                                  }

                                                  objc_opt_class();
                                                  if (objc_opt_isKindOfClass())
                                                  {
                                                    v192 = v192;
                                                    v234 = v192;
                                                    goto LABEL_331;
                                                  }

                                                  v232 = v192;
                                                  if (errorCopy11)
                                                  {
                                                    v195 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                    v196 = *MEMORY[0x1E698F240];
                                                    v343 = *MEMORY[0x1E696A578];
                                                    v231 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"fmModelVersion"];
                                                    v344 = v231;
                                                    v230 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v344 forKeys:&v343 count:1];
                                                    v234 = 0;
                                                    selfCopy5 = 0;
                                                    *errorCopy11 = [v195 initWithDomain:v196 code:2 userInfo:?];
                                                    goto LABEL_381;
                                                  }

                                                  v234 = 0;
                                                  selfCopy5 = 0;
LABEL_368:
                                                  v6 = v322;
                                                  v28 = v326;
                                                  v45 = v311;
                                                  v22 = v312;
                                                  error = v299;
LABEL_405:

                                                  goto LABEL_406;
                                                }

                                                objc_opt_class();
                                                if (objc_opt_isKindOfClass())
                                                {
                                                  v235 = v188;
                                                  v236 = v235;
                                                  goto LABEL_324;
                                                }

                                                v235 = v188;
                                                if (errorCopy11)
                                                {
                                                  v189 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                  v190 = *MEMORY[0x1E698F240];
                                                  v345 = *MEMORY[0x1E696A578];
                                                  v234 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"fmAssessment"];
                                                  v346 = v234;
                                                  v232 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v346 forKeys:&v345 count:1];
                                                  v236 = 0;
                                                  selfCopy5 = 0;
                                                  *errorCopy11 = [v189 initWithDomain:v190 code:2 userInfo:?];
                                                  goto LABEL_368;
                                                }

                                                v236 = 0;
                                                selfCopy5 = 0;
                                                v28 = v326;
                                                v45 = v311;
                                                v22 = v312;
                                                error = v299;
LABEL_406:

                                                goto LABEL_407;
                                              }

                                              objc_opt_class();
                                              if (objc_opt_isKindOfClass())
                                              {
                                                v238 = v183;
                                                v239 = v238;
                                                goto LABEL_312;
                                              }

                                              v238 = v183;
                                              if (errorCopy11)
                                              {
                                                v184 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                v185 = *MEMORY[0x1E698F240];
                                                v347 = *MEMORY[0x1E696A578];
                                                v236 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"smLivenessType"];
                                                v348 = v236;
                                                v235 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v348 forKeys:&v347 count:1];
                                                v186 = [v184 initWithDomain:v185 code:2 userInfo:?];
                                                v239 = 0;
                                                selfCopy5 = 0;
                                                *errorCopy11 = v186;
                                                v28 = v326;
                                                v45 = v311;
                                                v22 = v312;
                                                error = v299;
                                                goto LABEL_406;
                                              }

                                              v239 = 0;
                                              selfCopy5 = 0;
LABEL_345:
                                              v28 = v326;
                                              v45 = v311;
                                              v22 = v312;
                                              error = v299;
LABEL_407:

                                              goto LABEL_408;
                                            }

                                            objc_opt_class();
                                            if (objc_opt_isKindOfClass())
                                            {
                                              v240 = v172;
                                              v241 = v240;
                                              goto LABEL_300;
                                            }

                                            v241 = v172;
                                            if (errorCopy11)
                                            {
                                              v179 = objc_alloc(MEMORY[0x1E696ABC0]);
                                              v180 = *MEMORY[0x1E698F240];
                                              v349 = *MEMORY[0x1E696A578];
                                              v239 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"smGestureAssessment"];
                                              v350 = v239;
                                              v238 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v350 forKeys:&v349 count:1];
                                              v181 = [v179 initWithDomain:v180 code:2 userInfo:?];
                                              v240 = 0;
                                              selfCopy5 = 0;
                                              *errorCopy11 = v181;
                                              goto LABEL_345;
                                            }

                                            v240 = 0;
                                            selfCopy5 = 0;
LABEL_343:
                                            v28 = v326;
                                            v45 = v311;
                                            v22 = v312;
                                            error = v299;
LABEL_408:

                                            goto LABEL_409;
                                          }
                                        }

                                        objc_opt_class();
                                        if (objc_opt_isKindOfClass())
                                        {
                                          goto LABEL_278;
                                        }

                                        objc_opt_class();
                                        if (objc_opt_isKindOfClass())
                                        {
                                          v170 = v170;
                                          v245 = v170;
                                          goto LABEL_281;
                                        }

                                        v243 = v170;
                                        if (errorCopy11)
                                        {
                                          v246 = objc_alloc(MEMORY[0x1E696ABC0]);
                                          v242 = *MEMORY[0x1E698F240];
                                          v351 = *MEMORY[0x1E696A578];
                                          v240 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"smLivenessAssessment"];
                                          v352 = v240;
                                          v176 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v352 forKeys:&v351 count:1];
                                          v177 = v242;
                                          v241 = v176;
                                          v178 = [v246 initWithDomain:v177 code:2 userInfo:?];
                                          v245 = 0;
                                          selfCopy5 = 0;
                                          *errorCopy11 = v178;
                                          goto LABEL_343;
                                        }

                                        v245 = 0;
                                        selfCopy5 = 0;
LABEL_322:
                                        v28 = v326;
                                        v45 = v311;
                                        v22 = v312;
                                        error = v299;
LABEL_409:

                                        goto LABEL_410;
                                      }
                                    }

                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      goto LABEL_271;
                                    }

                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v168 = v168;
                                      v248 = v168;
                                      goto LABEL_274;
                                    }

                                    v247 = v168;
                                    if (errorCopy11)
                                    {
                                      v249 = objc_alloc(MEMORY[0x1E696ABC0]);
                                      v244 = *MEMORY[0x1E698F240];
                                      v353 = *MEMORY[0x1E696A578];
                                      v245 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"smPadtoolVersion"];
                                      v354 = v245;
                                      v173 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v354 forKeys:&v353 count:1];
                                      v174 = v244;
                                      v243 = v173;
                                      v175 = [v249 initWithDomain:v174 code:2 userInfo:?];
                                      v248 = 0;
                                      selfCopy5 = 0;
                                      *errorCopy11 = v175;
                                      goto LABEL_322;
                                    }

                                    v248 = 0;
                                    selfCopy5 = 0;
LABEL_310:
                                    v28 = v326;
                                    v45 = v311;
                                    v22 = v312;
                                    error = v299;
LABEL_410:

                                    goto LABEL_411;
                                  }

                                  v254 = v159;
                                  if (errorCopy11)
                                  {
                                    v256 = objc_alloc(MEMORY[0x1E696ABC0]);
                                    v251 = *MEMORY[0x1E698F240];
                                    v357 = *MEMORY[0x1E696A578];
                                    v252 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"smFacePoseVersion"];
                                    v358 = v252;
                                    v162 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v358 forKeys:&v357 count:1];
                                    v163 = [v256 initWithDomain:v251 code:2 userInfo:v162];
                                    v255 = 0;
                                    selfCopy5 = 0;
                                    *errorCopy11 = v163;
                                    v164 = v162;
                                    v28 = v326;
                                    v45 = v311;
                                    v22 = v312;
                                    error = v299;
LABEL_412:

                                    goto LABEL_413;
                                  }

                                  v255 = 0;
                                  selfCopy5 = 0;
LABEL_297:
                                  v28 = v326;
                                  v45 = v311;
                                  v22 = v312;
                                  error = v299;
LABEL_413:

                                  goto LABEL_414;
                                }

                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v257 = v152;
                                  v259 = v257;
                                  goto LABEL_244;
                                }

                                v259 = v152;
                                if (errorCopy11)
                                {
                                  v156 = objc_alloc(MEMORY[0x1E696ABC0]);
                                  v258 = *MEMORY[0x1E698F240];
                                  v359 = *MEMORY[0x1E696A578];
                                  v255 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"smFacVersion"];
                                  v360 = v255;
                                  v254 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v360 forKeys:&v359 count:1];
                                  v157 = [v156 initWithDomain:v258 code:2 userInfo:?];
                                  v257 = 0;
                                  selfCopy5 = 0;
                                  *errorCopy11 = v157;
                                  goto LABEL_297;
                                }

                                v257 = 0;
                                selfCopy5 = 0;
LABEL_293:
                                v28 = v326;
                                v45 = v311;
                                v22 = v312;
                                error = v299;
LABEL_414:

                                goto LABEL_415;
                              }
                            }

                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              goto LABEL_225;
                            }

                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v150 = v150;
                              v262 = v150;
                              goto LABEL_228;
                            }

                            v261 = v150;
                            if (errorCopy11)
                            {
                              v263 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v260 = *MEMORY[0x1E698F240];
                              v361 = *MEMORY[0x1E696A578];
                              v257 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"shadowLabel"];
                              v362 = v257;
                              v153 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v362 forKeys:&v361 count:1];
                              v154 = v260;
                              v259 = v153;
                              v155 = [v263 initWithDomain:v154 code:2 userInfo:?];
                              v262 = 0;
                              selfCopy5 = 0;
                              *errorCopy11 = v155;
                              goto LABEL_293;
                            }

                            v262 = 0;
                            selfCopy5 = 0;
LABEL_265:
                            v28 = v326;
                            v45 = v311;
                            v22 = v312;
                            error = v299;
LABEL_415:

                            goto LABEL_416;
                          }

                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v264 = v143;
                            v266 = v264;
                            goto LABEL_221;
                          }

                          v266 = v143;
                          if (errorCopy11)
                          {
                            v147 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v265 = *MEMORY[0x1E698F240];
                            v363 = *MEMORY[0x1E696A578];
                            v262 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"plPrdVersion"];
                            v364 = v262;
                            v261 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v364 forKeys:&v363 count:1];
                            v148 = [v147 initWithDomain:v265 code:2 userInfo:?];
                            v264 = 0;
                            selfCopy5 = 0;
                            *errorCopy11 = v148;
                            goto LABEL_265;
                          }

                          v264 = 0;
                          selfCopy5 = 0;
LABEL_263:
                          v28 = v326;
                          v45 = v311;
                          v22 = v312;
                          error = v299;
LABEL_416:

                          goto LABEL_417;
                        }
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        goto LABEL_202;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v141 = v141;
                        v269 = v141;
                        goto LABEL_205;
                      }

                      v268 = v141;
                      if (errorCopy11)
                      {
                        v270 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v267 = *MEMORY[0x1E698F240];
                        v365 = *MEMORY[0x1E696A578];
                        v264 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"plPadtoolVersion"];
                        v366 = v264;
                        v144 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v366 forKeys:&v365 count:1];
                        v145 = v267;
                        v266 = v144;
                        v146 = [v270 initWithDomain:v145 code:2 userInfo:?];
                        v269 = 0;
                        selfCopy5 = 0;
                        *errorCopy11 = v146;
                        goto LABEL_263;
                      }

                      v269 = 0;
                      selfCopy5 = 0;
LABEL_242:
                      v28 = v326;
                      v45 = v311;
                      v22 = v312;
                      error = v299;
LABEL_417:

                      goto LABEL_418;
                    }

                    v273 = v134;
                    if (errorCopy11)
                    {
                      v138 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v272 = *MEMORY[0x1E698F240];
                      v367 = *MEMORY[0x1E696A578];
                      v269 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"plFacePoseVersion"];
                      v368 = v269;
                      v268 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v368 forKeys:&v367 count:1];
                      v139 = [v138 initWithDomain:v272 code:2 userInfo:?];
                      v271 = 0;
                      selfCopy5 = 0;
                      *errorCopy11 = v139;
                      goto LABEL_242;
                    }

                    v271 = 0;
                    selfCopy5 = 0;
LABEL_240:
                    v28 = v326;
                    v45 = v311;
                    v22 = v312;
                    error = v299;
LABEL_418:

                    goto LABEL_419;
                  }
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  goto LABEL_180;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v132 = v132;
                  v276 = v132;
                  goto LABEL_183;
                }

                v275 = v132;
                if (errorCopy11)
                {
                  v277 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v274 = *MEMORY[0x1E698F240];
                  v369 = *MEMORY[0x1E696A578];
                  v271 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"plFacVersion"];
                  v370 = v271;
                  v135 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v370 forKeys:&v369 count:1];
                  v136 = v274;
                  v273 = v135;
                  v137 = [v277 initWithDomain:v136 code:2 userInfo:?];
                  v276 = 0;
                  selfCopy5 = 0;
                  *errorCopy11 = v137;
                  goto LABEL_240;
                }

                v276 = 0;
                selfCopy5 = 0;
LABEL_219:
                v28 = v326;
                v45 = v311;
                v22 = v312;
                error = v299;
LABEL_419:

                goto LABEL_420;
              }

              v280 = v121;
              if (errorCopy11)
              {
                v129 = objc_alloc(MEMORY[0x1E696ABC0]);
                v279 = *MEMORY[0x1E698F240];
                v371 = *MEMORY[0x1E696A578];
                v276 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"plAssessment"];
                v372 = v276;
                v275 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v372 forKeys:&v371 count:1];
                v130 = [v129 initWithDomain:v279 code:2 userInfo:?];
                v278 = 0;
                selfCopy5 = 0;
                *errorCopy11 = v130;
                goto LABEL_219;
              }

              v278 = 0;
              selfCopy5 = 0;
LABEL_217:
              v28 = v326;
              v45 = v311;
              v22 = v312;
              error = v299;
LABEL_420:

              goto LABEL_421;
            }
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            goto LABEL_152;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v119 = v119;
            v281 = v119;
            goto LABEL_155;
          }

          v283 = v119;
          if (errorCopy11)
          {
            v122 = objc_alloc(MEMORY[0x1E696ABC0]);
            v282 = *MEMORY[0x1E698F240];
            v373 = *MEMORY[0x1E696A578];
            v278 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"plGestureAssessment"];
            v374 = v278;
            v280 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v374 forKeys:&v373 count:1];
            v123 = [v122 initWithDomain:v282 code:2 userInfo:?];
            v281 = 0;
            selfCopy5 = 0;
            *errorCopy11 = v123;
            goto LABEL_217;
          }

          v281 = 0;
          selfCopy5 = 0;
          v28 = v326;
          v45 = v311;
          v22 = v312;
          error = v299;
LABEL_421:

          goto LABEL_422;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v284 = v117;
          goto LABEL_148;
        }

        if (errorCopy11)
        {
          v124 = objc_alloc(MEMORY[0x1E696ABC0]);
          v285 = *MEMORY[0x1E698F240];
          v375 = *MEMORY[0x1E696A578];
          selfCopy6 = self;
          v126 = objc_alloc(MEMORY[0x1E696AEC0]);
          v221 = objc_opt_class();
          v127 = v126;
          self = selfCopy6;
          v107 = v291;
          v22 = v312;
          v281 = [v127 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v221, @"didStepUp"];
          v376 = v281;
          v283 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v376 forKeys:&v375 count:1];
          v128 = [v124 initWithDomain:v285 code:2 userInfo:?];
          v284 = 0;
          selfCopy5 = 0;
          *errorCopy11 = v128;
          v28 = v326;
          v45 = v311;
          error = v299;
          goto LABEL_421;
        }

        v284 = 0;
        selfCopy5 = 0;
        v28 = v326;
        v45 = v311;
        error = v299;
LABEL_422:

        goto LABEL_423;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v289 = v110;
        v287 = v289;
        v22 = v312;
        goto LABEL_145;
      }

      v289 = v110;
      if (errorCopy11)
      {
        v114 = objc_alloc(MEMORY[0x1E696ABC0]);
        v288 = *MEMORY[0x1E698F240];
        v377 = *MEMORY[0x1E696A578];
        v284 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"alPrdVersion"];
        v378 = v284;
        v286 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v378 forKeys:&v377 count:1];
        v115 = [v114 initWithDomain:v288 code:2 userInfo:?];
        v287 = 0;
        selfCopy5 = 0;
        *errorCopy11 = v115;
        v28 = v326;
        v45 = v311;
        v22 = v312;
        error = v299;
        goto LABEL_422;
      }

      v287 = 0;
      selfCopy5 = 0;
      v28 = v326;
      v45 = v311;
      v22 = v312;
      error = v299;
LABEL_423:

      goto LABEL_424;
    }

LABEL_128:
    v292 = 0;
    goto LABEL_131;
  }

LABEL_114:
  objc_opt_class();
  v6 = v321;
  if (objc_opt_isKindOfClass())
  {
    v294 = v87;
    v87 = 0;
    goto LABEL_124;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v87 = v87;
    v294 = v87;
    v22 = v312;
    goto LABEL_124;
  }

  v294 = v87;
  if (errorCopy11)
  {
    v105 = objc_alloc(MEMORY[0x1E696ABC0]);
    v106 = *MEMORY[0x1E698F240];
    v381 = *MEMORY[0x1E696A578];
    v292 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"alFacePoseVersion"];
    v382 = v292;
    v107 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v382 forKeys:&v381 count:1];
    v87 = 0;
    selfCopy5 = 0;
    *errorCopy11 = [v105 initWithDomain:v106 code:2 userInfo:v107];
    v28 = v326;
    v45 = v311;
    v22 = v312;
    error = v299;
    goto LABEL_424;
  }

  v87 = 0;
  selfCopy5 = 0;
  v28 = v326;
  v45 = v311;
  v22 = v312;
LABEL_167:
  error = v299;
LABEL_425:

LABEL_426:
  v11 = v308;

LABEL_427:
  v94 = v295;
LABEL_428:

LABEL_429:
LABEL_430:

  v14 = v302;
LABEL_431:

  error = v323;
LABEL_432:

LABEL_433:
LABEL_434:

  v13 = v324;
LABEL_435:

  v8 = v325;
LABEL_436:

LABEL_437:
LABEL_438:

  return selfCopy5;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMWalletPaymentsCommerceUserProofingResult *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_age)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_gender)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_skinTone)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_ethnicity)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_deviceLanguage)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_proofingDecision)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_issuer)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_alAssessment)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_alGestureAssessment)
  {
    PBDataWriterWriteStringField();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_axSettings;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (self->_alFacVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_alFacePoseVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_alPadtoolVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_alPrdVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasDidStepUp)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_plGestureAssessment)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_plAssessment)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_plFacVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_plFacePoseVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_plPadtoolVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_plPrdVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_shadowLabel)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_smFacVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_smFacePoseVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_smPrdVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_smPadtoolVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_smLivenessAssessment)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_smGestureAssessment)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_smLivenessType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_fmAssessment)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_fmModelVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_fmDetectorModelVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_fmSMAssessment)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_fmSMModelVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_fmSMDetectorModelVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_identityType)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v33.receiver = self;
  v33.super_class = BMWalletPaymentsCommerceUserProofingResult;
  v5 = [(BMEventBase *)&v33 init];
  if (!v5)
  {
    goto LABEL_72;
  }

  v6 = objc_opt_new();
  while (1)
  {
    position = [fromCopy position];
    if (position >= [fromCopy length] || (objc_msgSend(fromCopy, "hasError") & 1) != 0)
    {
      break;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v34 = 0;
      v11 = [fromCopy position] + 1;
      if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
      {
        data = [fromCopy data];
        [data getBytes:&v34 range:{objc_msgSend(fromCopy, "position"), 1}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
      }

      else
      {
        [fromCopy _setError];
      }

      v10 |= (v34 & 0x7F) << v8;
      if ((v34 & 0x80) == 0)
      {
        break;
      }

      v8 += 7;
      v14 = v9++ >= 9;
      if (v14)
      {
        v15 = 0;
        goto LABEL_17;
      }
    }

    v15 = [fromCopy hasError] ? 0 : v10;
LABEL_17:
    if (([fromCopy hasError] & 1) != 0 || (v15 & 7) == 4)
    {
      break;
    }

    switch((v15 >> 3))
    {
      case 2u:
        v16 = PBReaderReadString();
        v17 = 24;
        goto LABEL_65;
      case 3u:
        v16 = PBReaderReadString();
        v17 = 32;
        goto LABEL_65;
      case 4u:
        v16 = PBReaderReadString();
        v17 = 40;
        goto LABEL_65;
      case 5u:
        v16 = PBReaderReadString();
        v17 = 48;
        goto LABEL_65;
      case 6u:
        v16 = PBReaderReadString();
        v17 = 56;
        goto LABEL_65;
      case 7u:
        v16 = PBReaderReadString();
        v17 = 64;
        goto LABEL_65;
      case 8u:
        v16 = PBReaderReadString();
        v17 = 72;
        goto LABEL_65;
      case 9u:
        v16 = PBReaderReadString();
        v17 = 80;
        goto LABEL_65;
      case 0xAu:
        v16 = PBReaderReadString();
        v17 = 88;
        goto LABEL_65;
      case 0xBu:
        v25 = PBReaderReadString();
        if (!v25)
        {
          goto LABEL_74;
        }

        v26 = v25;
        [v6 addObject:v25];

        continue;
      case 0xCu:
        v16 = PBReaderReadString();
        v17 = 104;
        goto LABEL_65;
      case 0xDu:
        v16 = PBReaderReadString();
        v17 = 112;
        goto LABEL_65;
      case 0xEu:
        v16 = PBReaderReadString();
        v17 = 120;
        goto LABEL_65;
      case 0xFu:
        v16 = PBReaderReadString();
        v17 = 128;
        goto LABEL_65;
      case 0x10u:
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v5->_hasDidStepUp = 1;
        break;
      case 0x11u:
        v16 = PBReaderReadString();
        v17 = 136;
        goto LABEL_65;
      case 0x12u:
        v16 = PBReaderReadString();
        v17 = 144;
        goto LABEL_65;
      case 0x13u:
        v16 = PBReaderReadString();
        v17 = 152;
        goto LABEL_65;
      case 0x14u:
        v16 = PBReaderReadString();
        v17 = 160;
        goto LABEL_65;
      case 0x15u:
        v16 = PBReaderReadString();
        v17 = 168;
        goto LABEL_65;
      case 0x16u:
        v16 = PBReaderReadString();
        v17 = 176;
        goto LABEL_65;
      case 0x17u:
        v16 = PBReaderReadString();
        v17 = 184;
        goto LABEL_65;
      case 0x18u:
        v16 = PBReaderReadString();
        v17 = 192;
        goto LABEL_65;
      case 0x19u:
        v16 = PBReaderReadString();
        v17 = 200;
        goto LABEL_65;
      case 0x1Au:
        v16 = PBReaderReadString();
        v17 = 208;
        goto LABEL_65;
      case 0x1Bu:
        v16 = PBReaderReadString();
        v17 = 216;
        goto LABEL_65;
      case 0x1Cu:
        v16 = PBReaderReadString();
        v17 = 224;
        goto LABEL_65;
      case 0x1Du:
        v16 = PBReaderReadString();
        v17 = 232;
        goto LABEL_65;
      case 0x1Eu:
        v16 = PBReaderReadString();
        v17 = 240;
        goto LABEL_65;
      case 0x1Fu:
        v16 = PBReaderReadString();
        v17 = 248;
        goto LABEL_65;
      case 0x20u:
        v16 = PBReaderReadString();
        v17 = 256;
        goto LABEL_65;
      case 0x21u:
        v16 = PBReaderReadString();
        v17 = 264;
        goto LABEL_65;
      case 0x22u:
        v16 = PBReaderReadString();
        v17 = 272;
        goto LABEL_65;
      case 0x23u:
        v16 = PBReaderReadString();
        v17 = 280;
        goto LABEL_65;
      case 0x24u:
        v16 = PBReaderReadString();
        v17 = 288;
        goto LABEL_65;
      case 0x25u:
        v16 = PBReaderReadString();
        v17 = 296;
LABEL_65:
        v27 = *(&v5->super.super.isa + v17);
        *(&v5->super.super.isa + v17) = v16;

        continue;
      default:
        if (PBReaderSkipValueWithTag())
        {
          continue;
        }

LABEL_74:

        goto LABEL_71;
    }

    while (1)
    {
      v34 = 0;
      v21 = [fromCopy position] + 1;
      if (v21 >= [fromCopy position] && (v22 = objc_msgSend(fromCopy, "position") + 1, v22 <= objc_msgSend(fromCopy, "length")))
      {
        data2 = [fromCopy data];
        [data2 getBytes:&v34 range:{objc_msgSend(fromCopy, "position"), 1}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
      }

      else
      {
        [fromCopy _setError];
      }

      v20 |= (v34 & 0x7F) << v18;
      if ((v34 & 0x80) == 0)
      {
        break;
      }

      v18 += 7;
      v14 = v19++ >= 9;
      if (v14)
      {
        LOBYTE(v24) = 0;
        goto LABEL_69;
      }
    }

    v24 = (v20 != 0) & ~[fromCopy hasError];
LABEL_69:
    v5->_didStepUp = v24;
  }

  v28 = [v6 copy];
  axSettings = v5->_axSettings;
  v5->_axSettings = v28;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_71:
    v31 = 0;
  }

  else
  {
LABEL_72:
    v31 = v5;
  }

  return v31;
}

- (NSString)description
{
  v16 = objc_alloc(MEMORY[0x1E696AEC0]);
  v41 = [(BMWalletPaymentsCommerceUserProofingResult *)self age];
  gender = [(BMWalletPaymentsCommerceUserProofingResult *)self gender];
  skinTone = [(BMWalletPaymentsCommerceUserProofingResult *)self skinTone];
  ethnicity = [(BMWalletPaymentsCommerceUserProofingResult *)self ethnicity];
  deviceLanguage = [(BMWalletPaymentsCommerceUserProofingResult *)self deviceLanguage];
  proofingDecision = [(BMWalletPaymentsCommerceUserProofingResult *)self proofingDecision];
  issuer = [(BMWalletPaymentsCommerceUserProofingResult *)self issuer];
  alAssessment = [(BMWalletPaymentsCommerceUserProofingResult *)self alAssessment];
  alGestureAssessment = [(BMWalletPaymentsCommerceUserProofingResult *)self alGestureAssessment];
  axSettings = [(BMWalletPaymentsCommerceUserProofingResult *)self axSettings];
  alFacVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self alFacVersion];
  alFacePoseVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self alFacePoseVersion];
  alPadtoolVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self alPadtoolVersion];
  alPrdVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self alPrdVersion];
  v29 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMWalletPaymentsCommerceUserProofingResult didStepUp](self, "didStepUp")}];
  plGestureAssessment = [(BMWalletPaymentsCommerceUserProofingResult *)self plGestureAssessment];
  plAssessment = [(BMWalletPaymentsCommerceUserProofingResult *)self plAssessment];
  plFacVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self plFacVersion];
  plFacePoseVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self plFacePoseVersion];
  plPadtoolVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self plPadtoolVersion];
  plPrdVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self plPrdVersion];
  shadowLabel = [(BMWalletPaymentsCommerceUserProofingResult *)self shadowLabel];
  smFacVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self smFacVersion];
  smFacePoseVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self smFacePoseVersion];
  smPrdVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self smPrdVersion];
  smPadtoolVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self smPadtoolVersion];
  smLivenessAssessment = [(BMWalletPaymentsCommerceUserProofingResult *)self smLivenessAssessment];
  smGestureAssessment = [(BMWalletPaymentsCommerceUserProofingResult *)self smGestureAssessment];
  smLivenessType = [(BMWalletPaymentsCommerceUserProofingResult *)self smLivenessType];
  fmAssessment = [(BMWalletPaymentsCommerceUserProofingResult *)self fmAssessment];
  fmModelVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self fmModelVersion];
  fmDetectorModelVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self fmDetectorModelVersion];
  fmSMAssessment = [(BMWalletPaymentsCommerceUserProofingResult *)self fmSMAssessment];
  fmSMModelVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self fmSMModelVersion];
  fmSMDetectorModelVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self fmSMDetectorModelVersion];
  identityType = [(BMWalletPaymentsCommerceUserProofingResult *)self identityType];
  v17 = [v16 initWithFormat:@"BMWalletPaymentsCommerceUserProofingResult with age: %@, gender: %@, skinTone: %@, ethnicity: %@, deviceLanguage: %@, proofingDecision: %@, issuer: %@, alAssessment: %@, alGestureAssessment: %@, axSettings: %@, alFacVersion: %@, alFacePoseVersion: %@, alPadtoolVersion: %@, alPrdVersion: %@, didStepUp: %@, plGestureAssessment: %@, plAssessment: %@, plFacVersion: %@, plFacePoseVersion: %@, plPadtoolVersion: %@, plPrdVersion: %@, shadowLabel: %@, smFacVersion: %@, smFacePoseVersion: %@, smPrdVersion: %@, smPadtoolVersion: %@, smLivenessAssessment: %@, smGestureAssessment: %@, smLivenessType: %@, fmAssessment: %@, fmModelVersion: %@, fmDetectorModelVersion: %@, fmSMAssessment: %@, fmSMModelVersion: %@, fmSMDetectorModelVersion: %@, identityType: %@", v41, gender, skinTone, ethnicity, deviceLanguage, proofingDecision, issuer, alAssessment, alGestureAssessment, axSettings, alFacVersion, alFacePoseVersion, alPadtoolVersion, alPrdVersion, v29, plGestureAssessment, plAssessment, plFacVersion, plFacePoseVersion, plPadtoolVersion, plPrdVersion, shadowLabel, smFacVersion, smFacePoseVersion, smPrdVersion, smPadtoolVersion, smLivenessAssessment, smGestureAssessment, smLivenessType, fmAssessment, fmModelVersion, fmDetectorModelVersion, fmSMAssessment, fmSMModelVersion, fmSMDetectorModelVersion, identityType];

  return v17;
}

- (BMWalletPaymentsCommerceUserProofingResult)initWithAge:(id)age gender:(id)gender skinTone:(id)tone ethnicity:(id)ethnicity deviceLanguage:(id)language proofingDecision:(id)decision issuer:(id)issuer alAssessment:(id)self0 alGestureAssessment:(id)self1 axSettings:(id)self2 alFacVersion:(id)self3 alFacePoseVersion:(id)self4 alPadtoolVersion:(id)self5 alPrdVersion:(id)self6 didStepUp:(id)self7 plGestureAssessment:(id)self8 plAssessment:(id)self9 plFacVersion:(id)facVersion plFacePoseVersion:(id)facePoseVersion plPadtoolVersion:(id)plPadtoolVersion plPrdVersion:(id)plPrdVersion shadowLabel:(id)label smFacVersion:(id)smFacVersion smFacePoseVersion:(id)smFacePoseVersion smPrdVersion:(id)smPrdVersion smPadtoolVersion:(id)smPadtoolVersion smLivenessAssessment:(id)livenessAssessment smGestureAssessment:(id)age0 smLivenessType:(id)age1 fmAssessment:(id)age2 fmModelVersion:(id)age3 fmDetectorModelVersion:(id)age4 fmSMAssessment:(id)age5 fmSMModelVersion:(id)age6 fmSMDetectorModelVersion:(id)age7 identityType:(id)age8
{
  ageCopy = age;
  genderCopy = gender;
  genderCopy2 = gender;
  toneCopy = tone;
  toneCopy2 = tone;
  ethnicityCopy = ethnicity;
  languageCopy = language;
  decisionCopy = decision;
  issuerCopy = issuer;
  assessmentCopy = assessment;
  gestureAssessmentCopy = gestureAssessment;
  settingsCopy = settings;
  versionCopy = version;
  poseVersionCopy = poseVersion;
  padtoolVersionCopy = padtoolVersion;
  prdVersionCopy = prdVersion;
  upCopy = up;
  plGestureAssessmentCopy = plGestureAssessment;
  plAssessmentCopy = plAssessment;
  facVersionCopy = facVersion;
  facePoseVersionCopy = facePoseVersion;
  plPadtoolVersionCopy = plPadtoolVersion;
  plPrdVersionCopy = plPrdVersion;
  labelCopy = label;
  smFacVersionCopy = smFacVersion;
  smFacePoseVersionCopy = smFacePoseVersion;
  smPrdVersionCopy = smPrdVersion;
  smPadtoolVersionCopy = smPadtoolVersion;
  livenessAssessmentCopy = livenessAssessment;
  smGestureAssessmentCopy = smGestureAssessment;
  typeCopy = type;
  fmAssessmentCopy = fmAssessment;
  modelVersionCopy = modelVersion;
  detectorModelVersionCopy = detectorModelVersion;
  mAssessmentCopy = mAssessment;
  mModelVersionCopy = mModelVersion;
  v45 = upCopy;
  mDetectorModelVersionCopy = mDetectorModelVersion;
  identityTypeCopy = identityType;
  v86.receiver = self;
  v86.super_class = BMWalletPaymentsCommerceUserProofingResult;
  v46 = [(BMEventBase *)&v86 init];
  if (v46)
  {
    v46->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v46->_age, age);
    objc_storeStrong(&v46->_gender, genderCopy);
    objc_storeStrong(&v46->_skinTone, toneCopy);
    objc_storeStrong(&v46->_ethnicity, ethnicity);
    objc_storeStrong(&v46->_deviceLanguage, language);
    objc_storeStrong(&v46->_proofingDecision, decision);
    objc_storeStrong(&v46->_issuer, issuer);
    objc_storeStrong(&v46->_alAssessment, assessment);
    objc_storeStrong(&v46->_alGestureAssessment, gestureAssessment);
    objc_storeStrong(&v46->_axSettings, settings);
    objc_storeStrong(&v46->_alFacVersion, version);
    objc_storeStrong(&v46->_alFacePoseVersion, poseVersion);
    objc_storeStrong(&v46->_alPadtoolVersion, padtoolVersion);
    objc_storeStrong(&v46->_alPrdVersion, prdVersion);
    if (upCopy)
    {
      v46->_hasDidStepUp = 1;
      v46->_didStepUp = [upCopy BOOLValue];
    }

    else
    {
      v45 = 0;
      v46->_hasDidStepUp = 0;
      v46->_didStepUp = 0;
    }

    objc_storeStrong(&v46->_plGestureAssessment, plGestureAssessment);
    objc_storeStrong(&v46->_plAssessment, plAssessment);
    objc_storeStrong(&v46->_plFacVersion, facVersion);
    objc_storeStrong(&v46->_plFacePoseVersion, facePoseVersion);
    objc_storeStrong(&v46->_plPadtoolVersion, plPadtoolVersion);
    objc_storeStrong(&v46->_plPrdVersion, plPrdVersion);
    objc_storeStrong(&v46->_shadowLabel, label);
    objc_storeStrong(&v46->_smFacVersion, smFacVersion);
    objc_storeStrong(&v46->_smFacePoseVersion, smFacePoseVersion);
    objc_storeStrong(&v46->_smPrdVersion, smPrdVersion);
    objc_storeStrong(&v46->_smPadtoolVersion, smPadtoolVersion);
    objc_storeStrong(&v46->_smLivenessAssessment, livenessAssessment);
    objc_storeStrong(&v46->_smGestureAssessment, smGestureAssessment);
    objc_storeStrong(&v46->_smLivenessType, type);
    objc_storeStrong(&v46->_fmAssessment, fmAssessment);
    objc_storeStrong(&v46->_fmModelVersion, modelVersion);
    objc_storeStrong(&v46->_fmDetectorModelVersion, detectorModelVersion);
    objc_storeStrong(&v46->_fmSMAssessment, mAssessment);
    objc_storeStrong(&v46->_fmSMModelVersion, mModelVersion);
    objc_storeStrong(&v46->_fmSMDetectorModelVersion, mDetectorModelVersion);
    objc_storeStrong(&v46->_identityType, identityType);
  }

  return v46;
}

+ (id)protoFields
{
  v40[36] = *MEMORY[0x1E69E9840];
  v39 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"age" number:2 type:13 subMessageClass:0];
  v40[0] = v39;
  v38 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"gender" number:3 type:13 subMessageClass:0];
  v40[1] = v38;
  v37 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"skinTone" number:4 type:13 subMessageClass:0];
  v40[2] = v37;
  v36 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"ethnicity" number:5 type:13 subMessageClass:0];
  v40[3] = v36;
  v35 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deviceLanguage" number:6 type:13 subMessageClass:0];
  v40[4] = v35;
  v34 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"proofingDecision" number:7 type:13 subMessageClass:0];
  v40[5] = v34;
  v33 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"issuer" number:8 type:13 subMessageClass:0];
  v40[6] = v33;
  v32 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"alAssessment" number:9 type:13 subMessageClass:0];
  v40[7] = v32;
  v31 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"alGestureAssessment" number:10 type:13 subMessageClass:0];
  v40[8] = v31;
  v30 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"axSettings" number:11 type:13 subMessageClass:0];
  v40[9] = v30;
  v29 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"alFacVersion" number:12 type:13 subMessageClass:0];
  v40[10] = v29;
  v28 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"alFacePoseVersion" number:13 type:13 subMessageClass:0];
  v40[11] = v28;
  v27 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"alPadtoolVersion" number:14 type:13 subMessageClass:0];
  v40[12] = v27;
  v26 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"alPrdVersion" number:15 type:13 subMessageClass:0];
  v40[13] = v26;
  v25 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"didStepUp" number:16 type:12 subMessageClass:0];
  v40[14] = v25;
  v24 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"plGestureAssessment" number:17 type:13 subMessageClass:0];
  v40[15] = v24;
  v23 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"plAssessment" number:18 type:13 subMessageClass:0];
  v40[16] = v23;
  v22 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"plFacVersion" number:19 type:13 subMessageClass:0];
  v40[17] = v22;
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"plFacePoseVersion" number:20 type:13 subMessageClass:0];
  v40[18] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"plPadtoolVersion" number:21 type:13 subMessageClass:0];
  v40[19] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"plPrdVersion" number:22 type:13 subMessageClass:0];
  v40[20] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shadowLabel" number:23 type:13 subMessageClass:0];
  v40[21] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"smFacVersion" number:24 type:13 subMessageClass:0];
  v40[22] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"smFacePoseVersion" number:25 type:13 subMessageClass:0];
  v40[23] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"smPrdVersion" number:26 type:13 subMessageClass:0];
  v40[24] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"smPadtoolVersion" number:27 type:13 subMessageClass:0];
  v40[25] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"smLivenessAssessment" number:28 type:13 subMessageClass:0];
  v40[26] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"smGestureAssessment" number:29 type:13 subMessageClass:0];
  v40[27] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"smLivenessType" number:30 type:13 subMessageClass:0];
  v40[28] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fmAssessment" number:31 type:13 subMessageClass:0];
  v40[29] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fmModelVersion" number:32 type:13 subMessageClass:0];
  v40[30] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fmDetectorModelVersion" number:33 type:13 subMessageClass:0];
  v40[31] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fmSMAssessment" number:34 type:13 subMessageClass:0];
  v40[32] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fmSMModelVersion" number:35 type:13 subMessageClass:0];
  v40[33] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fmSMDetectorModelVersion" number:36 type:13 subMessageClass:0];
  v40[34] = v10;
  v11 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"identityType" number:37 type:13 subMessageClass:0];
  v40[35] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:36];

  return v13;
}

+ (id)columns
{
  v66[62] = *MEMORY[0x1E69E9840];
  v65 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"age" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v64 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"gender" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v63 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"skinTone" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v62 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"ethnicity" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v61 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deviceLanguage" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v60 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"proofingDecision" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v59 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"issuer" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v58 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"alAssessment" dataType:2 requestOnly:0 fieldNumber:9 protoDataType:13 convertedType:0];
  v57 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"livenessAssessment" dataType:2 requestOnly:0 fieldNumber:9 protoDataType:13 convertedType:0];
  v56 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"alGestureAssessment" dataType:2 requestOnly:0 fieldNumber:10 protoDataType:13 convertedType:0];
  v54 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"gestureAssessment" dataType:2 requestOnly:0 fieldNumber:10 protoDataType:13 convertedType:0];
  v55 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"axSettings_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_3089];
  v52 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"alFacVersion" dataType:2 requestOnly:0 fieldNumber:12 protoDataType:13 convertedType:0];
  v53 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"facVersion" dataType:2 requestOnly:0 fieldNumber:12 protoDataType:13 convertedType:0];
  v51 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"alFacePoseVersion" dataType:2 requestOnly:0 fieldNumber:13 protoDataType:13 convertedType:0];
  v50 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"facePoseVersion" dataType:2 requestOnly:0 fieldNumber:13 protoDataType:13 convertedType:0];
  v49 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"alPadtoolVersion" dataType:2 requestOnly:0 fieldNumber:14 protoDataType:13 convertedType:0];
  v48 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"padtoolVersion" dataType:2 requestOnly:0 fieldNumber:14 protoDataType:13 convertedType:0];
  v47 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"alPrdVersion" dataType:2 requestOnly:0 fieldNumber:15 protoDataType:13 convertedType:0];
  v46 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"prdVersion" dataType:2 requestOnly:0 fieldNumber:15 protoDataType:13 convertedType:0];
  v45 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"didStepUp" dataType:0 requestOnly:0 fieldNumber:16 protoDataType:12 convertedType:0];
  v44 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"plGestureAssessment" dataType:2 requestOnly:0 fieldNumber:17 protoDataType:13 convertedType:0];
  v43 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"passiveGestureAssessment" dataType:2 requestOnly:0 fieldNumber:17 protoDataType:13 convertedType:0];
  v42 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"plAssessment" dataType:2 requestOnly:0 fieldNumber:18 protoDataType:13 convertedType:0];
  v41 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"passiveLivenessAssessment" dataType:2 requestOnly:0 fieldNumber:18 protoDataType:13 convertedType:0];
  v40 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"plFacVersion" dataType:2 requestOnly:0 fieldNumber:19 protoDataType:13 convertedType:0];
  v39 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"passiveLivenessFacVersion" dataType:2 requestOnly:0 fieldNumber:19 protoDataType:13 convertedType:0];
  v38 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"plFacePoseVersion" dataType:2 requestOnly:0 fieldNumber:20 protoDataType:13 convertedType:0];
  v37 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"passiveLivenessFacePoseVersion" dataType:2 requestOnly:0 fieldNumber:20 protoDataType:13 convertedType:0];
  v36 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"plPadtoolVersion" dataType:2 requestOnly:0 fieldNumber:21 protoDataType:13 convertedType:0];
  v35 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"passiveLivenessPadtoolVersion" dataType:2 requestOnly:0 fieldNumber:21 protoDataType:13 convertedType:0];
  v34 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"plPrdVersion" dataType:2 requestOnly:0 fieldNumber:22 protoDataType:13 convertedType:0];
  v33 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"passiveLivenessPrdVersion" dataType:2 requestOnly:0 fieldNumber:22 protoDataType:13 convertedType:0];
  v32 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shadowLabel" dataType:2 requestOnly:0 fieldNumber:23 protoDataType:13 convertedType:0];
  v31 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"livenessShadowLabel" dataType:2 requestOnly:0 fieldNumber:23 protoDataType:13 convertedType:0];
  v30 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"smFacVersion" dataType:2 requestOnly:0 fieldNumber:24 protoDataType:13 convertedType:0];
  v29 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"livenessShadowFacVersion" dataType:2 requestOnly:0 fieldNumber:24 protoDataType:13 convertedType:0];
  v28 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"smFacePoseVersion" dataType:2 requestOnly:0 fieldNumber:25 protoDataType:13 convertedType:0];
  v27 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"livenessShadowFacePoseVersion" dataType:2 requestOnly:0 fieldNumber:25 protoDataType:13 convertedType:0];
  v26 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"smPrdVersion" dataType:2 requestOnly:0 fieldNumber:26 protoDataType:13 convertedType:0];
  v25 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"livenessShadowPrdVersion" dataType:2 requestOnly:0 fieldNumber:26 protoDataType:13 convertedType:0];
  v24 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"smPadtoolVersion" dataType:2 requestOnly:0 fieldNumber:27 protoDataType:13 convertedType:0];
  v23 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"livenessShadowPadtoolVersion" dataType:2 requestOnly:0 fieldNumber:27 protoDataType:13 convertedType:0];
  v22 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"smLivenessAssessment" dataType:2 requestOnly:0 fieldNumber:28 protoDataType:13 convertedType:0];
  v21 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"livenessShadowLivenessAssessment" dataType:2 requestOnly:0 fieldNumber:28 protoDataType:13 convertedType:0];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"smGestureAssessment" dataType:2 requestOnly:0 fieldNumber:29 protoDataType:13 convertedType:0];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"livenessShadowGestureAssessment" dataType:2 requestOnly:0 fieldNumber:29 protoDataType:13 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"smLivenessType" dataType:2 requestOnly:0 fieldNumber:30 protoDataType:13 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"livenessShadowLivenessType" dataType:2 requestOnly:0 fieldNumber:30 protoDataType:13 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"fmAssessment" dataType:2 requestOnly:0 fieldNumber:31 protoDataType:13 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"faceMatchingAssessment" dataType:2 requestOnly:0 fieldNumber:31 protoDataType:13 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"fmModelVersion" dataType:2 requestOnly:0 fieldNumber:32 protoDataType:13 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"faceMatchingModelVersion" dataType:2 requestOnly:0 fieldNumber:32 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"fmDetectorModelVersion" dataType:2 requestOnly:0 fieldNumber:33 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"faceMatchingDetectorModelVersion" dataType:2 requestOnly:0 fieldNumber:33 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"fmSMAssessment" dataType:2 requestOnly:0 fieldNumber:34 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"faceMatchingShadowAssessment" dataType:2 requestOnly:0 fieldNumber:34 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"fmSMModelVersion" dataType:2 requestOnly:0 fieldNumber:35 protoDataType:13 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"faceMatchingShadowModelVersion" dataType:2 requestOnly:0 fieldNumber:35 protoDataType:13 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"fmSMDetectorModelVersion" dataType:2 requestOnly:0 fieldNumber:36 protoDataType:13 convertedType:0];
  v12 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"faceMatchingShadowDetectorModelVersion" dataType:2 requestOnly:0 fieldNumber:36 protoDataType:13 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"identityType" dataType:2 requestOnly:0 fieldNumber:37 protoDataType:13 convertedType:0];
  v66[0] = v65;
  v66[1] = v64;
  v66[2] = v63;
  v66[3] = v62;
  v66[4] = v61;
  v66[5] = v60;
  v66[6] = v59;
  v66[7] = v58;
  v66[8] = v57;
  v66[9] = v56;
  v66[10] = v54;
  v66[11] = v55;
  v66[12] = v52;
  v66[13] = v53;
  v66[14] = v51;
  v66[15] = v50;
  v66[16] = v49;
  v66[17] = v48;
  v66[18] = v47;
  v66[19] = v46;
  v66[20] = v45;
  v66[21] = v44;
  v66[22] = v43;
  v66[23] = v42;
  v66[24] = v41;
  v66[25] = v40;
  v66[26] = v39;
  v66[27] = v38;
  v66[28] = v37;
  v66[29] = v36;
  v66[30] = v35;
  v66[31] = v34;
  v66[32] = v33;
  v66[33] = v32;
  v66[34] = v31;
  v66[35] = v30;
  v66[36] = v29;
  v66[37] = v28;
  v66[38] = v27;
  v66[39] = v26;
  v66[40] = v25;
  v66[41] = v24;
  v66[42] = v23;
  v66[43] = v22;
  v66[44] = v21;
  v66[45] = v20;
  v66[46] = v19;
  v66[47] = v18;
  v66[48] = v17;
  v66[49] = v16;
  v66[50] = v15;
  v66[51] = v14;
  v66[52] = v2;
  v66[53] = v3;
  v66[54] = v4;
  v66[55] = v5;
  v66[56] = v6;
  v66[57] = v7;
  v66[58] = v13;
  v66[59] = v8;
  v66[60] = v12;
  v66[61] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:62];

  return v11;
}

id __53__BMWalletPaymentsCommerceUserProofingResult_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _axSettingsJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version == 1)
  {
    v4 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v6 = [[v4 alloc] initWithData:dataCopy];

    v7 = [[BMWalletPaymentsCommerceUserProofingResult alloc] initByReadFrom:v6];
    v8 = v7;
    if (v7)
    {
      v7[5] = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end