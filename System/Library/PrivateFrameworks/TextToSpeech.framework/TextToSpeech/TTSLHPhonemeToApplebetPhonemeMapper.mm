@interface TTSLHPhonemeToApplebetPhonemeMapper
+ (id)_initializeRules;
+ (id)_leftRaisingContextRule;
+ (id)_phonemeArray:(id)array;
+ (id)_phonemeRules;
+ (id)_phonoMatch:(id)match match:(id)a4 matchpos:(int)matchpos count:(int)count;
+ (id)_phonoTranslation:(id)translation;
+ (id)_retrieveRegularExpression:(id)expression;
+ (id)_rightRaisingContextRule;
+ (id)_uberLeftRaisingContextRule;
+ (id)_uberRightRaisingContextRule;
+ (id)_uberUberRightRaisingContextRule;
+ (id)_uberUberUberRightRaisingContextRule;
+ (id)convertLHToApplebet:(id)applebet;
@end

@implementation TTSLHPhonemeToApplebetPhonemeMapper

+ (id)_retrieveRegularExpression:(id)expression
{
  expressionCopy = expression;
  if (qword_1EB391090 != -1)
  {
    sub_1A957910C();
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1A935C5D8;
  v20 = sub_1A935C5E8;
  v21 = 0;
  v13[1] = MEMORY[0x1E69E9820];
  v13[2] = 3221225472;
  v13[3] = sub_1A935C5F0;
  v13[4] = &unk_1E7880B80;
  v15 = &v16;
  v4 = expressionCopy;
  v14 = v4;
  AX_PERFORM_WITH_LOCK();
  v5 = v17[5];
  if (!v5)
  {
    v13[0] = 0;
    v6 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:v4 options:0 error:v13];
    v7 = v13[0];
    v8 = v17[5];
    v17[5] = v6;

    if (v7)
    {
      v9 = AXTTSLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1A9579120(v7, v9);
      }
    }

    else
    {
      v12 = v4;
      AX_PERFORM_WITH_LOCK();
      v9 = v12;
    }

    v5 = v17[5];
  }

  v10 = v5;

  _Block_object_dispose(&v16, 8);

  return v10;
}

+ (id)_phonoMatch:(id)match match:(id)a4 matchpos:(int)matchpos count:(int)count
{
  LODWORD(v6) = matchpos;
  v29 = *MEMORY[0x1E69E9840];
  matchCopy = match;
  v21 = a4;
  array = [MEMORY[0x1E695DF70] array];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v21;
  v10 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = *v25;
    while (2)
    {
      v12 = 0;
      v6 = v6;
      do
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v24 + 1) + 8 * v12);
        v14 = [matchCopy objectAtIndexedSubscript:v6];
        phoneme = [v14 phoneme];

        v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"^%@\\d?$", v13];
        v17 = [self _retrieveRegularExpression:v16];

        v18 = [v17 firstMatchInString:phoneme options:0 range:{0, objc_msgSend(phoneme, "length")}];
        if (([v13 isEqualToString:@"()"] & 1) == 0 && (!v18 || objc_msgSend(v18, "range") == 0x7FFFFFFFFFFFFFFFLL))
        {

          v19 = 0;
          goto LABEL_13;
        }

        [array addObject:phoneme];

        ++v12;
        ++v6;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v19 = array;
LABEL_13:

  return v19;
}

+ (id)_phonemeArray:(id)array
{
  v28 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v4 = [arrayCopy mutableCopy];
  array = [MEMORY[0x1E695DF70] array];
LABEL_2:
  if ([v4 length])
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v5 = [&unk_1F1D0F8A0 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v5)
    {
      v6 = *v24;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v24 != v6)
          {
            objc_enumerationMutation(&unk_1F1D0F8A0);
          }

          v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"^%@", *(*(&v23 + 1) + 8 * i)];
          v9 = [self _retrieveRegularExpression:v8];

          v10 = [v9 firstMatchInString:v4 options:0 range:{0, objc_msgSend(v4, "length")}];
          v11 = v10;
          if (v10)
          {
            range = [v10 range];
            v14 = [v4 substringWithRange:{range, v13}];
            v15 = [TTSApplebetMapperPhonemeInfo alloc];
            v16 = [(TTSApplebetMapperPhonemeInfo *)v15 init];

            [(TTSApplebetMapperPhonemeInfo *)v16 setStartTime:&unk_1F1D0F828];
            [(TTSApplebetMapperPhonemeInfo *)v16 setEndTime:&unk_1F1D0F828];
            [(TTSApplebetMapperPhonemeInfo *)v16 setPhoneme:v14];
            [array addObject:v16];
            range2 = [v11 range];
            [v4 replaceCharactersInRange:range2 withString:{v18, &stru_1F1CFF8D8}];

            goto LABEL_2;
          }
        }

        v5 = [&unk_1F1D0F8A0 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v19 = array;
  }

  else
  {
    v19 = array;
    v5 = array;
  }

  return v5;
}

+ (id)_phonemeRules
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A935CCDC;
  block[3] = &unk_1E7880300;
  block[4] = self;
  if (qword_1EB3910A8 != -1)
  {
    dispatch_once(&qword_1EB3910A8, block);
  }

  v2 = qword_1EB3910A0;

  return v2;
}

