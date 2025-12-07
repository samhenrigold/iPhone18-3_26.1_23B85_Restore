@interface CPLTransportScopeMapping
- (BOOL)_addAllTransportScopesForScope:(id)scope scopes:(id)scopes allowsTentativeTransportScope:(BOOL)transportScope useStagingScopeIfNecessary:(BOOL)necessary error:(id *)error;
- (BOOL)_addTransportScopeForScope:(id)scope scopes:(id)scopes allowsTentativeTransportScope:(BOOL)transportScope useStagingScopeIfNecessary:(BOOL)necessary error:(id *)error;
- (BOOL)_checkTransportScopeForScopeIdentifier:(id)identifier hasConcreteScope:(BOOL *)scope error:(id *)error;
- (BOOL)addTransportScopeForScope:(id)scope scopes:(id)scopes allowsTentativeTransportScope:(BOOL)transportScope useStagingScopeIfNecessary:(BOOL)necessary error:(id *)error;
- (BOOL)addTransportScopeForScopeIdentifier:(id)identifier scopes:(id)scopes useStagingScopeIfNecessary:(BOOL)necessary error:(id *)error;
- (BOOL)hasConcreteScopeForScopeWithIdentifier:(id)identifier;
- (CPLTransportScopeMapping)initWithTranslator:(id)translator;
- (id)concreteScopeForScopeWithIdentifier:(id)identifier;
- (id)description;
- (void)addConcreteScope:(id)scope forScope:(id)forScope;
- (void)addTransportScope:(id)scope forScope:(id)forScope;
- (void)updateWithTransportScopeMapping:(id)mapping;
@end

@implementation CPLTransportScopeMapping

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<%@ %p for %@ (count: %lu)>", objc_opt_class(), self, self->_translator, -[NSMutableDictionary count](self->_concreteScopeMapping, "count")];

  return v2;
}

- (void)updateWithTransportScopeMapping:(id)mapping
{
  v17 = *MEMORY[0x1E69E9840];
  mappingCopy = mapping;
  v6 = mappingCopy;
  if (mappingCopy != self)
  {
    v12 = mappingCopy;
    if (self->_translator != mappingCopy->_translator)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v7 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          translator = self->_translator;
          v9 = v12->_translator;
          *buf = 138412546;
          v14 = translator;
          v15 = 2112;
          v16 = v9;
          _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_ERROR, "Trying to merge two incompatible mappings (%@ / %@)", buf, 0x16u);
        }
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLTransportScopeMapping.m"];
      [currentHandler handleFailureInMethod:a2 object:self file:v11 lineNumber:169 description:{@"Trying to merge two incompatible mappings (%@ / %@)", self->_translator, v12->_translator}];

      abort();
    }

    [(NSMutableDictionary *)self->_concreteScopeMapping addEntriesFromDictionary:mappingCopy->_concreteScopeMapping];
    mappingCopy = [(NSMutableDictionary *)self->_scopeMapping addEntriesFromDictionary:v12->_scopeMapping];
    v6 = v12;
  }

  MEMORY[0x1EEE66BB8](mappingCopy, v6);
}

- (BOOL)addTransportScopeForScope:(id)scope scopes:(id)scopes allowsTentativeTransportScope:(BOOL)transportScope useStagingScopeIfNecessary:(BOOL)necessary error:(id *)error
{
  necessaryCopy = necessary;
  transportScopeCopy = transportScope;
  scopeCopy = scope;
  scopesCopy = scopes;
  v17 = 0;
  scopeIdentifier = [scopeCopy scopeIdentifier];
  v15 = 0;
  if ([(CPLTransportScopeMapping *)self _checkTransportScopeForScopeIdentifier:scopeIdentifier hasConcreteScope:&v17 error:error])
  {
    v15 = (v17 & 1) != 0 || [(CPLTransportScopeMapping *)self _addAllTransportScopesForScope:scopeCopy scopes:scopesCopy allowsTentativeTransportScope:transportScopeCopy useStagingScopeIfNecessary:necessaryCopy error:error];
  }

  return v15;
}

