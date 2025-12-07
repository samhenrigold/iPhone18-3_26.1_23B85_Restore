@interface USOSerializedGraph
- (NSString)printedForm;
- (USOSerializedGraph)initWithCoder:(id)coder;
- (USOSerializedGraph)initWithNodes:(id)nodes edges:(id)edges;
- (USOSerializedGraph)initWithNodes:(id)nodes edges:(id)edges identifiers:(id)identifiers alignments:(id)alignments;
- (USOSerializedGraph)initWithUsoGraph:(const void *)graph withError:(id *)error;
- (const)getOrCreateEdgeName:(id)name withVocabManager:(shared_ptr<siri:(id *)manager :ontology::UsoVocabManager>)a4 withError:;
- (const)getOrCreateNodeName:(id)name withVocabManager:(shared_ptr<siri:(id *)manager :ontology::UsoVocabManager>)a4 withError:;
- (const)getOrCreateVerbName:(id)name withVocabManager:(shared_ptr<siri:(id *)manager :ontology::UsoVocabManager>)a4 withError:;
- (id)createSerializedNode:(const UsoGraphNode *)node withError:(id *)error;
- (id)getIdentifiersIfExists:(const UsoGraphNode *)exists nodeIndex:(unint64_t)index;
- (id)getUtteranceAlignmentsIfExists:(const UsoGraphNode *)exists nodeIndex:(unint64_t)index;
- (void)encodeWithCoder:(id)coder;
@end

@implementation USOSerializedGraph

- (NSString)printedForm
{
  if (!self->_printedForm)
  {
    siri::ontology::getSharedUsoVocabManager(self);
    v3 = siri::ontology::getSharedUsoVocabManager(void)::inst;
    v4 = unk_1EBE27900;
    if (unk_1EBE27900)
    {
      atomic_fetch_add_explicit((unk_1EBE27900 + 8), 1uLL, memory_order_relaxed);
      v18 = v4;
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v18 = 0;
    }

    v17[19] = v3;
    objc_msgSend_toCppUsoGraph_withError_(self);
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    std::ostringstream::basic_ostringstream[abi:ne200100](&v13);
    if (v19)
    {
      siri::ontology::UsoGraph::prettyPrint(v19, &v13);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "", 0);
    v5 = MEMORY[0x1E696AEC0];
    std::stringbuf::str();
    if (v12 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v7 = [v5 stringWithUTF8String:p_p];
    printedForm = self->_printedForm;
    self->_printedForm = v7;

    if (v12 < 0)
    {
      operator delete(__p);
    }

    v13 = *MEMORY[0x1E69E54E8];
    *(&v13 + *(v13 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    v14 = MEMORY[0x1E69E5548] + 16;
    if (v16 < 0)
    {
      operator delete(v15[7].__locale_);
    }

    v14 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v15);
    std::ostream::~ostream();
    MEMORY[0x1C68DE150](v17);
    std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100](&v19);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  v9 = self->_printedForm;

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  nodes = [(USOSerializedGraph *)self nodes];
  [coderCopy encodeObject:nodes forKey:@"nodes"];

  edges = [(USOSerializedGraph *)self edges];
  [coderCopy encodeObject:edges forKey:@"edges"];

  identifiers = [(USOSerializedGraph *)self identifiers];
  [coderCopy encodeObject:identifiers forKey:@"identifiers"];

  alignments = [(USOSerializedGraph *)self alignments];
  [coderCopy encodeObject:alignments forKey:@"alignments"];

  printedForm = [(USOSerializedGraph *)self printedForm];
  [coderCopy encodeObject:printedForm forKey:@"printedForm"];
}

- (USOSerializedGraph)initWithCoder:(id)coder
{
  coderCopy = coder;
  v30.receiver = self;
  v30.super_class = USOSerializedGraph;
  v5 = [(USOSerializedGraph *)&v30 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"nodes"];
    nodes = v5->_nodes;
    v5->_nodes = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"edges"];
    edges = v5->_edges;
    v5->_edges = v14;

    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"identifiers"];
    identifiers = v5->_identifiers;
    v5->_identifiers = v19;

    v21 = MEMORY[0x1E695DFD8];
    v22 = objc_opt_class();
    v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"alignments"];
    alignments = v5->_alignments;
    v5->_alignments = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"printedForm"];
    printedForm = v5->_printedForm;
    v5->_printedForm = v26;

    v28 = v5;
  }

  return v5;
}