+ (id)_rightRaisingContextRule
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"^%@", @"((t)|(d)|(n)|(T)|(D)|(s)|(z)|(S)|(Z)|(t&S)|(d&Z)|(j)|(i)|(I))"];
  v4 = [self _retrieveRegularExpression:v3];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1A935CE34;
  aBlock[3] = &unk_1E7880BC8;
  v10 = v4;
  v5 = v4;
  v6 = _Block_copy(aBlock);
  v7 = _Block_copy(v6);

  return v7;
}

+ (id)_uberRightRaisingContextRule
{
  v3 = [self _retrieveRegularExpression:@"[h.']"];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"^%@", @"((t)|(d)|(n)|(T)|(D)|(s)|(z)|(S)|(Z)|(t&S)|(d&Z)|(j)|(i)|(I))"];
  v5 = [self _retrieveRegularExpression:v4];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1A935D05C;
  aBlock[3] = &unk_1E7880BF0;
  v12 = v3;
  v13 = v5;
  v6 = v5;
  v7 = v3;
  v8 = _Block_copy(aBlock);
  v9 = _Block_copy(v8);

  return v9;
}

+ (id)_uberUberRightRaisingContextRule
{
  v3 = [self _retrieveRegularExpression:@"['h]"];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"^%@$", @"((t)|(d)|(n)|(T)|(D)|(s)|(z)|(S)|(Z)|(t&S)|(d&Z)|(j)|(i)|(I))"];
  v5 = [self _retrieveRegularExpression:v4];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1A935D328;
  aBlock[3] = &unk_1E7880BF0;
  v12 = v3;
  v13 = v5;
  v6 = v5;
  v7 = v3;
  v8 = _Block_copy(aBlock);
  v9 = _Block_copy(v8);

  return v9;
}

+ (id)_uberUberUberRightRaisingContextRule
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"^%@$", @"((t)|(d)|(n)|(T)|(D)|(s)|(z)|(S)|(Z)|(t&S)|(d&Z)|(j)|(i)|(I))"];
  v4 = [self _retrieveRegularExpression:v3];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1A935D5C0;
  aBlock[3] = &unk_1E7880BC8;
  v10 = v4;
  v5 = v4;
  v6 = _Block_copy(aBlock);
  v7 = _Block_copy(v6);

  return v7;
}

+ (id)_leftRaisingContextRule
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"^%@$", @"((i)|(I)|(e&I)|(a&I)|(O&I)|(n)|(j)|(s)|(z))"];
  v4 = [self _retrieveRegularExpression:v3];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1A935D7B4;
  aBlock[3] = &unk_1E7880BC8;
  v10 = v4;
  v5 = v4;
  v6 = _Block_copy(aBlock);
  v7 = _Block_copy(v6);

  return v7;
}

+ (id)_uberLeftRaisingContextRule
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"^%@$", @"((i)|(I)|(e&I)|(a&I)|(O&I)|(n)|(j)|(s)|(z))"];
  v4 = [self _retrieveRegularExpression:v3];

  v5 = [self _retrieveRegularExpression:@"[.]"];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1A935D9DC;
  aBlock[3] = &unk_1E7880BF0;
  v12 = v4;
  v13 = v5;
  v6 = v5;
  v7 = v4;
  v8 = _Block_copy(aBlock);
  v9 = _Block_copy(v8);

  return v9;
}

