@interface CalculateTokenizer
+ (NSSet)laTeXNonTrigFunctionSet;
+ (NSSet)laTeXTrigonometricSet;
+ (NSSet)nonTrigFunctionSet;
+ (NSSet)trigonometricSet;
+ (id)localizedSymbolsTrie:(id)trie;
+ (id)nonWhitespaceLanguageSet;
+ (id)punctuationSet;
+ (id)symbolSet;
+ (id)tokenizerWithUnits:(id)units;
+ (int)displayNameExponent:(id)exponent;
+ (void)_addSymbols:(id)symbols normalized:(id)normalized tokenType:(unint64_t)type isLaTeX:(BOOL)x trie:(id)trie;
+ (void)addLocalizedSymbols:(id)symbols locales:(id)locales;
+ (void)addSymbols:(id)symbols;
+ (void)addUnits:(id)units builtIn:(BOOL)in;
+ (void)loadPunctuationSet;
+ (void)loadSymbolSet;
- ($0F7EB6B36CDCC9CA6BC7BE76F6527CA8)singleLetterVariables;
- (CalculateTokenizer)initWithUnits:(id)units;
- (_NSRange)range;
- (id)nextToken;
- (id)peekNonWhitespaceToken;
- (id)peekToken;
- (id)peekTokenAtOffset:(int64_t)offset;
- (void)_findNextToken;
- (void)_loadIfNeeded;
- (void)addDeclaredVariable:(id)variable;
- (void)addVariable:(id)variable;
- (void)dealloc;
- (void)reset;
- (void)setGraphableVariable:(id)variable;
- (void)setLocales:(id)locales;
- (void)setRange:(_NSRange)range;
- (void)setSingleLetterVariables:(id *)variables;
- (void)setString:(id)string;
- (void)setVariables:(id)variables;
- (void)update;
@end

@implementation CalculateTokenizer

- (id)nextToken
{
  peekToken = [(CalculateTokenizer *)self peekToken];
  if (peekToken)
  {
    peekTokens = [(CalculateTokenizer *)self peekTokens];
    [peekTokens removeObjectAtIndex:0];
  }

  [(CalculateTokenizer *)self setLastToken:peekToken];

  return peekToken;
}

