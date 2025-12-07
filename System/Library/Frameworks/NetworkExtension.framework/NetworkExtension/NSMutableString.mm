@interface NSMutableString
- (void)appendPrettyObject:(int)object withIndent:(uint64_t)indent options:(unint64_t)options depth:;
- (void)appendPrettyObject:(uint64_t)object withName:(uint64_t)name andIndent:(uint64_t)indent options:(unint64_t)options depth:;
@end

@implementation NSMutableString

- (void)appendPrettyObject:(uint64_t)object withName:(uint64_t)name andIndent:(uint64_t)indent options:(unint64_t)options depth:
{
  if (self)
  {
    nameCopy = name;
    v11 = (4 * name + 4);
    v12 = a2;
    [self appendFormat:@"\n%*s%@ = ", v11, " ", object];
    [(NSMutableString *)self appendPrettyObject:v12 withIndent:nameCopy options:indent depth:options];
  }
}

- (void)appendPrettyObject:(int)object withIndent:(uint64_t)indent options:(unint64_t)options depth:
{
  v39 = *MEMORY[0x1E69E9840];
  v30 = a2;
  objc_opt_self();
  optionsCopy = options;
  if (options > 4)
  {
    goto LABEL_41;
  }

  if ((isa_nsarray(v30) & 1) != 0 || isa_nsset(v30))
  {
    v7 = v30;
    v8 = isa_nsset(v7);
    v9 = "(";
    if (v8)
    {
      v9 = "{(";
      v10 = ")}";
    }

    else
    {
      v10 = ")";
    }

    [self appendFormat:@"%s", v9];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v12)
    {
      v13 = v12;
      v29 = v10;
      v14 = *v35;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v35 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v34 + 1) + 8 * i);
          [self appendFormat:@"\n%*s", (4 * object + 8), " "];
          [(NSMutableString *)self appendPrettyObject:v16 withIndent:object + 1 options:indent depth:optionsCopy + 1];
          [self appendFormat:@", "];
        }

        v13 = [v11 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v13);

      [self appendFormat:@"\n%*s", (4 * object + 4), " "];
      v10 = v29;
    }

    else
    {
    }

    [self appendFormat:@"%s", v10];

    goto LABEL_36;
  }

  if (!isa_nsdictionary(v30))
  {
LABEL_41:
    if (isa_nsstring(v30))
    {
      v25 = v30;
      v26 = v25;
      if ((~indent & 3) != 0)
      {
        [self appendFormat:@"%@", v25];
      }

      else
      {
        [self appendFormat:@"<%lu-char-str>", objc_msgSend(v25, "length")];
      }
    }

    else if (objc_opt_respondsToSelector())
    {
      v27 = [v30 descriptionWithIndent:(object + 1) options:indent];
      [self appendFormat:@"{%@", v27];

      [self appendFormat:@"\n%*s}", (4 * (object + 1)), " "];
    }

    else
    {
      v28 = [v30 description];
      [self appendFormat:@"%@", v28];
    }

    goto LABEL_36;
  }

  v17 = v30;
  [self appendFormat:@"{"];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v18 = v17;
  v19 = [v18 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v35;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v35 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v34 + 1) + 8 * j);
        v24 = [v18 objectForKeyedSubscript:v23];
        [(NSMutableString *)self appendPrettyObject:v24 withName:v23 andIndent:(object + 1) options:indent depth:optionsCopy + 1];
        [self appendFormat:@", "];
      }

      v20 = [v18 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v20);

    [self appendFormat:@"\n%*s", (4 * object + 4), " "];
  }

  else
  {
  }

  [self appendString:@"}"];

LABEL_36:
}

@end