- (const)getOrCreateEdgeName:(id)name withVocabManager:(shared_ptr<siri:(id *)manager :ontology::UsoVocabManager>)a4 withError:
{
  var1 = a4.var1;
  var0 = a4.var0;
  nameCopy = name;
  usoElementId = [nameCopy usoElementId];
  v9 = *var0;
  if (usoElementId)
  {
    EdgeName = siri::ontology::UsoVocabManager::getEdgeName(v9, usoElementId);
    if (v11)
    {
      CustomEdgeName = EdgeName;
    }

    else
    {
      if (var1)
      {
        v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid edge element id: %d", usoElementId];
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObject:v16 forKey:*MEMORY[0x1E696A578]];
        *var1 = [MEMORY[0x1E696ABC0] errorWithDomain:@"USOSerializedGraphErrorDomain" code:5 userInfo:v17];
      }

      CustomEdgeName = 0;
    }
  }

  else
  {
    edgeLabel = [nameCopy edgeLabel];
    uTF8String = [edgeLabel UTF8String];
    edgeLabel2 = [nameCopy edgeLabel];
    std::string::basic_string[abi:ne200100](__p, uTF8String, [edgeLabel2 lengthOfBytesUsingEncoding:4]);
    CustomEdgeName = siri::ontology::UsoVocabManager::createCustomEdgeName(v9, __p);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return CustomEdgeName;
}

- (const)getOrCreateVerbName:(id)name withVocabManager:(shared_ptr<siri:(id *)manager :ontology::UsoVocabManager>)a4 withError:
{
  var1 = a4.var1;
  var0 = a4.var0;
  nameCopy = name;
  usoVerbId = [nameCopy usoVerbId];
  intValue = [usoVerbId intValue];

  v10 = *var0;
  if (intValue)
  {
    VerbName = siri::ontology::UsoVocabManager::getVerbName(v10, intValue);
    if (v12)
    {
      CustomVerbName = VerbName;
    }

    else
    {
      if (var1)
      {
        v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid verb element id: %d", intValue];
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObject:v17 forKey:*MEMORY[0x1E696A578]];
        *var1 = [MEMORY[0x1E696ABC0] errorWithDomain:@"USOSerializedGraphErrorDomain" code:6 userInfo:v18];
      }

      CustomVerbName = 0;
    }
  }

  else
  {
    verbLabel = [nameCopy verbLabel];
    uTF8String = [verbLabel UTF8String];
    verbLabel2 = [nameCopy verbLabel];
    std::string::basic_string[abi:ne200100](__p, uTF8String, [verbLabel2 lengthOfBytesUsingEncoding:4]);
    CustomVerbName = siri::ontology::UsoVocabManager::createCustomVerbName(v10, __p);
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return CustomVerbName;
}

