@interface ABNamePredicate
- (ABNamePredicate)init;
- (BOOL)isValid;
- (id)_matchClauseForColumns:(id)columns requiringAllTerms:(BOOL)terms;
- (id)_personNameKeys;
- (id)_personNonNameKeys;
- (id)ab_metadataForMatchingRow:(CPSqliteStatement *)row columnOffset:(int)offset;
- (id)emphasizedExcerptStringForMatchString:(id)string;
- (id)predicateFormat;
- (id)queryJoinsInCompound:(BOOL)compound predicateIdentifier:(int)identifier;
- (id)querySelectPropertiesForPredicateIdentifier:(int)identifier;
- (id)queryWhereStringForPredicateIdentifier:(int)identifier;
- (void)ab_bindJoinClauseComponentOfStatement:(CPSqliteStatement *)statement withBindingOffset:(int *)offset predicateIdentifier:(int)identifier;
- (void)ab_bindWhereClauseComponentOfStatement:(CPSqliteStatement *)statement withBindingOffset:(int *)offset predicateIdentifier:(int)identifier;
- (void)dealloc;
- (void)setAccountIdentifier:(id)identifier;
- (void)setAddressBook:(void *)book;
- (void)setGroup:(void *)group;
- (void)setName:(id)name;
- (void)setSource:(void *)source;
- (void)tokenizations;
@end

@implementation ABNamePredicate

- (ABNamePredicate)init
{
  v5.receiver = self;
  v5.super_class = ABNamePredicate;
  v2 = [(ABPredicate *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_matchPreferredName = 1;
    v2->_tokenizations = ABTokenListCreate();
    v3->_generateExceprts = 0;
  }

  return v3;
}

- (void)dealloc
{
  addressBook = self->_addressBook;
  if (addressBook)
  {
    CFRelease(addressBook);
  }

  tokenizationSortKeys = self->_tokenizationSortKeys;
  if (tokenizationSortKeys)
  {
    releaseTokenizationSortKeys(tokenizationSortKeys);
  }

  CFRelease(self->_tokenizations);

  v5.receiver = self;
  v5.super_class = ABNamePredicate;
  [(ABPredicate *)&v5 dealloc];
}

- (void)setAddressBook:(void *)book
{
  addressBook = self->_addressBook;
  if (addressBook != book)
  {
    if (addressBook)
    {
      CFRelease(addressBook);
    }

    if (book)
    {
      CFRetain(book);
    }

    self->_addressBook = book;
  }
}

- (void)setName:(id)name
{
  name = self->_name;
  if (name != name)
  {

    self->_name = [name copy];
    tokenizations = self->_tokenizations;

    ABTokenListRemoveAllTokens(tokenizations);
  }
}

- (void)setGroup:(void *)group
{
  if (group)
  {
    group = [MEMORY[0x1E695DEC8] arrayWithObject:?];
  }

  [(ABNamePredicate *)self setGroups:group];
}

- (void)setSource:(void *)source
{
  if (source)
  {
    source = [MEMORY[0x1E695DEC8] arrayWithObject:?];
  }

  [(ABNamePredicate *)self setSources:source];
}

- (void)setAccountIdentifier:(id)identifier
{
  if ([(ABNamePredicate *)self addressBook])
  {
    if (!identifier)
    {
      return;
    }
  }

  else
  {
    [(ABNamePredicate *)a2 setAccountIdentifier:?];
    if (!identifier)
    {
      return;
    }
  }

  v6 = ABAddressBookCopyArrayOfAllSourcesWithAccountIdentifier([(ABNamePredicate *)self addressBook], identifier);
  if (v6)
  {
    v7 = v6;
    [(ABNamePredicate *)self setSources:v6];
  }
}

- (void)tokenizations
{
  if ([(ABNamePredicate *)self name]&& !ABTokenListGetCount(self->_tokenizations, v3))
  {
    tokenizations = self->_tokenizations;
    WordTokenizer = ABAddressBookGetWordTokenizer([(ABNamePredicate *)self addressBook]);
    ABTokenListPopulateFromString(tokenizations, WordTokenizer, 0, [(ABNamePredicate *)self name], 0, 1, 0);
  }

  return self->_tokenizations;
}

- (BOOL)isValid
{
  tokenizations = [(ABNamePredicate *)self tokenizations];
  if (tokenizations)
  {
    LOBYTE(tokenizations) = ABTokenListGetCount(tokenizations, v3) > 0;
  }

  return tokenizations;
}

- (id)ab_metadataForMatchingRow:(CPSqliteStatement *)row columnOffset:(int)offset
{
  v20[3] = *MEMORY[0x1E69E9840];
  if (!ABCFTSIsEnabled())
  {
    return 0;
  }

  v7 = sqlite3_column_int(row->var1, offset);
  v8 = *sqlite3_column_blob(row->var1, offset + 1);
  if ([(ABNamePredicate *)self generateExceprts])
  {
    v9 = sqlite3_column_text(row->var1, offset + 2);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = "";
    }

    v11 = -[ABNamePredicate emphasizedExcerptStringForMatchString:](self, "emphasizedExcerptStringForMatchString:", [MEMORY[0x1E696AEC0] stringWithUTF8String:v10]);
    v19[0] = @"relevance";
    v20[0] = [MEMORY[0x1E696AD98] numberWithInt:v7];
    v20[1] = v8;
    v19[1] = @"matchedProperties";
    v19[2] = @"excerpt";
    v20[2] = v11;
    v12 = MEMORY[0x1E695DF20];
    v13 = v20;
    v14 = v19;
    v15 = 3;
  }

  else
  {
    v17[0] = @"relevance";
    v17[1] = @"matchedProperties";
    v18[0] = [MEMORY[0x1E696AD98] numberWithInt:v7];
    v18[1] = v8;
    v12 = MEMORY[0x1E695DF20];
    v13 = v18;
    v14 = v17;
    v15 = 2;
  }

  return [v12 dictionaryWithObjects:v13 forKeys:v14 count:v15];
}

