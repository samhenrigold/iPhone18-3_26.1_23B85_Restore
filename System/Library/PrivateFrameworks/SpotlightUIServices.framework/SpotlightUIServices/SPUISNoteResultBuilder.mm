@interface SPUISNoteResultBuilder
- (SPUISNoteResultBuilder)initWithResult:(id)result;
- (id)buildCompactCardSection;
- (id)buildInlineCardSection;
- (id)buildTitle;
@end

@implementation SPUISNoteResultBuilder

- (SPUISNoteResultBuilder)initWithResult:(id)result
{
  resultCopy = result;
  v17.receiver = self;
  v17.super_class = SPUISNoteResultBuilder;
  v5 = [(SPUISResultBuilder *)&v17 initWithResult:resultCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [resultCopy valueForAttribute:*MEMORY[0x277CC2760] withType:objc_opt_class()];
    v8 = [v6 whiteSpaceCondensedStringForString:v7];
    objc_msgSend_setTitle_(v5);

    v9 = [resultCopy valueForAttribute:*MEMORY[0x277CC2DF0] withType:objc_opt_class()];
    -[SPUISNoteResultBuilder setIsShared:](v5, "setIsShared:", [v9 BOOLValue]);

    v10 = [resultCopy valueForAttribute:*MEMORY[0x277CC2DE8] withType:objc_opt_class()];
    -[SPUISNoteResultBuilder setIsLocked:](v5, "setIsLocked:", [v10 BOOLValue]);

    v11 = [resultCopy valueForAttribute:*MEMORY[0x277CC2660] withType:objc_opt_class()];
    [(SPUISNoteResultBuilder *)v5 setModificationDate:v11];

    v12 = [resultCopy valueForAttribute:*MEMORY[0x277CC3118] withType:objc_opt_class()];
    if (v12)
    {
      [(SPUISNoteResultBuilder *)v5 setFormattedBody:v12];
    }

    else
    {
      v13 = [resultCopy valueForAttribute:*MEMORY[0x277CC2750] withType:objc_opt_class()];
      [(SPUISNoteResultBuilder *)v5 setFormattedBody:v13];
    }

    v14 = [resultCopy valueForAttribute:*MEMORY[0x277CC2DE0] withType:objc_opt_class()];
    [(SPUISNoteResultBuilder *)v5 setFolder:v14];

    v15 = [resultCopy valueForAttribute:*MEMORY[0x277CC2DD8] withType:objc_opt_class()];
    [(SPUISNoteResultBuilder *)v5 setAccount:v15];
  }

  return v5;
}

- (id)buildInlineCardSection
{
  v88[1] = *MEMORY[0x277D85DE8];
  if ([(SPUISNoteResultBuilder *)self isLocked])
  {
    v3 = MEMORY[0x277D4C598];
    v4 = [SPUISUtilities localizedStringForKey:@"LOCKED"];
    v80 = [v3 textWithString:v4];
  }

  else
  {
    v4 = objc_msgSend_title(self);
    v5 = [(SPUISResultBuilder *)self buildHighlightedMatchedTextWithTitle:v4 headTruncation:1];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v8 = MEMORY[0x277D4C598];
      formattedBody = [(SPUISNoteResultBuilder *)self formattedBody];
      v7 = [v8 textWithString:formattedBody];
    }

    v80 = v7;
  }

  v85.receiver = self;
  v85.super_class = SPUISNoteResultBuilder;
  buildInlineCardSection = [(SPUISResultBuilder *)&v85 buildInlineCardSection];
  v11 = objc_opt_new();
  modificationDate = [(SPUISNoteResultBuilder *)self modificationDate];

  if (modificationDate)
  {
    v13 = MEMORY[0x277D4C3A0];
    v14 = MEMORY[0x277CCACA8];
    modificationDate2 = [(SPUISNoteResultBuilder *)self modificationDate];
    v16 = [SPUISDateFormatManager dynamicCompactStringFromDate:modificationDate2];
    v17 = [v14 stringWithFormat:@"%@  ", v16];
    v18 = [v13 textWithString:v17];
    [v11 addObject:v18];
  }

  result = [(SPUISResultBuilder *)self result];
  formattedSnippet = [result formattedSnippet];
  v21 = 0x277CBE000uLL;
  if (formattedSnippet)
  {
    v22 = formattedSnippet;
    result2 = [(SPUISResultBuilder *)self result];
    formattedSnippet2 = [result2 formattedSnippet];
    formattedTextPieces = [formattedSnippet2 formattedTextPieces];
    v26 = objc_msgSend_count(formattedTextPieces);

    v21 = 0x277CBE000;
    if (v26)
    {
      result3 = [(SPUISResultBuilder *)self result];
      formattedSnippet3 = [result3 formattedSnippet];
      formattedTextPieces2 = [formattedSnippet3 formattedTextPieces];
      [v11 addObjectsFromArray:formattedTextPieces2];

      goto LABEL_16;
    }
  }

  else
  {
  }

  result3 = [v80 formattedTextPieces];
  if (result3)
  {
    [v11 addObjectsFromArray:result3];
  }

  else
  {
    v30 = MEMORY[0x277D4C3A0];
    text = [v80 text];
    v32 = [v30 textWithString:text];
    v88[0] = v32;
    [*(v21 + 2656) arrayWithObjects:v88 count:1];
    v34 = v33 = v21;
    [v11 addObjectsFromArray:v34];

    v21 = v33;
  }

