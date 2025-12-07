@interface AFConversation
- (AFConversation)initWithIdentifier:(id)identifier languageCode:(id)code;
- (AFConversation)initWithIdentifier:(id)identifier languageCode:(id)code rootNode:(id)node;
- (AFConversation)initWithLanguageCode:(id)code;
- (AFConversation)initWithPropertyListRepresentation:(id)representation;
- (AFConversationDelegate)delegate;
- (BOOL)_nodeContainsProvisionalItems:(id)items;
- (BOOL)containsItemForAceViewWithIdentifier:(id)identifier;
- (BOOL)containsItemWithIdentifier:(id)identifier;
- (BOOL)hasItemWithIdentifier:(id)identifier;
- (BOOL)itemAtIndexPathIsVirgin:(id)virgin;
- (id)_changePresentationStateForNodes:(id)nodes;
- (id)_childOfNode:(id)node withItemWhichCanBeUpdatedWithAceObject:(id)object inDialogPhase:(id)phase;
- (id)_indexPathForItemWithIdentifier:(id)identifier ignoreNonExistent:(BOOL)existent;
- (id)_indexPathsForAddingItemsWithCount:(int64_t)count asChildrenOfItemWithIdentifier:(id)identifier;
- (id)_itemAtIndexPath:(id)path;
- (id)_nodeAtIndexPath:(id)path;
- (id)aceCommandIdentifierForItemAtIndexPath:(id)path;
- (id)aceObjectForItemAtIndexPath:(id)path;
- (id)additionalSpeechInterpretationsForRefId:(id)id;
- (id)dialogPhaseForItemAtIndexPath:(id)path;
- (id)identifierOfItemAtIndexPath:(id)path;
- (id)itemAtIndexPath:(id)path;
- (id)itemWithIdentifier:(id)identifier;
- (id)lastItem;
- (id)parentOfItemWithIdentifier:(id)identifier;
- (id)propertyListRepresentation;
- (int64_t)numberOfChildrenForItemAtIndexPath:(id)path;
- (int64_t)numberOfChildrenForItemWithIdentifier:(id)identifier;
- (int64_t)presentationStateForItemAtIndexPath:(id)path;
- (int64_t)typeForItemAtIndexPath:(id)path;
- (void)_addItemsForAceObjects:(id)objects type:(int64_t)type aceCommandIdentifier:(id)identifier dialogPhase:(id)phase asChildrenOfItemWithIdentifier:(id)withIdentifier;
- (void)_addItemsForAceViews:(id)views withDialogPhase:(id)phase fromCommandWithIdentifier:(id)identifier asChildrenOfItemWithIdentifier:(id)withIdentifier isSupplemental:(BOOL)supplemental isImmersiveExperience:(BOOL)experience isPersistentAcrossInvocations:(BOOL)invocations;
- (void)_addItemsForAceViews:(id)views withDialogPhase:(id)phase fromCommandWithIdentifier:(id)identifier atIndexPaths:(id)paths isSupplemental:(BOOL)supplemental isImmersiveExperience:(BOOL)experience isPersistentAcrossInvocations:(BOOL)invocations;
- (void)_enumerateItemsUsingBlock:(id)block;
- (void)_processInsertions:(id)insertions inDialogPhase:(id)phase;
- (void)_removeNodes:(id)nodes;
- (void)addAdditionalSpeechInterpretation:(id)interpretation refId:(id)id;
- (void)addItemForMusicStartSessionCommand:(id)command;
- (void)addItemForPartialResultCommand:(id)command;
- (void)addItemForSpeechRecognizedCommand:(id)command;
- (void)addItemsForAddViewsCommand:(id)command;
- (void)addItemsForShowHelpCommand:(id)command;
- (void)addRecognitionUpdateWithPhrases:(id)phrases utterances:(id)utterances refId:(id)id;
- (void)addSelectionResponse:(id)response;
- (void)cancelItemWithIdentifier:(id)identifier;
- (void)notifyDelegateOfUpdates:(id)updates inserts:(id)inserts presentationChanges:(id)changes;
- (void)removeItemsAtIndexPaths:(id)paths;
- (void)removeItemsFollowingItemAtIndexPath:(id)path;
- (void)removeItemsWithIdentifiers:(id)identifiers;
- (void)removeTransientItems;
- (void)updateWithUpdateViewsCommand:(id)command;
@end

@implementation AFConversation

- (id)lastItem
{
  v3 = objc_alloc_init(MEMORY[0x1E696AC88]);
  v4 = [(AFConversation *)self numberOfChildrenForItemAtIndexPath:v3];

  if (v4 < 1)
  {
    v6 = 0;
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x1E696AC88]) initWithIndex:v4 - 1];
    v6 = [(AFConversation *)self _itemAtIndexPath:v5];
  }

  return v6;
}

- (id)propertyListRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:&unk_1F056D758 forKey:@"Version"];
  identifier = [(AFConversation *)self identifier];
  uUIDString = [identifier UUIDString];
  [dictionary setObject:uUIDString forKey:@"Identifier"];

  languageCode = [(AFConversation *)self languageCode];
  [dictionary setObject:languageCode forKey:@"LanguageCode"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[AFConversation isSynchronizedWithServer](self, "isSynchronizedWithServer")}];
  [dictionary setObject:v7 forKey:@"SynchronizedWithServer"];

  v8 = objc_alloc_init(AFTreeNodePropertyListSerialization);
  _rootNode = [(AFConversation *)self _rootNode];
  v10 = [(AFTreeNodePropertyListSerialization *)v8 propertyListWithTreeNode:_rootNode itemPropertyListCreation:&__block_literal_global_58];

  [dictionary setObject:v10 forKey:@"RootNode"];

  return dictionary;
}

- (void)removeTransientItems
{
  array = [MEMORY[0x1E695DF70] array];
  _rootNode = [(AFConversation *)self _rootNode];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38__AFConversation_removeTransientItems__block_invoke;
  v6[3] = &unk_1E7343D00;
  v7 = array;
  v5 = array;
  [_rootNode enumerateDescendentNodesUsingBlock:v6];

  [(AFConversation *)self _removeNodes:v5];
}

void __38__AFConversation_removeTransientItems__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 item];
  if ([v3 isTransient])
  {
    [*(a1 + 32) addObject:v4];
  }
}

- (AFConversationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)notifyDelegateOfUpdates:(id)updates inserts:(id)inserts presentationChanges:(id)changes
{
  updatesCopy = updates;
  insertsCopy = inserts;
  changesCopy = changes;
  if ([updatesCopy count])
  {
    delegate = [(AFConversation *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      delegate2 = [(AFConversation *)self delegate];
      [delegate2 conversation:self didUpdateItemsAtIndexPaths:updatesCopy];
    }
  }

  if ([insertsCopy count])
  {
    delegate3 = [(AFConversation *)self delegate];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      delegate4 = [(AFConversation *)self delegate];
      [delegate4 conversation:self didInsertItemsAtIndexPaths:insertsCopy];
    }
  }

  if ([changesCopy count])
  {
    delegate5 = [(AFConversation *)self delegate];
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      delegate6 = [(AFConversation *)self delegate];
      [delegate6 conversation:self presentationStateDidChangeForItemsAtIndexPaths:changesCopy];
    }
  }

  if ([updatesCopy count] || objc_msgSend(insertsCopy, "count") || objc_msgSend(changesCopy, "count"))
  {
    v19 = [[AFConversationTransaction alloc] initWithUpdatedItemIndexPaths:updatesCopy insertedItemIndexPaths:insertsCopy presentationStateChangedItemIndexPaths:changesCopy];
    delegate7 = [(AFConversation *)self delegate];
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      delegate8 = [(AFConversation *)self delegate];
      [delegate8 conversation:self didChangeWithTransaction:v19];
    }
  }
}

