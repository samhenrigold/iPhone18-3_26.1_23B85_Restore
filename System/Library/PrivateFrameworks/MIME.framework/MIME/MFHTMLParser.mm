@interface MFHTMLParser
+ (id)plainTextFromHTML:(id)l limit:(unint64_t)limit preserveNewlines:(BOOL)newlines;
+ (id)plainTextFromHTMLSnippet:(id)snippet;
@end

@implementation MFHTMLParser

+ (id)plainTextFromHTML:(id)l limit:(unint64_t)limit preserveNewlines:(BOOL)newlines
{
  newlinesCopy = newlines;
  v45 = *MEMORY[0x1E69E9840];
  v8 = [l length];
  theString = l;
  v39 = 0;
  v40 = v8;
  CharactersPtr = CFStringGetCharactersPtr(l);
  CStringPtr = 0;
  v37 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(l, 0x600u);
  }

  v41 = 0;
  v42 = 0;
  v38 = CStringPtr;
  if (!v8)
  {
    goto LABEL_52;
  }

  v11 = 0;
  v12 = 0;
  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v35[6] = v13;
  v35[7] = v13;
  v35[4] = v13;
  v35[5] = v13;
  v35[2] = v13;
  v35[3] = v13;
  v14 = 64;
  v15 = 65;
  v35[0] = v13;
  v35[1] = v13;
  do
  {
    if (v12 >= 4)
    {
      v16 = 4;
    }

    else
    {
      v16 = v12;
    }

    if ((v12 & 0x8000000000000000) != 0 || (v17 = v40, v40 <= v12))
    {
LABEL_37:
      v30 = 0;
      goto LABEL_38;
    }

    if (v37)
    {
      v18 = &v37[v39];
LABEL_12:
      v19 = v18[v12];
      goto LABEL_15;
    }

    if (!v38)
    {
      if (v42 <= v12 || (v25 = v41, v41 > v12))
      {
        v26 = v16 + v11;
        v27 = v14 - v16;
        v28 = v12 - v16;
        v29 = v28 + 64;
        if (v28 + 64 >= v40)
        {
          v29 = v40;
        }

        v41 = v28;
        v42 = v29;
        if (v40 >= v27)
        {
          v17 = v27;
        }

        v46.location = v28 + v39;
        v46.length = v17 + v26;
        CFStringGetCharacters(theString, v46, v35);
        v25 = v41;
      }

      v18 = v35 - v25;
      goto LABEL_12;
    }

    v19 = v38[v39 + v12];
LABEL_15:
    if (v19 != 60 || v12 >= v8 - 5)
    {
      goto LABEL_37;
    }

    v21 = v12 + 5;
    if ((v12 + 5) < 0)
    {
      goto LABEL_37;
    }

    v22 = v40;
    if (v40 <= v21)
    {
      goto LABEL_37;
    }

    if (v37)
    {
      v23 = &v37[v39];
    }

    else
    {
      if (v38)
      {
        v24 = v38[v39 + 5 + v12];
        goto LABEL_34;
      }

      if (v42 <= v21 || (v31 = v41, v41 > v21))
      {
        v32 = v12 + 65;
        if (v12 + 65 >= v40)
        {
          v32 = v40;
        }

        v41 = v12 + 1;
        v42 = v32;
        if (v40 >= v15)
        {
          v22 = v15;
        }

        v48.length = v22 + v11 - 1;
        v48.location = v12 + 1 + v39;
        CFStringGetCharacters(theString, v48, v35);
        v31 = v41;
      }

      v23 = v35 - v31;
    }

    v24 = v23[v12 + 5];
LABEL_34:
    if (v24 != 62 && v24 != 32)
    {
      goto LABEL_37;
    }

    *buffer = 0xAAAAAAAAAAAAAAAALL;
    v44 = -21846;
    v47.location = v12 + 1;
    v47.length = 4;
    CFStringGetCharacters(l, v47, buffer);
    v30 = ustrncasecmp(buffer, "body", 4) == 0;
LABEL_38:
    ++v12;
    if (v30)
    {
      break;
    }

    --v11;
    ++v14;
    ++v15;
  }

  while (v12 < v8);
  if (!v30 || v12 == 0x8000000000000000)
  {
LABEL_52:
    v33 = 0;
    return copyMutablePlainTextFromPoint(l, v33, limit, newlinesCopy);
  }

  v33 = v12 - 1;
  return copyMutablePlainTextFromPoint(l, v33, limit, newlinesCopy);
}

+ (id)plainTextFromHTMLSnippet:(id)snippet
{
  v3 = copyMutablePlainTextFromPoint(snippet, 0, 0xFFFFFFFFuLL, 0);

  return v3;
}

@end