@interface CNContactStore(TUSearchUtilities)
- (id)contactForDestinationId:()TUSearchUtilities;
- (id)contactForDestinationId:()TUSearchUtilities keysToFetch:;
- (id)contactForIdentifier:()TUSearchUtilities;
- (id)contactForIdentifier:()TUSearchUtilities keysToFetch:;
- (id)contactForIdentifier:()TUSearchUtilities keysToFetch:usingCache:;
@end

@implementation CNContactStore(TUSearchUtilities)

- (id)contactForIdentifier:()TUSearchUtilities
{
  v4 = contactForIdentifier__onceToken;
  v5 = a3;
  if (v4 != -1)
  {
    [CNContactStore(TUSearchUtilities) contactForIdentifier:];
  }

  keysToFetchForFaceTime = [MEMORY[0x1E695CD58] keysToFetchForFaceTime];
  v7 = [self contactForIdentifier:v5 keysToFetch:keysToFetchForFaceTime usingCache:contactForIdentifier__identifierToContactCache];

  return v7;
}

- (id)contactForIdentifier:()TUSearchUtilities keysToFetch:usingCache:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 objectForKey:v8];
  if (!v11)
  {
    v11 = [self contactForIdentifier:v8 keysToFetch:v9];
    if (v11)
    {
      [v10 setObject:v11 forKey:v8];
    }
  }

  return v11;
}

- (id)contactForIdentifier:()TUSearchUtilities keysToFetch:
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v13 = 0;
    v8 = [self unifiedContactWithIdentifier:v6 keysToFetch:v7 error:&v13];
    v9 = v13;
    v10 = v9;
    if (v9)
    {
      v11 = TUDefaultLog(v9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v15 = v6;
        v16 = 2112;
        v17 = v10;
        _os_log_impl(&dword_1956FD000, v11, OS_LOG_TYPE_DEFAULT, "Error trying to fetch backing contact for identifier %@: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  return v8;
}

- (id)contactForDestinationId:()TUSearchUtilities
{
  v4 = a3;
  if (contactForDestinationId__onceToken != -1)
  {
    [CNContactStore(TUSearchUtilities) contactForDestinationId:];
  }

  v5 = [contactForDestinationId__destinationIDToContactCache objectForKey:v4];
  if (!v5)
  {
    keysToFetchForFaceTime = [MEMORY[0x1E695CD58] keysToFetchForFaceTime];
    v5 = [self contactForDestinationId:v4 keysToFetch:keysToFetchForFaceTime];

    if (v5)
    {
      [contactForDestinationId__destinationIDToContactCache setObject:v5 forKey:v4];
    }
  }

  return v5;
}

- (id)contactForDestinationId:()TUSearchUtilities keysToFetch:
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [TUHandle normalizedHandleWithDestinationID:v6];
  value = [v8 value];

  if (value)
  {
    if ([v6 _appearsToBePhoneNumber])
    {
      v11 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:value];
      if (v11)
      {
        v12 = [MEMORY[0x1E695CD58] predicateForContactsMatchingPhoneNumber:v11];
        v13 = TUDefaultLog(v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v30 = v12;
          _os_log_impl(&dword_1956FD000, v13, OS_LOG_TYPE_DEFAULT, "Looking up contacts matching predicate %@", buf, 0xCu);
        }

        v14 = [v7 arrayByAddingObject:*MEMORY[0x1E695C330]];
        v28 = 0;
        v15 = [self unifiedContactsMatchingPredicate:v12 keysToFetch:v14 error:&v28];
        v16 = v28;

        if (v15 && (v17 = [v15 count]) != 0)
        {
          v18 = TUDefaultLog(v17);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v30 = v15;
            _os_log_impl(&dword_1956FD000, v18, OS_LOG_TYPE_DEFAULT, "Found matching contacts %@, using first object", buf, 0xCu);
          }

          firstObject = [v15 firstObject];
        }

        else
        {
          v25 = TUDefaultLog(v17);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            [CNContactStore(TUSearchUtilities) contactForDestinationId:keysToFetch:];
          }

          firstObject = 0;
        }

        goto LABEL_32;
      }

      v12 = TUDefaultLog(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [CNContactStore(TUSearchUtilities) contactForDestinationId:value keysToFetch:v12];
      }

      v16 = 0;
    }

    else
    {
      v11 = [MEMORY[0x1E695CD58] predicateForContactsMatchingEmailAddress:value];
      v20 = TUDefaultLog(v11);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v30 = v11;
        _os_log_impl(&dword_1956FD000, v20, OS_LOG_TYPE_DEFAULT, "Looking up contacts matching predicate %@", buf, 0xCu);
      }

      v21 = [v7 arrayByAddingObject:*MEMORY[0x1E695C208]];
      v27 = 0;
      v12 = [self unifiedContactsMatchingPredicate:v11 keysToFetch:v21 error:&v27];
      v16 = v27;

      if (v12)
      {
        v22 = [v12 count];
        if (v22)
        {
          v23 = TUDefaultLog(v22);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v30 = v12;
            _os_log_impl(&dword_1956FD000, v23, OS_LOG_TYPE_DEFAULT, "Found matching contacts %@, using first object", buf, 0xCu);
          }

          firstObject = [v12 firstObject];
          goto LABEL_32;
        }
      }

      v24 = TUDefaultLog(v22);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [CNContactStore(TUSearchUtilities) contactForDestinationId:keysToFetch:];
      }
    }

    firstObject = 0;
LABEL_32:

    goto LABEL_33;
  }

  v11 = TUDefaultLog(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [CNContactStore(TUSearchUtilities) contactForDestinationId:v6 keysToFetch:v11];
  }

  v16 = 0;
  firstObject = 0;
LABEL_33:

  return firstObject;
}

- (void)contactForDestinationId:()TUSearchUtilities keysToFetch:.cold.3(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1956FD000, a2, OS_LOG_TYPE_ERROR, "Could not create a CNPhoneNumber using the normalized destination identifier '%@'.", &v2, 0xCu);
}

- (void)contactForDestinationId:()TUSearchUtilities keysToFetch:.cold.4(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1956FD000, a2, OS_LOG_TYPE_ERROR, "Could not normalize destination ID %@ to perform contacts lookup", &v2, 0xCu);
}

@end