- (AFConversation)initWithPropertyListRepresentation:(id)representation
{
  v36 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v5 = objc_alloc_init(AFDictionarySchema);
  v6 = +[AFCoercion stringToUUIDCoercion];
  [(AFDictionarySchema *)v5 setObjectCoercion:v6 forKey:@"Identifier"];

  v7 = [AFCoercion typeAssertionWithClass:objc_opt_class()];
  [(AFDictionarySchema *)v5 setObjectCoercion:v7 forKey:@"Version"];

  v8 = [AFCoercion typeAssertionWithClass:objc_opt_class()];
  [(AFDictionarySchema *)v5 setObjectCoercion:v8 forKey:@"LanguageCode"];

  v9 = [AFCoercion typeAssertionWithClass:objc_opt_class()];
  [(AFDictionarySchema *)v5 setObjectCoercion:v9 forKey:@"SynchronizedWithServer"];

  v10 = [[AFCoercion alloc] initWithBlock:&__block_literal_global_64];
  [(AFDictionarySchema *)v5 setObjectCoercion:v10 forKey:@"RootNode"];

  v29 = 0;
  v11 = [(AFDictionarySchema *)v5 coerceObject:representationCopy error:&v29];
  v12 = v29;
  if (!v11)
  {
    v24 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v25 = v24;
      localizedFailureReason = [v12 localizedFailureReason];
      *buf = 136315650;
      v31 = "[AFConversation initWithPropertyListRepresentation:]";
      v32 = 2112;
      v33 = localizedFailureReason;
      v34 = 2114;
      v35 = representationCopy;
      _os_log_error_impl(&dword_1912FE000, v25, OS_LOG_TYPE_ERROR, "%s passed invalid property list (%@): %{public}@", buf, 0x20u);
    }

    goto LABEL_10;
  }

  v13 = [v11 objectForKey:@"Version"];
  integerValue = [v13 integerValue];

  if (integerValue != 1)
  {
    v27 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v31 = "[AFConversation initWithPropertyListRepresentation:]";
      v32 = 2050;
      v33 = integerValue;
      _os_log_error_impl(&dword_1912FE000, v27, OS_LOG_TYPE_ERROR, "%s Unable to create conversation from property list with version %{public}ld", buf, 0x16u);
    }

LABEL_10:
    selfCopy = 0;
    goto LABEL_11;
  }

  v15 = [v11 objectForKey:@"Identifier"];
  v16 = [v11 objectForKey:@"LanguageCode"];
  v17 = [v11 objectForKey:@"SynchronizedWithServer"];
  bOOLValue = [v17 BOOLValue];

  v19 = [v11 objectForKey:@"RootNode"];
  self = [(AFConversation *)self initWithIdentifier:v15 languageCode:v16 rootNode:v19];
  [(AFConversation *)self setSynchronizedWithServer:bOOLValue];
  v20 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v21 = v20;
    _rootNode = [(AFConversation *)self _rootNode];
    *buf = 136315394;
    v31 = "[AFConversation initWithPropertyListRepresentation:]";
    v32 = 2112;
    v33 = _rootNode;
    _os_log_impl(&dword_1912FE000, v21, OS_LOG_TYPE_INFO, "%s rootNode=%@", buf, 0x16u);
  }

  selfCopy = self;
LABEL_11:

  return selfCopy;
}

id __53__AFConversation_initWithPropertyListRepresentation___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = objc_alloc_init(AFTreeNodePropertyListSerialization);
  v6 = [(AFTreeNodePropertyListSerialization *)v5 treeNodeWithPropertyList:v4 error:a3 itemCreation:&__block_literal_global_66];

  return v6;
}

AFMutableConversationItem *__53__AFConversation_initWithPropertyListRepresentation___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[AFMutableConversationItem alloc] initWithPropertyListRepresentation:v2];

  return v3;
}

- (id)_changePresentationStateForNodes:(id)nodes
{
  v19 = *MEMORY[0x1E69E9840];
  nodesCopy = nodes;
  array = [MEMORY[0x1E695DF70] array];
  if ([nodesCopy count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = nodesCopy;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          parentNode = [v10 parentNode];

          if (parentNode)
          {
            absoluteIndexPath = [v10 absoluteIndexPath];
            [array addObject:absoluteIndexPath];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }
  }

  return array;
}

- (BOOL)_nodeContainsProvisionalItems:(id)items
{
  itemsCopy = items;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__AFConversation__nodeContainsProvisionalItems___block_invoke;
  v6[3] = &unk_1E7343DA0;
  v6[4] = &v7;
  [itemsCopy enumerateChildNodesWithOptions:2 usingBlock:v6];
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __48__AFConversation__nodeContainsProvisionalItems___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 item];
  if ([v6 presentationState] == 2)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (BOOL)containsItemForAceViewWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__AFConversation_containsItemForAceViewWithIdentifier___block_invoke;
  v7[3] = &unk_1E7343D78;
  v5 = identifierCopy;
  v8 = v5;
  v9 = &v10;
  [(AFConversation *)self _enumerateItemsUsingBlock:v7];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

void __55__AFConversation_containsItemForAceViewWithIdentifier___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v10 = a2;
  v5 = [v10 type] == 3;
  v6 = v10;
  if (v5)
  {
    v7 = [v10 aceObject];
    v8 = [v7 viewId];
    isEqualToString = objc_msgSend_isEqualToString_(v8);

    if (isEqualToString)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a3 = 1;
    }

    v6 = v10;
  }
}

- (void)_enumerateItemsUsingBlock:(id)block
{
  blockCopy = block;
  _rootNode = [(AFConversation *)self _rootNode];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__AFConversation__enumerateItemsUsingBlock___block_invoke;
  v7[3] = &unk_1E7343D50;
  v8 = blockCopy;
  v6 = blockCopy;
  [_rootNode enumerateDescendentNodesUsingBlock:v7];
}

void __44__AFConversation__enumerateItemsUsingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [a2 item];
  (*(v4 + 16))(v4, v5, a3);
}

- (BOOL)itemAtIndexPathIsVirgin:(id)virgin
{
  v3 = [(AFConversation *)self _itemAtIndexPath:virgin];
  isVirgin = [v3 isVirgin];

  return isVirgin;
}

- (id)aceCommandIdentifierForItemAtIndexPath:(id)path
{
  v3 = [(AFConversation *)self _itemAtIndexPath:path];
  aceCommandIdentifier = [v3 aceCommandIdentifier];

  return aceCommandIdentifier;
}

