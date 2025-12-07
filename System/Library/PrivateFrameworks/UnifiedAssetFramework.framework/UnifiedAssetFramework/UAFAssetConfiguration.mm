@interface UAFAssetConfiguration
+ (BOOL)isValid:(id)valid validUsageTypes:(id)types error:(id *)error;
- (UAFAssetConfiguration)initWithDictionary:(id)dictionary;
- (id)getAutoAssetSpecifier:(id)specifier;
@end

@implementation UAFAssetConfiguration

+ (BOOL)isValid:(id)valid validUsageTypes:(id)types error:(id *)error
{
  v178[2] = *MEMORY[0x1E69E9840];
  validCopy = valid;
  typesCopy = types;
  if (![UAFConfiguration isValidValue:validCopy key:@"AssetName" kind:objc_opt_class() required:1 error:error])
  {
    if (error)
    {
      v21 = MEMORY[0x1E696ABC0];
      if (*error)
      {
        v177[0] = *MEMORY[0x1E696A578];
        v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown Asset is invalid"];
        v177[1] = *MEMORY[0x1E696AA08];
        v178[0] = v22;
        v178[1] = *error;
        v23 = MEMORY[0x1E695DF20];
        v24 = v178;
        v25 = v177;
        v26 = 2;
      }

      else
      {
        v175 = *MEMORY[0x1E696A578];
        v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown Asset is invalid"];
        v176 = v22;
        v23 = MEMORY[0x1E695DF20];
        v24 = &v176;
        v25 = &v175;
        v26 = 1;
      }

      v43 = [v23 dictionaryWithObjects:v24 forKeys:v25 count:v26];
      *error = [v21 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v43];
    }

    v15 = UAFGetLogCategory(&UAFLogContextConfiguration);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v137 = "+[UAFAssetConfiguration isValid:validUsageTypes:error:]";
      _os_log_impl(&dword_1BCF2C000, v15, OS_LOG_TYPE_DEFAULT, "%s Unknown Asset is invalid", buf, 0xCu);
    }

    goto LABEL_53;
  }

  if (![UAFConfiguration isValidValue:validCopy key:@"AutoAssetType" kind:objc_opt_class() required:0 error:error])
  {
    if (error)
    {
      v27 = MEMORY[0x1E696ABC0];
      if (*error)
      {
        v173[0] = *MEMORY[0x1E696A578];
        v28 = MEMORY[0x1E696AEC0];
        v29 = [validCopy objectForKeyedSubscript:@"AssetName"];
        v30 = [v28 stringWithFormat:@"AutoAssetType for Asset %@ is invalid", v29];
        v173[1] = *MEMORY[0x1E696AA08];
        v174[0] = v30;
        v174[1] = *error;
        v31 = MEMORY[0x1E695DF20];
        v32 = v174;
        v33 = v173;
        v34 = 2;
      }

      else
      {
        v171 = *MEMORY[0x1E696A578];
        v53 = MEMORY[0x1E696AEC0];
        v29 = [validCopy objectForKeyedSubscript:@"AssetName"];
        v30 = [v53 stringWithFormat:@"AutoAssetType for Asset %@ is invalid", v29];
        v172 = v30;
        v31 = MEMORY[0x1E695DF20];
        v32 = &v172;
        v33 = &v171;
        v34 = 1;
      }

      v54 = [v31 dictionaryWithObjects:v32 forKeys:v33 count:v34];
      *error = [v27 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v54];
    }

    v15 = UAFGetLogCategory(&UAFLogContextConfiguration);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_53;
    }

    v55 = [validCopy objectForKeyedSubscript:@"AssetName"];
    *buf = 136315394;
    v137 = "+[UAFAssetConfiguration isValid:validUsageTypes:error:]";
    v138 = 2112;
    v139 = v55;
    v56 = "%s AutoAssetType for Asset %@ is invalid";
    goto LABEL_52;
  }

  if (![UAFConfiguration isValidValue:validCopy key:@"TrialNamespace" kind:objc_opt_class() required:0 error:error])
  {
    if (error)
    {
      v35 = MEMORY[0x1E696ABC0];
      if (*error)
      {
        v169[0] = *MEMORY[0x1E696A578];
        v36 = MEMORY[0x1E696AEC0];
        v37 = [validCopy objectForKeyedSubscript:@"AssetName"];
        v38 = [v36 stringWithFormat:@"Asset %@ is invalid", v37];
        v169[1] = *MEMORY[0x1E696AA08];
        v170[0] = v38;
        v170[1] = *error;
        v39 = MEMORY[0x1E695DF20];
        v40 = v170;
        v41 = v169;
        v42 = 2;
      }

      else
      {
        v167 = *MEMORY[0x1E696A578];
        v57 = MEMORY[0x1E696AEC0];
        v37 = [validCopy objectForKeyedSubscript:@"AssetName"];
        v38 = [v57 stringWithFormat:@"Asset %@ is invalid", v37];
        v168 = v38;
        v39 = MEMORY[0x1E695DF20];
        v40 = &v168;
        v41 = &v167;
        v42 = 1;
      }

      v58 = [v39 dictionaryWithObjects:v40 forKeys:v41 count:v42];
      *error = [v35 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v58];
    }

    v15 = UAFGetLogCategory(&UAFLogContextConfiguration);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_53;
    }

    v55 = [validCopy objectForKeyedSubscript:@"AssetName"];
    *buf = 136315394;
    v137 = "+[UAFAssetConfiguration isValid:validUsageTypes:error:]";
    v138 = 2112;
    v139 = v55;
    v56 = "%s Asset %@ is invalid";
    goto LABEL_52;
  }

  if (![UAFConfiguration isValidValue:validCopy key:@"TrialMAAssetType" kind:objc_opt_class() required:0 error:error])
  {
    if (error)
    {
      v44 = MEMORY[0x1E696ABC0];
      if (*error)
      {
        v165[0] = *MEMORY[0x1E696A578];
        v45 = MEMORY[0x1E696AEC0];
        v46 = [validCopy objectForKeyedSubscript:@"AssetName"];
        v47 = [v45 stringWithFormat:@"Asset %@ is invalid", v46];
        v165[1] = *MEMORY[0x1E696AA08];
        v48 = *error;
        v166[0] = v47;
        v166[1] = v48;
        v49 = MEMORY[0x1E695DF20];
        v50 = v166;
        v51 = v165;
        v52 = 2;
      }

      else
      {
        v163 = *MEMORY[0x1E696A578];
        v68 = MEMORY[0x1E696AEC0];
        v46 = [validCopy objectForKeyedSubscript:@"AssetName"];
        v47 = [v68 stringWithFormat:@"Asset %@ is invalid", v46];
        v164 = v47;
        v49 = MEMORY[0x1E695DF20];
        v50 = &v164;
        v51 = &v163;
        v52 = 1;
      }

      v69 = [v49 dictionaryWithObjects:v50 forKeys:v51 count:v52];
      *error = [v44 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v69];
    }

    v15 = UAFGetLogCategory(&UAFLogContextConfiguration);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_53;
    }

    v55 = [validCopy objectForKeyedSubscript:@"AssetName"];
    *buf = 136315394;
    v137 = "+[UAFAssetConfiguration isValid:validUsageTypes:error:]";
    v138 = 2112;
    v139 = v55;
    v56 = "%s Asset %@ is invalid";
    goto LABEL_52;
  }

  v9 = 0;
  if (![UAFConfiguration isValidValue:validCopy key:@"IgnoreOSCompatibility" kind:objc_opt_class() required:0 error:error])
  {
    goto LABEL_55;
  }

  if (![UAFConfiguration isValidValue:validCopy key:@"TrialMATargetingTemplate" kind:objc_opt_class() required:0 error:error])
  {
    if (error)
    {
      v59 = MEMORY[0x1E696ABC0];
      if (*error)
      {
        v161[0] = *MEMORY[0x1E696A578];
        v60 = MEMORY[0x1E696AEC0];
        v61 = [validCopy objectForKeyedSubscript:@"AssetName"];
        v62 = [v60 stringWithFormat:@"Asset %@ is invalid", v61];
        v161[1] = *MEMORY[0x1E696AA08];
        v63 = *error;
        v162[0] = v62;
        v162[1] = v63;
        v64 = MEMORY[0x1E695DF20];
        v65 = v162;
        v66 = v161;
        v67 = 2;
      }

      else
      {
        v159 = *MEMORY[0x1E696A578];
        v87 = MEMORY[0x1E696AEC0];
        v61 = [validCopy objectForKeyedSubscript:@"AssetName"];
        v62 = [v87 stringWithFormat:@"Asset %@ is invalid", v61];
        v160 = v62;
        v64 = MEMORY[0x1E695DF20];
        v65 = &v160;
        v66 = &v159;
        v67 = 1;
      }

      v88 = [v64 dictionaryWithObjects:v65 forKeys:v66 count:v67];
      *error = [v59 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v88];
    }

    v15 = UAFGetLogCategory(&UAFLogContextConfiguration);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_53;
    }

    v55 = [validCopy objectForKeyedSubscript:@"AssetName"];
    *buf = 136315394;
    v137 = "+[UAFAssetConfiguration isValid:validUsageTypes:error:]";
    v138 = 2112;
    v139 = v55;
    v56 = "%s Asset %@ is invalid";
    goto LABEL_52;
  }

  v10 = [validCopy objectForKeyedSubscript:@"TrialMATargetingTemplate"];

  if (v10)
  {
    v11 = [validCopy objectForKeyedSubscript:@"TrialMATargetingTemplate"];
    v12 = [UAFConfiguration isValidValue:v11 key:@"MetadataAttribute" kind:objc_opt_class() required:1 error:error];

    if (!v12)
    {
      if (error)
      {
        v71 = MEMORY[0x1E696ABC0];
        if (*error)
        {
          v157[0] = *MEMORY[0x1E696A578];
          v72 = MEMORY[0x1E696AEC0];
          v73 = [validCopy objectForKeyedSubscript:@"AssetName"];
          v74 = [v72 stringWithFormat:@"Asset %@ is invalid", v73];
          v157[1] = *MEMORY[0x1E696AA08];
          v158[0] = v74;
          v158[1] = *error;
          v75 = MEMORY[0x1E695DF20];
          v76 = v158;
          v77 = v157;
          v78 = 2;
        }

        else
        {
          v155 = *MEMORY[0x1E696A578];
          v112 = MEMORY[0x1E696AEC0];
          v73 = [validCopy objectForKeyedSubscript:@"AssetName"];
          v74 = [v112 stringWithFormat:@"Asset %@ is invalid", v73];
          v156 = v74;
          v75 = MEMORY[0x1E695DF20];
          v76 = &v156;
          v77 = &v155;
          v78 = 1;
        }

        v113 = [v75 dictionaryWithObjects:v76 forKeys:v77 count:v78];
        *error = [v71 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v113];
      }

      v15 = UAFGetLogCategory(&UAFLogContextConfiguration);
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_53;
      }

      v55 = [validCopy objectForKeyedSubscript:@"AssetName"];
      *buf = 136315394;
      v137 = "+[UAFAssetConfiguration isValid:validUsageTypes:error:]";
      v138 = 2112;
      v139 = v55;
      v56 = "%s Asset %@ is invalid";
      goto LABEL_52;
    }

    v13 = [validCopy objectForKeyedSubscript:@"TrialMATargetingTemplate"];
    v14 = [UAFConfiguration isValidValue:v13 key:@"ValueExpansion" kind:objc_opt_class() required:1 error:error];

    if (!v14)
    {
      if (error)
      {
        v89 = MEMORY[0x1E696ABC0];
        if (*error)
        {
          v153[0] = *MEMORY[0x1E696A578];
          v90 = MEMORY[0x1E696AEC0];
          v91 = [validCopy objectForKeyedSubscript:@"AssetName"];
          v92 = [v90 stringWithFormat:@"Asset %@ is invalid", v91];
          v153[1] = *MEMORY[0x1E696AA08];
          v154[0] = v92;
          v154[1] = *error;
          v93 = MEMORY[0x1E695DF20];
          v94 = v154;
          v95 = v153;
          v96 = 2;
        }

        else
        {
          v151 = *MEMORY[0x1E696A578];
          v116 = MEMORY[0x1E696AEC0];
          v91 = [validCopy objectForKeyedSubscript:@"AssetName"];
          v92 = [v116 stringWithFormat:@"Asset %@ is invalid", v91];
          v152 = v92;
          v93 = MEMORY[0x1E695DF20];
          v94 = &v152;
          v95 = &v151;
          v96 = 1;
        }

        v117 = [v93 dictionaryWithObjects:v94 forKeys:v95 count:v96];
        *error = [v89 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v117];
      }

      v15 = UAFGetLogCategory(&UAFLogContextConfiguration);
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_53;
      }

      v55 = [validCopy objectForKeyedSubscript:@"AssetName"];
      *buf = 136315394;
      v137 = "+[UAFAssetConfiguration isValid:validUsageTypes:error:]";
      v138 = 2112;
      v139 = v55;
      v56 = "%s Asset %@ is invalid";
      goto LABEL_52;
    }
  }

  if (![UAFConfiguration isValidValue:validCopy key:@"Expansions" kind:objc_opt_class() required:0 error:error])
  {
    if (error)
    {
      v79 = MEMORY[0x1E696ABC0];
      if (*error)
      {
        v149[0] = *MEMORY[0x1E696A578];
        v80 = MEMORY[0x1E696AEC0];
        v81 = [validCopy objectForKeyedSubscript:@"AssetName"];
        v82 = [v80 stringWithFormat:@"Asset %@ is invalid", v81];
        v149[1] = *MEMORY[0x1E696AA08];
        v150[0] = v82;
        v150[1] = *error;
        v83 = MEMORY[0x1E695DF20];
        v84 = v150;
        v85 = v149;
        v86 = 2;
      }

      else
      {
        v147 = *MEMORY[0x1E696A578];
        v114 = MEMORY[0x1E696AEC0];
        v81 = [validCopy objectForKeyedSubscript:@"AssetName"];
        v82 = [v114 stringWithFormat:@"Asset %@ is invalid", v81];
        v148 = v82;
        v83 = MEMORY[0x1E695DF20];
        v84 = &v148;
        v85 = &v147;
        v86 = 1;
      }

      v115 = [v83 dictionaryWithObjects:v84 forKeys:v85 count:v86];
      *error = [v79 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v115];
    }

    v15 = UAFGetLogCategory(&UAFLogContextConfiguration);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_53;
    }

    v55 = [validCopy objectForKeyedSubscript:@"AssetName"];
    *buf = 136315394;
    v137 = "+[UAFAssetConfiguration isValid:validUsageTypes:error:]";
    v138 = 2112;
    v139 = v55;
    v56 = "%s Asset %@ is invalid";