- (id)emphasizedExcerptStringForMatchString:(id)string
{
  v5 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v6 = [string componentsSeparatedByString:@"\n"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__ABNamePredicate_emphasizedExcerptStringForMatchString___block_invoke;
  v8[3] = &unk_1E7CCCCE0;
  v8[4] = self;
  v8[5] = v5;
  [v6 enumerateObjectsUsingBlock:v8];
  return v5;
}

void __57__ABNamePredicate_emphasizedExcerptStringForMatchString___block_invoke(uint64_t a1, void *a2, char a3)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v5 = [a2 isEqualToString:@"…"];
  v6 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:a2];
  if ((a3 & 1) != 0 && !v5)
  {
    v7 = [*(a1 + 32) tokenizations];
    Count = ABTokenListGetCount(v7, v8);
    if (Count >= 1)
    {
      v10 = Count;
      for (i = 0; i != v10; ++i)
      {
        v12 = [a2 rangeOfString:ABTokenListGetTokenAtIndex(v7 options:{i), 393}];
        if (v12 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v14 = v12;
          v15 = v13;
          v17 = @"excerptEmphasized";
          v18[0] = [MEMORY[0x1E696AD98] numberWithBool:1];
          [v6 setAttributes:objc_msgSend(MEMORY[0x1E695DF20] range:{"dictionaryWithObjects:forKeys:count:", v18, &v17, 1), v14, v15}];
        }
      }
    }
  }

  [*(a1 + 40) appendAttributedString:v6];
}

- (id)querySelectPropertiesForPredicateIdentifier:(int)identifier
{
  v3 = *&identifier;
  v10[2] = *MEMORY[0x1E69E9840];
  if (!ABCFTSIsEnabled())
  {
    return 0;
  }

  if (self->_matchPersonOrCompanyNamesExclusively || self->_matchSmartDialerFormatsExclusively || ![(ABNamePredicate *)self generateExceprts])
  {
    v10[0] = [MEMORY[0x1E696AEC0] stringWithFormat:@"RankResults_%d.Rank", v3];
    v10[1] = [MEMORY[0x1E696AEC0] stringWithFormat:@"RankResults_%d.MatchedColumns", v3];
    v5 = MEMORY[0x1E695DEC8];
    v6 = v10;
    v7 = 2;
  }

  else
  {
    v9[0] = [MEMORY[0x1E696AEC0] stringWithFormat:@"RankResults_%d.Rank", v3];
    v9[1] = [MEMORY[0x1E696AEC0] stringWithFormat:@"RankResults_%d.MatchedColumns", v3];
    v9[2] = [MEMORY[0x1E696AEC0] stringWithFormat:@"RankResults_%d.MatchedSnippet", v3];
    v5 = MEMORY[0x1E695DEC8];
    v6 = v9;
    v7 = 3;
  }

  return [v5 arrayWithObjects:v6 count:v7];
}