- (id)peekToken
{
  peekTokens = [(CalculateTokenizer *)self peekTokens];
  v4 = [peekTokens count];

  if (!v4)
  {
    [(CalculateTokenizer *)self _findNextToken];
  }

  peekTokens2 = [(CalculateTokenizer *)self peekTokens];
  v6 = [peekTokens2 count];

  if (v6)
  {
    peekTokens3 = [(CalculateTokenizer *)self peekTokens];
    v8 = [peekTokens3 objectAtIndexedSubscript:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_findNextToken
{
  selfCopy = self;
  v260 = *MEMORY[0x1E69E9840];
  if (self->_needsUpdate)
  {
    [(CalculateTokenizer *)self update];
  }

  peekIndex = [(CalculateTokenizer *)selfCopy peekIndex];
  if (peekIndex >= [(CalculateTokenizer *)selfCopy stringLength])
  {
    return;
  }

  for (i = selfCopy; ; [(CalculateTokenizer *)i setWordBreakIndicesIndex:[(CalculateTokenizer *)i wordBreakIndicesIndex]+ 1])
  {
    wordBreakIndices = [(CalculateTokenizer *)selfCopy wordBreakIndices];
    v5 = [wordBreakIndices objectAtIndexedSubscript:{-[CalculateTokenizer wordBreakIndicesIndex](i, "wordBreakIndicesIndex")}];
    intValue = [v5 intValue];
    selfCopy = i;
    peekIndex2 = [(CalculateTokenizer *)i peekIndex];

    if (peekIndex2 < intValue)
    {
      break;
    }
  }

  v250 = 0;
  v251 = &v250;
  v252 = 0x3032000000;
  v253 = __Block_byref_object_copy__886;
  v254 = __Block_byref_object_dispose__887;
  v255 = 0;
  v246 = 0;
  v247 = &v246;
  v248 = 0x2020000000;
  v249 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __36__CalculateTokenizer__findNextToken__block_invoke;
  aBlock[3] = &unk_1E815C990;
  aBlock[4] = i;
  aBlock[5] = &v250;
  aBlock[6] = &v246;
  v154 = _Block_copy(aBlock);
  stringLength = [(CalculateTokenizer *)i stringLength];
  peekIndex3 = [(CalculateTokenizer *)i peekIndex];
  wordBreakIndices2 = [(CalculateTokenizer *)i wordBreakIndices];
  v9 = [wordBreakIndices2 objectAtIndexedSubscript:{-[CalculateTokenizer wordBreakIndicesIndex](i, "wordBreakIndicesIndex")}];
  intValue2 = [v9 intValue];

  v155 = intValue2;
  v11 = i;
  if (!i->_prevToken && (([(NSString *)i->_string characterAtIndex:peekIndex3]& 0xFFDF) - 65) <= 0x19u)
  {
    *&v256 = 0;
    *(&v256 + 1) = &v256;
    *&v257 = 0x2020000000;
    BYTE8(v257) = 0;
    v238 = 0;
    v239 = &v238;
    v240 = 0x2020000000;
    LOBYTE(v241) = 0;
    string = [(CalculateTokenizer *)i string];
    v244[0] = MEMORY[0x1E69E9820];
    v244[1] = 3221225472;
    v244[2] = __36__CalculateTokenizer__findNextToken__block_invoke_2;
    v244[3] = &unk_1E815C9B8;
    v244[4] = &v256;
    v244[5] = &v238;
    [Trie enumerateCharactersInKey:string range:intValue2 usingBlock:stringLength - intValue2, v244];

    if (*(*(&v256 + 1) + 24) == 1 && *(v239 + 24) == 1)
    {
      v13 = (*(v154 + 2))(v154, 39, intValue2, 0, 0);
      _Block_object_dispose(&v238, 8);
      _Block_object_dispose(&v256, 8);
      goto LABEL_99;
    }

    _Block_object_dispose(&v238, 8);
    _Block_object_dispose(&v256, 8);
    v11 = i;
  }

  v153 = intValue2 - peekIndex3;
  if (intValue2 <= peekIndex3 || v153 != 1 && v153 > v11->_variableBufferLength && v153 > v11->_graphableVariableLength || (([(NSString *)v11->_string characterAtIndex:peekIndex3]& 0xFFDF) - 65) > 0x19u)
  {
    goto LABEL_69;
  }

  if (v153 == 1 || v153 <= v11->_variableBufferLength || v153 <= v11->_graphableVariableLength)
  {
    v14 = [(NSString *)v11->_string substringWithRange:peekIndex3];
    lowercaseString = [v14 lowercaseString];

    p_isa = &i->super.isa;
    v17 = [(NSDictionary *)i->_variables objectForKey:lowercaseString];
    if (v17)
    {

      p_isa = &i->super.isa;
      graphableVariable = i->_graphableVariable;
      if (!graphableVariable)
      {
        *(v247 + 24) = 0;
        goto LABEL_33;
      }

      v19 = 1;
    }

    else
    {
      v19 = [(NSMutableSet *)i->_lowercasedVariables containsObject:lowercaseString];
      graphableVariable = i->_graphableVariable;
      if (!graphableVariable)
      {
        *(v247 + 24) = 0;
        if (v19)
        {
          goto LABEL_33;
        }

        goto LABEL_31;
      }
    }

    v20 = [(NSString *)graphableVariable caseInsensitiveCompare:lowercaseString];
    *(v247 + 24) = v20 == 0;
    if (v19)
    {
      goto LABEL_33;
    }

    if (!v20)
    {
      v21 = [p_isa[4] substringWithRange:{peekIndex3, v153}];
      v22 = v251[5];
      v251[5] = v21;

      p_isa = &i->super.isa;
      if (v247[3])
      {
        goto LABEL_33;
      }
    }

LABEL_31:
    if ([lowercaseString isEqualToString:@"x"])
    {
      if ((v247[3] & 1) == 0)
      {
        v23 = 52;
        goto LABEL_34;
      }

LABEL_33:
      v23 = 39;
LABEL_34:
      v24 = (*(v154 + 2))(v154, v23, intValue2, 0, 0);
      if ([v24 isMaybeX])
      {
        [p_isa _findNextToken];
        lastObject = [p_isa[18] lastObject];
        v26 = lastObject;
        if (!lastObject || [lastObject tokenType] == 1)
        {
          [p_isa _findNextToken];
        }
      }

      goto LABEL_99;
    }

    *(v247 + 24) = 0;

    v11 = i;
  }

  if (!v11->_variables || !v11->_variableBuffer || v153 > v11->_variableBufferLength)
  {
    goto LABEL_69;
  }

  [NSString getCharacters:"getCharacters:range:" range:?];
  v27 = 0;
  v28 = 0;
  v256 = 0u;
  v257 = 0u;
  variableBuffer = v11->_variableBuffer;
  v30 = 1;
  v31 = intValue2 - peekIndex3;
  v32 = 1;
  while (1)
  {
    v34 = *variableBuffer++;
    v33 = v34;
    v35 = (v34 - 97);
    v36 = (v34 - 97);
    v37 = -97;
    if (v36 >= 0x1A)
    {
      break;
    }

LABEL_48:
    v38 = v11->_singleLetterVariables.letters[v37 + v33];
    if (!v38)
    {
      v28 = v33;
    }

    v27 += !v38;
    if (v36 > 0x19)
    {
      v40 = (v33 - 65);
      if (v40 > 0x19)
      {
        goto LABEL_59;
      }

      v39 = &v256 + v40;
    }

    else
    {
      v39 = &v256 + v35;
    }

    if (*v39)
    {
      goto LABEL_59;
    }

    *v39 = 1;
    v32 = v30++ < v153;
    if (!--v31)
    {
      v32 = 0;
      goto LABEL_59;
    }
  }

  if ((v33 - 65) < 0x1A)
  {
    v37 = -65;
    goto LABEL_48;
  }

  ++v27;
  v28 = v33;
LABEL_59:
  if (v11->_declaredVariable && v27 == 1)
  {
    v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%c", v28];
    v42 = v251[5];
    v251[5] = v41;

    if (i->_graphableVariable)
    {
      if (![v251[5] caseInsensitiveCompare:?])
      {
        *(v247 + 24) = 1;
        if (!v32)
        {
          goto LABEL_64;
        }
      }
    }
  }

  else if (!v32 && v27 <= 0)
  {
LABEL_64:
    v43 = peekIndex3 + 1;
    do
    {
      v44 = (*(v154 + 2))(v154, 39, v43++, 0, 0);
      --v153;
    }

    while (v153);
    goto LABEL_99;
  }

  *(v247 + 24) = 0;
LABEL_69:
  v45 = 0;
  *&v256 = 0;
  *(&v256 + 1) = &v256;
  *&v257 = 0x3032000000;
  *(&v257 + 1) = __Block_byref_object_copy__886;
  v258 = __Block_byref_object_dispose__887;
  v259 = 0;
  v238 = 0;
  v239 = &v238;
  v240 = 0x3032000000;
  v241 = __Block_byref_object_copy__886;
  v242 = __Block_byref_object_dispose__887;
  v243 = 0;
  v234 = 0;
  v235 = &v234;
  v236 = 0x2020000000;
  v237 = 0;
  v46 = 1;
  while (2)
  {
    v47 = v46;
    v228 = 0;
    v229 = &v228;
    v230 = 0x3032000000;
    v231 = __Block_byref_object_copy__886;
    v232 = __Block_byref_object_dispose__887;
    trie = [(CalculateTokenizer *)i trie];
    v49 = trie;
    if (trie)
    {
      v50 = [*(trie + 32) copy];
    }

    else
    {
      v50 = 0;
    }

    v233 = v50;

    v195 = 0;
    v196 = &v195;
    v197 = 0x2020000000;
    wordBreakIndicesIndex = [(CalculateTokenizer *)i wordBreakIndicesIndex];
    v183 = 0;
    v184 = &v183;
    v185 = 0x2020000000;
    v186 = intValue2;
    string2 = [(CalculateTokenizer *)i string];
    v226[0] = MEMORY[0x1E69E9820];
    v226[1] = 3221225472;
    v226[2] = __36__CalculateTokenizer__findNextToken__block_invoke_3;
    v226[3] = &unk_1E815C9E0;
    v227 = v45;
    v226[5] = &v228;
    v226[4] = i;
    v226[6] = &v238;
    v226[7] = &v256;
    v226[8] = &v234;
    v226[9] = &v183;
    v226[11] = peekIndex3;
    v226[10] = &v195;
    [Trie enumerateCharactersInKey:string2 range:peekIndex3 usingBlock:stringLength - peekIndex3, v226];

    ranks = [*(*(&v256 + 1) + 40) ranks];
    if ([ranks count] != 1)
    {

LABEL_76:
      _Block_object_dispose(&v183, 8);
      _Block_object_dispose(&v195, 8);
      _Block_object_dispose(&v228, 8);

      v46 = 0;
      v45 = 1;
      if ((v47 & 1) == 0)
      {
        goto LABEL_79;
      }

      continue;
    }

    break;
  }

  v53 = [*(*(&v256 + 1) + 40) tokenType] == 2;

  if (v53)
  {
    goto LABEL_76;
  }

  _Block_object_dispose(&v183, 8);
  _Block_object_dispose(&v195, 8);
  _Block_object_dispose(&v228, 8);

LABEL_79:
  v54 = *(*(&v256 + 1) + 40);
  v55 = i;
  if (v54 && [v54 tokenType] != 33)
  {
    if ([*(*(&v256 + 1) + 40) tokenType] != 2 && objc_msgSend(*(*(&v256 + 1) + 40), "tokenType") != 35)
    {
      tokenType = [*(*(&v256 + 1) + 40) tokenType];
      v67 = (*(v154 + 2))(v154, tokenType, v235[3], 0, 0);
      normalized = [*(*(&v256 + 1) + 40) normalized];
      [v67 setNormalizedText:normalized];

      goto LABEL_98;
    }

    if ([*(*(&v256 + 1) + 40) tokenType] != 35)
    {
      goto LABEL_148;
    }

    ranks2 = [*(*(&v256 + 1) + 40) ranks];
    v60 = [ranks2 count];

    v61 = v235[3];
    v55 = i;
    if (v61 >= stringLength)
    {
      goto LABEL_147;
    }

    while (1)
    {
      string3 = [(CalculateTokenizer *)v55 string];
      v63 = [string3 characterAtIndex:v61];

      v55 = i;
      if (v63 == 95)
      {
        goto LABEL_153;
      }

      if (v63 != 32 && (v63 - 48) >= 0xAu)
      {
        break;
      }

      if (stringLength == ++v61)
      {
        goto LABEL_147;
      }
    }

    if (v63 != 40)
    {
LABEL_147:
      if (v60 != 1)
      {
LABEL_148:
        if (!v251[5] && v153 == 1)
        {
          v108 = [(NSString *)v55->_string substringWithRange:peekIndex3, 1];
          v109 = v251[5];
          v251[5] = v108;

          v110 = v251[5];
          letterCharacterSet = [MEMORY[0x1E696AB08] letterCharacterSet];
          LODWORD(v110) = [v110 rangeOfCharacterFromSet:letterCharacterSet] == 0x7FFFFFFFFFFFFFFFLL;

          if (v110)
          {
            v112 = v251[5];
            v251[5] = 0;
          }
        }

        v113 = (*(v154 + 2))(v154, 2, v235[3], 0, *(*(&v256 + 1) + 40));
        goto LABEL_98;
      }
    }

LABEL_153:
    v114 = (*(v154 + 2))(v154, 35, v235[3], 0, 0);
    normalized2 = [*(*(&v256 + 1) + 40) normalized];
    [v114 setNormalizedText:normalized2];

    goto LABEL_98;
  }

  v56 = [v239[5] length] + peekIndex3;
  v222 = 0;
  v223 = &v222;
  v224 = 0x2020000000;
  v225 = v56;
  if ([v239[5] rangeOfCharacterFromSet:newlineSet] != 0x7FFFFFFFFFFFFFFFLL)
  {
    tokenType2 = 32;
    goto LABEL_96;
  }

  if ([v239[5] rangeOfCharacterFromSet:whitespaceSet] != 0x7FFFFFFFFFFFFFFFLL)
  {
    string4 = [(CalculateTokenizer *)i string];
    v221[0] = MEMORY[0x1E69E9820];
    v221[1] = 3221225472;
    v221[2] = __36__CalculateTokenizer__findNextToken__block_invoke_4;
    v221[3] = &unk_1E815CA08;
    v221[4] = &v222;
    [Trie enumerateCharactersInKey:string4 range:peekIndex3 usingBlock:v153, v221];

    v56 = v223[3];
    tokenType2 = 1;
    goto LABEL_96;
  }

  v57 = [digitToCharacterType objectForKeyedSubscript:v239[5]];
  if (v57)
  {
  }

  else if ([v239[5] rangeOfCharacterFromSet:i->_localizedDecimalSet] == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_175;
  }

  v217 = 0;
  v218 = &v217;
  v219 = 0x2020000000;
  v69 = v239[5];
  v70 = [digitToCharacterType objectForKeyedSubscript:v69];
  v71 = v70;
  if (v70)
  {
    integerValue = [v70 integerValue];
  }

  else if ([v69 rangeOfCharacterFromSet:symbolSet] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v69, "rangeOfCharacterFromSet:", hebrewSet) == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([v69 rangeOfCharacterFromSet:punctuationSet] == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([v69 rangeOfCharacterFromSet:superscriptSet] == 0x7FFFFFFFFFFFFFFFLL)
      {
        integerValue = 1;
      }

      else
      {
        integerValue = 4;
      }
    }

    else
    {
      integerValue = 3;
    }
  }

  else
  {
    integerValue = 2;
  }

  v220 = integerValue;
  v213 = 0;
  v214 = &v213;
  v215 = 0x2020000000;
  v73 = i;
  v216 = [v239[5] rangeOfCharacterFromSet:i->_localizedDecimalSet] == 0x7FFFFFFFFFFFFFFFLL;
  v211[0] = 0;
  v211[1] = v211;
  v211[2] = 0x2020000000;
  v212 = 1;
  v209[0] = 0;
  v209[1] = v209;
  v209[2] = 0x2020000000;
  v210 = 0;
  v207[0] = 0;
  v207[1] = v207;
  v207[2] = 0x2020000000;
  v208 = *(v214 + 24);
  v205[0] = 0;
  v205[1] = v205;
  v205[2] = 0x2020000000;
  v206 = 0;
  v201 = 0;
  v202 = &v201;
  v203 = 0x2020000000;
  v204 = 0;
  if ((v214[3] & 1) == 0)
  {
    *(v218 + 6) = 1;
  }

  v74 = 0;
  v228 = 0;
  v229 = &v228;
  v230 = 0x3032000000;
  v231 = __Block_byref_object_copy__886;
  v232 = __Block_byref_object_dispose__887;
  v233 = 0;
  v195 = 0;
  v196 = &v195;
  v197 = 0x3032000000;
  wordBreakIndicesIndex = __Block_byref_object_copy__886;
  v199 = __Block_byref_object_dispose__887;
  v200 = 0;
  if (i->_normalizeNumbers)
  {
    v75 = objc_opt_new();
    v74 = v75;
    if (v214[3])
    {
      v76 = [digitToNormalizedDigit objectForKeyedSubscript:v239[5]];
      v77 = v76;
      if (!v76)
      {
        v77 = v239[5];
      }

      [v74 appendString:v77];
    }

    else
    {
      [v75 appendString:@"."];
    }

    v78 = [digitToNumberingSystem objectForKeyedSubscript:v239[5]];
    v79 = v229[5];
    v229[5] = v78;

    v73 = i;
  }

  v193[0] = 0;
  v193[1] = v193;
  v193[2] = 0x2020000000;
  v194 = 0;
  v189 = 0;
  v190 = &v189;
  v191 = 0x2020000000;
  v192 = 0;
  v183 = 0;
  v184 = &v183;
  v185 = 0x3032000000;
  v186 = __Block_byref_object_copy__886;
  v187 = __Block_byref_object_dispose__887;
  v188 = v239[5];
  v181[0] = 0;
  v181[1] = v181;
  v181[2] = 0x3032000000;
  v181[3] = __Block_byref_object_copy__886;
  v181[4] = __Block_byref_object_dispose__887;
  v182 = 0;
  v177 = 0;
  v178 = &v177;
  v179 = 0x2020000000;
  v180 = v56;
  if (v73->_normalizeNumbers && *(v218 + 6) != 5)
  {
    v194 = 1;
  }

  v223[3] = v56;
  string5 = [(CalculateTokenizer *)v73 string];
  v160[0] = MEMORY[0x1E69E9820];
  v160[1] = 3221225472;
  v160[2] = __36__CalculateTokenizer__findNextToken__block_invoke_5;
  v160[3] = &unk_1E815CA30;
  v162 = &v217;
  v160[4] = v73;
  v163 = &v228;
  v164 = v209;
  v165 = &v201;
  v166 = v205;
  v167 = v193;
  v168 = &v189;
  v169 = &v195;
  v81 = v74;
  v161 = v81;
  v170 = v207;
  v171 = v181;
  v172 = &v213;
  v173 = v211;
  v174 = &v183;
  v175 = &v222;
  v176 = &v177;
  [Trie enumerateCharactersInKey:string5 range:v56 usingBlock:stringLength - v56, v160];

  if (v223[3] == peekIndex3 + 1 && [v239[5] isEqualToString:@"."])
  {
    v82 = (*(v154 + 2))(v154, 6, v223[3], v239[5], 0);
    goto LABEL_173;
  }

  if ((v202[3] & 1) != 0 || [v184[5] isEqualToString:{@", "}])
  {
    --v223[3];
    if (i->_normalizeNumbers)
    {
      [v81 deleteCharactersInRange:{objc_msgSend(v81, "length") - 1, 1}];
    }
  }

  v83 = v223[3];
  if (v83 <= [(CalculateTokenizer *)i peekIndex])
  {
    v107 = 1;
    goto LABEL_174;
  }

  lastToken = [(CalculateTokenizer *)i lastToken];
  if (!lastToken)
  {
    goto LABEL_162;
  }

  lastToken2 = [(CalculateTokenizer *)i lastToken];
  v86 = [lastToken2 tokenType] == 2;

  if (!v86)
  {
    goto LABEL_162;
  }

  v152 = 0;
  v148 = 0;
  v149 = 0;
  v87 = i;
  while (2)
  {
    lastToken3 = [(CalculateTokenizer *)v87 lastToken];
    ranks3 = [lastToken3 ranks];
    v89Ranks = [ranks3 ranks];
    v150 = [v89Ranks count];

    if (v150 <= v152)
    {
      v87 = i;
      goto LABEL_155;
    }

    lastToken4 = [(CalculateTokenizer *)i lastToken];
    ranks4 = [lastToken4 ranks];
    v92Ranks = [ranks4 ranks];
    v94 = [v92Ranks objectAtIndexedSubscript:v152];
    v95 = [v94 unitID] < 1;

    if (v95)
    {
      goto LABEL_143;
    }

    unitsInfo = [(CalculateTokenizer *)i unitsInfo];
    lastToken5 = [(CalculateTokenizer *)i lastToken];
    ranks5 = [lastToken5 ranks];
    v98Ranks = [ranks5 ranks];
    v100 = [v98Ranks objectAtIndexedSubscript:v152];
    v101 = [unitsInfo objectAtIndexedSubscript:{objc_msgSend(v100, "unitID")}];
    typeInfo = [v101 typeInfo];
    isCurrency = [typeInfo isCurrency];

    if (!isCurrency)
    {
      v149 = 1;
LABEL_143:
      v87 = i;
      goto LABEL_144;
    }

    v87 = i;
    if ((v149 & 1) == 0)
    {
      goto LABEL_155;
    }

    string6 = [(CalculateTokenizer *)i string];
    peekIndex4 = [(CalculateTokenizer *)i peekIndex];
    v106 = [string6 substringWithRange:{peekIndex4, v223[3] - -[CalculateTokenizer peekIndex](i, "peekIndex")}];

    v87 = i;
    if ([v106 isEqualToString:@"2"] & 1) != 0 || (objc_msgSend(v106, "isEqualToString:", @"3"))
    {
      v149 = 1;
      v148 = v106;
LABEL_144:
      ++v152;
      continue;
    }

    break;
  }

  v148 = v106;
LABEL_155:
  lastToken6 = [(CalculateTokenizer *)v87 lastToken];
  text = [lastToken6 text];
  lastToken7 = [(CalculateTokenizer *)i lastToken];
  text2 = [lastToken7 text];
  peekTokens = [text substringFromIndex:{objc_msgSend(text2, "length") - 1}];

  if ([peekTokens rangeOfCharacterFromSet:symbolSet] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v121 = 0;
LABEL_164:

    v126 = v148;
    goto LABEL_165;
  }

  v121 = 0;
  if ([peekTokens rangeOfCharacterFromSet:punctuationSet] != 0x7FFFFFFFFFFFFFFFLL || v150 > v152)
  {
    goto LABEL_164;
  }

  string7 = [(CalculateTokenizer *)i string];
  peekIndex5 = [(CalculateTokenizer *)i peekIndex];
  v124 = [string7 substringWithRange:{peekIndex5, v223[3] - -[CalculateTokenizer peekIndex](i, "peekIndex")}];

  if (([v124 isEqualToString:@"2"] & 1) == 0 && !objc_msgSend(v124, "isEqualToString:", @"3"))
  {
    v121 = 0;
    v148 = v124;
    goto LABEL_164;
  }

  v148 = v124;

  if (v148)
  {
    peekTokens = [(CalculateTokenizer *)i peekTokens];
    v125 = [CalculateToken tokenWithType:11 range:[(CalculateTokenizer *)i peekIndex] text:0 ranks:@"^", 0];
    [peekTokens addObject:v125];

    v121 = v148;
    goto LABEL_164;
  }

LABEL_162:
  v126 = 0;
  v121 = 0;
LABEL_165:
  v127 = v126;
  v128 = (*(v154 + 2))(v154, 3, v223[3]);
  v129 = v128;
  if (i->_normalizeNumbers)
  {
    [v128 setNormalizedText:v81];
    [v129 setNumberingSystem:v229[5]];
  }

  if (v190[6] >= 1 && v178[3] > v223[3])
  {
    string8 = [(CalculateTokenizer *)i string];
    v131 = v223[3];
    v132 = v178[3] - v131;
    v158[0] = MEMORY[0x1E69E9820];
    v158[1] = 3221225472;
    v158[2] = __36__CalculateTokenizer__findNextToken__block_invoke_6;
    v158[3] = &unk_1E815CA58;
    v158[4] = i;
    v133 = v154;
    v159 = v133;
    [Trie enumerateCharactersInKey:string8 range:v131 usingBlock:v132, v158];

    v134 = v178[3];
    if (v134 > [(CalculateTokenizer *)i peekIndex])
    {
      v135 = (*(v154 + 2))(v133, 3, v178[3], 0, 0);
    }
  }

LABEL_173:
  v107 = 0;
LABEL_174:

  _Block_object_dispose(&v177, 8);
  _Block_object_dispose(v181, 8);

  _Block_object_dispose(&v183, 8);
  _Block_object_dispose(&v189, 8);
  _Block_object_dispose(v193, 8);
  _Block_object_dispose(&v195, 8);

  _Block_object_dispose(&v228, 8);
  _Block_object_dispose(&v201, 8);
  _Block_object_dispose(v205, 8);
  _Block_object_dispose(v207, 8);
  _Block_object_dispose(v209, 8);
  _Block_object_dispose(v211, 8);
  _Block_object_dispose(&v213, 8);
  _Block_object_dispose(&v217, 8);
  v55 = i;
  if (v107)
  {
LABEL_175:
    v136 = *(*(&v256 + 1) + 40);
    if (v136 && [v136 tokenType] == 33)
    {
      tokenType2 = [*(*(&v256 + 1) + 40) tokenType];
      v56 = v235[3];
      goto LABEL_96;
    }

    trie = v55->_trie;
    v138 = [CalculateTokenizer localizedSymbolsTrie:v55->_locales];
    if (trie != v138)
    {

      goto LABEL_180;
    }

    v143 = v55->_unitsInfo == 0;

    if (!v143)
    {
      v144 = +[AvailableUnitRanks shared];
      v145 = [v144 ranksWithLocales:i->_locales];
      v146 = i->_trie;
      i->_trie = v145;

      [(CalculateTokenizer *)i _findNextToken];
      goto LABEL_97;
    }

LABEL_180:
    if ([(CalculateTokenizer *)i peekIndex]+ 1 != v155)
    {
      goto LABEL_184;
    }

    v139 = characterTypeForCharacter(v239[5]);
    if (v139 == 2)
    {
      v140 = 54;
LABEL_190:
      v147 = (*(v154 + 2))(v154, v140, v155, 0, 0);
    }

    else
    {
      if (v139 == 3)
      {
        v140 = 53;
        goto LABEL_190;
      }

LABEL_184:
      if (!v251[5])
      {
        v153 = [(NSString *)i->_string substringWithRange:peekIndex3, v153];
        v142 = v251[5];
        v251[5] = v153;
      }

      tokenType2 = 52;
      v56 = v155;
LABEL_96:
      v65 = (*(v154 + 2))(v154, tokenType2, v56, 0, 0);
    }
  }

LABEL_97:
  _Block_object_dispose(&v222, 8);
LABEL_98:
  _Block_object_dispose(&v234, 8);
  _Block_object_dispose(&v238, 8);

  _Block_object_dispose(&v256, 8);
LABEL_99:

  _Block_object_dispose(&v246, 8);
  _Block_object_dispose(&v250, 8);
}

- (void)update
{
  v49 = *MEMORY[0x1E69E9840];
  if (self->_needsUpdate)
  {
    self->_needsUpdate = 0;
    [(CalculateTokenizer *)self _loadIfNeeded];
    wordBreakIndices = [(CalculateTokenizer *)self wordBreakIndices];
    [wordBreakIndices removeAllObjects];

    locales = [(CalculateTokenizer *)self locales];
    if (![locales count])
    {
      v5 = +[Localize systemLocales];

      locales = v5;
    }

    firstObject = [locales firstObject];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v7 = locales;
    v8 = [v7 countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v45;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v45 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v44 + 1) + 8 * i);
          if (([v12 usesWhitespace] & 1) == 0)
          {
            v13 = v12;

            firstObject = v13;
            goto LABEL_14;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v44 objects:v48 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:

    v14 = self->_numberFormatter;
    if (!v14)
    {
      firstObject2 = [v7 firstObject];
      v14 = [CalculateResult performSelector:sel_defaultNumberFormatter_ withObject:firstObject2];
    }

    groupingSeparator = [(NSNumberFormatter *)v14 groupingSeparator];
    groupingSeparator = self->_groupingSeparator;
    self->_groupingSeparator = groupingSeparator;

    decimalSeparator = [(NSNumberFormatter *)v14 decimalSeparator];
    decimalSeparator = self->_decimalSeparator;
    self->_decimalSeparator = decimalSeparator;

    currencyGroupingSeparator = [(NSNumberFormatter *)v14 currencyGroupingSeparator];
    currencyGroupingSeparator = self->_currencyGroupingSeparator;
    self->_currencyGroupingSeparator = currencyGroupingSeparator;

    v42 = v14;
    currencyDecimalSeparator = [(NSNumberFormatter *)v14 currencyDecimalSeparator];
    currencyDecimalSeparator = self->_currencyDecimalSeparator;
    self->_currencyDecimalSeparator = currencyDecimalSeparator;

    v24 = objc_opt_new();
    localizedGroupingSet = self->_localizedGroupingSet;
    self->_localizedGroupingSet = v24;

    if (self->_groupingSeparator)
    {
      [(NSMutableCharacterSet *)self->_localizedGroupingSet addCharactersInString:?];
    }

    if (self->_currencyGroupingSeparator)
    {
      [(NSMutableCharacterSet *)self->_localizedGroupingSet addCharactersInString:?];
    }

    if ([(NSString *)self->_groupingSeparator isEqualToString:@"’"]|| [(NSString *)self->_currencyGroupingSeparator isEqualToString:@"’"])
    {
      [(NSMutableCharacterSet *)self->_localizedGroupingSet addCharactersInString:@"'"];
    }

    if ([(NSString *)self->_groupingSeparator rangeOfCharacterFromSet:nbspSet]!= 0x7FFFFFFFFFFFFFFFLL || [(NSString *)self->_currencyGroupingSeparator rangeOfCharacterFromSet:nbspSet]!= 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableCharacterSet *)self->_localizedGroupingSet addCharactersInString:@" "];
    }

    if (![(NSString *)self->_decimalSeparator isEqualToString:@", "]&& ![(NSString *)self->_currencyDecimalSeparator isEqualToString:@", "])
    {
      [(NSMutableCharacterSet *)self->_localizedGroupingSet addCharactersInString:@", "];
    }

    v26 = objc_opt_new();
    localizedDecimalSet = self->_localizedDecimalSet;
    self->_localizedDecimalSet = v26;

    if (self->_decimalSeparator)
    {
      [(NSMutableCharacterSet *)self->_localizedDecimalSet addCharactersInString:?];
    }

    if (self->_currencyDecimalSeparator)
    {
      [(NSMutableCharacterSet *)self->_localizedDecimalSet addCharactersInString:?];
    }

    if ([(NSString *)self->_decimalSeparator rangeOfCharacterFromSet:nbspSet]!= 0x7FFFFFFFFFFFFFFFLL || [(NSString *)self->_currencyDecimalSeparator rangeOfCharacterFromSet:nbspSet]!= 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableCharacterSet *)self->_localizedDecimalSet addCharactersInString:@" "];
    }

    if (![(NSString *)self->_groupingSeparator isEqualToString:@"."]&& ![(NSString *)self->_currencyGroupingSeparator isEqualToString:@"."])
    {
      [(NSMutableCharacterSet *)self->_localizedDecimalSet addCharactersInString:@"."];
    }

    v28 = *MEMORY[0x1E695E480];
    string = [(CalculateTokenizer *)self string];
    v50.location = self->_startIndex;
    v50.length = self->_stringLength - v50.location;
    v30 = CFStringTokenizerCreate(v28, string, v50, 0, firstObject);

    startIndex = [(CalculateTokenizer *)self startIndex];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __28__CalculateTokenizer_update__block_invoke;
    aBlock[3] = &unk_1E815C850;
    aBlock[4] = self;
    v32 = _Block_copy(aBlock);
    while (CFStringTokenizerAdvanceToNextToken(v30))
    {
      stringLength = [(CalculateTokenizer *)self stringLength];
      CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v30);
      if (CurrentTokenRange.location != -1)
      {
        stringLength = CurrentTokenRange.location + CurrentTokenRange.length;
      }

      v32[2](v32, startIndex, stringLength);
      startIndex = stringLength;
    }

    wordBreakIndices2 = [(CalculateTokenizer *)self wordBreakIndices];
    if ([wordBreakIndices2 count])
    {
      [(CalculateTokenizer *)self wordBreakIndices];
      v36 = v41 = firstObject;
      [v36 lastObject];
      v38 = v37 = v7;
      intValue = [v38 intValue];
      stringLength2 = [(CalculateTokenizer *)self stringLength];

      v7 = v37;
      firstObject = v41;

      if (stringLength2 <= intValue)
      {
        goto LABEL_49;
      }
    }

    else
    {
    }

    v32[2](v32, startIndex, [(CalculateTokenizer *)self stringLength]);