LABEL_52:
    _os_log_impl(&dword_1BCF2C000, v15, OS_LOG_TYPE_DEFAULT, v56, buf, 0x16u);

LABEL_53:
    v9 = 0;
    goto LABEL_54;
  }

  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  v15 = [validCopy objectForKeyedSubscript:@"Expansions"];
  v16 = [v15 countByEnumeratingWithState:&v128 objects:v146 count:16];
  if (!v16)
  {
    v9 = 1;
    goto LABEL_54;
  }

  v17 = v16;
  v18 = *v129;
  while (2)
  {
    for (i = 0; i != v17; ++i)
    {
      if (*v129 != v18)
      {
        objc_enumerationMutation(v15);
      }

      v20 = *(*(&v128 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v127 = MEMORY[0x1E696ABC0];
          if (*error)
          {
            v144[0] = *MEMORY[0x1E696A578];
            v97 = MEMORY[0x1E696AEC0];
            v98 = [validCopy objectForKeyedSubscript:@"AssetName"];
            v99 = [v97 stringWithFormat:@"Asset %@ is not expected kind %@", v98, objc_opt_class()];
            v144[1] = *MEMORY[0x1E696AA08];
            v145[0] = v99;
            v145[1] = *error;
            v100 = MEMORY[0x1E695DF20];
            v101 = v145;
            v102 = v144;
            v103 = 2;
          }

          else
          {
            v142 = *MEMORY[0x1E696A578];
            v118 = MEMORY[0x1E696AEC0];
            v98 = [validCopy objectForKeyedSubscript:@"AssetName"];
            v99 = [v118 stringWithFormat:@"Asset %@ is not expected kind %@", v98, objc_opt_class()];
            v143 = v99;
            v100 = MEMORY[0x1E695DF20];
            v101 = &v143;
            v102 = &v142;
            v103 = 1;
          }

          v119 = [v100 dictionaryWithObjects:v101 forKeys:v102 count:v103];
          *error = [v127 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v119];
        }

        v120 = UAFGetLogCategory(&UAFLogContextConfiguration);
        if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
        {
          v121 = [validCopy objectForKeyedSubscript:@"AssetName"];
          v122 = objc_opt_class();
          *buf = 136315650;
          v137 = "+[UAFAssetConfiguration isValid:validUsageTypes:error:]";
          v138 = 2112;
          v139 = v121;
          v140 = 2112;
          v141 = v122;
          v123 = v122;
          _os_log_impl(&dword_1BCF2C000, v120, OS_LOG_TYPE_DEFAULT, "%s Asset %@ is not expected kind %@", buf, 0x20u);
        }

        goto LABEL_96;
      }

      if (![UAFAssetExpansion isValid:v20 validUsageTypes:typesCopy error:error])
      {
        if (error)
        {
          v104 = MEMORY[0x1E696ABC0];
          if (*error)
          {
            v134[0] = *MEMORY[0x1E696A578];
            v105 = MEMORY[0x1E696AEC0];
            v106 = [validCopy objectForKeyedSubscript:@"AssetName"];
            v106 = [v105 stringWithFormat:@"Asset %@ is invalid", v106];
            v134[1] = *MEMORY[0x1E696AA08];
            v135[0] = v106;
            v135[1] = *error;
            v108 = MEMORY[0x1E695DF20];
            v109 = v135;
            v110 = v134;
            v111 = 2;
          }

          else
          {
            v132 = *MEMORY[0x1E696A578];
            v124 = MEMORY[0x1E696AEC0];
            v106 = [validCopy objectForKeyedSubscript:@"AssetName"];
            v106 = [v124 stringWithFormat:@"Asset %@ is invalid", v106];
            v133 = v106;
            v108 = MEMORY[0x1E695DF20];
            v109 = &v133;
            v110 = &v132;
            v111 = 1;
          }

          v125 = [v108 dictionaryWithObjects:v109 forKeys:v110 count:v111];
          *error = [v104 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v125];
        }

        v120 = UAFGetLogCategory(&UAFLogContextConfiguration);
        if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
        {
          v126 = [validCopy objectForKeyedSubscript:@"AssetName"];
          *buf = 136315394;
          v137 = "+[UAFAssetConfiguration isValid:validUsageTypes:error:]";
          v138 = 2112;
          v139 = v126;
          _os_log_impl(&dword_1BCF2C000, v120, OS_LOG_TYPE_DEFAULT, "%s Asset %@ is invalid", buf, 0x16u);
        }

LABEL_96:

        goto LABEL_53;
      }
    }

    v17 = [v15 countByEnumeratingWithState:&v128 objects:v146 count:16];
    v9 = 1;
    if (v17)
    {
      continue;
    }

    break;
  }

LABEL_54:

LABEL_55:
  return v9;
}

- (UAFAssetConfiguration)initWithDictionary:(id)dictionary
{
  v25 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v23.receiver = self;
  v23.super_class = UAFAssetConfiguration;
  v5 = [(UAFAssetConfiguration *)&v23 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"AssetName"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"IgnoreOSCompatibility"];
    v5->_ignoreOSCompatibility = [v8 BOOLValue];
    v9 = objc_opt_new();
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = [dictionaryCopy objectForKeyedSubscript:{@"Expansions", 0}];
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        v14 = 0;
        do
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [[UAFAssetExpansion alloc] initWithDictionary:*(*(&v19 + 1) + 8 * v14)];
          [(NSArray *)v9 addObject:v15];

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v12);
    }

    expansions = v5->_expansions;
    v5->_expansions = v9;

    v17 = v5;
  }

  return v5;
}

- (id)getAutoAssetSpecifier:(id)specifier
{
  v18 = *MEMORY[0x1E69E9840];
  specifierCopy = specifier;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  expansions = [(UAFAssetConfiguration *)self expansions];
  v6 = [expansions countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(expansions);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) getAutoAssetSpecifier:specifierCopy];
        if (v10)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [expansions countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

@end