- (id)_matchClauseForColumns:(id)columns requiringAllTerms:(BOOL)terms
{
  termsCopy = terms;
  v7 = [MEMORY[0x1E696AD60] stringWithString:@" MATCH ' "];
  tokenizations = [(ABNamePredicate *)self tokenizations];
  if (ABTokenListGetCount(tokenizations, v9))
  {
    v10 = 0;
    if (termsCopy)
    {
      v11 = @" AND ";
    }

    else
    {
      v11 = @" OR ";
    }

    do
    {
      if (v10)
      {
        [v7 appendFormat:v11];
      }

      objc_msgSend(v7, "appendFormat:", @"(");
      if ([columns count])
      {
        v12 = 0;
        do
        {
          if (v12)
          {
            [v7 appendFormat:@" OR "];
          }

          [v7 appendFormat:@"%@:' || ? || '", objc_msgSend(columns, "objectAtIndex:", v12++)];
        }

        while (v12 < [columns count]);
      }

      [v7 appendFormat:@""]);
      ++v10;
    }

    while (v10 < ABTokenListGetCount(tokenizations, v13));
  }

  [v7 appendFormat:@"'"];
  return v7;
}

- (id)queryJoinsInCompound:(BOOL)compound predicateIdentifier:(int)identifier
{
  v4 = *&identifier;
  v19[1] = *MEMORY[0x1E69E9840];
  if (!ABCFTSIsEnabled())
  {
    return 0;
  }

  string = [MEMORY[0x1E696AD60] string];
  [string appendFormat:@"LEFT JOIN "];
  if ([(ABNamePredicate *)self matchPersonOrCompanyNamesExclusively])
  {
    _personNameKeys = [(ABNamePredicate *)self _personNameKeys];
    objc_msgSend(string, "appendFormat:", @"(select ROWID as RankRow, ab_cf_tokenizer_namerank(matchinfo(ABPersonFullTextSearch), ?) as Rank, ab_cf_tokenizer_matched_properties(matchinfo(ABPersonFullTextSearch), ?) as MatchedColumns, 1 as HasFTSMatch from ABPersonFullTextSearch join ABPerson on ABPerson.rowid=ABPersonFullTextSearch.rowid WHERE ABPersonFullTextSearch.Organization MATCH ? and Kind=%@"), kABPersonKindOrganization;
    [string appendFormat:@" UNION "];
    [string appendFormat:@"select ROWID as RankRow, ab_cf_tokenizer_namerank(matchinfo(ABPersonFullTextSearch), ?) as Rank, ab_cf_tokenizer_matched_properties(matchinfo(ABPersonFullTextSearch), ?) as MatchedColumns, 1 as HasFTSMatch from ABPersonFullTextSearch join ABPerson on ABPerson.rowid=ABPersonFullTextSearch.rowid WHERE ABPersonFullTextSearch "];
    [string appendString:{-[ABNamePredicate _matchClauseForColumns:requiringAllTerms:](self, "_matchClauseForColumns:requiringAllTerms:", _personNameKeys, 1)}];
    [string appendFormat:@" AND Kind=%@"], kABPersonKindPerson);
  }

  else if (self->_matchSmartDialerFormatsExclusively)
  {
    objc_msgSend(string, "appendFormat:", @"(select ROWID as RankRow, ab_cf_tokenizer_namerank(matchinfo(ABPersonSmartDialerFullTextSearch), ?) as Rank, ab_cf_tokenizer_sd_matched_properties(matchinfo(ABPersonSmartDialerFullTextSearch), ?) as MatchedColumns, 1 as HasFTSMatch from ABPersonSmartDialerFullTextSearch join ABPerson on ABPerson.rowid=ABPersonSmartDialerFullTextSearch.rowid WHERE ABPersonSmartDialerFullTextSearch MATCH ?");
    [string appendFormat:@" UNION "];
    [string appendFormat:@"select ROWID as RankRow, ab_cf_tokenizer_namerank(matchinfo(ABPersonFullTextSearch), ?) as Rank, ab_cf_tokenizer_matched_properties(matchinfo(ABPersonFullTextSearch), ?) as MatchedColumns, 1 as HasFTSMatch from ABPersonFullTextSearch join ABPerson on ABPerson.rowid=ABPersonFullTextSearch.rowid WHERE ABPersonFullTextSearch.Phone MATCH ?"], v18);
  }

  else
  {
    tokenizations = [(ABNamePredicate *)self tokenizations];
    generateExceprts = [(ABNamePredicate *)self generateExceprts];
    v11 = &stru_1F2FE2718;
    v12 = @"snippet(ABPersonFullTextSearch, '\n', '\n', '…', ab_cf_tokenizer_select_snippet_column(matchinfo(ABPersonFullTextSearch)), -5) as MatchedSnippet,";
    if (!generateExceprts)
    {
      v12 = &stru_1F2FE2718;
    }

    objc_msgSend(string, "appendFormat:", @"(select fts.ROWID as RankRow, ab_cf_tokenizer_namerank(matchinfo(ABPersonFullTextSearch), ?) as Rank, ab_cf_tokenizer_matched_properties(matchinfo(ABPersonFullTextSearch), ?) as MatchedColumns, %@ 1 as HasFTSMatch from ABPersonFullTextSearch fts "), v12;
    if ([(NSArray *)[(ABNamePredicate *)self scopedContactIdentifiers] count])
    {
      v11 = objc_msgSend(MEMORY[0x1E696AD60], "stringWithString:", @"fts.rowid IN(");
      if ([(NSArray *)[(ABNamePredicate *)self scopedContactIdentifiers] count])
      {
        v13 = 0;
        do
        {
          if (v13)
          {
            v14 = @", ?";
          }

          else
          {
            v14 = @"?";
          }

          [(__CFString *)v11 appendString:v14];
          ++v13;
        }

        while (v13 < [(NSArray *)[(ABNamePredicate *)self scopedContactIdentifiers] count]);
      }

      [(__CFString *)v11 appendString:@" AND"]);
    }

    [string appendFormat:@"where %@ ABPersonFullTextSearch MATCH ' ' || ? || ' ", v11];
    if (!self->_matchWholeWords)
    {
      objc_msgSend(string, "appendString:", @" OR (");
      if (ABTokenListGetCount(tokenizations, v15) >= 1)
      {
        v16 = 0;
        do
        {
          if (v16)
          {
            [string appendString:@" AND "];
          }

          [string appendString:@" ' || ? || ' "];
          ++v16;
        }

        while (v16 < ABTokenListGetCount(tokenizations, v17));
      }

      [string appendString:@""]);
    }

    [string appendString:@" '"];
    [string appendString:@""]);
  }

  [string appendFormat:@" AS RankResults_%d ON abp.ROWID=RankResults_%d.RankRow ", v4, v4];
  v19[0] = string;
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
}