+ (id)_initializeRules
{
  v3 = MEMORY[0x1E695E0F0];
  v221[70] = *MEMORY[0x1E69E9840];
  v220[0] = MEMORY[0x1E695E0F0];
  v220[1] = &unk_1F1D0F8B8;
  v220[2] = MEMORY[0x1E695E0F0];
  _acceptRule = [self _acceptRule];
  v220[3] = _acceptRule;
  v220[4] = &unk_1F1D0F8D0;
  v149 = [MEMORY[0x1E695DEC8] arrayWithObjects:v220 count:5];
  v221[0] = v149;
  v219[0] = v3;
  v219[1] = &unk_1F1D0F8E8;
  v219[2] = v3;
  _acceptRule2 = [self _acceptRule];
  v219[3] = _acceptRule2;
  v219[4] = &unk_1F1D0F900;
  v147 = [MEMORY[0x1E695DEC8] arrayWithObjects:v219 count:5];
  v221[1] = v147;
  v218[0] = v3;
  v218[1] = &unk_1F1D0F918;
  v218[2] = v3;
  _acceptRule3 = [self _acceptRule];
  v218[3] = _acceptRule3;
  v218[4] = &unk_1F1D0F930;
  v145 = [MEMORY[0x1E695DEC8] arrayWithObjects:v218 count:5];
  v221[2] = v145;
  v217[0] = v3;
  v217[1] = &unk_1F1D0F948;
  v217[2] = v3;
  _acceptRule4 = [self _acceptRule];
  v217[3] = _acceptRule4;
  v217[4] = &unk_1F1D0F960;
  v143 = [MEMORY[0x1E695DEC8] arrayWithObjects:v217 count:5];
  v221[3] = v143;
  v216[0] = v3;
  v216[1] = &unk_1F1D0F978;
  v216[2] = v3;
  _acceptRule5 = [self _acceptRule];
  v216[3] = _acceptRule5;
  v216[4] = &unk_1F1D0F990;
  v141 = [MEMORY[0x1E695DEC8] arrayWithObjects:v216 count:5];
  v221[4] = v141;
  v215[0] = v3;
  v215[1] = &unk_1F1D0F9A8;
  v215[2] = v3;
  _acceptRule6 = [self _acceptRule];
  v215[3] = _acceptRule6;
  v215[4] = &unk_1F1D0F9C0;
  v139 = [MEMORY[0x1E695DEC8] arrayWithObjects:v215 count:5];
  v221[5] = v139;
  v214[0] = v3;
  v214[1] = &unk_1F1D0F9D8;
  v214[2] = v3;
  _acceptRule7 = [self _acceptRule];
  v214[3] = _acceptRule7;
  v214[4] = &unk_1F1D0F9F0;
  v137 = [MEMORY[0x1E695DEC8] arrayWithObjects:v214 count:5];
  v221[6] = v137;
  v213[0] = v3;
  v213[1] = &unk_1F1D0FA08;
  v213[2] = v3;
  _acceptRule8 = [self _acceptRule];
  v213[3] = _acceptRule8;
  v213[4] = &unk_1F1D0FA20;
  v135 = [MEMORY[0x1E695DEC8] arrayWithObjects:v213 count:5];
  v221[7] = v135;
  v212[0] = v3;
  v212[1] = &unk_1F1D0FA38;
  v212[2] = v3;
  _acceptRule9 = [self _acceptRule];
  v212[3] = _acceptRule9;
  v212[4] = &unk_1F1D0FA50;
  v133 = [MEMORY[0x1E695DEC8] arrayWithObjects:v212 count:5];
  v221[8] = v133;
  v211[0] = v3;
  v211[1] = &unk_1F1D0FA68;
  v211[2] = &unk_1F1D0FA80;
  _acceptRule10 = [self _acceptRule];
  v211[3] = _acceptRule10;
  v211[4] = &unk_1F1D0FA98;
  v131 = [MEMORY[0x1E695DEC8] arrayWithObjects:v211 count:5];
  v221[9] = v131;
  v210[0] = v3;
  v210[1] = &unk_1F1D0FAB0;
  v210[2] = &unk_1F1D0FAC8;
  _acceptRule11 = [self _acceptRule];
  v210[3] = _acceptRule11;
  v210[4] = &unk_1F1D0FAE0;
  v129 = [MEMORY[0x1E695DEC8] arrayWithObjects:v210 count:5];
  v221[10] = v129;
  v209[0] = v3;
  v209[1] = &unk_1F1D0FAF8;
  v209[2] = &unk_1F1D0FB10;
  _acceptRule12 = [self _acceptRule];
  v209[3] = _acceptRule12;
  v209[4] = &unk_1F1D0FB28;
  v127 = [MEMORY[0x1E695DEC8] arrayWithObjects:v209 count:5];
  v221[11] = v127;
  v208[0] = v3;
  v208[1] = &unk_1F1D0FB40;
  v208[2] = &unk_1F1D0FB58;
  _acceptRule13 = [self _acceptRule];
  v208[3] = _acceptRule13;
  v208[4] = &unk_1F1D0FB70;
  v125 = [MEMORY[0x1E695DEC8] arrayWithObjects:v208 count:5];
  v221[12] = v125;
  v207[0] = v3;
  v207[1] = &unk_1F1D0FB88;
  v207[2] = &unk_1F1D0FBA0;
  _acceptRule14 = [self _acceptRule];
  v207[3] = _acceptRule14;
  v207[4] = &unk_1F1D0FBB8;
  v123 = [MEMORY[0x1E695DEC8] arrayWithObjects:v207 count:5];
  v221[13] = v123;
  v206[0] = v3;
  v206[1] = &unk_1F1D0FBD0;
  v206[2] = v3;
  _acceptRule15 = [self _acceptRule];
  v206[3] = _acceptRule15;
  v206[4] = &unk_1F1D0FBE8;
  v121 = [MEMORY[0x1E695DEC8] arrayWithObjects:v206 count:5];
  v221[14] = v121;
  v205[0] = v3;
  v205[1] = &unk_1F1D0FC00;
  v205[2] = &unk_1F1D0FC18;
  _acceptRule16 = [self _acceptRule];
  v205[3] = _acceptRule16;
  v205[4] = &unk_1F1D0FC30;
  v119 = [MEMORY[0x1E695DEC8] arrayWithObjects:v205 count:5];
  v221[15] = v119;
  v204[0] = v3;
  v204[1] = &unk_1F1D0FC48;
  v204[2] = &unk_1F1D0FC60;
  _rightRaisingContextRule = [self _rightRaisingContextRule];
  v204[3] = _rightRaisingContextRule;
  v204[4] = &unk_1F1D0FC78;
  v117 = [MEMORY[0x1E695DEC8] arrayWithObjects:v204 count:5];
  v221[16] = v117;
  v203[0] = v3;
  v203[1] = &unk_1F1D0FC90;
  v203[2] = &unk_1F1D0FCA8;
  _uberRightRaisingContextRule = [self _uberRightRaisingContextRule];
  v203[3] = _uberRightRaisingContextRule;
  v203[4] = &unk_1F1D0FCC0;
  v115 = [MEMORY[0x1E695DEC8] arrayWithObjects:v203 count:5];
  v221[17] = v115;
  v202[0] = v3;
  v202[1] = &unk_1F1D0FCD8;
  v202[2] = &unk_1F1D0FCF0;
  _uberUberRightRaisingContextRule = [self _uberUberRightRaisingContextRule];
  v202[3] = _uberUberRightRaisingContextRule;
  v202[4] = &unk_1F1D0FD08;
  v113 = [MEMORY[0x1E695DEC8] arrayWithObjects:v202 count:5];
  v221[18] = v113;
  v201[0] = v3;
  v201[1] = &unk_1F1D0FD20;
  v201[2] = &unk_1F1D0FD38;
  _uberUberUberRightRaisingContextRule = [self _uberUberUberRightRaisingContextRule];
  v201[3] = _uberUberUberRightRaisingContextRule;
  v201[4] = &unk_1F1D0FD50;
  v111 = [MEMORY[0x1E695DEC8] arrayWithObjects:v201 count:5];
  v221[19] = v111;
  v200[0] = &unk_1F1D0FD68;
  v200[1] = &unk_1F1D0FD80;
  v200[2] = &unk_1F1D0FD98;
  _leftRaisingContextRule = [self _leftRaisingContextRule];
  v200[3] = _leftRaisingContextRule;
  v200[4] = &unk_1F1D0FDB0;
  v109 = [MEMORY[0x1E695DEC8] arrayWithObjects:v200 count:5];
  v221[20] = v109;
  v199[0] = &unk_1F1D0FDC8;
  v199[1] = &unk_1F1D0FDE0;
  v199[2] = &unk_1F1D0FDF8;
  _uberLeftRaisingContextRule = [self _uberLeftRaisingContextRule];
  v199[3] = _uberLeftRaisingContextRule;
  v199[4] = &unk_1F1D0FE10;
  v107 = [MEMORY[0x1E695DEC8] arrayWithObjects:v199 count:5];
  v221[21] = v107;
  v198[0] = v3;
  v198[1] = &unk_1F1D0FE28;
  v198[2] = v3;
  _acceptRule17 = [self _acceptRule];
  v198[3] = _acceptRule17;
  v198[4] = &unk_1F1D0FE40;
  v105 = [MEMORY[0x1E695DEC8] arrayWithObjects:v198 count:5];
  v221[22] = v105;
  v197[0] = v3;
  v197[1] = &unk_1F1D0FE58;
  v197[2] = v3;
  _acceptRule18 = [self _acceptRule];
  v197[3] = _acceptRule18;
  v197[4] = &unk_1F1D0FE70;
  v103 = [MEMORY[0x1E695DEC8] arrayWithObjects:v197 count:5];
  v221[23] = v103;
  v196[0] = v3;
  v196[1] = &unk_1F1D0FE88;
  v196[2] = v3;
  _acceptRule19 = [self _acceptRule];
  v196[3] = _acceptRule19;
  v196[4] = &unk_1F1D0FEA0;
  v101 = [MEMORY[0x1E695DEC8] arrayWithObjects:v196 count:5];
  v221[24] = v101;
  v195[0] = v3;
  v195[1] = &unk_1F1D0FEB8;
  v195[2] = v3;
  _acceptRule20 = [self _acceptRule];
  v195[3] = _acceptRule20;
  v195[4] = &unk_1F1D0FED0;
  v99 = [MEMORY[0x1E695DEC8] arrayWithObjects:v195 count:5];
  v221[25] = v99;
  v194[0] = v3;
  v194[1] = &unk_1F1D0FEE8;
  v194[2] = v3;
  _acceptRule21 = [self _acceptRule];
  v194[3] = _acceptRule21;
  v194[4] = &unk_1F1D0FF00;
  v97 = [MEMORY[0x1E695DEC8] arrayWithObjects:v194 count:5];
  v221[26] = v97;
  v193[0] = v3;
  v193[1] = &unk_1F1D0FF18;
  null = [MEMORY[0x1E695DFB0] null];
  v193[2] = null;
  _acceptRule22 = [self _acceptRule];
  v193[3] = _acceptRule22;
  v193[4] = &unk_1F1D0FF30;
  v94 = [MEMORY[0x1E695DEC8] arrayWithObjects:v193 count:5];
  v221[27] = v94;
  v192[0] = v3;
  v192[1] = &unk_1F1D0FF48;
  null2 = [MEMORY[0x1E695DFB0] null];
  v192[2] = null2;
  _acceptRule23 = [self _acceptRule];
  v192[3] = _acceptRule23;
  v192[4] = &unk_1F1D0FF60;
  v91 = [MEMORY[0x1E695DEC8] arrayWithObjects:v192 count:5];
  v221[28] = v91;
  v191[0] = v3;
  v191[1] = &unk_1F1D0FF78;
  null3 = [MEMORY[0x1E695DFB0] null];
  v191[2] = null3;
  _acceptRule24 = [self _acceptRule];
  v191[3] = _acceptRule24;
  v191[4] = &unk_1F1D0FF90;
  v88 = [MEMORY[0x1E695DEC8] arrayWithObjects:v191 count:5];
  v221[29] = v88;
  v190[0] = v3;
  v190[1] = &unk_1F1D0FFA8;
  null4 = [MEMORY[0x1E695DFB0] null];
  v190[2] = null4;
  _acceptRule25 = [self _acceptRule];
  v190[3] = _acceptRule25;
  v190[4] = &unk_1F1D0FFC0;
  v85 = [MEMORY[0x1E695DEC8] arrayWithObjects:v190 count:5];
  v221[30] = v85;
  v189[0] = v3;
  v189[1] = &unk_1F1D0FFD8;
  v189[2] = v3;
  _acceptRule26 = [self _acceptRule];
  v189[3] = _acceptRule26;
  v189[4] = &unk_1F1D0FFF0;
  v83 = [MEMORY[0x1E695DEC8] arrayWithObjects:v189 count:5];
  v221[31] = v83;
  v188[0] = v3;
  v188[1] = &unk_1F1D10008;
  v188[2] = v3;
  _acceptRule27 = [self _acceptRule];
  v188[3] = _acceptRule27;
  v188[4] = &unk_1F1D10020;
  v81 = [MEMORY[0x1E695DEC8] arrayWithObjects:v188 count:5];
  v221[32] = v81;
  v187[0] = v3;
  v187[1] = &unk_1F1D10038;
  v187[2] = v3;
  _acceptRule28 = [self _acceptRule];
  v187[3] = _acceptRule28;
  v187[4] = &unk_1F1D10050;
  v79 = [MEMORY[0x1E695DEC8] arrayWithObjects:v187 count:5];
  v221[33] = v79;
  v186[0] = v3;
  v186[1] = &unk_1F1D10068;
  v186[2] = v3;
  _acceptRule29 = [self _acceptRule];
  v186[3] = _acceptRule29;
  v186[4] = &unk_1F1D10080;
  v77 = [MEMORY[0x1E695DEC8] arrayWithObjects:v186 count:5];
  v221[34] = v77;
  v185[0] = v3;
  v185[1] = &unk_1F1D10098;
  v185[2] = v3;
  _acceptRule30 = [self _acceptRule];
  v185[3] = _acceptRule30;
  v185[4] = &unk_1F1D100B0;
  v75 = [MEMORY[0x1E695DEC8] arrayWithObjects:v185 count:5];
  v221[35] = v75;
  v184[0] = v3;
  v184[1] = &unk_1F1D100C8;
  v184[2] = v3;
  _acceptRule31 = [self _acceptRule];
  v184[3] = _acceptRule31;
  v184[4] = &unk_1F1D100E0;
  v73 = [MEMORY[0x1E695DEC8] arrayWithObjects:v184 count:5];
  v221[36] = v73;
  v183[0] = v3;
  v183[1] = &unk_1F1D100F8;
  v183[2] = v3;
  _acceptRule32 = [self _acceptRule];
  v183[3] = _acceptRule32;
  v183[4] = &unk_1F1D10110;
  v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:v183 count:5];
  v221[37] = v71;
  v182[0] = v3;
  v182[1] = &unk_1F1D10128;
  v182[2] = v3;
  _acceptRule33 = [self _acceptRule];
  v182[3] = _acceptRule33;
  v182[4] = &unk_1F1D10140;
  v69 = [MEMORY[0x1E695DEC8] arrayWithObjects:v182 count:5];
  v221[38] = v69;
  v181[0] = v3;
  v181[1] = &unk_1F1D10158;
  v181[2] = v3;
  _acceptRule34 = [self _acceptRule];
  v181[3] = _acceptRule34;
  v181[4] = &unk_1F1D10170;
  v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:v181 count:5];
  v221[39] = v67;
  v180[0] = v3;
  v180[1] = &unk_1F1D10188;
  v180[2] = v3;
  _acceptRule35 = [self _acceptRule];
  v180[3] = _acceptRule35;
  v180[4] = &unk_1F1D101A0;
  v65 = [MEMORY[0x1E695DEC8] arrayWithObjects:v180 count:5];
  v221[40] = v65;
  v179[0] = v3;
  v179[1] = &unk_1F1D101B8;
  v179[2] = v3;
  _acceptRule36 = [self _acceptRule];
  v179[3] = _acceptRule36;
  v179[4] = &unk_1F1D101D0;
  v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:v179 count:5];
  v221[41] = v63;
  v178[0] = v3;
  v178[1] = &unk_1F1D101E8;
  v178[2] = v3;
  _acceptRule37 = [self _acceptRule];
  v178[3] = _acceptRule37;
  v178[4] = &unk_1F1D10200;
  v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:v178 count:5];
  v221[42] = v61;
  v177[0] = v3;
  v177[1] = &unk_1F1D10218;
  v177[2] = v3;
  _acceptRule38 = [self _acceptRule];
  v177[3] = _acceptRule38;
  v177[4] = &unk_1F1D10230;
  v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:v177 count:5];
  v221[43] = v59;
  v176[0] = v3;
  v176[1] = &unk_1F1D10248;
  v176[2] = v3;
  _acceptRule39 = [self _acceptRule];
  v176[3] = _acceptRule39;
  v176[4] = &unk_1F1D10260;
  v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:v176 count:5];
  v221[44] = v57;
  v175[0] = v3;
  v175[1] = &unk_1F1D10278;
  v175[2] = v3;
  _acceptRule40 = [self _acceptRule];
  v175[3] = _acceptRule40;
  v175[4] = &unk_1F1D10290;
  v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:v175 count:5];
  v221[45] = v55;
  v174[0] = v3;
  v174[1] = &unk_1F1D102A8;
  v174[2] = v3;
  _acceptRule41 = [self _acceptRule];
  v174[3] = _acceptRule41;
  v174[4] = &unk_1F1D102C0;
  v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:v174 count:5];
  v221[46] = v53;
  v173[0] = v3;
  v173[1] = &unk_1F1D102D8;
  v173[2] = v3;
  _acceptRule42 = [self _acceptRule];
  v173[3] = _acceptRule42;
  v173[4] = &unk_1F1D102F0;
  v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v173 count:5];
  v221[47] = v51;
  v172[0] = v3;
  v172[1] = &unk_1F1D10308;
  v172[2] = v3;
  _acceptRule43 = [self _acceptRule];
  v172[3] = _acceptRule43;
  v172[4] = &unk_1F1D10320;
  v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v172 count:5];
  v221[48] = v49;
  v171[0] = v3;
  v171[1] = &unk_1F1D10338;
  v171[2] = v3;
  _acceptRule44 = [self _acceptRule];
  v171[3] = _acceptRule44;
  v171[4] = &unk_1F1D10350;
  v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v171 count:5];
  v221[49] = v47;
  v170[0] = v3;
  v170[1] = &unk_1F1D10368;
  v170[2] = v3;
  _acceptRule45 = [self _acceptRule];
  v170[3] = _acceptRule45;
  v170[4] = &unk_1F1D10380;
  v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v170 count:5];
  v221[50] = v45;
  v169[0] = v3;
  v169[1] = &unk_1F1D10398;
  v169[2] = v3;
  _acceptRule46 = [self _acceptRule];
  v169[3] = _acceptRule46;
  v169[4] = &unk_1F1D103B0;
  v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v169 count:5];
  v221[51] = v43;
  v168[0] = v3;
  v168[1] = &unk_1F1D103C8;
  v168[2] = v3;
  _acceptRule47 = [self _acceptRule];
  v168[3] = _acceptRule47;
  v168[4] = &unk_1F1D103E0;
  v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v168 count:5];
  v221[52] = v41;
  v167[0] = v3;
  v167[1] = &unk_1F1D103F8;
  v167[2] = v3;
  _acceptRule48 = [self _acceptRule];
  v167[3] = _acceptRule48;
  v167[4] = &unk_1F1D10410;
  v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v167 count:5];
  v221[53] = v39;
  v166[0] = v3;
  v166[1] = &unk_1F1D10428;
  v166[2] = v3;
  _acceptRule49 = [self _acceptRule];
  v166[3] = _acceptRule49;
  v166[4] = &unk_1F1D10440;
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v166 count:5];
  v221[54] = v37;
  v165[0] = v3;
  v165[1] = &unk_1F1D10458;
  v165[2] = v3;
  _acceptRule50 = [self _acceptRule];
  v165[3] = _acceptRule50;
  v165[4] = &unk_1F1D10470;
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v165 count:5];
  v221[55] = v35;
  v164[0] = v3;
  v164[1] = &unk_1F1D10488;
  v164[2] = v3;
  _acceptRule51 = [self _acceptRule];
  v164[3] = _acceptRule51;
  v164[4] = &unk_1F1D104A0;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v164 count:5];
  v221[56] = v33;
  v163[0] = v3;
  v163[1] = &unk_1F1D104B8;
  v163[2] = v3;
  _acceptRule52 = [self _acceptRule];
  v163[3] = _acceptRule52;
  v163[4] = &unk_1F1D104D0;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v163 count:5];
  v221[57] = v31;
  v162[0] = v3;
  v162[1] = &unk_1F1D104E8;
  v162[2] = v3;
  _acceptRule53 = [self _acceptRule];
  v162[3] = _acceptRule53;
  v162[4] = &unk_1F1D10500;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v162 count:5];
  v221[58] = v29;
  v161[0] = v3;
  v161[1] = &unk_1F1D10518;
  v161[2] = v3;
  _acceptRule54 = [self _acceptRule];
  v161[3] = _acceptRule54;
  v161[4] = &unk_1F1D10530;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v161 count:5];
  v221[59] = v27;
  v160[0] = v3;
  v160[1] = &unk_1F1D10548;
  v160[2] = v3;
  _acceptRule55 = [self _acceptRule];
  v160[3] = _acceptRule55;
  v160[4] = &unk_1F1D10560;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v160 count:5];
  v221[60] = v25;
  v159[0] = v3;
  v159[1] = &unk_1F1D10578;
  v159[2] = v3;
  _acceptRule56 = [self _acceptRule];
  v159[3] = _acceptRule56;
  v159[4] = &unk_1F1D10590;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v159 count:5];
  v221[61] = v23;
  v158[0] = v3;
  v158[1] = &unk_1F1D105A8;
  v158[2] = v3;
  _acceptRule57 = [self _acceptRule];
  v158[3] = _acceptRule57;
  v158[4] = &unk_1F1D105C0;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v158 count:5];
  v221[62] = v21;
  v157[0] = v3;
  v157[1] = &unk_1F1D105D8;
  v157[2] = v3;
  _acceptRule58 = [self _acceptRule];
  v157[3] = _acceptRule58;
  v157[4] = &unk_1F1D105F0;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v157 count:5];
  v221[63] = v19;
  v156[0] = v3;
  v156[1] = &unk_1F1D10608;
  v156[2] = v3;
  _acceptRule59 = [self _acceptRule];
  v156[3] = _acceptRule59;
  v156[4] = &unk_1F1D10620;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v156 count:5];
  v221[64] = v17;
  v155[0] = v3;
  v155[1] = &unk_1F1D10638;
  v155[2] = v3;
  _acceptRule60 = [self _acceptRule];
  v155[3] = _acceptRule60;
  v155[4] = &unk_1F1D10650;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v155 count:5];
  v221[65] = v4;
  v154[0] = v3;
  v154[1] = &unk_1F1D10668;
  v154[2] = v3;
  _acceptRule61 = [self _acceptRule];
  v154[3] = _acceptRule61;
  v154[4] = &unk_1F1D10680;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v154 count:5];
  v221[66] = v6;
  v153[0] = v3;
  v153[1] = &unk_1F1D10698;
  v153[2] = v3;
  _acceptRule62 = [self _acceptRule];
  v153[3] = _acceptRule62;
  v153[4] = &unk_1F1D106B0;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v153 count:5];
  v221[67] = v8;
  v152[0] = v3;
  v152[1] = &unk_1F1D106C8;
  v152[2] = v3;
  _acceptRule63 = [self _acceptRule];
  v152[3] = _acceptRule63;
  v152[4] = &unk_1F1D106E0;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v152 count:5];
  v221[68] = v10;
  v151[0] = v3;
  v151[1] = &unk_1F1D106F8;
  v151[2] = v3;
  _acceptRule64 = [self _acceptRule];
  v151[3] = _acceptRule64;
  v151[4] = &unk_1F1D10710;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v151 count:5];
  v221[69] = v12;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v221 count:70];

  v13 = [v15 ax_mappedArrayUsingBlock:&unk_1F1CF01B8];

  return v13;
}

