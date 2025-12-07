@interface TSMTIEMask
+ (id)UDPHardwareMask;
+ (id)UDPSoftwareMask;
+ (id)gPTP1Hop;
+ (id)gPTP7Hop;
+ (id)gPTPMask1;
+ (id)gPTPMask2;
+ (id)gPTPMask3;
- (BOOL)mtieConformsToMask:(id)mask withErrors:(id *)errors;
- (TSMTIEMask)initWithDictionary:(id)dictionary;
- (id)mtieMaskFromStart:(double)start toEnd:(double)end withStep:(double)step;
@end

@implementation TSMTIEMask

+ (id)UDPHardwareMask
{
  v2 = objc_alloc_init(objc_opt_class());
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [mainBundle localizedStringForKey:? value:? table:?];
  [v2 setName:?];

  array = [MEMORY[0x277CBEB18] array];
  v6 = [TSMTIEMaskElement initWithCoefficient:"initWithCoefficient:offset:lowerLimit:upperLimit:" offset:? lowerLimit:? upperLimit:?];
  [array addObject:?];
  v7 = [TSMTIEMaskElement initWithCoefficient:"initWithCoefficient:offset:lowerLimit:upperLimit:" offset:? lowerLimit:? upperLimit:?];

  [array addObject:?];
  [v2 setElements:?];

  return v2;
}

+ (id)UDPSoftwareMask
{
  v2 = objc_alloc_init(objc_opt_class());
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [mainBundle localizedStringForKey:? value:? table:?];
  [v2 setName:?];

  array = [MEMORY[0x277CBEB18] array];
  v6 = [TSMTIEMaskElement initWithCoefficient:"initWithCoefficient:offset:lowerLimit:upperLimit:" offset:? lowerLimit:? upperLimit:?];
  [array addObject:?];
  v7 = [TSMTIEMaskElement initWithCoefficient:"initWithCoefficient:offset:lowerLimit:upperLimit:" offset:? lowerLimit:? upperLimit:?];

  [array addObject:?];
  [v2 setElements:?];

  return v2;
}

+ (id)gPTPMask1
{
  v2 = objc_alloc_init(objc_opt_class());
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [mainBundle localizedStringForKey:? value:? table:?];
  [v2 setName:?];

  array = [MEMORY[0x277CBEB18] array];
  v6 = [TSMTIEMaskElement initWithCoefficient:"initWithCoefficient:offset:lowerLimit:upperLimit:" offset:? lowerLimit:? upperLimit:?];
  [array addObject:?];
  v7 = [TSMTIEMaskElement initWithCoefficient:"initWithCoefficient:offset:lowerLimit:upperLimit:" offset:? lowerLimit:? upperLimit:?];

  [array addObject:?];
  v8 = [TSMTIEMaskElement initWithCoefficient:"initWithCoefficient:offset:lowerLimit:upperLimit:" offset:? lowerLimit:? upperLimit:?];

  [array addObject:?];
  [v2 setElements:?];

  return v2;
}

+ (id)gPTPMask2
{
  v2 = objc_alloc_init(objc_opt_class());
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [mainBundle localizedStringForKey:? value:? table:?];
  [v2 setName:?];

  array = [MEMORY[0x277CBEB18] array];
  v6 = [TSMTIEMaskElement initWithCoefficient:"initWithCoefficient:offset:lowerLimit:upperLimit:" offset:? lowerLimit:? upperLimit:?];
  [array addObject:?];
  v7 = [TSMTIEMaskElement initWithCoefficient:"initWithCoefficient:offset:lowerLimit:upperLimit:" offset:? lowerLimit:? upperLimit:?];

  [array addObject:?];
  [v2 setElements:?];

  return v2;
}

+ (id)gPTPMask3
{
  v2 = objc_alloc_init(objc_opt_class());
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [mainBundle localizedStringForKey:? value:? table:?];
  [v2 setName:?];

  array = [MEMORY[0x277CBEB18] array];
  v6 = [TSMTIEMaskElement initWithCoefficient:"initWithCoefficient:offset:lowerLimit:upperLimit:" offset:? lowerLimit:? upperLimit:?];
  [array addObject:?];
  v7 = [TSMTIEMaskElement initWithCoefficient:"initWithCoefficient:offset:lowerLimit:upperLimit:" offset:? lowerLimit:? upperLimit:?];

  [array addObject:?];
  [v2 setElements:?];

  return v2;
}

+ (id)gPTP7Hop
{
  v2 = objc_alloc_init(objc_opt_class());
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [mainBundle localizedStringForKey:? value:? table:?];
  [v2 setName:?];

  array = [MEMORY[0x277CBEB18] array];
  v6 = [TSMTIEMaskElement initWithCoefficient:"initWithCoefficient:offset:lowerLimit:upperLimit:" offset:? lowerLimit:? upperLimit:?];
  [array addObject:?];
  v7 = [TSMTIEMaskElement initWithCoefficient:"initWithCoefficient:offset:lowerLimit:upperLimit:" offset:? lowerLimit:? upperLimit:?];

  [array addObject:?];
  v8 = [TSMTIEMaskElement initWithCoefficient:"initWithCoefficient:offset:lowerLimit:upperLimit:" offset:? lowerLimit:? upperLimit:?];

  [array addObject:?];
  [v2 setElements:?];

  return v2;
}

