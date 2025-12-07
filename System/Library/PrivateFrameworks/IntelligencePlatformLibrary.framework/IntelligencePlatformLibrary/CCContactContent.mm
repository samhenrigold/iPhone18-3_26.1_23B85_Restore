@interface CCContactContent
+ (id)descriptionForTypeIdentifier:(unsigned __int16)identifier;
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCContactContent)initWithGivenName:(id)name middleName:(id)middleName familyName:(id)familyName previousFamilyName:(id)previousFamilyName nickname:(id)nickname namePrefix:(id)prefix nameSuffix:(id)suffix phoneNumbers:(id)self0 emailAddresses:(id)self1 postalAddresses:(id)self2 urlAddresses:(id)self3 socialProfiles:(id)self4 instantMessageAddresses:(id)self5 relations:(id)self6 organizationName:(id)self7 departmentName:(id)self8 jobTitle:(id)self9 phoneticGivenName:(id)givenName phoneticMiddleName:(id)phoneticMiddleName phoneticFamilyName:(id)phoneticFamilyName phoneticOrganizationName:(id)phoneticOrganizationName note:(id)note birthday:(id)birthday nonGregorianBirthday:(id)gregorianBirthday dates:(id)dates error:(id *)error;
- (CCContactContent)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCContactDate)birthday;
- (CCContactDate)nonGregorianBirthday;
- (NSArray)dates;
- (NSArray)emailAddresses;
- (NSArray)instantMessageAddresses;
- (NSArray)phoneNumbers;
- (NSArray)postalAddresses;
- (NSArray)relations;
- (NSArray)socialProfiles;
- (NSArray)urlAddresses;
- (NSString)departmentName;
- (NSString)familyName;
- (NSString)givenName;
- (NSString)jobTitle;
- (NSString)middleName;
- (NSString)namePrefix;
- (NSString)nameSuffix;
- (NSString)nickname;
- (NSString)note;
- (NSString)organizationName;
- (NSString)phoneticFamilyName;
- (NSString)phoneticGivenName;
- (NSString)phoneticMiddleName;
- (NSString)phoneticOrganizationName;
- (NSString)previousFamilyName;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCContactContent

- (CCContactContent)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v264 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  objc_opt_class();
  v255 = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"givenName"];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"middleName"];
    v204 = [dictionaryCopy objectForKeyedSubscript:@"familyName"];
    v203 = [dictionaryCopy objectForKeyedSubscript:@"previousFamilyName"];
    v202 = [dictionaryCopy objectForKeyedSubscript:@"nickname"];
    v201 = [dictionaryCopy objectForKeyedSubscript:@"namePrefix"];
    v200 = [dictionaryCopy objectForKeyedSubscript:@"nameSuffix"];
    v11 = [dictionaryCopy objectForKeyedSubscript:@"phoneNumbers"];
    if (v11)
    {
      v12 = v11;
      objc_opt_class();
      v254 = v8;
      v13 = CCValidateIsInstanceOfExpectedClass();
      v14 = v8;

      if ((v13 & 1) == 0)
      {
        CCSetError();
        v42 = 0;
        v15 = v12;
LABEL_162:

        v8 = v14;
        goto LABEL_163;
      }

      obj = error;
      v194 = v10;
      selfCopy = self;
      v15 = objc_opt_new();
      v250 = 0u;
      v251 = 0u;
      v252 = 0u;
      v253 = 0u;
      v16 = v12;
      v17 = [v16 countByEnumeratingWithState:&v250 objects:v263 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v251;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v251 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v250 + 1) + 8 * i);
            v22 = [CCContactPhoneNumber alloc];
            v249 = 0;
            v23 = [(CCContactPhoneNumber *)v22 initWithJSONDictionary:v21 error:&v249];
            v24 = v249;
            if (v23)
            {
              v25 = v24 == 0;
            }

            else
            {
              v25 = 0;
            }

            if (!v25)
            {
              v41 = v24;
              CCSetError();

              v42 = 0;
              v15 = v16;
              self = selfCopy;
              v10 = v194;
              goto LABEL_162;
            }

            [v15 addObject:v23];
          }

          v18 = [v16 countByEnumeratingWithState:&v250 objects:v263 count:16];
        }

        while (v18);
      }

      self = selfCopy;
      error = obj;
    }

    else
    {
      v15 = 0;
      v14 = v8;
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"emailAddresses"];
    if (v26)
    {
      v27 = v26;
      objc_opt_class();
      v248 = v14;
      v28 = CCValidateIsInstanceOfExpectedClass();
      v29 = v14;

      if ((v28 & 1) == 0)
      {
        CCSetError();
        v42 = 0;
        v30 = v27;
LABEL_161:

        v14 = v29;
        goto LABEL_162;
      }

      obja = error;
      v187 = v9;
      v195 = v10;
      selfCopy2 = self;
      v30 = objc_opt_new();
      v244 = 0u;
      v245 = 0u;
      v246 = 0u;
      v247 = 0u;
      v31 = v27;
      v32 = [v31 countByEnumeratingWithState:&v244 objects:v262 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v245;
        do
        {
          for (j = 0; j != v33; ++j)
          {
            if (*v245 != v34)
            {
              objc_enumerationMutation(v31);
            }

            v36 = *(*(&v244 + 1) + 8 * j);
            v37 = [CCContactEmailAddress alloc];
            v243 = 0;
            v38 = [(CCContactEmailAddress *)v37 initWithJSONDictionary:v36 error:&v243];
            v39 = v243;
            if (v38)
            {
              v40 = v39 == 0;
            }

            else
            {
              v40 = 0;
            }

            if (!v40)
            {
              v57 = v39;
              CCSetError();

              v42 = 0;
              v30 = v31;
              self = selfCopy2;
              v9 = v187;
              v10 = v195;
              goto LABEL_161;
            }

            [v30 addObject:v38];
          }

          v33 = [v31 countByEnumeratingWithState:&v244 objects:v262 count:16];
        }

        while (v33);
      }

      error = obja;
      v9 = v187;
    }

    else
    {
      v195 = v10;
      v30 = 0;
      v29 = v14;
    }

    v43 = [dictionaryCopy objectForKeyedSubscript:@"postalAddresses"];
    if (v43)
    {
      v44 = v43;
      objc_opt_class();
      v242 = v29;
      v45 = CCValidateIsInstanceOfExpectedClass();
      v46 = v29;

      if ((v45 & 1) == 0)
      {
        CCSetError();
        v42 = 0;
        v47 = v44;
        v10 = v195;
LABEL_160:

        v29 = v46;
        goto LABEL_161;
      }

      objb = error;
      v188 = v9;
      selfCopy3 = self;
      v199 = objc_opt_new();
      v238 = 0u;
      v239 = 0u;
      v240 = 0u;
      v241 = 0u;
      v47 = v44;
      v48 = [v47 countByEnumeratingWithState:&v238 objects:v261 count:16];
      if (v48)
      {
        v49 = v48;
        v50 = *v239;
        do
        {
          for (k = 0; k != v49; ++k)
          {
            if (*v239 != v50)
            {
              objc_enumerationMutation(v47);
            }

            v52 = *(*(&v238 + 1) + 8 * k);
            v53 = [CCContactPostalAddress alloc];
            v237 = 0;
            v54 = [(CCContactPostalAddress *)v53 initWithJSONDictionary:v52 error:&v237];
            v55 = v237;
            if (v54)
            {
              v56 = v55 == 0;
            }

            else
            {
              v56 = 0;
            }

            if (!v56)
            {
              v72 = v55;
              CCSetError();

              v42 = 0;
              self = selfCopy3;
              v9 = v188;
              v10 = v195;
              goto LABEL_160;
            }

            [v199 addObject:v54];
          }

          v49 = [v47 countByEnumeratingWithState:&v238 objects:v261 count:16];
        }

        while (v49);
      }

      self = selfCopy3;
      error = objb;
      v9 = v188;
    }

    else
    {
      v199 = 0;
      v46 = v29;
    }

    v58 = [dictionaryCopy objectForKeyedSubscript:@"urlAddresses"];
    if (v58)
    {
      v59 = v58;
      objc_opt_class();
      v236 = v46;
      v60 = CCValidateIsInstanceOfExpectedClass();
      v61 = v46;

      if ((v60 & 1) == 0)
      {
        CCSetError();
        v42 = 0;
        v62 = v59;
        v10 = v195;
LABEL_159:

        v46 = v61;
        v47 = v199;
        goto LABEL_160;
      }

      objc = error;
      v189 = v9;
      selfCopy4 = self;
      v170 = objc_opt_new();
      v232 = 0u;
      v233 = 0u;
      v234 = 0u;
      v235 = 0u;
      v62 = v59;
      v63 = [v62 countByEnumeratingWithState:&v232 objects:v260 count:16];
      if (v63)
      {
        v64 = v63;
        v65 = *v233;
        do
        {
          for (m = 0; m != v64; ++m)
          {
            if (*v233 != v65)
            {
              objc_enumerationMutation(v62);
            }

            v67 = *(*(&v232 + 1) + 8 * m);
            v68 = [CCContactURLAddress alloc];
            v231 = 0;
            v69 = [(CCContactURLAddress *)v68 initWithJSONDictionary:v67 error:&v231];
            v70 = v231;
            if (v69)
            {
              v71 = v70 == 0;
            }

            else
            {
              v71 = 0;
            }

            if (!v71)
            {
              v89 = v70;
              CCSetError();

              v42 = 0;
              self = selfCopy4;
              v9 = v189;
              v10 = v195;
              goto LABEL_159;
            }

            [v170 addObject:v69];
          }

          v64 = [v62 countByEnumeratingWithState:&v232 objects:v260 count:16];
        }

        while (v64);
      }

      self = selfCopy4;
      error = objc;
      v9 = v189;
    }

    else
    {
      v170 = 0;
      v61 = v46;
    }

    v73 = [dictionaryCopy objectForKeyedSubscript:@"socialProfiles"];
    if (v73)
    {
      v74 = v73;
      objc_opt_class();
      v230 = v61;
      v75 = CCValidateIsInstanceOfExpectedClass();
      v76 = v61;

      if ((v75 & 1) == 0)
      {
        CCSetError();
        v42 = 0;
        v77 = v74;
        v10 = v195;
LABEL_158:

        v61 = v76;
        v62 = v170;
        goto LABEL_159;
      }

      v167 = v76;
      objd = error;
      v190 = v9;
      selfCopy5 = self;
      v77 = objc_opt_new();
      v226 = 0u;
      v227 = 0u;
      v228 = 0u;
      v229 = 0u;
      v78 = v74;
      v79 = [v78 countByEnumeratingWithState:&v226 objects:v259 count:16];
      if (v79)
      {
        v80 = v79;
        v81 = *v227;
        do
        {
          for (n = 0; n != v80; ++n)
          {
            v83 = v77;
            if (*v227 != v81)
            {
              objc_enumerationMutation(v78);
            }

            v84 = *(*(&v226 + 1) + 8 * n);
            v85 = [CCContactSocialProfile alloc];
            v225 = 0;
            v86 = [(CCContactSocialProfile *)v85 initWithJSONDictionary:v84 error:&v225];
            v87 = v225;
            if (v86)
            {
              v88 = v87 == 0;
            }

            else
            {
              v88 = 0;
            }

            if (!v88)
            {
              v104 = v87;
              CCSetError();

              v42 = 0;
              v77 = v78;
              self = selfCopy5;
              v9 = v190;
              v10 = v195;
              v76 = v167;
              goto LABEL_158;
            }

            v77 = v83;
            [v83 addObject:v86];
          }

          v80 = [v78 countByEnumeratingWithState:&v226 objects:v259 count:16];
        }

        while (v80);
      }

      self = selfCopy5;
      error = objd;
      v9 = v190;
      v61 = v167;
    }

    else
    {
      v77 = 0;
    }

    v90 = [dictionaryCopy objectForKeyedSubscript:@"instantMessageAddresses"];
    v165 = v77;
    if (v90)
    {
      v91 = v90;
      objc_opt_class();
      v224 = v61;
      v92 = CCValidateIsInstanceOfExpectedClass();
      v93 = v61;

      if ((v92 & 1) == 0)
      {
        CCSetError();
        v42 = 0;
        v61 = v93;
        v94 = v91;
        v10 = v195;
LABEL_120:
        v77 = v165;
        goto LABEL_157;
      }

      obje = error;
      v191 = v9;
      selfCopy6 = self;
      v168 = objc_opt_new();
      v220 = 0u;
      v221 = 0u;
      v222 = 0u;
      v223 = 0u;
      v61 = v93;
      v94 = v91;
      v95 = [v94 countByEnumeratingWithState:&v220 objects:v258 count:16];
      if (v95)
      {
        v96 = v95;
        v97 = *v221;
        do
        {
          for (ii = 0; ii != v96; ++ii)
          {
            if (*v221 != v97)
            {
              objc_enumerationMutation(v94);
            }

            v99 = *(*(&v220 + 1) + 8 * ii);
            v100 = [CCContactInstantMessageAddress alloc];
            v219 = 0;
            v101 = [(CCContactInstantMessageAddress *)v100 initWithJSONDictionary:v99 error:&v219];
            v102 = v219;
            if (v101)
            {
              v103 = v102 == 0;
            }

            else
            {
              v103 = 0;
            }

            if (!v103)
            {
              v121 = v102;
              CCSetError();

              v42 = 0;
              self = selfCopy6;
              v9 = v191;
              v10 = v195;
              goto LABEL_120;
            }

            [v168 addObject:v101];
          }

          v96 = [v94 countByEnumeratingWithState:&v220 objects:v258 count:16];
        }

        while (v96);
      }

      self = selfCopy6;
      error = obje;
      v9 = v191;
      v77 = v165;
    }

    else
    {
      v168 = 0;
    }

    v105 = [dictionaryCopy objectForKeyedSubscript:@"relations"];
    v10 = v195;
    if (v105)
    {
      v106 = v105;
      objc_opt_class();
      v218 = v61;
      v107 = CCValidateIsInstanceOfExpectedClass();
      v108 = v61;
      v109 = v61;
      v110 = v108;

      v164 = v110;
      if ((v107 & 1) == 0)
      {
        CCSetError();
        v42 = 0;
        v111 = v106;
LABEL_127:
        v77 = v165;
        v94 = v168;
        goto LABEL_156;
      }

      objf = error;
      v192 = v9;
      v166 = objc_opt_new();
      v214 = 0u;
      v215 = 0u;
      v216 = 0u;
      v217 = 0u;
      v111 = v106;
      v112 = [v111 countByEnumeratingWithState:&v214 objects:v257 count:16];
      if (v112)
      {
        v113 = v112;
        v114 = *v215;
        do
        {
          for (jj = 0; jj != v113; ++jj)
          {
            if (*v215 != v114)
            {
              objc_enumerationMutation(v111);
            }

            v116 = *(*(&v214 + 1) + 8 * jj);
            v117 = [CCContactRelation alloc];
            v213 = 0;
            v118 = [(CCContactRelation *)v117 initWithJSONDictionary:v116 error:&v213];
            v119 = v213;
            if (v118)
            {
              v120 = v119 == 0;
            }

            else
            {
              v120 = 0;
            }

            if (!v120)
            {
              v127 = v119;
              CCSetError();

              v42 = 0;
              v9 = v192;
              v10 = v195;
              goto LABEL_127;
            }

            [v166 addObject:v118];
          }

          v113 = [v111 countByEnumeratingWithState:&v214 objects:v257 count:16];
        }

        while (v113);
      }

      v9 = v192;
      v10 = v195;
      error = objf;
      v77 = v165;
    }

    else
    {
      v166 = 0;
      v164 = v61;
    }

    v162 = [dictionaryCopy objectForKeyedSubscript:@"organizationName"];
    v161 = [dictionaryCopy objectForKeyedSubscript:@"departmentName"];
    v160 = [dictionaryCopy objectForKeyedSubscript:@"jobTitle"];
    v159 = [dictionaryCopy objectForKeyedSubscript:@"phoneticGivenName"];
    v158 = [dictionaryCopy objectForKeyedSubscript:@"phoneticMiddleName"];
    v157 = [dictionaryCopy objectForKeyedSubscript:@"phoneticFamilyName"];
    v156 = [dictionaryCopy objectForKeyedSubscript:@"phoneticOrganizationName"];
    v155 = [dictionaryCopy objectForKeyedSubscript:@"note"];
    v122 = [dictionaryCopy objectForKeyedSubscript:@"birthday"];
    v123 = 0x1E73E5000uLL;
    if (v122)
    {
      v212 = 0;
      v163 = v122;
      v124 = [[CCContactDate alloc] initWithJSONDictionary:v122 error:&v212];
      v125 = v212;
      v126 = v125;
      objg = v124;
      if (!v124 || v125)
      {
        CCSetError();
        v42 = 0;
        v133 = v126;
        goto LABEL_154;
      }

      v163 = v124;
      v123 = 0x1E73E5000;
    }

    else
    {
      v163 = 0;
    }

    v128 = [dictionaryCopy objectForKeyedSubscript:@"nonGregorianBirthday"];
    if (v128)
    {
      v129 = objc_alloc(*(v123 + 2392));
      v211 = 0;
      v130 = [v129 initWithJSONDictionary:v128 error:&v211];
      v131 = v211;
      if (!v130 || v131)
      {
        v148 = v131;
        CCSetError();

        v151 = v148;
        v42 = 0;
        v133 = v128;
        v94 = v168;
LABEL_155:

        v111 = v166;
LABEL_156:

        v61 = v164;
LABEL_157:

        v76 = v61;
        goto LABEL_158;
      }

      v128 = v130;
      v132 = v164;
      v123 = 0x1E73E5000;
    }

    else
    {
      v132 = v164;
    }

    v134 = [dictionaryCopy objectForKeyedSubscript:@"dates"];
    if (!v134)
    {
      v164 = v132;
      v138 = 0;
LABEL_152:
      v198 = v138;
      v153 = v138;
      v152 = v128;
      v77 = v165;
      v133 = v128;
      v94 = v168;
      v42 = [[CCContactContent alloc] initWithGivenName:v9 middleName:v10 familyName:v204 previousFamilyName:v203 nickname:v202 namePrefix:v201 nameSuffix:v200 phoneNumbers:v15 emailAddresses:v30 postalAddresses:v199 urlAddresses:v170 socialProfiles:v165 instantMessageAddresses:v168 relations:v166 organizationName:v162 departmentName:v161 jobTitle:v160 phoneticGivenName:v159 phoneticMiddleName:v158 phoneticFamilyName:v157 phoneticOrganizationName:v156 note:v155 birthday:v163 nonGregorianBirthday:v152 dates:v153 error:error];
      v151 = v198;
      goto LABEL_155;
    }

    v154 = v128;
    v135 = v134;
    objc_opt_class();
    v210 = v132;
    objg = v135;
    v196 = CCValidateIsInstanceOfExpectedClass();
    v136 = v132;

    if (v196)
    {
      v164 = v136;
      v137 = v123;
      v169 = v30;
      v193 = v9;
      v197 = v10;
      selfCopy7 = self;
      v138 = objc_opt_new();
      v206 = 0u;
      v207 = 0u;
      v208 = 0u;
      v209 = 0u;
      objh = objg;
      v139 = [(CCContactDate *)objh countByEnumeratingWithState:&v206 objects:v256 count:16];
      if (v139)
      {
        v140 = v139;
        v141 = *v207;
        do
        {
          for (kk = 0; kk != v140; ++kk)
          {
            if (*v207 != v141)
            {
              objc_enumerationMutation(objh);
            }

            v143 = *(*(&v206 + 1) + 8 * kk);
            v144 = objc_alloc(*(v137 + 2392));
            v205 = 0;
            v145 = [v144 initWithJSONDictionary:v143 error:&v205];
            v146 = v205;
            if (v145)
            {
              v147 = v146 == 0;
            }

            else
            {
              v147 = 0;
            }

            if (!v147)
            {
              v150 = v146;
              CCSetError();

              v42 = 0;
              self = selfCopy7;
              v9 = v193;
              v10 = v197;
              v77 = v165;
              v151 = objh;
              v133 = v154;
              v94 = v168;
              v30 = v169;
              goto LABEL_155;
            }

            [(CCContactDate *)v138 addObject:v145];
          }

          v140 = [(CCContactDate *)objh countByEnumeratingWithState:&v206 objects:v256 count:16];
        }

        while (v140);
      }

      self = selfCopy7;
      v9 = v193;
      v10 = v197;
      v30 = v169;
      v128 = v154;
      goto LABEL_152;
    }

    CCSetError();
    v42 = 0;
    v164 = v136;
    v77 = v165;
    v133 = v154;