- (BOOL)addTransportScopeForScopeIdentifier:(id)identifier scopes:(id)scopes useStagingScopeIfNecessary:(BOOL)necessary error:(id *)error
{
  necessaryCopy = necessary;
  identifierCopy = identifier;
  scopesCopy = scopes;
  v16 = 0;
  v12 = 0;
  if ([(CPLTransportScopeMapping *)self _checkTransportScopeForScopeIdentifier:identifierCopy hasConcreteScope:&v16 error:error])
  {
    if (v16)
    {
      v12 = 1;
    }

    else
    {
      v13 = [scopesCopy scopeWithIdentifier:identifierCopy];
      if (v13)
      {
        v12 = [(CPLTransportScopeMapping *)self _addAllTransportScopesForScope:v13 scopes:scopesCopy allowsTentativeTransportScope:0 useStagingScopeIfNecessary:necessaryCopy error:error];
      }

      else
      {
        null = [MEMORY[0x1E695DFB0] null];
        [(NSMutableDictionary *)self->_concreteScopeMapping setObject:null forKeyedSubscript:identifierCopy];

        if (error)
        {
          [CPLErrors cplErrorWithCode:32 description:@"Unknown scope %@", identifierCopy];
          *error = v12 = 0;
        }

        else
        {
          v12 = 0;
        }
      }
    }
  }

  return v12;
}