+ (id)gPTP1Hop
{
  v2 = objc_alloc_init(objc_opt_class());
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [mainBundle localizedStringForKey:? value:? table:?];
  [v2 setName:?];

  array = [MEMORY[0x277CBEB18] array];
  v6 = [TSMTIEMaskElement initWithCoefficient:"initWithCoefficient:offset:lowerLimit:upperLimit:" offset:? lowerLimit:? upperLimit:?];
  [array addObject:?];
  [v2 setElements:?];

  return v2;
}

- (TSMTIEMask)initWithDictionary:(id)dictionary
{
  v20 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v19.receiver = self;
  v19.super_class = TSMTIEMask;
  v5 = [(TSMTIEMask *)&v19 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:?];
    v7 = [v6 copy];
    name = v5->_name;
    v5->_name = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v10 = [dictionaryCopy objectForKeyedSubscript:0];
    v11 = [v10 countByEnumeratingWithState:? objects:? count:?];
    if (v11)
    {
      v12 = v11;
      v13 = MEMORY[0];
      do
      {
        for (i = 0; i != v12; i = (i + 1))
        {
          if (MEMORY[0] != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [[TSMTIEMaskElement alloc] initWithDictionary:?];
          if (v15)
          {
            [v9 addObject:?];
          }
        }

        v12 = [v10 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v12);
    }

    v16 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:?];
    elements = v5->_elements;
    v5->_elements = v16;

    if (![(NSArray *)v5->_elements count])
    {

      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)mtieConformsToMask:(id)mask withErrors:(id *)errors
{
  maskCopy = mask;
  if ([maskCopy count])
  {
    if (errors)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    else
    {
      v6 = 0;
    }

    errorsCopy = errors;
    v38 = maskCopy;
    obj = maskCopy;
    v8 = [obj countByEnumeratingWithState:? objects:? count:?];
    if (v8)
    {
      v9 = v8;
      v10 = MEMORY[0];
      v40 = 1;
      do
      {
        for (i = 0; i != v9; i = (i + 1))
        {
          if (MEMORY[0] != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(8 * i);
          elements = [(TSMTIEMask *)self elements];
          v14 = [elements countByEnumeratingWithState:? objects:? count:?];
          if (v14)
          {
            v15 = v14;
            v16 = v6;
            v17 = MEMORY[0];
            while (2)
            {
              for (j = 0; j != v15; j = (j + 1))
              {
                if (MEMORY[0] != v17)
                {
                  objc_enumerationMutation(elements);
                }

                v19 = *(8 * j);
                [v12 observationInterval];
                v21 = v20;
                [v19 lowerLimit];
                if (v21 >= v22)
                {
                  [v12 observationInterval];
                  v24 = v23;
                  [v19 upperLimit];
                  if (v24 < v25)
                  {
                    [v19 a];
                    v27 = v26;
                    [v12 observationInterval];
                    v29 = v28 / 1000000000.0;
                    [v19 b];
                    v31 = (v30 + v27 * v29) * 1000000000.0;
                    [v12 mtie];
                    v6 = v16;
                    if (v32 <= v31 || v16 == 0)
                    {
                      v40 &= v32 <= v31;
                    }

                    else
                    {
                      v34 = objc_alloc_init(TSMTIEMaskError);
                      [v12 observationInterval];
                      [(TSMTIEMaskError *)v34 setObservationInterval:?];
                      [v12 mtie];
                      [(TSMTIEMaskError *)v34 setMtie:?];
                      [(TSMTIEMaskError *)v34 setMask:?];
                      [v16 addObject:?];

                      v40 = 0;
                    }

                    goto LABEL_27;
                  }
                }
              }

              v15 = [elements countByEnumeratingWithState:? objects:? count:?];
              if (v15)
              {
                continue;
              }

              break;
            }

            v6 = v16;
          }

LABEL_27:
        }

        v9 = [obj countByEnumeratingWithState:? objects:? count:?];
      }

      while (v9);
    }

    else
    {
      v40 = 1;
    }

    if (errorsCopy)
    {
      v35 = v6;
      *errorsCopy = v6;
    }

    maskCopy = v38;
    v7 = v40;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (id)mtieMaskFromStart:(double)start toEnd:(double)end withStep:(double)step
{
  for (i = [MEMORY[0x277CBEB18] array];
  {
    elements = [(TSMTIEMask *)self elements];
    v11 = [elements countByEnumeratingWithState:? objects:? count:?];
    if (v11)
    {
      v12 = v11;
      v13 = MEMORY[0];
      while (2)
      {
        for (j = 0; j != v12; j = (j + 1))
        {
          if (MEMORY[0] != v13)
          {
            objc_enumerationMutation(elements);
          }

          v15 = *(8 * j);
          [v15 lowerLimit];
          if (start >= v16)
          {
            [v15 upperLimit];
            if (start < v17)
            {
              [v15 a];
              [v15 b];
              goto LABEL_13;
            }
          }
        }

        v12 = [elements countByEnumeratingWithState:? objects:? count:?];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:

    v18 = [TSMTIEValue initWithObservationInterval:"initWithObservationInterval:andMTIE:" andMTIE:?];
    [i addObject:?];
  }

  return i;
}

@end