- (id)_personNameKeys
{
  v13 = MEMORY[0x1E695DEC8];
  v2 = ABCPersonNameForProperty(kABPersonFirstNamePhoneticProperty);
  v3 = ABCPersonNameForProperty(kABPersonMiddleNamePhoneticProperty);
  v4 = ABCPersonNameForProperty(kABPersonLastNamePhoneticProperty);
  v5 = ABCPersonNameForProperty(kABPersonFirstNameProperty);
  v6 = ABCPersonNameForProperty(kABPersonMiddleNameProperty);
  v7 = ABCPersonNameForProperty(kABPersonLastNameProperty);
  v8 = ABCPersonNameForProperty(kABPersonPreviousFamilyNameProperty);
  v9 = ABCPersonNameForProperty(kABPersonNicknameProperty);
  v10 = ABCPersonNameForProperty(kABPersonDisplayNameProperty);
  v11 = ABCPersonNameForProperty(kABPersonSuffixProperty);
  return [v13 arrayWithObjects:{v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, ABCPersonNameForProperty(kABPersonPrefixProperty), 0}];
}

- (id)_personNonNameKeys
{
  v15 = MEMORY[0x1E695DEC8];
  v14 = ABCPersonNameForProperty(kABPersonOrganizationPhoneticProperty);
  v13 = ABCPersonNameForProperty(kABPersonOrganizationProperty);
  v2 = ABCPersonNameForProperty(kABPersonDepartmentProperty);
  v3 = ABCPersonNameForProperty(kABPersonNoteProperty);
  v4 = ABCPersonNameForProperty(kABPersonBirthdayProperty);
  v5 = ABCPersonNameForProperty(kABPersonJobTitleProperty);
  v6 = ABCPersonNameForProperty(kABPersonPhoneProperty);
  v7 = ABCPersonNameForProperty(kABPersonEmailProperty);
  v8 = ABCPersonNameForProperty(kABPersonAddressProperty);
  v9 = ABCPersonNameForProperty(kABPersonSocialProfileProperty);
  v10 = ABCPersonNameForProperty(kABPersonURLProperty);
  v11 = ABCPersonNameForProperty(kABPersonInstantMessageProperty);
  return [v15 arrayWithObjects:{v14, v13, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, ABCPersonNameForProperty(kABPersonDateProperty), @"SupplementalCompositeNameTerms", 0}];
}

