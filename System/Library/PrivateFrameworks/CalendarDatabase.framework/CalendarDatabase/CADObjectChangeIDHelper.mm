@interface CADObjectChangeIDHelper
+ (id)makeObjectChangeEntityTypeMapToArray:(id)array;
+ (id)makeObjectChangeEntityTypeMapToSet:(id)set;
@end

@implementation CADObjectChangeIDHelper

+ (id)makeObjectChangeEntityTypeMapToArray:(id)array
{
  v21 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(arrayCopy, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = arrayCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v10, "entityType", v16)}];
        array = [v4 objectForKey:v11];

        if (!array)
        {
          array = [MEMORY[0x1E695DF70] array];
          v13 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v10, "entityType")}];
          [v4 setObject:array forKey:v13];
        }

        v14 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v10, "changeID")}];
        [array addObject:v14];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)makeObjectChangeEntityTypeMapToSet:(id)set
{
  v21 = *MEMORY[0x1E69E9840];
  setCopy = set;
  v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(setCopy, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = setCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v10, "entityType", v16)}];
        v12 = [v4 objectForKey:v11];

        if (!v12)
        {
          v12 = [MEMORY[0x1E695DFA8] set];
          v13 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v10, "entityType")}];
          [v4 setObject:v12 forKey:v13];
        }

        v14 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v10, "changeID")}];
        [v12 addObject:v14];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return v4;
}

@end