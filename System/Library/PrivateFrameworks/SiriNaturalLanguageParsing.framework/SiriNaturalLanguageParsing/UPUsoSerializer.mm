@interface UPUsoSerializer
+ (id)_convertBundleIdToEntity:(id)entity;
+ (id)_groupHigherLevelEntities:(id)entities;
+ (id)_intermediateNodeRepresentations:()vector<std:(std:()std:(std::reference_wrapper<const siri::ontology::UsoGraphEdge>>>> *)std :allocator<std::pair<std::reference_wrapper<siri::ontology::UsoGraphNode> :reference_wrapper<const)siri::ontology::UsoGraphEdge>> :pair<std::reference_wrapper<siri::ontology::UsoGraphNode>;
+ (id)_leafNodeFromGraphEdge:(const void *)edge andGraphNode:(const UsoGraphNode *)node;
+ (id)_leafNodeFromLabel:(id)label andGraphSemanticValueNode:(const void *)node;
+ (id)_leafNodeFromLabel:(id)label andGraphStringNode:(const void *)node;
- (UPUsoSerializer)init;
- (id).cxx_construct;
- (id)deserializeFromSerializedGraph:(id)graph;
- (id)serializeFromIntent:(id)intent andEntities:(id)entities forBundleId:(id)id;
- (void)_addPathForLabel:(id)label range:(_NSRange)range text:(id)text semanticValue:(id)value sharedEntityGraph:(id)graph toGraphNode:(UsoGraphNode *)node forGraph:(void *)forGraph;
- (void)_attachSharedEntity:(id)entity withCustomEntityEdge:(const void *)edge toGraphNode:(UsoGraphNode *)node forGraph:(void *)graph;
- (void)_insertHigherLevelEntities:(id)entities intoGraph:(void *)graph underTaskNode:(UsoGraphNode *)node;
- (void)_insertSimpleEntity:(id)entity intoGraph:(void *)graph underTaskNode:(UsoGraphNode *)node;
@end

@implementation UPUsoSerializer

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (void)_attachSharedEntity:(id)entity withCustomEntityEdge:(const void *)edge toGraphNode:(UsoGraphNode *)node forGraph:(void *)graph
{
  v33 = *MEMORY[0x277D85DE8];
  entityCopy = entity;
  v8 = objc_msgSend_convertUsoGraphFromObjCToCpp_(MEMORY[0x277D5DF00]);
  SharedUsoVocabManager = siri::ontology::getSharedUsoVocabManager(v8);
  v11 = *SharedUsoVocabManager;
  v10 = SharedUsoVocabManager[1];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    v28 = v11;
    v29 = v10;
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  else
  {
    v28 = v11;
    v29 = 0;
  }

  siri::ontology::UsoGraphProtoReader::fromProtobuf(&v27, &v28, v30);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v22);
  siri::ontology::UsoGraph::prettyPrint();
  v12 = SNLPOSLoggerForCategory(3);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    std::stringbuf::str();
    v13 = v21 >= 0 ? &__p : __p;
    *buf = 136642819;
    v32 = v13;
    _os_log_impl(&dword_22284A000, v12, OS_LOG_TYPE_DEBUG, "Attaching shared entity graph: %{sensitive}s", buf, 0xCu);
    if (v21 < 0)
    {
      operator delete(__p);
    }
  }

  siri::ontology::UsoGraph::getSuccessors(&__p, *(*(v27 + 11) + 8), *(v27 + 11));
  if (v20 - __p != 8)
  {
    v16 = SNLPOSLoggerForCategory(3);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    *buf = 0;
    v17 = "The shared entity graph does not have a single, unique entity below the root: skipping";
LABEL_20:
    _os_log_impl(&dword_22284A000, v16, OS_LOG_TYPE_ERROR, v17, buf, 2u);
    goto LABEL_21;
  }

  v14 = *__p;
  if ((*(**__p + 16))(*__p) != 2)
  {
    v16 = SNLPOSLoggerForCategory(3);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    *buf = 0;
    v17 = "The shared entity graph does not have an entity node";
    goto LABEL_20;
  }

  if (v15)
  {
    siri::ontology::UsoGraph::deepCopyToGraph(v27, v15, graph);
    siri::ontology::UsoGraphNode::setSuccessor();
    goto LABEL_22;
  }

  v16 = SNLPOSLoggerForCategory(3);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v17 = "The entity node could not be dynamically cast to a UsoEntityNode";
    goto LABEL_20;
  }

LABEL_21:

LABEL_22:
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  v22 = *MEMORY[0x277D82828];
  *(&v22 + *(v22 - 24)) = *(MEMORY[0x277D82828] + 24);
  v23 = MEMORY[0x277D82878] + 16;
  if (v25 < 0)
  {
    operator delete(v24[7].__locale_);
  }

  v23 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v24);
  std::ostream::~ostream();
  MEMORY[0x223DC4C10](&v26);
  std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100](&v27);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  v18 = v30;
  v30 = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }
}

- (void)_addPathForLabel:(id)label range:(_NSRange)range text:(id)text semanticValue:(id)value sharedEntityGraph:(id)graph toGraphNode:(UsoGraphNode *)node forGraph:(void *)forGraph
{
  labelCopy = label;
  textCopy = text;
  valueCopy = value;
  graphCopy = graph;
  std::string::basic_string[abi:ne200100]<0>(&__p, [labelCopy UTF8String]);
  siri::ontology::UsoVocabManager::createCustomEdgeName();
  if (v17 < 0)
  {
    operator delete(__p);
  }

  operator new();
}

- (void)_insertHigherLevelEntities:(id)entities intoGraph:(void *)graph underTaskNode:(UsoGraphNode *)node
{
  v52 = *MEMORY[0x277D85DE8];
  entitiesCopy = entities;
  [objc_opt_class() _groupHigherLevelEntities:entitiesCopy];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  obj = v46 = 0u;
  v20 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v20)
  {
    v21 = *v46;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v46 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v45 + 1) + 8 * i);
        v5 = [obj objectForKey:?];
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v26 = v5;
        v25 = [v26 countByEnumeratingWithState:&v41 objects:v50 count:16];
        if (v25)
        {
          v24 = *v42;
          do
          {
            for (j = 0; j != v25; ++j)
            {
              if (*v42 != v24)
              {
                objc_enumerationMutation(v26);
              }

              v29 = [v26 objectForKey:*(*(&v41 + 1) + 8 * j)];
              v40 = 19;
              strcpy(__p, "unknownCustomEntity");
              siri::ontology::UsoVocabManager::createCustomEntityName();
              if (v40 < 0)
              {
                operator delete(*__p);
              }

              v6 = v27;
              std::string::basic_string[abi:ne200100]<0>(&v37, [v27 UTF8String]);
              siri::ontology::UsoVocabManager::createCustomEdgeName();
              if (v38 < 0)
              {
                operator delete(v37);
              }

              EntityNode = siri::ontology::UsoGraph::createEntityNode();
              siri::ontology::UsoGraphNode::setSuccessor();
              v35 = 0u;
              v36 = 0u;
              v33 = 0u;
              v34 = 0u;
              v30 = v29;
              v8 = [v30 countByEnumeratingWithState:&v33 objects:v49 count:16];
              if (v8)
              {
                v9 = *v34;
                do
                {
                  for (k = 0; k != v8; ++k)
                  {
                    if (*v34 != v9)
                    {
                      objc_enumerationMutation(v30);
                    }

                    v11 = *(*(&v33 + 1) + 8 * k);
                    higherLevelChildLabel = [v11 higherLevelChildLabel];
                    range = [v11 range];
                    v15 = v14;
                    text = [v11 text];
                    semanticValue = [v11 semanticValue];
                    sharedEntityGraph = [v11 sharedEntityGraph];
                    [(UPUsoSerializer *)self _addPathForLabel:higherLevelChildLabel range:range text:v15 semanticValue:text sharedEntityGraph:semanticValue toGraphNode:sharedEntityGraph forGraph:EntityNode, graph, entitiesCopy];
                  }

                  v8 = [v30 countByEnumeratingWithState:&v33 objects:v49 count:16];
                }

                while (v8);
              }
            }

            v25 = [v26 countByEnumeratingWithState:&v41 objects:v50 count:16];
          }

          while (v25);
        }
      }

      v20 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
    }

    while (v20);
  }
}

- (void)_insertSimpleEntity:(id)entity intoGraph:(void *)graph underTaskNode:(UsoGraphNode *)node
{
  entityCopy = entity;
  label = [entityCopy label];
  range = [entityCopy range];
  v11 = v10;
  text = [entityCopy text];
  semanticValue = [entityCopy semanticValue];
  sharedEntityGraph = [entityCopy sharedEntityGraph];
  [(UPUsoSerializer *)self _addPathForLabel:label range:range text:v11 semanticValue:text sharedEntityGraph:semanticValue toGraphNode:sharedEntityGraph forGraph:node, graph];
}