- (int64_t)numberOfChildrenForItemAtIndexPath:(id)path
{
  v3 = [(AFConversation *)self _nodeAtIndexPath:path];
  numberOfChildNodes = [v3 numberOfChildNodes];

  return numberOfChildNodes;
}

- (int64_t)numberOfChildrenForItemWithIdentifier:(id)identifier
{
  v4 = [(AFConversation *)self indexPathForItemWithIdentifier:identifier];
  v5 = [(AFConversation *)self numberOfChildrenForItemAtIndexPath:v4];

  return v5;
}

- (int64_t)presentationStateForItemAtIndexPath:(id)path
{
  v3 = [(AFConversation *)self _itemAtIndexPath:path];
  presentationState = [v3 presentationState];

  return presentationState;
}

- (id)aceObjectForItemAtIndexPath:(id)path
{
  v3 = [(AFConversation *)self _itemAtIndexPath:path];
  aceObject = [v3 aceObject];

  return aceObject;
}

- (id)dialogPhaseForItemAtIndexPath:(id)path
{
  v3 = [(AFConversation *)self _itemAtIndexPath:path];
  dialogPhase = [v3 dialogPhase];

  return dialogPhase;
}

- (int64_t)typeForItemAtIndexPath:(id)path
{
  v3 = [(AFConversation *)self _itemAtIndexPath:path];
  type = [v3 type];

  return type;
}

- (id)itemAtIndexPath:(id)path
{
  v3 = [(AFConversation *)self _itemAtIndexPath:path];
  v4 = [v3 copy];

  return v4;
}

- (id)parentOfItemWithIdentifier:(id)identifier
{
  v4 = [(AFConversation *)self indexPathForItemWithIdentifier:identifier];
  indexPathByRemovingLastIndex = [v4 indexPathByRemovingLastIndex];
  v6 = [(AFConversation *)self _itemAtIndexPath:indexPathByRemovingLastIndex];

  return v6;
}

- (id)itemWithIdentifier:(id)identifier
{
  v4 = [(AFConversation *)self indexPathForItemWithIdentifier:identifier];
  v5 = [(AFConversation *)self itemAtIndexPath:v4];

  return v5;
}

- (BOOL)hasItemWithIdentifier:(id)identifier
{
  v3 = [(AFConversation *)self _indexPathForItemWithIdentifier:identifier ignoreNonExistent:1];
  v4 = v3 != 0;

  return v4;
}

- (id)_indexPathForItemWithIdentifier:(id)identifier ignoreNonExistent:(BOOL)existent
{
  identifierCopy = identifier;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__11894;
  v22 = __Block_byref_object_dispose__11895;
  v23 = 0;
  if (identifierCopy)
  {
    _rootNode = [(AFConversation *)self _rootNode];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __68__AFConversation__indexPathForItemWithIdentifier_ignoreNonExistent___block_invoke;
    v15[3] = &unk_1E7343D28;
    v16 = identifierCopy;
    v17 = &v18;
    [_rootNode enumerateDescendentNodesUsingBlock:v15];

    v9 = v16;
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x1E696AC88]);
    v9 = v19[5];
    v19[5] = v10;
  }

  v11 = v19;
  if (!existent && !v19[5])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"AFConversation.m" lineNumber:726 description:@"Cannot return an index path to an item that is not contained in the conversation"];

    v11 = v19;
  }

  v12 = v11[5];
  _Block_object_dispose(&v18, 8);

  return v12;
}

void __68__AFConversation__indexPathForItemWithIdentifier_ignoreNonExistent___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v11 = a2;
  v5 = [v11 item];
  v6 = *(a1 + 32);
  v7 = [v5 identifier];
  LODWORD(v6) = [v6 isEqual:v7];

  if (v6)
  {
    v8 = [v11 absoluteIndexPath];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    *a3 = 1;
  }
}

- (id)identifierOfItemAtIndexPath:(id)path
{
  v3 = [(AFConversation *)self _itemAtIndexPath:path];
  identifier = [v3 identifier];

  return identifier;
}

- (BOOL)containsItemWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  _rootNode = [(AFConversation *)self _rootNode];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__AFConversation_containsItemWithIdentifier___block_invoke;
  v8[3] = &unk_1E7343D28;
  v6 = identifierCopy;
  v9 = v6;
  v10 = &v11;
  [_rootNode enumerateDescendentNodesUsingBlock:v8];

  LOBYTE(_rootNode) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return _rootNode;
}

void __45__AFConversation_containsItemWithIdentifier___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v7 = [a2 item];
  v5 = [v7 identifier];
  v6 = [v5 isEqual:*(a1 + 32)];

  if (v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }
}

- (void)cancelItemWithIdentifier:(id)identifier
{
  v7[1] = *MEMORY[0x1E69E9840];
  v4 = [(AFConversation *)self _indexPathForItemWithIdentifier:identifier ignoreNonExistent:0];
  v5 = [(AFConversation *)self _itemAtIndexPath:v4];
  if ([v5 presentationState] != 3)
  {
    [v5 setPresentationState:3];
    v7[0] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    [(AFConversation *)self notifyDelegateOfUpdates:0 inserts:0 presentationChanges:v6];
  }
}

- (void)removeItemsFollowingItemAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy length])
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = [pathCopy indexAtPosition:{objc_msgSend(pathCopy, "length") - 1}];
    indexPathByRemovingLastIndex = [pathCopy indexPathByRemovingLastIndex];
    v8 = [(AFConversation *)self _nodeAtIndexPath:indexPathByRemovingLastIndex];
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __54__AFConversation_removeItemsFollowingItemAtIndexPath___block_invoke;
    v13 = &unk_1E7343CD8;
    v14 = v5;
    v15 = v6;
    v9 = v5;
    [v8 enumerateChildNodesWithOptions:2 usingBlock:&v10];
    [(AFConversation *)self _removeNodes:v9, v10, v11, v12, v13];
  }
}

id *__54__AFConversation_removeItemsFollowingItemAtIndexPath___block_invoke(id *result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (result[5] < a3)
  {
    return [result[4] addObject:{a2, a4}];
  }

  *a4 = 1;
  return result;
}