- (BOOL)_addAllTransportScopesForScope:(id)scope scopes:(id)scopes allowsTentativeTransportScope:(BOOL)transportScope useStagingScopeIfNecessary:(BOOL)necessary error:(id *)error
{
  necessaryCopy = necessary;
  transportScopeCopy = transportScope;
  scopeCopy = scope;
  scopesCopy = scopes;
  if ([(CPLTransportScopeMapping *)self _addTransportScopeForScope:scopeCopy scopes:scopesCopy allowsTentativeTransportScope:transportScopeCopy useStagingScopeIfNecessary:necessaryCopy error:error])
  {
    v14 = [scopesCopy sharingScopeForScope:scopeCopy];
    if (v14)
    {
      v15 = [(CPLTransportScopeMapping *)self _addTransportScopeForScope:v14 scopes:scopesCopy allowsTentativeTransportScope:transportScopeCopy useStagingScopeIfNecessary:necessaryCopy error:error];
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)_addTransportScopeForScope:(id)scope scopes:(id)scopes allowsTentativeTransportScope:(BOOL)transportScope useStagingScopeIfNecessary:(BOOL)necessary error:(id *)error
{
  necessaryCopy = necessary;
  transportScopeCopy = transportScope;
  v33 = *MEMORY[0x1E69E9840];
  scopeCopy = scope;
  scopesCopy = scopes;
  scopeIdentifier = [scopeCopy scopeIdentifier];
  if (necessaryCopy && +[CPLScopeChange supportsStagingScopeForScopeWithType:](CPLScopeChange, "supportsStagingScopeForScopeWithType:", [scopeCopy scopeType]))
  {
    v15 = [scopesCopy stagingScopeForScope:scopeCopy];
    v16 = v15;
    v17 = v15 != 0;
    if (v15)
    {
      v18 = v15;

      scopeCopy = v18;
    }
  }

  else
  {
    v17 = 0;
  }

  v19 = [scopesCopy transportScopeForScope:scopeCopy];
  if (!v19)
  {
    if (!transportScopeCopy)
    {
      goto LABEL_21;
    }

    p_translator = &self->_translator;
LABEL_14:
    v22 = [(CPLTransportScopeTranslator *)*p_translator tentativeConcreteScopeForScope:scopeCopy];
    if (!v22)
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  p_translator = &self->_translator;
  v21 = [(CPLTransportScopeTranslator *)self->_translator concreteScopeFromTransportScope:v19];
  v22 = v21;
  if (!v21 && transportScopeCopy)
  {
    goto LABEL_14;
  }

  if (!v21)
  {
LABEL_21:
    null = [MEMORY[0x1E695DFB0] null];
    [(NSMutableDictionary *)self->_concreteScopeMapping setObject:null forKeyedSubscript:scopeIdentifier];

    [(NSMutableDictionary *)self->_scopeMapping setObject:scopeCopy forKeyedSubscript:scopeIdentifier];
    if (error)
    {
      [CPLErrors invalidScopeErrorWithScopeIdentifier:scopeIdentifier];
      v22 = 0;
      *error = v24 = 0;
    }

    else
    {
      v22 = 0;
      v24 = 0;
    }

    goto LABEL_24;
  }

LABEL_15:
  [(NSMutableDictionary *)self->_concreteScopeMapping setObject:v22 forKeyedSubscript:scopeIdentifier];
  [(NSMutableDictionary *)self->_scopeMapping setObject:scopeCopy forKeyedSubscript:scopeIdentifier];
  self->_hasStagingScopes &= v17;
  if ((_CPLSilentLogging & 1) == 0)
  {
    if (__CPLTransportScopeOSLogDomain_onceToken != -1)
    {
      dispatch_once(&__CPLTransportScopeOSLogDomain_onceToken, &__block_literal_global_4468);
    }

    v23 = __CPLTransportScopeOSLogDomain_result;
    if (os_log_type_enabled(__CPLTransportScopeOSLogDomain_result, OS_LOG_TYPE_DEBUG))
    {
      v27 = 138412802;
      v28 = v22;
      v29 = 2112;
      v30 = scopeCopy;
      v31 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1DC05A000, v23, OS_LOG_TYPE_DEBUG, "Adding %@ for %@ to %@", &v27, 0x20u);
    }
  }

  v24 = 1;
LABEL_24:

  return v24;
}

- (BOOL)_checkTransportScopeForScopeIdentifier:(id)identifier hasConcreteScope:(BOOL *)scope error:(id *)error
{
  identifierCopy = identifier;
  v9 = [(NSMutableDictionary *)self->_concreteScopeMapping objectForKeyedSubscript:identifierCopy];
  null = [MEMORY[0x1E695DFB0] null];

  if (v9 == null)
  {
    if (error)
    {
      *error = [CPLErrors cplErrorWithCode:32 description:@"Scope %@ has an invalid transport scope", identifierCopy];
    }
  }

  else
  {
    *scope = v9 != 0;
  }

  return v9 != null;
}

- (BOOL)hasConcreteScopeForScopeWithIdentifier:(id)identifier
{
  v3 = [(NSMutableDictionary *)self->_concreteScopeMapping objectForKeyedSubscript:identifier];
  v4 = v3 != 0;

  return v4;
}

- (id)concreteScopeForScopeWithIdentifier:(id)identifier
{
  v3 = [(NSMutableDictionary *)self->_concreteScopeMapping objectForKeyedSubscript:identifier];
  null = [MEMORY[0x1E695DFB0] null];

  if (v3 == null)
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  return v5;
}

- (void)addConcreteScope:(id)scope forScope:(id)forScope
{
  forScopeCopy = forScope;
  scopeCopy = scope;
  scopeIdentifier = [forScopeCopy scopeIdentifier];
  [(NSMutableDictionary *)self->_concreteScopeMapping setObject:scopeCopy forKeyedSubscript:scopeIdentifier];

  [(NSMutableDictionary *)self->_scopeMapping setObject:forScopeCopy forKeyedSubscript:scopeIdentifier];
}

- (void)addTransportScope:(id)scope forScope:(id)forScope
{
  forScopeCopy = forScope;
  scopeCopy = scope;
  scopeIdentifier = [forScopeCopy scopeIdentifier];
  null = [(CPLTransportScopeTranslator *)self->_translator concreteScopeFromTransportScope:scopeCopy];

  if (!null)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  [(NSMutableDictionary *)self->_concreteScopeMapping setObject:null forKeyedSubscript:scopeIdentifier];
  [(NSMutableDictionary *)self->_scopeMapping setObject:forScopeCopy forKeyedSubscript:scopeIdentifier];
}

- (CPLTransportScopeMapping)initWithTranslator:(id)translator
{
  translatorCopy = translator;
  v13.receiver = self;
  v13.super_class = CPLTransportScopeMapping;
  v6 = [(CPLTransportScopeMapping *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_translator, translator);
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    scopeMapping = v7->_scopeMapping;
    v7->_scopeMapping = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    concreteScopeMapping = v7->_concreteScopeMapping;
    v7->_concreteScopeMapping = v10;
  }

  return v7;
}

@end