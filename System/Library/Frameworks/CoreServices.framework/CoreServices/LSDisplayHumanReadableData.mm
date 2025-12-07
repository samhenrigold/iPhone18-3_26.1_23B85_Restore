@interface LSDisplayHumanReadableData
@end

@implementation LSDisplayHumanReadableData

void ___LSDisplayHumanReadableData_block_invoke(uint64_t a1, uint64_t a2)
{
  v64 = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  v5 = [*(a1 + 32) descriptionOfUnit:a2 inTable:*(a1 + 72)];
  v6 = v5;
  if (v5)
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v10 = *(a1 + 72);
    v9 = *(a1 + 76);
    __stream = *(a1 + 64);
    v11 = *(*(a1 + 56) + 8);
    v44 = v5;
    v48 = v5;
    v46 = v7;
    v12 = v8;
    v45 = objc_autoreleasePoolPush();
    v47 = v12;
    if (!v12 || (v50 = v48, [v12 evaluateWithObject:?]))
    {
      if ((v9 & 0x10) != 0)
      {
        v50 = v48;
        v33 = v46;
        v34 = objc_alloc_init(MEMORY[0x1E695DF90]);
        if (v33)
        {
          v35 = [v33 count];
        }

        else
        {
          v35 = -1;
        }

        v36 = MEMORY[0x1E69991A0];
        v55 = MEMORY[0x1E69E9820];
        v56 = 3221225472;
        v57 = ___ZN14LaunchServices21DatabaseVisualizationL34getPropertyListFromUnitDescriptionEjjP18NSAttributedStringP5NSSetIP8NSStringE_block_invoke;
        v58 = &unk_1E6A1BBB8;
        v37 = v33;
        v59 = v37;
        v38 = v34;
        v60 = v38;
        __p = v35;
        [v36 enumerateValuesForTitlesInDescription:v50 block:&v55];
        v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v10];
        [v38 setObject:v39 forKeyedSubscript:@"tableID"];

        v40 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
        [v38 setObject:v40 forKeyedSubscript:@"unitID"];

        v41 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v38 options:0 error:0];
        if (v41)
        {
          if ((*(v11 + 24) & 1) == 0)
          {
            fputc(44, __stream);
          }

          *(v11 + 24) = 0;
          v42 = v41;
          fwrite([v41 bytes], 1uLL, objc_msgSend(v41, "length"), __stream);
        }
      }

      else
      {
        v13 = [MEMORY[0x1E6999190] separatorForTitle:0 separator:45];
        [v13 cs_writeToFileHandle:__stream];

        fputc(10, __stream);
        v50 = v48;
        if (v47)
        {
          v14 = [v48 mutableCopy];
          v15 = objc_autoreleasePoolPush();
          v51 = 0u;
          v52 = 0u;
          v53 = 0u;
          v54 = 0u;
          v50 = v14;
          v16 = [v14 cs_rangesMatchingPredicate:v47];
          v43 = v4;
          v17 = [v16 countByEnumeratingWithState:&v51 objects:&v55 count:16];
          if (v17)
          {
            v18 = *v52;
            v19 = *MEMORY[0x1E69991C0];
            v20 = *MEMORY[0x1E69991B0];
            do
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v52 != v18)
                {
                  objc_enumerationMutation(v16);
                }

                v22 = [*(*(&v51 + 1) + 8 * i) rangeValue];
                v24 = v23;
                [v50 addAttribute:v19 value:&unk_1EEF8EF30 range:{v22, v23}];
                [v50 addAttribute:v20 value:&unk_1EEF8EF48 range:{v22, v24}];
              }

              v17 = [v16 countByEnumeratingWithState:&v51 objects:&v55 count:16];
            }

            while (v17);
          }

          v4 = v43;
          objc_autoreleasePoolPop(v15);
        }

        if (v46)
        {
          v25 = [v46 count];
          v55 = 0;
          v56 = &v55;
          v57 = 0x4812000000;
          v58 = __Block_byref_object_copy__71;
          v59 = __Block_byref_object_dispose__72;
          v60 = &unk_1818533FF;
          v62 = 0;
          v63 = 0;
          __p = 0;
          v26 = MEMORY[0x1E69991A0];
          *&v51 = MEMORY[0x1E69E9820];
          *(&v51 + 1) = 3221225472;
          *&v52 = ___ZN14LaunchServices21DatabaseVisualizationL20writeUnitDescriptionEP7__sFILEjjP18NSAttributedStringP5NSSetIP8NSStringEP11NSPredicatejPb_block_invoke;
          *(&v52 + 1) = &unk_1E6A1BB90;
          *&v53 = v46;
          *(&v53 + 1) = &v55;
          *&v54 = v25;
          [v26 enumerateValuesForTitlesInDescription:v50 block:&v51];
          v27 = *(v56 + 48);
          v28 = *(v56 + 56);
          while (v27 != v28)
          {
            v29 = *v27;
            v30 = v27[1];
            v31 = objc_autoreleasePoolPush();
            v32 = [v50 attributedSubstringFromRange:{v29, v30}];
            [v32 cs_writeToFileHandle:__stream];
            fputc(10, __stream);

            objc_autoreleasePoolPop(v31);
            v27 += 2;
          }

          _Block_object_dispose(&v55, 8);
          if (__p)
          {
            v62 = __p;
            operator delete(__p);
          }
        }

        else
        {
          [v50 cs_writeToFileHandle:__stream];
          fputc(10, __stream);
        }
      }
    }

    objc_autoreleasePoolPop(v45);

    v6 = v44;
  }

  objc_autoreleasePoolPop(v4);
}

@end