- (const)getOrCreateNodeName:(id)name withVocabManager:(shared_ptr<siri:(id *)manager :ontology::UsoVocabManager>)a4 withError:
{
  var1 = a4.var1;
  var0 = a4.var0;
  nameCopy = name;
  usoElementId = [nameCopy usoElementId];
  v9 = *var0;
  if (usoElementId)
  {
    v10 = siri::ontology::UsoVocabManager::getOntologyName<siri::ontology::OntologyNodeName>(v9, usoElementId);
    if (v11)
    {
      CustomEntityName = v10;
    }

    else
    {
      if (var1)
      {
        v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid node element id: %d", usoElementId];
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObject:v16 forKey:*MEMORY[0x1E696A578]];
        *var1 = [MEMORY[0x1E696ABC0] errorWithDomain:@"USOSerializedGraphErrorDomain" code:5 userInfo:v17];
      }

      CustomEntityName = 0;
    }
  }

  else
  {
    entityLabel = [nameCopy entityLabel];
    uTF8String = [entityLabel UTF8String];
    entityLabel2 = [nameCopy entityLabel];
    std::string::basic_string[abi:ne200100](__p, uTF8String, [entityLabel2 lengthOfBytesUsingEncoding:4]);
    CustomEntityName = siri::ontology::UsoVocabManager::createCustomEntityName(v9, __p);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return CustomEntityName;
}

- (USOSerializedGraph)initWithUsoGraph:(const void *)graph withError:(id *)error
{
  obj = objc_alloc_init(MEMORY[0x1E695DF70]);
  v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v42 = 0u;
  v43 = 0u;
  v44 = 1065353216;
  graphCopy = graph;
  siri::ontology::UsoGraph::getNodes(graph, &v40);
  v6 = v40;
  v7 = v41;
  if (v40 == v41)
  {
    goto LABEL_24;
  }

  v8 = 0;
  v33 = &v43;
  v9 = v40;
  v36 = v40;
  do
  {
    v10 = *v9;
    v11 = [(USOSerializedGraph *)self createSerializedNode:*v9 withError:error, graphCopy, v33];
    if (!v11)
    {
      goto LABEL_43;
    }

    [obj addObject:v11];
    v12 = [(USOSerializedGraph *)self getIdentifiersIfExists:v10 nodeIndex:v8];
    [v38 addObjectsFromArray:v12];

    v13 = [(USOSerializedGraph *)self getUtteranceAlignmentsIfExists:v10 nodeIndex:v8];
    if (v13)
    {
      [v35 addObject:v13];
    }

    v14 = *(v10 + 16);
    if (!*(&v42 + 1))
    {
      goto LABEL_22;
    }

    v15 = vcnt_s8(*(&v42 + 8));
    v15.i16[0] = vaddlv_u8(v15);
    if (v15.u32[0] > 1uLL)
    {
      v16 = *(v10 + 16);
      if (v14 >= *(&v42 + 1))
      {
        v16 = v14 % *(&v42 + 1);
      }
    }

    else
    {
      v16 = (*(&v42 + 1) - 1) & v14;
    }

    v17 = *(v42 + 8 * v16);
    if (!v17 || (v18 = *v17) == 0)
    {
LABEL_22:
      operator new();
    }

    while (1)
    {
      v19 = v18[1];
      if (v19 == v14)
      {
        break;
      }

      if (v15.u32[0] > 1uLL)
      {
        if (v19 >= *(&v42 + 1))
        {
          v19 %= *(&v42 + 1);
        }
      }

      else
      {
        v19 &= *(&v42 + 1) - 1;
      }

      if (v19 != v16)
      {
        goto LABEL_22;
      }

LABEL_21:
      v18 = *v18;
      if (!v18)
      {
        goto LABEL_22;
      }
    }

    if (v18[2] != v14)
    {
      goto LABEL_21;
    }

    ++v8;

    ++v9;
    v6 = v36;
  }

  while (v9 != v7);
LABEL_24:
  if (v6)
  {
    operator delete(v6);
  }

  siri::ontology::UsoGraph::getEdges(graphCopy, &v40);
  v6 = v40;
  v20 = v41;
  if (v40 == v41)
  {
LABEL_35:
    if (v6)
    {
      operator delete(v6);
    }

    objc_storeStrong(&self->_nodes, obj);
    objc_storeStrong(&self->_edges, v34);
    objc_storeStrong(&self->_identifiers, v38);
    objc_storeStrong(&self->_alignments, v35);
    std::ostringstream::basic_ostringstream[abi:ne200100](&v40);
    siri::ontology::UsoGraph::prettyPrint(graphCopy, &v40);
  }

  v21 = v40;
  while (1)
  {
    v22 = *v21;
    v23 = v42;
    v24 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::find<unsigned long long>(v42, *(&v42 + 1), **v21);
    if (!v24)
    {
      if (!error)
      {
        goto LABEL_43;
      }

      v30 = [MEMORY[0x1E696ABC0] errorWithDomain:@"USOSerializedGraphErrorDomain" code:1 userInfo:0];
      goto LABEL_42;
    }

    v25 = v24;
    v26 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::find<unsigned long long>(v23, *(&v23 + 1), v22[1]);
    if (!v26)
    {
      break;
    }

    v27 = [[USOSerializedGraphEdge alloc] initWithUsoElementId:*(v22 + 15) fromVertex:v25[3] toVertex:v26[3] enumeration:*(v22 + 4)];
    if (!*(v22 + 15))
    {
      v28 = v22 + 4;
      if (*(v22 + 55) < 0)
      {
        v28 = *v28;
      }

      v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{v28, graphCopy}];
      [(USOSerializedGraphEdge *)v27 setEdgeLabel:v29];
    }

    [v34 addObject:{v27, graphCopy}];

    if (++v21 == v20)
    {
      goto LABEL_35;
    }
  }

  if (!error)
  {
    goto LABEL_43;
  }

  v30 = [MEMORY[0x1E696ABC0] errorWithDomain:@"USOSerializedGraphErrorDomain" code:2 userInfo:0];
