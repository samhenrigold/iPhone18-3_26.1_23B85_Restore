@interface NSSQLJoinIntermediate
+ (id)createJoinIntermediatesForKeypath:(id *)keypath startEntity:(void *)entity startAlias:(void *)alias forScope:(void *)scope inStatementIntermediate:(void *)intermediate inContext:;
- (id)description;
- (id)generateSQLStringInContext:(id)context;
- (void)dealloc;
- (void)initForRelationship:(void *)relationship sourceAlias:(void *)alias destinationAlias:(void *)destinationAlias correlationAlias:(char)correlationAlias direct:(uint64_t)direct inScope:;
@end

@implementation NSSQLJoinIntermediate

- (void)dealloc
{
  self->_relationship = 0;

  self->_sourceAlias = 0;
  self->_destinationAlias = 0;

  self->_correlationAlias = 0;
  v3.receiver = self;
  v3.super_class = NSSQLJoinIntermediate;
  [(NSSQLJoinIntermediate *)&v3 dealloc];
}

- (void)initForRelationship:(void *)relationship sourceAlias:(void *)alias destinationAlias:(void *)destinationAlias correlationAlias:(char)correlationAlias direct:(uint64_t)direct inScope:
{
  if (!self)
  {
    return 0;
  }

  v15.receiver = self;
  v15.super_class = NSSQLJoinIntermediate;
  v12 = objc_msgSendSuper2(&v15, sel_initWithScope_, direct);
  v13 = v12;
  if (v12)
  {
    v12[2] = a2;
    v12[3] = relationship;
    v13[4] = alias;
    v13[5] = destinationAlias;
    *(v13 + 56) = correlationAlias;
  }

  return v13;
}

