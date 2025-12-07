@interface KGDatabase
+ (BOOL)copyFromURL:(id)l toURL:(id)rL error:(id *)error;
+ (BOOL)destroyAtURL:(id)l error:(id *)error;
+ (BOOL)emptyDatabaseExistsAtURL:(id)l error:(id *)error;
+ (BOOL)migrateFromURL:(id)l toURL:(id)rL error:(id *)error;
+ (void)deleteClosedDatabaseFilesAtStoreURL:(id)l;
+ (void)initialize;
- (AttributeValueCursor)edgeAttributeValueCursorWithIdentifiers:(id)identifiers;
- (AttributeValueCursor)edgeAttributeValueCursorWithIdentifiers:(id)identifiers propertyName:(id)name;
- (AttributeValueCursor)nodeAttributeValueCursorWithIdentifiers:(id)identifiers;
- (AttributeValueCursor)nodeAttributeValueCursorWithIdentifiers:(id)identifiers propertyName:(id)name;
- (AttributeValueCursor)tombstoneEdgeAttributeValueCursorWithIdentifiers:(id)identifiers;
- (AttributeValueCursor)tombstoneNodeAttributeValueCursorWithIdentifiers:(id)identifiers;
- (BOOL)addEdges:(id)edges error:(id *)error;
- (BOOL)addNodes:(id)nodes error:(id *)error;
- (BOOL)appendNodeIdentifiersOfEdgesWithIdentifiers:(id)identifiers sourceNodeIdentifiers:(id)nodeIdentifiers targetNodeIdentifiers:(id)targetNodeIdentifiers error:(id *)error;
- (BOOL)beginTransactionWithError:(id *)error;
- (BOOL)commitTransactionWithError:(id *)error;
- (BOOL)copyToURL:(id)l error:(id *)error;
- (BOOL)isReadOnly;
- (BOOL)labelIdentifiers:(void *)identifiers forLabels:(id)labels foundAll:(BOOL *)all error:(id *)error;
- (BOOL)removeEdge:(unint64_t)edge error:(id *)error;
- (BOOL)removeEdges:(id)edges error:(id *)error;
- (BOOL)removeNode:(unint64_t)node error:(id *)error;
- (BOOL)removeNodes:(id)nodes error:(id *)error;
- (BOOL)rollbackTransactionWithError:(id *)error;
- (BOOL)setEdgeProperties:(id)properties forIdentifier:(unint64_t)identifier error:(id *)error;
- (BOOL)setNodeProperties:(id)properties forIdentifier:(unint64_t)identifier error:(id *)error;
- (Bitmap)upsertLabels:(SEL)labels error:(id)error;
- (EdgeCursor)edgeCursorWithIdentifiers:(id)identifiers;
- (EdgeCursor)tombstoneEdgeCursorWithIdentifiers:(id)identifiers;
- (KGDatabase)initWithURL:(id)l;
- (NSUUID)graphIdentifier;
- (NodeCursor)nodeCursorWithIdentifiers:(id)identifiers;
- (NodeCursor)tombstoneNodeCursorWithIdentifiers:(id)identifiers;
- (id)allEdgesForEdgeTable:(const void *)table withError:(id *)error;
- (id)allNodeIdentifiersOfEdgesWithIdentifiers:(id)identifiers error:(id *)error;
- (id)allNodesForTable:(const void *)table error:(id *)error;
- (id)edgeIdentifiersForPropertyName:(id)name rangeValue1:(id)value1 rangeValue2:(id)value2 comparator:(unint64_t)comparator error:(id *)error;
- (id)edgeIdentifiersForPropertyName:(id)name value:(id)value comparator:(unint64_t)comparator error:(id *)error;
- (id)edgeIdentifiersForPropertyName:(id)name values:(id)values error:(id *)error;
- (id)edgeIdentifiersSortedByPropertyForName:(id)name dataType:(int64_t)type ascending:(BOOL)ascending limit:(int64_t)limit edgeIdentifiers:(id)identifiers error:(id *)error;
- (id)edgeIdentifiersWithLabels:(id)labels direction:(unint64_t)direction forNodeIdentifier:(unint64_t)identifier error:(id *)error;
- (id)edgeLabels;
- (id)elementIdentifiersForPropertyName:(id)name rangeValue1:(id)value1 rangeValue2:(id)value2 comparator:(unint64_t)comparator valueTable:(const void *)table rowCount:(unint64_t)count error:(id *)error;
- (id)elementIdentifiersForPropertyName:(id)name value:(id)value comparator:(unint64_t)comparator valueTable:(const void *)table rowCount:(unint64_t)count error:(id *)error;
- (id)elementIdentifiersForPropertyName:(id)name values:(id)values valueTable:(const void *)table rowCount:(unint64_t)count error:(id *)error;
- (id)filterEdgeIdentifiersBetween:(id)between targetNodeIdentifiers:(id)identifiers filterEdgeIdentifiers:(id)edgeIdentifiers error:(id *)error;
- (id)filterEdgeIdentifiersForPropertyName:(id)name rangeValue1:(id)value1 rangeValue2:(id)value2 comparator:(unint64_t)comparator edgeIdentifiers:(id)identifiers error:(id *)error;
- (id)filterEdgeIdentifiersForPropertyName:(id)name value:(id)value comparator:(unint64_t)comparator edgeIdentifiers:(id)identifiers error:(id *)error;
- (id)filterEdgeIdentifiersForPropertyName:(id)name values:(id)values comparator:(unint64_t)comparator edgeIdentifiers:(id)identifiers error:(id *)error;
- (id)filterElementIdentifiersForPropertyName:(id)name rangeValue1:(id)value1 rangeValue2:(id)value2 comparator:(unint64_t)comparator elementIdentifiers:(id)identifiers valueTable:(const void *)table rowCount:(unint64_t)count error:(id *)self0;
- (id)filterElementIdentifiersForPropertyName:(id)name value:(id)value comparator:(unint64_t)comparator elementIdentifiers:(id)identifiers valueTable:(const void *)table rowCount:(unint64_t)count error:(id *)error;
- (id)filterElementIdentifiersForPropertyName:(id)name values:(id)values comparator:(unint64_t)comparator elementIdentifiers:(id)identifiers valueTable:(const void *)table rowCount:(unint64_t)count error:(id *)error;
- (id)filterNodeIdentifiersForPropertyName:(id)name rangeValue1:(id)value1 rangeValue2:(id)value2 comparator:(unint64_t)comparator nodeIdentifiers:(id)identifiers error:(id *)error;
- (id)filterNodeIdentifiersForPropertyName:(id)name value:(id)value comparator:(unint64_t)comparator nodeIdentifiers:(id)identifiers error:(id *)error;
- (id)filterNodeIdentifiersForPropertyName:(id)name values:(id)values comparator:(unint64_t)comparator nodeIdentifiers:(id)identifiers error:(id *)error;
- (id)filterTombstoneEdgeIdentifiersForPropertyName:(id)name rangeValue1:(id)value1 rangeValue2:(id)value2 comparator:(unint64_t)comparator edgeIdentifiers:(id)identifiers error:(id *)error;
- (id)filterTombstoneEdgeIdentifiersForPropertyName:(id)name value:(id)value comparator:(unint64_t)comparator edgeIdentifiers:(id)identifiers error:(id *)error;
- (id)filterTombstoneEdgeIdentifiersForPropertyName:(id)name values:(id)values comparator:(unint64_t)comparator edgeIdentifiers:(id)identifiers error:(id *)error;
- (id)filterTombstoneNodeIdentifiersForPropertyName:(id)name rangeValue1:(id)value1 rangeValue2:(id)value2 comparator:(unint64_t)comparator nodeIdentifiers:(id)identifiers error:(id *)error;
- (id)filterTombstoneNodeIdentifiersForPropertyName:(id)name value:(id)value comparator:(unint64_t)comparator nodeIdentifiers:(id)identifiers error:(id *)error;
- (id)filterTombstoneNodeIdentifiersForPropertyName:(id)name values:(id)values comparator:(unint64_t)comparator nodeIdentifiers:(id)identifiers error:(id *)error;
- (id)intersectionOfEdgesForEdgeTable:(const void *)table withLabels:(id)labels filterEdgeIdentifiers:(id)identifiers overrideIndex:(BOOL)index error:(id *)error;
- (id)intersectionOfEdgesWithLabels:(id)labels error:(id *)error;
- (id)intersectionOfEdgesWithLabels:(id)labels filterEdgeIdentifiers:(id)identifiers error:(id *)error;
- (id)intersectionOfNodesForNodeTable:(const void *)table withLabels:(id)labels filterNodeIdentifiers:(id)identifiers overrideIndex:(BOOL)index error:(id *)error;
- (id)intersectionOfNodesWithLabels:(id)labels error:(id *)error;
- (id)intersectionOfNodesWithLabels:(id)labels filterNodeIdentifiers:(id)identifiers error:(id *)error;
- (id)intersectionOfTombstoneEdgesWithLabels:(id)labels error:(id *)error;
- (id)intersectionOfTombstoneEdgesWithLabels:(id)labels filterEdgeIdentifiers:(id)identifiers error:(id *)error;
- (id)intersectionOfTombstoneNodesWithLabels:(id)labels error:(id *)error;
- (id)intersectionOfTombstoneNodesWithLabels:(id)labels filterNodeIdentifiers:(id)identifiers error:(id *)error;
- (id)labelIdentifierForLabelName:(id)name error:(id *)error;
- (id)labelNameForLabelIdentifier:(unint64_t)identifier;
- (id)labelsOfEdgesForIdentifiers:(id)identifiers;
- (id)labelsOfNodesForIdentifiers:(id)identifiers;
- (id)neighborNodeIdentifiersWithStartNodeIdentifiers:(id)identifiers edgeDirection:(unint64_t)direction edgeFilter:(id)filter error:(id *)error;
- (id)neighborNodesOfNodesForIdentifiers:(id)identifiers throughEdgesForIdentifiers:(id)forIdentifiers direction:(unint64_t)direction error:(id *)error;
- (id)neighborNodesOfNodesForIdentifiers:(id)identifiers throughEdgesWithLabels:(id)labels direction:(unint64_t)direction error:(id *)error;
- (id)noIndexIntersectionOfEdgesWithLabels:(id)labels error:(id *)error;
- (id)noIndexIntersectionOfNodesWithLabels:(id)labels error:(id *)error;
- (id)nodeIdentifiersForPropertyName:(id)name rangeValue1:(id)value1 rangeValue2:(id)value2 comparator:(unint64_t)comparator error:(id *)error;
- (id)nodeIdentifiersForPropertyName:(id)name value:(id)value comparator:(unint64_t)comparator error:(id *)error;
- (id)nodeIdentifiersForPropertyName:(id)name values:(id)values error:(id *)error;
- (id)nodeIdentifiersSortedByPropertyForName:(id)name dataType:(int64_t)type ascending:(BOOL)ascending limit:(int64_t)limit nodeIdentifiers:(id)identifiers error:(id *)error;
- (id)nodeIdentifiersWhereNoEdgesWithError:(id *)error;
- (id)nodeIdentifiersWhereNoInEdgesWithError:(id *)error;
- (id)nodeIdentifiersWhereNoOutEdgesWithError:(id *)error;
- (id)nodeLabels;
- (id)openModeDescription:(unint64_t)description;
- (id)propertyNameForAttrIdentifier:(unint64_t)identifier;
- (id)propertyValueForCursor:(void *)cursor;
- (id)tombstoneEdgeIdentifiersForPropertyName:(id)name rangeValue1:(id)value1 rangeValue2:(id)value2 comparator:(unint64_t)comparator error:(id *)error;
- (id)tombstoneEdgeIdentifiersForPropertyName:(id)name value:(id)value comparator:(unint64_t)comparator error:(id *)error;
- (id)tombstoneEdgeIdentifiersForPropertyName:(id)name values:(id)values error:(id *)error;
- (id)tombstoneNodeIdentifiersForPropertyName:(id)name rangeValue1:(id)value1 rangeValue2:(id)value2 comparator:(unint64_t)comparator error:(id *)error;
- (id)tombstoneNodeIdentifiersForPropertyName:(id)name value:(id)value comparator:(unint64_t)comparator error:(id *)error;
- (id)tombstoneNodeIdentifiersForPropertyName:(id)name values:(id)values error:(id *)error;
- (id)transitiveClosureNeighborNodeIdentifiersWithStartNodeIdentifiers:(id)identifiers edgeDirection:(unint64_t)direction edgeFilter:(id)filter error:(id *)error;
- (id)unionOfEdgesForEdgeTable:(const void *)table withLabels:(id)labels filterEdgeIdentifiers:(id)identifiers error:(id *)error;
- (id)unionOfEdgesWithLabels:(id)labels error:(id *)error;
- (id)unionOfEdgesWithLabels:(id)labels filterEdgeIdentifiers:(id)identifiers error:(id *)error;
- (id)unionOfNodesForNodeTable:(const void *)table withLabels:(id)labels filterNodeIdentifiers:(id)identifiers error:(id *)error;
- (id)unionOfNodesWithLabels:(id)labels error:(id *)error;
- (id)unionOfNodesWithLabels:(id)labels filterNodeIdentifiers:(id)identifiers error:(id *)error;
- (id)unionOfTombstoneEdgesWithLabels:(id)labels error:(id *)error;
- (id)unionOfTombstoneEdgesWithLabels:(id)labels filterEdgeIdentifiers:(id)identifiers error:(id *)error;
- (id)unionOfTombstoneNodesWithLabels:(id)labels error:(id *)error;
- (id)unionOfTombstoneNodesWithLabels:(id)labels filterNodeIdentifiers:(id)identifiers error:(id *)error;
- (int)degasEdgeDirectionFromKG:(unint64_t)g;
- (shared_ptr<degas::Predicate>)degasPredicateForAllLabels:(void *)labels elementType:(int)type;
- (shared_ptr<degas::Predicate>)degasPredicateForAnyLabels:(void *)labels elementType:(int)type;
- (shared_ptr<degas::Predicate>)degasPredicateFromKGFilter:(id)filter elementType:(int)type;
- (shared_ptr<degas::Predicate>)degasPredicateFromValue:(id)value comparator:(unint64_t)comparator attrId:(unint64_t)id elementType:(int)type;
- (shared_ptr<degas::Predicate>)degasPredicateFromValueArray:(id)array attrId:(unint64_t)id elementType:(int)type;
- (shared_ptr<degas::Predicate>)degasRangePredicateFromValue1:(id)value1 value2:(id)value2 comparator:(unint64_t)comparator attrId:(unint64_t)id elementType:(int)type;
- (uint64_t)transactionChangesAfterTransactionId:limit:block:;
- (unint64_t)addEdgeWithLabels:(id)labels properties:(id)properties sourceNodeIdentifier:(unint64_t)identifier targetNodeIdentifier:(unint64_t)nodeIdentifier error:(id *)error;
- (unint64_t)addNodeWithLabels:(id)labels properties:(id)properties error:(id *)error;
- (unint64_t)attributeIdentifierForPropertyName:(id)name error:(id *)error;
- (unint64_t)graphVersion;
- (unint64_t)insertNewLabel:(id)label error:(id *)error;
- (unint64_t)insertNewProperty:(id)property error:(id *)error;
- (unint64_t)upsertLabel:(id)label error:(id *)error;
- (void)_enumerateEdgeTableWithEdgeCursor:(void *)cursor block:(id)block;
- (void)_enumerateEdgesWithEdgeCursor:(void *)cursor propertiesCursor:(void *)propertiesCursor block:(id)block;
- (void)_enumerateNodeTableWithNodeCursor:(void *)cursor block:(id)block;
- (void)_enumerateNodesWithNodeCursor:(void *)cursor propertiesCursor:(void *)propertiesCursor block:(id)block;
- (void)_enumeratePropertiesForCursor:(void *)cursor block:(id)block;
- (void)_enumeratePropertiesWithCursor:(void *)cursor withBlock:(id)block;
- (void)close;
- (void)dealloc;
- (void)distributeValuesByType:(id)type toIntegerValues:(id)values floatValues:(id)floatValues stringValues:(id)stringValues;
- (void)enumerateEdgesWithIdentifiers:(id)identifiers block:(id)block;
- (void)enumerateNodesWithIdentifiers:(id)identifiers block:(id)block;
- (void)enumeratePropertyValuesForEdgesWithIdentifiers:(id)identifiers propertyName:(id)name withBlock:(id)block;
- (void)enumeratePropertyValuesForNodesWithIdentifiers:(id)identifiers propertyName:(id)name withBlock:(id)block;
- (void)enumerateSourceAndTargetIdentifiersWithEdgeIdentifiers:(id)identifiers block:(id)block;
- (void)enumerateTombstoneEdgesWithIdentifiers:(id)identifiers block:(id)block;
- (void)enumerateTombstoneNodesWithIdentifiers:(id)identifiers block:(id)block;
- (void)setFatalError:(id)error;
- (void)setGraphVersion:(unint64_t)version;
- (void)transactionChangesAfterTransactionId:(unint64_t)id limit:(int64_t)limit block:(id)block;
- (void)transactionChangesAfterTransactionId:limit:block:;
@end

@implementation KGDatabase

- (BOOL)rollbackTransactionWithError:(id *)error
{
  v5 = degas::Database::rollbackTransaction(self->_database);
  [(KGDatabaseNameCache *)self->_nameCache unloadCache];
  if (error && v5)
  {
    if ((v5 - 2) > 9)
    {
      v6 = -1;
    }

    else
    {
      v6 = qword_255972CE0[v5 - 2];
    }

    *error = kg_errorWithCode(v6);
  }

  [(KGDatabaseNameCache *)self->_nameCache transactionEnd];
  return v5 == 0;
}

- (BOOL)commitTransactionWithError:(id *)error
{
  v5 = degas::Database::commitTransaction(self->_database);
  if (v5)
  {
    [(KGDatabaseNameCache *)self->_nameCache unloadCache];
    if (error)
    {
      if ((v5 - 2) > 9)
      {
        v6 = -1;
      }

      else
      {
        v6 = qword_255972CE0[v5 - 2];
      }

      *error = kg_errorWithCode(v6);
    }
  }

  [(KGDatabaseNameCache *)self->_nameCache transactionEnd];
  return v5 == 0;
}

- (BOOL)beginTransactionWithError:(id *)error
{
  v5 = degas::Database::beginTransaction(self->_database);
  v6 = v5;
  if (error && v5)
  {
    if ((v5 - 2) > 9)
    {
      v7 = -1;
    }

    else
    {
      v7 = qword_255972CE0[v5 - 2];
    }

    *error = kg_errorWithCode(v7);
  }

  if (*(self->_database + 33) == 1)
  {
    [(KGDatabaseNameCache *)self->_nameCache setInvalid];
    *(self->_database + 33) = 0;
  }

  [(KGDatabaseNameCache *)self->_nameCache transactionBegin];
  return v6 == 0;
}

- (id)transitiveClosureNeighborNodeIdentifiersWithStartNodeIdentifiers:(id)identifiers edgeDirection:(unint64_t)direction edgeFilter:(id)filter error:(id *)error
{
  identifiersCopy = identifiers;
  objc_msgSend_degasPredicateFromKGFilter_elementType_(self);
  degas::NeighborQuery::NeighborQuery(&v17, &v19, self->_database);
  *v16 = 0u;
  v10 = degas::NeighborQuery::transitiveClosureNeighbors(&v17, [identifiersCopy bitmap], -[KGDatabase degasEdgeDirectionFromKG:](self, "degasEdgeDirectionFromKG:", direction), &v14);
  if (v10)
  {
    if (error)
    {
      if ((v10 - 2) > 9)
      {
        v11 = -1;
      }

      else
      {
        v11 = qword_255972CE0[v10 - 2];
      }

      kg_errorWithCode(v11);
      *error = v12 = 0;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = [[KGElementIdentifierSet alloc] initWithBitmap:&v14];
  }

  v21 = &v15;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v21);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  return v12;
}

- (id)neighborNodeIdentifiersWithStartNodeIdentifiers:(id)identifiers edgeDirection:(unint64_t)direction edgeFilter:(id)filter error:(id *)error
{
  identifiersCopy = identifiers;
  objc_msgSend_degasPredicateFromKGFilter_elementType_(self);
  degas::NeighborQuery::NeighborQuery(&v17, &v19, self->_database);
  *v16 = 0u;
  v10 = degas::NeighborQuery::neighbors(&v17, [identifiersCopy bitmap], -[KGDatabase degasEdgeDirectionFromKG:](self, "degasEdgeDirectionFromKG:", direction), &v14);
  if (v10)
  {
    if (error)
    {
      if ((v10 - 2) > 9)
      {
        v11 = -1;
      }

      else
      {
        v11 = qword_255972CE0[v10 - 2];
      }

      kg_errorWithCode(v11);
      *error = v12 = 0;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = [[KGElementIdentifierSet alloc] initWithBitmap:&v14];
  }

  v21 = &v15;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v21);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  return v12;
}

