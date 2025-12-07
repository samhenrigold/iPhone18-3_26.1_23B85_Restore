@interface UnitsInfo
+ (UnitsInfo)converterUnits;
+ (UnitsInfo)unitsInfoWithDictionary:(id)dictionary;
- (UnitInfo)degreesInfo;
- (UnitInfo)radiansInfo;
- (UnitTypeInfo)angleInfo;
- (UnitsInfo)initWithDictionary:(id)dictionary;
- (id)infoForUnitID:(int)d;
- (id)infoForUnitName:(id)name;
- (id)infoForUnitType:(int)type;
- (id)infoForUnitTypeName:(id)name;
- (void)populateSubunitIDs:(id)ds forUnit:(id)unit visited:(id)visited;
@end

@implementation UnitsInfo

void __27__UnitsInfo_converterUnits__block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v0 pathForResource:@"ConverterUnits" ofType:@"plist"];

  v1 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfFile:v4];
  v2 = [UnitsInfo unitsInfoWithDictionary:v1];
  v3 = converterUnits_unitsInfo;
  converterUnits_unitsInfo = v2;
}

+ (UnitsInfo)converterUnits
{
  if (converterUnits_loadUnitDictionaryOnce != -1)
  {
    dispatch_once(&converterUnits_loadUnitDictionaryOnce, &__block_literal_global_387);
  }

  v3 = converterUnits_unitsInfo;

  return v3;
}

- (UnitInfo)radiansInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_radiansInfo);

  return WeakRetained;
}

- (UnitInfo)degreesInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_degreesInfo);

  return WeakRetained;
}

- (UnitTypeInfo)angleInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_angleInfo);

  return WeakRetained;
}

- (id)infoForUnitName:(id)name
{
  nameCopy = name;
  unitNameToInfo = [(UnitsInfo *)self unitNameToInfo];
  v6 = [unitNameToInfo objectForKeyedSubscript:nameCopy];

  return v6;
}

