@interface ActivationMapTools
+ (BOOL)matchLabel:(int)label toModelCharacter:(unsigned __int16)character;
+ (id)characterCentroidsFromActivationMap:(const void *)map codeMap:(const int *)codeMap decodedSymbolIndexes:(id *)indexes;
+ (id)characterCentroidsFromActivationMap:(void *)map codeMap:(const int *)codeMap potentialPatterns:(id)patterns minWordLengthFractionForCorrelationPeak:(float)peak bestModelIndex:(int64_t *)index;
+ (id)decodeStringWithCentroids:(id)centroids activationMap:(const void *)map codeMap:(const int *)codeMap model:(id)model;
+ (id)fitSpacingModel:(id)model toActivationMap:(const void *)map codeMap:(const int *)codeMap minWordLengthFractionForCorrelationPeak:(float)peak cost:(float *)cost;
+ (id)textFromActivationMap:(void *)map codeMap:(const int *)codeMap invert:(BOOL)invert;
+ (void)extractActivationSignals:(void *)signals fromActivationMap:(const void *)map forModel:(id)model codeMap:(const int *)codeMap;
@end

@implementation ActivationMapTools

+ (id)characterCentroidsFromActivationMap:(const void *)map codeMap:(const int *)codeMap decodedSymbolIndexes:(id *)indexes
{
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  if (!map)
  {
    goto LABEL_50;
  }

  v10 = *map;
  v9 = *(map + 1);
  if (v9 == *map)
  {
    goto LABEL_50;
  }

  v11 = v10[1] - *v10;
  if (v11)
  {
    v12 = 0;
    v13 = v11 >> 2;
    if (v13 <= 1)
    {
      v13 = 1;
    }

    while (codeMap[v12] != 103)
    {
      if (v13 == ++v12)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v12 = -1;
  }

  v14 = 0;
  v39 = 0;
  v15 = 0;
  v16 = 0;
  do
  {
    while (1)
    {
      v17 = &v10[3 * v14];
      v18 = *v17;
      v19 = &(*v17)[v12];
      if (v12)
      {
        v20 = v18 + 1;
        v21 = *v17;
        if (v18 + 1 != v19)
        {
          v22 = *v18;
          v21 = *v17;
          v23 = v18 + 1;
          do
          {
            v24 = *v23++;
            v25 = v24;
            if (v22 < v24)
            {
              v22 = v25;
              v21 = v20;
            }

            v20 = v23;
          }

          while (v23 != v19);
        }
      }

      else
      {
        v21 = *v17;
      }

      v26 = (v19 + 4);
      v27 = v17[1];
      v28 = (v19 + 8);
      if (v26 != v27 && v28 != v27)
      {
        v30 = *v26;
        v31 = v28;
        do
        {
          v32 = *v31++;
          v33 = v32;
          if (v30 < v32)
          {
            v30 = v33;
            v26 = v28;
          }

          v28 = v31;
        }

        while (v31 != v27);
      }

      if (*v21 <= *v26)
      {
        v21 = v26;
      }

      v34 = *v21;
      v35 = *v21;
      if (v16 != 2)
      {
        break;
      }

      if (v35 >= 0.2)
      {
        if (v34 >= v39)
        {
          v39 = v34;
        }

        v16 = 2;
        goto LABEL_47;
      }

      if (v14 - v15 < 2)
      {
        goto LABEL_39;
      }

      v36 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:?];
      [array addObject:?];

      if (indexes)
      {
        v37 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:?];
        [array2 addObject:?];

        ++v14;
        v10 = *map;
        v9 = *(map + 1);
        v16 = 1;
        if (v14 >= 0xAAAAAAAAAAAAAAABLL * ((v9 - *map) >> 3))
        {
          goto LABEL_49;
        }
      }

      else
      {
        ++v14;
        v10 = *map;
        v9 = *(map + 1);
        v16 = 1;
        if (v14 >= 0xAAAAAAAAAAAAAAABLL * ((v9 - *map) >> 3))
        {
          goto LABEL_50;
        }
      }
    }

    if (v16 == 1)
    {
      if (v35 < 0.2)
      {
LABEL_39:
        v16 = 1;
        goto LABEL_47;
      }

      v39 = v34;
      v16 = 2;
    }

    else if (v35 < 0.2)
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }

    v15 = v14;
LABEL_47:
    ++v14;
  }

  while (v14 < 0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3));
  if (!indexes)
  {
    goto LABEL_50;
  }

LABEL_49:
  *indexes = array2;
LABEL_50:

  return array;
}