- (shared_ptr<degas::Predicate>)degasPredicateFromKGFilter:(id)filter elementType:(int)type
{
  v7 = v4;
  filterCopy = filter;
  v72 = 0uLL;
  v71 = 0uLL;
  v70 = 0uLL;
  v68 = 0u;
  memset(v69, 0, 25);
  v66 = 0u;
  memset(v67, 0, 25);
  requiredLabels = [filterCopy requiredLabels];
  v10 = [requiredLabels count];

  if (v10)
  {
    LOBYTE(v60) = 1;
    requiredLabels2 = [filterCopy requiredLabels];
    [(KGDatabase *)self labelIdentifiers:&v68 forLabels:requiredLabels2 foundAll:&v60 error:0];

    if ((v60 & 1) == 0)
    {
      operator new();
    }
  }

  optionalLabels = [filterCopy optionalLabels];
  v13 = [optionalLabels count];

  if (v13)
  {
    optionalLabels2 = [filterCopy optionalLabels];
    [(KGDatabase *)self labelIdentifiers:&v66 forLabels:optionalLabels2 foundAll:0 error:0];

    v16 = v66;
    if (v66 == 0xFFFFFFFFLL)
    {
      v17 = v67[0];
      v18 = v67[1];
      if (v67[0] == v67[1])
      {
        v16 = 0;
      }

      else
      {
        v16 = 0;
        do
        {
          v19 = *v17;
          v20 = *(*v17 + 4);
          if (v20 == -1)
          {
            v21 = 0;
            v14 = 0uLL;
            do
            {
              do
              {
                v14 = vpadalq_u16(v14, vpaddlq_u8(vcntq_s8(*(v19 + 16 + 4 * v21))));
                v21 += 4;
              }

              while (v21 != 32);
              v21 = 0;
              v20 = vaddvq_s32(v14);
              v14 = 0uLL;
            }

            while (v20 == -1);
            *(v19 + 4) = v20;
          }

          v16 += v20;
          v17 += 2;
        }

        while (v17 != v18);
      }

      *&v66 = v16;
    }

    if (!v16)
    {
      operator new();
    }
  }

  else
  {
    v16 = v66;
  }

  if (v16 == 0xFFFFFFFFLL)
  {
    v22 = v67[0];
    v23 = v67[1];
    if (v67[0] == v67[1])
    {
      v16 = 0;
    }

    else
    {
      v16 = 0;
      do
      {
        v24 = *v22;
        v25 = *(*v22 + 4);
        if (v25 == -1)
        {
          v26 = 0;
          v14 = 0uLL;
          do
          {
            do
            {
              v14 = vpadalq_u16(v14, vpaddlq_u8(vcntq_s8(*(v24 + 16 + 4 * v26))));
              v26 += 4;
            }

            while (v26 != 32);
            v26 = 0;
            v25 = vaddvq_s32(v14);
            v14 = 0uLL;
          }

          while (v25 == -1);
          *(v24 + 4) = v25;
        }

        v16 += v25;
        v22 += 2;
      }

      while (v22 != v23);
    }

    *&v66 = v16;
  }

  if (v16 == 1)
  {
    degas::Bitmap::unionWith<degas::Bitmap>(&v68, &v66);
    v66 = 0uLL;
    v27 = v67[0];
    for (i = v67[1]; i != v27; i -= 16)
    {
      degas::BitsetPtr::releaseBitset((i - 16));
      *(i - 8) = 0;
    }

    v67[1] = v27;
  }

  v29 = v68;
  if (v68 == 0xFFFFFFFFLL)
  {
    v30 = v69[0];
    v31 = v69[1];
    if (v69[0] == v69[1])
    {
      v29 = 0;
    }

    else
    {
      v29 = 0;
      do
      {
        v32 = *v30;
        v33 = *(*v30 + 4);
        if (v33 == -1)
        {
          v34 = 0;
          v14 = 0uLL;
          do
          {
            do
            {
              v14 = vpadalq_u16(v14, vpaddlq_u8(vcntq_s8(*(v32 + 16 + 4 * v34))));
              v34 += 4;
            }

            while (v34 != 32);
            v34 = 0;
            v33 = vaddvq_s32(v14);
            v14 = 0uLL;
          }

          while (v33 == -1);
          *(v32 + 4) = v33;
        }

        v29 += v33;
        v30 += 2;
      }

      while (v30 != v31);
    }

    *&v68 = v29;
  }

  v56 = v7;
  if (v29)
  {
    objc_msgSend_degasPredicateForAllLabels_elementType_(self, *v14.i64);
    v36 = *(&v60 + 1);
    v35 = v60;
    v72 = v60;
    v37 = 1;
  }

  else
  {
    v36 = 0;
    v35 = 0;
    v37 = 0;
  }

  v38 = v66;
  if (v66 == 0xFFFFFFFFLL)
  {
    v39 = v67[0];
    v40 = v67[1];
    if (v67[0] == v67[1])
    {
      v38 = 0;
    }

    else
    {
      v38 = 0;
      do
      {
        v41 = *v39;
        v42 = *(*v39 + 4);
        if (v42 == -1)
        {
          v43 = 0;
          v14 = 0uLL;
          do
          {
            do
            {
              v14 = vpadalq_u16(v14, vpaddlq_u8(vcntq_s8(*(v41 + 16 + 4 * v43))));
              v43 += 4;
            }

            while (v43 != 32);
            v43 = 0;
            v42 = vaddvq_s32(v14);
            v14 = 0uLL;
          }

          while (v42 == -1);
          *(v41 + 4) = v42;
        }

        v38 += v42;
        v39 += 2;
      }

      while (v39 != v40);
    }

    *&v66 = v38;
  }

  if (v38)
  {
    objc_msgSend_degasPredicateForAnyLabels_elementType_(self, *v14.i64);
    v44 = *(&v60 + 1);
    v45 = v60;
    v71 = v60;
    ++v37;
  }

  else
  {
    v44 = 0;
    v45 = 0;
  }

  *&v60 = 0;
  *(&v60 + 1) = &v60;
  v61 = 0x4812000000;
  v62 = __Block_byref_object_copy__132;
  v63 = __Block_byref_object_dispose__133;
  v64 = &unk_25598DE97;
  memset(v65, 0, sizeof(v65));
  properties = [filterCopy properties];
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __53__KGDatabase_degasPredicateFromKGFilter_elementType___block_invoke;
  v58[3] = &unk_2797FEAD0;
  typeCopy = type;
  v58[4] = self;
  v58[5] = &v60;
  [properties enumerateKeysAndObjectsUsingBlock:v58];

  v47 = *(*(&v60 + 1) + 48);
  v48 = *(*(&v60 + 1) + 56) - v47;
  if (v48 >= 0x11)
  {
    operator new();
  }

  if (v48 == 16)
  {
    v50 = *v47;
    v49 = v47[1];
    if (v49)
    {
      atomic_fetch_add_explicit((v49 + 8), 1uLL, memory_order_relaxed);
    }

    v51 = *(&v70 + 1);
    *&v70 = v50;
    *(&v70 + 1) = v49;
    if (v51)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v51);
    }

    ++v37;
  }

  if (v37 >= 2)
  {
    memset(v57, 0, sizeof(v57));
    if (v35)
    {
      std::vector<std::shared_ptr<degas::Predicate>>::push_back[abi:ne200100](v57, &v72);
    }

    if (v45)
    {
      std::vector<std::shared_ptr<degas::Predicate>>::push_back[abi:ne200100](v57, &v71);
    }

    if (v70)
    {
      std::vector<std::shared_ptr<degas::Predicate>>::push_back[abi:ne200100](v57, &v70);
    }

    operator new();
  }

  if (v35)
  {
    *v56 = v35;
    v56[1] = v36;
    v72 = 0uLL;
  }

  else if (v45)
  {
    *v56 = v45;
    v56[1] = v44;
    v71 = 0uLL;
  }

  else if (v70)
  {
    v55 = *(&v70 + 1);
    *v56 = v70;
    v56[1] = v55;
    v70 = 0uLL;
  }

  else
  {
    *v56 = 0;
    v56[1] = 0;
  }

  _Block_object_dispose(&v60, 8);
  v57[0] = v65;
  std::vector<std::shared_ptr<degas::Predicate>>::__destroy_vector::operator()[abi:ne200100](v57);
  v52 = *(&v70 + 1);
  *&v60 = v67;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v60);
  *&v60 = v69;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v60);
  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v52);
  }

  if (*(&v71 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v71 + 1));
  }

  if (*(&v72 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v72 + 1));
  }

  result.var1 = v54;
  result.var0 = v53;
  return result;
}

void __53__KGDatabase_degasPredicateFromKGFilter_elementType___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v27 = 0;
  v8 = [v7 attributeIdentifierForPropertyName:v5 error:&v27];
  v9 = v27;
  if (v8)
  {
    *buf = 0;
    *&buf[8] = 0;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v6 allObjects];

      v6 = v10;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v6;
      if ([v11 count])
      {
        v12 = *(a1 + 32);
        if (v12)
        {
          objc_msgSend_degasPredicateFromValueArray_attrId_elementType_(v12);
          v14 = v25;
          v13 = v26;
        }

        else
        {
          v13 = 0;
          v14 = 0;
        }

        *buf = v14;
        *&buf[8] = v13;
      }

      else
      {
        v13 = 0;
        v14 = 0;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v6;
        v17 = *(a1 + 32);
        v18 = [v16 value];
        [v16 comparator];
        if (v17)
        {
          objc_msgSend_degasPredicateFromValue_comparator_attrId_elementType_(v17);
          v14 = v25;
          v13 = v26;
        }

        else
        {
          v13 = 0;
          v14 = 0;
        }

        v25 = 0;
        v26 = 0;
        *buf = v14;
        *&buf[8] = v13;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v22 = *(a1 + 32);
          if (v22)
          {
            objc_msgSend_degasPredicateFromValue_comparator_attrId_elementType_(v22);
            v23 = v25;
            v13 = v26;
          }

          else
          {
            v13 = 0;
            v23 = 0;
          }

          *buf = v23;
          *&buf[8] = v13;
          if (v23)
          {
            goto LABEL_24;
          }

          goto LABEL_29;
        }

        v19 = v6;
        v14 = *(a1 + 32);
        v20 = [v19 value1];
        v21 = [v19 value2];
        [v19 comparator];
        if (v14)
        {
          objc_msgSend_degasRangePredicateFromValue1_value2_comparator_attrId_elementType_(v14);
          v14 = v25;
          v13 = v26;
        }

        else
        {
          v13 = 0;
        }

        v25 = 0;
        v26 = 0;
        *buf = v14;
        *&buf[8] = v13;
      }
    }

    if (v14)
    {
LABEL_24:
      std::vector<std::shared_ptr<degas::Predicate>>::push_back[abi:ne200100](*(*(a1 + 40) + 8) + 48, buf);
LABEL_32:
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      goto LABEL_34;
    }

LABEL_29:
    v24 = KGLoggingConnection();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v25) = 0;
      _os_log_error_impl(&dword_255870000, v24, OS_LOG_TYPE_ERROR, "unexpected null predicate", &v25, 2u);
    }

    goto LABEL_32;
  }

  v15 = KGLoggingConnection();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    *&buf[4] = v5;
    *&buf[12] = 2112;
    *&buf[14] = v9;
    _os_log_error_impl(&dword_255870000, v15, OS_LOG_TYPE_ERROR, "failed attribute lookup for property %@, error=%@", buf, 0x16u);
  }

LABEL_34:
}

- (shared_ptr<degas::Predicate>)degasPredicateForAnyLabels:(void *)labels elementType:(int)type
{
  v5 = v4;
  if (type <= 1)
  {
    if (type)
    {
      if (type == 1)
      {
        operator new();
      }
    }

    else
    {
      v6 = KGLoggingConnection();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7[0] = 0;
        _os_log_error_impl(&dword_255870000, v6, OS_LOG_TYPE_ERROR, "unable to provide useful predicate for None element type", v7, 2u);
      }
    }
  }

  else
  {
    switch(type)
    {
      case 2:
        operator new();
      case 3:
        operator new();
      case 4:
        operator new();
    }
  }

  *v5 = 0;
  v5[1] = 0;
  result.var1 = a2;
  result.var0 = self;
  return result;
}

- (shared_ptr<degas::Predicate>)degasPredicateForAllLabels:(void *)labels elementType:(int)type
{
  v5 = v4;
  if (type <= 1)
  {
    if (type)
    {
      if (type == 1)
      {
        operator new();
      }
    }

    else
    {
      v6 = KGLoggingConnection();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7[0] = 0;
        _os_log_error_impl(&dword_255870000, v6, OS_LOG_TYPE_ERROR, "unable to provide useful predicate for None element type", v7, 2u);
      }
    }
  }

  else
  {
    switch(type)
    {
      case 2:
        operator new();
      case 3:
        operator new();
      case 4:
        operator new();
    }
  }

  *v5 = 0;
  v5[1] = 0;
  result.var1 = a2;
  result.var0 = self;
  return result;
}

- (shared_ptr<degas::Predicate>)degasRangePredicateFromValue1:(id)value1 value2:(id)value2 comparator:(unint64_t)comparator attrId:(unint64_t)id elementType:(int)type
{
  v11 = v7;
  v27 = *MEMORY[0x277D85DE8];
  value1Copy = value1;
  value2Copy = value2;
  v24 = 0u;
  memset(v25, 0, 25);
  kgPropertyType = [value1Copy kgPropertyType];
  if (kgPropertyType == [value2Copy kgPropertyType])
  {
    if ((type - 1) >= 4)
    {
      abort();
    }

    rowCountForElementType(type, self->_database);
    if (kgPropertyType > 1)
    {
      if (kgPropertyType == 2)
      {
        v18 = value1Copy;
        v19 = value2Copy;
        operator new();
      }

      if (kgPropertyType == 3)
      {
        v20 = value1Copy;
        v21 = value2Copy;
        stringNSToStd(buf, v20);
        stringNSToStd(__p, v21);
        operator new();
      }

      if (kgPropertyType != 4)
      {
        goto LABEL_10;
      }

LABEL_13:
      value1Copy;
      v17 = value2Copy;
      operator new();
    }

    if (kgPropertyType)
    {
      if (kgPropertyType != 1)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    v22 = KGLoggingConnection();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf[0]) = 138412290;
      *(buf + 4) = value1Copy;
      _os_log_error_impl(&dword_255870000, v22, OS_LOG_TYPE_ERROR, "unable to interpret value <%@> as valid property value", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf[0]) = 0;
    _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "selecting in a range with mismatched types", buf, 2u);
  }

LABEL_10:
  *v11 = 0;
  v11[1] = 0;
  buf[0] = v25;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](buf);

  result.var1 = v16;
  result.var0 = v15;
  return result;
}

- (shared_ptr<degas::Predicate>)degasPredicateFromValue:(id)value comparator:(unint64_t)comparator attrId:(unint64_t)id elementType:(int)type
{
  v9 = v6;
  v17 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  kgPropertyType = [valueCopy kgPropertyType];
  if ((type - 1) >= 4)
  {
    abort();
  }

  v12 = kgPropertyType;
  rowCountForElementType(type, self->_database);
  if (v12 > 1)
  {
    if (v12 == 2)
    {
      [valueCopy doubleValue];
      operator new();
    }

    if (v12 == 3)
    {
      stringNSToStd(buf, valueCopy);
      operator new();
    }

    if (v12 != 4)
    {
      goto LABEL_15;
    }

LABEL_9:
    [valueCopy longLongValue];
    operator new();
  }

  if (v12)
  {
    if (v12 != 1)
    {
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  v13 = KGLoggingConnection();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf[0]) = 138412290;
    *(buf + 4) = valueCopy;
    _os_log_error_impl(&dword_255870000, v13, OS_LOG_TYPE_ERROR, "unable to interpret value <%@> as valid property value", buf, 0xCu);
  }

LABEL_15:
  *v9 = 0;
  v9[1] = 0;

  result.var1 = v15;
  result.var0 = v14;
  return result;
}

- (shared_ptr<degas::Predicate>)degasPredicateFromValueArray:(id)array attrId:(unint64_t)id elementType:(int)type
{
  v8 = v5;
  v51 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [KGDatabase distributeValuesByType:"distributeValuesByType:toIntegerValues:floatValues:stringValues:" toIntegerValues:arrayCopy floatValues:v30 stringValues:?];
  if ((type - 1) >= 4)
  {
    abort();
  }

  rowCountForElementType(type, self->_database);
  v44 = 0;
  v45 = 0;
  v46 = 0;
  if ([v31 count])
  {
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = v31;
    v9 = [obj countByEnumeratingWithState:&v37 objects:v50 count:16];
    if (v9)
    {
      v10 = *v38;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v38 != v10)
          {
            objc_enumerationMutation(obj);
          }

          std::string::basic_string[abi:ne200100]<0>(&__p, [*(*(&v37 + 1) + 8 * i) UTF8String]);
          v12 = v42;
          if (v42 >= v43)
          {
            v14 = 0xAAAAAAAAAAAAAAABLL * ((v42 - v41) >> 3);
            v15 = v14 + 1;
            if (v14 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              std::vector<unsigned long long>::__throw_length_error[abi:ne200100]();
            }

            if (0x5555555555555556 * ((v43 - v41) >> 3) > v15)
            {
              v15 = 0x5555555555555556 * ((v43 - v41) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v43 - v41) >> 3) >= 0x555555555555555)
            {
              v16 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v16 = v15;
            }

            v47.__end_cap_.__value_ = &v41;
            if (v16)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v16);
            }

            v17 = 8 * ((v42 - v41) >> 3);
            v18 = __p;
            *(v17 + 16) = v36;
            *v17 = v18;
            v36 = 0;
            __p = 0uLL;
            v19 = 24 * v14 + 24;
            v20 = (24 * v14 - (v42 - v41));
            memcpy((v17 - (v42 - v41)), v41, v42 - v41);
            v21 = v41;
            v22 = v43;
            v41 = v20;
            v42 = v19;
            v43 = 0;
            v47.__end_ = v21;
            v47.__end_cap_.__value_ = v22;
            v47.__first_ = v21;
            v47.__begin_ = v21;
            std::__split_buffer<std::string>::~__split_buffer(&v47);
            v42 = v19;
            if (SHIBYTE(v36) < 0)
            {
              operator delete(__p);
            }
          }

          else
          {
            v13 = __p;
            *(v42 + 2) = v36;
            *v12 = v13;
            v42 = v12 + 24;
          }
        }

        v9 = [obj countByEnumeratingWithState:&v37 objects:v50 count:16];
      }

      while (v9);
    }

    operator new();
  }

  if ([v30 count])
  {
    memset(v34, 0, sizeof(v34));
    v23 = v30;
    if ([v23 countByEnumeratingWithState:v34 objects:v49 count:16])
    {
      [**(&v34[0] + 1) longLongValue];
      std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(1uLL);
    }

    operator new();
  }

  if ([v29 count])
  {
    memset(v33, 0, sizeof(v33));
    v24 = v29;
    if ([v24 countByEnumeratingWithState:v33 objects:v48 count:16])
    {
      [**(&v33[0] + 1) doubleValue];
      std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(1uLL);
    }

    operator new();
  }

  if ((v45 - v44) >= 0x11)
  {
    operator new();
  }

  if (v45 - v44 == 16)
  {
    v25 = v44[1];
    *v8 = *v44;
    v8[1] = v25;
    if (v25)
    {
      atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *v8 = 0;
    v8[1] = 0;
  }

  v47.__first_ = &v44;
  std::vector<std::shared_ptr<degas::Predicate>>::__destroy_vector::operator()[abi:ne200100](&v47);

  result.var1 = v27;
  result.var0 = v26;
  return result;
}

- (id)neighborNodesOfNodesForIdentifiers:(id)identifiers throughEdgesForIdentifiers:(id)forIdentifiers direction:(unint64_t)direction error:(id *)error
{
  identifiersCopy = identifiers;
  forIdentifiersCopy = forIdentifiers;
  v16 = 0u;
  memset(v17, 0, 25);
  v12 = degas::Database::nodeNeighborsViaEdges(self->_database, [identifiersCopy bitmap], objc_msgSend(forIdentifiersCopy, "bitmap"), &v16, -[KGDatabase degasEdgeDirectionFromKG:](self, "degasEdgeDirectionFromKG:", direction));
  if (v12)
  {
    if (error)
    {
      if ((v12 - 2) > 9)
      {
        v13 = -1;
      }

      else
      {
        v13 = qword_255972CE0[v12 - 2];
      }

      kg_errorWithCode(v13);
      *error = v14 = 0;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = [[KGElementIdentifierSet alloc] initWithBitmap:&v16];
  }

  v18 = v17;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v18);

  return v14;
}

- (id)neighborNodesOfNodesForIdentifiers:(id)identifiers throughEdgesWithLabels:(id)labels direction:(unint64_t)direction error:(id *)error
{
  identifiersCopy = identifiers;
  labelsCopy = labels;
  v12 = [(KGDatabase *)self degasEdgeDirectionFromKG:direction];
  v20 = 0u;
  memset(v21, 0, 25);
  v19 = 1;
  [(KGDatabase *)self labelIdentifiers:&v20 forLabels:labelsCopy foundAll:&v19 error:0];
  if (v19)
  {
    v17 = 0u;
    memset(v18, 0, 25);
    v13 = degas::Database::nodeNeighbors(self->_database, [identifiersCopy bitmap], &v17, &v20, v12);
    if (v13)
    {
      if (error)
      {
        if ((v13 - 2) > 9)
        {
          v14 = -1;
        }

        else
        {
          v14 = qword_255972CE0[v13 - 2];
        }

        kg_errorWithCode(v14);
        *error = v15 = 0;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = [[KGElementIdentifierSet alloc] initWithBitmap:&v17];
    }

    v22 = v18;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v22);
  }

  else
  {
    v15 = objc_alloc_init(KGElementIdentifierSet);
  }

  *&v17 = v21;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v17);

  return v15;
}

- (id)edgeIdentifiersWithLabels:(id)labels direction:(unint64_t)direction forNodeIdentifier:(unint64_t)identifier error:(id *)error
{
  [(KGDatabase *)self intersectionOfEdgesWithLabels:labels error:error];
  if (objc_claimAutoreleasedReturnValue())
  {
    memset(v10, 0, 41);
    degas::Database::edgesOfNode(self->_database, identifier, v10, [(KGDatabase *)self degasEdgeDirectionFromKG:direction]);
  }

  return 0;
}

- (id)allNodeIdentifiersOfEdgesWithIdentifiers:(id)identifiers error:(id *)error
{
  identifiersCopy = identifiers;
  v8 = 0u;
  memset(v9, 0, 25);
  degas::Database::appendAllNodesForEdges(self->_database, [identifiersCopy bitmap], &v8);
  v6 = [[KGElementIdentifierSet alloc] initWithBitmap:&v8];
  v10 = v9;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v10);

  return v6;
}

- (BOOL)appendNodeIdentifiersOfEdgesWithIdentifiers:(id)identifiers sourceNodeIdentifiers:(id)nodeIdentifiers targetNodeIdentifiers:(id)targetNodeIdentifiers error:(id *)error
{
  identifiersCopy = identifiers;
  nodeIdentifiersCopy = nodeIdentifiers;
  targetNodeIdentifiersCopy = targetNodeIdentifiers;
  v12 = targetNodeIdentifiersCopy;
  if (nodeIdentifiersCopy | targetNodeIdentifiersCopy)
  {
    database = self->_database;
    if (nodeIdentifiersCopy)
    {
      if (targetNodeIdentifiersCopy)
      {
        degas::Database::appendSourceAndTargetNodesForEdges(database, [identifiersCopy bitmap], objc_msgSend(nodeIdentifiersCopy, "mutableBitmap"), objc_msgSend(targetNodeIdentifiersCopy, "mutableBitmap"));
      }

      else
      {
        degas::Database::appendSourceNodesForEdges(database, [identifiersCopy bitmap], objc_msgSend(nodeIdentifiersCopy, "mutableBitmap"));
      }
    }

    else
    {
      degas::Database::appendTargetNodesForEdges(database, [identifiersCopy bitmap], objc_msgSend(targetNodeIdentifiersCopy, "mutableBitmap"));
    }
  }

  return 1;
}