- (void)removeItemsAtIndexPaths:(id)paths
{
  v17 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(pathsCopy, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = pathsCopy;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(AFConversation *)self _nodeAtIndexPath:*(*(&v12 + 1) + 8 * v10), v12];
        [v5 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [(AFConversation *)self _removeNodes:v5];
}

- (void)removeItemsWithIdentifiers:(id)identifiers
{
  v17 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = identifiersCopy;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(AFConversation *)self indexPathForItemWithIdentifier:*(*(&v12 + 1) + 8 * v10), v12];
        [v5 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [(AFConversation *)self removeItemsAtIndexPaths:v5];
}

- (void)updateWithUpdateViewsCommand:(id)command
{
  v21 = *MEMORY[0x1E69E9840];
  commandCopy = command;
  array = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = commandCopy;
  obj = [commandCopy views];
  v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        _rootNode = [(AFConversation *)self _rootNode];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __47__AFConversation_updateWithUpdateViewsCommand___block_invoke;
        v14[3] = &unk_1E7343CB0;
        v14[4] = v10;
        v15 = array;
        [_rootNode enumerateDescendentNodesUsingBlock:v14];

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  [(AFConversation *)self notifyDelegateOfUpdates:array inserts:0 presentationChanges:0];
}

void __47__AFConversation_updateWithUpdateViewsCommand___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 item];
  if ([v3 type] == 3)
  {
    v4 = [v3 aceObject];
    v5 = [v4 viewId];
    v6 = [*(a1 + 32) viewId];
    isEqualToString = objc_msgSend_isEqualToString_(v5);

    if (isEqualToString)
    {
      [v3 setAceObject:*(a1 + 32)];
      v8 = *(a1 + 40);
      v9 = [v10 absoluteIndexPath];
      [v8 addObject:v9];
    }
  }
}

- (void)addSelectionResponse:(id)response
{
  v9 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  v4 = MEMORY[0x1E695DEC8];
  responseCopy2 = response;
  v6 = [v4 arrayWithObjects:&responseCopy count:1];
  v7 = [AFDialogPhase userRequestDialogPhase:responseCopy];

  [(AFConversation *)self addItemsForAceViews:v6 withDialogPhase:v7 asChildrenOfItemWithIdentifier:0];
}

- (void)addItemForMusicStartSessionCommand:(id)command
{
  v10 = *MEMORY[0x1E69E9840];
  commandCopy = command;
  v4 = MEMORY[0x1E695DEC8];
  commandCopy2 = command;
  v6 = [v4 arrayWithObjects:&commandCopy count:1];
  aceId = [commandCopy2 aceId];
  v8 = +[AFDialogPhase reflectionDialogPhase];

  [(AFConversation *)self _addItemsForAceObjects:v6 type:5 aceCommandIdentifier:aceId dialogPhase:v8 asChildrenOfItemWithIdentifier:0];
}

- (void)addItemsForShowHelpCommand:(id)command
{
  commandCopy = command;
  array = [MEMORY[0x1E695DF70] array];
  v5 = [(AFConversation *)self _indexPathsForAddingItemsWithCount:2 asChildrenOfItemWithIdentifier:0];
  v6 = [v5 mutableCopy];

  text = [commandCopy text];
  if (text)
  {
    v8 = objc_alloc_init(MEMORY[0x1E69C7B08]);
    [v8 setText:text];
    speakableText = [commandCopy speakableText];
    [v8 setSpeakableText:speakableText];

    firstObject = [v6 firstObject];
    [v6 removeObjectAtIndex:0];
    v11 = [AFConversationInsertion alloc];
    aceId = [commandCopy aceId];
    LOBYTE(v19) = 0;
    v13 = [(AFConversationInsertion *)v11 initWithConversationItemType:3 aceObject:v8 aceCommandIdentifier:aceId transient:0 supplemental:0 immersiveExperience:0 persistentAcrossInvocations:v19 indexPath:firstObject];
    [array addObject:v13];
  }

  v14 = [AFConversationInsertion alloc];
  aceId2 = [commandCopy aceId];
  firstObject2 = [v6 firstObject];
  LOBYTE(v19) = 0;
  v17 = [(AFConversationInsertion *)v14 initWithConversationItemType:4 aceObject:commandCopy aceCommandIdentifier:aceId2 transient:0 supplemental:0 immersiveExperience:0 persistentAcrossInvocations:v19 indexPath:firstObject2];
  [array addObject:v17];

  v18 = +[AFDialogPhase completionDialogPhase];
  [(AFConversation *)self _processInsertions:array inDialogPhase:v18];
}

- (void)addItemForPartialResultCommand:(id)command
{
  v18[1] = *MEMORY[0x1E69E9840];
  commandCopy = command;
  array = [MEMORY[0x1E695DF70] array];
  refId = [commandCopy refId];
  _rootNode = [(AFConversation *)self _rootNode];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __49__AFConversation_addItemForPartialResultCommand___block_invoke;
  v14[3] = &unk_1E7343C88;
  v8 = refId;
  v15 = v8;
  v9 = commandCopy;
  v16 = v9;
  v10 = array;
  v17 = v10;
  [_rootNode enumerateDescendentNodesUsingBlock:v14];

  if ([v10 count])
  {
    [(AFConversation *)self notifyDelegateOfUpdates:v10 inserts:0 presentationChanges:0];
  }

  else
  {
    v18[0] = v9;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    aceId = [v9 aceId];
    v13 = +[AFDialogPhase userRequestDialogPhase];
    [(AFConversation *)self _addItemsForAceObjects:v11 type:2 aceCommandIdentifier:aceId dialogPhase:v13 asChildrenOfItemWithIdentifier:0];
  }
}

void __49__AFConversation_addItemForPartialResultCommand___block_invoke(void *a1, void *a2)
{
  v9 = a2;
  v3 = [v9 item];
  if ([v3 type] == 2)
  {
    v4 = [v3 aceObject];
    v5 = [v4 refId];
    isEqualToString = objc_msgSend_isEqualToString_(v5);

    if (isEqualToString)
    {
      [v3 setAceObject:a1[5]];
      v7 = a1[6];
      v8 = [v9 absoluteIndexPath];
      [v7 addObject:v8];
    }
  }
}

- (void)addRecognitionUpdateWithPhrases:(id)phrases utterances:(id)utterances refId:(id)id
{
  phrasesCopy = phrases;
  utterancesCopy = utterances;
  idCopy = id;
  if (!self->_updatedUserUtteranceForRefId)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    updatedUserUtteranceForRefId = self->_updatedUserUtteranceForRefId;
    self->_updatedUserUtteranceForRefId = v10;
  }

  v12 = [[AFUserUtterance alloc] initWithPhrases:phrasesCopy utterances:utterancesCopy];
  [(NSMutableDictionary *)self->_updatedUserUtteranceForRefId setObject:v12 forKey:idCopy];
}

- (id)additionalSpeechInterpretationsForRefId:(id)id
{
  v3 = [(NSMutableDictionary *)self->_additionalInterpretationsForRefId objectForKey:id];
  v4 = [v3 copy];

  return v4;
}