LABEL_16:

  v35 = objc_opt_new();
  [v35 setFormattedTextPieces:v11];
  v87 = v35;
  v36 = [*(v21 + 2656) arrayWithObjects:&v87 count:1];
  [buildInlineCardSection setDescriptions:v36];

  v37 = +[SPUISUtilities isMacOS];
  v38 = objc_opt_new();
  folder = [(SPUISNoteResultBuilder *)self folder];
  v40 = [folder length];

  if (v37)
  {
    if (v40)
    {
      folder2 = [(SPUISNoteResultBuilder *)self folder];
      [v38 addObject:folder2];
    }

    account = [(SPUISNoteResultBuilder *)self account];
    v43 = [account length];

    if (v43)
    {
      account2 = [(SPUISNoteResultBuilder *)self account];
      [v38 addObject:account2];
    }

    footnote = [v38 componentsJoinedByString:@" · "];
    if ([footnote length])
    {
      v46 = objc_opt_new();
      v47 = [MEMORY[0x277CCACA8] stringWithFormat:@" — %@", footnote];
      [v46 setText:v47];

      v48 = objc_msgSend_title(buildInlineCardSection);
      formattedTextPieces3 = [v48 formattedTextPieces];
      v50 = [formattedTextPieces3 arrayByAddingObject:v46];
      v51 = objc_msgSend_title(buildInlineCardSection);
      [v51 setFormattedTextPieces:v50];

      v52 = objc_msgSend_title(buildInlineCardSection);
      formattedTextPieces4 = [v52 formattedTextPieces];
      firstObject = [formattedTextPieces4 firstObject];
      [firstObject setIsEmphasized:1];
    }
  }

  else
  {
    if (v40)
    {
      v55 = objc_opt_new();
      [v55 setSymbolName:@"folder"];
      [v55 setIsTemplate:1];
      v56 = objc_opt_new();
      [v56 setGlyph:v55];
      [v38 addObject:v56];
      v57 = MEMORY[0x277D4C3A0];
      v58 = MEMORY[0x277CCACA8];
      folder3 = [(SPUISNoteResultBuilder *)self folder];
      v60 = [v58 stringWithFormat:@" %@", folder3];
      v61 = [v57 textWithString:v60];
      [v38 addObject:v61];
    }

    account3 = [(SPUISNoteResultBuilder *)self account];
    v63 = [account3 length];

    if (v63)
    {
      v64 = MEMORY[0x277D4C3A0];
      v65 = MEMORY[0x277CCACA8];
      folder4 = [(SPUISNoteResultBuilder *)self folder];
      if ([folder4 length])
      {
        v67 = @" — ";
      }

      else
      {
        v67 = &stru_287C50EE8;
      }

      account4 = [(SPUISNoteResultBuilder *)self account];
      v69 = [v65 stringWithFormat:@"%@%@", v67, account4];
      v70 = [v64 textWithString:v69];
      [v38 addObject:v70];
    }

    if (objc_msgSend_count(v38))
    {
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v71 = v38;
      v72 = [v71 countByEnumeratingWithState:&v81 objects:v86 count:16];
      if (v72)
      {
        v73 = v72;
        v74 = *v82;
        do
        {
          for (i = 0; i != v73; ++i)
          {
            if (*v82 != v74)
            {
              objc_enumerationMutation(v71);
            }

            [*(*(&v81 + 1) + 8 * i) setIsEmphasized:1];
          }

          v73 = [v71 countByEnumeratingWithState:&v81 objects:v86 count:16];
        }

        while (v73);
      }

      v76 = objc_opt_new();
      v77 = [v71 copy];
      [v76 setFormattedTextPieces:v77];

      [buildInlineCardSection setFootnote:v76];
    }

    footnote = [buildInlineCardSection footnote];
    if (footnote)
    {
      v78 = 1;
    }

    else
    {
      v78 = 2;
    }

    [v35 setMaxLines:v78];
  }

  return buildInlineCardSection;
}

- (id)buildTitle
{
  v3 = objc_opt_new();
  v4 = MEMORY[0x277D4C3A0];
  v5 = objc_msgSend_title(self);
  v6 = [v4 textWithString:v5];

  [v6 setIsEmphasized:1];
  [v3 addObject:v6];
  if ([(SPUISNoteResultBuilder *)self isShared])
  {
    v7 = @"person.crop.circle";
  }

  else
  {
    if (![(SPUISNoteResultBuilder *)self isLocked])
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
  modificationDate = [(SPUISNoteResultBuilder *)self modificationDate];

  if (modificationDate)
  {
    modificationDate2 = [(SPUISNoteResultBuilder *)self modificationDate];
    v6 = [SPUISDateFormatManager dynamicDateTimeStringsFromDate:modificationDate2];
    [v3 addObjectsFromArray:v6];
  }

  formattedBody = [(SPUISNoteResultBuilder *)self formattedBody];
  if (formattedBody)
  {
    v8 = [objc_opt_class() whiteSpaceCondensedStringForString:formattedBody];
    [v3 addObject:v8];
  }

  v12.receiver = self;
  v12.super_class = SPUISNoteResultBuilder;
  buildCompactCardSection = [(SPUISResultBuilder *)&v12 buildCompactCardSection];
  v10 = [objc_opt_class() richTextsFromStrings:v3];
  [buildCompactCardSection setDescriptions:v10];

  return buildCompactCardSection;
}

@end