+ (id)_phonoTranslation:(id)translation
{
  v60 = *MEMORY[0x1E69E9840];
  translationCopy = translation;
  array = [MEMORY[0x1E695DF70] array];
  selfCopy = self;
  _phonemeRules = [self _phonemeRules];
  v53 = 0;
  while ([translationCopy count] > v53)
  {
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = _phonemeRules;
    v4 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
    if (!v4)
    {

      goto LABEL_43;
    }

    v5 = 0;
    v51 = v4;
    v52 = *v56;
    v54 = -1;
    do
    {
      for (i = 0; i != v51; ++i)
      {
        if (*v56 != v52)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v55 + 1) + 8 * i);
        left = [v7 left];
        match = [v7 match];
        right = [v7 right];
        matchRule = [v7 matchRule];
        substitution = [v7 substitution];
        objc_opt_class();
        ++v54;
        if (objc_opt_isKindOfClass())
        {
          if (v53 > 0)
          {
            goto LABEL_15;
          }
        }

        else if ([left count] > v53)
        {
          goto LABEL_15;
        }

        v13 = [translationCopy count];
        v14 = v13 - v53 - [match count];
        if (v14 < 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          if ([right count] > v14)
          {
LABEL_15:
            v15 = 1;
            goto LABEL_37;
          }
        }

        else if (v14)
        {
          goto LABEL_15;
        }

        v47 = [selfCopy _phonoMatch:translationCopy match:match matchpos:v53 count:v54];
        if (v47)
        {
          v45 = [selfCopy _phonoMatch:translationCopy match:left matchpos:v53 - objc_msgSend(left count:{"count"), v54}];
          if (v45)
          {
            v16 = [selfCopy _phonoMatch:translationCopy match:right matchpos:v53 + objc_msgSend(match count:{"count"), v54}];
            v44 = v16;
            if (v16 && ((matchRule)[2](matchRule, v45, v47, v16) & 1) != 0)
            {
              v17 = [translationCopy objectAtIndexedSubscript:v53];
              startTime = [v17 startTime];
              [startTime floatValue];
              v20 = v19;

              v21 = [translationCopy objectAtIndexedSubscript:{v53 + objc_msgSend(match, "count") - 1}];
              endTime = [v21 endTime];
              [endTime floatValue];
              v24 = v23;

              v25 = [match count];
              v26 = [substitution mutableCopy];
              v27 = v24 - v20;
              v53 = (v53 + v25);
              v28 = v24 - v20;
              while ([v26 count])
              {
                firstObject = [v26 firstObject];
                [v26 removeObjectAtIndex:0];
                if ([v26 count])
                {
                  firstObject2 = [v26 firstObject];
                  [firstObject2 floatValue];
                  v32 = v31;

                  [v26 removeObjectAtIndex:0];
                }

                else
                {
                  v32 = 0.0;
                }

                if ([v26 count])
                {
                  v33 = v27 * v32;
                }

                else
                {
                  v33 = v28;
                }

                v34 = [TTSApplebetMapperPhonemeInfo alloc];
                v35 = [(TTSApplebetMapperPhonemeInfo *)v34 init];

                *&v36 = v20;
                v37 = [MEMORY[0x1E696AD98] numberWithFloat:v36];
                [(TTSApplebetMapperPhonemeInfo *)v35 setStartTime:v37];

                v38 = v33 + 0.5;
                v20 = v20 + v38;
                *&v39 = v20;
                v40 = [MEMORY[0x1E696AD98] numberWithFloat:v39];
                [(TTSApplebetMapperPhonemeInfo *)v35 setEndTime:v40];

                [(TTSApplebetMapperPhonemeInfo *)v35 setPhoneme:firstObject];
                [array addObject:v35];

                v28 = v28 - v38;
              }

              v15 = 0;
              v5 = 1;
            }

            else
            {
              v15 = 1;
            }
          }

          else
          {
            v15 = 1;
          }
        }

        else
        {
          v15 = 1;
        }

LABEL_37:
        if ((v15 & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v51 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
    }

    while (v51);
LABEL_40:

    if ((v5 & 1) == 0)
    {
LABEL_43:
      v41 = [translationCopy objectAtIndexedSubscript:v53];
      [array addObject:v41];

      v53 = (v53 + 1);
    }
  }

  return array;
}

+ (id)convertLHToApplebet:(id)applebet
{
  v42[1] = *MEMORY[0x1E69E9840];
  applebetCopy = applebet;
  v34 = [self _phonemeArray:?];
  if ([v34 count])
  {
    v5 = [self _phonoTranslation:v34];
    v6 = [v5 count];
    v7 = v6;
    if (v6 >= 1)
    {
      v32 = a2;
      v8 = 0;
      v35 = v6 & 0x7FFFFFFF;
      do
      {
        v9 = [v5 objectAtIndexedSubscript:v8];
        phoneme = [v9 phoneme];

        if ([phoneme isEqualToString:@"1"] & 1) != 0 || (objc_msgSend(phoneme, "isEqualToString:", @"2"))
        {
          v10 = v8 + 1;
          if (v8 + 1 >= v7)
          {
            LODWORD(v11) = v8 + 1;
          }

          else
          {
            v11 = v10;
            while (1)
            {
              v12 = [v5 objectAtIndexedSubscript:v11];
              phoneme2 = [v12 phoneme];

              v14 = [self _retrieveRegularExpression:@"((AE)|(EY)|(AO)|(AX)|(IY)|(EH)|(IH)|(AY)|(IX)|(AA)|(UW)|(UH)|(UX)|(OW)|(AW)|(OY))"];
              v15 = [v14 firstMatchInString:phoneme2 options:0 range:{0, objc_msgSend(phoneme2, "length")}];
              v16 = v15;
              if (v15)
              {
                if ([v15 range] != 0x7FFFFFFFFFFFFFFFLL)
                {
                  break;
                }
              }

              if (++v11 >= v7)
              {
                goto LABEL_15;
              }
            }
          }

LABEL_15:
          array = [MEMORY[0x1E695DF70] array];
          if (v8)
          {
            v18 = [v5 subarrayWithRange:{0, v8}];
          }

          else
          {
            v18 = MEMORY[0x1E695E0F0];
          }

          if (v11 + ~v8 < 1)
          {
            v19 = MEMORY[0x1E695E0F0];
          }

          else
          {
            v19 = [v5 subarrayWithRange:v8 + 1];
          }

          v20 = [v5 objectAtIndex:v8];
          v42[0] = v20;
          v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:1];

          v22 = [v5 subarrayWithRange:{v11, v7 - v11}];
          [array addObjectsFromArray:v18];
          [array addObjectsFromArray:v19];
          [array addObjectsFromArray:v21];
          [array addObjectsFromArray:v22];
          v23 = [v5 count];
          if (v23 != [array count])
          {
            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler handleFailureInMethod:v32 object:self file:@"TTSLHPhonemeToApplebetPhonemeMapper.mm" lineNumber:680 description:@"updated phonemes and xlatedPhonemesArray"];
          }

          v8 = v10;
          v5 = array;
        }

        else
        {
          ++v8;
        }
      }

      while (v8 != v35);
    }

    string = [MEMORY[0x1E696AD60] string];
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v26 = v5;
    v27 = [v26 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v27)
    {
      v28 = *v38;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v38 != v28)
          {
            objc_enumerationMutation(v26);
          }

          phoneme3 = [*(*(&v37 + 1) + 8 * i) phoneme];
          [string appendString:phoneme3];
        }

        v27 = [v26 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v27);
    }
  }

  else
  {
    string = applebetCopy;
  }

  return string;
}

@end