- (void)addAdditionalSpeechInterpretation:(id)interpretation refId:(id)id
{
  v24 = *MEMORY[0x1E69E9840];
  interpretationCopy = interpretation;
  idCopy = id;
  if (idCopy)
  {
    additionalInterpretationsForRefId = self->_additionalInterpretationsForRefId;
    if (!additionalInterpretationsForRefId)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v10 = self->_additionalInterpretationsForRefId;
      self->_additionalInterpretationsForRefId = v9;

      additionalInterpretationsForRefId = self->_additionalInterpretationsForRefId;
    }

    v11 = [(NSMutableDictionary *)additionalInterpretationsForRefId objectForKey:idCopy];
    if (!v11)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [(NSMutableDictionary *)self->_additionalInterpretationsForRefId setValue:v11 forKey:idCopy];
    }

    [v11 addObject:interpretationCopy];
    array = [MEMORY[0x1E695DF70] array];
    _rootNode = [(AFConversation *)self _rootNode];
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __58__AFConversation_addAdditionalSpeechInterpretation_refId___block_invoke;
    v19 = &unk_1E7343CB0;
    v20 = idCopy;
    v14 = array;
    v21 = v14;
    [_rootNode enumerateDescendentNodesUsingBlock:&v16];

    if ([v14 count])
    {
      [(AFConversation *)self notifyDelegateOfUpdates:v14 inserts:0 presentationChanges:0];
    }
  }

  else
  {
    v15 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v23 = "[AFConversation addAdditionalSpeechInterpretation:refId:]";
      _os_log_error_impl(&dword_1912FE000, v15, OS_LOG_TYPE_ERROR, "%s Unable to add additional speech interpretation, invalid refId", buf, 0xCu);
    }
  }
}

void __58__AFConversation_addAdditionalSpeechInterpretation_refId___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 item];
  v4 = [v3 aceObject];
  v5 = [v4 refId];
  isEqualToString = objc_msgSend_isEqualToString_(v5);

  if (isEqualToString)
  {
    v7 = *(a1 + 40);
    v8 = [v9 absoluteIndexPath];
    [v7 addObject:v8];
  }
}

- (void)addItemForSpeechRecognizedCommand:(id)command
{
  v18[1] = *MEMORY[0x1E69E9840];
  commandCopy = command;
  array = [MEMORY[0x1E695DF70] array];
  refId = [commandCopy refId];
  _rootNode = [(AFConversation *)self _rootNode];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __52__AFConversation_addItemForSpeechRecognizedCommand___block_invoke;
  v14[3] = &unk_1E7343C88;
  v8 = refId;
  v15 = v8;
  v9 = commandCopy;
  v16 = v9;
  v10 = array;
  v17 = v10;
  [_rootNode enumerateDescendentNodesUsingBlock:v14];

  if ([v10 count])
  {
    [(AFConversation *)self notifyDelegateOfUpdates:v10 inserts:0 presentationChanges:0];
  }

  else
  {
    v18[0] = v9;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    aceId = [v9 aceId];
    v13 = +[AFDialogPhase userRequestDialogPhase];
    [(AFConversation *)self _addItemsForAceObjects:v11 type:1 aceCommandIdentifier:aceId dialogPhase:v13 asChildrenOfItemWithIdentifier:0];
  }
}

void __52__AFConversation_addItemForSpeechRecognizedCommand___block_invoke(void *a1, void *a2)
{
  v8 = a2;
  v3 = [v8 item];
  v4 = [v3 aceObject];
  v5 = [v4 refId];
  if (objc_msgSend_isEqualToString_(v5))
  {
    v6 = [v3 type];

    if (v6 != 2)
    {
      goto LABEL_6;
    }

    [v3 setAceObject:a1[5]];
    [v3 setType:1];
    v7 = a1[6];
    v4 = [v8 absoluteIndexPath];
    [v7 addObject:v4];
  }

  else
  {
  }

LABEL_6:
}

- (void)_addItemsForAceObjects:(id)objects type:(int64_t)type aceCommandIdentifier:(id)identifier dialogPhase:(id)phase asChildrenOfItemWithIdentifier:(id)withIdentifier
{
  identifierCopy = identifier;
  withIdentifierCopy = withIdentifier;
  phaseCopy = phase;
  objectsCopy = objects;
  v16 = [objectsCopy count];
  v17 = [(AFConversation *)self _indexPathsForAddingItemsWithCount:v16 asChildrenOfItemWithIdentifier:withIdentifierCopy];

  v18 = [MEMORY[0x1E695DF70] arrayWithCapacity:v16];
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __110__AFConversation__addItemsForAceObjects_type_aceCommandIdentifier_dialogPhase_asChildrenOfItemWithIdentifier___block_invoke;
  v26 = &unk_1E7343C60;
  v27 = v17;
  v28 = identifierCopy;
  v29 = v18;
  typeCopy = type;
  v19 = v18;
  v20 = identifierCopy;
  v21 = v17;
  [objectsCopy enumerateObjectsUsingBlock:&v23];

  v22 = [v19 copy];
  [(AFConversation *)self _processInsertions:v22 inDialogPhase:phaseCopy];
}

void __110__AFConversation__addItemsForAceObjects_type_aceCommandIdentifier_dialogPhase_asChildrenOfItemWithIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v9 = [v5 objectAtIndex:a3];
  LOBYTE(v8) = 0;
  v7 = [[AFConversationInsertion alloc] initWithConversationItemType:*(a1 + 56) aceObject:v6 aceCommandIdentifier:*(a1 + 40) transient:0 supplemental:0 immersiveExperience:0 persistentAcrossInvocations:v8 indexPath:v9];

  [*(a1 + 48) addObject:v7];
}

- (void)addItemsForAddViewsCommand:(id)command
{
  commandCopy = command;
  dialogPhase = [commandCopy dialogPhase];
  v12 = [AFDialogPhase dialogPhaseForAceDialogPhase:dialogPhase];

  views = [commandCopy views];
  aceId = [commandCopy aceId];
  supplemental = [commandCopy supplemental];
  immersiveExperience = [commandCopy immersiveExperience];
  persistentAcrossInvocations = [commandCopy persistentAcrossInvocations];

  LOBYTE(v11) = persistentAcrossInvocations;
  [(AFConversation *)self _addItemsForAceViews:views withDialogPhase:v12 fromCommandWithIdentifier:aceId asChildrenOfItemWithIdentifier:0 isSupplemental:supplemental isImmersiveExperience:immersiveExperience isPersistentAcrossInvocations:v11];
}

- (void)_addItemsForAceViews:(id)views withDialogPhase:(id)phase fromCommandWithIdentifier:(id)identifier asChildrenOfItemWithIdentifier:(id)withIdentifier isSupplemental:(BOOL)supplemental isImmersiveExperience:(BOOL)experience isPersistentAcrossInvocations:(BOOL)invocations
{
  experienceCopy = experience;
  supplementalCopy = supplemental;
  withIdentifierCopy = withIdentifier;
  identifierCopy = identifier;
  phaseCopy = phase;
  viewsCopy = views;
  v20 = -[AFConversation _indexPathsForAddingItemsWithCount:asChildrenOfItemWithIdentifier:](self, "_indexPathsForAddingItemsWithCount:asChildrenOfItemWithIdentifier:", [viewsCopy count], withIdentifierCopy);

  LOBYTE(v19) = invocations;
  [(AFConversation *)self _addItemsForAceViews:viewsCopy withDialogPhase:phaseCopy fromCommandWithIdentifier:identifierCopy atIndexPaths:v20 isSupplemental:supplementalCopy isImmersiveExperience:experienceCopy isPersistentAcrossInvocations:v19];
}