+ (id)createJoinIntermediatesForKeypath:(id *)keypath startEntity:(void *)entity startAlias:(void *)alias forScope:(void *)scope inStatementIntermediate:(void *)intermediate inContext:
{
  objc_opt_self();
  isUpdateScoped = [alias isUpdateScoped];
  if ((isUpdateScoped & 1) == 0 && (!scope || !scope[14]))
  {
    goto LABEL_69;
  }

  if ([alias isOrScoped])
  {
    isTargetColumnsScoped = 1;
  }

  else
  {
    isTargetColumnsScoped = [alias isTargetColumnsScoped];
  }

  v42 = isUpdateScoped;
  if ([alias isOrScoped])
  {
    isTargetColumnsScoped2 = [alias isTargetColumnsScoped];
  }

  else
  {
    isTargetColumnsScoped2 = 1;
  }

  v14 = [a2 count];
  v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a2, "count")}];
  disambiguationKeypath = [alias disambiguationKeypath];
  disambiguatingEntity = [alias disambiguatingEntity];
  if (disambiguatingEntity && [disambiguationKeypath count] <= v14)
  {
    if ([disambiguationKeypath count])
    {
      aliasCopy = alias;
      v17 = 0;
      do
      {
        v18 = [objc_msgSend(disambiguationKeypath objectAtIndex:{v17), "isEqual:", objc_msgSend(a2, "objectAtIndex:", v17)}];
        if ((v18 & 1) == 0)
        {
          break;
        }

        ++v17;
      }

      while (v17 < [disambiguationKeypath count]);
      v52 = v18 ^ 1;
      alias = aliasCopy;
      if (!v14)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v52 = 0;
      if (!v14)
      {
LABEL_64:

        v39 = 0;
        goto LABEL_70;
      }
    }
  }

  else
  {
    v52 = 1;
    if (!v14)
    {
      goto LABEL_64;
    }
  }

  aliasCopy2 = alias;
  v19 = 0;
  v51 = 0;
  if (scope)
  {
    v20 = isTargetColumnsScoped2;
  }

  else
  {
    v20 = 1;
  }

  v43 = v20;
  scopeCopy = scope;
  v45 = a2;
  while (1)
  {
    v21 = [a2 objectAtIndex:v19];
    v22 = keypath ? [keypath[5] objectForKey:v21] : 0;
    v23 = v22 ? 1 : v52;
    if ((v23 & 1) == 0)
    {
      break;
    }

LABEL_32:
    propertyType = [v22 propertyType];
    if (!v22)
    {
      goto LABEL_66;
    }

    v25 = propertyType;
    [v15 addObject:v21];
    if ((v25 - 7) > 2)
    {
      goto LABEL_60;
    }

    if (v25 == 9)
    {
      v30 = v14 == 1 && [intermediate objectForKey:@"subqueryCollectionContext"] == 0;
      objc_opt_self();
      if (v51)
      {
        v31 = v51[4];
      }

      else
      {
        v31 = 0;
      }

      v32 = [objc_msgSend(intermediate objectForKey:{@"aliasGenerator", "generateTableAlias"}];
      intermediateCopy = intermediate;
      v34 = [objc_msgSend(intermediate objectForKey:{@"aliasGenerator", "generateTableAlias"}];
      v35 = [NSSQLJoinIntermediate alloc];
      v36 = v34;
      intermediate = intermediateCopy;
      v27 = [(NSSQLJoinIntermediate *)v35 initForRelationship:v22 sourceAlias:v31 destinationAlias:v36 correlationAlias:v32 direct:v30 inScope:aliasCopy2];
      scope = scopeCopy;
      a2 = v45;
    }

    else
    {
      if (v25 != 8)
      {
        if (v14 == 1 && ![intermediate objectForKey:@"subqueryCollectionContext"])
        {
          goto LABEL_60;
        }

        v26 = [(NSSQLFetchIntermediate *)scope finalJoinForKeypathWithComponents:v15];
        if (v26)
        {
          v27 = v26;
          v28 = v26;
LABEL_52:
          keypath = [v27[2] destinationEntity];
          if (isTargetColumnsScoped)
          {
            v27[6] = 2;
            if ((v43 & 1) == 0)
            {
              v37 = scope[8];
              if (v37)
              {
                *(v37 + 48) = 1;
              }
            }
          }

          if (entity && !v27[3])
          {
            entityCopy = entity;

            v27[3] = entity;
          }

          v51 = v27;
          goto LABEL_60;
        }
      }

      objc_opt_self();
      if (v51)
      {
        v29 = v51[4];
      }

      else
      {
        v29 = 0;
      }

      v27 = -[NSSQLJoinIntermediate initForRelationship:sourceAlias:destinationAlias:correlationAlias:direct:inScope:]([NSSQLJoinIntermediate alloc], v22, v29, [objc_msgSend(intermediate objectForKey:{@"aliasGenerator", "generateTableAlias"}], 0, 0, aliasCopy2);
    }

    [(NSSQLFetchIntermediate *)scope addJoinIntermediate:v27 atKeypathWithComponents:v15];
    if (v27)
    {
      goto LABEL_52;
    }

LABEL_60:
    ++v19;
    if (!--v14)
    {
      goto LABEL_66;
    }
  }

  if (disambiguatingEntity)
  {
    v22 = [*(disambiguatingEntity + 40) objectForKey:v21];
    goto LABEL_32;
  }

  [0 propertyType];
LABEL_66:

  v39 = v51;
  v40 = v42;
  if (!v51)
  {
    v40 = 0;
  }

  if (v40 == 1)
  {
LABEL_69:
    [intermediate setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, keypath), 0), @"NSUnderlyingException"}];
    return 0;
  }

LABEL_70:

  return v39;
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [-[NSSQLProperty entity](self->_relationship "entity")], self->_sourceAlias, objc_msgSend(-[NSSQLRelationship destinationEntity](self->_relationship, "destinationEntity"), "name"), self->_destinationAlias, self->_correlationAlias);
  objc_autoreleasePoolPop(v3);

  return v4;
}