- (id)filterEdgeIdentifiersBetween:(id)between targetNodeIdentifiers:(id)identifiers filterEdgeIdentifiers:(id)edgeIdentifiers error:(id *)error
{
  betweenCopy = between;
  identifiersCopy = identifiers;
  edgeIdentifiersCopy = edgeIdentifiers;
  memset(v14, 0, 41);
  database = self->_database;
  if (edgeIdentifiersCopy)
  {
    degas::Database::filterEdgesBetweenNodes(database, [betweenCopy bitmap], objc_msgSend(identifiersCopy, "bitmap"), objc_msgSend(edgeIdentifiersCopy, "bitmap"), v14);
  }

  degas::Database::edgesBetweenNodes(database, [betweenCopy bitmap], objc_msgSend(identifiersCopy, "bitmap"), v14);
}

- (void)transactionChangesAfterTransactionId:(unint64_t)id limit:(int64_t)limit block:(id)block
{
  v10[4] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  database = self->_database;
  v10[0] = &unk_2867A90D8;
  v10[1] = &blockCopy;
  v10[3] = v10;
  degas::Database::enumerateTransactionChangesAfterTransactionId(database, id, v8, v10);
  std::__function::__value_func<void ()(unsigned long long,degas::Database::TransactionChanges const&)>::~__value_func[abi:ne200100](v10);
}

- (uint64_t)transactionChangesAfterTransactionId:limit:block:
{
  v2 = *(result + 8);
  *a2 = &unk_2867A90D8;
  a2[1] = v2;
  return result;
}

- (void)transactionChangesAfterTransactionId:limit:block:
{
  v10 = [[KGElementIdentifierSet alloc] initWithBitmap:a3];
  v5 = [[KGElementIdentifierSet alloc] initWithBitmap:a3 + 48];
  v6 = [[KGElementIdentifierSet alloc] initWithBitmap:a3 + 96];
  v7 = [[KGElementIdentifierSet alloc] initWithBitmap:a3 + 144];
  v8 = [[KGElementIdentifierSet alloc] initWithBitmap:a3 + 192];
  v9 = [[KGElementIdentifierSet alloc] initWithBitmap:a3 + 240];
  (*(**(self + 8) + 16))();
}

- (id)unionOfTombstoneEdgesWithLabels:(id)labels filterEdgeIdentifiers:(id)identifiers error:(id *)error
{
  v5 = [(KGDatabase *)self unionOfEdgesForEdgeTable:self->_database + 864 withLabels:labels filterEdgeIdentifiers:identifiers error:error];

  return v5;
}

- (id)unionOfTombstoneEdgesWithLabels:(id)labels error:(id *)error
{
  v4 = [(KGDatabase *)self unionOfEdgesForEdgeTable:self->_database + 864 withLabels:labels filterEdgeIdentifiers:0 error:error];

  return v4;
}

- (id)unionOfEdgesWithLabels:(id)labels filterEdgeIdentifiers:(id)identifiers error:(id *)error
{
  v5 = [(KGDatabase *)self unionOfEdgesForEdgeTable:self->_database + 248 withLabels:labels filterEdgeIdentifiers:identifiers error:error];

  return v5;
}

- (id)unionOfEdgesWithLabels:(id)labels error:(id *)error
{
  v4 = [(KGDatabase *)self unionOfEdgesForEdgeTable:self->_database + 248 withLabels:labels filterEdgeIdentifiers:0 error:error];

  return v4;
}

- (id)unionOfEdgesForEdgeTable:(const void *)table withLabels:(id)labels filterEdgeIdentifiers:(id)identifiers error:(id *)error
{
  labelsCopy = labels;
  identifiersCopy = identifiers;
  v31 = 0u;
  memset(v32, 0, 25);
  memset(&v30, 0, 41);
  [(KGDatabase *)self labelIdentifiers:&v30 forLabels:labelsCopy foundAll:0 error:0];
  if (v30._bitSets.__begin_ == v30._bitSets.__end_ || (database = self->_database, v29[0] = table, v29[1] = database, (v14 = degas::EdgeLabelQuery::edgesForAnyLabels(v29, &v30, &v31)) == 0))
  {
    if (identifiersCopy)
    {
      v16 = v31;
      if (v31 == 0xFFFFFFFFLL)
      {
        v17 = v32[0];
        v18 = v32[1];
        if (v32[0] == v32[1])
        {
          v16 = 0;
        }

        else
        {
          v16 = 0;
          do
          {
            v19 = *v17;
            v20 = *(*v17 + 4);
            if (v20 == -1)
            {
              v21 = 0;
              v12 = 0uLL;
              do
              {
                do
                {
                  v12 = vpadalq_u16(v12, vpaddlq_u8(vcntq_s8(*(v19 + 16 + 4 * v21))));
                  v21 += 4;
                }

                while (v21 != 32);
                v21 = 0;
                v20 = vaddvq_s32(v12);
                v12 = 0uLL;
              }

              while (v20 == -1);
              *(v19 + 4) = v20;
            }

            v16 += v20;
            v17 += 2;
          }

          while (v17 != v18);
        }

        *&v31 = v16;
      }

      if (v16)
      {
        bitmap = [identifiersCopy bitmap];
        degas::Bitmap::intersectWith<degas::Bitmap>(&v31, bitmap, v24, v25, v26, v27);
      }
    }

    v22 = [[KGElementIdentifierSet alloc] initWithBitmap:&v31];
  }

  else if (error)
  {
    if ((v14 - 2) > 9)
    {
      v15 = -1;
    }

    else
    {
      v15 = qword_255972CE0[v14 - 2];
    }

    kg_errorWithCode(v15);
    *error = v22 = 0;
  }

  else
  {
    v22 = 0;
  }

  v29[0] = &v30._bitSets.__begin_;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v29);
  v30._bitCount = v32;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v30);

  return v22;
}

- (id)intersectionOfTombstoneEdgesWithLabels:(id)labels filterEdgeIdentifiers:(id)identifiers error:(id *)error
{
  v5 = [(KGDatabase *)self intersectionOfEdgesForEdgeTable:self->_database + 864 withLabels:labels filterEdgeIdentifiers:identifiers overrideIndex:0 error:error];

  return v5;
}

- (id)intersectionOfTombstoneEdgesWithLabels:(id)labels error:(id *)error
{
  v4 = [(KGDatabase *)self intersectionOfEdgesForEdgeTable:self->_database + 864 withLabels:labels filterEdgeIdentifiers:0 overrideIndex:0 error:error];

  return v4;
}

- (id)intersectionOfEdgesWithLabels:(id)labels filterEdgeIdentifiers:(id)identifiers error:(id *)error
{
  v5 = [(KGDatabase *)self intersectionOfEdgesForEdgeTable:self->_database + 248 withLabels:labels filterEdgeIdentifiers:identifiers overrideIndex:0 error:error];

  return v5;
}

- (id)noIndexIntersectionOfEdgesWithLabels:(id)labels error:(id *)error
{
  v4 = [(KGDatabase *)self intersectionOfEdgesForEdgeTable:self->_database + 248 withLabels:labels filterEdgeIdentifiers:0 overrideIndex:1 error:error];

  return v4;
}

- (id)intersectionOfEdgesWithLabels:(id)labels error:(id *)error
{
  v4 = [(KGDatabase *)self intersectionOfEdgesForEdgeTable:self->_database + 248 withLabels:labels filterEdgeIdentifiers:0 overrideIndex:0 error:error];

  return v4;
}

- (id)intersectionOfEdgesForEdgeTable:(const void *)table withLabels:(id)labels filterEdgeIdentifiers:(id)identifiers overrideIndex:(BOOL)index error:(id *)error
{
  labelsCopy = labels;
  identifiersCopy = identifiers;
  v35 = 0u;
  memset(v36, 0, 25);
  v33 = 0u;
  memset(v34, 0, 25);
  v32 = 1;
  [(KGDatabase *)self labelIdentifiers:&v33 forLabels:labelsCopy foundAll:&v32 error:0];
  if (v32 == 1 && (database = self->_database, v31[0] = table, v31[1] = database, (v16 = degas::EdgeLabelQuery::edgesForAllLabels(v31, &v33, &v35, index)) != 0))
  {
    if (error)
    {
      if ((v16 - 2) > 9)
      {
        v17 = -1;
      }

      else
      {
        v17 = qword_255972CE0[v16 - 2];
      }

      kg_errorWithCode(v17);
      *error = v24 = 0;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    if (identifiersCopy)
    {
      v18 = v35;
      if (v35 == 0xFFFFFFFFLL)
      {
        v19 = v36[0];
        v20 = v36[1];
        if (v36[0] == v36[1])
        {
          v18 = 0;
        }

        else
        {
          v18 = 0;
          do
          {
            v21 = *v19;
            v22 = *(*v19 + 4);
            if (v22 == -1)
            {
              v23 = 0;
              v14 = 0uLL;
              do
              {
                do
                {
                  v14 = vpadalq_u16(v14, vpaddlq_u8(vcntq_s8(*(v21 + 16 + 4 * v23))));
                  v23 += 4;
                }

                while (v23 != 32);
                v23 = 0;
                v22 = vaddvq_s32(v14);
                v14 = 0uLL;
              }

              while (v22 == -1);
              *(v21 + 4) = v22;
            }

            v18 += v22;
            v19 += 2;
          }

          while (v19 != v20);
        }

        *&v35 = v18;
      }

      if (v18)
      {
        bitmap = [identifiersCopy bitmap];
        degas::Bitmap::intersectWith<degas::Bitmap>(&v35, bitmap, v26, v27, v28, v29);
      }
    }

    v24 = [[KGElementIdentifierSet alloc] initWithBitmap:&v35];
  }

  v31[0] = v34;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v31);
  *&v33 = v36;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v33);

  return v24;
}

- (id)allEdgesForEdgeTable:(const void *)table withError:(id *)error
{
  v11 = 0u;
  memset(v12, 0, 25);
  database = self->_database;
  v10[0] = table;
  v10[1] = database;
  v6 = degas::EdgeLabelQuery::allEdges(v10, &v11);
  if (v6)
  {
    if (error)
    {
      if ((v6 - 2) > 9)
      {
        v7 = -1;
      }

      else
      {
        v7 = qword_255972CE0[v6 - 2];
      }

      kg_errorWithCode(v7);
      *error = v8 = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = [[KGElementIdentifierSet alloc] initWithBitmap:&v11];
  }

  v10[0] = v12;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v10);

  return v8;
}

- (id)edgeIdentifiersSortedByPropertyForName:(id)name dataType:(int64_t)type ascending:(BOOL)ascending limit:(int64_t)limit edgeIdentifiers:(id)identifiers error:(id *)error
{
  ascendingCopy = ascending;
  nameCopy = name;
  identifiersCopy = identifiers;
  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = [(KGDatabase *)self attributeIdentifierForPropertyName:nameCopy error:error];
  if (type <= 1)
  {
    if (!type)
    {
      v26 = 6;
      if (error)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }

    if (type != 1)
    {
LABEL_15:
      v28 = v16;
      goto LABEL_20;
    }

    goto LABEL_8;
  }

  switch(type)
  {
    case 2:
      database = self->_database;
      bitmap = [identifiersCopy bitmap];
      v20 = v31;
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __100__KGDatabase_edgeIdentifiersSortedByPropertyForName_dataType_ascending_limit_edgeIdentifiers_error___block_invoke_2;
      v31[3] = &unk_2797FEA80;
      v31[4] = v16;
      v21 = degas::Database::sortEdgesByRealAttribute(database, v17, ascendingCopy, limit, bitmap, v31);
      break;
    case 3:
      v24 = self->_database;
      bitmap2 = [identifiersCopy bitmap];
      v20 = v30;
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __100__KGDatabase_edgeIdentifiersSortedByPropertyForName_dataType_ascending_limit_edgeIdentifiers_error___block_invoke_3;
      v30[3] = &unk_2797FEAA8;
      v30[4] = v16;
      v21 = degas::Database::sortEdgesByStringAttribute(v24, v17, ascendingCopy, limit, bitmap2, v30);
      break;
    case 4:
LABEL_8:
      v18 = self->_database;
      bitmap3 = [identifiersCopy bitmap];
      v20 = v32;
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __100__KGDatabase_edgeIdentifiersSortedByPropertyForName_dataType_ascending_limit_edgeIdentifiers_error___block_invoke;
      v32[3] = &unk_2797FEA58;
      v32[4] = v16;
      v21 = degas::Database::sortEdgesByIntAttribute(v18, v17, ascendingCopy, limit, bitmap3, v32);
      break;
    default:
      goto LABEL_15;
  }

  v26 = v21;

  if (!v26)
  {
    goto LABEL_15;
  }

  if (error)
  {
LABEL_13:
    if ((v26 - 2) > 9)
    {
      v27 = -1;
    }

    else
    {
      v27 = qword_255972CE0[v26 - 2];
    }

    kg_errorWithCode(v27);
    *error = v28 = 0;
    goto LABEL_20;
  }

LABEL_19:
  v28 = 0;
LABEL_20:

  return v28;
}

void __100__KGDatabase_edgeIdentifiersSortedByPropertyForName_dataType_ascending_limit_edgeIdentifiers_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a2];
  [v2 addObject:?];
}

void __100__KGDatabase_edgeIdentifiersSortedByPropertyForName_dataType_ascending_limit_edgeIdentifiers_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a2];
  [v2 addObject:?];
}

void __100__KGDatabase_edgeIdentifiersSortedByPropertyForName_dataType_ascending_limit_edgeIdentifiers_error___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a2];
  [v2 addObject:?];
}

- (id)filterTombstoneEdgeIdentifiersForPropertyName:(id)name rangeValue1:(id)value1 rangeValue2:(id)value2 comparator:(unint64_t)comparator edgeIdentifiers:(id)identifiers error:(id *)error
{
  v8 = [(KGDatabase *)self filterElementIdentifiersForPropertyName:name rangeValue1:value1 rangeValue2:value2 comparator:comparator elementIdentifiers:identifiers valueTable:self->_database + 1088 rowCount:1000 error:error];

  return v8;
}

- (id)filterEdgeIdentifiersForPropertyName:(id)name rangeValue1:(id)value1 rangeValue2:(id)value2 comparator:(unint64_t)comparator edgeIdentifiers:(id)identifiers error:(id *)error
{
  nameCopy = name;
  value1Copy = value1;
  value2Copy = value2;
  identifiersCopy = identifiers;
  v18 = [(KGDatabase *)self filterElementIdentifiersForPropertyName:nameCopy rangeValue1:value1Copy rangeValue2:value2Copy comparator:comparator elementIdentifiers:identifiersCopy valueTable:self->_database + 528 rowCount:degas::Database::edgeCount(self->_database) error:error];

  return v18;
}

- (id)filterTombstoneEdgeIdentifiersForPropertyName:(id)name values:(id)values comparator:(unint64_t)comparator edgeIdentifiers:(id)identifiers error:(id *)error
{
  v7 = [(KGDatabase *)self filterElementIdentifiersForPropertyName:name values:values comparator:comparator elementIdentifiers:identifiers valueTable:self->_database + 1088 rowCount:1000 error:error];

  return v7;
}

- (id)filterEdgeIdentifiersForPropertyName:(id)name values:(id)values comparator:(unint64_t)comparator edgeIdentifiers:(id)identifiers error:(id *)error
{
  nameCopy = name;
  valuesCopy = values;
  identifiersCopy = identifiers;
  v15 = [(KGDatabase *)self filterElementIdentifiersForPropertyName:nameCopy values:valuesCopy comparator:comparator elementIdentifiers:identifiersCopy valueTable:self->_database + 528 rowCount:degas::Database::edgeCount(self->_database) error:error];

  return v15;
}

- (id)filterTombstoneEdgeIdentifiersForPropertyName:(id)name value:(id)value comparator:(unint64_t)comparator edgeIdentifiers:(id)identifiers error:(id *)error
{
  v7 = [(KGDatabase *)self filterElementIdentifiersForPropertyName:name value:value comparator:comparator elementIdentifiers:identifiers valueTable:self->_database + 1088 rowCount:1000 error:error];

  return v7;
}

- (id)filterEdgeIdentifiersForPropertyName:(id)name value:(id)value comparator:(unint64_t)comparator edgeIdentifiers:(id)identifiers error:(id *)error
{
  nameCopy = name;
  valueCopy = value;
  identifiersCopy = identifiers;
  v15 = [(KGDatabase *)self filterElementIdentifiersForPropertyName:nameCopy value:valueCopy comparator:comparator elementIdentifiers:identifiersCopy valueTable:self->_database + 528 rowCount:degas::Database::edgeCount(self->_database) error:error];

  return v15;
}

- (id)tombstoneEdgeIdentifiersForPropertyName:(id)name values:(id)values error:(id *)error
{
  v5 = [(KGDatabase *)self elementIdentifiersForPropertyName:name values:values valueTable:self->_database + 1088 rowCount:1000 error:error];

  return v5;
}

- (id)edgeIdentifiersForPropertyName:(id)name values:(id)values error:(id *)error
{
  nameCopy = name;
  valuesCopy = values;
  v10 = [(KGDatabase *)self elementIdentifiersForPropertyName:nameCopy values:valuesCopy valueTable:self->_database + 528 rowCount:degas::Database::edgeCount(self->_database) error:error];

  return v10;
}

- (id)tombstoneEdgeIdentifiersForPropertyName:(id)name rangeValue1:(id)value1 rangeValue2:(id)value2 comparator:(unint64_t)comparator error:(id *)error
{
  v7 = [(KGDatabase *)self elementIdentifiersForPropertyName:name rangeValue1:value1 rangeValue2:value2 comparator:comparator valueTable:self->_database + 1088 rowCount:1000 error:error];

  return v7;
}

- (id)edgeIdentifiersForPropertyName:(id)name rangeValue1:(id)value1 rangeValue2:(id)value2 comparator:(unint64_t)comparator error:(id *)error
{
  nameCopy = name;
  value1Copy = value1;
  value2Copy = value2;
  v15 = [(KGDatabase *)self elementIdentifiersForPropertyName:nameCopy rangeValue1:value1Copy rangeValue2:value2Copy comparator:comparator valueTable:self->_database + 528 rowCount:degas::Database::edgeCount(self->_database) error:error];

  return v15;
}

- (id)tombstoneEdgeIdentifiersForPropertyName:(id)name value:(id)value comparator:(unint64_t)comparator error:(id *)error
{
  v6 = [(KGDatabase *)self elementIdentifiersForPropertyName:name value:value comparator:comparator valueTable:self->_database + 1088 rowCount:1000 error:error];

  return v6;
}

- (id)edgeIdentifiersForPropertyName:(id)name value:(id)value comparator:(unint64_t)comparator error:(id *)error
{
  nameCopy = name;
  valueCopy = value;
  v12 = [(KGDatabase *)self elementIdentifiersForPropertyName:nameCopy value:valueCopy comparator:comparator valueTable:self->_database + 528 rowCount:degas::Database::edgeCount(self->_database) error:error];

  return v12;
}

- (id)unionOfTombstoneNodesWithLabels:(id)labels filterNodeIdentifiers:(id)identifiers error:(id *)error
{
  v5 = [(KGDatabase *)self unionOfNodesForNodeTable:self->_database + 808 withLabels:labels filterNodeIdentifiers:identifiers error:error];

  return v5;
}

- (id)unionOfTombstoneNodesWithLabels:(id)labels error:(id *)error
{
  v4 = [(KGDatabase *)self unionOfNodesForNodeTable:self->_database + 808 withLabels:labels filterNodeIdentifiers:0 error:error];

  return v4;
}

- (id)unionOfNodesWithLabels:(id)labels filterNodeIdentifiers:(id)identifiers error:(id *)error
{
  v5 = [(KGDatabase *)self unionOfNodesForNodeTable:self->_database + 192 withLabels:labels filterNodeIdentifiers:identifiers error:error];

  return v5;
}

- (id)unionOfNodesWithLabels:(id)labels error:(id *)error
{
  v4 = [(KGDatabase *)self unionOfNodesForNodeTable:self->_database + 192 withLabels:labels filterNodeIdentifiers:0 error:error];

  return v4;
}

- (id)unionOfNodesForNodeTable:(const void *)table withLabels:(id)labels filterNodeIdentifiers:(id)identifiers error:(id *)error
{
  labelsCopy = labels;
  identifiersCopy = identifiers;
  v31 = 0u;
  memset(v32, 0, 25);
  memset(&v30, 0, 41);
  [(KGDatabase *)self labelIdentifiers:&v30 forLabels:labelsCopy foundAll:0 error:0];
  if (v30._bitSets.__begin_ == v30._bitSets.__end_ || (database = self->_database, v29[0] = table, v29[1] = database, (v14 = degas::NodeLabelQuery::nodesForAnyLabels(v29, &v30, &v31)) == 0))
  {
    if (identifiersCopy)
    {
      v16 = v31;
      if (v31 == 0xFFFFFFFFLL)
      {
        v17 = v32[0];
        v18 = v32[1];
        if (v32[0] == v32[1])
        {
          v16 = 0;
        }

        else
        {
          v16 = 0;
          do
          {
            v19 = *v17;
            v20 = *(*v17 + 4);
            if (v20 == -1)
            {
              v21 = 0;
              v12 = 0uLL;
              do
              {
                do
                {
                  v12 = vpadalq_u16(v12, vpaddlq_u8(vcntq_s8(*(v19 + 16 + 4 * v21))));
                  v21 += 4;
                }

                while (v21 != 32);
                v21 = 0;
                v20 = vaddvq_s32(v12);
                v12 = 0uLL;
              }

              while (v20 == -1);
              *(v19 + 4) = v20;
            }

            v16 += v20;
            v17 += 2;
          }

          while (v17 != v18);
        }

        *&v31 = v16;
      }

      if (v16)
      {
        bitmap = [identifiersCopy bitmap];
        degas::Bitmap::intersectWith<degas::Bitmap>(&v31, bitmap, v24, v25, v26, v27);
      }
    }

    v22 = [[KGElementIdentifierSet alloc] initWithBitmap:&v31];
  }

  else if (error)
  {
    if ((v14 - 2) > 9)
    {
      v15 = -1;
    }

    else
    {
      v15 = qword_255972CE0[v14 - 2];
    }

    kg_errorWithCode(v15);
    *error = v22 = 0;
  }

  else
  {
    v22 = 0;
  }

  v29[0] = &v30._bitSets.__begin_;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v29);
  v30._bitCount = v32;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v30);

  return v22;
}