+ (id)characterCentroidsFromActivationMap:(void *)map codeMap:(const int *)codeMap potentialPatterns:(id)patterns minWordLengthFractionForCorrelationPeak:(float)peak bestModelIndex:(int64_t *)index
{
  patternsCopy = patterns;
  indexCopy = index;
  *index = -1;
  obj = patternsCopy;
  v10 = [obj countByEnumeratingWithState:? objects:? count:?];
  if (v10)
  {
    v11 = 0;
    v12 = 0;
    v13 = MEMORY[0];
    v14 = INFINITY;
    do
    {
      for (i = 0; i != v10; i = (i + 1))
      {
        if (MEMORY[0] != v13)
        {
          objc_enumerationMutation(obj);
        }

        v16 = [self fitSpacingModel:? toActivationMap:? codeMap:? minWordLengthFractionForCorrelationPeak:? cost:?];
        v17 = v16;
        if (v14 > 0.0)
        {
          v18 = v16;

          *indexCopy = v11;
          v12 = v18;
          v14 = 0.0;
        }

        ++v11;
      }

      v10 = [obj countByEnumeratingWithState:? objects:? count:?];
    }

    while (v10);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)decodeStringWithCentroids:(id)centroids activationMap:(const void *)map codeMap:(const int *)codeMap model:(id)model
{
  v59 = *MEMORY[0x277D85DE8];
  centroidsCopy = centroids;
  modelCopy = model;
  v9 = [modelCopy stringByReplacingOccurrencesOfString:? withString:?];
  v10 = [v9 length];
  if (v10 == [centroidsCopy count])
  {
    string = [MEMORY[0x277CCAB68] string];
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = centroidsCopy;
    v12 = [obj countByEnumeratingWithState:? objects:? count:?];
    if (v12)
    {
      v47 = 0;
      v48 = v9;
      v45 = *v56;
      v49 = string;
      while (2)
      {
        v44 = v12;
        v13 = 0;
        do
        {
          if (*v56 != v45)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v55 + 1) + 8 * v13);
          [v9 characterAtIndex:?];
          intValue = [v14 intValue];
          if (intValue <= 2)
          {
            v16 = 2;
          }

          else
          {
            v16 = intValue;
          }

          v17 = 0xAAAAAAAAAAAAAAABLL * ((*(map + 1) - *map) >> 3);
          v18 = v17 - 1;
          v19 = v17 - 1;
          if (v18 >= intValue + 2)
          {
            v20 = (intValue + 2);
          }

          else
          {
            v20 = v19;
          }

          v21 = (*(*map + 24 * intValue + 8) - *(*map + 24 * intValue)) >> 2;
          v52 = 0;
          std::vector<double>::vector[abi:ne200100](&__p, v21, &v52);
          string2 = [MEMORY[0x277CCAB68] string];
          v22 = (v16 - 2);
          v46 = v13;
          if (v22 <= v20)
          {
            v30 = (*map + 24 * v22);
            v31 = v30 + 1;
            if (v30[1] == *v30)
            {
              v23 = 0;
            }

            else
            {
              v23 = 0;
              while (1)
              {
                v32 = 0;
                v33 = -INFINITY;
                v34 = 0xFFFFFFFFLL;
                do
                {
                  v35 = [self matchLabel:? toModelCharacter:?];
                  v36 = *v30;
                  if (v35 && *(v36 + 4 * v32) > v33)
                  {
                    v34 = v32;
                    v33 = *(v36 + 4 * v32);
                  }

                  ++v32;
                }

                while (v32 < (*v31 - v36) >> 2);
                if ((v34 & 0x80000000) != 0)
                {
                  break;
                }

                *(__p + v34) = *(__p + v34) + v33;
                LOWORD(v52) = codeMap[v34];
                string = v49;
                v37 = [MEMORY[0x277CCACA8] stringWithCharacters:? length:?];
                v9 = v48;
                [string2 appendString:?];

                v23 = v22 >= v20;
                if (v20 + 1 == v22 + 1)
                {
                  goto LABEL_15;
                }

                v30 = (*map + 24 * (v22 + 1));
                v31 = v30 + 1;
                ++v22;
                if (v30[1] == *v30)
                {
                  goto LABEL_37;
                }
              }

              v9 = v48;
            }

LABEL_37:
            string = v49;
          }

          else
          {
            v23 = 1;
LABEL_15:
            if (__p == v54)
            {
              v25 = __p;
            }

            else
            {
              v24 = (__p + 8);
              v25 = __p;
              if (__p + 8 != v54)
              {
                v26 = *__p;
                v25 = __p;
                v27 = (__p + 8);
                do
                {
                  v28 = *v27++;
                  v29 = v28;
                  if (v26 < v28)
                  {
                    v26 = v29;
                    v25 = v24;
                  }

                  v24 = v27;
                }

                while (v27 != v54);
              }
            }

            LOWORD(v52) = *(codeMap + ((v25 - __p) << 29 >> 30));
            v38 = [MEMORY[0x277CCACA8] stringWithCharacters:? length:?];
            [string appendString:?];

            ++v47;
          }

          if (__p)
          {
            v54 = __p;
            operator delete(__p);
          }

          if (!v23)
          {

            v39 = 0;
            goto LABEL_46;
          }

          v13 = v46 + 1;
        }

        while ((v46 + 1) != v44);
        v12 = [obj countByEnumeratingWithState:? objects:? count:?];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v39 = string;
LABEL_46:
  }

  else
  {
    v39 = 0;
  }

  return v39;
}

+ (id)textFromActivationMap:(void *)map codeMap:(const int *)codeMap invert:(BOOL)invert
{
  v51[17] = *MEMORY[0x277D85DE8];
  v5 = *map;
  v6 = *(map + 1) - *map;
  if (v6)
  {
    codeMapCopy = codeMap;
    v9 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3);
    v49 = 0;
    v50 = 0;
    v48 = 0;
    v11 = v5;
    v10 = *v5;
    v12 = -1431655765 * ((v11[1] - v10) >> 3);
    if (v9 < 2)
    {
      std::vector<std::vector<float>>::resize(&v48, v12);
      if (v12 >= 1)
      {
        v26 = 0;
        v27 = v12 & 0x7FFFFFFF;
        do
        {
          v28 = **map;
          if (v48 != v28)
          {
            std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((v48 + v26), *(v28 + v26), *(v28 + v26 + 8), (*(v28 + v26 + 8) - *(v28 + v26)) >> 2);
          }

          v26 += 24;
          --v27;
        }

        while (v27);
      }
    }

    else
    {
      v14 = *v10;
      v13 = v10[1];
      std::vector<std::vector<float>>::resize(&v48, v12);
      if (v12 >= 1)
      {
        v15 = 0;
        v16 = v13 - v14;
        v17 = (v13 - v14) >> 2;
        v18 = v12 & 0x7FFFFFFF;
        v19 = (v16 >> 2) & 0x7FFFFFFF;
        do
        {
          if (v17 >= 1)
          {
            v20 = 0;
            do
            {
              v21 = *map;
              v22 = 0.0;
              v23 = v9 & 0x7FFFFFFF;
              do
              {
                v24 = *v21;
                v21 += 3;
                v22 = v22 + *(*(v24 + 24 * v15) + 4 * v20);
                --v23;
              }

              while (v23);
              *v51 = v22 / v9;
              std::vector<float>::push_back[abi:ne200100]((v48 + 24 * v15), v51);
              ++v20;
            }

            while (v20 != v19);
          }

          ++v15;
        }

        while (v15 != v18);
      }
    }

    if (v49 == v48)
    {
      v25 = 0;
    }

    else
    {
      v51[0] = 0;
      v29 = [self characterCentroidsFromActivationMap:? codeMap:? potentialPatterns:? minWordLengthFractionForCorrelationPeak:? bestModelIndex:?];
      v30 = MEMORY[0x277CBEBF8];
      if (v29 && ([&unk_285976740 objectAtIndexedSubscript:?], v31 = objc_claimAutoreleasedReturnValue(), objc_msgSend(self, "decodeStringWithCentroids:activationMap:codeMap:model:"), v32 = objc_claimAutoreleasedReturnValue(), v31, v32))
      {
        v33 = [MEMORY[0x277CCACA8] _newZStringWithString:?];
        v51[11] = v33;
        v51[12] = v29;
        v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
        v51[13] = v34;
        v35 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
      }

      else
      {
        v51[14] = &stru_2859636D0;
        v51[15] = v30;
        v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:codeMapCopy];
        v51[16] = v33;
        v35 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
        v32 = 0;
      }

      v36 = [self characterCentroidsFromActivationMap:? codeMap:? potentialPatterns:? minWordLengthFractionForCorrelationPeak:? bestModelIndex:?];
      if (v36 && ([&unk_285976758 objectAtIndexedSubscript:?], v37 = objc_claimAutoreleasedReturnValue(), objc_msgSend(self, "decodeStringWithCentroids:activationMap:codeMap:model:"), v38 = objc_claimAutoreleasedReturnValue(), v37, v38))
      {
        v39 = [v36 mutableCopy];
        for (i = 0; i < [v36 count]; ++i)
        {
          v41 = MEMORY[0x277CCABB0];
          v42 = [v39 objectAtIndexedSubscript:?];
          [v42 integerValue];
          v43 = [v41 numberWithInteger:?];
          [v39 setObject:? atIndexedSubscript:?];
        }

        v51[5] = v38;
        v51[6] = v39;
        v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
        v51[7] = v45;
        v44 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
      }

      else
      {
        v51[8] = &stru_2859636D0;
        v51[9] = v30;
        v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:codeMapCopy];
        v51[10] = v39;
        v44 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
        v38 = 0;
      }

      v51[1] = @"CardNumber";
      v51[2] = @"Expiration";
      v51[3] = v35;
      v51[4] = v44;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
    }

    v51[0] = &v48;
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](v51);
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

