@interface SIRINLUEXTERNALUtteranceAlignment(IndexUtils)
+ (uint64_t)subset:()IndexUtils of:;
- (BOOL)equalIndexes:()IndexUtils;
- (BOOL)overlaps:()IndexUtils;
- (BOOL)subsumedBy:()IndexUtils;
- (uint64_t)compareStartAndSize:()IndexUtils;
- (uint64_t)getEndIndex;
- (uint64_t)getStartIndex;
@end

@implementation SIRINLUEXTERNALUtteranceAlignment(IndexUtils)

- (uint64_t)compareStartAndSize:()IndexUtils
{
  v4 = a3;
  spans = [self spans];
  if ([spans count])
  {
  }

  else
  {
    spans2 = [v4 spans];
    v7 = [spans2 count];

    if (!v7)
    {
      v16 = 0;
      goto LABEL_13;
    }
  }

  spans3 = [self spans];
  v9 = [spans3 count];

  if (!v9)
  {
    goto LABEL_9;
  }

  spans4 = [v4 spans];
  v11 = [spans4 count];

  if (v11)
  {
    getStartIndex = [self getStartIndex];
    getEndIndex = [self getEndIndex];
    getStartIndex2 = [v4 getStartIndex];
    getEndIndex2 = [v4 getEndIndex];
    if (getStartIndex >= getStartIndex2)
    {
      if (getStartIndex <= getStartIndex2)
      {
        if (getEndIndex <= getEndIndex2)
        {
          v16 = getEndIndex < getEndIndex2;
          goto LABEL_13;
        }

        goto LABEL_7;
      }

LABEL_9:
      v16 = 1;
      goto LABEL_13;
    }
  }

LABEL_7:
  v16 = -1;
LABEL_13:

  return v16;
}

- (BOOL)equalIndexes:()IndexUtils
{
  v4 = a3;
  spans = [v4 spans];
  if (![spans count])
  {

LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  spans2 = [self spans];
  v7 = [spans2 count];

  if (!v7)
  {
    goto LABEL_6;
  }

  getStartIndex = [v4 getStartIndex];
  if (getStartIndex != [self getStartIndex])
  {
    goto LABEL_6;
  }

  getEndIndex = [v4 getEndIndex];
  v10 = getEndIndex == [self getEndIndex];
LABEL_7:

  return v10;
}

- (BOOL)overlaps:()IndexUtils
{
  v4 = a3;
  spans = [v4 spans];
  if (![spans count])
  {

LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  spans2 = [self spans];
  v7 = [spans2 count];

  if (!v7)
  {
    goto LABEL_6;
  }

  getStartIndex = [self getStartIndex];
  if (getStartIndex >= [v4 getEndIndex])
  {
    goto LABEL_6;
  }

  getEndIndex = [self getEndIndex];
  v10 = getEndIndex > [v4 getStartIndex];
LABEL_7:

  return v10;
}

- (BOOL)subsumedBy:()IndexUtils
{
  v4 = a3;
  spans = [v4 spans];
  if (![spans count])
  {

LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  spans2 = [self spans];
  v7 = [spans2 count];

  if (!v7)
  {
    goto LABEL_6;
  }

  getStartIndex = [v4 getStartIndex];
  if (getStartIndex > [self getStartIndex])
  {
    goto LABEL_6;
  }

  getEndIndex = [v4 getEndIndex];
  v10 = getEndIndex >= [self getEndIndex];
LABEL_7:

  return v10;
}

- (uint64_t)getEndIndex
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  spans = [self spans];
  v2 = [spans countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    LODWORD(v4) = 0;
    v5 = *v10;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(spans);
        }

        endIndex = [*(*(&v9 + 1) + 8 * i) endIndex];
        if (v4 <= endIndex)
        {
          v4 = endIndex;
        }

        else
        {
          v4 = v4;
        }
      }

      v3 = [spans countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)getStartIndex
{
  v17 = *MEMORY[0x1E69E9840];
  spans = [self spans];
  v3 = [spans count];

  if (!v3)
  {
    return 0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  spans2 = [self spans];
  v5 = [spans2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    LODWORD(v8) = -1;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(spans2);
        }

        startIndex = [*(*(&v12 + 1) + 8 * i) startIndex];
        if (v8 >= startIndex)
        {
          v8 = startIndex;
        }

        else
        {
          v8 = v8;
        }
      }

      v6 = [spans2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 0xFFFFFFFFLL;
  }

  return v8;
}

+ (uint64_t)subset:()IndexUtils of:
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v6 count])
  {
    if ([v5 count])
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      obj = v6;
      v7 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
      if (v7)
      {
        v8 = v7;
        v26 = v6;
        v9 = *v41;
        v27 = *v41;
        v28 = v5;
        while (2)
        {
          v10 = 0;
          v29 = v8;
          do
          {
            if (*v41 != v9)
            {
              objc_enumerationMutation(obj);
            }

            v11 = *(*(&v40 + 1) + 8 * v10);
            v12 = [v5 count];
            if (v12 <= [v11 count])
            {
              v31 = v10;
              v38 = 0u;
              v39 = 0u;
              v36 = 0u;
              v37 = 0u;
              v13 = v5;
              v14 = [v13 countByEnumeratingWithState:&v36 objects:v45 count:16];
              if (!v14)
              {
LABEL_31:

                v24 = 1;
                v5 = v28;
                goto LABEL_32;
              }

              v15 = v14;
              v16 = *v37;
              while (1)
              {
                v17 = 0;
LABEL_12:
                if (*v37 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v36 + 1) + 8 * v17);
                v32 = 0u;
                v33 = 0u;
                v34 = 0u;
                v35 = 0u;
                v19 = v11;
                v20 = [v19 countByEnumeratingWithState:&v32 objects:v44 count:16];
                if (!v20)
                {
                  break;
                }

                v21 = v20;
                v22 = *v33;
LABEL_16:
                v23 = 0;
                while (1)
                {
                  if (*v33 != v22)
                  {
                    objc_enumerationMutation(v19);
                  }

                  if (*(*(&v32 + 1) + 8 * v23) == v18)
                  {
                    break;
                  }

                  if (v21 == ++v23)
                  {
                    v21 = [v19 countByEnumeratingWithState:&v32 objects:v44 count:16];
                    if (v21)
                    {
                      goto LABEL_16;
                    }

                    goto LABEL_26;
                  }
                }

                if (++v17 != v15)
                {
                  goto LABEL_12;
                }

                v15 = [v13 countByEnumeratingWithState:&v36 objects:v45 count:16];
                if (!v15)
                {
                  goto LABEL_31;
                }
              }

LABEL_26:

              v9 = v27;
              v5 = v28;
              v8 = v29;
              v10 = v31;
            }

            ++v10;
          }

          while (v10 != v8);
          v8 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }

        v24 = 0;
LABEL_32:
        v6 = v26;
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = 1;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

@end