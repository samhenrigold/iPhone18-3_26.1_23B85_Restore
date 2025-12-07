@interface _INPBPair
- (BOOL)isEqual:(id)equal;
- (_INPBPair)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPairCurrencyAmountValue:(id)value;
- (void)addPairCustomObject:(id)object;
- (void)addPairDataString:(id)string;
- (void)addPairDataValue:(id)value;
- (void)addPairDistanceValue:(id)value;
- (void)addPairDoubleValue:(id)value;
- (void)addPairImageValue:(id)value;
- (void)addPairIntegerValue:(id)value;
- (void)addPairLocationValue:(id)value;
- (void)addPairPaymentMethodValue:(id)value;
- (void)addPairPersonValue:(id)value;
- (void)addPairStringValue:(id)value;
- (void)addPairTemperatureValue:(id)value;
- (void)addPairUrlValue:(id)value;
- (void)encodeWithCoder:(id)coder;
- (void)setKey:(id)key;
- (void)setPairCurrencyAmountValues:(id)values;
- (void)setPairCustomObjects:(id)objects;
- (void)setPairDataStrings:(id)strings;
- (void)setPairDataValues:(id)values;
- (void)setPairDistanceValues:(id)values;
- (void)setPairDoubleValues:(id)values;
- (void)setPairImageValues:(id)values;
- (void)setPairIntegerValues:(id)values;
- (void)setPairLocationValues:(id)values;
- (void)setPairPaymentMethodValues:(id)values;
- (void)setPairPersonValues:(id)values;
- (void)setPairStringValues:(id)values;
- (void)setPairTemperatureValues:(id)values;
- (void)setPairUrlValues:(id)values;
- (void)writeTo:(id)to;
@end

@implementation _INPBPair