LABEL_154:
    v94 = v168;
    v151 = objg;
    goto LABEL_155;
  }

  CCSetError();
  v42 = 0;
LABEL_163:

  return v42;
}

- (id)jsonDictionary
{
  v121 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  if (self->_givenName)
  {
    givenName = [(CCContactContent *)self givenName];
    [v3 setObject:givenName forKeyedSubscript:@"givenName"];
  }

  if (self->_middleName)
  {
    middleName = [(CCContactContent *)self middleName];
    [v3 setObject:middleName forKeyedSubscript:@"middleName"];
  }

  if (self->_familyName)
  {
    familyName = [(CCContactContent *)self familyName];
    [v3 setObject:familyName forKeyedSubscript:@"familyName"];
  }

  if (self->_previousFamilyName)
  {
    previousFamilyName = [(CCContactContent *)self previousFamilyName];
    [v3 setObject:previousFamilyName forKeyedSubscript:@"previousFamilyName"];
  }

  if (self->_nickname)
  {
    nickname = [(CCContactContent *)self nickname];
    [v3 setObject:nickname forKeyedSubscript:@"nickname"];
  }

  if (self->_namePrefix)
  {
    namePrefix = [(CCContactContent *)self namePrefix];
    [v3 setObject:namePrefix forKeyedSubscript:@"namePrefix"];
  }

  if (self->_nameSuffix)
  {
    nameSuffix = [(CCContactContent *)self nameSuffix];
    [v3 setObject:nameSuffix forKeyedSubscript:@"nameSuffix"];
  }

  if (self->_phoneNumbers)
  {
    v11 = objc_opt_new();
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v112 = 0u;
    phoneNumbers = [(CCContactContent *)self phoneNumbers];
    v13 = [phoneNumbers countByEnumeratingWithState:&v109 objects:v120 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v110;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v110 != v15)
          {
            objc_enumerationMutation(phoneNumbers);
          }

          jsonDictionary = [*(*(&v109 + 1) + 8 * i) jsonDictionary];
          [v11 addObject:jsonDictionary];
        }

        v14 = [phoneNumbers countByEnumeratingWithState:&v109 objects:v120 count:16];
      }

      while (v14);
    }

    [v3 setObject:v11 forKeyedSubscript:@"phoneNumbers"];
  }

  if (self->_emailAddresses)
  {
    v18 = objc_opt_new();
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    emailAddresses = [(CCContactContent *)self emailAddresses];
    v20 = [emailAddresses countByEnumeratingWithState:&v105 objects:v119 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v106;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v106 != v22)
          {
            objc_enumerationMutation(emailAddresses);
          }

          jsonDictionary2 = [*(*(&v105 + 1) + 8 * j) jsonDictionary];
          [v18 addObject:jsonDictionary2];
        }

        v21 = [emailAddresses countByEnumeratingWithState:&v105 objects:v119 count:16];
      }

      while (v21);
    }

    [v3 setObject:v18 forKeyedSubscript:@"emailAddresses"];
  }

  if (self->_postalAddresses)
  {
    v25 = objc_opt_new();
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    postalAddresses = [(CCContactContent *)self postalAddresses];
    v27 = [postalAddresses countByEnumeratingWithState:&v101 objects:v118 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v102;
      do
      {
        for (k = 0; k != v28; ++k)
        {
          if (*v102 != v29)
          {
            objc_enumerationMutation(postalAddresses);
          }

          jsonDictionary3 = [*(*(&v101 + 1) + 8 * k) jsonDictionary];
          [v25 addObject:jsonDictionary3];
        }

        v28 = [postalAddresses countByEnumeratingWithState:&v101 objects:v118 count:16];
      }

      while (v28);
    }

    [v3 setObject:v25 forKeyedSubscript:@"postalAddresses"];
  }

  if (self->_urlAddresses)
  {
    v32 = objc_opt_new();
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    urlAddresses = [(CCContactContent *)self urlAddresses];
    v34 = [urlAddresses countByEnumeratingWithState:&v97 objects:v117 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v98;
      do
      {
        for (m = 0; m != v35; ++m)
        {
          if (*v98 != v36)
          {
            objc_enumerationMutation(urlAddresses);
          }

          jsonDictionary4 = [*(*(&v97 + 1) + 8 * m) jsonDictionary];
          [v32 addObject:jsonDictionary4];
        }

        v35 = [urlAddresses countByEnumeratingWithState:&v97 objects:v117 count:16];
      }

      while (v35);
    }

    [v3 setObject:v32 forKeyedSubscript:@"urlAddresses"];
  }

  if (self->_socialProfiles)
  {
    v39 = objc_opt_new();
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    socialProfiles = [(CCContactContent *)self socialProfiles];
    v41 = [socialProfiles countByEnumeratingWithState:&v93 objects:v116 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v94;
      do
      {
        for (n = 0; n != v42; ++n)
        {
          if (*v94 != v43)
          {
            objc_enumerationMutation(socialProfiles);
          }

          jsonDictionary5 = [*(*(&v93 + 1) + 8 * n) jsonDictionary];
          [v39 addObject:jsonDictionary5];
        }

        v42 = [socialProfiles countByEnumeratingWithState:&v93 objects:v116 count:16];
      }

      while (v42);
    }

    [v3 setObject:v39 forKeyedSubscript:@"socialProfiles"];
  }

  if (self->_instantMessageAddresses)
  {
    v46 = objc_opt_new();
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    instantMessageAddresses = [(CCContactContent *)self instantMessageAddresses];
    v48 = [instantMessageAddresses countByEnumeratingWithState:&v89 objects:v115 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = *v90;
      do
      {
        for (ii = 0; ii != v49; ++ii)
        {
          if (*v90 != v50)
          {
            objc_enumerationMutation(instantMessageAddresses);
          }

          jsonDictionary6 = [*(*(&v89 + 1) + 8 * ii) jsonDictionary];
          [v46 addObject:jsonDictionary6];
        }

        v49 = [instantMessageAddresses countByEnumeratingWithState:&v89 objects:v115 count:16];
      }

      while (v49);
    }

    [v3 setObject:v46 forKeyedSubscript:@"instantMessageAddresses"];
  }

  if (self->_relations)
  {
    v53 = objc_opt_new();
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    relations = [(CCContactContent *)self relations];
    v55 = [relations countByEnumeratingWithState:&v85 objects:v114 count:16];
    if (v55)
    {
      v56 = v55;
      v57 = *v86;
      do
      {
        for (jj = 0; jj != v56; ++jj)
        {
          if (*v86 != v57)
          {
            objc_enumerationMutation(relations);
          }

          jsonDictionary7 = [*(*(&v85 + 1) + 8 * jj) jsonDictionary];
          [v53 addObject:jsonDictionary7];
        }

        v56 = [relations countByEnumeratingWithState:&v85 objects:v114 count:16];
      }

      while (v56);
    }

    [v3 setObject:v53 forKeyedSubscript:@"relations"];
  }

  if (self->_organizationName)
  {
    organizationName = [(CCContactContent *)self organizationName];
    [v3 setObject:organizationName forKeyedSubscript:@"organizationName"];
  }

  if (self->_departmentName)
  {
    departmentName = [(CCContactContent *)self departmentName];
    [v3 setObject:departmentName forKeyedSubscript:@"departmentName"];
  }

  if (self->_jobTitle)
  {
    jobTitle = [(CCContactContent *)self jobTitle];
    [v3 setObject:jobTitle forKeyedSubscript:@"jobTitle"];
  }

  if (self->_phoneticGivenName)
  {
    phoneticGivenName = [(CCContactContent *)self phoneticGivenName];
    [v3 setObject:phoneticGivenName forKeyedSubscript:@"phoneticGivenName"];
  }

  if (self->_phoneticMiddleName)
  {
    phoneticMiddleName = [(CCContactContent *)self phoneticMiddleName];
    [v3 setObject:phoneticMiddleName forKeyedSubscript:@"phoneticMiddleName"];
  }

  if (self->_phoneticFamilyName)
  {
    phoneticFamilyName = [(CCContactContent *)self phoneticFamilyName];
    [v3 setObject:phoneticFamilyName forKeyedSubscript:@"phoneticFamilyName"];
  }

  if (self->_phoneticOrganizationName)
  {
    phoneticOrganizationName = [(CCContactContent *)self phoneticOrganizationName];
    [v3 setObject:phoneticOrganizationName forKeyedSubscript:@"phoneticOrganizationName"];
  }

  if (self->_note)
  {
    note = [(CCContactContent *)self note];
    [v3 setObject:note forKeyedSubscript:@"note"];
  }

  if (self->_birthday)
  {
    birthday = [(CCContactContent *)self birthday];
    jsonDictionary8 = [birthday jsonDictionary];
    [v3 setObject:jsonDictionary8 forKeyedSubscript:@"birthday"];
  }

  if (self->_nonGregorianBirthday)
  {
    nonGregorianBirthday = [(CCContactContent *)self nonGregorianBirthday];
    jsonDictionary9 = [nonGregorianBirthday jsonDictionary];
    [v3 setObject:jsonDictionary9 forKeyedSubscript:@"nonGregorianBirthday"];
  }

  if (self->_dates)
  {
    v72 = objc_opt_new();
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    dates = [(CCContactContent *)self dates];
    v74 = [dates countByEnumeratingWithState:&v81 objects:v113 count:16];
    if (v74)
    {
      v75 = v74;
      v76 = *v82;
      do
      {
        for (kk = 0; kk != v75; ++kk)
        {
          if (*v82 != v76)
          {
            objc_enumerationMutation(dates);
          }

          jsonDictionary10 = [*(*(&v81 + 1) + 8 * kk) jsonDictionary];
          [v72 addObject:jsonDictionary10];
        }

        v75 = [dates countByEnumeratingWithState:&v81 objects:v113 count:16];
      }

      while (v75);
    }

    [v3 setObject:v72 forKeyedSubscript:@"dates"];
  }

  v79 = [v3 copy];

  return v79;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  if (self->_givenName)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19679 stringValue:self->_givenName];
    blockCopy[2](blockCopy, v5);
  }

  if (self->_middleName)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19680 stringValue:self->_middleName];
    blockCopy[2](blockCopy, v6);
  }

  if (self->_familyName)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19681 stringValue:self->_familyName];
    blockCopy[2](blockCopy, v7);
  }

  if (self->_previousFamilyName)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19682 stringValue:self->_previousFamilyName];
    blockCopy[2](blockCopy, v8);
  }

  if (self->_nickname)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19683 stringValue:self->_nickname];
    blockCopy[2](blockCopy, v9);
  }

  if (self->_namePrefix)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19684 stringValue:self->_namePrefix];
    blockCopy[2](blockCopy, v10);
  }

  if (self->_nameSuffix)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19685 stringValue:self->_nameSuffix];
    blockCopy[2](blockCopy, v11);
  }

  if (self->_phoneNumbers)
  {
    v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19686 repeatedSubMessageValue:self->_phoneNumbers];
    blockCopy[2](blockCopy, v12);
  }

  if (self->_emailAddresses)
  {
    v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19687 repeatedSubMessageValue:self->_emailAddresses];
    blockCopy[2](blockCopy, v13);
  }

  if (self->_postalAddresses)
  {
    v14 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19688 repeatedSubMessageValue:self->_postalAddresses];
    blockCopy[2](blockCopy, v14);
  }

  if (self->_urlAddresses)
  {
    v15 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19689 repeatedSubMessageValue:self->_urlAddresses];
    blockCopy[2](blockCopy, v15);
  }

  if (self->_socialProfiles)
  {
    v16 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19690 repeatedSubMessageValue:self->_socialProfiles];
    blockCopy[2](blockCopy, v16);
  }

  if (self->_instantMessageAddresses)
  {
    v17 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19691 repeatedSubMessageValue:self->_instantMessageAddresses];
    blockCopy[2](blockCopy, v17);
  }

  if (self->_relations)
  {
    v18 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19692 repeatedSubMessageValue:self->_relations];
    blockCopy[2](blockCopy, v18);
  }

  if (self->_organizationName)
  {
    v19 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19693 stringValue:self->_organizationName];
    blockCopy[2](blockCopy, v19);
  }

  if (self->_departmentName)
  {
    v20 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19694 stringValue:self->_departmentName];
    blockCopy[2](blockCopy, v20);
  }

  if (self->_jobTitle)
  {
    v21 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19695 stringValue:self->_jobTitle];
    blockCopy[2](blockCopy, v21);
  }

  if (self->_phoneticGivenName)
  {
    v22 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19696 stringValue:self->_phoneticGivenName];
    blockCopy[2](blockCopy, v22);
  }

  if (self->_phoneticMiddleName)
  {
    v23 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19697 stringValue:self->_phoneticMiddleName];
    blockCopy[2](blockCopy, v23);
  }

  if (self->_phoneticFamilyName)
  {
    v24 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19698 stringValue:self->_phoneticFamilyName];
    blockCopy[2](blockCopy, v24);
  }

  if (self->_phoneticOrganizationName)
  {
    v25 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19699 stringValue:self->_phoneticOrganizationName];
    blockCopy[2](blockCopy, v25);
  }

  if (self->_note)
  {
    v26 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19700 stringValue:self->_note];
    blockCopy[2](blockCopy, v26);
  }

  if (self->_birthday)
  {
    v27 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19701 subMessageValue:self->_birthday];
    blockCopy[2](blockCopy, v27);
  }

  if (self->_nonGregorianBirthday)
  {
    v28 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19702 subMessageValue:self->_nonGregorianBirthday];
    blockCopy[2](blockCopy, v28);
  }

  v29 = blockCopy;
  if (self->_dates)
  {
    v30 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19705 repeatedSubMessageValue:self->_dates];
    blockCopy[2](blockCopy, v30);

    v29 = blockCopy;
  }
}