LABEL_49:
    CFRelease(v30);
    [(CalculateTokenizer *)self reset];
  }
}

- (void)_loadIfNeeded
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__CalculateTokenizer__loadIfNeeded__block_invoke;
  block[3] = &unk_1E815C940;
  block[4] = self;
  if (_loadIfNeeded_onceToken[0] != -1)
  {
    dispatch_once(_loadIfNeeded_onceToken, block);
  }

  if (!self->_trie)
  {
    if (self->_unitsInfo)
    {
      v3 = +[AvailableUnitRanks shared];
      v4 = [v3 ranksWithLocales:self->_locales cachedOnly:1];
      v5 = v4;
      if (v4)
      {
        v6 = v4;
      }

      else
      {
        v6 = [CalculateTokenizer localizedSymbolsTrie:self->_locales];
      }

      trie = self->_trie;
      self->_trie = v6;
    }

    else
    {
      v7 = [CalculateTokenizer localizedSymbolsTrie:self->_locales];
      v3 = self->_trie;
      self->_trie = v7;
    }
  }
}

void __35__CalculateTokenizer__loadIfNeeded__block_invoke(uint64_t a1)
{
  v56 = *MEMORY[0x1E69E9840];
  v1 = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v2 = newlineSet;
  newlineSet = v1;

  v3 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v4 = [v3 mutableCopy];

  [v4 addCharactersInString:@"\u061C"];
  [v4 addCharactersInString:@"\u200E"];
  [v4 addCharactersInString:@"\u200F"];
  [v4 addCharactersInString:@"\u202D"];
  [v4 addCharactersInString:@"\u202E"];
  v39 = v4;
  v5 = [v4 copy];
  v6 = whitespaceSet;
  whitespaceSet = v5;

  v7 = objc_opt_new();
  v8 = &unk_1EDC30000;
  v9 = digitToCharacterType;
  digitToCharacterType = v7;

  v10 = objc_opt_new();
  v11 = digitToNormalizedDigit;
  digitToNormalizedDigit = v10;

  v12 = objc_opt_new();
  v13 = digitToNumberingSystem;
  digitToNumberingSystem = v12;

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = +[Localize numberingSystems];
  v42 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
  if (v42)
  {
    v41 = *v51;
    v14 = 5;
    do
    {
      v15 = 0;
      do
      {
        if (*v51 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v43 = v15;
        v16 = *(*(&v50 + 1) + 8 * v15);
        v44 = v14;
        v17 = [MEMORY[0x1E696AD98] numberWithInt:v14];
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v45 = [v16 digits];
        v18 = [v45 countByEnumeratingWithState:&v46 objects:v54 count:16];
        if (v18)
        {
          v19 = v18;
          LODWORD(v20) = 0;
          v21 = *v47;
          do
          {
            v22 = 0;
            v20 = v20;
            do
            {
              if (*v47 != v21)
              {
                objc_enumerationMutation(v45);
              }

              v23 = *(*(&v46 + 1) + 8 * v22);
              [v8[466] setObject:v17 forKeyedSubscript:v23];
              [digitToNumberingSystem setObject:v16 forKeyedSubscript:v23];
              if (v20 <= 9)
              {
                [&unk_1F419A6F0 objectAtIndexedSubscript:v20];
                v25 = v24 = v8;
                [digitToNormalizedDigit setObject:v25 forKeyedSubscript:v23];

                v8 = v24;
              }

              ++v20;
              ++v22;
            }

            while (v19 != v22);
            v19 = [v45 countByEnumeratingWithState:&v46 objects:v54 count:16];
          }

          while (v19);
        }

        v14 = (v44 + 1);

        v15 = v43 + 1;
      }

      while (v43 + 1 != v42);
      v42 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
    }

    while (v42);
  }

  v26 = objc_opt_new();
  [v26 addCharactersInRange:{8304, 16}];
  [v26 addCharactersInString:@"¹²³"];
  v27 = [v26 copy];
  v28 = superscriptSet;
  superscriptSet = v27;

  v29 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"+＋➕"];
  v30 = addSet;
  addSet = v29;

  v31 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"-﹣－➖–−"];
  v32 = subtractSet;
  subtractSet = v31;

  v33 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"=＝"];
  v34 = equalSet;
  equalSet = v33;

  [objc_opt_class() loadSymbolSet];
  [objc_opt_class() loadPunctuationSet];
  v35 = [MEMORY[0x1E696AB08] characterSetWithRange:{1424, 112}];
  v36 = hebrewSet;
  hebrewSet = v35;

  v37 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"  "];
  v38 = nbspSet;
  nbspSet = v37;
}

