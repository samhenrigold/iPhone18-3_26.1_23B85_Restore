@interface UAFAssetSetSubscription
- (BOOL)isEqual:(id)equal;
- (BOOL)isValid:(id)valid error:(id *)error;
- (UAFAssetSetSubscription)initWithCoder:(id)coder;
- (UAFAssetSetSubscription)initWithName:(id)name assetSets:(id)sets usageAliases:(id)aliases expires:(id)expires;
- (id)description;
- (id)expirationAsString;
- (id)propertiesAsDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UAFAssetSetSubscription

- (UAFAssetSetSubscription)initWithName:(id)name assetSets:(id)sets usageAliases:(id)aliases expires:(id)expires
{
  nameCopy = name;
  setsCopy = sets;
  aliasesCopy = aliases;
  expiresCopy = expires;
  v19.receiver = self;
  v19.super_class = UAFAssetSetSubscription;
  v15 = [(UAFAssetSetSubscription *)&v19 init];
  p_isa = &v15->super.isa;
  if (v15 && setsCopy | aliasesCopy)
  {
    objc_storeStrong(&v15->_name, name);
    if (setsCopy)
    {
      objc_storeStrong(p_isa + 2, sets);
    }

    if (aliasesCopy)
    {
      objc_storeStrong(p_isa + 3, aliases);
    }

    objc_storeStrong(p_isa + 4, expires);
    v17 = p_isa;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"name"];
  [coderCopy encodeObject:self->_assetSets forKey:@"assetSets"];
  [coderCopy encodeObject:self->_usageAliases forKey:@"usageAliases"];
  [coderCopy encodeObject:self->_expiration forKey:@"expiration"];
}