LABEL_42:
  *error = v30;
LABEL_43:
  if (v6)
  {
    operator delete(v6);
  }

  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&v42);

  return 0;
}

- (id)createSerializedNode:(const UsoGraphNode *)node withError:(id *)error
{
  v6 = objc_alloc_init(USOSerializedGraphNode);
  v7 = (*(node->var0 + 2))(node);
  if (v7 > 2)
  {
    switch(v7)
    {
      case 3:
        if (!v17)
        {
          __cxa_bad_cast();
        }

        v18 = v17;
        [(USOSerializedGraphNode *)v6 setUsoElementId:*(v17[3] + 36)];
        std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&__p, (v18 + 13));
        if (v36 == 1)
        {
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v19 = MEMORY[0x1E696AEC0];
          std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&__p, (v18 + 13));
          if ((v36 & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          v21 = [v19 stringWithUTF8String:p_p];
          [(USOSerializedGraphNode *)v6 setStringPayload:v21];

          if (v36 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        goto LABEL_45;
      case 4:
        if (!v32)
        {
          __cxa_bad_cast();
        }

        v33 = v32;
        [(USOSerializedGraphNode *)v6 setUsoElementId:*(v32[3] + 36)];
        if ((v33[14] & 1) == 0)
        {
          goto LABEL_45;
        }

        v13 = [MEMORY[0x1E696AD98] numberWithLongLong:v33[13]];
        [(USOSerializedGraphNode *)v6 setIntegerPayload:v13];
        goto LABEL_44;
      case 5:
        if (!v14)
        {
          __cxa_bad_cast();
        }

        v15 = v14;
        [(USOSerializedGraphNode *)v6 setUsoElementId:*(v14[3] + 36)];
        v16 = v15[3];
        if (*(v16 + 36))
        {
          goto LABEL_45;
        }

        v11 = MEMORY[0x1E696AEC0];
        v12 = (v16 + 8);
        if (*(v16 + 31) < 0)
        {
          v12 = *v12;
        }

LABEL_9:
        v13 = [v11 stringWithUTF8String:v12];
        [(USOSerializedGraphNode *)v6 setEntityLabel:v13];
LABEL_44:

LABEL_45:
        v23 = v6;
        goto LABEL_46;
    }
  }

  else
  {
    switch(v7)
    {
      case 0:
        goto LABEL_5;
      case 1:
        if (!v24)
        {
          __cxa_bad_cast();
        }

        v25 = v24;
        [(USOSerializedGraphNode *)v6 setUsoElementId:*(v24[3] + 36)];
        v26 = v25[3];
        if (!*(v26 + 36))
        {
          v27 = (v26 + 8);
          if (*(v26 + 31) < 0)
          {
            v27 = *v27;
          }

          v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v27];
          [(USOSerializedGraphNode *)v6 setEntityLabel:v28];
        }

        v29 = [MEMORY[0x1E696AD98] numberWithInt:*(v25[13] + 36)];
        [(USOSerializedGraphNode *)v6 setUsoVerbId:v29];

        v30 = v25[13];
        if (*(v30 + 36))
        {
          goto LABEL_45;
        }

        v31 = (v30 + 8);
        if (*(v30 + 31) < 0)
        {
          v31 = *v31;
        }

        v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v31];
        [(USOSerializedGraphNode *)v6 setVerbLabel:v13];
        goto LABEL_44;
      case 2:
LABEL_5:
        if (!v8)
        {
          __cxa_bad_cast();
        }

        v9 = v8;
        [(USOSerializedGraphNode *)v6 setUsoElementId:*(v8[3] + 36)];
        v10 = v9[3];
        if (*(v10 + 36))
        {
          goto LABEL_45;
        }

        v11 = MEMORY[0x1E696AEC0];
        v12 = (v10 + 8);
        if (*(v10 + 31) < 0)
        {
          v12 = *v12;
        }

        goto LABEL_9;
    }
  }

  if (error)
  {
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"Unknown UsoGraphNode" forKey:*MEMORY[0x1E696A578]];
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"USOSerializedGraphErrorDomain" code:4 userInfo:v22];
  }

  v23 = 0;
