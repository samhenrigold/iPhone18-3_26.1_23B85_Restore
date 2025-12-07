@interface KGElementFilter
+ (id)any;
- (BOOL)isEqual:(id)equal;
- (BOOL)matchesElement:(id)element;
- (BOOL)matchesLabels:(id)labels;
- (BOOL)matchesProperties:(id)properties;
- (KGElementFilter)initWithRequiredLabels:(id)labels optionalLabels:(id)optionalLabels properties:(id)properties;
- (unint64_t)hash;
@end

@implementation KGElementFilter

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_requiredLabels hash]+ 2654435769;
  v4 = ([(NSArray *)self->_optionalLabels hash]+ (v3 << 6) + (v3 >> 2) + 2654435769u) ^ v3;
  return ([(NSDictionary *)self->_properties hash]+ (v4 << 6) + (v4 >> 2) + 2654435769u) ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else if ([(KGElementFilter *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    v6 = [(NSArray *)self->_requiredLabels isEqualToArray:v5->_requiredLabels]&& [(NSArray *)self->_optionalLabels isEqualToArray:v5->_optionalLabels]&& [(NSDictionary *)self->_properties isEqualToDictionary:v5->_properties];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)matchesProperties:(id)properties
{
  v53 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  if (![(NSDictionary *)self->_properties count])
  {
    v6 = 1;
    goto LABEL_68;
  }

  v5 = [(NSDictionary *)self->_properties count];
  if (v5 > [propertiesCopy count])
  {
    v6 = 0;
    goto LABEL_68;
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v7 = self->_properties;
  v8 = [(NSDictionary *)v7 countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v48;
    do
    {
      v11 = 0;
      do
      {
        if (*v48 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v47 + 1) + 8 * v11);
        v13 = [(NSDictionary *)self->_properties objectForKeyedSubscript:v12, v38];
        v14 = [propertiesCopy objectForKeyedSubscript:v12];
        kgPropertyValue = [v14 kgPropertyValue];

        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v16 = [v13 containsObject:kgPropertyValue];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18 = v13;
            value = [v18 value];
            comparator = [v18 comparator];
            if (comparator > 4)
            {
              if (comparator <= 6)
              {
                if (comparator == 5)
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    goto LABEL_64;
                  }

                  v33 = [kgPropertyValue compare:value];

                  if (v33 != 1)
                  {
                    goto LABEL_65;
                  }
                }

                else
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    goto LABEL_64;
                  }

                  v22 = [kgPropertyValue compare:value];

                  if (v22 == -1)
                  {
                    goto LABEL_65;
                  }
                }

                goto LABEL_59;
              }

              if (comparator == 7)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  goto LABEL_64;
                }

                v34 = [kgPropertyValue compare:value options:1];

                if (v34)
                {
                  goto LABEL_65;
                }

                goto LABEL_59;
              }

              if (comparator == 8)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  goto LABEL_64;
                }

                v39 = v18;
                v40 = v7;
                v24 = kgPropertyValue;
                v25 = value;
                v26 = v24;
                v38 = v25;
                v27 = v25;
                v42 = 0u;
                v43 = 0u;
                v44 = 0u;
                v45 = 0u;
                obj = v26;
                v28 = [obj countByEnumeratingWithState:&v42 objects:v51 count:16];
                if (v28)
                {
                  v29 = v28;
                  v30 = *v43;
LABEL_38:
                  v31 = 0;
                  while (1)
                  {
                    if (*v43 != v30)
                    {
                      objc_enumerationMutation(obj);
                    }

                    if (![*(*(&v42 + 1) + 8 * v31) compare:v27 options:{1, v38}])
                    {
                      break;
                    }

                    if (v29 == ++v31)
                    {
                      v29 = [obj countByEnumeratingWithState:&v42 objects:v51 count:16];
                      if (v29)
                      {
                        goto LABEL_38;
                      }

                      kgPropertyValue = obj;

                      value = v27;
                      v18 = v39;
                      v7 = v40;
                      goto LABEL_64;
                    }
                  }
                }

                v18 = v39;
                v7 = v40;
                value = v38;
              }
            }

            else
            {
              if (comparator > 2)
              {
                if (comparator == 3)
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    goto LABEL_64;
                  }

                  v32 = [kgPropertyValue compare:value];

                  if (v32 != -1)
                  {
                    goto LABEL_65;
                  }
                }

                else
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    goto LABEL_64;
                  }

                  v23 = [kgPropertyValue compare:value];

                  if (v23 == 1)
                  {
                    goto LABEL_65;
                  }
                }

                goto LABEL_59;
              }

              switch(comparator)
              {
                case 1:
                  v35 = [value isEqual:kgPropertyValue];

                  if ((v35 & 1) == 0)
                  {
                    goto LABEL_65;
                  }

                  goto LABEL_59;
                case 2:
                  v21 = [value isEqual:kgPropertyValue];

                  if (v21)
                  {
                    goto LABEL_65;
                  }

                  goto LABEL_59;
                case 0:
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
                  {
                    *buf = 0;
                    _os_log_fault_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "KGBinaryPredicate is KGPredicateComparator_None", buf, 2u);
                  }

