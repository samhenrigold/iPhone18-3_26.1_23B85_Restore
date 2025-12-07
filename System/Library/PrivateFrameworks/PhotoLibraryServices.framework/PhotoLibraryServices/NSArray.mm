@interface NSArray
@end

@implementation NSArray

uint64_t __63__NSArray_Additions__pl_indexOfFirstObjectInRange_passingTest___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) objectAtIndex:a2];
  v6 = (*(v4 + 16))(v4, v5, a2, *(*(a1 + 48) + 8) + 24);

  return v6;
}

uint64_t __61__NSArray_Additions__pl_arrayOfUniqueObjectsNotInOrderedSet___block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (*a2 >= *a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = -1;
  }

  if (*a2 > *a3)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

id __65__NSArray_PhotoLibraryServices___pl_prettyDescriptionWithIndent___block_invoke(uint64_t a1, const char *a2)
{
  v4 = objc_msgSend_count(*(a1 + 32), a2) - 1;
  if (v4 <= 0x3B9AC9FF)
  {
    if (v4 <= 0x5F5E0FF)
    {
      if (v4 <= 0x98967F)
      {
        if (v4 <= 0xF423F)
        {
          if (v4 >> 5 <= 0xC34)
          {
            if (v4 >> 4 <= 0x270)
            {
              if (v4 <= 0x3E7)
              {
                if (v4 <= 0x63)
                {
                  if (v4 <= 9)
                  {
                    v5 = 1;
                  }

                  else
                  {
                    v5 = 2;
                  }
                }

                else
                {
                  v5 = 3;
                }
              }

              else
              {
                v5 = 4;
              }
            }

            else
            {
              v5 = 5;
            }
          }

          else
          {
            v5 = 6;
          }
        }

        else
        {
          v5 = 7;
        }
      }

      else
      {
        v5 = 8;
      }
    }

    else
    {
      v5 = 9;
    }
  }

  else
  {
    v5 = 10;
  }

  v6 = [MEMORY[0x1E696AD60] string];
  v7 = PLIndentToString();
  [v6 appendFormat:@"<%@: %p> [", objc_opt_class(), *(a1 + 32)];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__NSArray_PhotoLibraryServices___pl_prettyDescriptionWithIndent___block_invoke_2;
  v14[3] = &unk_1E7573A70;
  v8 = *(a1 + 32);
  v17 = *(a1 + 40);
  v9 = v6;
  v15 = v9;
  v16 = v7;
  v18 = v5;
  v10 = v7;
  [v8 enumerateObjectsUsingBlock:v14];
  [v9 appendFormat:@"\n%@]", v10];
  v11 = v16;
  v12 = v9;

  return v9;
}

void __65__NSArray_PhotoLibraryServices___pl_prettyDescriptionWithIndent___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 _pl_prettyDescriptionWithIndent:*(a1 + 48) + 1];
  [*(a1 + 32) appendFormat:@"\n%@%@[%*lu]: %@", *(a1 + 40), *MEMORY[0x1E69BFEC8], *(a1 + 56), a3, v5];
}

void __45__NSArray_PhotoLibraryServices___pl_flatMap___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*(a1 + 40) + 16))();
  [v1 addObjectsFromArray:v2];
}

@end