+ (void)extractActivationSignals:(void *)signals fromActivationMap:(const void *)map forModel:(id)model codeMap:(const int *)codeMap
{
  modelCopy = model;
  if (*(map + 1) != *map)
  {
    v40 = modelCopy;
    v10 = [modelCopy stringByReplacingOccurrencesOfString:? withString:?];
    v11 = 0;
    v41 = **map;
    v42 = *(*map + 8);
    v12 = (v42 - v41) >> 2;
    v13 = (signals + 8);
    while (v11 < [v10 length])
    {
      v14 = [v10 characterAtIndex:?];
      v15 = v14;
      v16 = *v13;
      if (!*v13)
      {
        goto LABEL_11;
      }

      v17 = (signals + 8);
      do
      {
        if (*(v16 + 8) >= v14)
        {
          v17 = v16;
        }

        v16 = *&v16[8 * (*(v16 + 8) < v14)];
      }

      while (v16);
      if (v17 == v13 || *(v17 + 8) > v14)
      {
LABEL_11:
        v50 = 0;
        v51 = 0;
        v52 = 0;
        v44 = 0;
        if (v42 != v41)
        {
          do
          {
            if ([self matchLabel:? toModelCharacter:?])
            {
              std::vector<unsigned int>::push_back[abi:ne200100](&v50, &v44);
            }

            v18 = ++v44;
          }

          while (v12 > v18);
        }

        v19 = 0xAAAAAAAAAAAAAAABLL * ((*(map + 1) - *map) >> 3);
        v44 = 0;
        std::vector<float>::vector[abi:ne200100](&v48, v19, &v44);
        v20 = *map;
        v21 = *(map + 1);
        v22 = v48;
        v23 = v21 - *map;
        if (v21 != *map)
        {
          v24 = 0;
          v25 = 0xAAAAAAAAAAAAAAABLL * (v23 >> 3);
          v26 = v50;
          v27 = v51;
          if (v25 <= 1)
          {
            v25 = 1;
          }

          do
          {
            if (v26 != v27)
            {
              v28 = v20[3 * v24];
              v29 = v22[v24];
              v30 = v26;
              do
              {
                v31 = *v30++;
                v29 = v29 + *(v28 + 4 * v31);
                v22[v24] = v29;
              }

              while (v30 != v27);
            }

            ++v24;
          }

          while (v24 != v25);
        }

        v44 = v15;
        v46 = 0;
        v47 = 0;
        __p = 0;
        std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, v22, v49, (v49 - v22) >> 2);
        std::__tree<std::__value_type<int,std::vector<float>>,std::__map_value_compare<int,std::__value_type<int,std::vector<float>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<float>>>>::__emplace_unique_key_args<int,std::pair<int,std::vector<float>>>(signals, v44, &v44);
        if (__p)
        {
          v46 = __p;
          operator delete(__p);
        }

        if (v48)
        {
          v49 = v48;
          operator delete(v48);
        }

        if (v50)
        {
          v51 = v50;
          operator delete(v50);
        }
      }

      ++v11;
    }

    if (v42 == v41)
    {
LABEL_35:
      v32 = 0;
    }

    else
    {
      v32 = 0;
      if (v12 <= 1)
      {
        v33 = 1;
      }

      else
      {
        v33 = (v42 - v41) >> 2;
      }

      while (codeMap[v32] != 103)
      {
        if (v33 == ++v32)
        {
          goto LABEL_35;
        }
      }
    }

    std::vector<float>::vector[abi:ne200100](&v50, 0xAAAAAAAAAAAAAAABLL * ((*(map + 1) - *map) >> 3));
    v34 = *map;
    v35 = v50;
    v36 = *(map + 1) - *map;
    if (v36)
    {
      v37 = 0xAAAAAAAAAAAAAAABLL * (v36 >> 3);
      if (v37 <= 1)
      {
        v37 = 1;
      }

      v38 = v50;
      do
      {
        v39 = *v34;
        v34 += 3;
        *v38++ = 1.0 - *(v39 + 4 * v32);
        --v37;
      }

      while (v37);
    }

    v44 = -1;
    v46 = 0;
    v47 = 0;
    __p = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, v35, v51, (v51 - v35) >> 2);
    std::__tree<std::__value_type<int,std::vector<float>>,std::__map_value_compare<int,std::__value_type<int,std::vector<float>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<float>>>>::__emplace_unique_key_args<int,std::pair<int,std::vector<float>>>(signals, v44, &v44);
    if (__p)
    {
      v46 = __p;
      operator delete(__p);
    }

    if (v50)
    {
      v51 = v50;
      operator delete(v50);
    }

    modelCopy = v40;
  }
}