- (id)_indexPathsForAddingItemsWithCount:(int64_t)count asChildrenOfItemWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:count];
  v8 = [(AFConversation *)self indexPathForItemWithIdentifier:identifierCopy];
  v9 = [(AFConversation *)self numberOfChildrenForItemAtIndexPath:v8];
  if (count >= 1)
  {
    v10 = v9;
    v11 = v9 + count;
    do
    {
      v12 = [v8 indexPathByAddingIndex:v10];
      [v7 addObject:v12];

      ++v10;
    }

    while (v10 < v11);
  }

  return v7;
}

- (void)_addItemsForAceViews:(id)views withDialogPhase:(id)phase fromCommandWithIdentifier:(id)identifier atIndexPaths:(id)paths isSupplemental:(BOOL)supplemental isImmersiveExperience:(BOOL)experience isPersistentAcrossInvocations:(BOOL)invocations
{
  identifierCopy = identifier;
  pathsCopy = paths;
  v17 = MEMORY[0x1E695DF70];
  phaseCopy = phase;
  viewsCopy = views;
  v20 = [v17 arrayWithCapacity:{objc_msgSend(viewsCopy, "count")}];
  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __161__AFConversation__addItemsForAceViews_withDialogPhase_fromCommandWithIdentifier_atIndexPaths_isSupplemental_isImmersiveExperience_isPersistentAcrossInvocations___block_invoke;
  v27 = &unk_1E7343C38;
  v28 = pathsCopy;
  v29 = v20;
  v30 = identifierCopy;
  supplementalCopy = supplemental;
  experienceCopy = experience;
  invocationsCopy = invocations;
  v21 = identifierCopy;
  v22 = v20;
  v23 = pathsCopy;
  [viewsCopy enumerateObjectsUsingBlock:&v24];

  [(AFConversation *)self _processInsertions:v22 inDialogPhase:phaseCopy, v24, v25, v26, v27];
}

void __161__AFConversation__addItemsForAceViews_withDialogPhase_fromCommandWithIdentifier_atIndexPaths_isSupplemental_isImmersiveExperience_isPersistentAcrossInvocations___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v13 = [v5 objectAtIndex:a3];
  v7 = *(a1 + 40);
  v8 = [AFConversationInsertion alloc];
  v9 = *(a1 + 48);
  v10 = [v6 isTransient];
  LOBYTE(v12) = *(a1 + 58);
  v11 = [(AFConversationInsertion *)v8 initWithConversationItemType:3 aceObject:v6 aceCommandIdentifier:v9 transient:v10 supplemental:*(a1 + 56) immersiveExperience:*(a1 + 57) persistentAcrossInvocations:v12 indexPath:v13];

  [v7 addObject:v11];
}

- (void)_processInsertions:(id)insertions inDialogPhase:(id)phase
{
  v62 = *MEMORY[0x1E69E9840];
  insertionsCopy = insertions;
  phaseCopy = phase;
  if (!phaseCopy)
  {
    phaseCopy = +[AFDialogPhase completionDialogPhase];
    v7 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v59 = "[AFConversation _processInsertions:inDialogPhase:]";
      v60 = 2112;
      v61 = phaseCopy;
      _os_log_impl(&dword_1912FE000, v7, OS_LOG_TYPE_INFO, "%s No dialog phase provided for conversation insertions; defaulting to %@", buf, 0x16u);
    }
  }

  if (([phaseCopy isConfirmationDialogPhase] & 1) != 0 || objc_msgSend(phaseCopy, "isClarificationDialogPhase"))
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  v35 = v8;
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  orderedSet2 = [MEMORY[0x1E695DFA0] orderedSet];
  orderedSet3 = [MEMORY[0x1E695DFA0] orderedSet];
  orderedSet4 = [MEMORY[0x1E695DFA0] orderedSet];
  strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __51__AFConversation__processInsertions_inDialogPhase___block_invoke;
  v55[3] = &unk_1E7343BA0;
  selfCopy = self;
  v55[4] = self;
  v12 = strongToStrongObjectsMapTable;
  v56 = v12;
  [insertionsCopy enumerateObjectsUsingBlock:v55];
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v36 = v12;
  obj = [v12 keyEnumerator];
  v13 = [obj countByEnumeratingWithState:&v51 objects:v57 count:16];
  v37 = orderedSet2;
  if (v13)
  {
    v14 = v13;
    v15 = *v52;
    do
    {
      v16 = 0;
      do
      {
        if (*v52 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v51 + 1) + 8 * v16);
        v18 = [v36 objectForKey:v17];
        v19 = [insertionsCopy af_mappedArray:&__block_literal_global_11914];
        if (([phaseCopy isExpository] & 1) == 0 && (objc_msgSend(phaseCopy, "isConfirmedDialogPhase") & 1) == 0 && ((objc_msgSend(v19, "containsObject:", &unk_1F056D710) & 1) != 0 || (objc_msgSend(v19, "containsObject:", &unk_1F056D728) & 1) != 0 || objc_msgSend(v19, "containsObject:", &unk_1F056D740)) && -[AFConversation _nodeContainsProvisionalItems:](selfCopy, "_nodeContainsProvisionalItems:", v17))
        {
          if (([phaseCopy isConfirmationDialogPhase] & 1) != 0 || objc_msgSend(phaseCopy, "isClarificationDialogPhase"))
          {
            v49[0] = MEMORY[0x1E69E9820];
            v49[1] = 3221225472;
            v49[2] = __51__AFConversation__processInsertions_inDialogPhase___block_invoke_18;
            v49[3] = &unk_1E7343BE8;
            v50 = orderedSet3;
            [v17 enumerateChildNodesUsingBlock:v49];
            v20 = &v50;
          }

          else
          {
            if ([phaseCopy isSummaryDialogPhase])
            {
              goto LABEL_23;
            }

            v47[0] = MEMORY[0x1E69E9820];
            v47[1] = 3221225472;
            v47[2] = __51__AFConversation__processInsertions_inDialogPhase___block_invoke_2_19;
            v47[3] = &unk_1E7343BE8;
            v48 = orderedSet4;
            [v17 enumerateChildNodesWithOptions:2 usingBlock:v47];
            v20 = &v48;
          }
        }

LABEL_23:
        if (([v19 containsObject:&unk_1F056D710] & 1) != 0 || objc_msgSend(v19, "containsObject:", &unk_1F056D728))
        {
          v45[0] = MEMORY[0x1E69E9820];
          v45[1] = 3221225472;
          v45[2] = __51__AFConversation__processInsertions_inDialogPhase___block_invoke_3;
          v45[3] = &unk_1E7343BE8;
          v46 = orderedSet3;
          [v17 enumerateChildNodesUsingBlock:v45];
        }

        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __51__AFConversation__processInsertions_inDialogPhase___block_invoke_4;
        v40[3] = &unk_1E7343C10;
        v40[4] = selfCopy;
        v40[5] = v17;
        v41 = phaseCopy;
        v44 = v35;
        orderedSet2 = v37;
        v42 = v37;
        v43 = orderedSet;
        [v18 enumerateObjectsUsingBlock:v40];

        ++v16;
      }

      while (v14 != v16);
      v21 = [obj countByEnumeratingWithState:&v51 objects:v57 count:16];
      v14 = v21;
    }

    while (v21);
  }

  if ([orderedSet2 count])
  {
    array = [orderedSet2 array];
    v23 = [AFTreeNode absoluteIndexPathsForTreeNodes:array];
  }

  else
  {
    v23 = 0;
  }

  if ([orderedSet count])
  {
    array2 = [orderedSet array];
    v25 = [AFTreeNode absoluteIndexPathsForTreeNodes:array2];
  }

  else
  {
    v25 = 0;
  }

  if ([orderedSet4 count])
  {
    array3 = [orderedSet4 array];
    v27 = [(AFConversation *)selfCopy _changePresentationStateForNodes:array3];
  }

  else
  {
    v27 = 0;
  }

  [(AFConversation *)selfCopy notifyDelegateOfUpdates:v23 inserts:v25 presentationChanges:v27];
  if ([orderedSet3 count])
  {
    array4 = [orderedSet3 array];
    [(AFConversation *)selfCopy _removeNodes:array4];
  }

  v29 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v30 = v29;
    _rootNode = [(AFConversation *)selfCopy _rootNode];
    *buf = 136315394;
    v59 = "[AFConversation _processInsertions:inDialogPhase:]";
    v60 = 2112;
    v61 = _rootNode;
    _os_log_impl(&dword_1912FE000, v30, OS_LOG_TYPE_INFO, "%s rootNode=%@", buf, 0x16u);
  }
}

