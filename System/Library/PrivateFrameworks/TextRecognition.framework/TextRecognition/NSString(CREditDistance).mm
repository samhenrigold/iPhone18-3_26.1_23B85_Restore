@interface NSString(CREditDistance)
+ (uint64_t)editDistance:()CREditDistance string:threshold:;
- (uint64_t)editDistanceFromStringIgnoringSpaces:()CREditDistance threshold:;
@end

@implementation NSString(CREditDistance)

- (uint64_t)editDistanceFromStringIgnoringSpaces:()CREditDistance threshold:
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = a3;
  v8 = [self stringByReplacingOccurrencesOfString:@" " withString:&stru_1F2BB4348];
  v9 = [v7 stringByReplacingOccurrencesOfString:@" " withString:&stru_1F2BB4348];

  v10 = [v6 editDistance:v8 string:v9 threshold:a4];
  return v10;
}

+ (uint64_t)editDistance:()CREditDistance string:threshold:
{
  v40 = a5;
  v42 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v41 = v6;
  v8 = [v6 length];
  v9 = [v7 length];
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      if ([v41 isEqualToString:v7])
      {
        v10 = 0;
      }

      else
      {
        v11 = [v7 length];
        v39 = &v39;
        *&v12 = MEMORY[0x1EEE9AC00](v11).n128_u64[0];
        v14 = &v39 - v13;
        v15 = [v7 length];
        *&v16 = MEMORY[0x1EEE9AC00](v15).n128_u64[0];
        v18 = (&v39 - v17);
        bzero(v14, (8 * [v7 length]) | 1);
        bzero(v18, (8 * [v7 length]) | 1);
        if ([v7 length] != -1)
        {
          v19 = 0;
          do
          {
            *&v14[8 * v19] = v19;
            ++v19;
          }

          while (v19 < [v7 length] + 1);
        }

        v20 = v41;
        v21 = [v41 length];
        *&v22 = MEMORY[0x1EEE9AC00](v21).n128_u64[0];
        v24 = &v39 - v23;
        v25 = [v7 length];
        *&v26 = MEMORY[0x1EEE9AC00](v25).n128_u64[0];
        v28 = &v39 - v27;
        [v20 getCharacters:v24 range:{0, objc_msgSend(v20, "length", v26)}];
        [v7 getCharacters:v28 range:{0, objc_msgSend(v7, "length")}];
        v29 = 0;
        while (1)
        {
          v30 = v18;
          if (v29 >= [v41 length])
          {
            break;
          }

          *v18 = v29 + 1;
          if ([v7 length])
          {
            v31 = 0;
            v32 = v14 + 8;
            v33 = 0x7FFFFFFFLL;
            do
            {
              v34 = &v18[v31];
              v35 = *v34 + 1;
              v36 = *&v28[2 * v31];
              if (v35 >= *v32 + 1)
              {
                v35 = *v32 + 1;
              }

              ++v31;
              if (*&v24[2 * v29] == v36)
              {
                v37 = *(v32 - 1);
              }

              else
              {
                v37 = *(v32 - 1) + 1;
              }

              if (v35 < v37)
              {
                v37 = v35;
              }

              if (v33 >= v37)
              {
                v33 = v37;
              }

              v34[1] = v37;
              ++v32;
            }

            while (v31 < [v7 length]);
          }

          else
          {
            v33 = 0x7FFFFFFFLL;
          }

          ++v29;
          v18 = v14;
          v14 = v30;
          if (v33 > v40)
          {
            v10 = 0x7FFFFFFFLL;
            goto LABEL_28;
          }
        }

        v10 = *&v14[8 * [v7 length]];
      }
    }

    else
    {
      v10 = [v41 length];
    }
  }

LABEL_28:

  return v10;
}

@end