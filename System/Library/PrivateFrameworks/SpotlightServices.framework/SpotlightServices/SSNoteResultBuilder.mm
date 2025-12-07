@interface SSNoteResultBuilder
- (SSNoteResultBuilder)initWithResult:(id)result;
- (id)buildCompactCardSection;
- (id)buildInlineCardSection;
- (id)buildTitle;
@end

@implementation SSNoteResultBuilder

- (SSNoteResultBuilder)initWithResult:(id)result
{
  resultCopy = result;
  v17.receiver = self;
  v17.super_class = SSNoteResultBuilder;
  v5 = [(SSResultBuilder *)&v17 initWithResult:resultCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [resultCopy valueForAttribute:*MEMORY[0x1E6963F48] withType:objc_opt_class()];
    v8 = [v6 whiteSpaceCondensedStringForString:v7];
    [(SSNoteResultBuilder *)v5 setTitle:v8];

    v9 = [resultCopy valueForAttribute:*MEMORY[0x1E6964620] withType:objc_opt_class()];
    -[SSNoteResultBuilder setIsShared:](v5, "setIsShared:", [v9 BOOLValue]);

    v10 = [resultCopy valueForAttribute:*MEMORY[0x1E6964618] withType:objc_opt_class()];
    -[SSNoteResultBuilder setIsLocked:](v5, "setIsLocked:", [v10 BOOLValue]);

    v11 = [resultCopy valueForAttribute:*MEMORY[0x1E6963E88] withType:objc_opt_class()];
    [(SSNoteResultBuilder *)v5 setModificationDate:v11];

    v12 = [resultCopy valueForAttribute:*MEMORY[0x1E6963F28] withType:objc_opt_class()];
    if (v12)
    {
      [(SSNoteResultBuilder *)v5 setFormattedBody:v12];
    }

    else
    {
      v13 = [resultCopy valueForAttribute:*MEMORY[0x1E6964B18] withType:objc_opt_class()];
      [(SSNoteResultBuilder *)v5 setFormattedBody:v13];
    }

    v14 = [resultCopy valueForAttribute:*MEMORY[0x1E6964610] withType:objc_opt_class()];
    [(SSNoteResultBuilder *)v5 setFolder:v14];

    v15 = [resultCopy valueForAttribute:*MEMORY[0x1E6964608] withType:objc_opt_class()];
    [(SSNoteResultBuilder *)v5 setAccount:v15];
  }

  return v5;
}