+ (void)loadSymbolSet
{
  if (loadSymbolSet_onceToken[0] != -1)
  {
    dispatch_once(loadSymbolSet_onceToken, &__block_literal_global_89);
  }
}

void __35__CalculateTokenizer_loadSymbolSet__block_invoke()
{
  v3 = objc_opt_new();
  v0 = [MEMORY[0x1E696AB08] symbolCharacterSet];
  [v3 formUnionWithCharacterSet:v0];

  [v3 addCharactersInString:@"\\#*×⋅⌈⌉⌊⌋＊"];
  [v3 addCharactersInString:@"+＋➕"];
  [v3 addCharactersInString:@"-﹣－➖–−"];
  [v3 addCharactersInString:@"/÷⁄／"];
  objc_msgSend(v3, "addCharactersInString:", @"(（");
  [v3 addCharactersInString:@"）"]);
  [v3 addCharactersInString:@"^"];
  [v3 addCharactersInString:@"<≪"];
  [v3 addCharactersInString:@">≫"];
  [v3 addCharactersInString:@"<⋘"];
  [v3 addCharactersInString:@">⋙"];
  [v3 addCharactersInString:@"%٪"];
  [v3 addCharactersInString:@"&"];
  [v3 addCharactersInString:@"|"];
  [v3 addCharactersInString:@"=＝"];
  [v3 addCharactersInString:{@", "}];
  [v3 addCharactersInString:@"!"];
  [v3 addCharactersInString:@"πΠ𝜋𝝥𝝅𝚷"];
  [v3 addCharactersInString:@"{"];
  [v3 addCharactersInString:@"}"];
  [v3 addCharactersInString:@"["];
  [v3 addCharactersInString:@"]"];
  v1 = [v3 copy];
  v2 = symbolSet;
  symbolSet = v1;
}

+ (void)loadPunctuationSet
{
  if (loadPunctuationSet_onceToken[0] != -1)
  {
    dispatch_once(loadPunctuationSet_onceToken, &__block_literal_global_159);
  }
}

uint64_t __40__CalculateTokenizer_loadPunctuationSet__block_invoke()
{
  punctuationSet = [MEMORY[0x1E696AB08] punctuationCharacterSet];

  return MEMORY[0x1EEE66BB8]();
}

+ (NSSet)nonTrigFunctionSet
{
  if (nonTrigFunctionSet_onceToken != -1)
  {
    dispatch_once(&nonTrigFunctionSet_onceToken, &__block_literal_global_879);
  }

  v3 = nonTrigFunctionSet_nonTrigFunctionSet;

  return v3;
}

