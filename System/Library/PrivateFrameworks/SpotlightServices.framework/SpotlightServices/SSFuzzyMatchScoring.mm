@interface SSFuzzyMatchScoring
+ (BOOL)patternCanMatch:(id)match pattern:(id)pattern;
+ (id)fuzzymatch:(id)fuzzymatch pattern:(id)pattern;
+ (id)stringToUint32Array:(id)array;
+ (int)bonusFor:(int)for charClass:(int)class;
+ (int)charClass:(unsigned int)class;
@end

@implementation SSFuzzyMatchScoring

+ (int)charClass:(unsigned int)class
{
  if (class == 9608)
  {
    return 3;
  }

  if (u_islower(class))
  {
    return 3;
  }

  if (u_isupper(class))
  {
    return 4;
  }

  if (u_isspace(class))
  {
    return 0;
  }

  if (u_ispunct(class))
  {
    return 2;
  }

  if (u_isdigit(class))
  {
    return 5;
  }

  return 1;
}

+ (int)bonusFor:(int)for charClass:(int)class
{
  if (class < 2)
  {
    goto LABEL_9;
  }

  if (for < 3)
  {
    return dword_1DA0D5404[for];
  }

  if (for == 3 && class == 4 || for != 5 && class == 5)
  {
    return 7;
  }

LABEL_9:
  if (class)
  {
    v5 = 0;
  }

  else
  {
    v5 = 10;
  }

  if (class == 1)
  {
    return 8;
  }

  else
  {
    return v5;
  }
}

