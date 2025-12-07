@interface NSMutableString
- (void)appendPrettyBOOL:(uint64_t)l withName:(int)name andIndent:(char)indent options:;
- (void)appendPrettyInt:(uint64_t)int withName:(int)name andIndent:(char)indent options:;
- (void)appendPrettyObject:(void *)object withName:(int)name andIndent:(uint64_t)indent options:;
@end

@implementation NSMutableString

- (void)appendPrettyObject:(void *)object withName:(int)name andIndent:(uint64_t)indent options:
{
  v77 = *MEMORY[0x1E69E9840];
  v7 = a2;
  objectCopy = object;
  if (self && v7 && (indent & 0xC) != 4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (v9 = v7, objc_opt_class(), v10 = objc_opt_isKindOfClass(), v9, (v10))
    {
      v11 = v7;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v13 = ")}";
      }

      else
      {
        v13 = ")";
      }

      v14 = "{(";
      if ((isKindOfClass & 1) == 0)
      {
        v14 = "(";
      }

      v15 = 4 * name;
      [self appendFormat:@"\n%*s%@ = %s", (4 * name + 4), " ", objectCopy, v14];
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v16 = v11;
      v17 = [v16 countByEnumeratingWithState:&v71 objects:v76 count:16];
      if (v17)
      {
        v18 = v17;
        v61 = (v15 + 4);
        v63 = v13;
        v58 = v7;
        v19 = (v15 + 8);
        v20 = *v72;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v72 != v20)
            {
              objc_enumerationMutation(v16);
            }

            v22 = *(*(&v71 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              v23 = [v22 descriptionWithIndent:(name + 2) options:indent];
              [self appendFormat:@"\n%*s{%@", v19, " ", v23];

              [self appendFormat:@"\n%*s}, ", v19, " ", v55];
            }

            else
            {
              v24 = v22;
              objc_opt_class();
              if (v24 && (v25 = objc_opt_isKindOfClass(), v24, (indent & 3) == 3) && (v25 & 1) != 0)
              {
                [self appendFormat:@"\n%*s<%lu-char-str>, ", v19, " ", objc_msgSend(v24, "length")];
              }

              else
              {
                v26 = [v24 description];
                [self appendFormat:@"\n%*s%@, ", v19, " ", v26];
              }
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v71 objects:v76 count:16];
        }

        while (v18);

        [self appendFormat:@"\n%*s", v61, " "];
        v7 = v58;
        v13 = v63;
      }

      else
      {
      }

      [self appendFormat:@"%s", v13];
    }

    else
    {
      v27 = v9;
      objc_opt_class();
      v28 = objc_opt_isKindOfClass();

      if ((v28 & 1) == 0)
      {
        v47 = v27;
        objc_opt_class();
        v48 = objc_opt_isKindOfClass();

        if (v48)
        {
          uUIDString = [v47 UUIDString];
          [self appendFormat:@"\n%*s%@ = %@", (4 * name + 4), " ", objectCopy, uUIDString];
        }

        else
        {
          if (isa_nsstring(v47))
          {
            if ((~indent & 3) != 0)
            {
              [self appendFormat:@"\n%*s%@ = %@", (4 * name + 4), " ", objectCopy, v47];
            }

            else
            {
              [self appendFormat:@"\n%*s%@ = <%lu-char-str>", (4 * name + 4), " ", objectCopy, objc_msgSend(v47, "length")];
            }

            goto LABEL_28;
          }

          if (isa_nsdata(v47))
          {
            v50 = v47;
            v51 = [v50 length];
            v52 = [v50 description];

            [self appendFormat:@"\n%*s%@ = %u:%@", (4 * name + 4), " ", objectCopy, v51, v52];
            goto LABEL_28;
          }

          uUIDString = v47;
          if (objc_opt_respondsToSelector())
          {
            v53 = [uUIDString descriptionWithIndent:? options:?];
            [self appendFormat:@"\n%*s%@ = {%@", (4 * (name + 1)), " ", objectCopy, v53];

            [self appendFormat:@"\n%*s}", (4 * (name + 1)), " ", v56, v57];
          }

          else
          {
            v54 = [uUIDString description];
            [self appendFormat:@"\n%*s%@ = %@", (4 * name + 4), " ", objectCopy, v54];
          }
        }

        goto LABEL_28;
      }

      v29 = v27;
      v30 = " ";
      [self appendFormat:@"\n%*s%@ = {", (4 * name + 4), " ", objectCopy];
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v31 = v29;
      v32 = [v31 countByEnumeratingWithState:&v67 objects:v75 count:16];
      if (v32)
      {
        v33 = v32;
        v59 = v7;
        v60 = objectCopy;
        v34 = (4 * name + 8);
        v35 = *v68;
        v64 = v31;
        v62 = *v68;
        do
        {
          for (j = 0; j != v33; ++j)
          {
            if (*v68 != v35)
            {
              objc_enumerationMutation(v31);
            }

            v37 = *(*(&v67 + 1) + 8 * j);
            v38 = [v31 objectForKeyedSubscript:v37];
            if (objc_opt_respondsToSelector())
            {
              v39 = [v38 descriptionWithIndent:(name + 2) options:indent];
              [self appendFormat:@"\n%*s%@ = {%@", v34, v30, v37, v39];

              [self appendFormat:@"\n%*s}, ", v34, v30];
            }

            else
            {
              v40 = v34;
              v41 = v33;
              v42 = v30;
              v43 = v38;
              objc_opt_class();
              if (v43 && (v44 = objc_opt_isKindOfClass(), v43, (indent & 3) == 3) && (v44 & 1) != 0)
              {
                v45 = [v43 length];
                v30 = v42;
                v34 = v40;
                [self appendFormat:@"\n%*s%@ = <%lu-char-str>", v40, v42, v37, v45];
              }

              else
              {
                v46 = [v43 description];
                v30 = v42;
                v34 = v40;
                [self appendFormat:@"\n%*s%@ = %@", v40, v42, v37, v46];
              }

              v33 = v41;
              v35 = v62;
              v31 = v64;
            }
          }

          v33 = [v31 countByEnumeratingWithState:&v67 objects:v75 count:16];
        }

        while (v33);

        [self appendFormat:@"\n%*s", (4 * name + 4), v30];
        v7 = v59;
        objectCopy = v60;
      }

      else
      {
      }

      [self appendString:@"}"];
    }
  }

LABEL_28:
}

- (void)appendPrettyBOOL:(uint64_t)l withName:(int)name andIndent:(char)indent options:
{
  if (result && (indent & 0xC) != 4)
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    return [result appendFormat:@"\n%*s%@ = %@", (4 * name + 4), " ", l, v7, v5, v6];
  }

  return result;
}

- (void)appendPrettyInt:(uint64_t)int withName:(int)name andIndent:(char)indent options:
{
  if (result)
  {
    if ((indent & 0xC) != 4)
    {
      return [result appendFormat:@"\n%*s%@ = %lld", (4 * name + 4), " ", int, a2, v5, v6];
    }
  }

  return result;
}

@end