void __51__AFConversation__processInsertions_inDialogPhase___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 indexPath];
  v4 = *(a1 + 32);
  v5 = [v3 indexPathByRemovingLastIndex];
  v6 = [v4 _nodeAtIndexPath:v5];

  v7 = [*(a1 + 40) objectForKey:v6];
  if (!v7)
  {
    v7 = [MEMORY[0x1E695DF70] array];
    [*(a1 + 40) setObject:v7 forKey:v6];
  }

  [v7 addObject:v8];
}

void __51__AFConversation__processInsertions_inDialogPhase___block_invoke_18(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 item];
  if ([v3 presentationState] == 2)
  {
    v4 = [v3 aceObject];
    v5 = [v4 af_isUtterance];

    if ((v5 & 1) == 0)
    {
      [*(a1 + 32) addObject:v6];
    }
  }
}

void __51__AFConversation__processInsertions_inDialogPhase___block_invoke_2_19(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v6 = [v10 item];
  v7 = [v6 dialogPhase];
  if ([v7 isConfirmationDialogPhase])
  {
    v8 = [v6 aceObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      if ([v6 presentationState] == 2)
      {
        [v6 setPresentationState:3];
        [*(a1 + 32) addObject:v10];
      }

      *a4 = 1;
    }
  }

  else
  {
  }
}

void __51__AFConversation__processInsertions_inDialogPhase___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 item];
  if ([v3 isTransient])
  {
    [*(a1 + 32) addObject:v4];
  }
}

void __51__AFConversation__processInsertions_inDialogPhase___block_invoke_4(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v29 = [v3 indexPath];
  v4 = [v3 aceObject];
  v5 = [v3 conversationItemType];
  v6 = [v3 aceCommandIdentifier];
  v7 = [v3 isTransient];
  v8 = [v3 isSupplemental];
  v9 = [v3 isImmersiveExperience];
  v28 = [v3 isPersistentAcrossInvocations];

  v10 = [*(a1 + 32) _childOfNode:*(a1 + 40) withItemWhichCanBeUpdatedWithAceObject:v4 inDialogPhase:*(a1 + 48)];
  v11 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v31 = "[AFConversation _processInsertions:inDialogPhase:]_block_invoke_4";
    v32 = 2112;
    v33 = v4;
    _os_log_impl(&dword_1912FE000, v11, OS_LOG_TYPE_INFO, "%s ACE object: %@", buf, 0x16u);
  }

  if (v10)
  {
    v12 = [v10 item];
    v13 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v14 = *(a1 + 32);
      *buf = 136315906;
      v31 = "[AFConversation _processInsertions:inDialogPhase:]_block_invoke";
      v32 = 2112;
      v33 = v14;
      v34 = 2112;
      v35 = v12;
      v36 = 2112;
      v37 = v29;
      _os_log_impl(&dword_1912FE000, v13, OS_LOG_TYPE_INFO, "%s %@: updating item %@ at %@ from ACE object.", buf, 0x2Au);
    }

    [(AFTreeNode *)v12 setAceObject:v4];
    [(AFTreeNode *)v12 setDialogPhase:*(a1 + 48)];
    [(AFTreeNode *)v12 setPresentationState:*(a1 + 72)];
    [(AFTreeNode *)v12 setAceCommandIdentifier:v6];
    [(AFTreeNode *)v12 setTransient:v7];
    [(AFTreeNode *)v12 setSupplemental:v8];
    [(AFTreeNode *)v12 setImmersiveExperience:v9];
    [(AFTreeNode *)v12 setPersistentAcrossInvocations:v28];
    [*(a1 + 56) addObject:v10];
  }

  else
  {
    v12 = objc_alloc_init(AFTreeNode);
    [*(a1 + 40) addChildNode:v12];
    v15 = v5;
    v16 = [AFMutableConversationItem alloc];
    v27 = v6;
    v17 = *(a1 + 48);
    v18 = *(a1 + 72);
    v19 = objc_alloc_init(AFDataStore);
    v20 = v8;
    v21 = v19;
    BYTE3(v26) = v28;
    BYTE2(v26) = v9;
    BYTE1(v26) = v20;
    LOBYTE(v26) = v7;
    v22 = v17;
    v6 = v27;
    v23 = [AFMutableConversationItem initWithType:v16 aceObject:"initWithType:aceObject:dialogPhase:presentationState:aceCommandIdentifier:virgin:transient:supplemental:immersiveExperience:persistentAcrossInvocations:associatedDataStore:" dialogPhase:v15 presentationState:v4 aceCommandIdentifier:v22 virgin:v18 transient:v27 supplemental:1 immersiveExperience:v26 persistentAcrossInvocations:v19 associatedDataStore:?];

    [(AFTreeNode *)v12 setItem:v23];
    v24 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v25 = *(a1 + 32);
      *buf = 136315906;
      v31 = "[AFConversation _processInsertions:inDialogPhase:]_block_invoke";
      v32 = 2112;
      v33 = v25;
      v34 = 2112;
      v35 = v23;
      v36 = 2112;
      v37 = v29;
      _os_log_impl(&dword_1912FE000, v24, OS_LOG_TYPE_INFO, "%s %@: adding new item %@ at %@ for ACE object.", buf, 0x2Au);
    }

    [*(a1 + 64) addObject:v12];

    v10 = 0;
  }
}

uint64_t __51__AFConversation__processInsertions_inDialogPhase___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 conversationItemType];

  return [v2 numberWithInteger:v3];
}