- (id)dictionaryRepresentation
{
  v176 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_key)
  {
    v4 = [(_INPBPair *)self key];
    v5 = [v4 copy];
    [dictionary setObject:v5 forKeyedSubscript:@"key"];
  }

  if ([(NSArray *)self->_pairCurrencyAmountValues count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v158 = 0u;
    v159 = 0u;
    v160 = 0u;
    v161 = 0u;
    v7 = self->_pairCurrencyAmountValues;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v158 objects:v175 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v159;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v159 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation = [*(*(&v158 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v158 objects:v175 count:16];
      }

      while (v9);
    }

    [dictionary setObject:array forKeyedSubscript:@"pairCurrencyAmountValue"];
  }

  if ([(NSArray *)self->_pairCustomObjects count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v154 = 0u;
    v155 = 0u;
    v156 = 0u;
    v157 = 0u;
    v14 = self->_pairCustomObjects;
    v15 = [(NSArray *)v14 countByEnumeratingWithState:&v154 objects:v174 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v155;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v155 != v17)
          {
            objc_enumerationMutation(v14);
          }

          dictionaryRepresentation2 = [*(*(&v154 + 1) + 8 * j) dictionaryRepresentation];
          [array2 addObject:dictionaryRepresentation2];
        }

        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v154 objects:v174 count:16];
      }

      while (v16);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"pairCustomObject"];
  }

  if ([(NSArray *)self->_pairDataStrings count])
  {
    array3 = [MEMORY[0x1E695DF70] array];
    v150 = 0u;
    v151 = 0u;
    v152 = 0u;
    v153 = 0u;
    v21 = self->_pairDataStrings;
    v22 = [(NSArray *)v21 countByEnumeratingWithState:&v150 objects:v173 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v151;
      do
      {
        for (k = 0; k != v23; ++k)
        {
          if (*v151 != v24)
          {
            objc_enumerationMutation(v21);
          }

          dictionaryRepresentation3 = [*(*(&v150 + 1) + 8 * k) dictionaryRepresentation];
          [array3 addObject:dictionaryRepresentation3];
        }

        v23 = [(NSArray *)v21 countByEnumeratingWithState:&v150 objects:v173 count:16];
      }

      while (v23);
    }

    [dictionary setObject:array3 forKeyedSubscript:@"pairDataString"];
  }

  if ([(NSArray *)self->_pairDataValues count])
  {
    array4 = [MEMORY[0x1E695DF70] array];
    v146 = 0u;
    v147 = 0u;
    v148 = 0u;
    v149 = 0u;
    v28 = self->_pairDataValues;
    v29 = [(NSArray *)v28 countByEnumeratingWithState:&v146 objects:v172 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v147;
      do
      {
        for (m = 0; m != v30; ++m)
        {
          if (*v147 != v31)
          {
            objc_enumerationMutation(v28);
          }

          dictionaryRepresentation4 = [*(*(&v146 + 1) + 8 * m) dictionaryRepresentation];
          [array4 addObject:dictionaryRepresentation4];
        }

        v30 = [(NSArray *)v28 countByEnumeratingWithState:&v146 objects:v172 count:16];
      }

      while (v30);
    }

    [dictionary setObject:array4 forKeyedSubscript:@"pairDataValue"];
  }

  if ([(NSArray *)self->_pairDistanceValues count])
  {
    array5 = [MEMORY[0x1E695DF70] array];
    v142 = 0u;
    v143 = 0u;
    v144 = 0u;
    v145 = 0u;
    v35 = self->_pairDistanceValues;
    v36 = [(NSArray *)v35 countByEnumeratingWithState:&v142 objects:v171 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v143;
      do
      {
        for (n = 0; n != v37; ++n)
        {
          if (*v143 != v38)
          {
            objc_enumerationMutation(v35);
          }

          dictionaryRepresentation5 = [*(*(&v142 + 1) + 8 * n) dictionaryRepresentation];
          [array5 addObject:dictionaryRepresentation5];
        }

        v37 = [(NSArray *)v35 countByEnumeratingWithState:&v142 objects:v171 count:16];
      }

      while (v37);
    }

    [dictionary setObject:array5 forKeyedSubscript:@"pairDistanceValue"];
  }

  if ([(NSArray *)self->_pairDoubleValues count])
  {
    array6 = [MEMORY[0x1E695DF70] array];
    v138 = 0u;
    v139 = 0u;
    v140 = 0u;
    v141 = 0u;
    v42 = self->_pairDoubleValues;
    v43 = [(NSArray *)v42 countByEnumeratingWithState:&v138 objects:v170 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v139;
      do
      {
        for (ii = 0; ii != v44; ++ii)
        {
          if (*v139 != v45)
          {
            objc_enumerationMutation(v42);
          }

          dictionaryRepresentation6 = [*(*(&v138 + 1) + 8 * ii) dictionaryRepresentation];
          [array6 addObject:dictionaryRepresentation6];
        }

        v44 = [(NSArray *)v42 countByEnumeratingWithState:&v138 objects:v170 count:16];
      }

      while (v44);
    }

    [dictionary setObject:array6 forKeyedSubscript:@"pairDoubleValue"];
  }

  if ([(NSArray *)self->_pairImageValues count])
  {
    array7 = [MEMORY[0x1E695DF70] array];
    v134 = 0u;
    v135 = 0u;
    v136 = 0u;
    v137 = 0u;
    v49 = self->_pairImageValues;
    v50 = [(NSArray *)v49 countByEnumeratingWithState:&v134 objects:v169 count:16];
    if (v50)
    {
      v51 = v50;
      v52 = *v135;
      do
      {
        for (jj = 0; jj != v51; ++jj)
        {
          if (*v135 != v52)
          {
            objc_enumerationMutation(v49);
          }

          dictionaryRepresentation7 = [*(*(&v134 + 1) + 8 * jj) dictionaryRepresentation];
          [array7 addObject:dictionaryRepresentation7];
        }

        v51 = [(NSArray *)v49 countByEnumeratingWithState:&v134 objects:v169 count:16];
      }

      while (v51);
    }

    [dictionary setObject:array7 forKeyedSubscript:@"pairImageValue"];
  }

  if ([(NSArray *)self->_pairIntegerValues count])
  {
    array8 = [MEMORY[0x1E695DF70] array];
    v130 = 0u;
    v131 = 0u;
    v132 = 0u;
    v133 = 0u;
    v56 = self->_pairIntegerValues;
    v57 = [(NSArray *)v56 countByEnumeratingWithState:&v130 objects:v168 count:16];
    if (v57)
    {
      v58 = v57;
      v59 = *v131;
      do
      {
        for (kk = 0; kk != v58; ++kk)
        {
          if (*v131 != v59)
          {
            objc_enumerationMutation(v56);
          }

          dictionaryRepresentation8 = [*(*(&v130 + 1) + 8 * kk) dictionaryRepresentation];
          [array8 addObject:dictionaryRepresentation8];
        }

        v58 = [(NSArray *)v56 countByEnumeratingWithState:&v130 objects:v168 count:16];
      }

      while (v58);
    }

    [dictionary setObject:array8 forKeyedSubscript:@"pairIntegerValue"];
  }

  if ([(NSArray *)self->_pairLocationValues count])
  {
    array9 = [MEMORY[0x1E695DF70] array];
    v126 = 0u;
    v127 = 0u;
    v128 = 0u;
    v129 = 0u;
    v63 = self->_pairLocationValues;
    v64 = [(NSArray *)v63 countByEnumeratingWithState:&v126 objects:v167 count:16];
    if (v64)
    {
      v65 = v64;
      v66 = *v127;
      do
      {
        for (mm = 0; mm != v65; ++mm)
        {
          if (*v127 != v66)
          {
            objc_enumerationMutation(v63);
          }

          dictionaryRepresentation9 = [*(*(&v126 + 1) + 8 * mm) dictionaryRepresentation];
          [array9 addObject:dictionaryRepresentation9];
        }

        v65 = [(NSArray *)v63 countByEnumeratingWithState:&v126 objects:v167 count:16];
      }

      while (v65);
    }

    [dictionary setObject:array9 forKeyedSubscript:@"pairLocationValue"];
  }

  if ([(NSArray *)self->_pairPaymentMethodValues count])
  {
    array10 = [MEMORY[0x1E695DF70] array];
    v122 = 0u;
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    v70 = self->_pairPaymentMethodValues;
    v71 = [(NSArray *)v70 countByEnumeratingWithState:&v122 objects:v166 count:16];
    if (v71)
    {
      v72 = v71;
      v73 = *v123;
      do
      {
        for (nn = 0; nn != v72; ++nn)
        {
          if (*v123 != v73)
          {
            objc_enumerationMutation(v70);
          }

          dictionaryRepresentation10 = [*(*(&v122 + 1) + 8 * nn) dictionaryRepresentation];
          [array10 addObject:dictionaryRepresentation10];
        }

        v72 = [(NSArray *)v70 countByEnumeratingWithState:&v122 objects:v166 count:16];
      }

      while (v72);
    }

    [dictionary setObject:array10 forKeyedSubscript:@"pairPaymentMethodValue"];
  }

  if ([(NSArray *)self->_pairPersonValues count])
  {
    array11 = [MEMORY[0x1E695DF70] array];
    v118 = 0u;
    v119 = 0u;
    v120 = 0u;
    v121 = 0u;
    v77 = self->_pairPersonValues;
    v78 = [(NSArray *)v77 countByEnumeratingWithState:&v118 objects:v165 count:16];
    if (v78)
    {
      v79 = v78;
      v80 = *v119;
      do
      {
        for (i1 = 0; i1 != v79; ++i1)
        {
          if (*v119 != v80)
          {
            objc_enumerationMutation(v77);
          }

          dictionaryRepresentation11 = [*(*(&v118 + 1) + 8 * i1) dictionaryRepresentation];
          [array11 addObject:dictionaryRepresentation11];
        }

        v79 = [(NSArray *)v77 countByEnumeratingWithState:&v118 objects:v165 count:16];
      }

      while (v79);
    }

    [dictionary setObject:array11 forKeyedSubscript:@"pairPersonValue"];
  }

  if ([(NSArray *)self->_pairStringValues count])
  {
    array12 = [MEMORY[0x1E695DF70] array];
    v114 = 0u;
    v115 = 0u;
    v116 = 0u;
    v117 = 0u;
    v84 = self->_pairStringValues;
    v85 = [(NSArray *)v84 countByEnumeratingWithState:&v114 objects:v164 count:16];
    if (v85)
    {
      v86 = v85;
      v87 = *v115;
      do
      {
        for (i2 = 0; i2 != v86; ++i2)
        {
          if (*v115 != v87)
          {
            objc_enumerationMutation(v84);
          }

          dictionaryRepresentation12 = [*(*(&v114 + 1) + 8 * i2) dictionaryRepresentation];
          [array12 addObject:dictionaryRepresentation12];
        }

        v86 = [(NSArray *)v84 countByEnumeratingWithState:&v114 objects:v164 count:16];
      }

      while (v86);
    }

    [dictionary setObject:array12 forKeyedSubscript:@"pairStringValue"];
  }

  if ([(NSArray *)self->_pairTemperatureValues count])
  {
    array13 = [MEMORY[0x1E695DF70] array];
    v110 = 0u;
    v111 = 0u;
    v112 = 0u;
    v113 = 0u;
    v91 = self->_pairTemperatureValues;
    v92 = [(NSArray *)v91 countByEnumeratingWithState:&v110 objects:v163 count:16];
    if (v92)
    {
      v93 = v92;
      v94 = *v111;
      do
      {
        for (i3 = 0; i3 != v93; ++i3)
        {
          if (*v111 != v94)
          {
            objc_enumerationMutation(v91);
          }

          dictionaryRepresentation13 = [*(*(&v110 + 1) + 8 * i3) dictionaryRepresentation];
          [array13 addObject:dictionaryRepresentation13];
        }

        v93 = [(NSArray *)v91 countByEnumeratingWithState:&v110 objects:v163 count:16];
      }

      while (v93);
    }

    [dictionary setObject:array13 forKeyedSubscript:@"pairTemperatureValue"];
  }

  if ([(NSArray *)self->_pairUrlValues count])
  {
    array14 = [MEMORY[0x1E695DF70] array];
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    v109 = 0u;
    v98 = self->_pairUrlValues;
    v99 = [(NSArray *)v98 countByEnumeratingWithState:&v106 objects:v162 count:16];
    if (v99)
    {
      v100 = v99;
      v101 = *v107;
      do
      {
        for (i4 = 0; i4 != v100; ++i4)
        {
          if (*v107 != v101)
          {
            objc_enumerationMutation(v98);
          }

          dictionaryRepresentation14 = [*(*(&v106 + 1) + 8 * i4) dictionaryRepresentation];
          [array14 addObject:dictionaryRepresentation14];
        }

        v100 = [(NSArray *)v98 countByEnumeratingWithState:&v106 objects:v162 count:16];
      }

      while (v100);
    }

    [dictionary setObject:array14 forKeyedSubscript:@"pairUrlValue"];
  }

  if ([(_INPBPair *)self hasRepeated])
  {
    v104 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBPair repeated](self, "repeated")}];
    [dictionary setObject:v104 forKeyedSubscript:@"repeated"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v19 = [(NSString *)self->_key hash];
  v18 = [(NSArray *)self->_pairCurrencyAmountValues hash];
  v17 = [(NSArray *)self->_pairCustomObjects hash];
  v16 = [(NSArray *)self->_pairDataStrings hash];
  v15 = [(NSArray *)self->_pairDataValues hash];
  v14 = [(NSArray *)self->_pairDistanceValues hash];
  v3 = [(NSArray *)self->_pairDoubleValues hash];
  v4 = [(NSArray *)self->_pairImageValues hash];
  v5 = [(NSArray *)self->_pairIntegerValues hash];
  v6 = [(NSArray *)self->_pairLocationValues hash];
  v7 = [(NSArray *)self->_pairPaymentMethodValues hash];
  v8 = [(NSArray *)self->_pairPersonValues hash];
  v9 = [(NSArray *)self->_pairStringValues hash];
  v10 = [(NSArray *)self->_pairTemperatureValues hash];
  v11 = [(NSArray *)self->_pairUrlValues hash];
  if ([(_INPBPair *)self hasRepeated])
  {
    v12 = 2654435761 * self->_repeated;
  }

  else
  {
    v12 = 0;
  }

  return v18 ^ v19 ^ v17 ^ v16 ^ v15 ^ v14 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_77;
  }

  pairCurrencyAmountValues = [(_INPBPair *)self key];
  pairCurrencyAmountValues2 = [equalCopy key];
  if ((pairCurrencyAmountValues != 0) == (pairCurrencyAmountValues2 == 0))
  {
    goto LABEL_76;
  }

  v7 = [(_INPBPair *)self key];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBPair *)self key];
    v10 = [equalCopy key];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  pairCurrencyAmountValues = [(_INPBPair *)self pairCurrencyAmountValues];
  pairCurrencyAmountValues2 = [equalCopy pairCurrencyAmountValues];
  if ((pairCurrencyAmountValues != 0) == (pairCurrencyAmountValues2 == 0))
  {
    goto LABEL_76;
  }

  pairCurrencyAmountValues3 = [(_INPBPair *)self pairCurrencyAmountValues];
  if (pairCurrencyAmountValues3)
  {
    v13 = pairCurrencyAmountValues3;
    pairCurrencyAmountValues4 = [(_INPBPair *)self pairCurrencyAmountValues];
    pairCurrencyAmountValues5 = [equalCopy pairCurrencyAmountValues];
    v16 = [pairCurrencyAmountValues4 isEqual:pairCurrencyAmountValues5];

    if (!v16)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  pairCurrencyAmountValues = [(_INPBPair *)self pairCustomObjects];
  pairCurrencyAmountValues2 = [equalCopy pairCustomObjects];
  if ((pairCurrencyAmountValues != 0) == (pairCurrencyAmountValues2 == 0))
  {
    goto LABEL_76;
  }

  pairCustomObjects = [(_INPBPair *)self pairCustomObjects];
  if (pairCustomObjects)
  {
    v18 = pairCustomObjects;
    pairCustomObjects2 = [(_INPBPair *)self pairCustomObjects];
    pairCustomObjects3 = [equalCopy pairCustomObjects];
    v21 = [pairCustomObjects2 isEqual:pairCustomObjects3];

    if (!v21)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  pairCurrencyAmountValues = [(_INPBPair *)self pairDataStrings];
  pairCurrencyAmountValues2 = [equalCopy pairDataStrings];
  if ((pairCurrencyAmountValues != 0) == (pairCurrencyAmountValues2 == 0))
  {
    goto LABEL_76;
  }

  pairDataStrings = [(_INPBPair *)self pairDataStrings];
  if (pairDataStrings)
  {
    v23 = pairDataStrings;
    pairDataStrings2 = [(_INPBPair *)self pairDataStrings];
    pairDataStrings3 = [equalCopy pairDataStrings];
    v26 = [pairDataStrings2 isEqual:pairDataStrings3];

    if (!v26)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  pairCurrencyAmountValues = [(_INPBPair *)self pairDataValues];
  pairCurrencyAmountValues2 = [equalCopy pairDataValues];
  if ((pairCurrencyAmountValues != 0) == (pairCurrencyAmountValues2 == 0))
  {
    goto LABEL_76;
  }

  pairDataValues = [(_INPBPair *)self pairDataValues];
  if (pairDataValues)
  {
    v28 = pairDataValues;
    pairDataValues2 = [(_INPBPair *)self pairDataValues];
    pairDataValues3 = [equalCopy pairDataValues];
    v31 = [pairDataValues2 isEqual:pairDataValues3];

    if (!v31)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  pairCurrencyAmountValues = [(_INPBPair *)self pairDistanceValues];
  pairCurrencyAmountValues2 = [equalCopy pairDistanceValues];
  if ((pairCurrencyAmountValues != 0) == (pairCurrencyAmountValues2 == 0))
  {
    goto LABEL_76;
  }

  pairDistanceValues = [(_INPBPair *)self pairDistanceValues];
  if (pairDistanceValues)
  {
    v33 = pairDistanceValues;
    pairDistanceValues2 = [(_INPBPair *)self pairDistanceValues];
    pairDistanceValues3 = [equalCopy pairDistanceValues];
    v36 = [pairDistanceValues2 isEqual:pairDistanceValues3];

    if (!v36)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  pairCurrencyAmountValues = [(_INPBPair *)self pairDoubleValues];
  pairCurrencyAmountValues2 = [equalCopy pairDoubleValues];
  if ((pairCurrencyAmountValues != 0) == (pairCurrencyAmountValues2 == 0))
  {
    goto LABEL_76;
  }

  pairDoubleValues = [(_INPBPair *)self pairDoubleValues];
  if (pairDoubleValues)
  {
    v38 = pairDoubleValues;
    pairDoubleValues2 = [(_INPBPair *)self pairDoubleValues];
    pairDoubleValues3 = [equalCopy pairDoubleValues];
    v41 = [pairDoubleValues2 isEqual:pairDoubleValues3];

    if (!v41)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  pairCurrencyAmountValues = [(_INPBPair *)self pairImageValues];
  pairCurrencyAmountValues2 = [equalCopy pairImageValues];
  if ((pairCurrencyAmountValues != 0) == (pairCurrencyAmountValues2 == 0))
  {
    goto LABEL_76;
  }

  pairImageValues = [(_INPBPair *)self pairImageValues];
  if (pairImageValues)
  {
    v43 = pairImageValues;
    pairImageValues2 = [(_INPBPair *)self pairImageValues];
    pairImageValues3 = [equalCopy pairImageValues];
    v46 = [pairImageValues2 isEqual:pairImageValues3];

    if (!v46)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  pairCurrencyAmountValues = [(_INPBPair *)self pairIntegerValues];
  pairCurrencyAmountValues2 = [equalCopy pairIntegerValues];
  if ((pairCurrencyAmountValues != 0) == (pairCurrencyAmountValues2 == 0))
  {
    goto LABEL_76;
  }

  pairIntegerValues = [(_INPBPair *)self pairIntegerValues];
  if (pairIntegerValues)
  {
    v48 = pairIntegerValues;
    pairIntegerValues2 = [(_INPBPair *)self pairIntegerValues];
    pairIntegerValues3 = [equalCopy pairIntegerValues];
    v51 = [pairIntegerValues2 isEqual:pairIntegerValues3];

    if (!v51)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  pairCurrencyAmountValues = [(_INPBPair *)self pairLocationValues];
  pairCurrencyAmountValues2 = [equalCopy pairLocationValues];
  if ((pairCurrencyAmountValues != 0) == (pairCurrencyAmountValues2 == 0))
  {
    goto LABEL_76;
  }

  pairLocationValues = [(_INPBPair *)self pairLocationValues];
  if (pairLocationValues)
  {
    v53 = pairLocationValues;
    pairLocationValues2 = [(_INPBPair *)self pairLocationValues];
    pairLocationValues3 = [equalCopy pairLocationValues];
    v56 = [pairLocationValues2 isEqual:pairLocationValues3];

    if (!v56)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  pairCurrencyAmountValues = [(_INPBPair *)self pairPaymentMethodValues];
  pairCurrencyAmountValues2 = [equalCopy pairPaymentMethodValues];
  if ((pairCurrencyAmountValues != 0) == (pairCurrencyAmountValues2 == 0))
  {
    goto LABEL_76;
  }

  pairPaymentMethodValues = [(_INPBPair *)self pairPaymentMethodValues];
  if (pairPaymentMethodValues)
  {
    v58 = pairPaymentMethodValues;
    pairPaymentMethodValues2 = [(_INPBPair *)self pairPaymentMethodValues];
    pairPaymentMethodValues3 = [equalCopy pairPaymentMethodValues];
    v61 = [pairPaymentMethodValues2 isEqual:pairPaymentMethodValues3];

    if (!v61)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  pairCurrencyAmountValues = [(_INPBPair *)self pairPersonValues];
  pairCurrencyAmountValues2 = [equalCopy pairPersonValues];
  if ((pairCurrencyAmountValues != 0) == (pairCurrencyAmountValues2 == 0))
  {
    goto LABEL_76;
  }

  pairPersonValues = [(_INPBPair *)self pairPersonValues];
  if (pairPersonValues)
  {
    v63 = pairPersonValues;
    pairPersonValues2 = [(_INPBPair *)self pairPersonValues];
    pairPersonValues3 = [equalCopy pairPersonValues];
    v66 = [pairPersonValues2 isEqual:pairPersonValues3];

    if (!v66)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  pairCurrencyAmountValues = [(_INPBPair *)self pairStringValues];
  pairCurrencyAmountValues2 = [equalCopy pairStringValues];
  if ((pairCurrencyAmountValues != 0) == (pairCurrencyAmountValues2 == 0))
  {
    goto LABEL_76;
  }

  pairStringValues = [(_INPBPair *)self pairStringValues];
  if (pairStringValues)
  {
    v68 = pairStringValues;
    pairStringValues2 = [(_INPBPair *)self pairStringValues];
    pairStringValues3 = [equalCopy pairStringValues];
    v71 = [pairStringValues2 isEqual:pairStringValues3];

    if (!v71)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  pairCurrencyAmountValues = [(_INPBPair *)self pairTemperatureValues];
  pairCurrencyAmountValues2 = [equalCopy pairTemperatureValues];
  if ((pairCurrencyAmountValues != 0) == (pairCurrencyAmountValues2 == 0))
  {
    goto LABEL_76;
  }

  pairTemperatureValues = [(_INPBPair *)self pairTemperatureValues];
  if (pairTemperatureValues)
  {
    v73 = pairTemperatureValues;
    pairTemperatureValues2 = [(_INPBPair *)self pairTemperatureValues];
    pairTemperatureValues3 = [equalCopy pairTemperatureValues];
    v76 = [pairTemperatureValues2 isEqual:pairTemperatureValues3];

    if (!v76)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  pairCurrencyAmountValues = [(_INPBPair *)self pairUrlValues];
  pairCurrencyAmountValues2 = [equalCopy pairUrlValues];
  if ((pairCurrencyAmountValues != 0) == (pairCurrencyAmountValues2 == 0))
  {
LABEL_76:

    goto LABEL_77;
  }

  pairUrlValues = [(_INPBPair *)self pairUrlValues];
  if (pairUrlValues)
  {
    v78 = pairUrlValues;
    pairUrlValues2 = [(_INPBPair *)self pairUrlValues];
    pairUrlValues3 = [equalCopy pairUrlValues];
    v81 = [pairUrlValues2 isEqual:pairUrlValues3];

    if (!v81)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  hasRepeated = [(_INPBPair *)self hasRepeated];
  if (hasRepeated == [equalCopy hasRepeated])
  {
    if (!-[_INPBPair hasRepeated](self, "hasRepeated") || ![equalCopy hasRepeated] || (repeated = self->_repeated, repeated == objc_msgSend(equalCopy, "repeated")))
    {
      v82 = 1;
      goto LABEL_78;
    }
  }

LABEL_77:
  v82 = 0;
LABEL_78:

  return v82;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBPair allocWithZone:](_INPBPair init];
  v6 = [(NSString *)self->_key copyWithZone:zone];
  [(_INPBPair *)v5 setKey:v6];

  v7 = [(NSArray *)self->_pairCurrencyAmountValues copyWithZone:zone];
  [(_INPBPair *)v5 setPairCurrencyAmountValues:v7];

  v8 = [(NSArray *)self->_pairCustomObjects copyWithZone:zone];
  [(_INPBPair *)v5 setPairCustomObjects:v8];

  v9 = [(NSArray *)self->_pairDataStrings copyWithZone:zone];
  [(_INPBPair *)v5 setPairDataStrings:v9];

  v10 = [(NSArray *)self->_pairDataValues copyWithZone:zone];
  [(_INPBPair *)v5 setPairDataValues:v10];

  v11 = [(NSArray *)self->_pairDistanceValues copyWithZone:zone];
  [(_INPBPair *)v5 setPairDistanceValues:v11];

  v12 = [(NSArray *)self->_pairDoubleValues copyWithZone:zone];
  [(_INPBPair *)v5 setPairDoubleValues:v12];

  v13 = [(NSArray *)self->_pairImageValues copyWithZone:zone];
  [(_INPBPair *)v5 setPairImageValues:v13];

  v14 = [(NSArray *)self->_pairIntegerValues copyWithZone:zone];
  [(_INPBPair *)v5 setPairIntegerValues:v14];

  v15 = [(NSArray *)self->_pairLocationValues copyWithZone:zone];
  [(_INPBPair *)v5 setPairLocationValues:v15];

  v16 = [(NSArray *)self->_pairPaymentMethodValues copyWithZone:zone];
  [(_INPBPair *)v5 setPairPaymentMethodValues:v16];

  v17 = [(NSArray *)self->_pairPersonValues copyWithZone:zone];
  [(_INPBPair *)v5 setPairPersonValues:v17];

  v18 = [(NSArray *)self->_pairStringValues copyWithZone:zone];
  [(_INPBPair *)v5 setPairStringValues:v18];

  v19 = [(NSArray *)self->_pairTemperatureValues copyWithZone:zone];
  [(_INPBPair *)v5 setPairTemperatureValues:v19];

  v20 = [(NSArray *)self->_pairUrlValues copyWithZone:zone];
  [(_INPBPair *)v5 setPairUrlValues:v20];

  if ([(_INPBPair *)self hasRepeated])
  {
    [(_INPBPair *)v5 setRepeated:[(_INPBPair *)self repeated]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBPair *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBPair)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBPair *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v146 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v5 = [(_INPBPair *)self key];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  v6 = self->_pairCurrencyAmountValues;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v128 objects:v145 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v129;
    do
    {
      v10 = 0;
      do
      {
        if (*v129 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v128 objects:v145 count:16];
    }

    while (v8);
  }

  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v11 = self->_pairCustomObjects;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v124 objects:v144 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v125;
    do
    {
      v15 = 0;
      do
      {
        if (*v125 != v14)
        {
          objc_enumerationMutation(v11);
        }

        PBDataWriterWriteSubmessage();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v124 objects:v144 count:16];
    }

    while (v13);
  }

  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  v16 = self->_pairDataStrings;
  v17 = [(NSArray *)v16 countByEnumeratingWithState:&v120 objects:v143 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v121;
    do
    {
      v20 = 0;
      do
      {
        if (*v121 != v19)
        {
          objc_enumerationMutation(v16);
        }

        PBDataWriterWriteSubmessage();
        ++v20;
      }

      while (v18 != v20);
      v18 = [(NSArray *)v16 countByEnumeratingWithState:&v120 objects:v143 count:16];
    }

    while (v18);
  }

  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  v21 = self->_pairDataValues;
  v22 = [(NSArray *)v21 countByEnumeratingWithState:&v116 objects:v142 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v117;
    do
    {
      v25 = 0;
      do
      {
        if (*v117 != v24)
        {
          objc_enumerationMutation(v21);
        }

        PBDataWriterWriteSubmessage();
        ++v25;
      }

      while (v23 != v25);
      v23 = [(NSArray *)v21 countByEnumeratingWithState:&v116 objects:v142 count:16];
    }

    while (v23);
  }

  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  v26 = self->_pairDistanceValues;
  v27 = [(NSArray *)v26 countByEnumeratingWithState:&v112 objects:v141 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v113;
    do
    {
      v30 = 0;
      do
      {
        if (*v113 != v29)
        {
          objc_enumerationMutation(v26);
        }

        PBDataWriterWriteSubmessage();
        ++v30;
      }

      while (v28 != v30);
      v28 = [(NSArray *)v26 countByEnumeratingWithState:&v112 objects:v141 count:16];
    }

    while (v28);
  }

  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v31 = self->_pairDoubleValues;
  v32 = [(NSArray *)v31 countByEnumeratingWithState:&v108 objects:v140 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v109;
    do
    {
      v35 = 0;
      do
      {
        if (*v109 != v34)
        {
          objc_enumerationMutation(v31);
        }

        PBDataWriterWriteSubmessage();
        ++v35;
      }

      while (v33 != v35);
      v33 = [(NSArray *)v31 countByEnumeratingWithState:&v108 objects:v140 count:16];
    }

    while (v33);
  }

  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v36 = self->_pairImageValues;
  v37 = [(NSArray *)v36 countByEnumeratingWithState:&v104 objects:v139 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v105;
    do
    {
      v40 = 0;
      do
      {
        if (*v105 != v39)
        {
          objc_enumerationMutation(v36);
        }

        PBDataWriterWriteSubmessage();
        ++v40;
      }

      while (v38 != v40);
      v38 = [(NSArray *)v36 countByEnumeratingWithState:&v104 objects:v139 count:16];
    }

    while (v38);
  }

  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v41 = self->_pairIntegerValues;
  v42 = [(NSArray *)v41 countByEnumeratingWithState:&v100 objects:v138 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v101;
    do
    {
      v45 = 0;
      do
      {
        if (*v101 != v44)
        {
          objc_enumerationMutation(v41);
        }

        PBDataWriterWriteSubmessage();
        ++v45;
      }

      while (v43 != v45);
      v43 = [(NSArray *)v41 countByEnumeratingWithState:&v100 objects:v138 count:16];
    }

    while (v43);
  }

  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v46 = self->_pairLocationValues;
  v47 = [(NSArray *)v46 countByEnumeratingWithState:&v96 objects:v137 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = *v97;
    do
    {
      v50 = 0;
      do
      {
        if (*v97 != v49)
        {
          objc_enumerationMutation(v46);
        }

        PBDataWriterWriteSubmessage();
        ++v50;
      }

      while (v48 != v50);
      v48 = [(NSArray *)v46 countByEnumeratingWithState:&v96 objects:v137 count:16];
    }

    while (v48);
  }

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v51 = self->_pairPaymentMethodValues;
  v52 = [(NSArray *)v51 countByEnumeratingWithState:&v92 objects:v136 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = *v93;
    do
    {
      v55 = 0;
      do
      {
        if (*v93 != v54)
        {
          objc_enumerationMutation(v51);
        }

        PBDataWriterWriteSubmessage();
        ++v55;
      }

      while (v53 != v55);
      v53 = [(NSArray *)v51 countByEnumeratingWithState:&v92 objects:v136 count:16];
    }

    while (v53);
  }

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v56 = self->_pairPersonValues;
  v57 = [(NSArray *)v56 countByEnumeratingWithState:&v88 objects:v135 count:16];
  if (v57)
  {
    v58 = v57;
    v59 = *v89;
    do
    {
      v60 = 0;
      do
      {
        if (*v89 != v59)
        {
          objc_enumerationMutation(v56);
        }

        PBDataWriterWriteSubmessage();
        ++v60;
      }

      while (v58 != v60);
      v58 = [(NSArray *)v56 countByEnumeratingWithState:&v88 objects:v135 count:16];
    }

    while (v58);
  }

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v61 = self->_pairStringValues;
  v62 = [(NSArray *)v61 countByEnumeratingWithState:&v84 objects:v134 count:16];
  if (v62)
  {
    v63 = v62;
    v64 = *v85;
    do
    {
      v65 = 0;
      do
      {
        if (*v85 != v64)
        {
          objc_enumerationMutation(v61);
        }

        PBDataWriterWriteSubmessage();
        ++v65;
      }

      while (v63 != v65);
      v63 = [(NSArray *)v61 countByEnumeratingWithState:&v84 objects:v134 count:16];
    }

    while (v63);
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v66 = self->_pairTemperatureValues;
  v67 = [(NSArray *)v66 countByEnumeratingWithState:&v80 objects:v133 count:16];
  if (v67)
  {
    v68 = v67;
    v69 = *v81;
    do
    {
      v70 = 0;
      do
      {
        if (*v81 != v69)
        {
          objc_enumerationMutation(v66);
        }

        PBDataWriterWriteSubmessage();
        ++v70;
      }

      while (v68 != v70);
      v68 = [(NSArray *)v66 countByEnumeratingWithState:&v80 objects:v133 count:16];
    }

    while (v68);
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v71 = self->_pairUrlValues;
  v72 = [(NSArray *)v71 countByEnumeratingWithState:&v76 objects:v132 count:16];
  if (v72)
  {
    v73 = v72;
    v74 = *v77;
    do
    {
      v75 = 0;
      do
      {
        if (*v77 != v74)
        {
          objc_enumerationMutation(v71);
        }

        PBDataWriterWriteSubmessage();
        ++v75;
      }

      while (v73 != v75);
      v73 = [(NSArray *)v71 countByEnumeratingWithState:&v76 objects:v132 count:16];
    }

    while (v73);
  }

  if ([(_INPBPair *)self hasRepeated])
  {
    PBDataWriterWriteBOOLField();
  }
}

- (void)addPairUrlValue:(id)value
{
  valueCopy = value;
  pairUrlValues = self->_pairUrlValues;
  v8 = valueCopy;
  if (!pairUrlValues)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_pairUrlValues;
    self->_pairUrlValues = array;

    valueCopy = v8;
    pairUrlValues = self->_pairUrlValues;
  }

  [(NSArray *)pairUrlValues addObject:valueCopy];
}

- (void)setPairUrlValues:(id)values
{
  v4 = [values mutableCopy];
  pairUrlValues = self->_pairUrlValues;
  self->_pairUrlValues = v4;

  MEMORY[0x1EEE66BB8](v4, pairUrlValues);
}

- (void)addPairTemperatureValue:(id)value
{
  valueCopy = value;
  pairTemperatureValues = self->_pairTemperatureValues;
  v8 = valueCopy;
  if (!pairTemperatureValues)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_pairTemperatureValues;
    self->_pairTemperatureValues = array;

    valueCopy = v8;
    pairTemperatureValues = self->_pairTemperatureValues;
  }

  [(NSArray *)pairTemperatureValues addObject:valueCopy];
}

- (void)setPairTemperatureValues:(id)values
{
  v4 = [values mutableCopy];
  pairTemperatureValues = self->_pairTemperatureValues;
  self->_pairTemperatureValues = v4;

  MEMORY[0x1EEE66BB8](v4, pairTemperatureValues);
}

- (void)addPairStringValue:(id)value
{
  valueCopy = value;
  pairStringValues = self->_pairStringValues;
  v8 = valueCopy;
  if (!pairStringValues)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_pairStringValues;
    self->_pairStringValues = array;

    valueCopy = v8;
    pairStringValues = self->_pairStringValues;
  }

  [(NSArray *)pairStringValues addObject:valueCopy];
}

- (void)setPairStringValues:(id)values
{
  v4 = [values mutableCopy];
  pairStringValues = self->_pairStringValues;
  self->_pairStringValues = v4;

  MEMORY[0x1EEE66BB8](v4, pairStringValues);
}

- (void)addPairPersonValue:(id)value
{
  valueCopy = value;
  pairPersonValues = self->_pairPersonValues;
  v8 = valueCopy;
  if (!pairPersonValues)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_pairPersonValues;
    self->_pairPersonValues = array;

    valueCopy = v8;
    pairPersonValues = self->_pairPersonValues;
  }

  [(NSArray *)pairPersonValues addObject:valueCopy];
}

- (void)setPairPersonValues:(id)values
{
  v4 = [values mutableCopy];
  pairPersonValues = self->_pairPersonValues;
  self->_pairPersonValues = v4;

  MEMORY[0x1EEE66BB8](v4, pairPersonValues);
}

- (void)addPairPaymentMethodValue:(id)value
{
  valueCopy = value;
  pairPaymentMethodValues = self->_pairPaymentMethodValues;
  v8 = valueCopy;
  if (!pairPaymentMethodValues)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_pairPaymentMethodValues;
    self->_pairPaymentMethodValues = array;

    valueCopy = v8;
    pairPaymentMethodValues = self->_pairPaymentMethodValues;
  }

  [(NSArray *)pairPaymentMethodValues addObject:valueCopy];
}

- (void)setPairPaymentMethodValues:(id)values
{
  v4 = [values mutableCopy];
  pairPaymentMethodValues = self->_pairPaymentMethodValues;
  self->_pairPaymentMethodValues = v4;

  MEMORY[0x1EEE66BB8](v4, pairPaymentMethodValues);
}

- (void)addPairLocationValue:(id)value
{
  valueCopy = value;
  pairLocationValues = self->_pairLocationValues;
  v8 = valueCopy;
  if (!pairLocationValues)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_pairLocationValues;
    self->_pairLocationValues = array;

    valueCopy = v8;
    pairLocationValues = self->_pairLocationValues;
  }

  [(NSArray *)pairLocationValues addObject:valueCopy];
}

- (void)setPairLocationValues:(id)values
{
  v4 = [values mutableCopy];
  pairLocationValues = self->_pairLocationValues;
  self->_pairLocationValues = v4;

  MEMORY[0x1EEE66BB8](v4, pairLocationValues);
}

- (void)addPairIntegerValue:(id)value
{
  valueCopy = value;
  pairIntegerValues = self->_pairIntegerValues;
  v8 = valueCopy;
  if (!pairIntegerValues)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_pairIntegerValues;
    self->_pairIntegerValues = array;

    valueCopy = v8;
    pairIntegerValues = self->_pairIntegerValues;
  }

  [(NSArray *)pairIntegerValues addObject:valueCopy];
}

- (void)setPairIntegerValues:(id)values
{
  v4 = [values mutableCopy];
  pairIntegerValues = self->_pairIntegerValues;
  self->_pairIntegerValues = v4;

  MEMORY[0x1EEE66BB8](v4, pairIntegerValues);
}

- (void)addPairImageValue:(id)value
{
  valueCopy = value;
  pairImageValues = self->_pairImageValues;
  v8 = valueCopy;
  if (!pairImageValues)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_pairImageValues;
    self->_pairImageValues = array;

    valueCopy = v8;
    pairImageValues = self->_pairImageValues;
  }

  [(NSArray *)pairImageValues addObject:valueCopy];
}

- (void)setPairImageValues:(id)values
{
  v4 = [values mutableCopy];
  pairImageValues = self->_pairImageValues;
  self->_pairImageValues = v4;

  MEMORY[0x1EEE66BB8](v4, pairImageValues);
}

- (void)addPairDoubleValue:(id)value
{
  valueCopy = value;
  pairDoubleValues = self->_pairDoubleValues;
  v8 = valueCopy;
  if (!pairDoubleValues)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_pairDoubleValues;
    self->_pairDoubleValues = array;

    valueCopy = v8;
    pairDoubleValues = self->_pairDoubleValues;
  }

  [(NSArray *)pairDoubleValues addObject:valueCopy];
}

- (void)setPairDoubleValues:(id)values
{
  v4 = [values mutableCopy];
  pairDoubleValues = self->_pairDoubleValues;
  self->_pairDoubleValues = v4;

  MEMORY[0x1EEE66BB8](v4, pairDoubleValues);
}

- (void)addPairDistanceValue:(id)value
{
  valueCopy = value;
  pairDistanceValues = self->_pairDistanceValues;
  v8 = valueCopy;
  if (!pairDistanceValues)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_pairDistanceValues;
    self->_pairDistanceValues = array;

    valueCopy = v8;
    pairDistanceValues = self->_pairDistanceValues;
  }

  [(NSArray *)pairDistanceValues addObject:valueCopy];
}

- (void)setPairDistanceValues:(id)values
{
  v4 = [values mutableCopy];
  pairDistanceValues = self->_pairDistanceValues;
  self->_pairDistanceValues = v4;

  MEMORY[0x1EEE66BB8](v4, pairDistanceValues);
}

- (void)addPairDataValue:(id)value
{
  valueCopy = value;
  pairDataValues = self->_pairDataValues;
  v8 = valueCopy;
  if (!pairDataValues)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_pairDataValues;
    self->_pairDataValues = array;

    valueCopy = v8;
    pairDataValues = self->_pairDataValues;
  }

  [(NSArray *)pairDataValues addObject:valueCopy];
}

- (void)setPairDataValues:(id)values
{
  v4 = [values mutableCopy];
  pairDataValues = self->_pairDataValues;
  self->_pairDataValues = v4;

  MEMORY[0x1EEE66BB8](v4, pairDataValues);
}

- (void)addPairDataString:(id)string
{
  stringCopy = string;
  pairDataStrings = self->_pairDataStrings;
  v8 = stringCopy;
  if (!pairDataStrings)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_pairDataStrings;
    self->_pairDataStrings = array;

    stringCopy = v8;
    pairDataStrings = self->_pairDataStrings;
  }

  [(NSArray *)pairDataStrings addObject:stringCopy];
}

- (void)setPairDataStrings:(id)strings
{
  v4 = [strings mutableCopy];
  pairDataStrings = self->_pairDataStrings;
  self->_pairDataStrings = v4;

  MEMORY[0x1EEE66BB8](v4, pairDataStrings);
}

- (void)addPairCustomObject:(id)object
{
  objectCopy = object;
  pairCustomObjects = self->_pairCustomObjects;
  v8 = objectCopy;
  if (!pairCustomObjects)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_pairCustomObjects;
    self->_pairCustomObjects = array;

    objectCopy = v8;
    pairCustomObjects = self->_pairCustomObjects;
  }

  [(NSArray *)pairCustomObjects addObject:objectCopy];
}

- (void)setPairCustomObjects:(id)objects
{
  v4 = [objects mutableCopy];
  pairCustomObjects = self->_pairCustomObjects;
  self->_pairCustomObjects = v4;

  MEMORY[0x1EEE66BB8](v4, pairCustomObjects);
}

- (void)addPairCurrencyAmountValue:(id)value
{
  valueCopy = value;
  pairCurrencyAmountValues = self->_pairCurrencyAmountValues;
  v8 = valueCopy;
  if (!pairCurrencyAmountValues)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_pairCurrencyAmountValues;
    self->_pairCurrencyAmountValues = array;

    valueCopy = v8;
    pairCurrencyAmountValues = self->_pairCurrencyAmountValues;
  }

  [(NSArray *)pairCurrencyAmountValues addObject:valueCopy];
}

- (void)setPairCurrencyAmountValues:(id)values
{
  v4 = [values mutableCopy];
  pairCurrencyAmountValues = self->_pairCurrencyAmountValues;
  self->_pairCurrencyAmountValues = v4;

  MEMORY[0x1EEE66BB8](v4, pairCurrencyAmountValues);
}

- (void)setKey:(id)key
{
  v4 = [key copy];
  key = self->_key;
  self->_key = v4;

  MEMORY[0x1EEE66BB8](v4, key);
}

@end