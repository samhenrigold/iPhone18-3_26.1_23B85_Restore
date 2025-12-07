@interface NSCompoundPredicate(BRQueryItemAdditions_Private)
- (id)_br_watchedParentURLWithORPredicate1:()BRQueryItemAdditions_Private predicate2:;
- (id)_br_watchedURLWithORPredicate1:()BRQueryItemAdditions_Private predicate2:;
- (id)br_urlWithWatchedChildren;
- (id)br_watchedURL;
@end

@implementation NSCompoundPredicate(BRQueryItemAdditions_Private)

- (id)_br_watchedURLWithORPredicate1:()BRQueryItemAdditions_Private predicate2:
{
  v5 = a4;
  br_watchedURL = [a3 br_watchedURL];
  br_watchedFileObjectID = [v5 br_watchedFileObjectID];
  v8 = br_watchedFileObjectID;
  if (br_watchedURL && br_watchedFileObjectID)
  {
    v9 = br_watchedURL;
  }

  else
  {
    br_urlWithWatchedChildren = [v5 br_urlWithWatchedChildren];
    v11 = br_urlWithWatchedChildren;
    v9 = 0;
    if (br_watchedURL && br_urlWithWatchedChildren)
    {
      if ([br_watchedURL isEqual:br_urlWithWatchedChildren])
      {
        v9 = v11;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  return v9;
}

- (id)_br_watchedParentURLWithORPredicate1:()BRQueryItemAdditions_Private predicate2:
{
  v5 = a4;
  br_urlWithWatchedChildren = [a3 br_urlWithWatchedChildren];
  br_fileObjectIDWithWatchedChildren = [v5 br_fileObjectIDWithWatchedChildren];
  v8 = br_fileObjectIDWithWatchedChildren;
  if (br_urlWithWatchedChildren && br_fileObjectIDWithWatchedChildren)
  {
    v9 = br_urlWithWatchedChildren;
  }

  else
  {
    br_urlWithWatchedChildren2 = [v5 br_urlWithWatchedChildren];
    v11 = br_urlWithWatchedChildren2;
    v9 = 0;
    if (br_urlWithWatchedChildren && br_urlWithWatchedChildren2)
    {
      if ([br_urlWithWatchedChildren isEqual:br_urlWithWatchedChildren2])
      {
        v9 = v11;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  return v9;
}

- (id)br_watchedURL
{
  v20 = *MEMORY[0x1E69E9840];
  if ([self compoundPredicateType] == 1)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    subpredicates = [self subpredicates];
    v3 = [subpredicates countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v16;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v16 != v5)
          {
            objc_enumerationMutation(subpredicates);
          }

          br_watchedURL = [*(*(&v15 + 1) + 8 * i) br_watchedURL];
          if (br_watchedURL)
          {
            v13 = br_watchedURL;
            goto LABEL_19;
          }
        }

        v4 = [subpredicates countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_16;
  }

  if ([self compoundPredicateType] != 2)
  {
LABEL_17:
    v13 = 0;
    goto LABEL_20;
  }

  subpredicates = [self subpredicates];
  if ([subpredicates count] != 2 || (objc_msgSend(subpredicates, "objectAtIndexedSubscript:", 0), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(subpredicates, "objectAtIndexedSubscript:", 1), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(self, "_br_watchedURLWithORPredicate1:predicate2:", v8, v9), v10 = objc_claimAutoreleasedReturnValue(), v9, v8, !v10) && (objc_msgSend(subpredicates, "objectAtIndexedSubscript:", 1), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(subpredicates, "objectAtIndexedSubscript:", 0), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(self, "_br_watchedURLWithORPredicate1:predicate2:", v11, v12), v10 = objc_claimAutoreleasedReturnValue(), v12, v11, !v10))
  {
LABEL_16:

    goto LABEL_17;
  }

  v13 = v10;

LABEL_19:
LABEL_20:

  return v13;
}

- (id)br_urlWithWatchedChildren
{
  v20 = *MEMORY[0x1E69E9840];
  if ([self compoundPredicateType] == 1)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    subpredicates = [self subpredicates];
    v3 = [subpredicates countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v16;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v16 != v5)
          {
            objc_enumerationMutation(subpredicates);
          }

          br_urlWithWatchedChildren = [*(*(&v15 + 1) + 8 * i) br_urlWithWatchedChildren];
          if (br_urlWithWatchedChildren)
          {
            v13 = br_urlWithWatchedChildren;
            goto LABEL_19;
          }
        }

        v4 = [subpredicates countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_16;
  }

  if ([self compoundPredicateType] != 2)
  {
LABEL_17:
    v13 = 0;
    goto LABEL_20;
  }

  subpredicates = [self subpredicates];
  if ([subpredicates count] != 2 || (objc_msgSend(subpredicates, "objectAtIndexedSubscript:", 0), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(subpredicates, "objectAtIndexedSubscript:", 1), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(self, "_br_watchedParentURLWithORPredicate1:predicate2:", v8, v9), v10 = objc_claimAutoreleasedReturnValue(), v9, v8, !v10) && (objc_msgSend(subpredicates, "objectAtIndexedSubscript:", 1), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(subpredicates, "objectAtIndexedSubscript:", 0), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(self, "_br_watchedParentURLWithORPredicate1:predicate2:", v11, v12), v10 = objc_claimAutoreleasedReturnValue(), v12, v11, !v10))
  {
LABEL_16:

    goto LABEL_17;
  }

  v13 = v10;

LABEL_19:
LABEL_20:

  return v13;
}

@end