- (id)_childOfNode:(id)node withItemWhichCanBeUpdatedWithAceObject:(id)object inDialogPhase:(id)phase
{
  nodeCopy = node;
  objectCopy = object;
  phaseCopy = phase;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__11894;
  v28 = __Block_byref_object_dispose__11895;
  v29 = 0;
  if ([(AFConversation *)self _nodeContainsProvisionalItems:nodeCopy])
  {
    isConfirmedDialogPhase = [phaseCopy isConfirmedDialogPhase];
  }

  else
  {
    isConfirmedDialogPhase = 0;
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __84__AFConversation__childOfNode_withItemWhichCanBeUpdatedWithAceObject_inDialogPhase___block_invoke;
  v21[3] = &unk_1E7343B50;
  v23 = isConfirmedDialogPhase;
  v12 = objectCopy;
  v22 = v12;
  v13 = MEMORY[0x193AFB7B0](v21);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __84__AFConversation__childOfNode_withItemWhichCanBeUpdatedWithAceObject_inDialogPhase___block_invoke_2;
  v17[3] = &unk_1E7343B78;
  v20 = isConfirmedDialogPhase;
  v14 = v13;
  v18 = v14;
  v19 = &v24;
  [nodeCopy enumerateChildNodesWithOptions:2 usingBlock:v17];
  v15 = v25[5];

  _Block_object_dispose(&v24, 8);

  return v15;
}

uint64_t __84__AFConversation__childOfNode_withItemWhichCanBeUpdatedWithAceObject_inDialogPhase___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 dialogPhase];
  v5 = [v3 presentationState];
  v6 = [v3 aceObject];

  v7 = [v4 isExpository];
  v8 = v7;
  if (v5 == 2)
  {
    v8 = *(a1 + 40) | v7;
  }

  if (([v4 isConfirmationDialogPhase] & 1) != 0 || objc_msgSend(v4, "isClarificationDialogPhase"))
  {
    v9 = [*(a1 + 32) af_isUtterance] ^ 1;
  }

  else
  {
    v9 = 1;
  }

  v10 = [*(a1 + 32) encodedClassName];
  v11 = [v6 encodedClassName];
  if (objc_msgSend_isEqualToString_(v10))
  {
    v12 = [*(a1 + 32) groupIdentifier];
    v13 = [v6 groupIdentifier];
    isEqualToString = objc_msgSend_isEqualToString_(v12);
  }

  else
  {
    isEqualToString = 0;
  }

  return v9 & v8 & isEqualToString;
}

void __84__AFConversation__childOfNode_withItemWhichCanBeUpdatedWithAceObject_inDialogPhase___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v7 = [v11 item];
  v8 = v7;
  if ((*(a1 + 48) & 1) != 0 || ([v7 dialogPhase], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isUserRequestDialogPhase"), v9, (v10 & 1) == 0))
  {
    if (!(*(*(a1 + 32) + 16))())
    {
      goto LABEL_6;
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  *a4 = 1;
LABEL_6:
}

- (void)_removeNodes:(id)nodes
{
  v44 = *MEMORY[0x1E69E9840];
  nodesCopy = nodes;
  if ([nodesCopy count])
  {
    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    array3 = [MEMORY[0x1E695DF70] array];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __31__AFConversation__removeNodes___block_invoke;
    v37[3] = &unk_1E7343B00;
    v25 = array;
    v38 = v25;
    selfCopy = self;
    selfCopy2 = self;
    v24 = array2;
    v40 = v24;
    v23 = array3;
    v41 = v23;
    v8 = MEMORY[0x193AFB7B0](v37);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v26 = nodesCopy;
    v9 = nodesCopy;
    v10 = [v9 countByEnumeratingWithState:&v33 objects:v43 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v34;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v34 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v33 + 1) + 8 * i);
          (v8)[2](v8, v14);
          v31[0] = MEMORY[0x1E69E9820];
          v31[1] = 3221225472;
          v31[2] = __31__AFConversation__removeNodes___block_invoke_2;
          v31[3] = &unk_1E7343B28;
          v15 = v8;
          v31[4] = v14;
          v32 = v15;
          [v14 enumerateDescendentNodesUsingBlock:v31];
        }

        v11 = [v9 countByEnumeratingWithState:&v33 objects:v43 count:16];
      }

      while (v11);
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v16 = v9;
    v17 = [v16 countByEnumeratingWithState:&v27 objects:v42 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v28;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(v16);
          }

          [*(*(&v27 + 1) + 8 * j) removeFromParentNode];
        }

        v18 = [v16 countByEnumeratingWithState:&v27 objects:v42 count:16];
      }

      while (v18);
    }

    if ([v25 count])
    {
      delegate = [(AFConversation *)selfCopy2 delegate];
      [delegate conversation:selfCopy2 didRemoveItemsWithIdentifiers:v25 atIndexPaths:v24 parentItemIdentifiers:v23];
    }

    nodesCopy = v26;
  }
}

void __31__AFConversation__removeNodes___block_invoke(uint64_t a1, void *a2)
{
  v14 = a2;
  v3 = [v14 item];
  v4 = *(a1 + 32);
  v5 = [v3 identifier];
  LOBYTE(v4) = [v4 containsObject:v5];

  if ((v4 & 1) == 0)
  {
    v6 = [v14 parentNode];
    v7 = [*(a1 + 40) _rootNode];
    if (v6 == v7)
    {
      v9 = [MEMORY[0x1E695DFB0] null];
    }

    else
    {
      v8 = [v6 item];
      v9 = [v8 identifier];
    }

    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = [v3 identifier];
      [v10 addObject:v11];

      v12 = *(a1 + 48);
      v13 = [v14 absoluteIndexPath];
      [v12 addObject:v13];

      [*(a1 + 56) addObject:v9];
    }
  }
}

- (id)_itemAtIndexPath:(id)path
{
  v3 = [(AFConversation *)self _nodeAtIndexPath:path];
  item = [v3 item];

  return item;
}

- (id)_nodeAtIndexPath:(id)path
{
  pathCopy = path;
  _rootNode = [(AFConversation *)self _rootNode];
  v6 = [_rootNode nodeAtIndexPath:pathCopy];

  return v6;
}

- (AFConversation)initWithLanguageCode:(id)code
{
  v4 = MEMORY[0x1E696AFB0];
  codeCopy = code;
  uUID = [v4 UUID];
  v7 = [(AFConversation *)self initWithIdentifier:uUID languageCode:codeCopy];

  return v7;
}

- (AFConversation)initWithIdentifier:(id)identifier languageCode:(id)code
{
  codeCopy = code;
  identifierCopy = identifier;
  v8 = objc_alloc_init(AFTreeNode);
  v9 = [(AFConversation *)self initWithIdentifier:identifierCopy languageCode:codeCopy rootNode:v8];

  return v9;
}

- (AFConversation)initWithIdentifier:(id)identifier languageCode:(id)code rootNode:(id)node
{
  identifierCopy = identifier;
  codeCopy = code;
  nodeCopy = node;
  v17.receiver = self;
  v17.super_class = AFConversation;
  v11 = [(AFConversation *)&v17 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    objc_storeStrong(&v11->_rootNode, node);
    v14 = [codeCopy copy];
    languageCode = v11->_languageCode;
    v11->_languageCode = v14;

    v11->_synchronizedWithServer = 1;
  }

  return v11;
}

@end