- (NSArray)dates
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_dates copyItems:1];

  return v2;
}

- (CCContactDate)nonGregorianBirthday
{
  v2 = [(CCContactDate *)self->_nonGregorianBirthday copy];

  return v2;
}

- (CCContactDate)birthday
{
  v2 = [(CCContactDate *)self->_birthday copy];

  return v2;
}

- (NSString)note
{
  v2 = [(NSString *)self->_note copy];

  return v2;
}

- (NSString)phoneticOrganizationName
{
  v2 = [(NSString *)self->_phoneticOrganizationName copy];

  return v2;
}

- (NSString)phoneticFamilyName
{
  v2 = [(NSString *)self->_phoneticFamilyName copy];

  return v2;
}

- (NSString)phoneticMiddleName
{
  v2 = [(NSString *)self->_phoneticMiddleName copy];

  return v2;
}

- (NSString)phoneticGivenName
{
  v2 = [(NSString *)self->_phoneticGivenName copy];

  return v2;
}

- (NSString)jobTitle
{
  v2 = [(NSString *)self->_jobTitle copy];

  return v2;
}

- (NSString)departmentName
{
  v2 = [(NSString *)self->_departmentName copy];

  return v2;
}

- (NSString)organizationName
{
  v2 = [(NSString *)self->_organizationName copy];

  return v2;
}