uint64_t __40__CalculateTokenizer_nonTrigFunctionSet__block_invoke()
{
  nonTrigFunctionSet_nonTrigFunctionSet = [MEMORY[0x1E695DFD8] setWithObjects:{@"√", @"sqrt", @"∛", @"cbrt", @"ln", @"log", @"pow", @"root", @"fact", @"exp", @"flip", @"ceil", @"floor", @"round", @"rint", @"abs", @"fabs", @"j0", @"j1", @"y0", @"y1", @"erf", @"erfc", @"fmod", @"hypot", @"rem", @"min", @"max", @"lgamma", 0}];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __45__CalculateTokenizer_laTeXNonTrigFunctionSet__block_invoke()
{
  laTeXNonTrigFunctionSet_nonTrigFunctionSet = [MEMORY[0x1E695DFD8] setWithObjects:{@"\\sqrt", @"\\lg", @"\\log", @"\\ln", @"\\min", @"\\max", 0}];

  return MEMORY[0x1EEE66BB8]();
}

+ (NSSet)laTeXNonTrigFunctionSet
{
  if (laTeXNonTrigFunctionSet_onceToken != -1)
  {
    dispatch_once(&laTeXNonTrigFunctionSet_onceToken, &__block_literal_global_971);
  }

  v3 = laTeXNonTrigFunctionSet_nonTrigFunctionSet;

  return v3;
}

+ (NSSet)laTeXTrigonometricSet
{
  if (laTeXTrigonometricSet_onceToken != -1)
  {
    dispatch_once(&laTeXTrigonometricSet_onceToken, &__block_literal_global_991);
  }

  v3 = laTeXTrigonometricSet_trigonometricSet;

  return v3;
}

uint64_t __43__CalculateTokenizer_laTeXTrigonometricSet__block_invoke()
{
  laTeXTrigonometricSet_trigonometricSet = [MEMORY[0x1E695DFD8] setWithObjects:{@"\\cos", @"\\sin", @"\\tan", @"\\arccos", @"\\arcsin", @"\\arctan", @"\\cosh", @"\\sinh", @"\\tanh", @"\\sec", @"\\csc", @"\\cot", @"\\sech", @"\\csch", @"\\coth", 0}];

  return MEMORY[0x1EEE66BB8]();
}

void __28__CalculateTokenizer_update__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v11 = 0;
  v6 = [*(a1 + 32) string];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __28__CalculateTokenizer_update__block_invoke_2;
  v9[3] = &unk_1E815C968;
  v9[4] = *(a1 + 32);
  v9[5] = v10;
  [Trie enumerateCharactersInKey:v6 range:a2 usingBlock:a3 - a2, v9];

  v7 = [*(a1 + 32) wordBreakIndices];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v7 addObject:v8];

  _Block_object_dispose(v10, 8);
}

- (void)reset
{
  self->_peekIndex = self->_startIndex;
  [(NSMutableArray *)self->_peekTokens removeAllObjects];
  lastToken = self->_lastToken;
  self->_lastToken = 0;

  prevToken2 = self->_prevToken2;
  self->_prevToken2 = 0;

  prevToken = self->_prevToken;
  self->_prevToken = 0;

  self->_prevTokenCount = 0;
  self->_graphableType = 0;
  self->_foundGraphableValue = 0;
  declaredVariables = self->_declaredVariables;
  self->_declaredVariables = 0;

  declaredVariable = self->_declaredVariable;
  self->_declaredVariable = 0;

  suggestedGraphableVariable = self->_suggestedGraphableVariable;
  self->_suggestedGraphableVariable = 0;

  self->_foundGraphableVariable = 0;

  [(CalculateTokenizer *)self setWordBreakIndicesIndex:0];
}

- (void)dealloc
{
  variableBuffer = self->_variableBuffer;
  if (variableBuffer)
  {
    free(variableBuffer);
    self->_variableBuffer = 0;
  }

  v4.receiver = self;
  v4.super_class = CalculateTokenizer;
  [(CalculateTokenizer *)&v4 dealloc];
}

- (void)setSingleLetterVariables:(id *)variables
{
  v3 = *&variables->var0[16];
  *self->_singleLetterVariables.letters = *variables->var0;
  *&self->_singleLetterVariables.letters[16] = v3;
}

- ($0F7EB6B36CDCC9CA6BC7BE76F6527CA8)singleLetterVariables
{
  v3 = *self[9].var0;
  *retstr->var0 = *&self[8].var0[16];
  *&retstr->var0[16] = v3;
  return self;
}

- (id)peekNonWhitespaceToken
{
  peekToken = [(CalculateTokenizer *)self peekToken];
  if ([peekToken tokenType] == 1)
  {
    v4 = [(CalculateTokenizer *)self peekTokenAtOffset:1];
  }

  else
  {
    v4 = peekToken;
  }

  v5 = v4;

  return v5;
}

- (id)peekTokenAtOffset:(int64_t)offset
{
  peekTokens = [(CalculateTokenizer *)self peekTokens];
  v6 = [peekTokens count];

  if (v6 <= offset)
  {
    v7 = offset - v6 + 1;
    do
    {
      [(CalculateTokenizer *)self _findNextToken];
      --v7;
    }

    while (v7);
  }

  if (offset < 0 || (-[CalculateTokenizer peekTokens](self, "peekTokens"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 count], v8, v9 <= offset))
  {
    v11 = 0;
  }

  else
  {
    peekTokens2 = [(CalculateTokenizer *)self peekTokens];
    v11 = [peekTokens2 objectAtIndexedSubscript:offset];
  }

  return v11;
}

id __36__CalculateTokenizer__findNextToken__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  v11 = [*(a1 + 32) peekIndex];
  v12 = a3 - [*(a1 + 32) peekIndex];
  if (!v9)
  {
    v13 = [*(a1 + 32) string];
    v9 = [v13 substringWithRange:{v11, v12}];
  }

  v14 = [CalculateToken tokenWithType:a2 range:v11 text:v12 ranks:v9, v10];
  v15 = [*(a1 + 32) peekTokens];
  [v15 addObject:v14];

  [*(a1 + 32) setPeekIndex:a3];
  v16 = *(a1 + 32);
  if (v16[9] == 1 && [v16 isGraphable] && objc_msgSend(v14, "isOperand"))
  {
    *(*(a1 + 32) + 10) = 1;
  }

  if (!*(*(*(a1 + 40) + 8) + 40) || a2 != 2 && a2 != 52 && *(*(*(a1 + 48) + 8) + 24) != 1)
  {
    goto LABEL_19;
  }

  v17 = *(a1 + 32);
  if (!v17[9] || ([v17 _isGraphableReserved] & 1) != 0)
  {
    goto LABEL_19;
  }

  v18 = *(a1 + 32);
  if ((*(v18 + 15) & 1) == 0)
  {
    *(v18 + 15) = 1;
    v21 = *(a1 + 32);
    v22 = *(*(*(a1 + 40) + 8) + 40);
    v20 = *(v21 + 88);
    *(v21 + 88) = v22;
    goto LABEL_17;
  }

  if (([*(*(*(a1 + 40) + 8) + 40) isEqualToString:*(v18 + 88)] & 1) == 0)
  {
    v19 = *(a1 + 32);
    v20 = *(v19 + 88);
    *(v19 + 88) = 0;
LABEL_17:
  }

  v23 = *(*(a1 + 40) + 8);
  v24 = *(v23 + 40);
  *(v23 + 40) = 0;

LABEL_19:
  if (a2 == 3 || [CalculateToken isOpen:a2])
  {
    goto LABEL_21;
  }

  if (a2 == 1)
  {
    goto LABEL_49;
  }

  if (a2 == 52 || a2 == 5)
  {
LABEL_21:
    v25 = [*(*(a1 + 32) + 200) isMaybeX];
    if (a2 == 5)
    {
      v25 = ([*(*(a1 + 32) + 200) tokenType] != 39) & v25;
    }

    if ([*(*(a1 + 32) + 208) isOperand])
    {
      if (!v25)
      {
LABEL_28:
        if (a2 == 1)
        {
          goto LABEL_49;
        }

        goto LABEL_29;
      }
    }

    else if ((+[CalculateToken isClose:](CalculateToken, "isClose:", [*(*(a1 + 32) + 208) tokenType]) & v25 & 1) == 0)
    {
      goto LABEL_28;
    }

    [*(*(a1 + 32) + 200) setTokenType:6];
    goto LABEL_28;
  }

LABEL_29:
  objc_storeStrong((*(a1 + 32) + 208), *(*(a1 + 32) + 200));
  objc_storeStrong((*(a1 + 32) + 200), v14);
  ++*(*(a1 + 32) + 16);
  v26 = *(a1 + 32);
  if (v26[9] == 1 && ([v26 isGraphable] & 1) == 0)
  {
    v27 = *(a1 + 32);
    if (*(v27 + 16) == 2 && [*(v27 + 200) tokenType] == 31 && objc_msgSend(*(*(a1 + 32) + 208), "tokenType") == 39)
    {
      v28 = [*(*(a1 + 32) + 208) text];
      v29 = *(a1 + 32);
      v30 = *(v29 + 72);
      *(v29 + 72) = v28;

      [*(*(a1 + 32) + 208) range];
      if (v31 == 1)
      {
        v32 = [*(*(a1 + 32) + 208) text];
        if ([v32 isEqualToString:@"y"])
        {

LABEL_42:
          *(*(a1 + 32) + 15) = 1;
          *(*(a1 + 32) + 80) = 1;
          v35 = @"x";
LABEL_48:
          [*(a1 + 32) addDeclaredVariable:v35];
          goto LABEL_49;
        }

        v33 = [*(*(a1 + 32) + 208) text];
        v34 = [v33 isEqualToString:@"Y"];

        if (v34)
        {
          goto LABEL_42;
        }
      }

      [*(*(a1 + 32) + 208) range];
      if (v36 != 1)
      {
        goto LABEL_49;
      }

      v37 = [*(*(a1 + 32) + 208) text];
      if ([v37 isEqualToString:@"z"])
      {
      }

      else
      {
        v38 = [*(*(a1 + 32) + 208) text];
        v39 = [v38 isEqualToString:@"Z"];

        if (!v39)
        {
          goto LABEL_49;
        }
      }

      *(*(a1 + 32) + 15) = 1;
      *(*(a1 + 32) + 80) = 2;
      [*(a1 + 32) addDeclaredVariable:@"x"];
      v35 = @"y";
      goto LABEL_48;
    }
  }

LABEL_49:

  return v14;
}

void __36__CalculateTokenizer__findNextToken__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = a2;
  if ([v7 rangeOfCharacterFromSet:whitespaceSet] == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
LABEL_5:
      *a5 = 1;
      goto LABEL_7;
    }

    if ([v7 rangeOfCharacterFromSet:equalSet] == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_5;
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

LABEL_7:
}

