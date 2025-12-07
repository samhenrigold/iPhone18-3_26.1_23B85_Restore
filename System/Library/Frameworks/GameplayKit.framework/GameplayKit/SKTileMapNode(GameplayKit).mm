@interface SKTileMapNode(GameplayKit)
+ (id)tileMapNodesWithTileSet:()GameplayKit columns:rows:tileSize:fromNoiseMap:tileTypeNoiseMapThresholds:;
@end

@implementation SKTileMapNode(GameplayKit)

+ (id)tileMapNodesWithTileSet:()GameplayKit columns:rows:tileSize:fromNoiseMap:tileTypeNoiseMapThresholds:
{
  v74 = a7;
  v78 = a6;
  v89 = *MEMORY[0x277D85DE8];
  v13 = a5;
  v14 = a8;
  v87 = a9;
  v75 = v14;
  v88 = [v87 count];
  [v14 sampleCount];
  v86 = v15;
  [v14 sampleCount];
  v85 = v16;
  v17 = v88 + 1;
  v18 = v69 - ((8 * (v88 + 1) + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v18, 8 * (v88 + 1));
  if (v17)
  {
    v19 = (v69 - ((8 * v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    v20 = v17;
    do
    {
      array = [MEMORY[0x277CBEB18] array];
      v22 = *v19;
      *v19++ = array;

      --v20;
    }

    while (v20);
  }

  v69[1] = v69;
  selfCopy = self;
  v71 = a2;
  emptyTileGroup = [MEMORY[0x277CDCF98] emptyTileGroup];
  if (!v74 || !v78)
  {
    goto LABEL_30;
  }

  v25 = 0;
  v26 = v86;
  *&v26 = v86;
  if (v17 <= 1)
  {
    v27 = 1;
  }

  else
  {
    v27 = v17;
  }

  *&v86 = v27 - 1;
  v72 = SDWORD1(v85) * (1.0 / v74);
  v82 = *&v26 * (1.0 / v78);
  v77 = 0.16667;
  v76 = 0.83333;
  while (2)
  {
    v28 = 0;
    v73 = v25;
    *&v24 = (v25 + v77) * v72;
    v85 = v24;
    *&v24 = (v25 + 0.5) * v72;
    v84 = v24;
    *&v26 = (v25 + v76) * v72;
    v83 = v26;
    do
    {
      *&v26 = (v28 + v77) * v82;
      v81 = v26;
      DWORD1(v26) = v85;
      v29 = v75;
      [v75 interpolatedValueAtPosition:*&v26];
      v31 = v30;
      *&v32 = (v28 + 0.5) * v82;
      v80 = v32;
      DWORD1(v32) = v85;
      [v29 interpolatedValueAtPosition:*&v32];
      v34 = v33;
      *&v35 = (v28 + v76) * v82;
      v79 = v35;
      DWORD1(v35) = v85;
      [v29 interpolatedValueAtPosition:*&v35];
      v37 = v36;
      [v29 interpolatedValueAtPosition:{COERCE_DOUBLE(__PAIR64__(v84, v81))}];
      v39 = v38;
      [v29 interpolatedValueAtPosition:{COERCE_DOUBLE(__PAIR64__(v84, v80))}];
      v41 = v40;
      [v29 interpolatedValueAtPosition:{COERCE_DOUBLE(__PAIR64__(v84, v79))}];
      v43 = v42;
      [v29 interpolatedValueAtPosition:{COERCE_DOUBLE(__PAIR64__(v83, v81))}];
      v45 = v44;
      [v29 interpolatedValueAtPosition:{COERCE_DOUBLE(__PAIR64__(v83, v80))}];
      v47 = v46;
      [v29 interpolatedValueAtPosition:{COERCE_DOUBLE(__PAIR64__(v83, v79))}];
      if (!v88)
      {
        v49 = 0;
LABEL_22:
        v54 = 0;
        do
        {
          while (1)
          {
            v55 = v54 > v49 ? -1 : v54;
            tileGroups = [v13 tileGroups];
            v57 = [tileGroups count];

            v58 = *&v18[8 * v54];
            if (v55 < v57)
            {
              break;
            }

            [*&v18[8 * v54++] addObject:emptyTileGroup];
            if (v17 == v54)
            {
              goto LABEL_12;
            }
          }

          tileGroups2 = [v13 tileGroups];
          v60 = [tileGroups2 objectAtIndexedSubscript:v55];
          [v58 addObject:v60];

          ++v54;
        }

        while (v17 != v54);
        goto LABEL_12;
      }

      v49 = 0;
      v50 = ((v48 + v47) + ((v45 + (v43 + v41)) + ((v39 + v37) + (v34 + v31)))) * 0.11111;
      while (1)
      {
        v51 = [v87 objectAtIndexedSubscript:v49];
        [v51 floatValue];
        v53 = v52;

        if (v50 < v53)
        {
          break;
        }

        if (v86 == v49)
        {
          goto LABEL_12;
        }

        if (v88 == ++v49)
        {
          v49 = v88;
          break;
        }
      }

      if (v17)
      {
        goto LABEL_22;
      }

LABEL_12:
      ++v28;
    }

    while (v28 != v78);
    v25 = v73 + 1;
    if (v73 + 1 != v74)
    {
      continue;
    }

    break;
  }

LABEL_30:
  v61 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v62 = v71;
  v63 = selfCopy;
  if (v17)
  {
    v64 = (v69 - ((8 * v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    v65 = v17;
    do
    {
      v66 = [MEMORY[0x277CDCFA0] tileMapNodeWithTileSet:v13 columns:v78 rows:v74 tileSize:*v64 tileGroupLayout:{v63, v62}];
      [v61 addObject:v66];

      ++v64;
      --v65;
    }

    while (v65);

    v67 = 8 * v88;
    do
    {

      v67 -= 8;
    }

    while (v67 != -8);
  }

  else
  {
  }

  return v61;
}

@end