- (id)intersectionOfTombstoneNodesWithLabels:(id)labels filterNodeIdentifiers:(id)identifiers error:(id *)error
{
  v5 = [(KGDatabase *)self intersectionOfNodesForNodeTable:self->_database + 808 withLabels:labels filterNodeIdentifiers:identifiers overrideIndex:0 error:error];

  return v5;
}

- (id)intersectionOfTombstoneNodesWithLabels:(id)labels error:(id *)error
{
  v4 = [(KGDatabase *)self intersectionOfNodesForNodeTable:self->_database + 808 withLabels:labels filterNodeIdentifiers:0 overrideIndex:0 error:error];

  return v4;
}

- (id)intersectionOfNodesWithLabels:(id)labels filterNodeIdentifiers:(id)identifiers error:(id *)error
{
  v5 = [(KGDatabase *)self intersectionOfNodesForNodeTable:self->_database + 192 withLabels:labels filterNodeIdentifiers:identifiers overrideIndex:0 error:error];

  return v5;
}

- (id)noIndexIntersectionOfNodesWithLabels:(id)labels error:(id *)error
{
  v4 = [(KGDatabase *)self intersectionOfNodesForNodeTable:self->_database + 192 withLabels:labels filterNodeIdentifiers:0 overrideIndex:1 error:error];

  return v4;
}

- (id)intersectionOfNodesWithLabels:(id)labels error:(id *)error
{
  v4 = [(KGDatabase *)self intersectionOfNodesForNodeTable:self->_database + 192 withLabels:labels filterNodeIdentifiers:0 overrideIndex:0 error:error];

  return v4;
}

- (id)intersectionOfNodesForNodeTable:(const void *)table withLabels:(id)labels filterNodeIdentifiers:(id)identifiers overrideIndex:(BOOL)index error:(id *)error
{
  labelsCopy = labels;
  identifiersCopy = identifiers;
  v35 = 0u;
  memset(v36, 0, 25);
  v33 = 0u;
  memset(v34, 0, 25);
  v32 = 1;
  if (![(KGDatabase *)self labelIdentifiers:&v33 forLabels:labelsCopy foundAll:&v32 error:error])
  {
LABEL_7:
    v18 = 0;
    goto LABEL_26;
  }

  if (v32 == 1)
  {
    database = self->_database;
    v31[0] = table;
    v31[1] = database;
    v16 = degas::NodeLabelQuery::nodesForAllLabels(v31, &v33, &v35, index);
    if (v16)
    {
      if (error)
      {
        if ((v16 - 2) > 9)
        {
          v17 = -1;
        }

        else
        {
          v17 = qword_255972CE0[v16 - 2];
        }

        kg_errorWithCode(v17);
        *error = v18 = 0;
        goto LABEL_26;
      }

      goto LABEL_7;
    }
  }

  if (identifiersCopy)
  {
    v19 = v35;
    if (v35 == 0xFFFFFFFFLL)
    {
      v20 = v36[0];
      v21 = v36[1];
      if (v36[0] == v36[1])
      {
        v19 = 0;
      }

      else
      {
        v19 = 0;
        do
        {
          v22 = *v20;
          v23 = *(*v20 + 4);
          if (v23 == -1)
          {
            v24 = 0;
            v14 = 0uLL;
            do
            {
              do
              {
                v14 = vpadalq_u16(v14, vpaddlq_u8(vcntq_s8(*(v22 + 16 + 4 * v24))));
                v24 += 4;
              }

              while (v24 != 32);
              v24 = 0;
              v23 = vaddvq_s32(v14);
              v14 = 0uLL;
            }

            while (v23 == -1);
            *(v22 + 4) = v23;
          }

          v19 += v23;
          v20 += 2;
        }

        while (v20 != v21);
      }

      *&v35 = v19;
    }

    if (v19)
    {
      bitmap = [identifiersCopy bitmap];
      degas::Bitmap::intersectWith<degas::Bitmap>(&v35, bitmap, v26, v27, v28, v29);
    }
  }

  v18 = [[KGElementIdentifierSet alloc] initWithBitmap:&v35];
LABEL_26:
  v31[0] = v34;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v31);
  *&v33 = v36;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v33);

  return v18;
}

- (id)nodeIdentifiersWhereNoOutEdgesWithError:(id *)error
{
  v5 = degas::NodeCursor::NodeCursor(v14);
  degas::NodeCursor::setForNoOutEdges(v5, (self->_database + 192));
  v12 = 0u;
  memset(v13, 0, 25);
  while (1)
  {
    v6 = degas::Statement::next(v14[0]);
    if (v6 != 1)
    {
      break;
    }

    v7 = sqlite3_column_int64(*v14[0], 0);
    degas::Bitmap::setBit(&v12, v7);
  }

  v8 = v6 - 2;
  if (v6 == 2)
  {
    v9 = [[KGElementIdentifierSet alloc] initWithBitmap:&v12];
  }

  else if (error)
  {
    if (v8 > 9)
    {
      v10 = -1;
    }

    else
    {
      v10 = qword_255972CE0[v8];
    }

    kg_errorWithCode(v10);
    *error = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

  v15 = v13;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v15);
  degas::Cursor::~Cursor(v14);

  return v9;
}

- (id)nodeIdentifiersWhereNoInEdgesWithError:(id *)error
{
  v5 = degas::NodeCursor::NodeCursor(v14);
  degas::NodeCursor::setForNoInEdges(v5, (self->_database + 192));
  v12 = 0u;
  memset(v13, 0, 25);
  while (1)
  {
    v6 = degas::Statement::next(v14[0]);
    if (v6 != 1)
    {
      break;
    }

    v7 = sqlite3_column_int64(*v14[0], 0);
    degas::Bitmap::setBit(&v12, v7);
  }

  v8 = v6 - 2;
  if (v6 == 2)
  {
    v9 = [[KGElementIdentifierSet alloc] initWithBitmap:&v12];
  }

  else if (error)
  {
    if (v8 > 9)
    {
      v10 = -1;
    }

    else
    {
      v10 = qword_255972CE0[v8];
    }

    kg_errorWithCode(v10);
    *error = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

  v15 = v13;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v15);
  degas::Cursor::~Cursor(v14);

  return v9;
}

- (id)nodeIdentifiersWhereNoEdgesWithError:(id *)error
{
  v5 = degas::NodeCursor::NodeCursor(v14);
  degas::NodeCursor::setForNoEdges(v5, (self->_database + 192));
  v12 = 0u;
  memset(v13, 0, 25);
  while (1)
  {
    v6 = degas::Statement::next(v14[0]);
    if (v6 != 1)
    {
      break;
    }

    v7 = sqlite3_column_int64(*v14[0], 0);
    degas::Bitmap::setBit(&v12, v7);
  }

  v8 = v6 - 2;
  if (v6 == 2)
  {
    v9 = [[KGElementIdentifierSet alloc] initWithBitmap:&v12];
  }

  else if (error)
  {
    if (v8 > 9)
    {
      v10 = -1;
    }

    else
    {
      v10 = qword_255972CE0[v8];
    }

    kg_errorWithCode(v10);
    *error = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

  v15 = v13;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v15);
  degas::Cursor::~Cursor(v14);

  return v9;
}

- (id)allNodesForTable:(const void *)table error:(id *)error
{
  v11 = 0u;
  memset(v12, 0, 25);
  database = self->_database;
  v10[0] = table;
  v10[1] = database;
  v6 = degas::NodeLabelQuery::allNodes(v10, &v11);
  if (v6)
  {
    if (error)
    {
      if ((v6 - 2) > 9)
      {
        v7 = -1;
      }

      else
      {
        v7 = qword_255972CE0[v6 - 2];
      }

      kg_errorWithCode(v7);
      *error = v8 = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = [[KGElementIdentifierSet alloc] initWithBitmap:&v11];
  }

  v10[0] = v12;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v10);

  return v8;
}

- (id)nodeIdentifiersSortedByPropertyForName:(id)name dataType:(int64_t)type ascending:(BOOL)ascending limit:(int64_t)limit nodeIdentifiers:(id)identifiers error:(id *)error
{
  ascendingCopy = ascending;
  nameCopy = name;
  identifiersCopy = identifiers;
  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = [(KGDatabase *)self attributeIdentifierForPropertyName:nameCopy error:error];
  if (type <= 1)
  {
    if (!type)
    {
      v26 = 6;
      if (error)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }

    if (type != 1)
    {
LABEL_15:
      v28 = v16;
      goto LABEL_20;
    }

    goto LABEL_8;
  }

  switch(type)
  {
    case 2:
      database = self->_database;
      bitmap = [identifiersCopy bitmap];
      v20 = v31;
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __100__KGDatabase_nodeIdentifiersSortedByPropertyForName_dataType_ascending_limit_nodeIdentifiers_error___block_invoke_2;
      v31[3] = &unk_2797FEA80;
      v31[4] = v16;
      v21 = degas::Database::sortNodesByRealAttribute(database, v17, ascendingCopy, limit, bitmap, v31);
      break;
    case 3:
      v24 = self->_database;
      bitmap2 = [identifiersCopy bitmap];
      v20 = v30;
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __100__KGDatabase_nodeIdentifiersSortedByPropertyForName_dataType_ascending_limit_nodeIdentifiers_error___block_invoke_3;
      v30[3] = &unk_2797FEAA8;
      v30[4] = v16;
      v21 = degas::Database::sortNodesByStringAttribute(v24, v17, ascendingCopy, limit, bitmap2, v30);
      break;
    case 4:
LABEL_8:
      v18 = self->_database;
      bitmap3 = [identifiersCopy bitmap];
      v20 = v32;
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __100__KGDatabase_nodeIdentifiersSortedByPropertyForName_dataType_ascending_limit_nodeIdentifiers_error___block_invoke;
      v32[3] = &unk_2797FEA58;
      v32[4] = v16;
      v21 = degas::Database::sortNodesByIntAttribute(v18, v17, ascendingCopy, limit, bitmap3, v32);
      break;
    default:
      goto LABEL_15;
  }

  v26 = v21;

  if (!v26)
  {
    goto LABEL_15;
  }

  if (error)
  {
LABEL_13:
    if ((v26 - 2) > 9)
    {
      v27 = -1;
    }

    else
    {
      v27 = qword_255972CE0[v26 - 2];
    }

    kg_errorWithCode(v27);
    *error = v28 = 0;
    goto LABEL_20;
  }

LABEL_19:
  v28 = 0;
LABEL_20:

  return v28;
}

void __100__KGDatabase_nodeIdentifiersSortedByPropertyForName_dataType_ascending_limit_nodeIdentifiers_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a2];
  [v2 addObject:?];
}

void __100__KGDatabase_nodeIdentifiersSortedByPropertyForName_dataType_ascending_limit_nodeIdentifiers_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a2];
  [v2 addObject:?];
}

void __100__KGDatabase_nodeIdentifiersSortedByPropertyForName_dataType_ascending_limit_nodeIdentifiers_error___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a2];
  [v2 addObject:?];
}

- (id)filterTombstoneNodeIdentifiersForPropertyName:(id)name rangeValue1:(id)value1 rangeValue2:(id)value2 comparator:(unint64_t)comparator nodeIdentifiers:(id)identifiers error:(id *)error
{
  v8 = [(KGDatabase *)self filterElementIdentifiersForPropertyName:name rangeValue1:value1 rangeValue2:value2 comparator:comparator elementIdentifiers:identifiers valueTable:self->_database + 1032 rowCount:1000 error:error];

  return v8;
}

- (id)filterNodeIdentifiersForPropertyName:(id)name rangeValue1:(id)value1 rangeValue2:(id)value2 comparator:(unint64_t)comparator nodeIdentifiers:(id)identifiers error:(id *)error
{
  nameCopy = name;
  value1Copy = value1;
  value2Copy = value2;
  identifiersCopy = identifiers;
  v18 = [(KGDatabase *)self filterElementIdentifiersForPropertyName:nameCopy rangeValue1:value1Copy rangeValue2:value2Copy comparator:comparator elementIdentifiers:identifiersCopy valueTable:self->_database + 472 rowCount:degas::Database::nodeCount(self->_database) error:error];

  return v18;
}

- (id)filterElementIdentifiersForPropertyName:(id)name rangeValue1:(id)value1 rangeValue2:(id)value2 comparator:(unint64_t)comparator elementIdentifiers:(id)identifiers valueTable:(const void *)table rowCount:(unint64_t)count error:(id *)self0
{
  v48 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  value1Copy = value1;
  value2Copy = value2;
  identifiersCopy = identifiers;
  v20 = [(KGDatabase *)self attributeIdentifierForPropertyName:nameCopy error:error];
  if (!v20)
  {
    v22 = objc_alloc_init(KGElementIdentifierSet);
    goto LABEL_48;
  }

  v44 = 0u;
  memset(v45, 0, 25);
  kgPropertyType = [value1Copy kgPropertyType];
  if (kgPropertyType == [value2Copy kgPropertyType])
  {
    if (comparator >= 9)
    {
      comparator = 1;
    }

    else
    {
      comparator = comparator;
    }

    v43[0] = table;
    v43[1] = count;
    if (kgPropertyType <= 1)
    {
      if (!kgPropertyType)
      {
        v35 = KGLoggingConnection();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = value1Copy;
          _os_log_error_impl(&dword_255870000, v35, OS_LOG_TYPE_ERROR, "unable to interpret value <%@> as valid property value", buf, 0xCu);
        }

        goto LABEL_33;
      }

      if (kgPropertyType != 1)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (kgPropertyType == 2)
      {
        v27 = value1Copy;
        v28 = value2Copy;
        [v27 doubleValue];
        v30 = v29;
        [v28 doubleValue];
        if (identifiersCopy)
        {
          v26 = degas::AttributeQuery::filterElementsForAttributeValueRange(v43, v20, comparator, [identifiersCopy bitmap], &v44, v30, v31);
        }

        else
        {
          v26 = degas::AttributeQuery::elementsForAttributeValueRange(v43, v20, comparator, &v44, v30, v31);
        }

        goto LABEL_29;
      }

      if (kgPropertyType == 3)
      {
        v32 = value1Copy;
        v33 = value2Copy;
        stringNSToStd(buf, v32);
        stringNSToStd(__p, v33);
        if (identifiersCopy)
        {
          v34 = degas::AttributeQuery::filterElementsForAttributeValueRange(v43, v20, buf, __p, comparator, [identifiersCopy bitmap], &v44);
        }

        else
        {
          v34 = degas::AttributeQuery::elementsForAttributeValueRange(v43, v20, buf, __p, comparator, &v44);
        }

        v36 = v34;
        if (v42 < 0)
        {
          operator delete(__p[0]);
        }

        if (v47 < 0)
        {
          operator delete(*buf);
        }

LABEL_30:

        v37 = v36 - 2;
        if (v36 != 2)
        {
          if (!v36)
          {
            v38 = [[KGElementIdentifierSet alloc] initWithBitmap:&v44];
LABEL_34:
            v22 = v38;
            goto LABEL_47;
          }

          if (error)
          {
            if (v37 > 9)
            {
              v39 = -1;
            }

            else
            {
              v39 = qword_255972CE0[v37];
            }

            v23 = kg_errorWithCode(v39);
            goto LABEL_15;
          }

LABEL_46:
          v22 = 0;
          goto LABEL_47;
        }

LABEL_33:
        v38 = objc_alloc_init(KGElementIdentifierSet);
        goto LABEL_34;
      }

      if (kgPropertyType != 4)
      {
        goto LABEL_33;
      }
    }

    v24 = value1Copy;
    v25 = value2Copy;
    if (identifiersCopy)
    {
      v26 = degas::AttributeQuery::filterElementsForAttributeValueRange(v43, v20, [v24 longLongValue], objc_msgSend(v25, "longLongValue"), comparator, objc_msgSend(identifiersCopy, "bitmap"), &v44);
    }

    else
    {
      v26 = degas::AttributeQuery::elementsForAttributeValueRange(v43, v20, [v24 longLongValue], objc_msgSend(v25, "longLongValue"), comparator, &v44);
    }

LABEL_29:
    v36 = v26;
    goto LABEL_30;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "selecting in a range with mismatched types", buf, 2u);
    if (!error)
    {
      goto LABEL_46;
    }
  }

  else if (!error)
  {
    goto LABEL_46;
  }

  v23 = kg_errorWithCode(5004);
LABEL_15:
  v22 = 0;
  *error = v23;
LABEL_47:
  *buf = v45;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](buf);
LABEL_48:

  return v22;
}

- (id)filterTombstoneNodeIdentifiersForPropertyName:(id)name values:(id)values comparator:(unint64_t)comparator nodeIdentifiers:(id)identifiers error:(id *)error
{
  v7 = [(KGDatabase *)self filterElementIdentifiersForPropertyName:name values:values comparator:comparator elementIdentifiers:identifiers valueTable:self->_database + 1032 rowCount:1000 error:error];

  return v7;
}

- (id)filterNodeIdentifiersForPropertyName:(id)name values:(id)values comparator:(unint64_t)comparator nodeIdentifiers:(id)identifiers error:(id *)error
{
  nameCopy = name;
  valuesCopy = values;
  identifiersCopy = identifiers;
  v15 = [(KGDatabase *)self filterElementIdentifiersForPropertyName:nameCopy values:valuesCopy comparator:comparator elementIdentifiers:identifiersCopy valueTable:self->_database + 472 rowCount:degas::Database::nodeCount(self->_database) error:error];

  return v15;
}

- (id)filterElementIdentifiersForPropertyName:(id)name values:(id)values comparator:(unint64_t)comparator elementIdentifiers:(id)identifiers valueTable:(const void *)table rowCount:(unint64_t)count error:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  valuesCopy = values;
  identifiersCopy = identifiers;
  if ([(KGDatabase *)self attributeIdentifierForPropertyName:nameCopy error:error])
  {
    v26 = 0u;
    memset(v27, 0, 25);
    v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [KGDatabase distributeValuesByType:"distributeValuesByType:toIntegerValues:floatValues:stringValues:" toIntegerValues:valuesCopy floatValues:v23 stringValues:?];
    v25[0] = table;
    v25[1] = count;
    v16 = [v22 count];
    if (v16)
    {
      if (!(v16 >> 61))
      {
        operator new();
      }

      std::vector<unsigned long long>::__throw_length_error[abi:ne200100]();
    }

    v18 = [v23 count];
    if (v18)
    {
      if (!(v18 >> 61))
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(v18);
      }

      std::vector<unsigned long long>::__throw_length_error[abi:ne200100]();
    }

    v19 = [v21 count];
    if (v19)
    {
      if (!(v19 >> 61))
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(v19);
      }

      std::vector<unsigned long long>::__throw_length_error[abi:ne200100]();
    }

    v17 = [[KGElementIdentifierSet alloc] initWithBitmap:&v26];

    v25[0] = v27;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v25);
  }

  else
  {
    v17 = objc_alloc_init(KGElementIdentifierSet);
  }

  return v17;
}

- (id)filterTombstoneNodeIdentifiersForPropertyName:(id)name value:(id)value comparator:(unint64_t)comparator nodeIdentifiers:(id)identifiers error:(id *)error
{
  v7 = [(KGDatabase *)self filterElementIdentifiersForPropertyName:name value:value comparator:comparator elementIdentifiers:identifiers valueTable:self->_database + 1032 rowCount:1000 error:error];

  return v7;
}

- (id)filterNodeIdentifiersForPropertyName:(id)name value:(id)value comparator:(unint64_t)comparator nodeIdentifiers:(id)identifiers error:(id *)error
{
  nameCopy = name;
  valueCopy = value;
  identifiersCopy = identifiers;
  v15 = [(KGDatabase *)self filterElementIdentifiersForPropertyName:nameCopy value:valueCopy comparator:comparator elementIdentifiers:identifiersCopy valueTable:self->_database + 472 rowCount:degas::Database::nodeCount(self->_database) error:error];

  return v15;
}

- (id)filterElementIdentifiersForPropertyName:(id)name value:(id)value comparator:(unint64_t)comparator elementIdentifiers:(id)identifiers valueTable:(const void *)table rowCount:(unint64_t)count error:(id *)error
{
  v39 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  valueCopy = value;
  identifiersCopy = identifiers;
  if (comparator == 8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [(KGDatabase *)self filterNodeIdentifiersForPropertyName:nameCopy values:valueCopy comparator:8 nodeIdentifiers:identifiersCopy error:error];
    }

    else
    {
      v21 = KGLoggingConnection();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = valueCopy;
        _os_log_error_impl(&dword_255870000, v21, OS_LOG_TYPE_ERROR, "Case insensitive In expects an array of values, not %@", buf, 0xCu);
      }

      v18 = objc_alloc_init(KGElementIdentifierSet);
    }

    goto LABEL_17;
  }

  v19 = [(KGDatabase *)self attributeIdentifierForPropertyName:nameCopy error:error];
  if (!v19)
  {
    v18 = objc_alloc_init(KGElementIdentifierSet);
LABEL_17:
    v22 = v18;
    goto LABEL_38;
  }

  *buf = 0u;
  memset(v38, 0, 25);
  kgPropertyType = [valueCopy kgPropertyType];
  if (comparator >= 9)
  {
    comparator = 1;
  }

  else
  {
    comparator = comparator;
  }

  tableCopy = table;
  countCopy = count;
  if (kgPropertyType <= 1)
  {
    if (!kgPropertyType)
    {
      v27 = KGLoggingConnection();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *__p = 138412290;
        *&__p[4] = valueCopy;
        _os_log_error_impl(&dword_255870000, v27, OS_LOG_TYPE_ERROR, "unable to interpret value <%@> as valid property value", __p, 0xCu);
      }

      goto LABEL_35;
    }

    if (kgPropertyType != 1)
    {
LABEL_35:
      v30 = objc_alloc_init(KGElementIdentifierSet);
      goto LABEL_36;
    }

    goto LABEL_20;
  }

  if (kgPropertyType == 2)
  {
    [valueCopy doubleValue];
    if (identifiersCopy)
    {
      v24 = degas::AttributeQuery::filterElementsForAttributeValue(&tableCopy, v19, comparator, [identifiersCopy bitmap], buf, v25);
    }

    else
    {
      v24 = degas::AttributeQuery::elementsForAttributeValue(&tableCopy, v19, comparator, buf, v25);
    }

    goto LABEL_31;
  }

  if (kgPropertyType != 3)
  {
    if (kgPropertyType != 4)
    {
      goto LABEL_35;
    }

LABEL_20:
    v23 = valueCopy;
    if (identifiersCopy)
    {
      v24 = degas::AttributeQuery::filterElementsForAttributeValue(&tableCopy, v19, [v23 longLongValue], comparator, objc_msgSend(identifiersCopy, "bitmap"), buf);
    }

    else
    {
      v24 = degas::AttributeQuery::elementsForAttributeValue(&tableCopy, v19, [v23 longLongValue], comparator, buf);
    }

LABEL_31:
    v28 = v24;
    goto LABEL_32;
  }

  stringNSToStd(__p, valueCopy);
  if (identifiersCopy)
  {
    v26 = degas::AttributeQuery::filterElementsForAttributeValue(&tableCopy, v19, __p, comparator, [identifiersCopy bitmap], buf);
  }

  else
  {
    v26 = degas::AttributeQuery::elementsForAttributeValue(&tableCopy, v19, __p, comparator, buf);
  }

  v28 = v26;
  if (v36 < 0)
  {
    operator delete(*__p);
  }