void __36__CalculateTokenizer__findNextToken__block_invoke_3(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = a2;
  v10 = v9;
  if (*(a1 + 96) == 1)
  {
    obja = v9;
    v11 = [v9 stringByApplyingTransform:*MEMORY[0x1E695DA48] reverse:0];
    v12 = [v11 lowercaseString];

    objb = [CalculateTokenizer prepareString:v12];

    v10 = objb;
  }

  obj = v10;
  if (([(TrieNode *)*(*(*(a1 + 40) + 8) + 40) visit:v10]& 1) == 0)
  {
    if (*(*(*(a1 + 48) + 8) + 40))
    {
      v27 = [digitToNormalizedDigit objectForKeyedSubscript:obj];
      if (v27 && ([(TrieNode *)*(*(*(a1 + 40) + 8) + 40) visit:v27]& 1) != 0)
      {

        goto LABEL_4;
      }
    }

    else
    {
      v27 = 0;
    }

    v29 = *(*(a1 + 48) + 8);
    v31 = *(v29 + 40);
    v30 = (v29 + 40);
    if (!v31)
    {
      objc_storeStrong(v30, obj);
    }

    *a5 = 1;
    goto LABEL_28;
  }

LABEL_4:
  v13 = *(*(a1 + 48) + 8);
  v15 = *(v13 + 40);
  v14 = (v13 + 40);
  if (!v15)
  {
    objc_storeStrong(v14, obj);
  }

  v16 = a3 + a4;
  if (*(*(a1 + 32) + 11) == 1 && v16 == *(a1 + 88) + 2 && [*(*(*(a1 + 48) + 8) + 40) isEqualToString:@"\] && objc_msgSend(obj, "isEqualToString:", @" ""))
  {
    v17 = [(TrieNode *)*(*(*(a1 + 40) + 8) + 40) object];
    v18 = *(*(a1 + 56) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    *(*(*(a1 + 64) + 8) + 24) = v16;
  }

  if (v16 == *(*(*(a1 + 72) + 8) + 24))
  {
    v20 = [(TrieNode *)*(*(*(a1 + 40) + 8) + 40) object];
    if (v20)
    {
      v21 = *(*(*(a1 + 64) + 8) + 24);

      if (v16 > v21)
      {
        v22 = [(TrieNode *)*(*(*(a1 + 40) + 8) + 40) object];
        v23 = v22;
        if ((*(*(a1 + 32) + 11) & 1) != 0 || ([v22 isLaTeX] & 1) == 0)
        {
          objc_storeStrong((*(*(a1 + 56) + 8) + 40), v23);
          *(*(*(a1 + 64) + 8) + 24) = v16;
        }
      }
    }

    v24 = ++*(*(*(a1 + 80) + 8) + 24);
    v25 = [*(a1 + 32) wordBreakIndices];
    v26 = [v25 count];

    if (v24 < v26)
    {
      v27 = [*(a1 + 32) wordBreakIndices];
      v28 = [v27 objectAtIndexedSubscript:*(*(*(a1 + 80) + 8) + 24)];
      *(*(*(a1 + 72) + 8) + 24) = [v28 intValue];

LABEL_28:
    }
  }
}

void *__36__CalculateTokenizer__findNextToken__block_invoke_4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 rangeOfCharacterFromSet:whitespaceSet];
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    *a5 = 1;
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = a3 + a4;
  }

  return result;
}

void __36__CalculateTokenizer__findNextToken__block_invoke_5(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v38 = a2;
  v10 = [digitToCharacterType objectForKeyedSubscript:v38];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 integerValue];
  }

  else if ([v38 rangeOfCharacterFromSet:symbolSet] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v38, "rangeOfCharacterFromSet:", hebrewSet) == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([v38 rangeOfCharacterFromSet:punctuationSet] == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([v38 rangeOfCharacterFromSet:superscriptSet] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v12 = 1;
      }

      else
      {
        v12 = 4;
      }
    }

    else
    {
      v12 = 3;
    }
  }

  else
  {
    v12 = 2;
  }

  v13 = *(*(a1 + 48) + 8);
  if (*(v13 + 24) == 1)
  {
    *(v13 + 24) = v12;
  }

  if (*(*(a1 + 32) + 8) == 1 && !*(*(*(a1 + 56) + 8) + 40))
  {
    v14 = [digitToNumberingSystem objectForKeyedSubscript:v38];
    v15 = *(*(a1 + 56) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }

  v17 = [digitToCharacterType objectForKeyedSubscript:v38];

  if (v17)
  {
    if (v12 == *(*(*(a1 + 48) + 8) + 24))
    {
      *(*(*(a1 + 64) + 8) + 24) = 0;
      *(*(*(a1 + 80) + 8) + 24) = 0;
      *(*(*(a1 + 72) + 8) + 24) = 0;
      if (v12 != 5)
      {
        *(*(*(a1 + 88) + 8) + 24) = 1;
      }

      v18 = *(*(a1 + 96) + 8);
      v19 = *(v18 + 24);
      v20 = __OFSUB__(v19, 1);
      v21 = v19 - 1;
      if (v21 < 0 == v20)
      {
        *(v18 + 24) = v21;
        if (*(*(a1 + 32) + 8) == 1)
        {
          v22 = *(*(*(a1 + 104) + 8) + 40);
          if (!v22)
          {
            v23 = objc_opt_new();
            v24 = *(*(a1 + 104) + 8);
            v25 = *(v24 + 40);
            *(v24 + 40) = v23;

            v22 = *(*(*(a1 + 104) + 8) + 40);
          }

          v26 = [digitToNormalizedDigit objectForKeyedSubscript:v38];
          if (v26)
          {
            v27 = v26;
          }

          else
          {
            v27 = v38;
          }

          [v22 appendString:v27];

          if (!*(*(*(a1 + 96) + 8) + 24))
          {
            [*(a1 + 40) appendString:*(*(*(a1 + 104) + 8) + 40)];
            v28 = *(*(a1 + 104) + 8);
            v29 = *(v28 + 40);
            *(v28 + 40) = 0;
          }
        }

        goto LABEL_61;
      }

LABEL_37:
      if (*(*(a1 + 32) + 8) == 1)
      {
        v30 = *(a1 + 40);
        v31 = [digitToNormalizedDigit objectForKeyedSubscript:v38];
        if (v31)
        {
          v32 = v31;
        }

        else
        {
          v32 = v38;
        }

        [v30 appendString:v32];
      }

      goto LABEL_61;
    }

    goto LABEL_59;
  }

  if (*(*(*(a1 + 112) + 8) + 24) == 1 && [v38 rangeOfCharacterFromSet:*(*(a1 + 32) + 248)] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v34 = *(*(*(a1 + 120) + 8) + 40);
    if (v34 && ([v34 isEqualToString:v38] & 1) == 0)
    {
      goto LABEL_59;
    }

    *(*(*(a1 + 80) + 8) + 24) = 1;
    *(*(*(a1 + 72) + 8) + 24) = 0;
    objc_storeStrong((*(*(a1 + 120) + 8) + 40), a2);
    if ([v38 isEqualToString:{@", "}])
    {
      *(*(*(a1 + 96) + 8) + 24) = 3;
    }

    else
    {
      *(*(*(a1 + 88) + 8) + 24) = 1;
    }

    goto LABEL_61;
  }

  if (*(*(*(a1 + 128) + 8) + 24) == 1 && [v38 rangeOfCharacterFromSet:*(*(a1 + 32) + 256)] != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (*(*(*(a1 + 96) + 8) + 24) < 1)
    {
      *(*(*(a1 + 128) + 8) + 24) = 0;
      *(*(*(a1 + 64) + 8) + 24) = 0;
      *(*(*(a1 + 112) + 8) + 24) = 0;
      *(*(*(a1 + 80) + 8) + 24) = 0;
      *(*(*(a1 + 72) + 8) + 24) = 0;
      if (*(*(a1 + 32) + 8) == 1)
      {
        [*(a1 + 40) appendString:@"."];
        if ((*(*(*(a1 + 88) + 8) + 24) & 1) == 0 && ([v38 isEqualToString:@"."] & 1) == 0)
        {
          *(*(*(a1 + 88) + 8) + 24) = 1;
        }
      }

      goto LABEL_61;
    }

    goto LABEL_59;
  }

  if (*(*(*(a1 + 136) + 8) + 24) != 1 || ([v38 isEqualToString:@"e"] & 1) == 0 && !objc_msgSend(v38, "isEqualToString:", @"E"))
  {
    if (*(*(*(a1 + 64) + 8) + 24) != 1)
    {
      goto LABEL_59;
    }

    if ([v38 rangeOfCharacterFromSet:subtractSet] == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0 || [v38 rangeOfCharacterFromSet:addSet] == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_59;
      }

      v33 = v38;
      if (*(*(*(a1 + 96) + 8) + 24) >= 1)
      {
        *a5 = 1;
        goto LABEL_66;
      }

      *(*(*(a1 + 64) + 8) + 24) = 0;
      *(*(*(a1 + 80) + 8) + 24) = 0;
      *(*(*(a1 + 72) + 8) + 24) = 0;
      if (*(*(a1 + 32) + 8) != 1)
      {
        goto LABEL_61;
      }

      v36 = *(a1 + 40);
      v37 = @"+";
      goto LABEL_71;
    }

    if (*(*(*(a1 + 96) + 8) + 24) >= 1)
    {
      goto LABEL_59;
    }

    *(*(*(a1 + 64) + 8) + 24) = 0;
    *(*(*(a1 + 80) + 8) + 24) = 0;
    *(*(*(a1 + 72) + 8) + 24) = 0;
    if (*(*(a1 + 32) + 8) == 1)
    {
      v36 = *(a1 + 40);
      v37 = @"-";
LABEL_71:
      [v36 appendString:v37];
    }

LABEL_61:
    if (*(*(*(a1 + 96) + 8) + 24))
    {
      v35 = a3 + a4;
    }

    else
    {
      objc_storeStrong((*(*(a1 + 144) + 8) + 40), a2);
      v35 = a3 + a4;
      *(*(*(a1 + 152) + 8) + 24) = a3 + a4;
    }

    *(*(*(a1 + 160) + 8) + 24) = v35;
    goto LABEL_65;
  }

  if (*(*(*(a1 + 96) + 8) + 24) < 1)
  {
    *(*(*(a1 + 136) + 8) + 24) = 0;
    *(*(*(a1 + 128) + 8) + 24) = 1;
    *(*(*(a1 + 64) + 8) + 24) = 1;
    *(*(*(a1 + 112) + 8) + 24) = 0;
    *(*(*(a1 + 72) + 8) + 24) = 1;
    *(*(*(a1 + 80) + 8) + 24) = 0;
    goto LABEL_37;
  }

LABEL_59:
  *a5 = 1;
LABEL_65:
  v33 = v38;
LABEL_66:
}

id __36__CalculateTokenizer__findNextToken__block_invoke_6(uint64_t a1, void *a2, unint64_t a3)
{
  result = [a2 isEqualToString:{@", "}];
  if (result)
  {
    if (a3 > [*(a1 + 32) peekIndex])
    {
      v6 = (*(*(a1 + 40) + 16))();
    }

    return (*(*(a1 + 40) + 16))();
  }

  return result;
}

- (void)setLocales:(id)locales
{
  self->_needsUpdate = 1;
  objc_storeStrong(&self->_locales, locales);

  [(CalculateTokenizer *)self setTrie:0];
}

void __28__CalculateTokenizer_update__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = a2;
  v5 = [digitToCharacterType objectForKeyedSubscript:?];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 integerValue];
  }

  else if ([v13 rangeOfCharacterFromSet:symbolSet] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v13, "rangeOfCharacterFromSet:", hebrewSet) == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([v13 rangeOfCharacterFromSet:punctuationSet] == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([v13 rangeOfCharacterFromSet:superscriptSet] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v7 = 1;
      }

      else
      {
        v7 = 4;
      }
    }

    else
    {
      v7 = 3;
    }
  }

  else
  {
    v7 = 2;
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 24);
  if (v9)
  {
    if ((v7 & 0xFFFFFFFE) == 2 || v7 != v9)
    {
      v11 = [*(a1 + 32) wordBreakIndices];
      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
      [v11 addObject:v12];

      v8 = *(*(a1 + 40) + 8);
    }
  }

  *(v8 + 24) = v7;
}

