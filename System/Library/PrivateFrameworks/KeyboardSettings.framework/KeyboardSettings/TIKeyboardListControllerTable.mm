@interface TIKeyboardListControllerTable
- (void)_setEditing:(BOOL)editing animated:(BOOL)animated forced:(BOOL)forced;
- (void)addEditingChangeHandler:(id)handler;
- (void)dealloc;
@end

@implementation TIKeyboardListControllerTable

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TIKeyboardListControllerTable;
  [(TIKeyboardListControllerTable *)&v3 dealloc];
}

- (void)addEditingChangeHandler:(id)handler
{
  if (!self->_todoList)
  {
    self->_todoList = [MEMORY[0x277CBEB18] array];
  }

  v5 = [handler copy];
  [(NSMutableArray *)self->_todoList addObject:v5];
}

- (void)_setEditing:(BOOL)editing animated:(BOOL)animated forced:(BOOL)forced
{
  v17 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = TIKeyboardListControllerTable;
  [(TIKeyboardListControllerTable *)&v15 _setEditing:editing animated:animated forced:forced];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  todoList = self->_todoList;
  v7 = [(NSMutableArray *)todoList countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(todoList);
        }

        (*(*(*(&v11 + 1) + 8 * i) + 16))();
      }

      v8 = [(NSMutableArray *)todoList countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v8);
  }

  [(NSMutableArray *)self->_todoList removeAllObjects];
}

@end