LABEL_32:

  v29 = v28 - 2;
  if (v28 == 2)
  {
    goto LABEL_35;
  }

  if (v28)
  {
    if (error)
    {
      if (v29 > 9)
      {
        v32 = -1;
      }

      else
      {
        v32 = qword_255972CE0[v29];
      }

      kg_errorWithCode(v32);
      *error = v22 = 0;
    }

    else
    {
      v22 = 0;
    }

    goto LABEL_37;
  }

  v30 = [[KGElementIdentifierSet alloc] initWithBitmap:buf];
LABEL_36:
  v22 = v30;
LABEL_37:
  *__p = v38;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](__p);
LABEL_38:

  return v22;
}

- (id)tombstoneNodeIdentifiersForPropertyName:(id)name values:(id)values error:(id *)error
{
  v5 = [(KGDatabase *)self elementIdentifiersForPropertyName:name values:values valueTable:self->_database + 1032 rowCount:0 error:error];

  return v5;
}

- (id)nodeIdentifiersForPropertyName:(id)name values:(id)values error:(id *)error
{
  nameCopy = name;
  valuesCopy = values;
  v10 = [(KGDatabase *)self elementIdentifiersForPropertyName:nameCopy values:valuesCopy valueTable:self->_database + 472 rowCount:degas::Database::nodeCount(self->_database) error:error];

  return v10;
}

- (id)elementIdentifiersForPropertyName:(id)name values:(id)values valueTable:(const void *)table rowCount:(unint64_t)count error:(id *)error
{
  v80 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  valuesCopy = values;
  v58 = nameCopy;
  v13 = [(KGDatabase *)self attributeIdentifierForPropertyName:nameCopy error:error];
  if (!v13)
  {
    v29 = objc_alloc_init(KGElementIdentifierSet);
    goto LABEL_51;
  }

  v75 = 0u;
  memset(v76, 0, 25);
  v59 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v60 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v57 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [KGDatabase distributeValuesByType:"distributeValuesByType:toIntegerValues:floatValues:stringValues:" toIntegerValues:valuesCopy floatValues:v60 stringValues:?];
  v74[0] = table;
  v74[1] = count;
  v14 = [v59 count];
  v56 = v13;
  if (v14)
  {
    errorCopy = error;
    tableCopy = table;
    v54 = &v52;
    v52 = v14;
    MEMORY[0x28223BE20](v14);
    v16 = (&v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v15 >= 0x200)
    {
      v17 = 512;
    }

    else
    {
      v17 = v15;
    }

    bzero(&v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v18 = v59;
    v19 = [v18 countByEnumeratingWithState:&v70 objects:v79 count:16];
    if (v19)
    {
      v20 = 0;
      v21 = *v71;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v71 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v70 + 1) + 8 * i);
          v24 = [v23 lengthOfBytesUsingEncoding:4];
          v25 = malloc_type_malloc(v24 + 1, 0x100004077774924uLL);
          v16[v20] = v25;
          [v23 getCString:v25 maxLength:v24 + 1 encoding:4];
          ++v20;
        }

        v19 = [v18 countByEnumeratingWithState:&v70 objects:v79 count:16];
      }

      while (v19);
    }

    error = errorCopy;
    v26 = v52;
    v27 = degas::implElementsForAttributeValues<char const*>(v56, v16, v52, 1, &v75, tableCopy);
    do
    {
      free(*v16);
      *v16++ = 0;
      --v26;
    }

    while (v26);
    if ((v27 & 0xFFFFFFFD) != 0)
    {
      if (error)
      {
        if ((v27 - 2) > 9)
        {
          v28 = -1;
        }

        else
        {
          v28 = qword_255972CE0[v27 - 2];
        }

LABEL_48:
        *error = kg_errorWithCode(v28);
        goto LABEL_49;
      }

      goto LABEL_49;
    }
  }

  v30 = [v60 count];
  v31 = v30;
  if (v30)
  {
    MEMORY[0x28223BE20](v30);
    v33 = &v52 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v34 = v60;
    v35 = [v34 countByEnumeratingWithState:&v66 objects:v78 count:16];
    if (v35)
    {
      v36 = 0;
      v37 = *v67;
      do
      {
        for (j = 0; j != v35; ++j)
        {
          if (*v67 != v37)
          {
            objc_enumerationMutation(v34);
          }

          *&v33[8 * v36++] = [*(*(&v66 + 1) + 8 * j) longLongValue];
        }

        v35 = [v34 countByEnumeratingWithState:&v66 objects:v78 count:16];
      }

      while (v35);
    }

    v39 = degas::AttributeQuery::elementsForAttributeValues(v74, v56, v33, v31, 1, &v75);
    if ((v39 & 0xFFFFFFFD) != 0)
    {
      if (error)
      {
        if ((v39 - 2) > 9)
        {
          v28 = -1;
        }

        else
        {
          v28 = qword_255972CE0[v39 - 2];
        }

        goto LABEL_48;
      }

LABEL_49:
      v29 = 0;
      goto LABEL_50;
    }
  }

  v40 = [v57 count];
  v41 = v40;
  if (v40)
  {
    MEMORY[0x28223BE20](v40);
    v43 = &v52 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v44 = v57;
    v45 = [v44 countByEnumeratingWithState:&v62 objects:v77 count:16];
    if (v45)
    {
      v46 = 0;
      v47 = *v63;
      do
      {
        for (k = 0; k != v45; ++k)
        {
          if (*v63 != v47)
          {
            objc_enumerationMutation(v44);
          }

          [*(*(&v62 + 1) + 8 * k) doubleValue];
          *&v43[8 * v46++] = v49;
        }

        v45 = [v44 countByEnumeratingWithState:&v62 objects:v77 count:16];
      }

      while (v45);
    }

    v50 = degas::AttributeQuery::elementsForAttributeValues(v74, v56, v43, v41, 1, &v75);
    if ((v50 & 0xFFFFFFFD) != 0)
    {
      if (error)
      {
        if ((v50 - 2) > 9)
        {
          v28 = -1;
        }

        else
        {
          v28 = qword_255972CE0[v50 - 2];
        }

        goto LABEL_48;
      }

      goto LABEL_49;
    }
  }

  v29 = [[KGElementIdentifierSet alloc] initWithBitmap:&v75];
LABEL_50:

  v74[0] = v76;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v74);
LABEL_51:

  return v29;
}

- (void)distributeValuesByType:(id)type toIntegerValues:(id)values floatValues:(id)floatValues stringValues:(id)stringValues
{
  v29 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  valuesCopy = values;
  floatValuesCopy = floatValues;
  stringValuesCopy = stringValues;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = typeCopy;
  v14 = [v13 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v14)
  {
    v16 = *v23;
    *&v15 = 138412290;
    v21 = v15;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v22 + 1) + 8 * i);
        kgPropertyType = [v18 kgPropertyType];
        if (kgPropertyType <= 1)
        {
          if (kgPropertyType)
          {
            if (kgPropertyType != 1)
            {
              continue;
            }

LABEL_13:
            v20 = v18;
            [valuesCopy addObject:v20];
          }

          else
          {
            v20 = KGLoggingConnection();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = v21;
              v27 = v18;
              _os_log_error_impl(&dword_255870000, v20, OS_LOG_TYPE_ERROR, "unable to interpret value <%@> as valid property value", buf, 0xCu);
            }
          }

LABEL_18:

          continue;
        }

        switch(kgPropertyType)
        {
          case 2:
            v20 = v18;
            [floatValuesCopy addObject:v20];
            goto LABEL_18;
          case 3:
            v20 = v18;
            [stringValuesCopy addObject:v20];
            goto LABEL_18;
          case 4:
            goto LABEL_13;
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v14);
  }
}

- (id)tombstoneNodeIdentifiersForPropertyName:(id)name rangeValue1:(id)value1 rangeValue2:(id)value2 comparator:(unint64_t)comparator error:(id *)error
{
  v7 = [(KGDatabase *)self elementIdentifiersForPropertyName:name rangeValue1:value1 rangeValue2:value2 comparator:comparator valueTable:self->_database + 1032 rowCount:0 error:error];

  return v7;
}

- (id)nodeIdentifiersForPropertyName:(id)name rangeValue1:(id)value1 rangeValue2:(id)value2 comparator:(unint64_t)comparator error:(id *)error
{
  nameCopy = name;
  value1Copy = value1;
  value2Copy = value2;
  v15 = [(KGDatabase *)self elementIdentifiersForPropertyName:nameCopy rangeValue1:value1Copy rangeValue2:value2Copy comparator:comparator valueTable:self->_database + 472 rowCount:degas::Database::nodeCount(self->_database) error:error];

  return v15;
}

- (id)elementIdentifiersForPropertyName:(id)name rangeValue1:(id)value1 rangeValue2:(id)value2 comparator:(unint64_t)comparator valueTable:(const void *)table rowCount:(unint64_t)count error:(id *)error
{
  v43 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  value1Copy = value1;
  value2Copy = value2;
  v18 = [(KGDatabase *)self attributeIdentifierForPropertyName:nameCopy error:error];
  if (!v18)
  {
    v20 = objc_alloc_init(KGElementIdentifierSet);
    goto LABEL_41;
  }

  v39 = 0u;
  memset(v40, 0, 25);
  kgPropertyType = [value1Copy kgPropertyType];
  if (kgPropertyType == [value2Copy kgPropertyType])
  {
    if (comparator >= 9)
    {
      comparator = 1;
    }

    else
    {
      comparator = comparator;
    }

    v38[0] = table;
    v38[1] = count;
    if (kgPropertyType <= 1)
    {
      if (!kgPropertyType)
      {
        v34 = KGLoggingConnection();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = value1Copy;
          _os_log_error_impl(&dword_255870000, v34, OS_LOG_TYPE_ERROR, "unable to interpret value <%@> as valid property value", buf, 0xCu);
        }

        goto LABEL_34;
      }

      if (kgPropertyType != 1)
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (kgPropertyType == 2)
      {
        v23 = value1Copy;
        v24 = value2Copy;
        [v23 doubleValue];
        v26 = v25;
        [v24 doubleValue];
        v22 = degas::AttributeQuery::elementsForAttributeValueRange(v38, v18, comparator, &v39, v26, v27);
        goto LABEL_20;
      }

      if (kgPropertyType == 3)
      {
        v32 = value1Copy;
        v33 = value2Copy;
        stringNSToStd(buf, v32);
        stringNSToStd(__p, v33);
        v28 = degas::AttributeQuery::elementsForAttributeValueRange(v38, v18, buf, __p, comparator, &v39);
        if (v37 < 0)
        {
          operator delete(__p[0]);
        }

        if (v42 < 0)
        {
          operator delete(*buf);
        }

LABEL_21:

        v29 = v28 - 2;
        if (v28 != 2)
        {
          if (!v28)
          {
            v30 = [[KGElementIdentifierSet alloc] initWithBitmap:&v39];
LABEL_35:
            v20 = v30;
            goto LABEL_40;
          }

          if (error)
          {
            if (v29 > 9)
            {
              v31 = -1;
            }

            else
            {
              v31 = qword_255972CE0[v29];
            }

            v21 = kg_errorWithCode(v31);
            goto LABEL_15;
          }

LABEL_39:
          v20 = 0;
          goto LABEL_40;
        }

LABEL_34:
        v30 = objc_alloc_init(KGElementIdentifierSet);
        goto LABEL_35;
      }

      if (kgPropertyType != 4)
      {
        goto LABEL_34;
      }
    }

    v22 = degas::AttributeQuery::elementsForAttributeValueRange(v38, v18, [value1Copy longLongValue], objc_msgSend(value2Copy, "longLongValue"), comparator, &v39);
LABEL_20:
    v28 = v22;
    goto LABEL_21;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "selecting in a range with mismatched types", buf, 2u);
    if (!error)
    {
      goto LABEL_39;
    }
  }

  else if (!error)
  {
    goto LABEL_39;
  }

  v21 = kg_errorWithCode(5004);
LABEL_15:
  v20 = 0;
  *error = v21;
LABEL_40:
  *buf = v40;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](buf);
LABEL_41:

  return v20;
}

- (id)tombstoneNodeIdentifiersForPropertyName:(id)name value:(id)value comparator:(unint64_t)comparator error:(id *)error
{
  v6 = [(KGDatabase *)self elementIdentifiersForPropertyName:name value:value comparator:comparator valueTable:self->_database + 1032 rowCount:0 error:error];

  return v6;
}

- (id)nodeIdentifiersForPropertyName:(id)name value:(id)value comparator:(unint64_t)comparator error:(id *)error
{
  nameCopy = name;
  valueCopy = value;
  v12 = [(KGDatabase *)self elementIdentifiersForPropertyName:nameCopy value:valueCopy comparator:comparator valueTable:self->_database + 472 rowCount:degas::Database::nodeCount(self->_database) error:error];

  return v12;
}

- (id)elementIdentifiersForPropertyName:(id)name value:(id)value comparator:(unint64_t)comparator valueTable:(const void *)table rowCount:(unint64_t)count error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  valueCopy = value;
  v16 = [(KGDatabase *)self attributeIdentifierForPropertyName:nameCopy error:error];
  if (!v16)
  {
    v19 = objc_alloc_init(KGElementIdentifierSet);
    goto LABEL_30;
  }

  v29 = 0u;
  memset(v30, 0, 25);
  kgPropertyType = [valueCopy kgPropertyType];
  if (comparator >= 9)
  {
    comparator = 1;
  }

  else
  {
    comparator = comparator;
  }

  tableCopy = table;
  countCopy = count;
  if (kgPropertyType <= 1)
  {
    if (!kgPropertyType)
    {
      v25 = KGLoggingConnection();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *__p = 138412290;
        *&__p[4] = valueCopy;
        _os_log_error_impl(&dword_255870000, v25, OS_LOG_TYPE_ERROR, "unable to interpret value <%@> as valid property value", __p, 0xCu);
      }

      goto LABEL_27;
    }

    if (kgPropertyType == 1)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

  if (kgPropertyType == 2)
  {
    [valueCopy doubleValue];
    v18 = degas::AttributeQuery::elementsForAttributeValue(&tableCopy, v16, comparator, &v29, v20);
    goto LABEL_15;
  }

  if (kgPropertyType != 3)
  {
    if (kgPropertyType == 4)
    {
LABEL_9:
      v18 = degas::AttributeQuery::elementsForAttributeValue(&tableCopy, v16, [valueCopy longLongValue], comparator, &v29);
LABEL_15:
      v21 = v18;
      goto LABEL_16;
    }

LABEL_27:
    v23 = objc_alloc_init(KGElementIdentifierSet);
    goto LABEL_28;
  }

  stringNSToStd(__p, valueCopy);
  v21 = degas::AttributeQuery::elementsForAttributeValue(&tableCopy, v16, __p, comparator, &v29);
  if (v32 < 0)
  {
    operator delete(*__p);
  }

LABEL_16:

  v22 = v21 - 2;
  if (v21 == 2)
  {
    goto LABEL_27;
  }

  if (v21)
  {
    if (error)
    {
      if (v22 > 9)
      {
        v24 = -1;
      }

      else
      {
        v24 = qword_255972CE0[v22];
      }

      kg_errorWithCode(v24);
      *error = v19 = 0;
    }

    else
    {
      v19 = 0;
    }

    goto LABEL_29;
  }

  v23 = [[KGElementIdentifierSet alloc] initWithBitmap:&v29];
LABEL_28:
  v19 = v23;
LABEL_29:
  *__p = v30;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](__p);
LABEL_30:

  return v19;
}

- (BOOL)removeEdges:(id)edges error:(id *)error
{
  edgesCopy = edges;
  v7 = degas::Database::removeEdges(self->_database, [edgesCopy bitmap]);
  v8 = v7;
  if (error && v7)
  {
    if ((v7 - 2) > 9)
    {
      v9 = -1;
    }

    else
    {
      v9 = qword_255972CE0[v7 - 2];
    }

    *error = kg_errorWithCode(v9);
  }

  return v8 == 0;
}

- (BOOL)removeNodes:(id)nodes error:(id *)error
{
  nodesCopy = nodes;
  v7 = degas::Database::removeNodes(self->_database, [nodesCopy bitmap]);
  v8 = v7;
  if (error && v7)
  {
    if ((v7 - 2) > 9)
    {
      v9 = -1;
    }

    else
    {
      v9 = qword_255972CE0[v7 - 2];
    }

    *error = kg_errorWithCode(v9);
  }

  return v8 == 0;
}

- (BOOL)removeEdge:(unint64_t)edge error:(id *)error
{
  v5 = degas::Database::removeEdge(self->_database, edge, 0);
  v6 = v5;
  if (error && v5)
  {
    if ((v5 - 2) > 9)
    {
      v7 = -1;
    }

    else
    {
      v7 = qword_255972CE0[v5 - 2];
    }

    *error = kg_errorWithCode(v7);
  }

  return v6 == 0;
}

- (BOOL)removeNode:(unint64_t)node error:(id *)error
{
  v5 = degas::Database::removeNode(self->_database, node);
  v6 = v5;
  if (error && v5)
  {
    if ((v5 - 2) > 9)
    {
      v7 = -1;
    }

    else
    {
      v7 = qword_255972CE0[v5 - 2];
    }

    *error = kg_errorWithCode(v7);
  }

  return v6 == 0;
}

- (unint64_t)addEdgeWithLabels:(id)labels properties:(id)properties sourceNodeIdentifier:(unint64_t)identifier targetNodeIdentifier:(unint64_t)nodeIdentifier error:(id *)error
{
  v34 = *MEMORY[0x277D85DE8];
  labelsCopy = labels;
  propertiesCopy = properties;
  memset(v32, 0, 25);
  v31 = 0u;
  if (![labelsCopy count])
  {
    v15 = 0;
    v14 = 0;
    v16 = 0;
LABEL_5:
    v22 = v16;
    v23 = 0u;
    v24 = 0u;
    std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(&v23 + 1, v14, v15, v15 - v14);
    v25 = v32[3];
    v26[0] = 0;
    v26[1] = v22;
    memset(v27, 0, sizeof(v27));
    std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(v27 + 1, *(&v23 + 1), v24, (v24 - *(&v23 + 1)) >> 4);
    v28 = v25;
    identifierCopy = identifier;
    nodeIdentifierCopy = nodeIdentifier;
    *buf = &v23 + 8;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](buf);
    inserted = degas::Database::insertEdge(self->_database, v26);
    if (inserted)
    {
      v18 = KGLoggingConnection();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = v26[0];
        _os_log_error_impl(&dword_255870000, v18, OS_LOG_TYPE_ERROR, "Error adding edge for identifier %llu", buf, 0xCu);
      }

      if (error)
      {
        if ((inserted - 2) > 9)
        {
          v19 = -1;
        }

        else
        {
          v19 = qword_255972CE0[inserted - 2];
        }

        *error = kg_errorWithCode(v19);
      }
    }

    else if (!propertiesCopy || [(KGDatabase *)self setEdgeProperties:propertiesCopy forIdentifier:v26[0] error:error])
    {
      v20 = v26[0];
LABEL_18:
      *buf = v27 + 8;
      std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](buf);
      goto LABEL_19;
    }

    v20 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_18;
  }

  objc_msgSend_upsertLabels_error_(self);
  degas::Bitmap::operator=(&v31, v26);
  *buf = v27;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](buf);
  v14 = v32[0];
  v15 = v32[1];
  if (v32[0] != v32[1])
  {
    v16 = v31;
    goto LABEL_5;
  }

  v20 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_19:
  v26[0] = v32;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v26);

  return v20;
}