- (id)generateSQLStringInContext:(id)context
{
  if ([context objectForKey:@"NSUnderlyingException"])
  {
    return 0;
  }

  relationship = self->_relationship;
  if (relationship && relationship->super._propertyType == 7)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
    sourceAlias = self->_sourceAlias;
    if (!sourceAlias)
    {
      sourceAlias = [(NSSQLIntermediate *)self governingAlias];
    }

    type = self->_type;
    if (type == 1)
    {
      v8 = @"INNER ";
    }

    else
    {
      if (type != 2)
      {
        goto LABEL_23;
      }

      v8 = @"LEFT OUTER ";
    }

    [v4 appendString:v8];
LABEL_23:
    [v4 appendString:@"JOIN "];
    [v4 appendString:{objc_msgSend(-[NSSQLRelationship destinationEntity](self->_relationship, "destinationEntity"), "tableName")}];
    [v4 appendString:@" "];
    [v4 appendString:self->_destinationAlias];
    [v4 appendString:@" ON "];
    [v4 appendString:sourceAlias];
    [v4 appendString:@"."];
    [v4 appendString:{-[NSSQLProperty columnName](self->_relationship, "columnName")}];
    [v4 appendString:@" = "];
    [v4 appendString:self->_destinationAlias];
    [v4 appendString:@"."];
    sourceEntity = [(NSSQLRelationship *)self->_relationship sourceEntity];
    if (!sourceEntity)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  isToMany = [(NSSQLProperty *)relationship isToMany];
  v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
  governingAlias = self->_sourceAlias;
  if (isToMany)
  {
    if (!governingAlias)
    {
      governingAlias = [(NSSQLIntermediate *)self governingAlias];
    }

    v11 = self->_type;
    if (v11 == 1)
    {
      v12 = @"INNER ";
    }

    else
    {
      if (v11 != 2)
      {
LABEL_27:
        [v4 appendString:@"JOIN "];
        [v4 appendString:{objc_msgSend(-[NSSQLRelationship destinationEntity](self->_relationship, "destinationEntity"), "tableName")}];
        [v4 appendString:@" "];
        [v4 appendString:self->_destinationAlias];
        [v4 appendString:@" ON "];
        [v4 appendString:governingAlias];
        [v4 appendString:@"."];
        sourceEntity2 = [(NSSQLRelationship *)self->_relationship sourceEntity];
        if (sourceEntity2)
        {
          sourceEntity2 = sourceEntity2[16];
        }

        [v4 appendString:{objc_msgSend(sourceEntity2, "columnName")}];
        [v4 appendString:@" = "];
        [v4 appendString:self->_destinationAlias];
        [v4 appendString:@"."];
        v17 = self->_relationship;
        if (v17)
        {
          inverse = v17->_inverse;
        }

        else
        {
          inverse = 0;
        }

        sourceEntity = [(NSSQLRelationship *)inverse foreignKey];
        goto LABEL_44;
      }

      v12 = @"LEFT OUTER ";
    }

    [v4 appendString:v12];
    goto LABEL_27;
  }

  if (!governingAlias)
  {
    governingAlias = [(NSSQLIntermediate *)self governingAlias];
  }

  v13 = self->_type;
  if (v13 == 1)
  {
    v14 = @"INNER ";
  }

  else
  {
    if (v13 != 2)
    {
      goto LABEL_34;
    }

    v14 = @"LEFT OUTER ";
  }

  [v4 appendString:v14];
LABEL_34:
  [v4 appendString:@"JOIN "];
  [v4 appendString:{-[NSSQLRelationship correlationTableName](self->_relationship, "correlationTableName")}];
  [v4 appendString:@" "];
  [v4 appendString:self->_correlationAlias];
  [v4 appendString:@" ON "];
  [v4 appendString:governingAlias];
  [v4 appendString:@"."];
  sourceEntity3 = [(NSSQLRelationship *)self->_relationship sourceEntity];
  if (sourceEntity3)
  {
    sourceEntity3 = sourceEntity3[16];
  }

  [v4 appendString:{objc_msgSend(sourceEntity3, "columnName")}];
  [v4 appendString:@" = "];
  [v4 appendString:self->_correlationAlias];
  [v4 appendString:@"."];
  [v4 appendString:{-[NSSQLProperty columnName](self->_relationship, "columnName")}];
  if (!self->_direct)
  {
    v20 = self->_type;
    if (v20 == 1)
    {
      v21 = @" INNER";
    }

    else
    {
      if (v20 != 2)
      {
        goto LABEL_42;
      }

      v21 = @" LEFT OUTER";
    }

    [v4 appendString:v21];
LABEL_42:
    [v4 appendString:@" JOIN "];
    [v4 appendString:{objc_msgSend(-[NSSQLRelationship destinationEntity](self->_relationship, "destinationEntity"), "tableName")}];
    [v4 appendString:@" "];
    [v4 appendString:self->_destinationAlias];
    [v4 appendString:@" ON "];
    [v4 appendString:self->_correlationAlias];
    [v4 appendString:@"."];
    [v4 appendString:-[NSSQLManyToMany inverseColumnName](self->_relationship)];
    [v4 appendString:@" = "];
    [v4 appendString:self->_destinationAlias];
    [v4 appendString:@"."];
    sourceEntity = [(NSSQLRelationship *)self->_relationship destinationEntity];
    if (!sourceEntity)
    {
LABEL_44:
      [v4 appendString:{objc_msgSend(sourceEntity, "columnName")}];
      return v4;
    }

LABEL_43:
    sourceEntity = sourceEntity[16];
    goto LABEL_44;
  }

  return v4;
}

@end