LABEL_46:

  return v23;
}

- (id)getUtteranceAlignmentsIfExists:(const UsoGraphNode *)exists nodeIndex:(unint64_t)index
{
  if (!v5 || (v6 = v5, v5[7] == v5[8]))
  {
    v15 = 0;
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    siri::ontology::UsoUtteranceAlignment::getSpans(&v17, *v6[7]);
    v8 = v17;
    v9 = v18;
    if (v17 != v18)
    {
      v10 = v17;
      do
      {
        v11 = *v10;
        if (*(*v10 + 20) == 1)
        {
          v12 = v11[4];
        }

        else
        {
          v12 = 0;
        }

        if (*(v11 + 28) == 1)
        {
          v13 = v11[6];
        }

        else
        {
          v13 = 0;
        }

        v14 = [[USOSerializedUtteranceSpan alloc] initWithStartIndex:**v10 endIndex:(*v10)[1] startUnicodeScalarIndex:(*v10)[2] endUnicodeScalarIndex:(*v10)[3] startMilliSeconds:v12 endMilliSeconds:v13];
        [v7 addObject:v14];

        ++v10;
      }

      while (v10 != v9);
    }

    if (v8)
    {
      operator delete(v8);
    }

    v15 = [[USOSerializedUtteranceAlignment alloc] initWithNodeIndex:index asrHypothesisIndex:**v6[7] spans:v7];
  }

  return v15;
}