- (BOOL)addEdges:(id)edges error:(id *)error
{
  v83 = *MEMORY[0x277D85DE8];
  v68 = 0;
  v69 = 0uLL;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = edges;
  v4 = [obj countByEnumeratingWithState:&v64 objects:v82 count:16];
  if (v4)
  {
    v48 = *v65;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v65 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v64 + 1) + 8 * i);
        v62 = 0u;
        memset(v63, 0, 25);
        labels = [v6 labels];
        v8 = [labels count] == 0;

        if (v8)
        {
          v11 = *(&v63[0] + 1);
          v10 = *&v63[0];
        }

        else
        {
          labels2 = [v6 labels];
          objc_msgSend_upsertLabels_error_(self);
          degas::Bitmap::operator=(&v62, buf);
          v70 = &v58;
          std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v70);

          v11 = *(&v63[0] + 1);
          v10 = *&v63[0];
          if (*&v63[0] == *(&v63[0] + 1))
          {
            *buf = v63;
            std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](buf);

            goto LABEL_34;
          }
        }

        v53 = v62;
        v54 = 0u;
        v55 = 0u;
        std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(&v54 + 1, v10, v11, v11 - v10);
        v56 = BYTE8(v63[1]);
        sourceNode = [v6 sourceNode];
        identifier = [sourceNode identifier];
        targetNode = [v6 targetNode];
        identifier2 = [targetNode identifier];
        *buf = 0;
        *&buf[8] = v53;
        v58 = 0u;
        v59 = 0u;
        std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(&v58 + 1, *(&v54 + 1), v55, (v55 - *(&v54 + 1)) >> 4);
        v60 = v56;
        *&v61 = identifier;
        *(&v61 + 1) = identifier2;

        v70 = &v54 + 1;
        std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v70);
        v16 = v69;
        if (v69 >= *(&v69 + 1))
        {
          v18 = 0x8E38E38E38E38E39 * ((v69 - v68) >> 3);
          v19 = v18 + 1;
          if (v18 + 1 > 0x38E38E38E38E38ELL)
          {
            std::vector<unsigned long long>::__throw_length_error[abi:ne200100]();
          }

          if (0x1C71C71C71C71C72 * ((*(&v69 + 1) - v68) >> 3) > v19)
          {
            v19 = 0x1C71C71C71C71C72 * ((*(&v69 + 1) - v68) >> 3);
          }

          if (0x8E38E38E38E38E39 * ((*(&v69 + 1) - v68) >> 3) >= 0x1C71C71C71C71C7)
          {
            v20 = 0x38E38E38E38E38ELL;
          }

          else
          {
            v20 = v19;
          }

          v73 = &v68;
          if (v20)
          {
            if (v20 <= 0x38E38E38E38E38ELL)
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v21 = 8 * ((v69 - v68) >> 3);
          v70 = 0;
          v71 = v21;
          v72 = v21;
          *v21 = *buf;
          *(v21 + 16) = 0u;
          *(v21 + 32) = 0u;
          std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>((72 * v18 + 24), *(&v58 + 1), v59, (v59 - *(&v58 + 1)) >> 4);
          *(v21 + 48) = v60;
          *(v21 + 56) = v61;
          *&v72 = v72 + 72;
          v23 = v68;
          v22 = v69;
          v74 = &v68;
          v75 = &v78;
          v76 = &v79;
          v77 = 0;
          v24 = v68 + v71 - v69;
          v78 = v24;
          v79 = v24;
          if (v68 != v69)
          {
            v25 = v68 + v71 - v69;
            v26 = v68;
            do
            {
              *v25 = *v26;
              *(v25 + 1) = 0u;
              *(v25 + 2) = 0u;
              std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(v25 + 3, *(v26 + 24), *(v26 + 32), (*(v26 + 32) - *(v26 + 24)) >> 4);
              v25[48] = *(v26 + 48);
              *(v25 + 56) = *(v26 + 56);
              v26 += 72;
              v25 = (v79 + 72);
              v79 += 72;
            }

            while (v26 != v22);
            do
            {
              v80 = (v23 + 24);
              std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v80);
              v23 += 72;
            }

            while (v23 != v22);
          }

          v27 = v68;
          v28 = *(&v69 + 1);
          v68 = v24;
          v47 = v72;
          v69 = v72;
          *&v72 = v27;
          *(&v72 + 1) = v28;
          v70 = v27;
          v71 = v27;
          std::__split_buffer<degas::EdgeCreationRequest>::~__split_buffer(&v70);
          v17 = v47;
        }

        else
        {
          *v69 = *buf;
          *(v16 + 16) = 0u;
          *(v16 + 32) = 0u;
          std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>((v16 + 24), *(&v58 + 1), v59, (v59 - *(&v58 + 1)) >> 4);
          *(v16 + 48) = v60;
          *(v16 + 56) = v61;
          v17 = v16 + 72;
        }

        *&v69 = v17;
        v70 = &v58 + 1;
        std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v70);
        *buf = v63;
        std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](buf);
      }

      v4 = [obj countByEnumeratingWithState:&v64 objects:v82 count:16];
    }

    while (v4);
  }

  inserted = degas::Database::insertEdges(self->_database, &v68);
  if (inserted)
  {
    v30 = KGLoggingConnection();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_255870000, v30, OS_LOG_TYPE_ERROR, "Error adding edges", buf, 2u);
    }

    if (error)
    {
      if ((inserted - 2) > 9)
      {
        v31 = -1;
      }

      else
      {
        v31 = qword_255972CE0[inserted - 2];
      }

      kg_errorWithCode(v31);
      *error = v32 = 0;
    }

    else
    {
LABEL_34:
      v32 = 0;
    }
  }

  else
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v34 = obj;
    v35 = [v34 countByEnumeratingWithState:&v49 objects:v81 count:16];
    if (v35)
    {
      v36 = 0;
      v37 = *v50;
      while (2)
      {
        v38 = 0;
        v39 = 9 * v36;
        do
        {
          if (*v50 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v40 = *(*(&v49 + 1) + 8 * v38);
          v41 = v68[v39];
          [v40 resolveIdentifier:v41];
          properties = [v40 properties];
          v43 = [properties mutableCopy];

          [v43 setObject:0 forKeyedSubscript:@"__weight"];
          LOBYTE(v41) = [(KGDatabase *)self setEdgeProperties:v43 forIdentifier:v41 error:error];

          if ((v41 & 1) == 0)
          {
            v32 = 0;
            goto LABEL_46;
          }

          ++v36;
          ++v38;
          v39 += 9;
        }

        while (v35 != v38);
        v35 = [v34 countByEnumeratingWithState:&v49 objects:v81 count:16];
        if (v35)
        {
          continue;
        }

        break;
      }
    }

    v32 = 1;
LABEL_46:
  }

  *buf = &v68;
  std::vector<degas::EdgeCreationRequest>::__destroy_vector::operator()[abi:ne200100](buf);

  return v32;
}

- (BOOL)setEdgeProperties:(id)properties forIdentifier:(unint64_t)identifier error:(id *)error
{
  propertiesCopy = properties;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x6012000000;
  v26[3] = __Block_byref_object_copy__2286;
  v26[4] = __Block_byref_object_dispose__2287;
  v26[5] = &unk_25598DE97;
  v27 = 0u;
  memset(v28, 0, 25);
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__123;
  v20 = __Block_byref_object_dispose__124;
  v21 = 0;
  v9 = (*(*(self->_database + 52) + 24))(self->_database + 416, identifier);
  *(v23 + 6) = v9;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __52__KGDatabase_setEdgeProperties_forIdentifier_error___block_invoke;
  v15[3] = &unk_2797FEA30;
  v15[4] = self;
  v15[5] = &v16;
  v15[6] = &v22;
  v15[7] = v26;
  v15[8] = identifier;
  [propertiesCopy enumerateKeysAndObjectsUsingBlock:v15];
  v10 = *(v23 + 6);
  if (error && v10)
  {
    v11 = v17[5];
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      if ((v10 - 2) > 9)
      {
        v13 = -1;
      }

      else
      {
        v13 = qword_255972CE0[v10 - 2];
      }

      v12 = kg_errorWithCode(v13);
    }

    *error = v12;
  }

  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(v26, 8);
  v16 = v28;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v16);

  return v10 == 0;
}

void __52__KGDatabase_setEdgeProperties_forIdentifier_error___block_invoke(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [v8 dataType];
  v10 = a1[4];
  v25 = 0;
  v11 = [v10 attributeIdentifierForPropertyName:v7 error:&v25];
  v12 = v25;
  v13 = v25;
  if (!v11)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), v12);
    *a4 = 1;
    *(*(a1[6] + 8) + 24) = 7;
    goto LABEL_18;
  }

  degas::Bitmap::setBit((*(a1[7] + 8) + 48), v11);
  if (v9 <= 1)
  {
    if (v9)
    {
      if (v9 != 1)
      {
        goto LABEL_16;
      }

      v14 = degas::Database::setEdgeAttributeValueUnsigned(*(a1[4] + 8), a1[8], v11, [v8 value]);
    }

    else
    {
      v14 = degas::Database::setEdgeAttributeValue(*(a1[4] + 8), a1[8], v11, [v8 value]);
    }

    goto LABEL_14;
  }

  if (v9 == 2)
  {
    v19 = v8;
    v20 = *(a1[4] + 8);
    v21 = a1[8];
    [v19 value];
    v14 = degas::Database::setEdgeAttributeValue(v20, v21, v11, v22);
LABEL_14:
    *(*(a1[6] + 8) + 24) = v14;
    goto LABEL_15;
  }

  if (v9 != 3)
  {
    goto LABEL_16;
  }

  v15 = v8;
  v16 = *(a1[4] + 8);
  v17 = a1[8];
  v18 = [v15 value];
  std::string::basic_string[abi:ne200100]<0>(__p, [v18 cStringUsingEncoding:4]);
  *(*(a1[6] + 8) + 24) = degas::Database::setEdgeAttributeValue(v16, v17, v11, __p);
  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_15:
LABEL_16:
  if (*(*(a1[6] + 8) + 24))
  {
    *a4 = 1;
  }

LABEL_18:
}

- (unint64_t)addNodeWithLabels:(id)labels properties:(id)properties error:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  labelsCopy = labels;
  propertiesCopy = properties;
  v25 = 0u;
  memset(v26, 0, 25);
  if ([labelsCopy count])
  {
    objc_msgSend_upsertLabels_error_(self);
    degas::Bitmap::operator=(&v25, v22);
    *buf = v23;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](buf);
    v11 = *(&v26[0] + 1);
    v10 = *&v26[0];
    if (*&v26[0] == *(&v26[0] + 1))
    {
      v16 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_19;
    }

    v12 = v25;
  }

  else
  {
    v11 = 0;
    v10 = 0;
    v12 = 0;
  }

  v18 = v12;
  v19 = 0u;
  v20 = 0u;
  std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(&v19 + 1, v10, v11, v11 - v10);
  v21 = BYTE8(v26[1]);
  v22[0] = 0;
  v22[1] = v18;
  memset(v23, 0, sizeof(v23));
  std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(v23 + 1, *(&v19 + 1), v20, (v20 - *(&v19 + 1)) >> 4);
  v24 = v21;
  *buf = &v19 + 8;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](buf);
  inserted = degas::Database::insertNode(self->_database, v22);
  if (inserted)
  {
    v14 = KGLoggingConnection();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = v22[0];
      _os_log_error_impl(&dword_255870000, v14, OS_LOG_TYPE_ERROR, "Error adding node for identifier %llu", buf, 0xCu);
    }

    if (error)
    {
      if ((inserted - 2) > 9)
      {
        v15 = -1;
      }

      else
      {
        v15 = qword_255972CE0[inserted - 2];
      }

      *error = kg_errorWithCode(v15);
    }

    v16 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else if ([(KGDatabase *)self setNodeProperties:propertiesCopy forIdentifier:v22[0] error:error])
  {
    v16 = v22[0];
  }

  else
  {
    v16 = 0x7FFFFFFFFFFFFFFFLL;
  }

  *buf = v23 + 8;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](buf);
LABEL_19:
  v22[0] = v26;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v22);

  return v16;
}

- (BOOL)addNodes:(id)nodes error:(id *)error
{
  v79 = *MEMORY[0x277D85DE8];
  v64 = 0;
  v65 = 0uLL;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = nodes;
  v4 = [obj countByEnumeratingWithState:&v60 objects:v78 count:16];
  if (v4)
  {
    v5 = v59;
    v45 = *v61;
    v40 = v59;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v61 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v60 + 1) + 8 * i);
        v58 = 0u;
        memset(v59, 0, 25);
        labels = [v7 labels];
        v9 = [labels count] == 0;

        if (v9)
        {
          v12 = *(&v59[0] + 1);
          v11 = *&v59[0];
        }

        else
        {
          labels2 = [v7 labels];
          objc_msgSend_upsertLabels_error_(self);
          degas::Bitmap::operator=(&v58, buf);
          v66 = &v55;
          std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v66);

          v12 = *(&v59[0] + 1);
          v11 = *&v59[0];
          if (*&v59[0] == *(&v59[0] + 1))
          {
            *buf = v5;
            std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](buf);

            goto LABEL_34;
          }
        }

        v50 = v58;
        v51 = 0u;
        v52 = 0u;
        std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(&v51 + 1, v11, v12, v12 - v11);
        v53 = BYTE8(v59[1]);
        *buf = 0;
        *&buf[8] = v50;
        v55 = 0u;
        v56 = 0u;
        std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(&v55 + 1, *(&v51 + 1), v52, (v52 - *(&v51 + 1)) >> 4);
        v57 = v53;
        v66 = &v51 + 1;
        std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v66);
        v13 = v65;
        if (v65 >= *(&v65 + 1))
        {
          v15 = 0x6DB6DB6DB6DB6DB7 * ((v65 - v64) >> 3);
          v16 = v15 + 1;
          if ((v15 + 1) > 0x492492492492492)
          {
            std::vector<unsigned long long>::__throw_length_error[abi:ne200100]();
          }

          if (0xDB6DB6DB6DB6DB6ELL * ((*(&v65 + 1) - v64) >> 3) > v16)
          {
            v16 = 0xDB6DB6DB6DB6DB6ELL * ((*(&v65 + 1) - v64) >> 3);
          }

          if ((0x6DB6DB6DB6DB6DB7 * ((*(&v65 + 1) - v64) >> 3)) >= 0x249249249249249)
          {
            v17 = 0x492492492492492;
          }

          else
          {
            v17 = v16;
          }

          v69 = &v64;
          if (v17)
          {
            if (v17 <= 0x492492492492492)
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v18 = 8 * ((v65 - v64) >> 3);
          v66 = 0;
          v67 = v18;
          v68 = v18;
          *v18 = *buf;
          *(v18 + 16) = 0u;
          *(v18 + 32) = 0u;
          std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>((56 * v15 + 24), *(&v55 + 1), v56, (v56 - *(&v55 + 1)) >> 4);
          *(v18 + 48) = v57;
          *&v68 = v68 + 56;
          v19 = v64;
          v20 = v65;
          v70 = &v64;
          v71 = &v74;
          v72 = &v75;
          v73 = 0;
          v21 = (v64 + v67 - v65);
          v74 = v21;
          v75 = v21;
          if (v64 != v65)
          {
            v22 = v64 + v67 - v65;
            v23 = v64;
            do
            {
              *v22 = *v23;
              *(v22 + 1) = 0u;
              *(v22 + 2) = 0u;
              std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(v22 + 3, v23[3], v23[4], (v23[4] - v23[3]) >> 4);
              v22[48] = *(v23 + 48);
              v23 += 7;
              v22 = (v75 + 7);
              v75 += 7;
            }

            while (v23 != v20);
            do
            {
              v76 = (v19 + 3);
              std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v76);
              v19 += 7;
            }

            while (v19 != v20);
          }

          v24 = v64;
          v25 = *(&v65 + 1);
          v64 = v21;
          v44 = v68;
          v65 = v68;
          *&v68 = v24;
          *(&v68 + 1) = v25;
          v66 = v24;
          v67 = v24;
          std::__split_buffer<degas::NodeCreationRequest>::~__split_buffer(&v66);
          v14 = v44;
          v5 = v40;
        }

        else
        {
          *v65 = *buf;
          *(v13 + 16) = 0u;
          *(v13 + 32) = 0u;
          std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>((v13 + 24), *(&v55 + 1), v56, (v56 - *(&v55 + 1)) >> 4);
          *(v13 + 48) = v57;
          v14 = v13 + 56;
        }

        *&v65 = v14;
        v66 = &v55 + 1;
        std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v66);
        *buf = v5;
        std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](buf);
      }

      v4 = [obj countByEnumeratingWithState:&v60 objects:v78 count:16];
    }

    while (v4);
  }

  inserted = degas::Database::insertNodes(self->_database, &v64);
  if (inserted)
  {
    v27 = KGLoggingConnection();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_255870000, v27, OS_LOG_TYPE_ERROR, "Error adding nodes", buf, 2u);
    }

    if (error)
    {
      if ((inserted - 2) > 9)
      {
        v28 = -1;
      }

      else
      {
        v28 = qword_255972CE0[inserted - 2];
      }

      kg_errorWithCode(v28);
      *error = v29 = 0;
    }

    else
    {
LABEL_34:
      v29 = 0;
    }
  }

  else
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v31 = obj;
    v32 = [v31 countByEnumeratingWithState:&v46 objects:v77 count:16];
    if (v32)
    {
      v33 = 0;
      v34 = *v47;
      while (2)
      {
        v35 = 0;
        v36 = 7 * v33;
        do
        {
          if (*v47 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v37 = *(*(&v46 + 1) + 8 * v35);
          v38 = v64[v36];
          [v37 resolveIdentifier:v38];
          properties = [v37 properties];
          LOBYTE(v38) = [(KGDatabase *)self setNodeProperties:properties forIdentifier:v38 error:error];

          if ((v38 & 1) == 0)
          {
            v29 = 0;
            goto LABEL_46;
          }

          ++v33;
          ++v35;
          v36 += 7;
        }

        while (v32 != v35);
        v32 = [v31 countByEnumeratingWithState:&v46 objects:v77 count:16];
        if (v32)
        {
          continue;
        }

        break;
      }
    }

    v29 = 1;
LABEL_46:
  }

  *buf = &v64;
  std::vector<degas::NodeCreationRequest>::__destroy_vector::operator()[abi:ne200100](buf);

  return v29;
}

- (BOOL)setNodeProperties:(id)properties forIdentifier:(unint64_t)identifier error:(id *)error
{
  propertiesCopy = properties;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x6012000000;
  v25[3] = __Block_byref_object_copy__2286;
  v25[4] = __Block_byref_object_dispose__2287;
  v25[5] = &unk_25598DE97;
  v26 = 0u;
  memset(v27, 0, 25);
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__123;
  v19 = __Block_byref_object_dispose__124;
  v20 = 0;
  (*(*(self->_database + 45) + 24))(self->_database + 360, identifier);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __52__KGDatabase_setNodeProperties_forIdentifier_error___block_invoke;
  v14[3] = &unk_2797FEA30;
  v14[4] = self;
  v14[5] = &v21;
  v14[6] = &v15;
  v14[7] = v25;
  v14[8] = identifier;
  [propertiesCopy enumerateKeysAndObjectsUsingBlock:v14];
  v9 = *(v22 + 6);
  if (error && v9)
  {
    v10 = v16[5];
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      if ((v9 - 2) > 9)
      {
        v12 = -1;
      }

      else
      {
        v12 = qword_255972CE0[v9 - 2];
      }

      v11 = kg_errorWithCode(v12);
    }

    *error = v11;
  }

  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(v25, 8);
  v15 = v27;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v15);

  return v9 == 0;
}

void __52__KGDatabase_setNodeProperties_forIdentifier_error___block_invoke(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [v8 dataType];
  v10 = a1[4];
  v25 = 0;
  v11 = [v10 attributeIdentifierForPropertyName:v7 error:&v25];
  v12 = v25;
  v13 = v25;
  if (!v11)
  {
    *a4 = 1;
    *(*(a1[5] + 8) + 24) = 7;
    objc_storeStrong((*(a1[6] + 8) + 40), v12);
    goto LABEL_18;
  }

  degas::Bitmap::setBit((*(a1[7] + 8) + 48), v11);
  if (v9 <= 1)
  {
    if (v9)
    {
      if (v9 != 1)
      {
        goto LABEL_16;
      }

      v14 = degas::Database::setNodeAttributeValueUnsigned(*(a1[4] + 8), a1[8], v11, [v8 value]);
    }

    else
    {
      v14 = degas::Database::setNodeAttributeValue(*(a1[4] + 8), a1[8], v11, [v8 value]);
    }

    goto LABEL_14;
  }

  if (v9 == 2)
  {
    v19 = v8;
    v20 = *(a1[4] + 8);
    v21 = a1[8];
    [v19 value];
    v14 = degas::Database::setNodeAttributeValue(v20, v21, v11, v22);
LABEL_14:
    *(*(a1[5] + 8) + 24) = v14;
    goto LABEL_15;
  }

  if (v9 != 3)
  {
    goto LABEL_16;
  }

  v15 = v8;
  v16 = *(a1[4] + 8);
  v17 = a1[8];
  v18 = [v15 value];
  std::string::basic_string[abi:ne200100]<0>(__p, [v18 cStringUsingEncoding:4]);
  *(*(a1[5] + 8) + 24) = degas::Database::setNodeAttributeValue(v16, v17, v11, __p);
  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_15:
LABEL_16:
  if (*(*(a1[5] + 8) + 24))
  {
    *a4 = 1;
  }

LABEL_18:
}

- (void)_enumeratePropertiesWithCursor:(void *)cursor withBlock:(id)block
{
  blockCopy = block;
  v18 = 0;
  while (degas::Statement::next(*cursor) == 1)
  {
    v6 = sqlite3_column_int64(**cursor, 5);
    if (v6 > 2)
    {
      if (v6 == 3)
      {
        __p[0] = 0;
        __p[1] = 0;
        v17 = 0;
        degas::Statement::stringColumnValue(*cursor, 4, __p);
        v11 = objc_alloc(MEMORY[0x277CCACA8]);
        if (v17 >= 0)
        {
          v12 = __p;
        }

        else
        {
          v12 = __p[0];
        }

        v13 = [v11 initWithUTF8String:v12];
        v14 = [[KGStringPropertyValue alloc] initWithValue:v13];
        v15 = sqlite3_column_int64(**cursor, 0);
        blockCopy[2](blockCopy, v15, v14, &v18);

        if (SHIBYTE(v17) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_12;
      }

      if (v6 == 4)
      {
        v7 = [[KGUInt64PropertyValue alloc] initWithValue:sqlite3_column_int64(**cursor, 2)];
        v9 = sqlite3_column_int64(**cursor, 0);
        blockCopy[2](blockCopy, v9, v7, &v18);
        goto LABEL_11;
      }
    }

    else
    {
      if (v6 == 1)
      {
        v7 = [[KGInt64PropertyValue alloc] initWithValue:sqlite3_column_int64(**cursor, 2)];
        v10 = sqlite3_column_int64(**cursor, 0);
        blockCopy[2](blockCopy, v10, v7, &v18);
        goto LABEL_11;
      }

      if (v6 == 2)
      {
        v7 = [[KGDoublePropertyValue alloc] initWithValue:sqlite3_column_double(**cursor, 3)];
        v8 = sqlite3_column_int64(**cursor, 0);
        blockCopy[2](blockCopy, v8, v7, &v18);
LABEL_11:
      }
    }

LABEL_12:
    if (v18)
    {
      break;
    }
  }
}

- (void)_enumeratePropertiesForCursor:(void *)cursor block:(id)block
{
  blockCopy = block;
  v7 = 0;
  v8 = 0;
  v14 = 0;
  while (degas::Statement::next(*cursor) == 1)
  {
    v9 = sqlite3_column_int64(**cursor, 0);
    if (v9 != v8)
    {
      if (v7)
      {
        blockCopy[2](blockCopy, v8, v7, &v14);
      }

      v10 = objc_alloc_init(MEMORY[0x277CBEB38]);

      v7 = v10;
      v8 = v9;
    }

    v11 = sqlite3_column_int64(**cursor, 1);
    v12 = [(KGDatabase *)self propertyValueForCursor:cursor];
    if (v12)
    {
      v13 = [(KGDatabase *)self propertyNameForAttrIdentifier:v11];
      if (v13)
      {
        [v7 setObject:v12 forKeyedSubscript:v13];
      }
    }
  }

  if (v7)
  {
    blockCopy[2](blockCopy, v8, v7, &v14);
  }
}

- (id)propertyValueForCursor:(void *)cursor
{
  v4 = sqlite3_column_int64(**cursor, 5);
  v5 = 0;
  if (v4 <= 1)
  {
    if (v4)
    {
      if (v4 != 1)
      {
        goto LABEL_20;
      }

      v6 = sqlite3_column_int64(**cursor, 2);
      v7 = KGInt64PropertyValue;
      goto LABEL_9;
    }

    v12 = KGLoggingConnection();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p[0]) = 0;
      _os_log_error_impl(&dword_255870000, v12, OS_LOG_TYPE_ERROR, "unsupported data type for attribute value", __p, 2u);
    }

    v5 = 0;
  }

  else
  {
    if (v4 == 2)
    {
      v8 = [[KGDoublePropertyValue alloc] initWithValue:sqlite3_column_double(**cursor, 3)];
      goto LABEL_11;
    }

    if (v4 != 3)
    {
      if (v4 != 4)
      {
        goto LABEL_20;
      }

      v6 = sqlite3_column_int64(**cursor, 2);
      v7 = KGUInt64PropertyValue;
LABEL_9:
      v8 = [[v7 alloc] initWithValue:v6];
LABEL_11:
      v5 = v8;
      goto LABEL_20;
    }

    __p[0] = 0;
    __p[1] = 0;
    v15 = 0;
    degas::Statement::stringColumnValue(*cursor, 4, __p);
    v9 = objc_alloc(MEMORY[0x277CCACA8]);
    if (v15 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    v11 = [v9 initWithUTF8String:v10];
    v5 = [[KGStringPropertyValue alloc] initWithValue:v11];

    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_20:

  return v5;
}

- (void)_enumerateEdgesWithEdgeCursor:(void *)cursor propertiesCursor:(void *)propertiesCursor block:(id)block
{
  blockCopy = block;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = objc_autoreleasePoolPush();
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v18[3] = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__KGDatabase__enumerateEdgesWithEdgeCursor_propertiesCursor_block___block_invoke;
  v12[3] = &unk_2797FE990;
  v12[4] = self;
  cursorCopy = cursor;
  v9 = blockCopy;
  v13 = v9;
  v14 = &v19;
  v15 = v18;
  v16 = &v23;
  [(KGDatabase *)self _enumeratePropertiesForCursor:propertiesCursor block:v12];
  if ((v20[3] & 1) == 0)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __67__KGDatabase__enumerateEdgesWithEdgeCursor_propertiesCursor_block___block_invoke_3;
    v10[3] = &unk_2797FEA08;
    v11 = v9;
    [(KGDatabase *)self _enumerateEdgeTableWithEdgeCursor:cursor block:v10];
  }

  objc_autoreleasePoolPop(v24[3]);

  _Block_object_dispose(v18, 8);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
}