- (NSArray)relations
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_relations copyItems:1];

  return v2;
}

- (NSArray)instantMessageAddresses
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_instantMessageAddresses copyItems:1];

  return v2;
}

- (NSArray)socialProfiles
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_socialProfiles copyItems:1];

  return v2;
}

- (NSArray)urlAddresses
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_urlAddresses copyItems:1];

  return v2;
}

- (NSArray)postalAddresses
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_postalAddresses copyItems:1];

  return v2;
}

- (NSArray)emailAddresses
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_emailAddresses copyItems:1];

  return v2;
}

- (NSArray)phoneNumbers
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_phoneNumbers copyItems:1];

  return v2;
}

- (NSString)nameSuffix
{
  v2 = [(NSString *)self->_nameSuffix copy];

  return v2;
}

- (NSString)namePrefix
{
  v2 = [(NSString *)self->_namePrefix copy];

  return v2;
}

- (NSString)nickname
{
  v2 = [(NSString *)self->_nickname copy];

  return v2;
}

- (NSString)previousFamilyName
{
  v2 = [(NSString *)self->_previousFamilyName copy];

  return v2;
}

- (NSString)familyName
{
  v2 = [(NSString *)self->_familyName copy];

  return v2;
}

- (NSString)middleName
{
  v2 = [(NSString *)self->_middleName copy];

  return v2;
}

- (NSString)givenName
{
  v2 = [(NSString *)self->_givenName copy];

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
    v9 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 0;
    goto LABEL_90;
  }

  v8 = 0;
  v67 = 0;
  v68 = 0;
  v65 = 0;
  v66 = 0;
  v70 = 0;
  v71 = 0;
  v69 = 0;
  v9 = 0;
  v10 = MEMORY[0x1E6993AA8];
  v11 = MEMORY[0x1E6993AA0];