- (id)getIdentifiersIfExists:(const UsoGraphNode *)exists nodeIndex:(unint64_t)index
{
  v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v5)
  {
    siri::ontology::UsoEntityNode::getIdentifiers(&v34, v5);
    __p = v34;
    v29 = v35;
    if (v34 != v35)
    {
      v6 = 0x1E696A000uLL;
      v7 = 0x1E696A000uLL;
      v8 = v34;
      do
      {
        v9 = *(v6 + 3776);
        v10 = *v8;
        if (SHIBYTE((*v8)->__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v32, v10->__r_.__value_.__l.__data_, v10->__r_.__value_.__l.__size_);
        }

        else
        {
          v11 = *&v10->__r_.__value_.__l.__data_;
          v32.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
          *&v32.__r_.__value_.__l.__data_ = v11;
        }

        if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v12 = &v32;
        }

        else
        {
          v12 = v32.__r_.__value_.__r.__words[0];
        }

        v13 = [v9 stringWithUTF8String:v12];
        if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v32.__r_.__value_.__l.__data_);
        }

        v14 = *(v6 + 3776);
        v15 = *v8;
        if (SHIBYTE((*v8)[1].__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v32, v15[1].__r_.__value_.__l.__data_, v15[1].__r_.__value_.__l.__size_);
        }

        else
        {
          v32 = v15[1];
        }

        if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = &v32;
        }

        else
        {
          v16 = v32.__r_.__value_.__r.__words[0];
        }

        v17 = [v14 stringWithUTF8String:v16];
        if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v32.__r_.__value_.__l.__data_);
        }

        std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&v32, &(*v8)[2]);
        if (v33 == 1)
        {
          if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v18 = &v32;
          }

          else
          {
            v18 = v32.__r_.__value_.__r.__words[0];
          }

          v19 = [*(v6 + 3776) stringWithUTF8String:v18];
          if ((v33 & 1) != 0 && SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v32.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v19 = 0;
        }

        v20 = *v8;
        if ((*v8)[3].__r_.__value_.__r.__words[2])
        {
          v21 = [*(v7 + 3480) numberWithDouble:*&v20[3].__r_.__value_.__l.__size_];
          v20 = *v8;
        }

        else
        {
          v21 = 0;
        }

        if ((v20[4].__r_.__value_.__r.__words[0] & 0x100000000) != 0)
        {
          v22 = [*(v7 + 3480) numberWithInt:?];
          v20 = *v8;
        }

        else
        {
          v22 = 0;
        }

        if ((v20[4].__r_.__value_.__l.__size_ & 0x100000000) != 0)
        {
          v23 = [*(v7 + 3480) numberWithUnsignedInt:?];
          v20 = *v8;
        }

        else
        {
          v23 = 0;
        }

        v24 = v6;
        if ((v20[4].__r_.__value_.__r.__words[2] & 0x100000000) != 0)
        {
          v25 = [*(v7 + 3480) numberWithUnsignedInt:?];
        }

        else
        {
          v25 = 0;
        }

        v26 = [[USOSerializedIdentifier alloc] initWithNodeIndex:index value:v13 appBundleId:v17 namespaceString:v19 probability:v21 sourceComponent:v22 groupIndex:v23 interpretationGroup:v25];
        [v31 addObject:v26];

        ++v8;
        v6 = v24;
        v7 = 0x1E696A000;
      }

      while (v8 != v29);
    }

    if (__p)
    {
      operator delete(__p);
    }
  }

  return v31;
}

- (USOSerializedGraph)initWithNodes:(id)nodes edges:(id)edges identifiers:(id)identifiers alignments:(id)alignments
{
  nodesCopy = nodes;
  edgesCopy = edges;
  identifiersCopy = identifiers;
  alignmentsCopy = alignments;
  v18.receiver = self;
  v18.super_class = USOSerializedGraph;
  v15 = [(USOSerializedGraph *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_nodes, nodes);
    objc_storeStrong(&v16->_edges, edges);
    objc_storeStrong(&v16->_identifiers, identifiers);
    objc_storeStrong(&v16->_alignments, alignments);
  }

  return v16;
}

- (USOSerializedGraph)initWithNodes:(id)nodes edges:(id)edges
{
  nodesCopy = nodes;
  edgesCopy = edges;
  v16.receiver = self;
  v16.super_class = USOSerializedGraph;
  v9 = [(USOSerializedGraph *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_nodes, nodes);
    objc_storeStrong(&v10->_edges, edges);
    array = [MEMORY[0x1E695DEC8] array];
    identifiers = v10->_identifiers;
    v10->_identifiers = array;

    array2 = [MEMORY[0x1E695DEC8] array];
    alignments = v10->_alignments;
    v10->_alignments = array2;
  }

  return v10;
}

@end