void __67__KGDatabase__enumerateEdgesWithEdgeCursor_propertiesCursor_block___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  v8 = *(a1 + 32);
  v9 = *(a1 + 72);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __67__KGDatabase__enumerateEdgesWithEdgeCursor_propertiesCursor_block___block_invoke_2;
  v18 = &unk_2797FE9E0;
  v22 = a2;
  v10 = v7;
  v19 = v10;
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v20 = v11;
  v21 = v12;
  [v8 _enumerateEdgeTableWithEdgeCursor:v9 block:&v15];
  if (([*(a1 + 32) noFatalError] & 1) == 0)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  *a4 = *(*(*(a1 + 48) + 8) + 24);
  v13 = *(*(a1 + 56) + 8);
  v14 = *(v13 + 24) + 1;
  *(v13 + 24) = v14;
  if (__ROR8__(0x8F5C28F5C28F5C29 * v14, 2) <= 0x28F5C28F5C28F5CuLL)
  {
    objc_autoreleasePoolPop(*(*(*(a1 + 64) + 8) + 24));
    *(*(*(a1 + 64) + 8) + 24) = objc_autoreleasePoolPush();
  }
}

void __67__KGDatabase__enumerateEdgesWithEdgeCursor_propertiesCursor_block___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, BOOL *a6)
{
  v11 = a3;
  if (*(a1 + 56) == a2)
  {
    v9 = *(a1 + 32);
  }

  else
  {
    v9 = MEMORY[0x277CBEC10];
  }

  (*(*(a1 + 40) + 16))();
  v10 = (*(*(*(a1 + 48) + 8) + 24) & 1) != 0 || *(a1 + 56) == a2;
  *a6 = v10;
}

- (void)_enumerateNodesWithNodeCursor:(void *)cursor propertiesCursor:(void *)propertiesCursor block:(id)block
{
  blockCopy = block;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = objc_autoreleasePoolPush();
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v18[3] = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__KGDatabase__enumerateNodesWithNodeCursor_propertiesCursor_block___block_invoke;
  v12[3] = &unk_2797FE990;
  v12[4] = self;
  cursorCopy = cursor;
  v9 = blockCopy;
  v13 = v9;
  v14 = &v19;
  v15 = v18;
  v16 = &v23;
  [(KGDatabase *)self _enumeratePropertiesForCursor:propertiesCursor block:v12];
  if ((v20[3] & 1) == 0)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __67__KGDatabase__enumerateNodesWithNodeCursor_propertiesCursor_block___block_invoke_3;
    v10[3] = &unk_2797FE9B8;
    v11 = v9;
    [(KGDatabase *)self _enumerateNodeTableWithNodeCursor:cursor block:v10];
  }

  objc_autoreleasePoolPop(v24[3]);

  _Block_object_dispose(v18, 8);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
}

void __67__KGDatabase__enumerateNodesWithNodeCursor_propertiesCursor_block___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  v8 = *(a1 + 32);
  v9 = *(a1 + 72);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __67__KGDatabase__enumerateNodesWithNodeCursor_propertiesCursor_block___block_invoke_2;
  v18 = &unk_2797FE968;
  v22 = a2;
  v10 = v7;
  v19 = v10;
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v20 = v11;
  v21 = v12;
  [v8 _enumerateNodeTableWithNodeCursor:v9 block:&v15];
  if (([*(a1 + 32) noFatalError] & 1) == 0)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  *a4 = *(*(*(a1 + 48) + 8) + 24);
  v13 = *(*(a1 + 56) + 8);
  v14 = *(v13 + 24) + 1;
  *(v13 + 24) = v14;
  if (__ROR8__(0x8F5C28F5C28F5C29 * v14, 2) <= 0x28F5C28F5C28F5CuLL)
  {
    objc_autoreleasePoolPop(*(*(*(a1 + 64) + 8) + 24));
    *(*(*(a1 + 64) + 8) + 24) = objc_autoreleasePoolPush();
  }
}

void __67__KGDatabase__enumerateNodesWithNodeCursor_propertiesCursor_block___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, BOOL *a4)
{
  v9 = a3;
  if (*(a1 + 56) == a2)
  {
    v7 = *(a1 + 32);
  }

  else
  {
    v7 = MEMORY[0x277CBEC10];
  }

  (*(*(a1 + 40) + 16))();
  v8 = (*(*(*(a1 + 48) + 8) + 24) & 1) != 0 || *(a1 + 56) == a2;
  *a4 = v8;
}

- (void)_enumerateEdgeTableWithEdgeCursor:(void *)cursor block:(id)block
{
  v46 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v32 = 0;
  do
  {
    if (degas::Statement::next(*cursor) != 1)
    {
      break;
    }

    v6 = sqlite3_column_int64(**cursor, 0);
    v30 = 0u;
    memset(v31, 0, 25);
    degas::Statement::bitmapColumnValue(*cursor, 1, &v30);
    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    degas::Bitmap::begin(&v27, &v30);
    v8 = v31[1];
    while (1)
    {
      v9 = v28;
      v10 = v27 == &v30 && v28 == -1;
      if (v10 && v29 == v8)
      {
        break;
      }

      nameCache = self->_nameCache;
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v28];
      v14 = [(KGDatabaseNameCache *)nameCache labelNameForIdentifier:v13 database:self];

      if (!v14)
      {
        v15 = KGLoggingConnection();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
        {
          degas::Bitmap::description(&v30);
          p_p = &__p;
          if (v26 < 0)
          {
            p_p = __p;
          }

          database = self->_database;
          v21 = database;
          if (database[23] < 0)
          {
            v21 = *database;
          }

          v10 = database[32] == 0;
          v22 = "false";
          if (!v10)
          {
            v22 = "true";
          }

          databaseStatus = self->_databaseStatus;
          *buf = 134219522;
          *&buf[4] = v9;
          v34 = 2048;
          v35 = v6;
          v36 = 2112;
          v37 = v7;
          v38 = 2080;
          v39 = p_p;
          v40 = 2080;
          v41 = v21;
          v42 = 2080;
          v43 = v22;
          v44 = 2048;
          v45 = databaseStatus;
          _os_log_fault_impl(&dword_255870000, v15, OS_LOG_TYPE_FAULT, "reading edge with unrecognised label identifier %lld, edge identifier %lld, labels %@, labels description %s with database url=%s, readonly=%s, database status=%ld", buf, 0x48u);
          if (v26 < 0)
          {
            operator delete(__p);
          }
        }

        [(KGDatabase *)self setFatalError:@"missing label"];
        v32 = 1;
        break;
      }

      [v7 addObject:v14];

      degas::Bitmap::iterator::operator++(&v27);
    }

    v16 = sqlite3_column_int64(**cursor, 2);
    v17 = sqlite3_column_int64(**cursor, 3);
    if ([(KGDatabase *)self noFatalError])
    {
      blockCopy[2](blockCopy, v6, v7, v16, v17, &v32);
    }

    v18 = v32;

    *buf = v31;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](buf);
  }

  while ((v18 & 1) == 0);
}

- (void)enumeratePropertyValuesForEdgesWithIdentifiers:(id)identifiers propertyName:(id)name withBlock:(id)block
{
  blockCopy = block;
  objc_msgSend_edgeAttributeValueCursorWithIdentifiers_propertyName_(self);
  [(KGDatabase *)self _enumeratePropertiesWithCursor:v7 withBlock:blockCopy];
  degas::Cursor::~Cursor(v7);
}

- (AttributeValueCursor)edgeAttributeValueCursorWithIdentifiers:(id)identifiers propertyName:(id)name
{
  v7 = v4;
  v23 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  nameCopy = name;
  v18 = 0;
  v10 = [(KGDatabase *)self attributeIdentifierForPropertyName:nameCopy error:&v18];
  v11 = v18;
  v12 = v11;
  if (!v10 && v11)
  {
    v13 = KGLoggingConnection();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v20 = nameCopy;
      v21 = 2112;
      v22 = v12;
      _os_log_error_impl(&dword_255870000, v13, OS_LOG_TYPE_ERROR, "error looking up attribute by property name %@, error=%@", buf, 0x16u);
    }
  }

  v14 = degas::AttributeValueTable::prepareStatementToReadByBitmapAndAttrIdIdentifier((self->_database + 416), [identifiersCopy bitmap], v10);
  v15 = v14[1];
  *v7 = *v14;
  v7[1] = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(v15 + 1, 1uLL, memory_order_relaxed);
  }

  result.var0.var1 = v17;
  result.var0.var0 = v16;
  return result;
}

- (AttributeValueCursor)tombstoneEdgeAttributeValueCursorWithIdentifiers:(id)identifiers
{
  v5 = v3;
  identifiersCopy = identifiers;
  v11 = identifiersCopy;
  if (identifiersCopy)
  {
    if ([identifiersCopy count] == 1)
    {
      degas::AttributeValueCursor::AttributeValueCursor(v5, [v11 firstElement], (self->_database + 976));
    }

    else
    {
      degas::AttributeValueCursor::AttributeValueCursor(v5, [v11 bitmap], (self->_database + 976));
    }
  }

  else
  {
    AllStatement = degas::AttributeValueTable::readAllStatement((self->_database + 976));
    v8 = AllStatement[1];
    *v5 = *AllStatement;
    v5[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
    }
  }

  result.var0.var1 = v10;
  result.var0.var0 = v9;
  return result;
}

- (AttributeValueCursor)edgeAttributeValueCursorWithIdentifiers:(id)identifiers
{
  v5 = v3;
  identifiersCopy = identifiers;
  v11 = identifiersCopy;
  if (identifiersCopy)
  {
    if ([identifiersCopy count] == 1)
    {
      degas::AttributeValueCursor::AttributeValueCursor(v5, [v11 firstElement], (self->_database + 416));
    }

    else
    {
      degas::AttributeValueCursor::AttributeValueCursor(v5, [v11 bitmap], (self->_database + 416));
    }
  }

  else
  {
    AllStatement = degas::AttributeValueTable::readAllStatement((self->_database + 416));
    v8 = AllStatement[1];
    *v5 = *AllStatement;
    v5[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
    }
  }

  result.var0.var1 = v10;
  result.var0.var0 = v9;
  return result;
}

- (EdgeCursor)tombstoneEdgeCursorWithIdentifiers:(id)identifiers
{
  v5 = v3;
  identifiersCopy = identifiers;
  degas::EdgeCursor::EdgeCursor(v5);
  if (identifiersCopy)
  {
    if ([identifiersCopy count] == 1)
    {
      degas::EdgeCursor::setForIdentifier(v5, [identifiersCopy firstElement], (self->_database + 864));
    }

    else
    {
      degas::EdgeCursor::setForIdentifiers(v5, [identifiersCopy bitmap], (self->_database + 864));
    }
  }

  else
  {
    degas::EdgeCursor::setForSelectAll(v5, (self->_database + 864));
  }

  result.var0.var1 = v7;
  result.var0.var0 = v6;
  return result;
}

- (EdgeCursor)edgeCursorWithIdentifiers:(id)identifiers
{
  v5 = v3;
  identifiersCopy = identifiers;
  degas::EdgeCursor::EdgeCursor(v5);
  if (identifiersCopy)
  {
    if ([identifiersCopy count] == 1)
    {
      degas::EdgeCursor::setForIdentifier(v5, [identifiersCopy firstElement], (self->_database + 248));
    }

    else
    {
      degas::EdgeCursor::setForIdentifiers(v5, [identifiersCopy bitmap], (self->_database + 248));
    }
  }

  else
  {
    degas::EdgeCursor::setForSelectAll(v5, (self->_database + 248));
  }

  result.var0.var1 = v7;
  result.var0.var0 = v6;
  return result;
}

- (void)_enumerateNodeTableWithNodeCursor:(void *)cursor block:(id)block
{
  v46 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v32 = 0;
  *&v6 = 134219522;
  v23 = v6;
  do
  {
    if (degas::Statement::next(*cursor) != 1)
    {
      break;
    }

    v7 = sqlite3_column_int64(**cursor, 0);
    v30 = 0u;
    memset(v31, 0, 25);
    degas::Statement::bitmapColumnValue(*cursor, 1, &v30);
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    degas::Bitmap::begin(&v27, &v30);
    v9 = v31[1];
    while (1)
    {
      v10 = v28;
      v11 = v27 == &v30 && v28 == -1;
      if (v11 && v29 == v9)
      {
        break;
      }

      nameCache = self->_nameCache;
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v28];
      v15 = [(KGDatabaseNameCache *)nameCache labelNameForIdentifier:v14 database:self];

      if (!v15)
      {
        v16 = KGLoggingConnection();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          degas::Bitmap::description(&v30);
          p_p = &__p;
          if (v26 < 0)
          {
            p_p = __p;
          }

          database = self->_database;
          v20 = database;
          if (database[23] < 0)
          {
            v20 = *database;
          }

          v11 = database[32] == 0;
          v21 = "false";
          if (!v11)
          {
            v21 = "true";
          }

          databaseStatus = self->_databaseStatus;
          *buf = v23;
          *&buf[4] = v10;
          v34 = 2048;
          v35 = v7;
          v36 = 2112;
          v37 = v8;
          v38 = 2080;
          v39 = p_p;
          v40 = 2080;
          v41 = v20;
          v42 = 2080;
          v43 = v21;
          v44 = 2048;
          v45 = databaseStatus;
          _os_log_fault_impl(&dword_255870000, v16, OS_LOG_TYPE_FAULT, "reading node with unrecognised label identifier %lld, node identifier %lld, labels %@, labels description %s database url=%s, readonly=%s, database status=%ld", buf, 0x48u);
          if (v26 < 0)
          {
            operator delete(__p);
          }
        }

        [(KGDatabase *)self setFatalError:@"missing label"];
        v32 = 1;
        break;
      }

      [v8 addObject:v15];

      degas::Bitmap::iterator::operator++(&v27);
    }

    if ([(KGDatabase *)self noFatalError])
    {
      blockCopy[2](blockCopy, v7, v8, &v32);
    }

    v17 = v32;

    *buf = v31;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](buf);
  }

  while ((v17 & 1) == 0);
}

- (void)enumeratePropertyValuesForNodesWithIdentifiers:(id)identifiers propertyName:(id)name withBlock:(id)block
{
  blockCopy = block;
  objc_msgSend_nodeAttributeValueCursorWithIdentifiers_propertyName_(self);
  [(KGDatabase *)self _enumeratePropertiesWithCursor:v7 withBlock:blockCopy];
  degas::Cursor::~Cursor(v7);
}

- (AttributeValueCursor)nodeAttributeValueCursorWithIdentifiers:(id)identifiers propertyName:(id)name
{
  v7 = v4;
  v23 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  nameCopy = name;
  v18 = 0;
  v10 = [(KGDatabase *)self attributeIdentifierForPropertyName:nameCopy error:&v18];
  v11 = v18;
  v12 = v11;
  if (!v10 && v11)
  {
    v13 = KGLoggingConnection();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v20 = nameCopy;
      v21 = 2112;
      v22 = v12;
      _os_log_error_impl(&dword_255870000, v13, OS_LOG_TYPE_ERROR, "error looking up attribute by property name %@, error=%@", buf, 0x16u);
    }
  }

  v14 = degas::AttributeValueTable::prepareStatementToReadByBitmapAndAttrIdIdentifier((self->_database + 360), [identifiersCopy bitmap], v10);
  v15 = v14[1];
  *v7 = *v14;
  v7[1] = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(v15 + 1, 1uLL, memory_order_relaxed);
  }

  result.var0.var1 = v17;
  result.var0.var0 = v16;
  return result;
}

- (AttributeValueCursor)tombstoneNodeAttributeValueCursorWithIdentifiers:(id)identifiers
{
  v5 = v3;
  identifiersCopy = identifiers;
  v11 = identifiersCopy;
  if (identifiersCopy)
  {
    if ([identifiersCopy count] == 1)
    {
      degas::AttributeValueCursor::AttributeValueCursor(v5, [v11 firstElement], (self->_database + 920));
    }

    else
    {
      degas::AttributeValueCursor::AttributeValueCursor(v5, [v11 bitmap], (self->_database + 920));
    }
  }

  else
  {
    AllStatement = degas::AttributeValueTable::readAllStatement((self->_database + 360));
    v8 = AllStatement[1];
    *v5 = *AllStatement;
    v5[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
    }
  }

  result.var0.var1 = v10;
  result.var0.var0 = v9;
  return result;
}

- (AttributeValueCursor)nodeAttributeValueCursorWithIdentifiers:(id)identifiers
{
  v5 = v3;
  identifiersCopy = identifiers;
  v11 = identifiersCopy;
  if (identifiersCopy)
  {
    if ([identifiersCopy count] == 1)
    {
      degas::AttributeValueCursor::AttributeValueCursor(v5, [v11 firstElement], (self->_database + 360));
    }

    else
    {
      degas::AttributeValueCursor::AttributeValueCursor(v5, [v11 bitmap], (self->_database + 360));
    }
  }

  else
  {
    AllStatement = degas::AttributeValueTable::readAllStatement((self->_database + 360));
    v8 = AllStatement[1];
    *v5 = *AllStatement;
    v5[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
    }
  }

  result.var0.var1 = v10;
  result.var0.var0 = v9;
  return result;
}

- (NodeCursor)tombstoneNodeCursorWithIdentifiers:(id)identifiers
{
  v5 = v3;
  identifiersCopy = identifiers;
  degas::NodeCursor::NodeCursor(v5);
  if (identifiersCopy)
  {
    if ([identifiersCopy count] == 1)
    {
      degas::NodeCursor::setForIdentifier(v5, [identifiersCopy firstElement], (self->_database + 808));
    }

    else
    {
      degas::NodeCursor::setForIdentifiers(v5, [identifiersCopy bitmap], (self->_database + 808));
    }
  }

  else
  {
    degas::NodeCursor::setForSelectAll(v5, (self->_database + 808));
  }

  result.var0.var1 = v7;
  result.var0.var0 = v6;
  return result;
}

- (NodeCursor)nodeCursorWithIdentifiers:(id)identifiers
{
  v5 = v3;
  identifiersCopy = identifiers;
  degas::NodeCursor::NodeCursor(v5);
  if (identifiersCopy)
  {
    if ([identifiersCopy count] == 1)
    {
      degas::NodeCursor::setForIdentifier(v5, [identifiersCopy firstElement], (self->_database + 192));
    }

    else
    {
      degas::NodeCursor::setForIdentifiers(v5, [identifiersCopy bitmap], (self->_database + 192));
    }
  }

  else
  {
    degas::NodeCursor::setForSelectAll(v5, (self->_database + 192));
  }

  result.var0.var1 = v7;
  result.var0.var0 = v6;
  return result;
}

- (void)enumerateSourceAndTargetIdentifiersWithEdgeIdentifiers:(id)identifiers block:(id)block
{
  blockCopy = block;
  objc_msgSend_edgeCursorWithIdentifiers_(self);
  v9 = 0;
  do
  {
    if (degas::Statement::next(v10) != 1)
    {
      break;
    }

    v6 = sqlite3_column_int64(*v10, 0);
    v7 = sqlite3_column_int64(*v10, 2);
    v8 = sqlite3_column_int64(*v10, 3);
    blockCopy[2](blockCopy, v6, v7, v8, &v9);
  }

  while ((v9 & 1) == 0);
  degas::Cursor::~Cursor(&v10);
}

- (void)enumerateTombstoneEdgesWithIdentifiers:(id)identifiers block:(id)block
{
  identifiersCopy = identifiers;
  blockCopy = block;
  objc_msgSend_tombstoneEdgeCursorWithIdentifiers_(self);
  objc_msgSend_tombstoneEdgeAttributeValueCursorWithIdentifiers_(self);
  [(KGDatabase *)self _enumerateEdgesWithEdgeCursor:v9 propertiesCursor:v8 block:blockCopy];
  degas::Cursor::~Cursor(v8);
  degas::Cursor::~Cursor(v9);
}