- (void)setVariables:(id)variables
{
  v20 = *MEMORY[0x1E69E9840];
  variablesCopy = variables;
  self->_needsUpdate = 1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = variablesCopy;
  }

  else
  {
    v5 = 0;
  }

  variables = self->_variables;
  self->_variables = v5;

  lowercasedVariables = self->_lowercasedVariables;
  self->_lowercasedVariables = 0;

  self->_variableBufferLength = 0;
  variableBuffer = self->_variableBuffer;
  if (variableBuffer)
  {
    free(variableBuffer);
    self->_variableBuffer = 0;
  }

  v9 = self->_variables;
  if (v9)
  {
    *self->_singleLetterVariables.letters = 0u;
    *&self->_singleLetterVariables.letters[16] = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = v9;
    v11 = [(NSDictionary *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v16;
      do
      {
        v14 = 0;
        do
        {
          if (*v16 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [(CalculateTokenizer *)self addVariable:*(*(&v15 + 1) + 8 * v14++), v15];
        }

        while (v12 != v14);
        v12 = [(NSDictionary *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v12);
    }

    self->_variableBuffer = malloc_type_realloc(self->_variableBuffer, 2 * self->_variableBufferLength + 2, 0x1000040BDFB0063uLL);
  }
}

- (void)addDeclaredVariable:(id)variable
{
  if (self->_findDeclaredVariables)
  {
    lowercaseString = [variable lowercaseString];
    [(CalculateTokenizer *)self addVariable:?];
    lowercasedVariables = self->_lowercasedVariables;
    if (!lowercasedVariables)
    {
      v6 = objc_opt_new();
      v7 = self->_lowercasedVariables;
      self->_lowercasedVariables = v6;

      lowercasedVariables = self->_lowercasedVariables;
    }

    [(NSMutableSet *)lowercasedVariables addObject:lowercaseString];
    declaredVariables = self->_declaredVariables;
    if (!declaredVariables)
    {
      v9 = objc_opt_new();
      v10 = self->_declaredVariables;
      self->_declaredVariables = v9;

      declaredVariables = self->_declaredVariables;
    }

    [(NSSet *)declaredVariables addObject:lowercaseString];
  }
}

- (void)addVariable:(id)variable
{
  variableCopy = variable;
  v4 = [variableCopy length] + 1;
  variableBufferLength = self->_variableBufferLength;
  if (v4 > variableBufferLength)
  {
    self->_variableBufferLength = v4;
  }

  v6 = [variableCopy length] == 1;
  v7 = variableCopy;
  if (v6)
  {
    v8 = [variableCopy characterAtIndex:0];
    v9 = (v8 - 97);
    if (v9 <= 0x19 || (v9 = (v8 - 65), v9 <= 0x19))
    {
      v10 = &self->_singleLetterVariables.letters[v9];
      if (!*v10)
      {
        *v10 = 1;
        ++self->_singleLetterVariables.count;
      }
    }

    v11 = self->_singleLetterVariables.count + 1;
    v7 = variableCopy;
    if (self->_variableBufferLength < v11)
    {
      self->_variableBufferLength = v11;
    }
  }

  lowercaseString = [v7 lowercaseString];
  if (([variableCopy isEqualToString:lowercaseString] & 1) == 0)
  {
    lowercasedVariables = self->_lowercasedVariables;
    if (!lowercasedVariables)
    {
      v14 = objc_opt_new();
      v15 = self->_lowercasedVariables;
      self->_lowercasedVariables = v14;

      lowercasedVariables = self->_lowercasedVariables;
    }

    [(NSMutableSet *)lowercasedVariables addObject:lowercaseString];
  }

  v16 = self->_variableBufferLength;
  if (v16 > variableBufferLength)
  {
    variableBuffer = self->_variableBuffer;
    if (variableBuffer)
    {
      self->_variableBuffer = malloc_type_realloc(variableBuffer, 2 * v16 + 2, 0x1000040BDFB0063uLL);
    }
  }
}

- (void)setGraphableVariable:(id)variable
{
  objc_storeStrong(&self->_graphableVariable, variable);
  variableCopy = variable;
  v6 = [(NSString *)self->_graphableVariable length];

  self->_graphableVariableLength = v6;
}

- (void)setRange:(_NSRange)range
{
  self->_needsUpdate = 1;
  self->_stringLength = range.location + range.length;
  self->_startIndex = range.location;
}

- (_NSRange)range
{
  stringLength = self->_stringLength;
  startIndex = self->_startIndex;
  result.length = stringLength;
  result.location = startIndex;
  return result;
}

- (void)setString:(id)string
{
  self->_needsUpdate = 1;
  objc_storeStrong(&self->_string, string);
  stringCopy = string;
  v6 = [stringCopy length];

  self->_stringLength = v6;
  self->_startIndex = 0;
}

- (CalculateTokenizer)initWithUnits:(id)units
{
  unitsCopy = units;
  v13.receiver = self;
  v13.super_class = CalculateTokenizer;
  v6 = [(CalculateTokenizer *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_unitsInfo, units);
    v8 = objc_opt_new();
    peekTokens = v7->_peekTokens;
    v7->_peekTokens = v8;

    v10 = objc_opt_new();
    wordBreakIndices = v7->_wordBreakIndices;
    v7->_wordBreakIndices = v10;

    v7->_needsUpdate = 1;
    v7->_findDeclaredVariables = 1;
  }

  return v7;
}

+ (int)displayNameExponent:(id)exponent
{
  exponentCopy = exponent;
  if ([exponentCopy hasSuffix:@"2"] & 1) != 0 || (objc_msgSend(exponentCopy, "hasSuffix:", @"²"))
  {
    v4 = 2;
  }

  else
  {
    v4 = 3;
    if (([exponentCopy hasSuffix:@"3"] & 1) == 0)
    {
      if ([exponentCopy hasSuffix:@"³"])
      {
        v4 = 3;
      }

      else
      {
        v4 = 0;
      }
    }
  }

  return v4;
}

+ (id)tokenizerWithUnits:(id)units
{
  unitsCopy = units;
  v4 = [[CalculateTokenizer alloc] initWithUnits:unitsCopy];

  return v4;
}

+ (NSSet)trigonometricSet
{
  if (trigonometricSet_onceToken != -1)
  {
    dispatch_once(&trigonometricSet_onceToken, &__block_literal_global_969);
  }

  v3 = trigonometricSet_trigonometricSet;

  return v3;
}

uint64_t __38__CalculateTokenizer_trigonometricSet__block_invoke()
{
  trigonometricSet_trigonometricSet = [MEMORY[0x1E695DFD8] setWithObjects:{@"sin", @"cos", @"tan", @"asin", @"acos", @"atan", @"sinh", @"cosh", @"tanh", @"asinh", @"acosh", @"atanh", @"arcsin", @"arccos", @"arctan", @"arcsind", @"arccosd", @"arctand", @"arcsinh", @"arccosh", @"arctanh", @"sind", @"cosd", @"tand", @"asind", @"acosd", @"atand", 0}];

  return MEMORY[0x1EEE66BB8]();
}

+ (void)addUnits:(id)units builtIn:(BOOL)in
{
  inCopy = in;
  v28 = *MEMORY[0x1E69E9840];
  unitsCopy = units;
  v6 = +[UnitsInfo converterUnits];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __39__CalculateTokenizer_addUnits_builtIn___block_invoke;
  aBlock[3] = &unk_1E815C8F0;
  v7 = unitsCopy;
  v25 = v7;
  v8 = v6;
  v26 = v8;
  v9 = _Block_copy(aBlock);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __39__CalculateTokenizer_addUnits_builtIn___block_invoke_2;
  v22[3] = &unk_1E815C918;
  v10 = v9;
  v23 = v10;
  v11 = _Block_copy(v22);
  if (addUnits_builtIn__onceToken != -1)
  {
    dispatch_once(&addUnits_builtIn__onceToken, &__block_literal_global_763);
  }

  v12 = v11[2];
  if (inCopy)
  {
    v12(v11, @"degree", addUnits_builtIn__circ, 0.6);
  }

  else
  {
    v12(v11, @"fahrenheit", addUnits_builtIn__circ, 0.0);
    (v11[2])(v11, @"celsius", addUnits_builtIn__circ, 0.0);
    (v11[2])(v11, @"USD", addUnits_builtIn__dollar, 0.2);
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v13 = addUnits_builtIn__dollarCountries;
    v14 = [v13 countByEnumeratingWithState:&v18 objects:v27 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v19;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v19 != v16)
          {
            objc_enumerationMutation(v13);
          }

          (v11[2])(v11, *(*(&v18 + 1) + 8 * i), addUnits_builtIn__dollar, 1.0);
        }

        v15 = [v13 countByEnumeratingWithState:&v18 objects:v27 count:16];
      }

      while (v15);
    }
  }
}

void __39__CalculateTokenizer_addUnits_builtIn___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, float a5)
{
  v27 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = a3;
  v10 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        v15 = [(Trie *)*(a1 + 32) objectForKeyedSubscript:v14];
        if (!v15)
        {
          v15 = [UnitRanks unitRanksWithUnitsInfo:0];
          [(Trie *)*(a1 + 32) setObject:v15 forKeyedSubscript:v14];
        }

        v16 = [*(a1 + 40) infoForUnitName:v9];
        v17 = [UnitRank alloc];
        v18 = [v16 unitID];
        *&v19 = a5;
        v20 = [(UnitRank *)v17 initWithUnitID:v18 rank:0 locale:v19];
        [(UnitRank *)v20 setIsLaTeX:a4];
        [v15 addUnitRank:v20];
        [v15 sort];
      }

      v11 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }
}

void __39__CalculateTokenizer_addUnits_builtIn___block_invoke_3()
{
  v0 = addUnits_builtIn__deg;
  addUnits_builtIn__deg = &unk_1F419A690;

  v1 = addUnits_builtIn__circ;
  addUnits_builtIn__circ = &unk_1F419A6A8;

  v2 = addUnits_builtIn__dollar;
  addUnits_builtIn__dollar = &unk_1F419A6C0;

  v3 = addUnits_builtIn__dollarCountries;
  addUnits_builtIn__dollarCountries = &unk_1F419A6D8;
}