+ (BOOL)patternCanMatch:(id)match pattern:(id)pattern
{
  matchCopy = match;
  patternCopy = pattern;
  if (objc_msgSend_count(matchCopy) && objc_msgSend_count(patternCopy))
  {
    if (!objc_msgSend_count(patternCopy))
    {
      v13 = 1;
      goto LABEL_11;
    }

    v7 = 0;
    v8 = 0;
    while (v8 < objc_msgSend_count(matchCopy))
    {
      v9 = [matchCopy objectAtIndexedSubscript:v8];
      unsignedIntValue = [v9 unsignedIntValue];

      v11 = [patternCopy objectAtIndexedSubscript:v7];
      unsignedIntValue2 = [v11 unsignedIntValue];

      ++v8;
      if (unsignedIntValue != -1 && unsignedIntValue == unsignedIntValue2)
      {
        ++v7;
        v13 = 1;
        if (v7 >= objc_msgSend_count(patternCopy))
        {
          goto LABEL_11;
        }
      }
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

+ (id)stringToUint32Array:(id)array
{
  v3 = MEMORY[0x1E695DF70];
  arrayCopy = array;
  v5 = objc_alloc_init(v3);
  v6 = [arrayCopy length];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __43__SSFuzzyMatchScoring_stringToUint32Array___block_invoke;
  v10[3] = &unk_1E8595BE8;
  v11 = v5;
  v7 = v5;
  [arrayCopy enumerateSubstringsInRange:0 options:v6 usingBlock:{2, v10}];

  v8 = [v7 copy];

  return v8;
}

void __43__SSFuzzyMatchScoring_stringToUint32Array___block_invoke(uint64_t a1, void *a2)
{
  v6 = 0;
  v3 = [a2 getBytes:&v6 maxLength:4 usedLength:0 encoding:2617245952 options:0 range:0 remainingRange:{1, 0}];
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
    [v4 addObject:v5];
  }

  else
  {
    [v4 addObject:&unk_1F55B3A38];
  }
}

+ (id)fuzzymatch:(id)fuzzymatch pattern:(id)pattern
{
  v139[1] = *MEMORY[0x1E69E9840];
  fuzzymatchCopy = fuzzymatch;
  patternCopy = pattern;
  v8 = patternCopy;
  if (!fuzzymatchCopy || !patternCopy)
  {
    v19 = [[SSTermMatchResult alloc] initWithoutMatch:patternCopy];
    goto LABEL_18;
  }

  v9 = [self stringToUint32Array:fuzzymatchCopy];
  v10 = [self stringToUint32Array:v8];
  v11 = objc_msgSend_count(v9);
  v12 = objc_msgSend_count(v10);
  if (!v12)
  {
    goto LABEL_16;
  }

  v135 = v12;
  selfCopy = self;
  v128 = v10;
  v13 = [v10 objectAtIndexedSubscript:0];
  unsignedIntValue = [v13 unsignedIntValue];

  if (objc_msgSend_count(v9))
  {
    v15 = 0;
    v16 = 0;
    while (1)
    {
      v17 = [v9 objectAtIndexedSubscript:v16];
      unsignedIntValue2 = [v17 unsignedIntValue];

      if (unsignedIntValue2 == unsignedIntValue)
      {
        break;
      }

      ++v16;
      v15 += 0x100000000;
      if (v16 >= objc_msgSend_count(v9))
      {
        goto LABEL_14;
      }
    }

    if (v16 != -1)
    {
      v20 = selfCopy;
      v10 = v128;
      if ([selfCopy patternCanMatch:v9 pattern:v128])
      {
        v114 = v112;
        v21 = (4 * v11 + 15) & 0x7FFFFFFF0;
        v133 = &v112[-v21];
        bzero(&v112[-v21], 4 * v11);
        v131 = &v112[-v21];
        bzero(&v112[-v21], 4 * v11);
        v127 = &v112[-v21];
        bzero(&v112[-v21], 4 * v11);
        v22 = v135;
        v23 = 4 * v135;
        v126 = &v112[-((v23 + 15) & 0x7FFFFFFF0)];
        bzero(v126, v23);
        v24 = [v10 objectAtIndexedSubscript:0];
        LODWORD(v132) = [v24 unsignedIntValue];

        v25 = [v10 objectAtIndexedSubscript:0];
        LODWORD(v134) = [v25 unsignedIntValue];

        if (v16 < 1)
        {
          v27 = 0;
        }

        else
        {
          v26 = [v9 objectAtIndexedSubscript:(v16 - 1)];
          v27 = [v20 charClass:{objc_msgSend(v26, "unsignedIntValue")}];
        }

        v115 = v8;
        v116 = fuzzymatchCopy;
        v138 = v9;
        if (v16 < objc_msgSend_count(v9))
        {
          LODWORD(v137) = v27;
          v29 = 0;
          v30 = 0;
          LODWORD(v130) = 0;
          v123 = 0;
          LODWORD(v31) = 0;
          v32 = 0;
          LODWORD(v129) = v22 - 1;
          v33 = v15 >> 32;
          v34 = v138;
          while (1)
          {
            v35 = v137;
            v36 = [v34 objectAtIndexedSubscript:v33];
            unsignedIntValue3 = [v36 unsignedIntValue];

            v38 = selfCopy;
            LODWORD(v137) = [selfCopy charClass:unsignedIntValue3];
            v39 = [v38 bonusFor:v35 charClass:?];
            *&v127[4 * v33] = v39;
            if (unsignedIntValue3 == v134)
            {
              v40 = v130;
              if (v130 >= v135)
              {
                v123 = v16;
              }

              else
              {
                v126[v130] = v16;
                v41 = v40 + 1;
                if (v40 + 1 < v129)
                {
                  v42 = v40 + 1;
                }

                else
                {
                  v42 = v129;
                }

                v43 = [v128 objectAtIndexedSubscript:v42];
                LODWORD(v134) = [v43 unsignedIntValue];

                v123 = v16;
                LODWORD(v130) = v41;
              }
            }

            v44 = unsignedIntValue3 != v132;
            if (unsignedIntValue3 == v132)
            {
              v31 = (v39 + 16);
              *&v133[4 * v33] = v31;
              *&v131[4 * v33] = 1;
              if (v135 == 1 && v31 > v29)
              {
                if (v39 > 7)
                {
                  if (v130 != 1)
                  {
                    goto LABEL_119;
                  }

LABEL_52:
                  v50 = [SSTermMatchResult alloc];
                  v51 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v16];
                  v139[0] = v51;
                  v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v139 count:1];
                  v8 = v115;
                  v19 = [(SSTermMatchResult *)v50 initWithMatch:v115 start:v16 end:(v16 + 1) score:v31 pos:v52];

                  goto LABEL_120;
                }

                v30 = v16;
                v29 = (v39 + 16);
              }
            }

            else
            {
              if (v31 <= 3)
              {
                v45 = 3;
              }

              else
              {
                v45 = v31;
              }

              v46 = v45 - 3;
              if (v31 <= 1)
              {
                v47 = 1;
              }

              else
              {
                v47 = v31;
              }

              v48 = v47 - 1;
              if (v32)
              {
                LODWORD(v31) = v48;
              }

              else
              {
                LODWORD(v31) = v46;
              }

              *&v133[4 * v33] = v31;
              *&v131[4 * v33] = 0;
            }

            ++v33;
            v34 = v138;
            v16 = (v16 + 1);
            v32 = v44;
            if (v33 >= objc_msgSend_count(v138))
            {
              goto LABEL_49;
            }
          }
        }

        v123 = 0;
        LODWORD(v130) = 0;
        v30 = 0;
        v29 = 0;
LABEL_49:
        v49 = v135;
        if (v130 == v135)
        {
          if (v135 != 1)
          {
            v53 = *v126;
            v54 = v123;
            v122 = v123 - v53 + 1;
            v125 = (v122 * v135);
            v55 = 4 * v125;
            v56 = (4 * v125 + 15) & 0x7FFFFFFF0;
            v124 = &v112[-v56];
            bzero(&v112[-v56], 4 * v125);
            v132 = &v112[-v56];
            bzero(&v112[-v56], v55);
            v118 = v53;
            if (v54 >= v53)
            {
              v57 = 0;
              v58 = &v133[4 * v118];
              v59 = v122;
              v60 = &v131[4 * v118];
              do
              {
                if (v57 <= v54 - v53)
                {
                  *&v124[4 * v57] = *v58;
                  *&v132[4 * v57++] = *v60;
                }

                ++v58;
                ++v60;
                --v59;
              }

              while (v59);
            }

            v61 = (v49 - 1);
            v62 = v126;
            if (v49 > 1)
            {
              v117 = v49 & 0x7FFFFFFF;
              v63 = v123 - 2 * v118;
              v64 = ~v118;
              v65 = 1;
              v113 = v123 + 1;
              v121 = v123 + 1 - 2 * v118;
              v66 = v122;
              do
              {
                v67 = v62[v65];
                v68 = [v128 objectAtIndexedSubscript:v65];
                LODWORD(v137) = [v68 unsignedIntValue];

                v69 = v67;
                v70 = v124;
                *&v124[4 * (v66 * v65 - v118) - 4 + 4 * v67] = 0;
                v119 = v64;
                v120 = v63;
                if (v67 <= v123)
                {
                  v71 = 0;
                  v72 = 0;
                  v135 = &v70[4 * v69 + 4 * v63];
                  selfCopy = v69;
                  v130 = &v70[4 * v69 + 4 * v64];
                  v131 = &v127[4 * v69];
                  v134 = (v113 - v69);
                  v129 = &v132[4 * v69 + 4 * v64];
                  v133 = &v132[4 * v69 + 4 * v121];
                  v73 = &v70[4 * v69 + 4 * v121];
                  do
                  {
                    v74 = v69;
                    v75 = [v138 objectAtIndexedSubscript:v69 + v71];
                    unsignedIntValue4 = [v75 unsignedIntValue];

                    if (v72)
                    {
                      v77 = -1;
                    }

                    else
                    {
                      v77 = -3;
                    }

                    v78 = *(v135 + 4 * v71) + v77;
                    if (v137 == unsignedIntValue4)
                    {
                      v79 = *&v131[4 * v71];
                      v80 = *&v129[4 * v71];
                      v81 = v80 + 1;
                      if (v80 < 1)
                      {
                        v82 = *&v131[4 * v71];
                      }

                      else
                      {
                        v82 = *&v131[4 * v71 + 4 + -4 * v81];
                        v83 = v79 > v82;
                        if (v82 <= v79)
                        {
                          v82 = *&v131[4 * v71];
                        }

                        if (v82 <= 4)
                        {
                          v82 = 4;
                        }

                        if (v79 > 7 && v83)
                        {
                          v81 = 1;
                          v82 = *&v131[4 * v71];
                        }
                      }

                      v69 = v74;
                      v85 = *&v130[4 * v71] + 16;
                      v86 = v82 + v85;
                      v84 = v85 + v79;
                      if (v86 < v78)
                      {
                        v81 = 0;
                      }

                      else
                      {
                        v84 = v86;
                      }
                    }

                    else
                    {
                      v84 = 0;
                      v81 = 0;
                      v69 = v74;
                    }

                    v72 = v84 < v78;
                    if (v84 > v78)
                    {
                      v78 = v84;
                    }

                    v87 = v78 & ~(v78 >> 31);
                    if (v87 <= v29)
                    {
                      v88 = v29;
                    }

                    else
                    {
                      v88 = v87;
                    }

                    v89 = v87 > v29 && v65 == v61;
                    *&v133[4 * v71] = v81;
                    if (v89)
                    {
                      v30 = (selfCopy + v71);
                    }

                    else
                    {
                      v30 = v30;
                    }

                    if (v65 == v61)
                    {
                      v29 = v88;
                    }

                    else
                    {
                      v29 = v29;
                    }

                    *&v73[4 * v71++] = v87;
                  }

                  while (v134 != v71);
                }

                ++v65;
                v66 = v122;
                v63 = v120 + v122;
                v64 = v119 + v122;
                v121 += v122;
                v62 = v126;
              }

              while (v65 != v117);
            }

            array = [MEMORY[0x1E695DF70] array];
            v91 = v124;
            selfCopy = array;
            v137 = v124 - 4;
            v92 = v122;
            v93 = v123 - 2 * v118 + 2;
            v94 = ~v123;
            v95 = -v118;
            v96 = 1;
            for (i = v30; ; i = (i - 1))
            {
              v98 = v61 * v92;
              if (v61 <= 0)
              {
                v100 = 0;
                v99 = v62[v61];
              }

              else
              {
                v99 = v62[v61];
                if (i >= v99)
                {
                  v100 = *&v137[4 * v94 + 4 * i + 4 * v98];
                }

                else
                {
                  v100 = 0;
                }
              }

              v101 = v95 + i + v98;
              v102 = &v91[4 * v101];
              if (i <= v99)
              {
                v103 = 0;
              }

              else
              {
                v103 = *(v102 - 1);
              }

              v104 = *v102;
              if (v104 > v100)
              {
                v105 = v104 == v103 && v96;
                if (v104 > v103 || v105 != 0)
                {
                  v107 = [MEMORY[0x1E696AD98] numberWithInt:i];
                  [selfCopy addObject:v107];

                  if (!v61)
                  {
                    v109 = [SSTermMatchResult alloc];
                    v8 = v115;
                    v110 = selfCopy;
                    v19 = [(SSTermMatchResult *)v109 initWithMatch:v115 start:i end:(v30 + 1) score:v29 pos:selfCopy];

                    goto LABEL_120;
                  }

                  LODWORD(v61) = v61 - 1;
                  v62 = v126;
                  v92 = v122;
                  v91 = v124;
                }
              }

              if (*&v132[4 * v101] <= 1)
              {
                v108 = v93 + i + v98;
                v96 = v108 < v125 && *&v132[4 * v108] > 0;
              }

              else
              {
                v96 = 1;
              }
            }
          }

          v16 = v30;
          v31 = v29;
          goto LABEL_52;
        }

LABEL_119:
        v111 = [SSTermMatchResult alloc];
        v8 = v115;
        v19 = [(SSTermMatchResult *)v111 initWithoutMatch:v115];
LABEL_120:
        fuzzymatchCopy = v116;
        v9 = v138;
        goto LABEL_15;
      }

LABEL_16:
      v19 = [[SSTermMatchResult alloc] initWithoutMatch:v8];
      goto LABEL_17;
    }
  }

LABEL_14:
  v19 = [[SSTermMatchResult alloc] initWithoutMatch:v8];
LABEL_15:
  v10 = v128;
LABEL_17:

LABEL_18:

  return v19;
}

@end