- (void)enumerateTombstoneNodesWithIdentifiers:(id)identifiers block:(id)block
{
  identifiersCopy = identifiers;
  blockCopy = block;
  objc_msgSend_tombstoneNodeCursorWithIdentifiers_(self);
  objc_msgSend_tombstoneNodeAttributeValueCursorWithIdentifiers_(self);
  [(KGDatabase *)self _enumerateNodesWithNodeCursor:v9 propertiesCursor:v8 block:blockCopy];
  degas::Cursor::~Cursor(v8);
  degas::Cursor::~Cursor(v9);
}

- (void)enumerateEdgesWithIdentifiers:(id)identifiers block:(id)block
{
  identifiersCopy = identifiers;
  blockCopy = block;
  objc_msgSend_edgeCursorWithIdentifiers_(self);
  objc_msgSend_edgeAttributeValueCursorWithIdentifiers_(self);
  [(KGDatabase *)self _enumerateEdgesWithEdgeCursor:v9 propertiesCursor:v8 block:blockCopy];
  degas::Cursor::~Cursor(v8);
  degas::Cursor::~Cursor(v9);
}

- (void)enumerateNodesWithIdentifiers:(id)identifiers block:(id)block
{
  identifiersCopy = identifiers;
  blockCopy = block;
  objc_msgSend_nodeCursorWithIdentifiers_(self);
  objc_msgSend_nodeAttributeValueCursorWithIdentifiers_(self);
  [(KGDatabase *)self _enumerateNodesWithNodeCursor:v9 propertiesCursor:v8 block:blockCopy];
  degas::Cursor::~Cursor(v8);
  degas::Cursor::~Cursor(v9);
}

- (int)degasEdgeDirectionFromKG:(unint64_t)g
{
  v7 = *MEMORY[0x277D85DE8];
  if (g - 1 < 3)
  {
    return 3 - g;
  }

  gCopy = g;
  v5 = KGLoggingConnection();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6[0] = 67109120;
    v6[1] = gCopy;
    _os_log_error_impl(&dword_255870000, v5, OS_LOG_TYPE_ERROR, "invalid edge direction: %d", v6, 8u);
  }

  return 0;
}

- (id)propertyNameForAttrIdentifier:(unint64_t)identifier
{
  nameCache = self->_nameCache;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:identifier];
  v6 = [(KGDatabaseNameCache *)nameCache propertyNameForIdentifier:v5 database:self];

  return v6;
}

- (unint64_t)attributeIdentifierForPropertyName:(id)name error:(id *)error
{
  v4 = [(KGDatabaseNameCache *)self->_nameCache attrIdentifierForPropertyName:name database:self updating:1 error:error];
  v5 = v4;
  if (v4)
  {
    unsignedIntegerValue = [v4 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (unint64_t)insertNewProperty:(id)property error:(id *)error
{
  v14 = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  stringNSToStd(__p, propertyCopy);
  database = self->_database;
  if (*(database + 32))
  {
LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  *buf = 0;
  v7 = degas::AttributeTable::insert(database + 38, buf, __p);
  if (v7)
  {
    if (v7 != 8)
    {
      v8 = KGLoggingConnection();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = propertyCopy;
        _os_log_error_impl(&dword_255870000, v8, OS_LOG_TYPE_ERROR, "failed to create new attribute %@", buf, 0xCu);
      }
    }

    goto LABEL_7;
  }

  v9 = *buf;
LABEL_8:
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return v9;
}

- (NSUUID)graphIdentifier
{
  v14 = *MEMORY[0x277D85DE8];
  v10[0] = 0;
  v10[1] = 0;
  v11 = 0;
  v3 = degas::Database::metadataValue(self->_database, 2, v10);
  v4 = v3;
  if (v3)
  {
    if (v3 == 2)
    {
      v5 = objc_alloc_init(MEMORY[0x277CCAD78]);
      uUIDString = [v5 UUIDString];
      stringNSToStd(__p, uUIDString);
      database = self->_database;
      if ((database[32] & 1) == 0)
      {
        degas::MetadataTable::insertOrUpdate((database + 136), 2, __p);
      }

      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      uUIDString = KGLoggingConnection();
      if (os_log_type_enabled(uUIDString, OS_LOG_TYPE_ERROR))
      {
        LODWORD(__p[0]) = 67109120;
        HIDWORD(__p[0]) = v4;
        _os_log_error_impl(&dword_255870000, uUIDString, OS_LOG_TYPE_ERROR, "failed reading graph identifier metadata rc=%d", __p, 8u);
      }

      v5 = 0;
    }
  }

  else
  {
    if (v11 >= 0)
    {
      v8 = v10;
    }

    else
    {
      v8 = v10[0];
    }

    uUIDString = [MEMORY[0x277CCACA8] stringWithUTF8String:v8];
    v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:uUIDString];
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10[0]);
  }

  return v5;
}

- (void)setGraphVersion:(unint64_t)version
{
  database = self->_database;
  if ((database[32] & 1) == 0)
  {
    degas::MetadataTable::insertOrUpdate((database + 136), 1, version);
  }
}

- (unint64_t)graphVersion
{
  v9 = *MEMORY[0x277D85DE8];
  v6 = 0;
  v2 = degas::Database::metadataValue(self->_database, 1, &v6);
  if (v2 != 2)
  {
    v3 = v2;
    if (!v2)
    {
      return v6;
    }

    v5 = KGLoggingConnection();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v8 = v3;
      _os_log_error_impl(&dword_255870000, v5, OS_LOG_TYPE_ERROR, "failed reading graph version metadata rc=%d", buf, 8u);
    }
  }

  return 0;
}

- (id)labelsOfEdgesForIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v12 = 0u;
  memset(v13, 0, 25);
  degas::EdgeCursor::EdgeCursor(v11);
  degas::EdgeCursor::setForIdentifiers(v11, [identifiersCopy bitmap], (self->_database + 248));
  while (degas::Statement::next(v11[0]) == 1)
  {
    v9 = 0u;
    memset(v10, 0, 25);
    degas::Statement::bitmapColumnValue(v11[0], 1, &v9);
    degas::Bitmap::unionWith<degas::Bitmap>(&v12, &v9);
    v14 = v10;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v14);
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  degas::Bitmap::begin(&v9, &v12);
  while (1)
  {
    v6 = v9 == &v12 && *(&v9 + 1) == -1;
    if (v6 && v10[0] == v13[1])
    {
      break;
    }

    v7 = [(KGDatabase *)self labelNameForLabelIdentifier:?];
    if (v7)
    {
      [v5 addObject:v7];
    }

    degas::Bitmap::iterator::operator++(&v9);
  }

  degas::Cursor::~Cursor(v11);
  *&v9 = v13;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v9);

  return v5;
}

- (id)labelsOfNodesForIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v12 = 0u;
  memset(v13, 0, 25);
  degas::NodeCursor::NodeCursor(v11);
  degas::NodeCursor::setForIdentifiers(v11, [identifiersCopy bitmap], (self->_database + 192));
  while (degas::Statement::next(v11[0]) == 1)
  {
    v9 = 0u;
    memset(v10, 0, 25);
    degas::Statement::bitmapColumnValue(v11[0], 1, &v9);
    degas::Bitmap::unionWith<degas::Bitmap>(&v12, &v9);
    v14 = v10;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v14);
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  degas::Bitmap::begin(&v9, &v12);
  while (1)
  {
    v6 = v9 == &v12 && *(&v9 + 1) == -1;
    if (v6 && v10[0] == v13[1])
    {
      break;
    }

    v7 = [(KGDatabase *)self labelNameForLabelIdentifier:?];
    if (v7)
    {
      [v5 addObject:v7];
    }

    degas::Bitmap::iterator::operator++(&v9);
  }

  degas::Cursor::~Cursor(v11);
  *&v9 = v13;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v9);

  return v5;
}

- (id)edgeLabels
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  AllStatement = degas::LabelTable::readAllStatement((self->_database + 80));
  v5 = *AllStatement;
  v6 = AllStatement[1];
  v15[0] = v5;
  v15[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  while (degas::Statement::next(v5) == 1)
  {
    v13 = 0u;
    memset(v14, 0, 25);
    degas::Statement::bitmapColumnValue(v15[0], 3, &v13);
    if (v14[0] != v14[1])
    {
      __p[0] = 0;
      __p[1] = 0;
      v12 = 0;
      degas::Statement::stringColumnValue(v15[0], 1, __p);
      v7 = objc_alloc(MEMORY[0x277CCACA8]);
      if (v12 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      v9 = [v7 initWithUTF8String:v8];
      [v3 addObject:v9];

      if (SHIBYTE(v12) < 0)
      {
        operator delete(__p[0]);
      }
    }

    __p[0] = v14;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](__p);
    v5 = v15[0];
  }

  degas::Cursor::~Cursor(v15);

  return v3;
}

- (id)nodeLabels
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  AllStatement = degas::LabelTable::readAllStatement((self->_database + 80));
  v5 = *AllStatement;
  v6 = AllStatement[1];
  v15[0] = v5;
  v15[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  while (degas::Statement::next(v5) == 1)
  {
    v13 = 0u;
    memset(v14, 0, 25);
    degas::Statement::bitmapColumnValue(v15[0], 2, &v13);
    if (v14[0] != v14[1])
    {
      __p[0] = 0;
      __p[1] = 0;
      v12 = 0;
      degas::Statement::stringColumnValue(v15[0], 1, __p);
      v7 = objc_alloc(MEMORY[0x277CCACA8]);
      if (v12 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      v9 = [v7 initWithUTF8String:v8];
      [v3 addObject:v9];

      if (SHIBYTE(v12) < 0)
      {
        operator delete(__p[0]);
      }
    }

    __p[0] = v14;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](__p);
    v5 = v15[0];
  }

  degas::Cursor::~Cursor(v15);

  return v3;
}

- (id)labelIdentifierForLabelName:(id)name error:(id *)error
{
  v4 = [(KGDatabaseNameCache *)self->_nameCache labelIdentifierForName:name database:self updating:0 error:error];

  return v4;
}

- (id)labelNameForLabelIdentifier:(unint64_t)identifier
{
  nameCache = self->_nameCache;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:identifier];
  v6 = [(KGDatabaseNameCache *)nameCache labelNameForIdentifier:v5 database:self];

  return v6;
}

- (BOOL)labelIdentifiers:(void *)identifiers forLabels:(id)labels foundAll:(BOOL *)all error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  labelsCopy = labels;
  isReadOnly = [(KGDatabase *)self isReadOnly];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = labelsCopy;
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v20 = labelsCopy;
    v13 = *v23;
    v14 = 1;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [(KGDatabaseNameCache *)self->_nameCache labelIdentifierForName:*(*(&v22 + 1) + 8 * i) database:self updating:!isReadOnly error:error, v20];
        v17 = v16;
        if (v16)
        {
          degas::Bitmap::setBit(identifiers, [v16 unsignedIntegerValue]);
        }

        else
        {
          if (!isReadOnly)
          {
            if (all)
            {
              *all = 0;
            }

            v18 = 0;
            goto LABEL_20;
          }

          v14 = 0;
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v14 = 1;
  }

  if (all)
  {
    *all = v14 & 1;
  }

  v18 = 1;
LABEL_20:

  return v18;
}

- (Bitmap)upsertLabels:(SEL)labels error:(id)error
{
  v20 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  *&retstr->_bitCount = 0u;
  *&retstr->_bitSets.__begin_ = 0u;
  *(&retstr->_bitSets.__end_ + 1) = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = errorCopy;
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = *v16;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = [(KGDatabase *)self upsertLabel:*(*(&v15 + 1) + 8 * i) error:a5, v15];
        if (!v13)
        {
          degas::Bitmap::emptyBitmap(0);
          degas::Bitmap::operator=(retstr, &degas::Bitmap::emptyBitmap(void)::bitmap);
          goto LABEL_11;
        }

        degas::Bitmap::setBit(retstr, v13);
      }

      v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return result;
}

- (unint64_t)upsertLabel:(id)label error:(id *)error
{
  v4 = [(KGDatabaseNameCache *)self->_nameCache labelIdentifierForName:label database:self updating:1 error:error];
  v5 = v4;
  if (v4)
  {
    unsignedIntegerValue = [v4 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (unint64_t)insertNewLabel:(id)label error:(id *)error
{
  v16 = *MEMORY[0x277D85DE8];
  labelCopy = label;
  v13 = 0;
  stringNSToStd(__p, labelCopy);
  v6 = degas::Database::addLabel(self->_database, &v13, __p);
  if (v6)
  {
    if (v6 == 5)
    {
      v7 = KGLoggingConnection();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v15 = labelCopy;
        _os_log_debug_impl(&dword_255870000, v7, OS_LOG_TYPE_DEBUG, "duplicate label:%@ already exists in database", buf, 0xCu);
      }
    }

    else
    {
      v8 = KGLoggingConnection();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v15 = labelCopy;
        _os_log_error_impl(&dword_255870000, v8, OS_LOG_TYPE_ERROR, "failed to create new label %@", buf, 0xCu);
      }

      v13 = 0;
    }
  }

  v9 = v13;
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return v9;
}

- (BOOL)copyToURL:(id)l error:(id *)error
{
  lCopy = l;
  if (![lCopy isEqual:self->_url])
  {
    database = self->_database;
    std::string::basic_string[abi:ne200100]<0>(__p, [lCopy fileSystemRepresentation]);
    degas::Database::copyDatabase(database, __p);
  }

  if (error)
  {
    *error = kg_errorWithCode(5003);
  }

  return 0;
}

- (void)close
{
  v8 = *MEMORY[0x277D85DE8];
  [(KGGraphLockFile *)self->_lockFile unlock];
  degas::Database::close(self->_database);
  database = self->_database;
  if (database)
  {
    degas::Database::~Database(database);
    MEMORY[0x259C43EB0]();
  }

  v4 = KGLoggingConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    url = self->_url;
    v6 = 138412290;
    v7 = url;
    _os_log_impl(&dword_255870000, v4, OS_LOG_TYPE_INFO, "closing graph database at path %@", &v6, 0xCu);
  }

  self->_database = 0;
  +[KGElementIdentifierSet drainBitsetPool];
}

- (id)openModeDescription:(unint64_t)description
{
  descriptionCopy = description;
  v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v5 = v4;
  if (descriptionCopy)
  {
    v6 = @"read-only";
  }

  else
  {
    if ((descriptionCopy & 2) == 0)
    {
      goto LABEL_6;
    }

    v6 = @"read-write";
  }

  [v4 appendString:v6];
LABEL_6:
  if ((descriptionCopy & 4) != 0)
  {
    [v5 appendString:@" create"];
  }

  if ((descriptionCopy & 0x40) != 0)
  {
    v7 = @" protection class A";
  }

  else if ((descriptionCopy & 0x20) != 0)
  {
    v7 = @" protection class B";
  }

  else
  {
    if ((descriptionCopy & 0x10) == 0)
    {
      goto LABEL_15;
    }

    v7 = @" protection class C";
  }

  [v5 appendString:v7];
LABEL_15:
  if ((descriptionCopy & 0x80) != 0)
  {
    [v5 appendString:@" (track changes)"];
  }

  if ((descriptionCopy & 0x10000) != 0)
  {
    [v5 appendString:@" (test mode - should fail)"];
  }

  return v5;
}

- (BOOL)isReadOnly
{
  database = self->_database;
  if (database)
  {
    v3 = database[32];
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

- (void)setFatalError:(id)error
{
  v9 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = errorCopy;
  self->_databaseStatus = 0;
  if ((*(self->_database + 32) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, [errorCopy UTF8String]);
    degas::Database::setDatabaseFatalProblem(self->_database, __p);
    if (v8 < 0)
    {
      operator delete(*__p);
    }
  }

  v6 = KGLoggingConnection();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *__p = 138412290;
    *&__p[4] = v5;
    _os_log_error_impl(&dword_255870000, v6, OS_LOG_TYPE_ERROR, "fatal error detected: %@", __p, 0xCu);
  }
}

- (void)dealloc
{
  if (self->_database)
  {
    __assert_rtn("[KGDatabase dealloc]", "KGDatabase.mm", 504, "_database == NULL");
  }

  v2.receiver = self;
  v2.super_class = KGDatabase;
  [(KGDatabase *)&v2 dealloc];
}

- (KGDatabase)initWithURL:(id)l
{
  lCopy = l;
  v11.receiver = self;
  v11.super_class = KGDatabase;
  v6 = [(KGDatabase *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_url, l);
    v8 = objc_alloc_init(KGDatabaseNameCache);
    nameCache = v7->_nameCache;
    v7->_nameCache = v8;

    v7->_databaseStatus = 1;
  }

  return v7;
}

+ (void)deleteClosedDatabaseFilesAtStoreURL:(id)l
{
  v19 = *MEMORY[0x277D85DE8];
  lCopy = l;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [lCopy path];
  if ([defaultManager fileExistsAtPath:path])
  {
    v16 = 0;
    v6 = [defaultManager removeItemAtPath:path error:&v16];
    v7 = v16;
    if (v6)
    {
      v8 = [path stringByAppendingString:@"-wal"];
      v15 = v7;
      v9 = [defaultManager removeItemAtPath:v8 error:&v15];
      v10 = v15;

      if (v9)
      {
        v11 = [path stringByAppendingString:@"-shm"];
        v14 = v10;
        v12 = [defaultManager removeItemAtPath:v11 error:&v14];
        v7 = v14;

        if (v12)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v7 = v10;
      }
    }

    v13 = KGLoggingConnection();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v7;
      _os_log_error_impl(&dword_255870000, v13, OS_LOG_TYPE_ERROR, "failed deleting database files: %@", buf, 0xCu);
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_11:
}

+ (BOOL)migrateFromURL:(id)l toURL:(id)rL error:(id *)error
{
  buf[3] = *MEMORY[0x277D85DE8];
  lCopy = l;
  rLCopy = rL;
  v8 = [[KGGraphLockFile alloc] initWithDatabaseURL:rLCopy];
  if ([(KGGraphLockFile *)v8 lock])
  {
    std::string::basic_string[abi:ne200100]<0>(buf, [lCopy fileSystemRepresentation]);
    v9 = rLCopy;
    std::string::basic_string[abi:ne200100]<0>(__p, [rLCopy fileSystemRepresentation]);
    degas::Database::copyDatabaseFromTo(buf, __p);
  }

  v10 = KGLoggingConnection();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf[0]) = 138412290;
    *(buf + 4) = rLCopy;
    _os_log_error_impl(&dword_255870000, v10, OS_LOG_TYPE_ERROR, "unable to clobber database as it is already open, possibly in another process: path=%@", buf, 0xCu);
  }

  return 0;
}

+ (BOOL)copyFromURL:(id)l toURL:(id)rL error:(id *)error
{
  lCopy = l;
  rLCopy = rL;
  degas::Database::Database(v15);
  std::string::basic_string[abi:ne200100]<0>(__p, [lCopy fileSystemRepresentation]);
  Only = degas::Database::openReadOnly(v15, __p);
  v10 = Only;
  if ((v14 & 0x80000000) == 0)
  {
    if (Only)
    {
      goto LABEL_3;
    }

LABEL_7:
    std::string::basic_string[abi:ne200100]<0>(__p, [rLCopy fileSystemRepresentation]);
    degas::Database::backupDatabase(v15, __p);
  }

  operator delete(__p[0]);
  if (!v10)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (error)
  {
    if ((v10 - 2) > 9)
    {
      v11 = -1;
    }

    else
    {
      v11 = qword_255972CE0[v10 - 2];
    }

    *error = kg_errorWithCode(v11);
  }

  degas::Database::~Database(v15);

  return 0;
}

+ (BOOL)emptyDatabaseExistsAtURL:(id)l error:(id *)error
{
  lCopy = l;
  std::string::basic_string[abi:ne200100]<0>(__p, [lCopy fileSystemRepresentation]);
  isEmptyDatabaseAtPath = degas::Database::isEmptyDatabaseAtPath(__p);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = isEmptyDatabaseAtPath - 2;
  if (isEmptyDatabaseAtPath != 2 && error && isEmptyDatabaseAtPath != 1)
  {
    if (v7 > 9)
    {
      v8 = -1;
    }

    else
    {
      v8 = qword_255972CE0[v7];
    }

    *error = kg_errorWithCode(v8);
  }

  return isEmptyDatabaseAtPath == 2;
}

+ (BOOL)destroyAtURL:(id)l error:(id *)error
{
  lCopy = l;
  path = [lCopy path];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if ([defaultManager fileExistsAtPath:path])
  {
    std::string::basic_string[abi:ne200100]<0>(__p, [lCopy fileSystemRepresentation]);
    degas::Database::truncateDatabaseAtPath(__p);
  }

  return 1;
}

+ (void)initialize
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults integerForKey:@"com.apple.knowledgegraph.explainmode"];

  if (v3 == 1)
  {
    v4 = &degas::sExplainQuery;
    v5 = &degas::sExplainQueryPlan;
  }

  else
  {
    if (v3 != 2)
    {
      goto LABEL_6;
    }

    v4 = &degas::sExplainQueryPlan;
    v5 = &degas::sExplainQuery;
  }

  *v5 = 1;
  *v4 = 0;
LABEL_6:
  standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v7 = [standardUserDefaults2 integerForKey:@"com.apple.knowledgegraph.querylogging"];

  if (v7 == 1)
  {
    v8 = &degas::sQueryLogging;
  }

  else
  {
    if (v7 != 2)
    {
      goto LABEL_11;
    }

    v8 = &degas::sQueryProfiling;
  }

  *v8 = 1;
LABEL_11:
  standardUserDefaults3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v10 = [standardUserDefaults3 BOOLForKey:@"com.apple.knowledgegraph.instrumentedtraversal"];

  if (v10)
  {
    degas::sInstrumentTraversal = 1;
  }

  standardUserDefaults4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v12 = [standardUserDefaults4 BOOLForKey:@"com.apple.knowledgegraph.insertlabeltracking"];

  if (v12)
  {
    degas::sDatabaseInsertLabelTracking = 1;
  }

  standardUserDefaults5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v14 = [standardUserDefaults5 BOOLForKey:@"com.apple.knowledgegraph.labelreferencechecking"];

  if (v14)
  {
    degas::sDatabaseLabelReferenceChecking = 1;
  }

  standardUserDefaults6 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v16 = [standardUserDefaults6 BOOLForKey:@"com.apple.knowledgegraph.databaseopenstackcapture"];

  if (v16)
  {
    sDatabaseOpenStackCapture = 1;
  }
}

@end