- (id)deserializeFromSerializedGraph:(id)graph
{
  graphCopy = graph;
  cntrl = self->_usoVocabManager.__cntrl_;
  ptr = self->_usoVocabManager.__ptr_;
  v41 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  v39 = 0;
  if (graphCopy)
  {
    objc_msgSend_toCppUsoGraph_withError_(graphCopy);
    v6 = v39;
    cntrl = v41;
    if (!v41)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = 0;
  v42 = 0;
  if (cntrl)
  {
LABEL_5:
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }

LABEL_6:
  v29 = v6;
  siri::ontology::oname::graph::ontology_init::Argument_task(cntrl);
  siri::ontology::UsoGraph::getSuccessors();
  if (v38 == v37)
  {
    std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
  }

  if (!v7)
  {
    __cxa_bad_cast();
  }

  v8 = v7;
  var1 = v7[4].var1;
  v10 = (var1 + 8);
  if (*(var1 + 31) < 0)
  {
    v10 = *v10;
  }

  v27 = [MEMORY[0x277CCACA8] stringWithCString:v10 encoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
  siri::ontology::UsoGraph::getSuccessorsWithEdges(&v35, v8->var1, v8);
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = v35;
  v12 = v36;
  if (v35 != v36)
  {
    do
    {
      v14 = *v13;
      (*(**v13 + 48))(__p, *v13);
      if ((*(*v14 + 16))(v14) == 2)
      {
        v15 = v34;
        if ((v34 & 0x80u) != 0)
        {
          v15 = __p[1];
        }

        if (v15 == 19)
        {
          v16 = __p;
          if ((v34 & 0x80u) != 0)
          {
            v16 = __p[0];
          }

          v17 = *v16;
          v18 = v16[1];
          v19 = *(v16 + 11);
          if (v17 == 0x436E776F6E6B6E75 && v18 == 0x746E456D6F747375 && v19 == 0x797469746E456D6FLL)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::reference_wrapper<siri::ontology::UsoGraphNode>,std::reference_wrapper<siri::ontology::UsoGraphEdge const>>>>(1uLL);
          }
        }
      }

      v22 = [UPUsoSerializer _leafNodeFromGraphEdge:v13[1] andGraphNode:*v13, v27];
      [v11 addObject:v22];

      if (v34 < 0)
      {
        operator delete(__p[0]);
      }

      v13 += 2;
    }

    while (v13 != v12);
  }

  v23 = [UPResultRootNode alloc];
  v31 = 0;
  v32 = 0;
  v30 = 0;
  v24 = [UPUsoSerializer _intermediateNodeRepresentations:&v30, v27];
  v25 = [(UPResultRootNode *)v23 initWithLabel:v28 intermediateNodes:v24 directLeafNodes:v11];

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }

  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }

  std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100](&v42);

  return v25;
}

- (id)serializeFromIntent:(id)intent andEntities:(id)entities forBundleId:(id)id
{
  v16 = *MEMORY[0x277D85DE8];
  intentCopy = intent;
  entitiesCopy = entities;
  idCopy = id;
  *(&v15.__r_.__value_.__s + 23) = 19;
  strcpy(&v15, "unknownCustomEntity");
  if ([idCopy length])
  {
    v9 = [UPUsoSerializer _convertBundleIdToEntity:idCopy];
    MEMORY[0x223DC46D0](&v15, [v9 UTF8String]);
  }

  v10 = intentCopy;
  std::string::basic_string[abi:ne200100]<0>(__p, [intentCopy UTF8String]);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, v15.__r_.__value_.__l.__data_, v15.__r_.__value_.__l.__size_);
  }

  else
  {
    v13 = v15;
  }

  siri::ontology::UsoVocabManager::createCustomEntityName();
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  operator new();
}

- (UPUsoSerializer)init
{
  v8.receiver = self;
  v8.super_class = UPUsoSerializer;
  v2 = [(UPUsoSerializer *)&v8 init];
  SharedUsoVocabManager = siri::ontology::getSharedUsoVocabManager(v2);
  v5 = *SharedUsoVocabManager;
  v4 = SharedUsoVocabManager[1];
  if (v4)
  {
    atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  }

  cntrl = v2->_usoVocabManager.__cntrl_;
  v2->_usoVocabManager.__ptr_ = v5;
  v2->_usoVocabManager.__cntrl_ = v4;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }

  return v2;
}