- (id)queryWhereStringForPredicateIdentifier:(int)identifier
{
  v3 = *&identifier;
  v5 = objc_opt_new();
  tokenizationSortKeys = self->_tokenizationSortKeys;
  if (tokenizationSortKeys)
  {
    releaseTokenizationSortKeys(tokenizationSortKeys);
  }

  if ([(NSArray *)self->_groups count])
  {
    v7 = 1;
  }

  else
  {
    v7 = [(NSArray *)self->_sources count]!= 0;
  }

  v8 = ABAddressBookCopyWhereClauseForLinkedPeopleInGroupsAndSources(self->_matchPreferredName, v7, [(ABNamePredicate *)self groups], [(ABNamePredicate *)self sources], @"abp");
  if (v8)
  {
    [(__CFString *)v5 appendString:v8];
  }

  if ([(NSString *)self->_name length])
  {
    if (v8)
    {
      [(__CFString *)v5 appendString:@" AND "];
    }

    if (ABCFTSIsEnabled())
    {
      [(__CFString *)v5 appendFormat:@" RankResults_%d.HasFTSMatch = 1 ", v3];
    }

    else
    {
      WordTokenizer = ABAddressBookGetWordTokenizer([(ABNamePredicate *)self addressBook]);
      v10 = ABCCreateArrayOfTokenizationsBySeparatingWordsInCompositeName(WordTokenizer, self->_name, 1);
      if (v10)
      {
        v11 = v10;
        if (CFArrayGetCount(v10) >= 1)
        {
          SearchCollator = ABAddressBookGetSearchCollator(self->_addressBook);
          v14 = 0;
          -[__CFString appendFormat:](v5, "appendFormat:", @"abp.ROWID in (select abs.person_id from ABPersonSearchKey abs WHERE");
          appendTokenizations(self->_name, v11, SearchCollator, v5, &self->_tokenizationSortKeys, &v14, [(ABNamePredicate *)self matchWholeWords], [(ABNamePredicate *)self matchPersonOrCompanyNamesExclusively]);
          [(__CFString *)v5 appendFormat:@""]);
        }

        CFRelease(v11);
      }
    }
  }

  return v5;
}