LABEL_3:
  if (*&v5[*v10])
  {
    v12 = 0;
  }

  else
  {
    v12 = v8 == 0;
  }

  if (v12)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    while (1)
    {
      v16 = *v6;
      v17 = *&v5[v16];
      if (v17 == -1 || v17 >= *&v5[*v7])
      {
        break;
      }

      v18 = *(*&v5[*v11] + v17);
      *&v5[v16] = v17 + 1;
      v15 |= (v18 & 0x7F) << v13;
      if ((v18 & 0x80) == 0)
      {
        goto LABEL_17;
      }

      v13 += 7;
      if (v14++ >= 9)
      {
        v20 = 0;
        if (*&v5[*v10])
        {
          goto LABEL_90;
        }

LABEL_21:
        switch((v20 >> 3))
        {
          case 1u:
            v22 = CCPBReaderReadStringNoCopy();
            v8 = 0;
            v23 = 16;
            goto LABEL_80;
          case 2u:
            v22 = CCPBReaderReadStringNoCopy();
            v8 = 0;
            v23 = 24;
            goto LABEL_80;
          case 3u:
            v22 = CCPBReaderReadStringNoCopy();
            v8 = 0;
            v23 = 32;
            goto LABEL_80;
          case 4u:
            v22 = CCPBReaderReadStringNoCopy();
            v8 = 0;
            v23 = 40;
            goto LABEL_80;
          case 5u:
            v22 = CCPBReaderReadStringNoCopy();
            v8 = 0;
            v23 = 48;
            goto LABEL_80;
          case 6u:
            v22 = CCPBReaderReadStringNoCopy();
            v8 = 0;
            v23 = 56;
            goto LABEL_80;
          case 7u:
            v22 = CCPBReaderReadStringNoCopy();
            v8 = 0;
            v23 = 64;
            goto LABEL_80;
          case 8u:
            v24 = CCPBReaderReadDataNoCopy();
            if (!v68)
            {
              v68 = objc_opt_new();
            }

            v31 = [CCContactPhoneNumber alloc];
            v81[0] = 0;
            v26 = [(CCItemMessage *)v31 initWithData:v24 error:v81];
            v8 = v81[0];
            if (v8 || !v26)
            {
              goto LABEL_77;
            }

            v27 = v68;
            goto LABEL_76;
          case 9u:
            v24 = CCPBReaderReadDataNoCopy();
            if (!v67)
            {
              v67 = objc_opt_new();
            }

            v34 = [CCContactEmailAddress alloc];
            v80 = 0;
            v26 = [(CCItemMessage *)v34 initWithData:v24 error:&v80];
            v8 = v80;
            if (v8 || !v26)
            {
              goto LABEL_77;
            }

            v27 = v67;
            goto LABEL_76;
          case 0xAu:
            v24 = CCPBReaderReadDataNoCopy();
            if (!v66)
            {
              v66 = objc_opt_new();
            }

            v29 = [CCContactPostalAddress alloc];
            v79 = 0;
            v26 = [(CCItemMessage *)v29 initWithData:v24 error:&v79];
            v8 = v79;
            if (v8 || !v26)
            {
              goto LABEL_77;
            }

            v27 = v66;
            goto LABEL_76;
          case 0xBu:
            v24 = CCPBReaderReadDataNoCopy();
            if (!v65)
            {
              v65 = objc_opt_new();
            }

            v33 = [CCContactURLAddress alloc];
            v78 = 0;
            v26 = [(CCItemMessage *)v33 initWithData:v24 error:&v78];
            v8 = v78;
            if (v8 || !v26)
            {
              goto LABEL_77;
            }

            v27 = v65;
            goto LABEL_76;
          case 0xCu:
            v24 = CCPBReaderReadDataNoCopy();
            if (!v71)
            {
              v71 = objc_opt_new();
            }

            v25 = [CCContactSocialProfile alloc];
            v77 = 0;
            v26 = [(CCItemMessage *)v25 initWithData:v24 error:&v77];
            v8 = v77;
            if (v8 || !v26)
            {
              goto LABEL_77;
            }

            v27 = v71;
            goto LABEL_76;
          case 0xDu:
            v24 = CCPBReaderReadDataNoCopy();
            if (!v70)
            {
              v70 = objc_opt_new();
            }

            v28 = [CCContactInstantMessageAddress alloc];
            v76 = 0;
            v26 = [(CCItemMessage *)v28 initWithData:v24 error:&v76];
            v8 = v76;
            if (v8 || !v26)
            {
              goto LABEL_77;
            }

            v27 = v70;
            goto LABEL_76;
          case 0xEu:
            v24 = CCPBReaderReadDataNoCopy();
            if (!v69)
            {
              v69 = objc_opt_new();
            }

            v32 = [CCContactRelation alloc];
            v75 = 0;
            v26 = [(CCItemMessage *)v32 initWithData:v24 error:&v75];
            v8 = v75;
            if (v8 || !v26)
            {
              goto LABEL_77;
            }

            v27 = v69;
            goto LABEL_76;
          case 0xFu:
            v22 = CCPBReaderReadStringNoCopy();
            v8 = 0;
            v23 = 128;
            goto LABEL_80;
          case 0x10u:
            v22 = CCPBReaderReadStringNoCopy();
            v8 = 0;
            v23 = 136;
            goto LABEL_80;
          case 0x11u:
            v22 = CCPBReaderReadStringNoCopy();
            v8 = 0;
            v23 = 144;
            goto LABEL_80;
          case 0x12u:
            v22 = CCPBReaderReadStringNoCopy();
            v8 = 0;
            v23 = 152;
            goto LABEL_80;
          case 0x13u:
            v22 = CCPBReaderReadStringNoCopy();
            v8 = 0;
            v23 = 160;
            goto LABEL_80;
          case 0x14u:
            v22 = CCPBReaderReadStringNoCopy();
            v8 = 0;
            v23 = 168;
            goto LABEL_80;
          case 0x15u:
            v22 = CCPBReaderReadStringNoCopy();
            v8 = 0;
            v23 = 176;
            goto LABEL_80;
          case 0x16u:
            v22 = CCPBReaderReadStringNoCopy();
            v8 = 0;
            v23 = 184;
LABEL_80:
            v24 = *(&self->super.super.isa + v23);
            *(&self->super.super.isa + v23) = v22;
            goto LABEL_81;
          case 0x17u:
            v35 = [CCContactDate alloc];
            v24 = CCPBReaderReadDataNoCopy();
            v74 = 0;
            v36 = [(CCItemMessage *)v35 initWithData:v24 error:&v74];
            v8 = v74;
            v37 = 192;
            goto LABEL_85;
          case 0x18u:
            v38 = [CCContactDate alloc];
            v24 = CCPBReaderReadDataNoCopy();
            v73 = 0;
            v36 = [(CCItemMessage *)v38 initWithData:v24 error:&v73];
            v8 = v73;
            v37 = 200;
LABEL_85:
            v39 = *(&self->super.super.isa + v37);
            *(&self->super.super.isa + v37) = v36;

            goto LABEL_81;
          case 0x19u:
            v24 = CCPBReaderReadDataNoCopy();
            if (!v9)
            {
              v9 = objc_opt_new();
            }

            v30 = [CCContactDate alloc];
            v72 = 0;
            v26 = [(CCItemMessage *)v30 initWithData:v24 error:&v72];
            v8 = v72;
            if (!v8 && v26)
            {
              v27 = v9;
LABEL_76:
              [v27 addObject:{v26, errorCopy}];
            }

LABEL_77:

            goto LABEL_81;
          default:
            if (CCPBReaderSkipValueWithTag())
            {
              v8 = 0;
            }

            else
            {
              v40 = objc_opt_class();
              v24 = NSStringFromClass(v40);
              v8 = CCSkipFieldErrorForMessage();
LABEL_81:
            }

            if (*&v5[*v6] >= *&v5[*v7])
            {
              goto LABEL_91;
            }

            goto LABEL_3;
        }
      }
    }

    *&v5[*v10] = 1;
LABEL_17:
    v21 = *&v5[*v10];
    if (v21)
    {
      v20 = 0;
    }

    else
    {
      v20 = v15;
    }

    if (!v21)
    {
      goto LABEL_21;
    }

LABEL_90:
    v8 = 0;
  }

LABEL_91:
  v41 = [v68 copy];
  phoneNumbers = self->_phoneNumbers;
  self->_phoneNumbers = v41;

  v43 = [v67 copy];
  emailAddresses = self->_emailAddresses;
  self->_emailAddresses = v43;

  v45 = [v66 copy];
  postalAddresses = self->_postalAddresses;
  self->_postalAddresses = v45;

  v47 = [v65 copy];
  urlAddresses = self->_urlAddresses;
  self->_urlAddresses = v47;

  v49 = [v71 copy];
  socialProfiles = self->_socialProfiles;
  self->_socialProfiles = v49;

  v51 = [v70 copy];
  instantMessageAddresses = self->_instantMessageAddresses;
  self->_instantMessageAddresses = v51;

  v53 = [v69 copy];
  relations = self->_relations;
  self->_relations = v53;

  v55 = [v9 copy];
  dates = self->_dates;
  self->_dates = v55;

  if (v8)
  {
    CCSetError();
    v57 = 0;
    v58 = dataCopy;
  }

  else
  {
    v58 = dataCopy;
    if (*&v5[*MEMORY[0x1E6993AA8]])
    {
      v59 = objc_opt_class();
      v60 = NSStringFromClass(v59);
      v61 = CCInvalidBufferErrorForMessage();
      CCSetError();

      v57 = 0;
    }

    else
    {
      v57 = 1;
    }
  }

  return v57;
}