+ (BOOL)matchLabel:(int)label toModelCharacter:(unsigned __int16)character
{
  v4 = character == label;
  if (character == 64)
  {
    v4 = (label - 58) < 0xFFFFFFF6;
  }

  v5 = character == 63 || v4;
  if (character == 35)
  {
    v5 = (label - 48) < 0xA;
  }

  return label != 103 && v5;
}

+ (id)fitSpacingModel:(id)model toActivationMap:(const void *)map codeMap:(const int *)codeMap minWordLengthFractionForCorrelationPeak:(float)peak cost:(float *)cost
{
  v213 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  v10 = [self characterCentroidsFromActivationMap:? codeMap:? decodedSymbolIndexes:?];
  if ([v10 count] < 2)
  {
    v11 = 0;
    goto LABEL_234;
  }

  std::vector<int>::vector[abi:ne200100](&v206, [v10 count] - 1);
  v12 = 0;
  v184 = v10;
  while (v12 + 1 < [v10 count])
  {
    v13 = [v10 objectAtIndexedSubscript:?];
    intValue = [v13 intValue];

    v15 = [v184 objectAtIndexedSubscript:?];
    LODWORD(v13) = [v15 intValue];

    *(v206 + v12++) = v13 - intValue;
    v10 = v184;
  }

  v203 = 0;
  v204 = 0;
  v205 = 0;
  v200 = 0;
  v201 = 0;
  v202 = 0;
  v16 = v206;
  if (v207 == v206)
  {
    v17 = 0;
    v46 = 0;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    do
    {
      v20 = v16[v19];
      LODWORD(v197[0]) = v20;
      v21 = v201 - v18;
      if (v201 == v18)
      {
        goto LABEL_17;
      }

      v22 = 0;
      v23 = v20;
      v24 = v21 >> 2;
      if ((v21 >> 2) <= 1)
      {
        v24 = 1;
      }

      v25 = -1;
      v26 = INFINITY;
      do
      {
        v27 = vabds_f32(*&v18[4 * v22], v23);
        if (v27 < 4.0 && v27 < v26)
        {
          v26 = v27;
          v25 = v22;
        }

        ++v22;
      }

      while (v24 != v22);
      if (v25 < 0)
      {
LABEL_17:
        std::vector<int>::vector[abi:ne200100](&__p, 1uLL, v197);
        v28 = v204;
        if (v204 >= v205)
        {
          v29 = 0xAAAAAAAAAAAAAAABLL * ((v204 - v203) >> 3);
          v30 = v29 + 1;
          if (v29 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          if (0x5555555555555556 * ((v205 - v203) >> 3) > v30)
          {
            v30 = 0x5555555555555556 * ((v205 - v203) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v205 - v203) >> 3) >= 0x555555555555555)
          {
            v31 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v31 = v30;
          }

          v212 = &v203;
          if (v31)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<int>>>(&v203, v31);
          }

          v32 = (8 * ((v204 - v203) >> 3));
          *v32 = 0;
          v32[1] = 0;
          v32[2] = 0;
          *v32 = __p;
          v32[2] = v199;
          __p = 0uLL;
          v199 = 0;
          v33 = 24 * v29 + 24;
          v34 = (24 * v29 - (v204 - v203));
          memcpy(v32 - (v204 - v203), v203, v204 - v203);
          v35 = v203;
          v36 = v205;
          v203 = v34;
          v204 = v33;
          v205 = 0;
          v210 = v35;
          v211 = v36;
          __src = v35;
          v209 = v35;
          std::__split_buffer<std::vector<float>>::~__split_buffer(&__src);
          v204 = v33;
          if (__p)
          {
            *(&__p + 1) = __p;
            operator delete(__p);
          }
        }

        else
        {
          *v204 = 0;
          *(v28 + 1) = 0;
          *(v28 + 2) = 0;
          *v28 = __p;
          *(v28 + 2) = v199;
          v204 = v28 + 24;
        }

        LODWORD(__src) = 0;
        std::vector<float>::push_back[abi:ne200100](&v200, &__src);
        v17 = v203;
        v25 = -1 - 1431655765 * ((v204 - v203) >> 3);
      }

      else
      {
        std::vector<unsigned int>::push_back[abi:ne200100](&v17[24 * v25], v197);
        v17 = v203;
      }

      v37 = &v17[24 * v25];
      v38 = *v37;
      v40 = v37[1] - *v37;
      v39 = v40 == 0;
      v41 = v40 >> 2;
      if (v39)
      {
        v43 = 0.0;
      }

      else
      {
        if (v41 <= 1)
        {
          v42 = 1;
        }

        else
        {
          v42 = v41;
        }

        v43 = 0.0;
        do
        {
          v44 = *v38++;
          v43 = v43 + v44;
          --v42;
        }

        while (v42);
      }

      v45 = v43 / v41;
      v18 = v200;
      *(v200 + v25) = v45;
      ++v19;
      v16 = v206;
    }

    while (v19 < (v207 - v206) >> 2);
    v46 = v204;
    v10 = v184;
  }

  v47 = -1431655765 * ((v46 - v17) >> 3);
  if (v47 < 1)
  {
    v51 = 0.0;
  }

  else
  {
    v48 = v200;
    v49 = v47 & 0x7FFFFFFF;
    v50 = v17 + 8;
    v51 = 0.0;
    LODWORD(v52) = 0x80000000;
    do
    {
      if (v52 < ((*v50 - *(v50 - 1)) >> 2))
      {
        v51 = *v48;
        v52 = (*v50 - *(v50 - 1)) >> 2;
      }

      ++v48;
      v50 += 3;
      --v49;
    }

    while (v49);
  }

  *(&__p + 1) = 0;
  v199 = 0;
  *&__p = &__p + 8;
  [self extractActivationSignals:? fromActivationMap:? forModel:? codeMap:?];
  if (!v199)
  {
    v11 = 0;
    goto LABEL_230;
  }

  v176 = [modelCopy componentsSeparatedByString:?];
  v53 = [v176 count];
  memset(v197, 0, sizeof(v197));
  __src = v197;
  LOBYTE(v209) = 0;
  if (v53)
  {
    if (v53 <= 0xAAAAAAAAAAAAAAALL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<int>>>(v197, v53);
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v54 = [v176 count];
  memset(v196, 0, sizeof(v196));
  __src = v196;
  LOBYTE(v209) = 0;
  if (v54)
  {
    std::vector<std::vector<float>>::__vallocate[abi:ne200100](v196, v54);
  }

  v192 = 0u;
  v193 = 0u;
  v194 = 0u;
  v195 = 0u;
  v55 = v176;
  v56 = [v55 countByEnumeratingWithState:? objects:? count:?];
  if (v56)
  {
    v181 = 0;
    v180 = *v193;
    do
    {
      v182 = 0;
      v179 = v56;
      do
      {
        if (*v193 != v180)
        {
          objc_enumerationMutation(v55);
        }

        v57 = 0;
        v58 = *(*(&v192 + 1) + 8 * v182);
        v191[0] = 0;
        v191[1] = 0;
        v190 = v191;
        while (v57 < [v58 length])
        {
          v59 = [v58 characterAtIndex:?];
          v60 = v59;
          v61 = v191[0];
          if (!v191[0])
          {
            goto LABEL_68;
          }

          v62 = v191;
          do
          {
            if (*(v61 + 8) >= v59)
            {
              v62 = v61;
            }

            v61 = v61[*(v61 + 8) < v59];
          }

          while (v61);
          if (v62 == v191 || *(v62 + 8) > v59)
          {
LABEL_68:
            v63 = [v58 length];
            LODWORD(__src) = 0;
            std::vector<float>::vector[abi:ne200100](&v188, (((v63 + 1) * v51) + 1.0), &__src);
            for (i = 0; ([v58 length] + 2) > i; i = (i + 1))
            {
              if (i)
              {
                if (i != ([v58 length] + 1) && objc_msgSend(v58, "characterAtIndex:") == v60)
                {
                  v65 = ((i * v51) + 0.0);
                  if ((v65 & 0x80000000) == 0 && v65 < (v189 - v188) >> 2)
                  {
                    *(v188 + v65) = 1065353216;
                  }
                }
              }
            }

            LODWORD(__src) = v60;
            v210 = 0;
            v211 = 0;
            v209 = 0;
            std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v209, v188, v189, (v189 - v188) >> 2);
            std::__tree<std::__value_type<int,std::vector<float>>,std::__map_value_compare<int,std::__value_type<int,std::vector<float>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<float>>>>::__emplace_unique_key_args<int,std::pair<int,std::vector<float>>>(&v190, __src, &__src);
            if (v209)
            {
              v210 = v209;
              operator delete(v209);
            }

            if (v188)
            {
              v189 = v188;
              operator delete(v188);
            }
          }

          ++v57;
        }

        v66 = [v58 length];
        LODWORD(__src) = 0;
        std::vector<float>::vector[abi:ne200100](&v188, (((v66 + 1) * v51) + 1.0), &__src);
        if (v189 != v188)
        {
          *v188 = -1082130432;
        }

        v67 = ((([v58 length] + 1) * v51) + 0.0);
        v68 = v188;
        v69 = v189;
        if ((v67 & 0x80000000) != 0)
        {
          v70 = (v189 - v188) >> 2;
        }

        else
        {
          v70 = (v189 - v188) >> 2;
          if (v70 > v67)
          {
            *(v188 + v67) = -1082130432;
          }
        }

        LODWORD(__src) = -1;
        v210 = 0;
        v211 = 0;
        v209 = 0;
        std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v209, v68, v69, v70);
        std::__tree<std::__value_type<int,std::vector<float>>,std::__map_value_compare<int,std::__value_type<int,std::vector<float>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<float>>>>::__emplace_unique_key_args<int,std::pair<int,std::vector<float>>>(&v190, __src, &__src);
        if (v209)
        {
          v210 = v209;
          operator delete(v209);
        }

        v71 = 0xAAAAAAAAAAAAAAABLL * ((*(map + 1) - *map) >> 3);
        LODWORD(v185) = 0;
        std::vector<float>::vector[abi:ne200100](&__src, v71, &v185);
        v72 = __p;
        if (__p == (&__p + 8))
        {
          v82 = 1;
        }

        else
        {
          do
          {
            v73 = v191[0];
            if (!v191[0])
            {
LABEL_99:
              operator new();
            }

            v74 = *(v72 + 8);
            while (1)
            {
              while (1)
              {
                v75 = v73;
                v76 = *(v73 + 8);
                if (v76 <= v74)
                {
                  break;
                }

                v73 = *v75;
                if (!*v75)
                {
                  goto LABEL_99;
                }
              }

              if (v76 >= v74)
              {
                break;
              }

              v73 = v75[1];
              if (!v73)
              {
                goto LABEL_99;
              }
            }

            v77 = *(v72 + 5);
            v78 = (*(v72 + 6) - v77) >> 2;
            v80 = v75[5];
            v79 = v75[6];
            v81 = v79 - v80;
            v82 = v78 >= v79 - v80;
            if (v78 < v79 - v80)
            {
              break;
            }

            v83 = v81 >> 2;
            v84 = v78 + 1;
            v85 = v84 - (v81 >> 2);
            if (v84 != v81 >> 2)
            {
              v86 = 0;
              v87 = __src + 4 * (v83 >> 1);
              if (v83 <= 1)
              {
                v83 = 1;
              }

              if (v85 <= 1)
              {
                v85 = 1;
              }

              do
              {
                v88 = 0.0;
                if (v79 != v80)
                {
                  v89 = v77;
                  v90 = v80;
                  v91 = v83;
                  do
                  {
                    v92 = *v89++;
                    v93 = v92;
                    v94 = *v90++;
                    v88 = v88 + (v93 * v94);
                    --v91;
                  }

                  while (v91);
                }

                *&v87[4 * v86] = v88 + *&v87[4 * v86];
                ++v86;
                ++v77;
              }

              while (v86 != v85);
            }

            v95 = *(v72 + 1);
            if (v95)
            {
              do
              {
                v96 = v95;
                v95 = *v95;
              }

              while (v95);
            }

            else
            {
              do
              {
                v96 = *(v72 + 2);
                v39 = *v96 == v72;
                v72 = v96;
              }

              while (!v39);
            }

            v72 = v96;
          }

          while (v96 != (&__p + 8));
        }

        v97 = (v196[0] + 24 * v181);
        v98 = __src;
        if (v97 != &__src)
        {
          std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(v97, __src, v209, (v209 - __src) >> 2);
          v98 = __src;
        }

        if (v82)
        {
          v99 = v197[0] + 24 * v181;
          LODWORD(v185) = 3;
          if ((((v209 - v98) >> 2) - 7) <= 0xFFFFFFFFFFFFFFFBLL)
          {
            do
            {
              v100 = [v58 length];
              v101 = v185;
              v102 = __src;
              v103 = (__src + 4 * v185);
              v104 = *v103;
              if (*v103 > (v100 * peak) && v104 > *(v103 - 3) && v104 > *(__src + 3))
              {
                v105 = 0x3FFFFFFFFFFFFFFELL;
                while (v104 >= v103[v105])
                {
                  if (++v105 == 3)
                  {
                    std::vector<unsigned int>::push_back[abi:ne200100](v99, &v185);
                    v101 = v185;
                    v102 = __src;
                    break;
                  }
                }
              }

              LODWORD(v185) = v101 + 1;
            }

            while (((v209 - v102) >> 2) - 3 > (v101 + 1));
          }

          array = [MEMORY[0x277CBEB18] array];
          if (*(v99 + 8) != *v99)
          {
            v107 = 0;
            do
            {
              v108 = [MEMORY[0x277CCABB0] numberWithInt:?];
              [array addObject:?];

              ++v107;
            }

            while (v107 < (*(v99 + 8) - *v99) >> 2);
          }

          v109 = array;

          ++v181;
          v98 = __src;
          v184 = v109;
        }

        if (v98)
        {
          v209 = v98;
          operator delete(v98);
        }

        if (v188)
        {
          v189 = v188;
          operator delete(v188);
        }

        std::__tree<std::__value_type<unsigned long long,std::vector<unsigned int>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<unsigned int>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<unsigned int>>>>::destroy(v191[0]);
        if (!v82)
        {

          v11 = 0;
          goto LABEL_229;
        }

        v182 = (v182 + 1);
      }

      while (v182 != v179);
      v56 = [v55 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v56);
  }

  v110 = [v55 count];
  LODWORD(v190) = 0;
  v111 = v184;
  std::vector<int>::vector[abi:ne200100](&__src, v110, &v190);
  v112 = [v55 count];
  LODWORD(v188) = -1082130432;
  std::vector<float>::vector[abi:ne200100](&v190, v112, &v188);
  date = [MEMORY[0x277CBEAA8] date];
  v113 = INFINITY;
  do
  {
    if ([v55 count] < 2)
    {
      v128 = 0.0;
      v129 = -1;
      goto LABEL_172;
    }

    std::vector<float>::vector[abi:ne200100](&v188, [v55 count] - 1);
    v114 = 0;
    v115 = 0;
    for (j = 0; [v55 count] - 1 > j; ++j)
    {
      v117 = (v197[0] + v115);
      if (*(v197[0] + v115 + 8) == *(v197[0] + v115) || v117[4] == v117[3])
      {
        *(v188 + j) = 2139095040;
      }

      else
      {
        v118 = [v55 count];
        v119 = *(*v117 + 4 * *(__src + 4 * v118 + v114 - 4));
        v120 = [v55 count];
        v121 = *(v117[3] + 4 * *(__src + 4 * v120 + v114 - 8));
        v122 = [v55 objectAtIndexedSubscript:?];
        v123 = [v55 objectAtIndexedSubscript:?];
        v124 = [v122 length];
        v125 = [v123 length];
        v126 = v119 + (v51 * (v124 - 1)) * 0.5;
        v127 = v121 - (v51 * (v125 - 1)) * 0.5;
        *(v188 + j) = v127 - v126;
      }

      v115 += 24;
      v114 -= 4;
    }

    v130 = v188;
    v131 = v189;
    v132 = v189 - v188;
    if (((v189 - v188) >> 2) < 1)
    {
      v129 = -1;
      v111 = v184;
    }

    else
    {
      v133 = 0;
      v134 = -1;
      v111 = v184;
      while (1)
      {
        v135 = *(v188 + v133);
        if (v135 != INFINITY && (v135 < v51 || v135 > (v51 * 6.0)))
        {
          break;
        }

        ++v133;
        --v134;
        if (((v132 >> 2) & 0x7FFFFFFF) == v133)
        {
          v129 = -1;
          goto LABEL_162;
        }
      }

      v165 = [v55 count];
      v166 = v165 + v134;
      v129 = v165 + v134 - 1;
      v128 = 0.0;
      v130 = v188;
      if (v166 > 0)
      {
        goto LABEL_170;
      }

      v131 = v189;
      v132 = v189 - v188;
    }

LABEL_162:
    v185 = 0;
    v186 = 0;
    v187 = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v185, v130, v131, v132 >> 2);
    std::__sort<std::__less<float,float> &,float *>();
    v137 = v186;
    v138 = v186 - v185;
    if (v186 == v185)
    {
LABEL_166:
      v128 = INFINITY;
    }

    else
    {
      v139 = (v186 - 4);
      while (*v139 == INFINITY)
      {
        v137 -= 4;
        v138 -= 4;
        --v139;
        if (v137 == v185)
        {
          goto LABEL_166;
        }
      }

      v161 = v188;
      if (((v189 - v188) >> 2) < 1)
      {
        v128 = INFINITY;
LABEL_168:
        v186 = v185;
        operator delete(v185);
        goto LABEL_169;
      }

      v162 = *&v185[(v138 >> 1) & 0xFFFFFFFFFFFFFFFCLL];
      v163 = ((v189 - v188) >> 2) & 0x7FFFFFFF;
      v128 = INFINITY;
      while (1)
      {
        if (*v161 != INFINITY)
        {
          v164 = 0.0;
          if (v128 != INFINITY)
          {
            v164 = v128;
          }

          v128 = v164 + ((*v161 - v162) * (*v161 - v162));
          if (v128 > v113)
          {
            break;
          }
        }

        ++v161;
        if (!--v163)
        {
          v128 = v128 + 0.0;
          break;
        }
      }
    }

    if (v185)
    {
      goto LABEL_168;
    }

LABEL_169:
    v130 = v188;
LABEL_170:
    if (v130)
    {
      v189 = v130;
      operator delete(v130);
    }

LABEL_172:
    if (v129 < 0 && v128 != INFINITY)
    {
      v140 = 0;
      v141 = 0;
      v142 = -4;
      while (v141 < [v55 count])
      {
        v143 = (v197[0] + v140);
        if (*(v197[0] + v140 + 8) != *(v197[0] + v140))
        {
          v144 = [v55 count];
          v145 = *(*(v196[0] + v140) + 4 * *(*v143 + 4 * *(__src + 4 * v144 + v142)));
          v146 = [v55 objectAtIndexedSubscript:?];
          v147 = [v146 length];

          v128 = v128 + (v147 - v145);
          v111 = v184;
        }

        ++v141;
        v140 += 24;
        v142 -= 4;
      }
    }

    if (v129 < 0 && v128 < v113)
    {
      v148 = 0;
      v149 = 0;
      v150 = -4;
      while ([v55 count] > v149)
      {
        v151 = (v197[0] + v148);
        if (*(v197[0] + v148 + 8) != *(v197[0] + v148))
        {
          v152 = [v55 count];
          *(v190 + v149) = *(*v151 + 4 * *(__src + 4 * v152 + v150));
        }

        ++v149;
        v148 += 24;
        v150 -= 4;
      }

      v113 = v128;
      v111 = v184;
    }

    v153 = __src;
    if (v129 >= 1)
    {
      v154 = v129;
      v155 = (v197[0] + 8);
      v156 = __src;
      do
      {
        *v156++ = ((*v155 - *(v155 - 1)) >> 2) - 1;
        v155 += 3;
        --v154;
      }

      while (v154);
    }

    v157 = 0;
    v158 = 0;
    ++*v153;
    v159 = 1;
    while ([v55 count] > v158)
    {
      if (*(__src + v158) >= ((*(v197[0] + v157 + 8) - *(v197[0] + v157)) >> 2))
      {
        *(__src + v158) = 0;
        if ([v55 count] - 1 <= v158)
        {
          v159 = 0;
        }

        else
        {
          ++*(__src + v158 + 1);
          v159 = 1;
        }
      }

      ++v158;
      v157 += 24;
    }

    if ((v159 & 1) == 0)
    {
      break;
    }

    [date timeIntervalSinceNow];
  }

  while (v160 > -0.1);
  if (v113 != INFINITY)
  {
    array2 = [MEMORY[0x277CBEB18] array];
    v169 = v190;
    v168 = v191[0];
    if (v191[0] != v190)
    {
      v170 = 0;
      do
      {
        if ((v169[v170] & 0x80000000) == 0)
        {
          v171 = [v55 objectAtIndexedSubscript:?];
          for (k = 0; [v171 length] > k; ++k)
          {
            v173 = MEMORY[0x277CCABB0];
            [v171 length];
            v174 = [v173 numberWithInt:?];
            [array2 addObject:?];
          }

          v169 = v190;
          v168 = v191[0];
        }

        ++v170;
      }

      while (v170 < (v168 - v169) >> 2);
    }

    v111 = array2;
  }

  if (cost)
  {
    *cost = v113 / [modelCopy length];
  }

  v184 = v111;

  if (v190)
  {
    v191[0] = v190;
    operator delete(v190);
  }

  v11 = v184;
  if (__src)
  {
    v209 = __src;
    operator delete(__src);
  }

LABEL_229:
  __src = v196;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&__src);
  __src = v197;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&__src);

  v10 = v184;
LABEL_230:
  std::__tree<std::__value_type<unsigned long long,std::vector<unsigned int>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<unsigned int>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<unsigned int>>>>::destroy(*(&__p + 1));
  if (v200)
  {
    v201 = v200;
    operator delete(v200);
  }

  __src = &v203;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&__src);
  if (v206)
  {
    v207 = v206;
    operator delete(v206);
  }

LABEL_234:

  return v11;
}

@end