+ (id)_leafNodeFromLabel:(id)label andGraphSemanticValueNode:(const void *)node
{
  labelCopy = label;
  siri::ontology::oname::graph::ontology_init::Argument_stringValue(labelCopy);
  siri::ontology::UsoGraph::getSuccessors();
  if (v16 == v15)
  {
    std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
  }

  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&__p, (*v15 + 104));
  if ((v14 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v5 = MEMORY[0x277CCACA8];
  v6 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  v7 = __p.__r_.__value_.__r.__words[0];
  defaultCStringEncoding = [MEMORY[0x277CCACA8] defaultCStringEncoding];
  if (v6 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = v7;
  }

  v10 = [v5 stringWithCString:p_p encoding:defaultCStringEncoding];
  v11 = [[UPResultLeafNode alloc] initWithLabel:labelCopy andText:0 andSemanticValue:v10];

  if (v14 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }

  return v11;
}

+ (id)_leafNodeFromLabel:(id)label andGraphStringNode:(const void *)node
{
  labelCopy = label;
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&__p, (node + 104));
  if ((v15 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v6 = MEMORY[0x277CCACA8];
  v7 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  v8 = __p.__r_.__value_.__r.__words[0];
  defaultCStringEncoding = [MEMORY[0x277CCACA8] defaultCStringEncoding];
  if (v7 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = v8;
  }

  v11 = [v6 stringWithCString:p_p encoding:defaultCStringEncoding];
  v12 = [[UPResultLeafNode alloc] initWithLabel:labelCopy andText:v11 andSemanticValue:0];

  if (v15 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v12;
}

+ (id)_convertBundleIdToEntity:(id)entity
{
  v3 = [entity stringByReplacingOccurrencesOfString:@"." withString:@"_"];

  return v3;
}

+ (id)_groupHigherLevelEntities:(id)entities
{
  v27 = *MEMORY[0x277D85DE8];
  entitiesCopy = entities;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = entitiesCopy;
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v6 = *v23;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        higherLevelParentLabel = [v8 higherLevelParentLabel];
        v10 = [dictionary objectForKey:higherLevelParentLabel];
        v11 = v10 == 0;

        if (v11)
        {
          dictionary2 = [MEMORY[0x277CBEB38] dictionary];
          [dictionary setObject:dictionary2 forKey:higherLevelParentLabel];
        }

        v13 = [dictionary objectForKey:higherLevelParentLabel];
        groupId = [v8 groupId];
        if (groupId)
        {
          [v8 groupId];
        }

        else
        {
          [MEMORY[0x277CCABB0] numberWithLong:0x7FFFFFFFFFFFFFFFLL];
        }
        v15 = ;

        v16 = [v13 objectForKey:v15];
        v17 = v16 == 0;

        if (v17)
        {
          array = [MEMORY[0x277CBEB18] array];
          [v13 setObject:array forKey:v15];
        }

        v19 = [v13 objectForKey:v15];
        [v19 addObject:v8];
      }

      v5 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v5);
  }

  return dictionary;
}

+ (id)_intermediateNodeRepresentations:()vector<std:(std:()std:(std::reference_wrapper<const siri::ontology::UsoGraphEdge>>>> *)std :allocator<std::pair<std::reference_wrapper<siri::ontology::UsoGraphNode> :reference_wrapper<const)siri::ontology::UsoGraphEdge>> :pair<std::reference_wrapper<siri::ontology::UsoGraphNode>
{
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  var0 = std->var0;
  var1 = std->var1;
  if (std->var0 != var1)
  {
    do
    {
      v7 = var0[1];
      v8 = v7 + 32;
      if (v7[55] < 0)
      {
        v8 = *v8;
      }

      v9 = *var0;
      v10 = [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
      if (!v11)
      {
        __cxa_bad_cast();
      }

      v12 = v11;
      array = [MEMORY[0x277CBEB18] array];
      siri::ontology::UsoGraph::getSuccessorsWithEdges(&v19, v12[1], v12);
      v15 = v19;
      v14 = v20;
      if (v19 != v20)
      {
        do
        {
          v16 = [UPUsoSerializer _leafNodeFromGraphEdge:v15[1] andGraphNode:*v15];
          [array addObject:v16];

          v15 += 2;
        }

        while (v15 != v14);
        v15 = v19;
      }

      if (v15)
      {
        v20 = v15;
        operator delete(v15);
      }

      v17 = [[UPResultIntermediateNode alloc] initWithLabel:v10 andLeafNodes:array];
      [v4 addObject:v17];

      var0 += 2;
    }

    while (var0 != var1);
  }

  return v4;
}

+ (id)_leafNodeFromGraphEdge:(const void *)edge andGraphNode:(const UsoGraphNode *)node
{
  v5 = MEMORY[0x277CCACA8];
  v6 = edge + 32;
  v7 = *(edge + 4);
  v8 = *(edge + 55);
  defaultCStringEncoding = [MEMORY[0x277CCACA8] defaultCStringEncoding];
  if (v8 >= 0)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  v11 = [v5 stringWithCString:v10 encoding:defaultCStringEncoding];
  if ((*(node->var0 + 2))(node) == 3)
  {
    [UPUsoSerializer _leafNodeFromLabel:v11 andGraphStringNode:node];
  }

  else
  {
    [UPUsoSerializer _leafNodeFromLabel:v11 andGraphSemanticValueNode:node];
  }
  v12 = ;

  return v12;
}

@end