- (void)ab_bindJoinClauseComponentOfStatement:(CPSqliteStatement *)statement withBindingOffset:(int *)offset predicateIdentifier:(int)identifier
{
  v84 = *MEMORY[0x1E69E9840];
  if (ABCFTSIsEnabled())
  {
    tokenizations = [(ABNamePredicate *)self tokenizations];
    string = [MEMORY[0x1E696AD60] string];
    Count = ABTokenListGetCount(tokenizations, v8);
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    CFAutorelease(Mutable);
    if (Count)
    {
      for (i = 0; i != Count; ++i)
      {
        TokenAtIndex = ABTokenListGetTokenAtIndex(tokenizations, i);
        matchWholeWords = [(ABNamePredicate *)self matchWholeWords];
        v14 = @"*";
        if (matchWholeWords)
        {
          v14 = &stru_1F2FE2718;
        }

        [string appendFormat:@"##&%@%@ ", TokenAtIndex, v14];
        CFArrayAppendValue(Mutable, TokenAtIndex);
      }
    }

    v15 = Mutable;
    v77 = Count;
    if ([string length])
    {
      if (self->_matchPersonOrCompanyNamesExclusively)
      {
        var1 = statement->var1;
        v17 = *offset;
        v18 = CFRetain(Mutable);
        v19 = MEMORY[0x1E695D7C0];
        sqlite3_bind_blob(var1, v17, v18, 8, MEMORY[0x1E695D7C0]);
        LODWORD(var1) = *offset + 1;
        *offset = var1;
        v20 = statement->var1;
        v21 = CFRetain(Mutable);
        sqlite3_bind_blob(v20, var1, v21, 8, v19);
        LODWORD(var1) = *offset + 1;
        *offset = var1;
        v22 = statement->var1;
        v23 = _CPCreateUTF8StringFromCFString();
        sqlite3_bind_text(v22, var1, v23, -1, MEMORY[0x1E69E9B38]);
        ++*offset;
        _personNameKeys = [(ABNamePredicate *)self _personNameKeys];
        v25 = [_personNameKeys count];
        v26 = CFArrayCreateMutable(0, v25 * Count, MEMORY[0x1E695E9C0]);
        if ([_personNameKeys count])
        {
          v27 = 0;
          do
          {
            v85.length = CFArrayGetCount(v15);
            v85.location = 0;
            CFArrayAppendArray(v26, v15, v85);
            ++v27;
          }

          while (v27 < [_personNameKeys count]);
        }

        v28 = statement->var1;
        v29 = *offset;
        v30 = CFRetain(v26);
        v31 = MEMORY[0x1E695D7C0];
        sqlite3_bind_blob(v28, v29, v30, 8, MEMORY[0x1E695D7C0]);
        LODWORD(v28) = *offset + 1;
        *offset = v28;
        v32 = statement->var1;
        v33 = CFRetain(v26);
        v34 = v32;
        v35 = _personNameKeys;
        sqlite3_bind_blob(v34, v28, v33, 8, v31);
        ++*offset;
        CFRelease(v26);
        if (Count)
        {
          for (j = 0; j != Count; ++j)
          {
            if ([v35 count])
            {
              v37 = 0;
              do
              {
                v38 = ABTokenListGetTokenAtIndex(tokenizations, j);
                v39 = MEMORY[0x1E696AEC0];
                matchWholeWords2 = [(ABNamePredicate *)self matchWholeWords];
                v41 = @"*";
                if (matchWholeWords2)
                {
                  v41 = &stru_1F2FE2718;
                }

                [v39 stringWithFormat:@"##&%@%@ ", v38, v41];
                v42 = statement->var1;
                v43 = *offset;
                v44 = _CPCreateUTF8StringFromCFString();
                v45 = v42;
                v35 = _personNameKeys;
                sqlite3_bind_text(v45, v43, v44, -1, MEMORY[0x1E69E9B38]);
                ++*offset;
                ++v37;
              }

              while (v37 < [_personNameKeys count]);
            }
          }
        }
      }

      else
      {
        matchSmartDialerFormatsExclusively = self->_matchSmartDialerFormatsExclusively;
        v47 = statement->var1;
        v48 = *offset;
        v49 = CFRetain(v15);
        v50 = MEMORY[0x1E695D7C0];
        sqlite3_bind_blob(v47, v48, v49, 8, MEMORY[0x1E695D7C0]);
        LODWORD(v47) = *offset + 1;
        *offset = v47;
        v51 = statement->var1;
        v52 = CFRetain(v15);
        sqlite3_bind_blob(v51, v47, v52, 8, v50);
        v53 = *offset + 1;
        *offset = v53;
        if (matchSmartDialerFormatsExclusively)
        {
          v54 = statement->var1;
          v55 = _CPCreateUTF8StringFromCFString();
          v56 = MEMORY[0x1E69E9B38];
          sqlite3_bind_text(v54, v53, v55, -1, MEMORY[0x1E69E9B38]);
          LODWORD(v54) = *offset + 1;
          *offset = v54;
          v57 = statement->var1;
          v58 = CFRetain(v15);
          v59 = MEMORY[0x1E695D7C0];
          sqlite3_bind_blob(v57, v54, v58, 8, MEMORY[0x1E695D7C0]);
          LODWORD(v54) = *offset + 1;
          *offset = v54;
          v60 = statement->var1;
          v61 = CFRetain(v15);
          sqlite3_bind_blob(v60, v54, v61, 8, v59);
          LODWORD(v54) = *offset + 1;
          *offset = v54;
          v62 = statement->var1;
          v63 = _CPCreateUTF8StringFromCFString();
          sqlite3_bind_text(v62, v54, v63, -1, v56);
          ++*offset;
        }

        else
        {
          if ([(NSArray *)[(ABNamePredicate *)self scopedContactIdentifiers] count])
          {
            v81 = 0u;
            v82 = 0u;
            v79 = 0u;
            v80 = 0u;
            scopedContactIdentifiers = [(ABNamePredicate *)self scopedContactIdentifiers];
            v65 = [(NSArray *)scopedContactIdentifiers countByEnumeratingWithState:&v79 objects:v83 count:16];
            if (v65)
            {
              v66 = v65;
              v67 = *v80;
              do
              {
                for (k = 0; k != v66; ++k)
                {
                  if (*v80 != v67)
                  {
                    objc_enumerationMutation(scopedContactIdentifiers);
                  }

                  sqlite3_bind_int(statement->var1, *offset, [*(*(&v79 + 1) + 8 * k) intValue]);
                  ++*offset;
                }

                v66 = [(NSArray *)scopedContactIdentifiers countByEnumeratingWithState:&v79 objects:v83 count:16];
              }

              while (v66);
            }
          }

          v69 = statement->var1;
          v70 = *offset;
          v71 = _CPCreateUTF8StringFromCFString();
          sqlite3_bind_text(v69, v70, v71, -1, MEMORY[0x1E69E9B38]);
          ++*offset;
          if (Count && !self->_matchWholeWords)
          {
            v72 = 0;
            do
            {
              [MEMORY[0x1E696AEC0] stringWithFormat:@"##&%@ ", ABTokenListGetTokenAtIndex(tokenizations, v72)];
              v73 = statement->var1;
              v74 = *offset;
              v75 = _CPCreateUTF8StringFromCFString();
              sqlite3_bind_text(v73, v74, v75, -1, MEMORY[0x1E69E9B38]);
              ++*offset;
              ++v72;
            }

            while (v77 != v72);
          }
        }
      }
    }
  }
}