- (UAFAssetSetSubscription)initWithCoder:(id)coder
{
  v23 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"assetSets"];

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"usageAliases"];

    if (!(v9 | v13))
    {
      v14 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        uTF8String = [(NSString *)self->_name UTF8String];
        *buf = 136315394;
        v20 = "[UAFAssetSetSubscription initWithCoder:]";
        v21 = 2080;
        v22 = uTF8String;
        _os_log_error_impl(&dword_1BCF2C000, v14, OS_LOG_TYPE_ERROR, "%s Decoding of the subscription %s failed: both asset sets and usage aliases are nil", buf, 0x16u);
      }
    }

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expiration"];
    self = [(UAFAssetSetSubscription *)self init:v5 assetSets:v9 usageAliases:v13 expires:v15];

    selfCopy = self;
  }

  else
  {
    v9 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v20 = "[UAFAssetSetSubscription initWithCoder:]";
      _os_log_error_impl(&dword_1BCF2C000, v9, OS_LOG_TYPE_ERROR, "%s Decoding of the asset set subscription name failed", buf, 0xCu);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)propertiesAsDictionary
{
  v13[4] = *MEMORY[0x1E69E9840];
  expirationAsString = [(UAFAssetSetSubscription *)self expirationAsString];
  v12[0] = @"name";
  name = [(UAFAssetSetSubscription *)self name];
  if (name)
  {
    name2 = [(UAFAssetSetSubscription *)self name];
  }

  else
  {
    name2 = &stru_1F3B6B510;
  }

  v13[0] = name2;
  v12[1] = @"assetSets";
  assetSets = [(UAFAssetSetSubscription *)self assetSets];
  if (assetSets)
  {
    assetSets2 = [(UAFAssetSetSubscription *)self assetSets];
  }

  else
  {
    assetSets2 = MEMORY[0x1E695E0F8];
  }

  v13[1] = assetSets2;
  v12[2] = @"usageAliases";
  usageAliases = [(UAFAssetSetSubscription *)self usageAliases];
  if (usageAliases)
  {
    usageAliases2 = [(UAFAssetSetSubscription *)self usageAliases];
  }

  else
  {
    usageAliases2 = MEMORY[0x1E695E0F8];
  }

  v12[3] = @"expiration";
  v13[2] = usageAliases2;
  v13[3] = expirationAsString;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:4];
  if (usageAliases)
  {
  }

  if (assetSets)
  {
  }

  if (name)
  {
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_8;
  }

  if (self == equalCopy)
  {
    v12 = 1;
    goto LABEL_49;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_8:
    v12 = 0;
    goto LABEL_49;
  }

  v10 = v9;
  name = [(UAFAssetSetSubscription *)v10 name];
  if (name || ([(UAFAssetSetSubscription *)self name], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    name2 = [(UAFAssetSetSubscription *)v10 name];
    name3 = [(UAFAssetSetSubscription *)self name];
    if (([name2 isEqualToString:name3] & 1) == 0)
    {

      v12 = 0;
      goto LABEL_46;
    }

    v41 = 1;
  }

  else
  {
    v41 = 0;
  }

  assetSets = [(UAFAssetSetSubscription *)v10 assetSets];
  if (!assetSets)
  {
    assetSets2 = [(UAFAssetSetSubscription *)self assetSets];
    if (!assetSets2)
    {
      assetSets2 = 0;
      v39 = 0;
      goto LABEL_22;
    }
  }

  v14 = v3;
  assetSets3 = [(UAFAssetSetSubscription *)v10 assetSets];
  assetSets4 = [(UAFAssetSetSubscription *)self assetSets];
  if ([assetSets3 isEqual:assetSets4])
  {
    v34 = assetSets3;
    v39 = 1;
    v3 = v14;
    v6 = assetSets4;
LABEL_22:
    usageAliases = [(UAFAssetSetSubscription *)v10 usageAliases];
    if (usageAliases || ([(UAFAssetSetSubscription *)self usageAliases], (v30 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v37 = name;
      v18 = assetSets;
      v19 = name3;
      v20 = name2;
      v21 = v6;
      usageAliases2 = [(UAFAssetSetSubscription *)v10 usageAliases];
      usageAliases3 = [(UAFAssetSetSubscription *)self usageAliases];
      v36 = usageAliases2;
      if (![usageAliases2 isEqual:usageAliases3])
      {
        v12 = 0;
        v6 = v21;
        name2 = v20;
        name3 = v19;
        assetSets = v18;
        name = v37;
LABEL_37:

LABEL_38:
        if (!usageAliases)
        {
        }

        if (v39)
        {
        }

        if (!assetSets)
        {
        }

        if (!v41)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      }

      v33 = usageAliases;
      v32 = 1;
      v6 = v21;
      name2 = v20;
      name3 = v19;
      assetSets = v18;
      name = v37;
    }

    else
    {
      v33 = 0;
      v30 = 0;
      v32 = 0;
    }

    expiration = [(UAFAssetSetSubscription *)v10 expiration];
    if (expiration || ([(UAFAssetSetSubscription *)self expiration], (v28 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v31 = v6;
      v38 = v3;
      v24 = [(UAFAssetSetSubscription *)v10 expiration:v28];
      expiration2 = [(UAFAssetSetSubscription *)self expiration];
      v12 = [v24 isEqual:expiration2];

      if (expiration)
      {

        v6 = v31;
        if (!v32)
        {
          v3 = v38;
          usageAliases = v33;
          goto LABEL_38;
        }

        v3 = v38;
        usageAliases = v33;
        goto LABEL_37;
      }

      v3 = v38;
      v6 = v31;
      v26 = v29;
    }

    else
    {
      v26 = 0;
      v12 = 1;
    }

    usageAliases = v33;
    if ((v32 & 1) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  if (assetSets)
  {
  }

  else
  {
  }

  v12 = 0;
  v3 = v14;
  if (v41)
  {
LABEL_45:
  }

LABEL_46:
  if (!name)
  {
  }

LABEL_49:
  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  v4 = [(NSDictionary *)self->_assetSets hash]^ v3;
  v5 = [(NSDictionary *)self->_usageAliases hash];
  return v4 ^ v5 ^ [(NSDate *)self->_expiration hash];
}

- (id)expirationAsString
{
  expiration = [(UAFAssetSetSubscription *)self expiration];

  if (expiration)
  {
    v4 = objc_opt_new();
    localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
    [v4 setTimeZone:localTimeZone];

    expiration2 = [(UAFAssetSetSubscription *)self expiration];
    v7 = [v4 stringFromDate:expiration2];
  }

  else
  {
    v7 = @"never";
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  name = [(UAFAssetSetSubscription *)self name];
  assetSets = [(UAFAssetSetSubscription *)self assetSets];
  usageAliases = [(UAFAssetSetSubscription *)self usageAliases];
  expirationAsString = [(UAFAssetSetSubscription *)self expirationAsString];
  v8 = [v3 stringWithFormat:@"Subscription '%@' with assetSets %@ and usageAliases %@ expires: %@", name, assetSets, usageAliases, expirationAsString];

  return v8;
}

- (BOOL)isValid:(id)valid error:(id *)error
{
  v133 = *MEMORY[0x1E69E9840];
  validCopy = valid;
  if (!validCopy)
  {
    validCopy = +[UAFConfigurationManager defaultManager];
  }

  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  obj = [(UAFAssetSetSubscription *)self assetSets];
  v7 = [obj countByEnumeratingWithState:&v102 objects:v132 count:16];
  selfCopy = self;
  if (v7)
  {
    v8 = v7;
    v9 = *v103;
    v91 = validCopy;
    v86 = *v103;
    while (2)
    {
      v10 = 0;
      v87 = v8;
      do
      {
        if (*v103 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v102 + 1) + 8 * v10);
        v12 = [v91 getAssetSet:v11];
        if (!v12)
        {
          validCopy = v91;
          if (error)
          {
            v69 = MEMORY[0x1E696ABC0];
            if (*error)
            {
              v130[0] = *MEMORY[0x1E696A578];
              v70 = MEMORY[0x1E696AEC0];
              name = [(UAFAssetSetSubscription *)self name];
              v72 = [v70 stringWithFormat:@"Subscription %@ references unknown asset set %@", name, v11];
              v130[1] = *MEMORY[0x1E696AA08];
              v73 = *error;
              v131[0] = v72;
              v131[1] = v73;
              v74 = MEMORY[0x1E695DF20];
              v75 = v131;
              v76 = v130;
              v77 = 2;
            }

            else
            {
              v128 = *MEMORY[0x1E696A578];
              v84 = MEMORY[0x1E696AEC0];
              name = [(UAFAssetSetSubscription *)self name];
              v72 = [v84 stringWithFormat:@"Subscription %@ references unknown asset set %@", name, v11];
              v129 = v72;
              v74 = MEMORY[0x1E695DF20];
              v75 = &v129;
              v76 = &v128;
              v77 = 1;
            }

            v85 = [v74 dictionaryWithObjects:v75 forKeys:v76 count:v77];
            *error = [v69 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v85];

            self = selfCopy;
          }

          v13 = UAFGetLogCategory(&UAFLogContextConfiguration);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            name2 = [(UAFAssetSetSubscription *)self name];
            *buf = 136315650;
            v116 = "[UAFAssetSetSubscription isValid:error:]";
            v117 = 2112;
            v118 = name2;
            v119 = 2112;
            v120 = v11;
            v81 = "%s Subscription %@ references unknown asset set %@";
LABEL_66:
            _os_log_error_impl(&dword_1BCF2C000, v13, OS_LOG_TYPE_ERROR, v81, buf, 0x20u);
          }

          goto LABEL_41;
        }

        v13 = v12;
        errorCopy = error;
        v100 = 0u;
        v101 = 0u;
        v98 = 0u;
        v99 = 0u;
        assetSets = [(UAFAssetSetSubscription *)self assetSets];
        v90 = v11;
        v16 = [assetSets objectForKeyedSubscript:v11];

        v17 = [v16 countByEnumeratingWithState:&v98 objects:v127 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v99;
          while (2)
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v99 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v98 + 1) + 8 * i);
              usageTypes = [v13 usageTypes];
              v23 = [usageTypes containsObject:v21];

              if ((v23 & 1) == 0)
              {
                validCopy = v91;
                if (errorCopy)
                {
                  v38 = errorCopy;
                  v89 = MEMORY[0x1E696ABC0];
                  if (*errorCopy)
                  {
                    v125[0] = *MEMORY[0x1E696A578];
                    v39 = MEMORY[0x1E696AEC0];
                    name3 = [(UAFAssetSetSubscription *)selfCopy name];
                    v41 = [v39 stringWithFormat:@"Subscription %@ references unknown usage type %@ in asset set %@", name3, v21, v90];
                    v125[1] = *MEMORY[0x1E696AA08];
                    v42 = *errorCopy;
                    v126[0] = v41;
                    v126[1] = v42;
                    v43 = MEMORY[0x1E695DF20];
                    v44 = v126;
                    v45 = v125;
                    v46 = 2;
                  }

                  else
                  {
                    v123 = *MEMORY[0x1E696A578];
                    v47 = MEMORY[0x1E696AEC0];
                    name3 = [(UAFAssetSetSubscription *)selfCopy name];
                    v41 = [v47 stringWithFormat:@"Subscription %@ references unknown usage type %@ in asset set %@", name3, v21, v90];
                    v124 = v41;
                    v43 = MEMORY[0x1E695DF20];
                    v44 = &v124;
                    v45 = &v123;
                    v46 = 1;
                  }

                  v48 = [v43 dictionaryWithObjects:v44 forKeys:v45 count:v46];
                  *v38 = [v89 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v48];
                }

                v49 = UAFGetLogCategory(&UAFLogContextConfiguration);
                if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
                {
                  name4 = [(UAFAssetSetSubscription *)selfCopy name];
                  *buf = 136315906;
                  v116 = "[UAFAssetSetSubscription isValid:error:]";
                  v117 = 2112;
                  v118 = name4;
                  v119 = 2112;
                  v120 = v21;
                  v121 = 2112;
                  v122 = v90;
                  v68 = "%s Subscription %@ references unknown usage type %@ in asset set %@";
LABEL_50:
                  _os_log_error_impl(&dword_1BCF2C000, v49, OS_LOG_TYPE_ERROR, v68, buf, 0x2Au);
                }

                goto LABEL_40;
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v98 objects:v127 count:16];
            if (v18)
            {
              continue;
            }

            break;
          }
        }

        ++v10;
        v9 = v86;
        self = selfCopy;
        error = errorCopy;
      }

      while (v10 != v87);
      v8 = [obj countByEnumeratingWithState:&v102 objects:v132 count:16];
      validCopy = v91;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  obj = [(UAFAssetSetSubscription *)self usageAliases];
  v24 = [obj countByEnumeratingWithState:&v94 objects:v114 count:16];
  if (v24)
  {
    v25 = v24;
    errorCopy2 = error;
    v26 = *v95;
LABEL_21:
    v27 = 0;
    while (1)
    {
      if (*v95 != v26)
      {
        objc_enumerationMutation(obj);
      }

      v28 = *(*(&v94 + 1) + 8 * v27);
      v29 = [validCopy getUsageAlias:v28 includeDeprecatedValues:0];
      if (!v29)
      {
        if (errorCopy2)
        {
          v51 = MEMORY[0x1E696ABC0];
          if (*errorCopy2)
          {
            v112[0] = *MEMORY[0x1E696A578];
            v52 = MEMORY[0x1E696AEC0];
            name5 = [(UAFAssetSetSubscription *)self name];
            v54 = [v52 stringWithFormat:@"Subscription %@ references unknown usage alias %@", name5, v28];
            v112[1] = *MEMORY[0x1E696AA08];
            v113[0] = v54;
            v113[1] = *errorCopy2;
            v55 = MEMORY[0x1E695DF20];
            v56 = v113;
            v57 = v112;
            v58 = 2;
          }

          else
          {
            v110 = *MEMORY[0x1E696A578];
            v78 = MEMORY[0x1E696AEC0];
            name5 = [(UAFAssetSetSubscription *)self name];
            v54 = [v78 stringWithFormat:@"Subscription %@ references unknown usage alias %@", name5, v28];
            v111 = v54;
            v55 = MEMORY[0x1E695DF20];
            v56 = &v111;
            v57 = &v110;
            v58 = 1;
          }

          v79 = [v55 dictionaryWithObjects:v56 forKeys:v57 count:v58];
          *errorCopy2 = [v51 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v79];

          self = selfCopy;
        }

        v13 = UAFGetLogCategory(&UAFLogContextConfiguration);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          name2 = [(UAFAssetSetSubscription *)self name];
          *buf = 136315650;
          v116 = "[UAFAssetSetSubscription isValid:error:]";
          v117 = 2112;
          v118 = name2;
          v119 = 2112;
          v120 = v28;
          v81 = "%s Subscription %@ references unknown usage alias %@";
          goto LABEL_66;
        }

        goto LABEL_41;
      }

      v13 = v29;
      usageAliases = [(UAFAssetSetSubscription *)self usageAliases];
      v16 = [usageAliases objectForKeyedSubscript:v28];

      values = [v13 values];
      v32 = [values objectForKeyedSubscript:v16];

      if (!v32)
      {
        v33 = UAFGetLogCategory(&UAFLogContextClient);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v116 = "[UAFAssetSetSubscription isValid:error:]";
          v117 = 2114;
          v118 = v28;
          v119 = 2114;
          v120 = v16;
          _os_log_impl(&dword_1BCF2C000, v33, OS_LOG_TYPE_DEFAULT, "%s Loading deprecated values to process subscription for usage alias %{public}@ with value %{public}@", buf, 0x20u);
        }

        v34 = [validCopy getUsageAlias:v28 includeDeprecatedValues:1];

        v13 = v34;
      }

      values2 = [v13 values];
      v36 = [values2 objectForKeyedSubscript:v16];

      if (!v36)
      {
        break;
      }

      ++v27;
      self = selfCopy;
      if (v25 == v27)
      {
        v25 = [obj countByEnumeratingWithState:&v94 objects:v114 count:16];
        v37 = 1;
        if (v25)
        {
          goto LABEL_21;
        }

        goto LABEL_42;
      }
    }

    if (errorCopy2)
    {
      v59 = MEMORY[0x1E696ABC0];
      if (*errorCopy2)
      {
        v108[0] = *MEMORY[0x1E696A578];
        v60 = MEMORY[0x1E696AEC0];
        name6 = [(UAFAssetSetSubscription *)selfCopy name];
        v62 = [v60 stringWithFormat:@"Subscription %@ references unknown value %@ in usage type %@", name6, v16, v28];
        v108[1] = *MEMORY[0x1E696AA08];
        v109[0] = v62;
        v109[1] = *errorCopy2;
        v63 = MEMORY[0x1E695DF20];
        v64 = v109;
        v65 = v108;
        v66 = 2;
      }

      else
      {
        v106 = *MEMORY[0x1E696A578];
        v82 = MEMORY[0x1E696AEC0];
        name6 = [(UAFAssetSetSubscription *)selfCopy name];
        v62 = [v82 stringWithFormat:@"Subscription %@ references unknown value %@ in usage type %@", name6, v16, v28];
        v107 = v62;
        v63 = MEMORY[0x1E695DF20];
        v64 = &v107;
        v65 = &v106;
        v66 = 1;
      }

      v83 = [v63 dictionaryWithObjects:v64 forKeys:v65 count:v66];
      *errorCopy2 = [v59 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v83];
    }

    v49 = UAFGetLogCategory(&UAFLogContextConfiguration);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      name4 = [(UAFAssetSetSubscription *)selfCopy name];
      *buf = 136315906;
      v116 = "[UAFAssetSetSubscription isValid:error:]";
      v117 = 2112;
      v118 = name4;
      v119 = 2112;
      v120 = v16;
      v121 = 2112;
      v122 = v28;
      v68 = "%s Subscription %@ references unknown value %@ in usage type %@";
      goto LABEL_50;
    }

LABEL_40:

LABEL_41:
    v37 = 0;
  }

  else
  {
    v37 = 1;
  }

LABEL_42:

  return v37;
}

@end