- (id)infoForUnitID:(int)d
{
  if (d < 0 || (-[UnitsInfo unitIDToInfo](self, "unitIDToInfo"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v6 <= d))
  {
    v8 = 0;
  }

  else
  {
    unitIDToInfo = [(UnitsInfo *)self unitIDToInfo];
    v8 = [unitIDToInfo objectAtIndexedSubscript:d];
  }

  return v8;
}

- (id)infoForUnitTypeName:(id)name
{
  nameCopy = name;
  unitTypeNameToInfo = [(UnitsInfo *)self unitTypeNameToInfo];
  v6 = [unitTypeNameToInfo objectForKeyedSubscript:nameCopy];

  return v6;
}

- (id)infoForUnitType:(int)type
{
  if (type < 1 || (-[UnitsInfo unitTypeToInfo](self, "unitTypeToInfo"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v6 <= type))
  {
    v8 = 0;
  }

  else
  {
    unitTypeToInfo = [(UnitsInfo *)self unitTypeToInfo];
    v8 = [unitTypeToInfo objectAtIndexedSubscript:type];
  }

  return v8;
}

- (UnitsInfo)initWithDictionary:(id)dictionary
{
  v197 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v189.receiver = self;
  v189.super_class = UnitsInfo;
  v5 = [(UnitsInfo *)&v189 init];
  if (!v5)
  {
    goto LABEL_123;
  }

  v6 = objc_opt_new();
  [(UnitsInfo *)v5 setUnitNameToInfo:v6];

  v7 = objc_opt_new();
  [(UnitsInfo *)v5 setUnitIDToInfo:v7];

  v8 = objc_opt_new();
  [(UnitsInfo *)v5 setUnitTypeNameToInfo:v8];

  v9 = objc_opt_new();
  [(UnitsInfo *)v5 setUnitTypeToInfo:v9];

  unitIDToInfo = [(UnitsInfo *)v5 unitIDToInfo];
  v11 = objc_opt_new();
  [unitIDToInfo addObject:v11];

  unitTypeToInfo = [(UnitsInfo *)v5 unitTypeToInfo];
  v13 = objc_opt_new();
  [unitTypeToInfo addObject:v13];

  v133 = objc_opt_new();
  v185 = 0u;
  v186 = 0u;
  v187 = 0u;
  v188 = 0u;
  v125 = dictionaryCopy;
  obj = dictionaryCopy;
  v14 = 0x1EDC2B000;
  v137 = [obj countByEnumeratingWithState:&v185 objects:v196 count:16];
  if (!v137)
  {
    v134 = 0;
    goto LABEL_63;
  }

  v134 = 0;
  v135 = *v186;
  v15 = @"BaseNumerator";
  v16 = @"BaseDenominator";
  do
  {
    v17 = 0;
    do
    {
      if (*v186 != v135)
      {
        objc_enumerationMutation(obj);
      }

      v141 = v17;
      v18 = *(*(&v185 + 1) + 8 * v17);
      v19 = [obj objectForKeyedSubscript:v18];
      v20 = objc_opt_new();
      [v20 setUnitType:++v134];
      [v20 setName:v18];
      [v20 setDecompositionCoefficient:{1, 0x3040000000000000}];
      v21 = [v19 objectForKeyedSubscript:@"BaseDecomposition"];
      [v20 setIsDecomposable:v21 != 0];

      if ([v18 isEqualToString:@"Temperature"])
      {
        [v20 setIsTemperature:1];
      }

      else if ([v18 isEqualToString:@"Currency"])
      {
        [v20 setIsCurrency:1];
      }

      else if ([v18 isEqualToString:@"Volume"])
      {
        [v20 setIsVolume:1];
      }

      if ([v18 isEqualToString:@"Angle"])
      {
        [(UnitsInfo *)v5 setAngleInfo:v20];
      }

      unitTypeNameToInfo = [(UnitsInfo *)v5 unitTypeNameToInfo];
      [unitTypeNameToInfo setObject:v20 forKeyedSubscript:v18];

      unitTypeToInfo2 = [(UnitsInfo *)v5 unitTypeToInfo];
      [unitTypeToInfo2 addObject:v20];

      v147 = objc_opt_new();
      [v20 setUnits:?];
      v183 = 0u;
      v184 = 0u;
      v181 = 0u;
      v182 = 0u;
      v24 = v19;
      v25 = [v24 countByEnumeratingWithState:&v181 objects:v195 count:16];
      v14 = 0x1EDC2B000uLL;
      if (v25)
      {
        v26 = v25;
        v27 = *v182;
        v143 = *v182;
        v145 = v24;
        do
        {
          v28 = 0;
          v149 = v26;
          do
          {
            if (*v182 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = *(*(&v181 + 1) + 8 * v28);
            if (([v14 + 4080 shouldSkipUnitName:v29] & 1) == 0)
            {
              v30 = [v24 objectForKeyedSubscript:v29];
              unitIDToInfo2 = [(UnitsInfo *)v5 unitIDToInfo];
              v32 = [unitIDToInfo2 count];

              v33 = objc_opt_new();
              [v33 setUnitID:v32];
              [v33 setUnitType:v134];
              [v33 setName:v29];
              [v33 setTypeInfo:v20];
              v34 = [v30 objectForKeyedSubscript:@"Inverted"];
              [v33 setIsInverted:{objc_msgSend(v34, "BOOLValue")}];

              if ([v20 isDecomposable])
              {
                v35 = [v30 objectForKeyedSubscript:@"IsDisplayName"];
                [v33 setIsDisplayName:{objc_msgSend(v35, "BOOLValue")}];
              }

              else
              {
                [v33 setIsDisplayName:0];
              }

              if ([v33 isDisplayName])
              {
                v36 = [v30 objectForKeyedSubscript:@"ImpliesDivision"];
                [v33 setImpliesDivision:{objc_msgSend(v36, "BOOLValue")}];
              }

              else
              {
                [v33 setImpliesDivision:0];
              }

              v37 = [v30 objectForKeyedSubscript:@"DoNotSuggest"];
              [v33 setDoNotSuggest:{objc_msgSend(v37, "BOOLValue")}];

              v38 = [v30 objectForKeyedSubscript:@"FormatNextSmallest"];
              [v33 setFormatNextSmallest:{objc_msgSend(v38, "BOOLValue")}];

              v39 = [v30 objectForKeyedSubscript:@"PreferredUnit"];
              [v33 setIsPreferredUnit:{objc_msgSend(v39, "BOOLValue")}];

              [v33 setMeasurementSystem:0];
              v40 = [v30 objectForKeyedSubscript:@"MeasurementSystem"];
              v41 = v40;
              if (v40)
              {
                if ([v40 isEqualToString:@"Metric"])
                {
                  v42 = 1;
                  goto LABEL_34;
                }

                if ([v41 isEqualToString:@"US"])
                {
                  v42 = 2;
                  goto LABEL_34;
                }

                if ([v41 isEqualToString:@"UK"])
                {
                  v42 = 3;
LABEL_34:
                  [v33 setMeasurementSystem:v42];
                }
              }

              if ([v20 isTemperature])
              {
                if ([v29 isEqualToString:@"fahrenheit"])
                {
                  [v33 setIsFahrenheit:1];
                }

                else if ([v29 isEqualToString:@"celsius"])
                {
                  [v33 setIsCelsius:1];
                }

                else if ([v29 isEqualToString:@"kelvin"])
                {
                  [v33 setIsKelvin:1];
                }
              }

              v43 = v16;
              if ([v29 isEqualToString:@"degree"])
              {
                [(UnitsInfo *)v5 setDegreesInfo:v33];
              }

              v44 = v15;
              if ([v29 isEqualToString:@"radian"])
              {
                [(UnitsInfo *)v5 setRadiansInfo:v33];
              }

              unitNameToInfo = [(UnitsInfo *)v5 unitNameToInfo];
              [unitNameToInfo setObject:v33 forKeyedSubscript:v29];

              unitIDToInfo3 = [(UnitsInfo *)v5 unitIDToInfo];
              [unitIDToInfo3 addObject:v33];

              [v147 addObject:v33];
              [v133 addObject:v29];
              LODWORD(v164[0]) = 0;
              v15 = v44;
              v47 = [v30 objectForKeyedSubscript:v44];

              if (v47)
              {
                v48 = [v30 objectForKeyedSubscript:v44];
                v49 = __bid128_from_string([v48 UTF8String], 4, v164);
                [v33 setBaseNumerator:{v49, v50}];
              }

              v16 = v43;
              v51 = [v30 objectForKeyedSubscript:v43];

              if (v51)
              {
                v52 = [v30 objectForKeyedSubscript:v43];
                v53 = __bid128_from_string([v52 UTF8String], 4, v164);
                [v33 setBaseDenominator:{v53, v54}];
              }

              baseUnit = [v20 baseUnit];
              v27 = v143;
              if (baseUnit || (v56 = [v33 baseNumerator], !__bid128_quiet_equal(v56, v57, 1uLL, 0x3040000000000000uLL, v164)))
              {
              }

              else
              {
                baseDenominator = [v33 baseDenominator];
                if (__bid128_quiet_equal(baseDenominator, v59, 1uLL, 0x3040000000000000uLL, v164))
                {
                  [v33 setIsBaseUnit:1];
                  [v20 setBaseUnit:v33];
                }
              }

              v14 = 0x1EDC2B000;
              v24 = v145;
              v26 = v149;
            }

            ++v28;
          }

          while (v26 != v28);
          v60 = [v24 countByEnumeratingWithState:&v181 objects:v195 count:16];
          v26 = v60;
        }

        while (v60);
      }

      v17 = v141 + 1;
    }

    while ((v141 + 1) != v137);
    v137 = [obj countByEnumeratingWithState:&v185 objects:v196 count:16];
  }

  while (v137);
LABEL_63:

  v179 = 0u;
  v180 = 0u;
  v177 = 0u;
  v178 = 0u;
  v128 = obj;
  v127 = [v128 countByEnumeratingWithState:&v177 objects:v194 count:16];
  if (v127)
  {
    v126 = *v178;
    do
    {
      v61 = 0;
      do
      {
        if (*v178 != v126)
        {
          v62 = v61;
          objc_enumerationMutation(v128);
          v61 = v62;
        }

        v129 = v61;
        v63 = *(*(&v177 + 1) + 8 * v61);
        v64 = [v128 objectForKeyedSubscript:v63];
        v138 = [v64 objectForKeyedSubscript:@"BaseDecomposition"];
        if (v138)
        {
          v150 = v64;
          v175 = 0u;
          v176 = 0u;
          v173 = 0u;
          v174 = 0u;
          v171 = 0u;
          v172 = 0u;
          v169 = 0u;
          v170 = 0u;
          v165 = 0u;
          v166 = 0u;
          v167 = 0u;
          v168 = 0u;
          v65 = [v138 countByEnumeratingWithState:&v165 objects:v193 count:16];
          if (v65)
          {
            v66 = v65;
            v67 = *v166;
            do
            {
              for (i = 0; i != v66; ++i)
              {
                if (*v166 != v67)
                {
                  objc_enumerationMutation(v138);
                }

                v69 = *(*(&v165 + 1) + 8 * i);
                v70 = [v138 objectForKeyedSubscript:v69];
                if ([v69 isEqualToString:@"Coefficient"])
                {
                  intValue = [v70 intValue];
                  if (intValue >= 0)
                  {
                    v72 = intValue;
                  }

                  else
                  {
                    v72 = -intValue;
                  }

                  if (intValue < 0)
                  {
                    v73 = 0xB040000000000000;
                  }

                  else
                  {
                    v73 = 0x3040000000000000;
                  }

                  unitTypeNameToInfo2 = [(UnitsInfo *)v5 unitTypeNameToInfo];
                  v75 = [unitTypeNameToInfo2 objectForKeyedSubscript:v63];
                  [v75 setDecompositionCoefficient:{v72, v73}];
                }

                else
                {
                  unitNameToInfo2 = [(UnitsInfo *)v5 unitNameToInfo];
                  unitTypeNameToInfo2 = [unitNameToInfo2 objectForKeyedSubscript:v69];

                  v77 = v67;
                  v78 = &v169 + 2 * [unitTypeNameToInfo2 unitType];
                  *v78 = [unitTypeNameToInfo2 unitID];
                  v78[1] = [v70 intValue];
                  v67 = v77;
                }
              }

              v66 = [v138 countByEnumeratingWithState:&v165 objects:v193 count:16];
            }

            while (v66);
          }

          unitTypeNameToInfo3 = [(UnitsInfo *)v5 unitTypeNameToInfo];
          v80 = [unitTypeNameToInfo3 objectForKeyedSubscript:v63];
          v164[4] = v173;
          v164[5] = v174;
          v164[6] = v175;
          v164[7] = v176;
          v164[0] = v169;
          v164[1] = v170;
          v164[2] = v171;
          v164[3] = v172;
          [v80 setDecomposition:v164];

          v14 = 0x1EDC2B000uLL;
          v64 = v150;
        }

        v162 = 0u;
        v163 = 0u;
        v160 = 0u;
        v161 = 0u;
        v81 = v64;
        v82 = [v81 countByEnumeratingWithState:&v160 objects:v192 count:16];
        if (v82)
        {
          v83 = v82;
          v84 = *v161;
          v130 = *v161;
          v131 = v81;
          do
          {
            v85 = 0;
            v132 = v83;
            do
            {
              if (*v161 != v84)
              {
                objc_enumerationMutation(v81);
              }

              v86 = *(*(&v160 + 1) + 8 * v85);
              if (([v14 + 4080 shouldSkipUnitName:v86] & 1) == 0)
              {
                v146 = v85;
                v148 = [v81 objectForKeyedSubscript:v86];
                v87 = [v148 objectForKeyedSubscript:@"BestEquivalent"];
                v144 = v87;
                if (v87)
                {
                  v88 = v87;
                  unitNameToInfo3 = [(UnitsInfo *)v5 unitNameToInfo];
                  v90 = [unitNameToInfo3 objectForKeyedSubscript:v88];
                }

                else
                {
                  v90 = 0;
                }

                unitNameToInfo4 = [(UnitsInfo *)v5 unitNameToInfo];
                v92 = [unitNameToInfo4 objectForKeyedSubscript:v86];
                [v92 setBestEquivalent:v90];

                v93 = [v148 objectForKeyedSubscript:@"NextSmallest"];
                v142 = v93;
                if (v93)
                {
                  v94 = v93;
                  unitNameToInfo5 = [(UnitsInfo *)v5 unitNameToInfo];
                  v96 = [unitNameToInfo5 objectForKeyedSubscript:v94];
                }

                else
                {
                  v96 = 0;
                }

                unitNameToInfo6 = [(UnitsInfo *)v5 unitNameToInfo];
                v98 = [unitNameToInfo6 objectForKeyedSubscript:v86];
                obja = v96;
                [v98 setNextSmallest:v96];

                v99 = [v148 objectForKeyedSubscript:@"Subunits"];
                if (v99)
                {
                  v151 = v86;
                  v100 = v5;
                  v101 = objc_opt_new();
                  v156 = 0u;
                  v157 = 0u;
                  v158 = 0u;
                  v159 = 0u;
                  v136 = v99;
                  v102 = v99;
                  v103 = [v102 countByEnumeratingWithState:&v156 objects:v191 count:16];
                  if (v103)
                  {
                    v104 = v103;
                    v105 = *v157;
                    do
                    {
                      for (j = 0; j != v104; ++j)
                      {
                        v107 = v90;
                        if (*v157 != v105)
                        {
                          objc_enumerationMutation(v102);
                        }

                        v108 = *(*(&v156 + 1) + 8 * j);
                        unitNameToInfo7 = [(UnitsInfo *)v100 unitNameToInfo];
                        v110 = [unitNameToInfo7 objectForKeyedSubscript:v108];

                        if (v110)
                        {
                          v111 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v110, "unitID")}];
                          [v101 addObject:v111];
                        }

                        else
                        {
                          NSLog(&cfstr_WarningUnitTyp.isa, v151, v108);
                        }

                        v90 = v107;
                      }

                      v104 = [v102 countByEnumeratingWithState:&v156 objects:v191 count:16];
                    }

                    while (v104);
                  }

                  v5 = v100;
                  unitNameToInfo8 = [(UnitsInfo *)v100 unitNameToInfo];
                  v113 = [unitNameToInfo8 objectForKeyedSubscript:v151];
                  [v113 setSubunitIDs:v101];

                  v14 = 0x1EDC2B000;
                  v84 = v130;
                  v81 = v131;
                  v83 = v132;
                  v99 = v136;
                }

                v85 = v146;
              }

              ++v85;
            }

            while (v85 != v83);
            v83 = [v81 countByEnumeratingWithState:&v160 objects:v192 count:16];
          }

          while (v83);
        }

        v61 = v129 + 1;
      }

      while (v129 + 1 != v127);
      v127 = [v128 countByEnumeratingWithState:&v177 objects:v194 count:16];
    }

    while (v127);
  }

  v114 = objc_opt_new();
  v152 = 0u;
  v153 = 0u;
  v154 = 0u;
  v155 = 0u;
  unitIDToInfo4 = [(UnitsInfo *)v5 unitIDToInfo];
  v116 = [unitIDToInfo4 countByEnumeratingWithState:&v152 objects:v190 count:16];
  if (v116)
  {
    v117 = v116;
    v118 = *v153;
    do
    {
      for (k = 0; k != v117; ++k)
      {
        if (*v153 != v118)
        {
          objc_enumerationMutation(unitIDToInfo4);
        }

        [(UnitsInfo *)v5 populateSubunitIDs:*(*(&v152 + 1) + 8 * k) forUnit:*(*(&v152 + 1) + 8 * k) visited:v114];
        [v114 removeAllObjects];
      }

      v117 = [unitIDToInfo4 countByEnumeratingWithState:&v152 objects:v190 count:16];
    }

    while (v117);
  }

  v120 = [v133 copy];
  unitNames = v5->_unitNames;
  v5->_unitNames = v120;

  v5->_unitTypeCount = v134;
  unitIDToInfo5 = [(UnitsInfo *)v5 unitIDToInfo];
  v5->_unitCount = [unitIDToInfo5 count];

  v123 = v5;
  dictionaryCopy = v125;
LABEL_123:

  return v5;
}

- (void)populateSubunitIDs:(id)ds forUnit:(id)unit visited:(id)visited
{
  v24 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  unitCopy = unit;
  visitedCopy = visited;
  v11 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(dsCopy, "unitID")}];
  if (([visitedCopy containsObject:v11] & 1) == 0)
  {
    [visitedCopy addObject:v11];
    allSubunitIDs = [unitCopy allSubunitIDs];
    [allSubunitIDs addObject:v11];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    subunitIDs = [dsCopy subunitIDs];
    v14 = [subunitIDs countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v20;
      do
      {
        v17 = 0;
        do
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(subunitIDs);
          }

          v18 = -[UnitsInfo infoForUnitID:](self, "infoForUnitID:", [*(*(&v19 + 1) + 8 * v17) intValue]);
          [(UnitsInfo *)self populateSubunitIDs:v18 forUnit:unitCopy visited:visitedCopy];

          ++v17;
        }

        while (v15 != v17);
        v15 = [subunitIDs countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v15);
    }
  }
}

+ (UnitsInfo)unitsInfoWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [[UnitsInfo alloc] initWithDictionary:dictionaryCopy];

  return v4;
}

@end