- (id)buildInlineCardSection
{
  v88[1] = *MEMORY[0x1E69E9840];
  if ([(SSNoteResultBuilder *)self isLocked])
  {
    v3 = MEMORY[0x1E69CA3A0];
    title = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v5 = [title localizedStringForKey:@"LOCKED" value:&stru_1F556FE60 table:@"SpotlightServices"];
    v6 = [v3 textWithString:v5];
LABEL_5:
    v80 = v6;
    goto LABEL_6;
  }

  title = [(SSNoteResultBuilder *)self title];
  v7 = [(SSResultBuilder *)self buildHighlightedMatchedTextWithTitle:title headTruncation:1];
  v5 = v7;
  if (v7)
  {
    v6 = v7;
    v5 = v6;
    goto LABEL_5;
  }

  v78 = MEMORY[0x1E69CA3A0];
  formattedBody = [(SSNoteResultBuilder *)self formattedBody];
  v80 = [v78 textWithString:formattedBody];

LABEL_6:
  v85.receiver = self;
  v85.super_class = SSNoteResultBuilder;
  buildInlineCardSection = [(SSResultBuilder *)&v85 buildInlineCardSection];
  v9 = objc_opt_new();
  modificationDate = [(SSNoteResultBuilder *)self modificationDate];

  if (modificationDate)
  {
    v11 = MEMORY[0x1E69CA0F0];
    v12 = MEMORY[0x1E696AEC0];
    modificationDate2 = [(SSNoteResultBuilder *)self modificationDate];
    v14 = [SSDateFormatManager dynamicCompactStringFromDate:modificationDate2];
    v15 = [v12 stringWithFormat:@"%@  ", v14];
    v16 = [v11 textWithString:v15];
    [v9 addObject:v16];
  }

  result = [(SSResultBuilder *)self result];
  formattedSnippet = [result formattedSnippet];
  v19 = 0x1E695D000uLL;
  if (formattedSnippet)
  {
    v20 = formattedSnippet;
    result2 = [(SSResultBuilder *)self result];
    formattedSnippet2 = [result2 formattedSnippet];
    formattedTextPieces = [formattedSnippet2 formattedTextPieces];
    v24 = objc_msgSend_count(formattedTextPieces);

    v19 = 0x1E695D000;
    if (v24)
    {
      result3 = [(SSResultBuilder *)self result];
      formattedSnippet3 = [result3 formattedSnippet];
      formattedTextPieces2 = [formattedSnippet3 formattedTextPieces];
      [v9 addObjectsFromArray:formattedTextPieces2];

      goto LABEL_15;
    }
  }

  else
  {
  }

  result3 = [v80 formattedTextPieces];
  if (result3)
  {
    [v9 addObjectsFromArray:result3];
  }

  else
  {
    v28 = MEMORY[0x1E69CA0F0];
    text = [v80 text];
    v30 = [v28 textWithString:text];
    v88[0] = v30;
    [*(v19 + 3784) arrayWithObjects:v88 count:1];
    v32 = v31 = v19;
    [v9 addObjectsFromArray:v32];

    v19 = v31;
  }

LABEL_15:

  v33 = objc_opt_new();
  [v33 setFormattedTextPieces:v9];
  v87 = v33;
  v34 = [*(v19 + 3784) arrayWithObjects:&v87 count:1];
  [buildInlineCardSection setDescriptions:v34];

  v35 = isMacOS();
  v36 = objc_opt_new();
  folder = [(SSNoteResultBuilder *)self folder];
  v38 = [folder length];

  if (v35)
  {
    if (v38)
    {
      folder2 = [(SSNoteResultBuilder *)self folder];
      [v36 addObject:folder2];
    }

    account = [(SSNoteResultBuilder *)self account];
    v41 = [account length];

    if (v41)
    {
      account2 = [(SSNoteResultBuilder *)self account];
      [v36 addObject:account2];
    }

    footnote = [v36 componentsJoinedByString:@" · "];
    if ([footnote length])
    {
      v44 = objc_opt_new();
      v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@" — %@", footnote];
      [v44 setText:v45];

      title2 = [buildInlineCardSection title];
      formattedTextPieces3 = [title2 formattedTextPieces];
      v48 = [formattedTextPieces3 arrayByAddingObject:v44];
      title3 = [buildInlineCardSection title];
      [title3 setFormattedTextPieces:v48];

      title4 = [buildInlineCardSection title];
      formattedTextPieces4 = [title4 formattedTextPieces];
      firstObject = [formattedTextPieces4 firstObject];
      [firstObject setIsEmphasized:1];
    }
  }

  else
  {
    if (v38)
    {
      v53 = objc_opt_new();
      [v53 setSymbolName:@"folder"];
      [v53 setIsTemplate:1];
      v54 = objc_opt_new();
      [v54 setGlyph:v53];
      [v36 addObject:v54];
      v55 = MEMORY[0x1E69CA0F0];
      v56 = MEMORY[0x1E696AEC0];
      folder3 = [(SSNoteResultBuilder *)self folder];
      v58 = [v56 stringWithFormat:@" %@", folder3];
      v59 = [v55 textWithString:v58];
      [v36 addObject:v59];
    }

    account3 = [(SSNoteResultBuilder *)self account];
    v61 = [account3 length];

    if (v61)
    {
      v62 = MEMORY[0x1E69CA0F0];
      v63 = MEMORY[0x1E696AEC0];
      folder4 = [(SSNoteResultBuilder *)self folder];
      if ([folder4 length])
      {
        v65 = @" — ";
      }

      else
      {
        v65 = &stru_1F556FE60;
      }

      account4 = [(SSNoteResultBuilder *)self account];
      v67 = [v63 stringWithFormat:@"%@%@", v65, account4];
      v68 = [v62 textWithString:v67];
      [v36 addObject:v68];
    }

    if (objc_msgSend_count(v36))
    {
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v69 = v36;
      v70 = [v69 countByEnumeratingWithState:&v81 objects:v86 count:16];
      if (v70)
      {
        v71 = v70;
        v72 = *v82;
        do
        {
          for (i = 0; i != v71; ++i)
          {
            if (*v82 != v72)
            {
              objc_enumerationMutation(v69);
            }

            [*(*(&v81 + 1) + 8 * i) setIsEmphasized:1];
          }

          v71 = [v69 countByEnumeratingWithState:&v81 objects:v86 count:16];
        }

        while (v71);
      }

      v74 = objc_opt_new();
      v75 = [v69 copy];
      [v74 setFormattedTextPieces:v75];

      [buildInlineCardSection setFootnote:v74];
    }

    footnote = [buildInlineCardSection footnote];
    if (footnote)
    {
      v76 = 1;
    }

    else
    {
      v76 = 2;
    }

    [v33 setMaxLines:v76];
  }

  return buildInlineCardSection;
}

- (id)buildTitle
{
  v3 = objc_opt_new();
  v4 = MEMORY[0x1E69CA0F0];
  title = [(SSNoteResultBuilder *)self title];
  v6 = [v4 textWithString:title];

  [v6 setIsEmphasized:1];
  [v3 addObject:v6];
  if ([(SSNoteResultBuilder *)self isShared])
  {
    v7 = @"person.crop.circle";
  }

  else
  {
    if (![(SSNoteResultBuilder *)self isLocked])
    {
      goto LABEL_6;
    }

    v7 = @"lock.fill";
  }

  text = [v6 text];
  v9 = [text stringByAppendingString:@" "];
  [v6 setText:v9];

  v10 = objc_opt_new();
  [v10 setSymbolName:v7];
  [v10 setIsTemplate:1];
  v11 = objc_opt_new();
  [v11 setGlyph:v10];
  [v3 addObject:v11];

LABEL_6:
  v12 = objc_opt_new();
  v13 = [v3 copy];
  [v12 setFormattedTextPieces:v13];

  return v12;
}

- (id)buildCompactCardSection
{
  v3 = objc_opt_new();
  modificationDate = [(SSNoteResultBuilder *)self modificationDate];

  if (modificationDate)
  {
    modificationDate2 = [(SSNoteResultBuilder *)self modificationDate];
    v6 = [SSDateFormatManager dynamicDateTimeStringsFromDate:modificationDate2];
    [v3 addObjectsFromArray:v6];
  }

  formattedBody = [(SSNoteResultBuilder *)self formattedBody];
  if (formattedBody)
  {
    v8 = [objc_opt_class() whiteSpaceCondensedStringForString:formattedBody];
    [v3 addObject:v8];
  }

  v12.receiver = self;
  v12.super_class = SSNoteResultBuilder;
  buildCompactCardSection = [(SSResultBuilder *)&v12 buildCompactCardSection];
  v10 = [objc_opt_class() richTextsFromStrings:v3];
  [buildCompactCardSection setDescriptions:v10];

  return buildCompactCardSection;
}

@end