- (void)ab_bindWhereClauseComponentOfStatement:(CPSqliteStatement *)statement withBindingOffset:(int *)offset predicateIdentifier:(int)identifier
{
  if ([(NSArray *)self->_groups count:statement])
  {
    v8 = 1;
  }

  else
  {
    v8 = [(NSArray *)self->_sources count]!= 0;
  }

  ABAddressBookBindWhereClauseForLinkedPeopleInGroupsAndSources(v8, [(ABNamePredicate *)self groups], [(ABNamePredicate *)self sources], statement->var1, offset);
  if ((ABCFTSIsEnabled() & 1) == 0)
  {
    tokenizationSortKeys = self->_tokenizationSortKeys;

    bindTokenizations(statement, tokenizationSortKeys, offset);
  }
}

- (id)predicateFormat
{
  v3 = MEMORY[0x1E696AEC0];
  name = [(ABNamePredicate *)self name];
  v5 = @"YES";
  if ([(ABNamePredicate *)self matchWholeWords])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if ([(ABNamePredicate *)self matchPersonOrCompanyNamesExclusively])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if ([(ABNamePredicate *)self matchSmartDialerFormatsExclusively])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if (![(ABNamePredicate *)self matchPreferredName])
  {
    v5 = @"NO";
  }

  return [v3 stringWithFormat:@"ABNamePredicate %p - Name matching <%@> - Match whole words <%@> - Match name only <%@> - Match smart dialer format only <%@> - Match preferred name <%@> - Sources <%@> - Groups <%@>", self, name, v6, v7, v8, v5, -[ABNamePredicate sources](self, "sources"), -[ABNamePredicate groups](self, "groups")];
}

- (uint64_t)setAccountIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"ABNamePredicate.m" lineNumber:111 description:{@"Should have address book before attempting to use [ABNamePredicate setAccountIdentifier:].  Or preferably, use [ABNamePredicate setSources:]."}];
}

@end