+ (void)addSymbols:(id)symbols
{
  v38 = *MEMORY[0x1E69E9840];
  symbolsCopy = symbols;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __33__CalculateTokenizer_addSymbols___block_invoke;
  aBlock[3] = &unk_1E815C8A0;
  selfCopy = self;
  v5 = symbolsCopy;
  v35 = v5;
  v6 = _Block_copy(aBlock);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __33__CalculateTokenizer_addSymbols___block_invoke_2;
  v31[3] = &unk_1E815C8C8;
  selfCopy2 = self;
  v7 = v5;
  v32 = v7;
  v8 = _Block_copy(v31);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __33__CalculateTokenizer_addSymbols___block_invoke_3;
  v28[3] = &unk_1E815C8A0;
  selfCopy3 = self;
  v23 = v7;
  v29 = v23;
  v22 = _Block_copy(v28);
  v6[2](v6, 4, &unk_1F419A0C0);
  v6[2](v6, 5, &unk_1F419A0D8);
  v6[2](v6, 6, &unk_1F419A0F0);
  v6[2](v6, 7, &unk_1F419A108);
  v6[2](v6, 8, &unk_1F419A120);
  v6[2](v6, 9, &unk_1F419A138);
  v6[2](v6, 10, &unk_1F419A150);
  v6[2](v6, 19, &unk_1F419A168);
  v6[2](v6, 20, &unk_1F419A180);
  v6[2](v6, 21, &unk_1F419A198);
  v6[2](v6, 22, &unk_1F419A1B0);
  v6[2](v6, 12, &unk_1F419A1C8);
  v6[2](v6, 36, &unk_1F419A1E0);
  v6[2](v6, 13, &unk_1F419A1F8);
  v6[2](v6, 14, &unk_1F419A210);
  v6[2](v6, 15, &unk_1F419A228);
  v6[2](v6, 16, &unk_1F419A240);
  v6[2](v6, 17, &unk_1F419A258);
  v6[2](v6, 18, &unk_1F419A270);
  v6[2](v6, 31, &unk_1F419A288);
  v6[2](v6, 33, &unk_1F419A2A0);
  v6[2](v6, 34, &unk_1F419A2B8);
  v6[2](v6, 37, &unk_1F419A2D0);
  v6[2](v6, 38, &unk_1F419A2E8);
  v6[2](v6, 27, &unk_1F419A300);
  v6[2](v6, 28, &unk_1F419A318);
  v6[2](v6, 29, &unk_1F419A330);
  v6[2](v6, 30, &unk_1F419A348);
  v6[2](v6, 23, &unk_1F419A360);
  v6[2](v6, 24, &unk_1F419A378);
  v6[2](v6, 25, &unk_1F419A390);
  v6[2](v6, 26, &unk_1F419A3A8);
  v9 = +[CalculateTokenizer nonTrigFunctionSet];
  allObjects = [v9 allObjects];
  v6[2](v6, 35, allObjects);

  v6[2](v6, 35, &unk_1F419A3C0);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  allKeys = [&unk_1F419A7A8 allKeys];
  v12 = [allKeys countByEnumeratingWithState:&v24 objects:v37 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(allKeys);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        v17 = [&unk_1F419A7A8 objectForKeyedSubscript:v16];
        v8[2](v8, 35, v16, v17);
      }

      v13 = [allKeys countByEnumeratingWithState:&v24 objects:v37 count:16];
    }

    while (v13);
  }

  v22[2](v22, 43, &unk_1F419A4B0);
  v22[2](v22, 44, &unk_1F419A4C8);
  v22[2](v22, 7, &unk_1F419A4E0);
  v22[2](v22, 6, &unk_1F419A4F8);
  v22[2](v22, 12, &unk_1F419A510);
  v22[2](v22, 37, &unk_1F419A528);
  v18 = +[CalculateTokenizer laTeXNonTrigFunctionSet];
  allObjects2 = [v18 allObjects];
  v22[2](v22, 35, allObjects2);

  v20 = +[CalculateTokenizer laTeXTrigonometricSet];
  allObjects3 = [v20 allObjects];
  v22[2](v22, 35, allObjects3);

  v22[2](v22, 40, &unk_1F419A540);
  v22[2](v22, 51, &unk_1F419A558);
  v22[2](v22, 41, &unk_1F419A570);
  v22[2](v22, 42, &unk_1F419A588);
  v22[2](v22, 1, &unk_1F419A5A0);
  v22[2](v22, 36, &unk_1F419A5B8);
  v22[2](v22, 13, &unk_1F419A5D0);
  v22[2](v22, 31, &unk_1F419A5E8);
  v22[2](v22, 45, &unk_1F419A600);
  v22[2](v22, 46, &unk_1F419A618);
  v22[2](v22, 47, &unk_1F419A630);
  v22[2](v22, 48, &unk_1F419A648);
  v22[2](v22, 49, &unk_1F419A660);
  v22[2](v22, 50, &unk_1F419A678);
  [CalculateTokenizer addUnits:v23 builtIn:1];
}

+ (void)_addSymbols:(id)symbols normalized:(id)normalized tokenType:(unint64_t)type isLaTeX:(BOOL)x trie:(id)trie
{
  xCopy = x;
  v43 = *MEMORY[0x1E69E9840];
  symbolsCopy = symbols;
  normalizedCopy = normalized;
  trieCopy = trie;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = symbolsCopy;
  v13 = [symbolsCopy countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = xCopy;
    if (type != 35)
    {
      v15 = 1;
    }

    v34 = v15;
    v33 = *v37;
    v31 = trieCopy;
    typeCopy = type;
    do
    {
      v16 = 0;
      v30 = v14;
      do
      {
        if (*v37 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v36 + 1) + 8 * v16);
        v18 = [(Trie *)trieCopy objectForKeyedSubscript:v17];
        if (!v18)
        {
          v18 = [UnitRanks unitRanksWithUnitsInfo:0];
          [(Trie *)trieCopy setObject:v18 forKeyedSubscript:v17];
        }

        v19 = [UnitRank alloc];
        LODWORD(v20) = -1.0;
        v21 = [(UnitRank *)v19 initWithUnitID:0 rank:0 locale:v20];
        [(UnitRank *)v21 setTokenType:type];
        [(UnitRank *)v21 setIsLaTeX:xCopy];
        [(UnitRank *)v21 setNormalized:normalizedCopy];
        [v18 addUnitRank:v21];
        if ((v34 & 1) == 0)
        {
          if ([v17 containsString:@"_"])
          {
            v22 = [v17 stringByReplacingOccurrencesOfString:@"_" withString:&stru_1F418FCD8];
            v41 = v22;
            v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
            v24 = trieCopy;
            v25 = v23;
            [self _addSymbols:v23 normalized:normalizedCopy tokenType:35 isLaTeX:0 trie:v24];
          }

          else
          {
            if (![v17 hasSuffix:@"^-1"])
            {
              goto LABEL_16;
            }

            v22 = [v17 stringByReplacingOccurrencesOfString:@"^-1" withString:@"-1"];
            v40[0] = v22;
            v25 = [v17 stringByReplacingOccurrencesOfString:@"^-1" withString:@"^(-1)"];
            v40[1] = v25;
            v26 = [v17 stringByReplacingOccurrencesOfString:@"^-1" withString:@"⁻¹"];
            v40[2] = v26;
            v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:3];
            [self _addSymbols:v27 normalized:normalizedCopy tokenType:35 isLaTeX:0 trie:v31];

            type = typeCopy;
          }

          v14 = v30;
          trieCopy = v31;
        }

LABEL_16:

        ++v16;
      }

      while (v14 != v16);
      v14 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v14);
  }
}

+ (void)addLocalizedSymbols:(id)symbols locales:(id)locales
{
  symbolsCopy = symbols;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__CalculateTokenizer_addLocalizedSymbols_locales___block_invoke;
  v8[3] = &unk_1E815C878;
  v9 = symbolsCopy;
  selfCopy = self;
  v7 = symbolsCopy;
  [Localize enumerateLocales:locales withBlock:v8];
}

void __50__CalculateTokenizer_addLocalizedSymbols_locales___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  if (([v6 isEqualToString:@"en"] & 1) == 0)
  {
    v19 = v7;
    v20 = v6;
    v21 = v5;
    v8 = [Localize localizedStringsForTable:@"LocalizableMath" localization:v6];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v23;
      do
      {
        v12 = 0;
        do
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v22 + 1) + 8 * v12);
          if (v13 && [*(*(&v22 + 1) + 8 * v12) length])
          {
            v14 = [v8 objectForKeyedSubscript:v13];
            v15 = v14;
            if (v14 && [v14 length])
            {
              if ([v13 isEqualToString:@"π"])
              {
                v16 = 37;
              }

              else if ([v13 isEqualToString:@"𝑒"])
              {
                v16 = 38;
              }

              else
              {
                v16 = 35;
              }

              v17 = objc_opt_class();
              v26 = v15;
              v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
              [v17 _addSymbols:v18 normalized:v13 tokenType:v16 isLaTeX:0 trie:*(a1 + 32)];
            }
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v10);
    }

    v6 = v20;
    v5 = v21;
    v7 = v19;
  }

  objc_autoreleasePoolPop(v7);
}

+ (id)localizedSymbolsTrie:(id)trie
{
  trieCopy = trie;
  if (localizedSymbolsTrie__onceToken != -1)
  {
    dispatch_once(&localizedSymbolsTrie__onceToken, &__block_literal_global_164);
  }

  v4 = [Localize keyForLocales:trieCopy];
  [localizedSymbolsTrie__lock lock];
  v5 = [localizedSymbolsTrie__tries objectForKey:v4];
  if (!v5)
  {
    v5 = objc_opt_new();
    [CalculateTokenizer addSymbols:v5];
    [CalculateTokenizer addLocalizedSymbols:v5 locales:trieCopy];
    [localizedSymbolsTrie__tries setObject:v5 forKey:v4];
  }

  [localizedSymbolsTrie__lock unlock];
  v6 = v5;

  return v6;
}

uint64_t __43__CalculateTokenizer_localizedSymbolsTrie___block_invoke()
{
  v0 = objc_opt_new();
  v1 = localizedSymbolsTrie__lock;
  localizedSymbolsTrie__lock = v0;

  v2 = objc_opt_new();
  v3 = localizedSymbolsTrie__tries;
  localizedSymbolsTrie__tries = v2;

  v4 = localizedSymbolsTrie__tries;

  return [v4 setCountLimit:2];
}

+ (id)nonWhitespaceLanguageSet
{
  if (nonWhitespaceLanguageSet_onceToken != -1)
  {
    dispatch_once(&nonWhitespaceLanguageSet_onceToken, &__block_literal_global_161);
  }

  v3 = nonWhitespaceLanguageSet_nonWhitespaceLanguageSet;

  return v3;
}

void __46__CalculateTokenizer_nonWhitespaceLanguageSet__block_invoke()
{
  v0 = objc_opt_new();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__CalculateTokenizer_nonWhitespaceLanguageSet__block_invoke_2;
  aBlock[3] = &unk_1E815C850;
  v6 = v0;
  v1 = v0;
  v2 = _Block_copy(aBlock);
  v2[2](v2, 12288, 12543);
  v2[2](v2, 65280, 65519);
  v2[2](v2, 19968, 40879);
  v2[2](v2, 3584, 3711);
  v3 = [v1 copy];
  v4 = nonWhitespaceLanguageSet_nonWhitespaceLanguageSet;
  nonWhitespaceLanguageSet_nonWhitespaceLanguageSet = v3;
}

+ (id)punctuationSet
{
  [self loadPunctuationSet];
  v2 = punctuationSet;

  return v2;
}

+ (id)symbolSet
{
  [self loadSymbolSet];
  v2 = symbolSet;

  return v2;
}

@end