LABEL_64:

LABEL_65:
LABEL_66:
                  v6 = 0;
                  goto LABEL_67;
              }
            }

LABEL_59:
            goto LABEL_14;
          }

          v16 = [kgPropertyValue isEqual:v13];
        }

        v17 = v16;

        if ((v17 & 1) == 0)
        {
          goto LABEL_66;
        }

LABEL_14:
        ++v11;
      }

      while (v11 != v9);
      v36 = [(NSDictionary *)v7 countByEnumeratingWithState:&v47 objects:v52 count:16];
      v9 = v36;
    }

    while (v36);
  }

  v6 = 1;
LABEL_67:

LABEL_68:
  return v6;
}

- (BOOL)matchesLabels:(id)labels
{
  labelsCopy = labels;
  v5 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:labelsCopy];
  v11 = 0;
  if (!-[NSArray count](self->_requiredLabels, "count") || (v6 = -[NSArray count](self->_requiredLabels, "count"), v6 <= [labelsCopy count]) && (v7 = objc_msgSend(objc_alloc(MEMORY[0x277CBEB98]), "initWithArray:", self->_requiredLabels), v8 = objc_msgSend(v7, "isSubsetOfSet:", v5), v7, v8))
  {
    if (!-[NSArray count](self->_optionalLabels, "count") || (v9 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:self->_optionalLabels], v10 = objc_msgSend(v5, "intersectsSet:", v9), v9, v10))
    {
      v11 = 1;
    }
  }

  return v11;
}

- (BOOL)matchesElement:(id)element
{
  elementCopy = element;
  labels = [elementCopy labels];
  allObjects = [labels allObjects];
  v7 = [(KGElementFilter *)self matchesLabels:allObjects];

  if (v7)
  {
    properties = [elementCopy properties];
    v9 = [(KGElementFilter *)self matchesProperties:properties];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (KGElementFilter)initWithRequiredLabels:(id)labels optionalLabels:(id)optionalLabels properties:(id)properties
{
  labelsCopy = labels;
  optionalLabelsCopy = optionalLabels;
  propertiesCopy = properties;
  v15.receiver = self;
  v15.super_class = KGElementFilter;
  v12 = [(KGElementFilter *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_requiredLabels, labels);
    objc_storeStrong(&v13->_optionalLabels, optionalLabels);
    objc_storeStrong(&v13->_properties, properties);
  }

  return v13;
}

+ (id)any
{
  v2 = [self alloc];
  v3 = [v2 initWithRequiredLabels:MEMORY[0x277CBEBF8] optionalLabels:MEMORY[0x277CBEBF8] properties:MEMORY[0x277CBEC10]];

  return v3;
}

@end