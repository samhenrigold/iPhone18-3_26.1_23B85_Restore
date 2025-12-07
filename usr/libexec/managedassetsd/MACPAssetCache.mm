@interface MACPAssetCache
- (BOOL)ensureStoreExist:(id *)exist;
- (MAKVStore)store;
- (id)_createStore:(id *)store;
@end

@implementation MACPAssetCache

- (id)_createStore:(id *)store
{
  dbInClassC = [(MAStorage *)self->_storage dbInClassC];
  if (dbInClassC)
  {
    missingField = [(MACPAssetCache *)self missingField];
    v7 = missingField != 0;

    v21 = v7;
    name = self->_name;
    storeFields = [(MACPAssetCache *)self storeFields];
    missingField2 = [(MACPAssetCache *)self missingField];
    v20 = 0;
    v11 = [dbInClassC upgradeTable:name fields:storeFields attributes:0 missingNewColumn:missingField2 hasDeletedColumn:0 migrateData:&v21 error:&v20];
    v12 = v20;

    if (v11)
    {
      v13 = [MAKVStore alloc];
      v14 = self->_name;
      v19 = v12;
      v15 = [(MAKVStore *)v13 initWithName:v14 identifier:v14 profile:0 db:dbInClassC attributes:0 error:&v19];
      v16 = v19;

      v12 = v16;
      if (v15)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    v12 = createManagedAssetError();
  }

  if (!v12)
  {
    v12 = createManagedAssetError();
  }

  v17 = v12;
  v15 = 0;
  *store = v12;
  v16 = v12;
LABEL_9:

  return v15;
}

- (BOOL)ensureStoreExist:(id *)exist
{
  if (self->_store)
  {
    return 1;
  }

  v5 = [(MACPAssetCache *)self _createStore:exist];
  store = self->_store;
  self->_store = v5;

  return self->_store != 0;
}

- (MAKVStore)store
{
  store = self->_store;
  if (!store)
  {
    v8 = 0;
    v4 = [(MACPAssetCache *)self _createStore:&v8];
    v5 = v8;
    v6 = self->_store;
    self->_store = v4;

    store = self->_store;
  }

  return store;
}

@end