- (CCContactContent)initWithGivenName:(id)name middleName:(id)middleName familyName:(id)familyName previousFamilyName:(id)previousFamilyName nickname:(id)nickname namePrefix:(id)prefix nameSuffix:(id)suffix phoneNumbers:(id)self0 emailAddresses:(id)self1 postalAddresses:(id)self2 urlAddresses:(id)self3 socialProfiles:(id)self4 instantMessageAddresses:(id)self5 relations:(id)self6 organizationName:(id)self7 departmentName:(id)self8 jobTitle:(id)self9 phoneticGivenName:(id)givenName phoneticMiddleName:(id)phoneticMiddleName phoneticFamilyName:(id)phoneticFamilyName phoneticOrganizationName:(id)phoneticOrganizationName note:(id)note birthday:(id)birthday nonGregorianBirthday:(id)gregorianBirthday dates:(id)dates error:(id *)error
{
  v214 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  middleNameCopy = middleName;
  familyNameCopy = familyName;
  previousFamilyNameCopy = previousFamilyName;
  nicknameCopy = nickname;
  prefixCopy = prefix;
  suffixCopy = suffix;
  numbersCopy = numbers;
  addressesCopy = addresses;
  postalAddressesCopy = postalAddresses;
  urlAddressesCopy = urlAddresses;
  profilesCopy = profiles;
  messageAddressesCopy = messageAddresses;
  relationsCopy = relations;
  organizationNameCopy = organizationName;
  departmentNameCopy = departmentName;
  titleCopy = title;
  givenNameCopy = givenName;
  phoneticMiddleNameCopy = phoneticMiddleName;
  phoneticFamilyNameCopy = phoneticFamilyName;
  phoneticOrganizationNameCopy = phoneticOrganizationName;
  noteCopy = note;
  birthdayCopy = birthday;
  gregorianBirthdayCopy = gregorianBirthday;
  datesCopy = dates;
  v39 = objc_opt_new();
  v127 = familyNameCopy;
  v138 = departmentNameCopy;
  if (nameCopy)
  {
    objc_opt_class();
    v205 = 0;
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v41 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      goto LABEL_137;
    }

    CCPBDataWriterWriteStringField();
  }

  else
  {
    v41 = 0;
  }

  v42 = prefixCopy;
  if (middleNameCopy)
  {
    objc_opt_class();
    v204 = v41;
    v43 = CCValidateIsInstanceOfExpectedClass();
    v44 = v41;

    if (!v43)
    {
      goto LABEL_14;
    }

    CCPBDataWriterWriteStringField();
    if (!familyNameCopy)
    {
LABEL_8:
      v41 = v44;
      if (previousFamilyNameCopy)
      {
        goto LABEL_9;
      }

LABEL_18:
      v44 = v41;
      if (!nicknameCopy)
      {
LABEL_11:
        v41 = v44;
        if (prefixCopy)
        {
          goto LABEL_12;
        }

        goto LABEL_21;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v44 = v41;
    if (!familyNameCopy)
    {
      goto LABEL_8;
    }
  }

  objc_opt_class();
  v203 = v44;
  v50 = CCValidateIsInstanceOfExpectedClass();
  v41 = v44;

  if (!v50)
  {
    goto LABEL_25;
  }

  CCPBDataWriterWriteStringField();
  if (!previousFamilyNameCopy)
  {
    goto LABEL_18;
  }

LABEL_9:
  objc_opt_class();
  v202 = v41;
  v45 = CCValidateIsInstanceOfExpectedClass();
  v44 = v41;

  if (v45)
  {
    CCPBDataWriterWriteStringField();
    if (!nicknameCopy)
    {
      goto LABEL_11;
    }

LABEL_19:
    objc_opt_class();
    v201 = v44;
    v51 = CCValidateIsInstanceOfExpectedClass();
    v41 = v44;

    if (v51)
    {
      CCPBDataWriterWriteStringField();
      if (prefixCopy)
      {
LABEL_12:
        objc_opt_class();
        v200 = v41;
        v46 = CCValidateIsInstanceOfExpectedClass();
        v44 = v41;

        if (v46)
        {
          CCPBDataWriterWriteStringField();
          goto LABEL_22;
        }

        goto LABEL_14;
      }

LABEL_21:
      v44 = v41;
LABEL_22:
      if (suffixCopy)
      {
        objc_opt_class();
        v199 = v44;
        v52 = CCValidateIsInstanceOfExpectedClass();
        v41 = v44;

        if (!v52)
        {
          v47 = previousFamilyNameCopy;
          v48 = nicknameCopy;
          CCSetError();
          v49 = 0;
LABEL_51:
          selfCopy4 = self;
          goto LABEL_141;
        }

        CCPBDataWriterWriteStringField();
      }

      else
      {
        v41 = v44;
      }

      v126 = nameCopy;
      if (!numbersCopy)
      {
        v55 = v41;
        goto LABEL_40;
      }

      v47 = previousFamilyNameCopy;
      v48 = nicknameCopy;
      objc_opt_class();
      v198 = v41;
      v54 = CCValidateArrayValues();
      v55 = v41;

      if (v54)
      {
        v196 = 0u;
        v197 = 0u;
        v194 = 0u;
        v195 = 0u;
        v56 = numbersCopy;
        v57 = [v56 countByEnumeratingWithState:&v194 objects:v213 count:16];
        if (v57)
        {
          v58 = v57;
          v59 = *v195;
          do
          {
            for (i = 0; i != v58; ++i)
            {
              if (*v195 != v59)
              {
                objc_enumerationMutation(v56);
              }

              data = [*(*(&v194 + 1) + 8 * i) data];
              CCPBDataWriterWriteDataField();
            }

            v58 = [v56 countByEnumeratingWithState:&v194 objects:v213 count:16];
          }

          while (v58);
        }

        nameCopy = v126;
        nicknameCopy = v48;
        previousFamilyNameCopy = v47;
LABEL_40:
        if (addressesCopy)
        {
          v47 = previousFamilyNameCopy;
          v48 = nicknameCopy;
          objc_opt_class();
          v193 = v55;
          v62 = CCValidateArrayValues();
          v41 = v55;

          if (!v62)
          {
            goto LABEL_138;
          }

          v191 = 0u;
          v192 = 0u;
          v189 = 0u;
          v190 = 0u;
          v63 = addressesCopy;
          v64 = [v63 countByEnumeratingWithState:&v189 objects:v212 count:16];
          if (v64)
          {
            v65 = v64;
            v66 = *v190;
            do
            {
              for (j = 0; j != v65; ++j)
              {
                if (*v190 != v66)
                {
                  objc_enumerationMutation(v63);
                }

                data2 = [*(*(&v189 + 1) + 8 * j) data];
                CCPBDataWriterWriteDataField();
              }

              v65 = [v63 countByEnumeratingWithState:&v189 objects:v212 count:16];
            }

            while (v65);
          }

          nameCopy = v126;
          nicknameCopy = v48;
          previousFamilyNameCopy = v47;
        }

        else
        {
          v41 = v55;
        }

        if (postalAddressesCopy)
        {
          v47 = previousFamilyNameCopy;
          v48 = nicknameCopy;
          objc_opt_class();
          v188 = v41;
          v69 = CCValidateArrayValues();
          v70 = v41;

          if (!v69)
          {
            goto LABEL_132;
          }

          v186 = 0u;
          v187 = 0u;
          v184 = 0u;
          v185 = 0u;
          v71 = postalAddressesCopy;
          v72 = [v71 countByEnumeratingWithState:&v184 objects:v211 count:16];
          if (v72)
          {
            v73 = v72;
            v74 = *v185;
            do
            {
              for (k = 0; k != v73; ++k)
              {
                if (*v185 != v74)
                {
                  objc_enumerationMutation(v71);
                }

                data3 = [*(*(&v184 + 1) + 8 * k) data];
                CCPBDataWriterWriteDataField();
              }

              v73 = [v71 countByEnumeratingWithState:&v184 objects:v211 count:16];
            }

            while (v73);
          }

          nameCopy = v126;
          nicknameCopy = v48;
          previousFamilyNameCopy = v47;
        }

        else
        {
          v70 = v41;
        }

        if (urlAddressesCopy)
        {
          v47 = previousFamilyNameCopy;
          v48 = nicknameCopy;
          objc_opt_class();
          v183 = v70;
          v77 = CCValidateArrayValues();
          v41 = v70;

          if (!v77)
          {
            goto LABEL_138;
          }

          v181 = 0u;
          v182 = 0u;
          v179 = 0u;
          v180 = 0u;
          v78 = urlAddressesCopy;
          v79 = [v78 countByEnumeratingWithState:&v179 objects:v210 count:16];
          if (v79)
          {
            v80 = v79;
            v81 = *v180;
            do
            {
              for (m = 0; m != v80; ++m)
              {
                if (*v180 != v81)
                {
                  objc_enumerationMutation(v78);
                }

                data4 = [*(*(&v179 + 1) + 8 * m) data];
                CCPBDataWriterWriteDataField();
              }

              v80 = [v78 countByEnumeratingWithState:&v179 objects:v210 count:16];
            }

            while (v80);
          }

          nameCopy = v126;
          nicknameCopy = v48;
          previousFamilyNameCopy = v47;
        }

        else
        {
          v41 = v70;
        }

        if (profilesCopy)
        {
          v47 = previousFamilyNameCopy;
          v48 = nicknameCopy;
          objc_opt_class();
          v178 = v41;
          v84 = CCValidateArrayValues();
          v70 = v41;

          if (!v84)
          {
            goto LABEL_132;
          }

          v176 = 0u;
          v177 = 0u;
          v174 = 0u;
          v175 = 0u;
          v85 = profilesCopy;
          v86 = [v85 countByEnumeratingWithState:&v174 objects:v209 count:16];
          if (v86)
          {
            v87 = v86;
            v88 = *v175;
            do
            {
              for (n = 0; n != v87; ++n)
              {
                if (*v175 != v88)
                {
                  objc_enumerationMutation(v85);
                }

                data5 = [*(*(&v174 + 1) + 8 * n) data];
                CCPBDataWriterWriteDataField();
              }

              v87 = [v85 countByEnumeratingWithState:&v174 objects:v209 count:16];
            }

            while (v87);
          }

          nameCopy = v126;
          nicknameCopy = v48;
          previousFamilyNameCopy = v47;
        }

        else
        {
          v70 = v41;
        }

        if (messageAddressesCopy)
        {
          v47 = previousFamilyNameCopy;
          v48 = nicknameCopy;
          objc_opt_class();
          v173 = v70;
          v91 = CCValidateArrayValues();
          v41 = v70;

          if (!v91)
          {
            goto LABEL_138;
          }

          v171 = 0u;
          v172 = 0u;
          v169 = 0u;
          v170 = 0u;
          v92 = messageAddressesCopy;
          v93 = [v92 countByEnumeratingWithState:&v169 objects:v208 count:16];
          if (v93)
          {
            v94 = v93;
            v95 = *v170;
            do
            {
              for (ii = 0; ii != v94; ++ii)
              {
                if (*v170 != v95)
                {
                  objc_enumerationMutation(v92);
                }

                data6 = [*(*(&v169 + 1) + 8 * ii) data];
                CCPBDataWriterWriteDataField();
              }

              v94 = [v92 countByEnumeratingWithState:&v169 objects:v208 count:16];
            }

            while (v94);
          }

          nameCopy = v126;
          nicknameCopy = v48;
          previousFamilyNameCopy = v47;
        }

        else
        {
          v41 = v70;
        }

        if (relationsCopy)
        {
          v47 = previousFamilyNameCopy;
          v48 = nicknameCopy;
          objc_opt_class();
          v168 = v41;
          v98 = CCValidateArrayValues();
          v70 = v41;

          if (!v98)
          {
            goto LABEL_132;
          }

          v166 = 0u;
          v167 = 0u;
          v164 = 0u;
          v165 = 0u;
          v99 = relationsCopy;
          v100 = [v99 countByEnumeratingWithState:&v164 objects:v207 count:16];
          if (v100)
          {
            v101 = v100;
            v102 = *v165;
            do
            {
              for (jj = 0; jj != v101; ++jj)
              {
                if (*v165 != v102)
                {
                  objc_enumerationMutation(v99);
                }

                data7 = [*(*(&v164 + 1) + 8 * jj) data];
                CCPBDataWriterWriteDataField();
              }

              v101 = [v99 countByEnumeratingWithState:&v164 objects:v207 count:16];
            }

            while (v101);
          }

          nameCopy = v126;
          nicknameCopy = v48;
          previousFamilyNameCopy = v47;
        }

        else
        {
          v70 = v41;
        }

        if (organizationNameCopy)
        {
          objc_opt_class();
          v163 = v70;
          v105 = CCValidateIsInstanceOfExpectedClass();
          v41 = v70;

          if (!v105)
          {
            goto LABEL_137;
          }

          CCPBDataWriterWriteStringField();
        }

        else
        {
          v41 = v70;
        }

        if (v138)
        {
          objc_opt_class();
          v162 = v41;
          v106 = CCValidateIsInstanceOfExpectedClass();
          v70 = v41;

          if (!v106)
          {
            goto LABEL_131;
          }

          CCPBDataWriterWriteStringField();
        }

        else
        {
          v70 = v41;
        }

        if (titleCopy)
        {
          objc_opt_class();
          v161 = v70;
          v107 = CCValidateIsInstanceOfExpectedClass();
          v41 = v70;

          if (!v107)
          {
            goto LABEL_137;
          }

          CCPBDataWriterWriteStringField();
        }

        else
        {
          v41 = v70;
        }

        if (givenNameCopy)
        {
          objc_opt_class();
          v160 = v41;
          v108 = CCValidateIsInstanceOfExpectedClass();
          v70 = v41;

          if (!v108)
          {
            goto LABEL_131;
          }

          CCPBDataWriterWriteStringField();
        }

        else
        {
          v70 = v41;
        }

        if (phoneticMiddleNameCopy)
        {
          objc_opt_class();
          v159 = v70;
          v109 = CCValidateIsInstanceOfExpectedClass();
          v41 = v70;

          if (!v109)
          {
            goto LABEL_137;
          }

          CCPBDataWriterWriteStringField();
        }

        else
        {
          v41 = v70;
        }

        if (!phoneticFamilyNameCopy)
        {
          v70 = v41;
          goto LABEL_134;
        }

        objc_opt_class();
        v158 = v41;
        v110 = CCValidateIsInstanceOfExpectedClass();
        v70 = v41;

        if (v110)
        {
          CCPBDataWriterWriteStringField();
LABEL_134:
          if (!phoneticOrganizationNameCopy)
          {
            v41 = v70;
            goto LABEL_143;
          }

          objc_opt_class();
          v157 = v70;
          v111 = CCValidateIsInstanceOfExpectedClass();
          v41 = v70;

          if (v111)
          {
            CCPBDataWriterWriteStringField();
LABEL_143:
            v47 = previousFamilyNameCopy;
            if (!noteCopy)
            {
              v48 = nicknameCopy;
              v70 = v41;
              goto LABEL_147;
            }

            v48 = nicknameCopy;
            objc_opt_class();
            v156 = v41;
            v113 = CCValidateIsInstanceOfExpectedClass();
            v70 = v41;

            if (v113)
            {
              CCPBDataWriterWriteStringField();
LABEL_147:
              if (!birthdayCopy)
              {
                v41 = v70;
                goto LABEL_151;
              }

              objc_opt_class();
              v155 = v70;
              v114 = CCValidateIsInstanceOfExpectedClass();
              v41 = v70;

              if (v114)
              {
                data8 = [birthdayCopy data];
                CCPBDataWriterWriteDataField();

LABEL_151:
                if (!gregorianBirthdayCopy)
                {
                  v70 = v41;
                  goto LABEL_155;
                }

                objc_opt_class();
                v154 = v41;
                v116 = CCValidateIsInstanceOfExpectedClass();
                v70 = v41;

                if (v116)
                {
                  data9 = [gregorianBirthdayCopy data];
                  CCPBDataWriterWriteDataField();

LABEL_155:
                  if (datesCopy)
                  {
                    objc_opt_class();
                    v153 = v70;
                    v118 = CCValidateArrayValues();
                    v41 = v70;

                    if (!v118)
                    {
                      CCSetError();
                      v49 = 0;
                      selfCopy4 = self;
                      nameCopy = v126;
                      goto LABEL_140;
                    }

                    v151 = 0u;
                    v152 = 0u;
                    v149 = 0u;
                    v150 = 0u;
                    v119 = datesCopy;
                    v120 = [v119 countByEnumeratingWithState:&v149 objects:v206 count:16];
                    if (v120)
                    {
                      v121 = v120;
                      v122 = *v150;
                      do
                      {
                        for (kk = 0; kk != v121; ++kk)
                        {
                          if (*v150 != v122)
                          {
                            objc_enumerationMutation(v119);
                          }

                          data10 = [*(*(&v149 + 1) + 8 * kk) data];
                          CCPBDataWriterWriteDataField();
                        }

                        v121 = [v119 countByEnumeratingWithState:&v149 objects:v206 count:16];
                      }

                      while (v121);
                    }

                    nameCopy = v126;
                  }

                  else
                  {
                    v41 = v70;
                  }

                  immutableData = [v39 immutableData];
                  selfCopy4 = [(CCItemMessage *)self initWithData:immutableData error:error];

                  v49 = selfCopy4;
LABEL_140:
                  v42 = prefixCopy;
                  goto LABEL_141;
                }

                goto LABEL_132;
              }

LABEL_138:
              CCSetError();
              v49 = 0;
              goto LABEL_139;
            }

LABEL_132:
            CCSetError();
            v49 = 0;
            v41 = v70;
LABEL_139:
            selfCopy4 = self;
            goto LABEL_140;
          }

LABEL_137:
          v47 = previousFamilyNameCopy;
          v48 = nicknameCopy;
          goto LABEL_138;
        }

LABEL_131:
        v47 = previousFamilyNameCopy;
        v48 = nicknameCopy;
        goto LABEL_132;
      }

      CCSetError();
      v49 = 0;
      v41 = v55;
      goto LABEL_51;
    }

LABEL_25:
    v47 = previousFamilyNameCopy;
    v48 = nicknameCopy;
    CCSetError();
    v49 = 0;
    goto LABEL_26;
  }

LABEL_14:
  v47 = previousFamilyNameCopy;
  v48 = nicknameCopy;
  CCSetError();
  v49 = 0;
  v41 = v44;
LABEL_26:
  selfCopy4 = self;
LABEL_141:

  return v49;
}

+ (id)descriptionForTypeIdentifier:(unsigned __int16)identifier
{
  if ((identifier - 19668) > 0x6D)
  {
    return 0;
  }

  else
  {
    return *(&off_1E73E6E98 + (identifier - 19668));
  }
}

@end