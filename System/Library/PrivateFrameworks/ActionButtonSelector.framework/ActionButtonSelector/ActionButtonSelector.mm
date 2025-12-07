id ABLoadResourcesWithCompletion(void *a1)
{
  v1 = a1;
  v2 = +[ABDeviceSceneResourceLoader sharedLoader];
  v3 = [(ABDeviceSceneResourceLoader *)v2 loadResourcesWithCompletion:v1];

  return v3;
}

id ABLogger()
{
  if (ABLogger_onceToken != -1)
  {
    ABLogger_cold_1();
  }

  v1 = ABLogger_logger;

  return v1;
}

uint64_t __ABLogger_block_invoke()
{
  v0 = os_log_create("com.apple.ActionButtonSelector", "General");
  v1 = ABLogger_logger;
  ABLogger_logger = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_23DE19534(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak((v29 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ABLoadDeviceSceneModel(void *a1@<X0>, uint64_t a2@<X8>)
{
  v194[1] = *MEMORY[0x277D85DE8];
  v175 = a1;
  v3 = ABDeviceModelResourceName(v175);
  v176 = [v175 URLForResource:v3 withExtension:@"usdz"];

  if (v176)
  {
    v4 = [MEMORY[0x277CCAA00] defaultManager];
    v5 = [v176 path];
    v6 = [v4 isReadableFileAtPath:v5];

    if (v6)
    {
      v7 = [objc_alloc(MEMORY[0x277CD7AD0]) initWithURL:v176];
      v8 = v7;
      if (!v7)
      {
        *(a2 + 112) = 0u;
        *(a2 + 128) = 0u;
        *(a2 + 80) = 0u;
        *(a2 + 96) = 0u;
        *(a2 + 48) = 0u;
        *(a2 + 64) = 0u;
        *(a2 + 16) = 0u;
        *(a2 + 32) = 0u;
        *a2 = 0u;
LABEL_75:

        goto LABEL_76;
      }

      [v7 loadTextures];
      v9 = MEMORY[0x277CDBAA8];
      v162 = v8;
      v10 = [v8 objectAtIndex:0];
      v172 = [v9 nodeWithMDLObject:v10];

      IsD23 = ABDeviceIsD23(v11);
      if ((IsD23 & 1) == 0 && (ABDeviceIsV5x(IsD23) & 1) == 0)
      {
        v13 = ABDegreesToRadians(180.0);
        SCNMatrix4MakeRotation(&v190, v13, 0.0, 1.0, 0.0);
        v189 = v190;
        [v172 setTransform:&v189];
      }

      v14 = [MEMORY[0x277CDBAA8] node];
      [v14 addChildNode:v172];
      v15 = [MEMORY[0x277CDBAF8] scene];
      v16 = [MEMORY[0x277D75348] blackColor];
      [v15 setFogColor:v16];

      v167 = [v175 URLForResource:@"Precomputed IBL" withExtension:0];
      v188 = 0;
      v166 = [MEMORY[0x277CDBA98] precomputedLightingEnvironmentContentsWithURL:v167 error:&v188];
      v161 = v188;
      v17 = [v15 lightingEnvironment];
      [v17 setContents:v166];

      v173 = [MEMORY[0x277CDBAA8] node];
      [v173 setName:@"camera"];
      v165 = [MEMORY[0x277CDBA48] camera];
      [v173 setCamera:v165];
      [v173 setPosition:{0.0, 0.0, 0.0}];
      v18 = [v15 rootNode];
      [v18 addChildNode:v173];

      v19 = [v15 rootNode];
      [v19 addChildNode:v14];

      v177 = +[ABDeviceSceneModelNodeMap thisDeviceModelNodeIdentifiers];
      v20 = [v177 actionButton];
      v21 = [v172 childNodeWithName:v20 recursively:1];

      v174 = [v21 clone];
      v22 = [v174 name];
      v23 = [v22 stringByAppendingString:@"_highlight"];
      [v174 setName:v23];

      v24 = [v21 geometry];
      v25 = [v24 copy];
      [v174 setGeometry:v25];

      IsV5x = ABDeviceIsD23(v26);
      if (IsV5x)
      {
        v28 = -0.002;
      }

      else
      {
        IsV5x = ABDeviceIsV5x(IsV5x);
        if (IsV5x)
        {
          v28 = -0.002;
        }

        else
        {
          v28 = 0.002;
        }
      }

      v29 = ABDeviceIsD23(IsV5x);
      v30 = v29;
      v31 = ABDeviceIsV5x(v29);
      memset(&v189, 0, sizeof(v189));
      v32 = *"1\b,=";
      if (((v31 | v30) & 1) == 0)
      {
        v32 = 0.0;
      }

      *&a.m14 = 0;
      *&a.m12 = 0;
      a.m11 = 1.0;
      a.m22 = 1.0;
      *&a.m23 = 0;
      *&a.m31 = 0;
      *&a.m33 = 1065353216;
      a.m41 = v28;
      a.m42 = 0.0;
      a.m43 = v32;
      a.m44 = 1.0;
      memset(&b.m22, 0, 40);
      *&b.m12 = 0uLL;
      b.m11 = 1.0;
      b.m22 = 1.0;
      b.m33 = 1.01;
      b.m44 = 1.0;
      SCNMatrix4Mult(&v189, &a, &b);
      a = v189;
      [v174 setTransform:&a];
      v33 = [v21 parentNode];
      [v33 addChildNode:v174];

      v34 = [v177 actionButtonSides];
      v35 = [v177 actionButton];
      if ([v34 isEqualToString:v35])
      {

        v169 = 0;
        v164 = 0;
      }

      else
      {
        v36 = [v177 actionButtonSides];
        v37 = v36 == 0;

        if (v37)
        {
          v169 = 0;
          v164 = 0;
LABEL_21:
          v43 = [v177 glassOpaque];
          v44 = v43 == 0;

          if (!v44)
          {
            v45 = [v177 glassOpaque];
            v46 = [v14 childNodeWithName:v45 recursively:1];
            v47 = [v46 geometry];
            v48 = [v47 firstMaterial];

            v49 = [v48 ambientOcclusion];
            [v49 setTextureComponents:15];

            v50 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.7];
            v51 = [v48 transparent];
            [v51 setContents:v50];

            v52 = [v48 metalness];
            [v52 setContents:&unk_28501F118];

            v53 = [v48 roughness];
            [v53 setContents:&unk_28501F128];
          }

          v54 = [v177 frontCamera];
          v55 = v54 == 0;

          if (!v55)
          {
            v56 = [v177 frontCamera];
            v57 = [v14 childNodeWithName:v56 recursively:1];
            v58 = [v57 geometry];
            v59 = [v58 firstMaterial];
            v60 = [v59 ambientOcclusion];
            [v60 setTextureComponents:15];
          }

          v61 = [v177 bodyHoles];
          v62 = [v14 childNodeWithName:v61 recursively:1];
          v63 = [v62 geometry];
          v64 = [v63 firstMaterial];
          v65 = [v64 ambientOcclusion];
          [v65 setIntensity:1.8];

          v66 = [v177 muteWall];
          v67 = [v14 childNodeWithName:v66 recursively:1];
          v68 = [v67 geometry];
          v69 = [v68 firstMaterial];
          v70 = [v69 ambientOcclusion];
          [v70 setIntensity:1.8];

          v71 = [MEMORY[0x277D75348] colorWithWhite:0.5 alpha:1.0];
          v72 = ABDeviceIsD23(v71);
          v73 = v72;
          if (ABDeviceIsV5x(v72))
          {
            v74 = [MEMORY[0x277CBEB18] array];
            v75 = [v177 body];
            v76 = v75 == 0;

            if (!v76)
            {
              v77 = [v177 body];
              [v74 addObject:v77];
            }

            v78 = [v177 button1Top];
            v79 = v78 == 0;

            if (!v79)
            {
              v80 = [v177 button1Top];
              [v74 addObject:v80];
            }

            v81 = [v177 button2Top];
            v82 = v81 == 0;

            if (!v82)
            {
              v83 = [v177 button2Top];
              [v74 addObject:v83];
            }

            v84 = [v177 buttonSides];
            v85 = v84 == 0;

            if (!v85)
            {
              v86 = [v177 buttonSides];
              [v74 addObject:v86];
            }

            v87 = [v177 bodyHoles];
            v88 = v87 == 0;

            if (!v88)
            {
              v89 = [v177 bodyHoles];
              [v74 addObject:v89];
            }

            v90 = [v177 muteWall];
            v91 = v90 == 0;

            if (!v91)
            {
              v92 = [v177 muteWall];
              [v74 addObject:v92];
            }

            v93 = [v177 actionButton];
            v94 = v93 == 0;

            if (!v94)
            {
              v95 = [v177 actionButton];
              [v74 addObject:v95];
            }

            v96 = [v177 actionButtonSides];
            v97 = v96 == 0;

            if (!v97)
            {
              v98 = [v177 actionButtonSides];
              [v74 addObject:v98];
            }

            v182[0] = MEMORY[0x277D85DD0];
            v182[1] = 3221225472;
            v182[2] = __ABLoadDeviceSceneModel_block_invoke;
            v182[3] = &unk_278BFFE78;
            v183 = v14;
            v184 = v71;
            v170 = xmmword_23DE28940;
            v185 = xmmword_23DE28940;
            [v74 enumerateObjectsUsingBlock:v182];

            if (v73)
            {
              goto LABEL_62;
            }
          }

          else
          {
            v170 = xmmword_23DE28930;
            if (v73)
            {
LABEL_62:
              v124 = [v177 body];
              v125 = [v14 childNodeWithName:v124 recursively:1];
              v126 = [v125 geometry];
              v163 = [v126 firstMaterial];

              v128 = ABDeviceIsD23(v127);
              if (v128)
              {
                v128 = [@"Action_Button_glow_modifier" stringByAppendingString:@"-D23"];
                v129 = v128;
              }

              else
              {
                v129 = @"Action_Button_glow_modifier";
              }

              if (ABDeviceIsV5x(v128))
              {
                v130 = [(__CFString *)v129 stringByAppendingString:@"-V53-V54"];

                v131 = v130;
              }

              else
              {
                v131 = v129;
              }

              v160 = v131;
              v168 = [v175 URLForResource:? withExtension:?];
              if (v168)
              {
                v132 = [MEMORY[0x277CCACA8] stringWithContentsOfURL:v168 encoding:4 error:0];
                if ([v132 length])
                {
                  v193 = *MEMORY[0x277CDBC20];
                  v194[0] = v132;
                  v133 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v194 forKeys:&v193 count:1];
                  [v163 setShaderModifiers:v133];
                }
              }

              v134 = [MEMORY[0x277CDBA90] material];
              [v134 setLightingModelName:*MEMORY[0x277CDBBA0]];
              v135 = [MEMORY[0x277D75348] blackColor];
              v136 = [v134 diffuse];
              [v136 setContents:v135];

              v137 = [MEMORY[0x277D755B8] imageNamed:@"Action_Button_glow_normal" inBundle:v175 withConfiguration:0];
              v138 = [v134 normal];
              [v138 setContents:v137];

              v139 = [MEMORY[0x277D755B8] imageNamed:@"Action_Button_glow_normal" inBundle:v175 withConfiguration:0];
              v140 = [v134 roughness];
              [v140 setContents:v139];

              v141 = [MEMORY[0x277D75348] colorWithRed:0.0941176471 green:0.0862745098 blue:0.0745098039 alpha:1.0];
              v142 = [v134 emission];
              [v142 setContents:v141];

              v143 = [v134 emission];
              [v143 setIntensity:1.2];

              v144 = [v134 transparent];
              [v144 setContents:&unk_28501F138];

              if (v134)
              {
                v192 = v134;
                v145 = [MEMORY[0x277CBEA60] arrayWithObjects:&v192 count:1];
                v146 = [v174 geometry];
                [v146 setMaterials:v145];

                v191 = v134;
                v147 = [MEMORY[0x277CBEA60] arrayWithObjects:&v191 count:1];
                v148 = [v169 geometry];
                [v148 setMaterials:v147];
              }

              v149 = v21;
              v159 = v15;
              *a2 = v159;
              v171 = v14;
              *(a2 + 8) = v171;
              v150 = [v177 screenOpaque];
              v151 = [v172 childNodeWithName:v150 recursively:1];
              *(a2 + 16) = v151;
              v152 = [v177 body];
              [v171 childNodeWithName:v152 recursively:1];
              *(a2 + 24) = v153 = v71;
              v154 = [v177 muteWall];
              *(a2 + 32) = [v171 childNodeWithName:v154 recursively:1];
              v155 = [v177 actionButtonBlocking];
              *(a2 + 40) = [v171 childNodeWithName:v155 recursively:1];
              *(a2 + 48) = v149;
              *(a2 + 56) = v174;
              *(a2 + 64) = v164;
              *(a2 + 72) = v169;
              v156 = *&v189.m21;
              *(a2 + 80) = *&v189.m11;
              *(a2 + 96) = v156;
              v157 = *&v189.m41;
              *(a2 + 112) = *&v189.m31;
              *(a2 + 128) = v157;
              v158 = v164;

              v8 = v162;
              goto LABEL_75;
            }
          }

          v99 = [MEMORY[0x277CBEB18] array];
          v100 = [v177 body];
          v101 = v100 == 0;

          if (!v101)
          {
            v102 = [v177 body];
            [v99 addObject:v102];
          }

          v103 = [v177 button1Top];
          v104 = v103 == 0;

          if (!v104)
          {
            v105 = [v177 button1Top];
            [v99 addObject:v105];
          }

          v106 = [v177 button2Top];
          v107 = v106 == 0;

          if (!v107)
          {
            v108 = [v177 button2Top];
            [v99 addObject:v108];
          }

          v109 = [v177 buttonSides];
          v110 = v109 == 0;

          if (!v110)
          {
            v111 = [v177 buttonSides];
            [v99 addObject:v111];
          }

          v112 = [v177 bodyHoles];
          v113 = v112 == 0;

          if (!v113)
          {
            v114 = [v177 bodyHoles];
            [v99 addObject:v114];
          }

          v115 = [v177 muteWall];
          v116 = v115 == 0;

          if (!v116)
          {
            v117 = [v177 muteWall];
            [v99 addObject:v117];
          }

          v118 = [v177 actionButton];
          v119 = v118 == 0;

          if (!v119)
          {
            v120 = [v177 actionButton];
            [v99 addObject:v120];
          }

          v121 = [v177 actionButtonSides];
          v122 = v121 == 0;

          if (!v122)
          {
            v123 = [v177 actionButtonSides];
            [v99 addObject:v123];
          }

          v178[0] = MEMORY[0x277D85DD0];
          v178[1] = 3221225472;
          v178[2] = __ABLoadDeviceSceneModel_block_invoke_2;
          v178[3] = &unk_278BFFE78;
          v179 = v14;
          v180 = v71;
          v181 = v170;
          [v99 enumerateObjectsUsingBlock:v178];

          goto LABEL_62;
        }

        v38 = [v177 actionButtonSides];
        v164 = [v172 childNodeWithName:v38 recursively:1];

        v169 = [v164 clone];
        v39 = [v169 name];
        v40 = [v39 stringByAppendingString:@"_highlight"];
        [v169 setName:v40];

        v41 = [v164 geometry];
        v42 = [v41 copy];
        [v169 setGeometry:v42];

        a = v189;
        [v169 setTransform:&a];
        v34 = [v164 parentNode];
        [v34 addChildNode:v169];
      }

      goto LABEL_21;
    }
  }

  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
LABEL_76:
}

__CFString *ABDeviceModelResourceName(uint64_t a1)
{
  if (ABDeviceIsV59_onceToken != -1)
  {
    ABDeviceModelResourceName_cold_1();
  }

  if (ABDeviceIsV59_sIsDevice)
  {
    return @"iPhone15_Pro_NaturalTitanium_v0006-V59";
  }

  if (ABDeviceIsV57_onceToken != -1)
  {
    ABDeviceModelResourceName_cold_2();
  }

  if (ABDeviceIsV57_sIsDevice)
  {
    return @"iPhone15_Pro_NaturalTitanium_v0006-V57";
  }

  if (ABDeviceIsV5x_onceToken != -1)
  {
    ABDeviceModelResourceName_cold_3();
  }

  if (ABDeviceIsV5x_sIsDevice)
  {
    return @"iPhoneXX_White_v0007-V53-V54";
  }

  if (ABDeviceIsD23_onceToken != -1)
  {
    ABDeviceModelResourceName_cold_4();
  }

  if (ABDeviceIsD23_sIsDevice)
  {
    return @"iPhoneXX_White_v0027-D23";
  }

  if ((MGIsDeviceOfType() & 1) != 0 || MGIsDeviceOfType())
  {
    return @"iPhone15_Pro_NaturalTitanium_v0005-D83-D84";
  }

  return @"iPhone15_Pro_NaturalTitanium_v0006-D47-D48-D93-D94";
}

void sub_23DE1AC14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id carouselItems(void *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [ABCarouselItem alloc];
        v10 = [v8 image];
        v11 = [v8 canBeHighlighted];
        v12 = [v8 identifier];
        v13 = [(ABCarouselItem *)&v9->super.isa initWithImage:v10 canBeHighlighted:v11 identifier:v12];
        [v2 addObject:v13];
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v14 = [v2 copy];

  return v14;
}

void sub_23DE1CA78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  objc_destroyWeak((v25 + 48));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23DE1CDD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double __move_assignment_8_8_s0_s8_s16_S_s24_s32_s40_s48_s56_s64_s72_t80w64(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;

  v6 = a2[1];
  a2[1] = 0;
  v7 = *(a1 + 8);
  *(a1 + 8) = v6;

  v8 = a2[2];
  a2[2] = 0;
  v9 = *(a1 + 16);
  *(a1 + 16) = v8;

  *&result = __move_assignment_8_8_s0_s8_s16_s24_s32_s40_s48_t56w64(a1 + 24, a2 + 3).n128_u64[0];
  return result;
}

__n128 __move_assignment_8_8_s0_s8_s16_s24_s32_s40_s48_t56w64(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;

  v6 = a2[1];
  a2[1] = 0;
  v7 = *(a1 + 8);
  *(a1 + 8) = v6;

  v8 = a2[2];
  a2[2] = 0;
  v9 = *(a1 + 16);
  *(a1 + 16) = v8;

  v10 = a2[3];
  a2[3] = 0;
  v11 = *(a1 + 24);
  *(a1 + 24) = v10;

  v12 = a2[4];
  a2[4] = 0;
  v13 = *(a1 + 32);
  *(a1 + 32) = v12;

  v14 = a2[5];
  a2[5] = 0;
  v15 = *(a1 + 40);
  *(a1 + 40) = v14;

  v16 = a2[6];
  a2[6] = 0;
  v17 = *(a1 + 48);
  *(a1 + 48) = v16;

  result = *(a2 + 7);
  v19 = *(a2 + 9);
  v20 = *(a2 + 11);
  *(a1 + 104) = *(a2 + 13);
  *(a1 + 88) = v20;
  *(a1 + 72) = v19;
  *(a1 + 56) = result;
  return result;
}

__n128 __copy_constructor_8_8_s0_s8_s16_s24_s32_s40_s48_t56w64(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  result = *(a2 + 72);
  v5 = *(a2 + 88);
  v6 = *(a2 + 104);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 104) = v6;
  *(a1 + 88) = v5;
  *(a1 + 72) = result;
  return result;
}

void __destructor_8_s0_s8_s16_s24_s32_s40_s48(uint64_t a1)
{
  v2 = *(a1 + 48);
}

double __copy_assignment_8_8_s0_s8_s16_S_s24_s32_s40_s48_s56_s64_s72_t80w64(id *a1, id *a2)
{
  objc_storeStrong(a1, *a2);
  objc_storeStrong(a1 + 1, a2[1]);
  objc_storeStrong(a1 + 2, a2[2]);

  *&result = __copy_assignment_8_8_s0_s8_s16_s24_s32_s40_s48_t56w64((a1 + 3), (a2 + 3)).n128_u64[0];
  return result;
}

__n128 __copy_assignment_8_8_s0_s8_s16_s24_s32_s40_s48_t56w64(uint64_t a1, uint64_t a2)
{
  objc_storeStrong(a1, *a2);
  objc_storeStrong((a1 + 8), *(a2 + 8));
  objc_storeStrong((a1 + 16), *(a2 + 16));
  objc_storeStrong((a1 + 24), *(a2 + 24));
  objc_storeStrong((a1 + 32), *(a2 + 32));
  objc_storeStrong((a1 + 40), *(a2 + 40));
  objc_storeStrong((a1 + 48), *(a2 + 48));
  result = *(a2 + 56);
  v5 = *(a2 + 72);
  v6 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v6;
  *(a1 + 72) = v5;
  *(a1 + 56) = result;
  return result;
}

void __destructor_8_s0_s8_s16_S_s24_s32_s40_s48_s56_s64_s72(id *a1)
{

  __destructor_8_s0_s8_s16_s24_s32_s40_s48((a1 + 3));
}

double __copy_constructor_8_8_s0_s8_s16_S_s24_s32_s40_s48_s56_s64_s72_t80w64(void *a1, id *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];

  *&result = __copy_constructor_8_8_s0_s8_s16_s24_s32_s40_s48_t56w64((a1 + 3), (a2 + 3)).n128_u64[0];
  return result;
}

void ABReleaseResources()
{
  v0 = +[ABDeviceSceneResourceLoader sharedLoader];
  [(ABDeviceSceneResourceLoader *)v0 releaseResources];
}

void sub_23DE1D8D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, OS_LOG_TYPE_DEFAULT, a4, va, 0xCu);
}

void sub_23DE1F7EC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_23DE207B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __ABLoadDeviceSceneModel_block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = [*(a1 + 32) childNodeWithName:a2 recursively:1];
  v3 = [v11 geometry];
  v4 = [v3 firstMaterial];

  v5 = *(a1 + 48);
  v6 = [v4 normal];
  [v6 setIntensity:v5];

  v7 = *(a1 + 40);
  v8 = [v4 diffuse];
  [v8 setContents:v7];

  v9 = *(a1 + 56);
  v10 = [v4 roughness];
  [v10 setIntensity:v9];
}

void __ABLoadDeviceSceneModel_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v11 = [*(a1 + 32) childNodeWithName:a2 recursively:1];
  v3 = [v11 geometry];
  v4 = [v3 firstMaterial];

  v5 = *(a1 + 48);
  v6 = [v4 normal];
  [v6 setIntensity:v5];

  v7 = *(a1 + 40);
  v8 = [v4 diffuse];
  [v8 setContents:v7];

  v9 = *(a1 + 56);
  v10 = [v4 roughness];
  [v10 setIntensity:v9];
}

void ABDeviceSceneButtonModelSetColor(id *a1, void *a2, double a3)
{
  v5 = a2;
  v35 = 0.0;
  v36 = 0.0;
  v33 = 0.0;
  v34 = 0.0;
  [v5 getRed:&v36 green:&v35 blue:&v34 alpha:&v33];
  v6 = [*a1 geometry];
  v7 = [v6 firstMaterial];

  HIDWORD(v9) = HIDWORD(v35);
  HIDWORD(v8) = HIDWORD(v36);
  *&v8 = v36;
  *&v9 = v35;
  HIDWORD(v10) = HIDWORD(v34);
  *&v10 = v34;
  v11 = [MEMORY[0x277CCAE60] valueWithSCNVector3:{v8, v9, v10}];
  [v7 setValue:v11 forKey:@"glowColor"];

  [v7 setValue:&unk_28501F148 forKey:@"glowDistance"];
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:v33 * 0.4];
  [v7 setValue:v12 forKey:@"glowAmount"];

  IsD23 = ABDeviceIsD23(v13);
  if (IsD23)
  {
    [v7 setValue:&unk_28501F158 forKey:@"glowFalloff"];
    [v7 setValue:&unk_28501F168 forKey:@"glowScaleFactor"];
    IsD23 = [v7 setValue:&unk_28501F178 forKey:@"glowAmount"];
  }

  if (ABDeviceIsV5x(IsD23))
  {
    [v7 setValue:&unk_28501F188 forKey:@"glowFalloff"];
    [v7 setValue:&unk_28501F198 forKey:@"glowScaleFactor"];
    [v7 setValue:&unk_28501F1A8 forKey:@"glowAmount"];
  }

  v15 = [a1[1] geometry];
  v16 = [v15 firstMaterial];

  v17 = [v16 emission];
  [v17 setContents:v5];

  v18 = [v16 emission];
  [v18 setIntensity:a3 * 0.35];

  v19 = [a1[2] geometry];
  v20 = [v19 firstMaterial];

  v21 = [v20 emission];
  [v21 setContents:v5];

  v22 = [v20 emission];
  [v22 setIntensity:a3 * 0.35];

  if (v5)
  {
    v23 = [a1[4] geometry];
    v24 = [v23 firstMaterial];
    v25 = [v24 emission];
    [v25 setContents:v5];

    v26 = [a1[6] geometry];
    v27 = [v26 firstMaterial];
    v28 = [v27 emission];
    [v28 setContents:v5];
  }

  [a1[4] setOpacity:a3];
  [a1[6] setOpacity:a3];
  v30 = a3 == 1.0 && v5 != 0;
  [a1[3] setHidden:v30];
  [a1[5] setHidden:v30];
  v32 = a3 == 0.0 && v5 == 0;
  [a1[4] setHidden:v32];
  [a1[6] setHidden:v32];

  __destructor_8_s0_s8_s16_s24_s32_s40_s48(a1);
}

void sub_23DE21E64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id ABDefaultZoomedOutSceneParams(uint64_t a1)
{
  if (ABDefaultZoomedOutSceneParams_onceToken != -1)
  {
    ABDefaultZoomedOutSceneParams_cold_1();
  }

  v2 = ABDefaultZoomedOutSceneParams_params;

  return v2;
}

void __ABDefaultZoomedOutSceneParams_block_invoke()
{
  v7[16] = *MEMORY[0x277D85DE8];
  v6[0] = @"Scale";
  v6[1] = @"Rotation";
  v7[0] = &unk_28501EF78;
  v7[1] = &unk_28501EF90;
  v6[2] = @"xOffset";
  v6[3] = @"yOffset";
  v7[2] = &unk_28501EFA8;
  v7[3] = &unk_28501F1B8;
  v6[4] = @"zOffset";
  v6[5] = @"Damping";
  v7[4] = &unk_28501EFC0;
  v7[5] = &unk_28501EF78;
  v6[6] = @"DampingSmooth";
  v6[7] = @"Response";
  v7[6] = &unk_28501EFD8;
  v7[7] = &unk_28501EF78;
  v6[8] = @"ResponseSmooth";
  v6[9] = @"TimeFactor";
  v7[8] = &unk_28501EFD8;
  v7[9] = &unk_28501EF78;
  v6[10] = @"FocusDistance";
  v6[11] = @"FocalLength";
  v7[10] = &unk_28501F1C8;
  v7[11] = &unk_28501F1D8;
  v6[12] = @"fStop";
  v6[13] = @"ApertureBlades";
  v7[12] = &unk_28501F1E8;
  v7[13] = &unk_28501EFF0;
  v6[14] = @"LightingIntensity";
  v6[15] = @"ZoomInProgress";
  v7[14] = &unk_28501EF78;
  v7[15] = &unk_28501EFD8;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:16];
  v1 = ABDefaultZoomedOutSceneParams_params;
  ABDefaultZoomedOutSceneParams_params = v0;

  if (ABDeviceIsD23(v2))
  {
    v3 = [ABDefaultZoomedOutSceneParams_params mutableCopy];
    [v3 setObject:&unk_28501F1F8 forKeyedSubscript:@"xOffset"];
    [v3 setObject:&unk_28501F208 forKeyedSubscript:@"yOffset"];
    [v3 setObject:&unk_28501EFC0 forKeyedSubscript:@"zOffset"];
    v4 = [v3 copy];
    v5 = ABDefaultZoomedOutSceneParams_params;
    ABDefaultZoomedOutSceneParams_params = v4;
  }
}

id ABDefaultZoomedInSceneParams(uint64_t a1)
{
  if (ABDefaultZoomedInSceneParams_onceToken != -1)
  {
    ABDefaultZoomedInSceneParams_cold_1();
  }

  v2 = ABDefaultZoomedInSceneParams_params;

  return v2;
}

void __ABDefaultZoomedInSceneParams_block_invoke()
{
  v11[16] = *MEMORY[0x277D85DE8];
  v10[0] = @"Scale";
  v10[1] = @"Rotation";
  v11[0] = &unk_28501EF78;
  v11[1] = &unk_28501F008;
  v10[2] = @"xOffset";
  v10[3] = @"yOffset";
  v11[2] = &unk_28501EFD8;
  v11[3] = &unk_28501F218;
  v10[4] = @"zOffset";
  v10[5] = @"Damping";
  v11[4] = &unk_28501F228;
  v11[5] = &unk_28501EF78;
  v10[6] = @"DampingSmooth";
  v10[7] = @"Response";
  v11[6] = &unk_28501EFD8;
  v11[7] = &unk_28501EF78;
  v10[8] = @"ResponseSmooth";
  v10[9] = @"TimeFactor";
  v11[8] = &unk_28501EFD8;
  v11[9] = &unk_28501EF78;
  v10[10] = @"FocusDistance";
  v10[11] = @"FocalLength";
  v11[10] = &unk_28501F1C8;
  v11[11] = &unk_28501F1D8;
  v10[12] = @"fStop";
  v10[13] = @"ApertureBlades";
  v11[12] = &unk_28501F1E8;
  v11[13] = &unk_28501EFF0;
  v10[14] = @"LightingIntensity";
  v10[15] = @"ZoomInProgress";
  v11[14] = &unk_28501F238;
  v11[15] = &unk_28501EF78;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:16];
  v1 = ABDefaultZoomedInSceneParams_params;
  ABDefaultZoomedInSceneParams_params = v0;

  IsD23 = ABDeviceIsD23(v2);
  if (IsD23)
  {
    v4 = [ABDefaultZoomedInSceneParams_params mutableCopy];
    [v4 setObject:&unk_28501F208 forKeyedSubscript:@"yOffset"];
    [v4 setObject:&unk_28501F248 forKeyedSubscript:@"zOffset"];
    v5 = [v4 copy];
    v6 = ABDefaultZoomedInSceneParams_params;
    ABDefaultZoomedInSceneParams_params = v5;
  }

  if (ABDeviceIsV5x(IsD23))
  {
    v7 = [ABDefaultZoomedInSceneParams_params mutableCopy];
    [v7 setObject:&unk_28501F258 forKeyedSubscript:@"Scale"];
    [v7 setObject:&unk_28501F268 forKeyedSubscript:@"yOffset"];
    v8 = [v7 copy];
    v9 = ABDefaultZoomedInSceneParams_params;
    ABDefaultZoomedInSceneParams_params = v8;
  }
}

id ABWelcomeModeZoomedOutSceneParams(uint64_t a1)
{
  if (ABWelcomeModeZoomedOutSceneParams_onceToken != -1)
  {
    ABWelcomeModeZoomedOutSceneParams_cold_1();
  }

  v2 = ABWelcomeModeZoomedOutSceneParams_params;

  return v2;
}

void __ABWelcomeModeZoomedOutSceneParams_block_invoke(uint64_t a1, uint64_t a2)
{
  v28[16] = *MEMORY[0x277D85DE8];
  IsV59 = ABDeviceIsV59(a1, a2);
  if (IsV59)
  {
    v3 = 0.9;
  }

  else
  {
    v3 = 0.0;
  }

  v4 = ABDefaultZoomedOutSceneParams(IsV59);
  v28[0] = &unk_28501EF78;
  v5 = MEMORY[0x277CCABB0];
  v6 = [v4 objectForKeyedSubscript:{@"Scale", @"Rotation"}];
  [v6 doubleValue];
  v8 = [v5 numberWithDouble:(1.0 - v3) * 62.0 + v7 * v3];
  v28[1] = v8;
  v27[2] = @"xOffset";
  v9 = MEMORY[0x277CCABB0];
  v10 = [v4 objectForKeyedSubscript:?];
  [v10 doubleValue];
  v12 = [v9 numberWithDouble:(1.0 - v3) * 0.5 + v11 * v3];
  v28[2] = v12;
  v27[3] = @"yOffset";
  v13 = MEMORY[0x277CCABB0];
  v14 = [v4 objectForKeyedSubscript:?];
  [v14 doubleValue];
  v16 = [v13 numberWithDouble:(1.0 - v3) * -3.35 + v15 * v3];
  v28[3] = v16;
  v27[4] = @"zOffset";
  v17 = MEMORY[0x277CCABB0];
  v18 = [v4 objectForKeyedSubscript:?];
  [v18 doubleValue];
  v20 = [v17 numberWithDouble:(1.0 - v3) * -10.5 + v19 * v3];
  v28[4] = v20;
  v28[5] = &unk_28501EF78;
  v27[5] = @"Damping";
  v27[6] = @"DampingSmooth";
  v27[7] = @"Response";
  v27[8] = @"ResponseSmooth";
  v27[9] = @"TimeFactor";
  v27[10] = @"FocusDistance";
  v28[10] = &unk_28501F1C8;
  v28[11] = &unk_28501F1D8;
  v27[11] = @"FocalLength";
  v27[12] = @"fStop";
  v28[12] = &unk_28501F1E8;
  v28[13] = &unk_28501EFF0;
  v28[6] = &unk_28501EFD8;
  v28[7] = &unk_28501EF78;
  v27[13] = @"ApertureBlades";
  v27[14] = @"LightingIntensity";
  v28[8] = &unk_28501EFD8;
  v28[9] = &unk_28501EF78;
  v27[15] = @"ZoomInProgress";
  v28[14] = &unk_28501EF78;
  v28[15] = &unk_28501EFD8;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:16];
  v22 = ABWelcomeModeZoomedOutSceneParams_params;
  ABWelcomeModeZoomedOutSceneParams_params = v21;

  if (ABDeviceIsD23(v23))
  {
    v24 = [ABWelcomeModeZoomedOutSceneParams_params mutableCopy];
    [v24 setObject:&unk_28501F278 forKeyedSubscript:@"LightingIntensity"];
    v25 = [v24 copy];
    v26 = ABWelcomeModeZoomedOutSceneParams_params;
    ABWelcomeModeZoomedOutSceneParams_params = v25;
  }
}

id ABWelcomeModeZoomedInSceneParams(uint64_t a1)
{
  if (ABWelcomeModeZoomedInSceneParams_onceToken != -1)
  {
    ABWelcomeModeZoomedInSceneParams_cold_1();
  }

  v2 = ABWelcomeModeZoomedInSceneParams_params;

  return v2;
}

void __ABWelcomeModeZoomedInSceneParams_block_invoke(uint64_t a1)
{
  v1 = ABDefaultZoomedInSceneParams(a1);
  v4 = [v1 mutableCopy];

  [v4 setObject:&unk_28501F020 forKeyedSubscript:@"Response"];
  v2 = [v4 copy];
  v3 = ABWelcomeModeZoomedInSceneParams_params;
  ABWelcomeModeZoomedInSceneParams_params = v2;
}

id ABScrollDraggingStateParams(void *a1, void *a2, double a3, double a4)
{
  v29[3] = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v28[0] = @"TimeFactor";
  v28[1] = @"Damping";
  v29[0] = &unk_28501EF78;
  v29[1] = &unk_28501EF78;
  v28[2] = @"DampingSmooth";
  v29[2] = &unk_28501EFD8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:3];
  v10 = v8;
  v11 = v9;
  v12 = v7;
  v13 = objc_opt_new();
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __transitionStateParams_block_invoke;
  v22 = &unk_278BFFF40;
  v23 = v11;
  v24 = v10;
  v25 = v13;
  v26 = a4;
  v27 = a3;
  v14 = v11;
  v15 = v10;
  v16 = v13;
  [v12 enumerateKeysAndObjectsUsingBlock:&v19];

  v17 = [v16 copy];

  return v17;
}

id ABStateParamLimits(uint64_t a1)
{
  if (ABStateParamLimits_onceToken != -1)
  {
    ABStateParamLimits_cold_1();
  }

  v2 = ABStateParamLimits_limits;

  return v2;
}

void __transitionStateParams_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v7];
  if (v6)
  {
    [*(a1 + 48) setObject:v6 forKeyedSubscript:v7];
  }

  else
  {
    __transitionStateParams_block_invoke_cold_1(a1, v7, v5);
  }
}

id OUTLINED_FUNCTION_0_2(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, objc_super a13)
{
  v16 = *(v14 + 3120);
  a13.receiver = a1;
  a13.super_class = v16;

  return objc_msgSendSuper2(&a13, (v13 + 2936), a3, a4, a5, a6, a7, a8);
}

float64x2_t SCNMatrix4FromCATransform3D@<Q0>(float64x2_t *a1@<X0>, float32x4_t *a2@<X8>)
{
  v2 = vcvt_hight_f32_f64(vcvt_f32_f64(a1[2]), a1[3]);
  *a2 = vcvt_hight_f32_f64(vcvt_f32_f64(*a1), a1[1]);
  a2[1] = v2;
  result = a1[7];
  v4 = vcvt_hight_f32_f64(vcvt_f32_f64(a1[6]), result);
  a2[2] = vcvt_hight_f32_f64(vcvt_f32_f64(a1[4]), a1[5]);
  a2[3] = v4;
  return result;
}

float64x2_t CATransform3DFromSCNMatrix4@<Q0>(float32x2_t *a1@<X0>, float64x2_t *a2@<X8>)
{
  v2 = vcvtq_f64_f32(a1[1]);
  *a2 = vcvtq_f64_f32(*a1);
  a2[1] = v2;
  v3 = vcvtq_f64_f32(a1[3]);
  a2[2] = vcvtq_f64_f32(a1[2]);
  a2[3] = v3;
  v4 = vcvtq_f64_f32(a1[5]);
  a2[4] = vcvtq_f64_f32(a1[4]);
  a2[5] = v4;
  result = vcvtq_f64_f32(a1[6]);
  v6 = vcvtq_f64_f32(a1[7]);
  a2[6] = result;
  a2[7] = v6;
  return result;
}

double ABClamp(double result, double a2, double a3)
{
  if (result >= a3)
  {
    result = a3;
  }

  if (result < a2)
  {
    return a2;
  }

  return result;
}

uint64_t ABEqualObjects(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = 0;
    if (v3 && v4)
    {
      v6 = [v3 isEqual:v4];
    }
  }

  return v6;
}

id ABSnapshotImageName(int a1)
{
  v2 = deviceSuffix();
  if (v2)
  {
    v3 = MEMORY[0x277CCACA8];
    if (a1)
    {
      v4 = @"assistant";
    }

    else
    {
      v4 = @"settings";
    }

    v5 = deviceSuffix();
    v6 = [v3 stringWithFormat:@"scene_snapshot_%@-%@.png", v4, v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

__CFString *deviceSuffix()
{
  if (deviceSuffix_onceToken != -1)
  {
    deviceSuffix_cold_1();
  }

  if (deviceSuffix_sCachedSuffix)
  {
    v0 = deviceSuffix_sCachedSuffix;
  }

  else
  {
    v1 = ABLogger();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 0;
      _os_log_impl(&dword_23DE18000, v1, OS_LOG_TYPE_DEFAULT, "Unsupported device. Fallback to using screen size.", v6, 2u);
    }

    v2 = [MEMORY[0x277D759A0] mainScreen];
    [v2 bounds];
    v3 = @"D83";
    if (v4 == 932.0)
    {
      v3 = @"D84";
    }

    v0 = v3;
  }

  return v0;
}

uint64_t ABDeviceIsV59(uint64_t a1, uint64_t a2)
{
  if (ABDeviceIsV59_onceToken != -1)
  {
    ABDeviceModelResourceName_cold_1();
  }

  return ABDeviceIsV59_sIsDevice;
}

uint64_t ABDeviceIsV5x(uint64_t a1)
{
  if (ABDeviceIsV5x_onceToken != -1)
  {
    ABDeviceModelResourceName_cold_3();
  }

  return ABDeviceIsV5x_sIsDevice;
}

uint64_t ABDeviceIsD23(uint64_t a1)
{
  if (ABDeviceIsD23_onceToken != -1)
  {
    ABDeviceModelResourceName_cold_4();
  }

  return ABDeviceIsD23_sIsDevice;
}

__CFString *ABDisplayPackageName(uint64_t a1, uint64_t a2)
{
  if (ABDeviceIsV59_onceToken != -1)
  {
    ABDeviceModelResourceName_cold_1();
  }

  if (ABDeviceIsV59_sIsDevice == 1)
  {
    v2 = MEMORY[0x277CCACA8];
    v3 = deviceSuffix();
    v4 = [v2 stringWithFormat:@"Display-%@", v3];
  }

  else
  {
    v4 = @"Display";
  }

  return v4;
}

uint64_t __ABDeviceIsV59_block_invoke()
{
  result = MGIsDeviceOfType();
  ABDeviceIsV59_sIsDevice = result;
  return result;
}

uint64_t __ABDeviceIsD23_block_invoke()
{
  result = MGIsDeviceOfType();
  ABDeviceIsD23_sIsDevice = result;
  return result;
}

uint64_t __ABDeviceIsV5x_block_invoke()
{
  ABDeviceIsV5x_sIsDevice = 0;
  ABDeviceIsV5x_sIsDevice = MGIsDeviceOfType();
  if (ABDeviceIsV5x_sIsDevice)
  {
    result = 1;
  }

  else
  {
    result = MGIsDeviceOfType();
  }

  ABDeviceIsV5x_sIsDevice = result;
  return result;
}

uint64_t __ABDeviceIsV57_block_invoke()
{
  result = MGIsDeviceOfType();
  ABDeviceIsV57_sIsDevice = result;
  return result;
}

void __deviceSuffix_block_invoke()
{
  if (MGIsDeviceOfType())
  {
    v0 = deviceSuffix_sCachedSuffix;
    deviceSuffix_sCachedSuffix = @"D84";
  }

  if (MGIsDeviceOfType())
  {
    v1 = deviceSuffix_sCachedSuffix;
    deviceSuffix_sCachedSuffix = @"D83";
  }

  if (MGIsDeviceOfType())
  {
    v2 = deviceSuffix_sCachedSuffix;
    deviceSuffix_sCachedSuffix = @"D93";
  }

  if (MGIsDeviceOfType())
  {
    v3 = deviceSuffix_sCachedSuffix;
    deviceSuffix_sCachedSuffix = @"D94";
  }

  if (MGIsDeviceOfType())
  {
    v4 = deviceSuffix_sCachedSuffix;
    deviceSuffix_sCachedSuffix = @"D47";
  }

  if (MGIsDeviceOfType())
  {
    v5 = deviceSuffix_sCachedSuffix;
    deviceSuffix_sCachedSuffix = @"D48";
  }

  if (MGIsDeviceOfType())
  {
    v6 = deviceSuffix_sCachedSuffix;
    deviceSuffix_sCachedSuffix = @"V59";
  }

  if (MGIsDeviceOfType())
  {
    v7 = deviceSuffix_sCachedSuffix;
    deviceSuffix_sCachedSuffix = @"D23";
  }

  if (MGIsDeviceOfType())
  {
    v8 = deviceSuffix_sCachedSuffix;
    deviceSuffix_sCachedSuffix = @"V53";
  }

  if (MGIsDeviceOfType())
  {
    v9 = deviceSuffix_sCachedSuffix;
    deviceSuffix_sCachedSuffix = @"V54";
  }

  if (MGIsDeviceOfType())
  {
    v10 = deviceSuffix_sCachedSuffix;
    deviceSuffix_sCachedSuffix = @"V57";
  }
}

void sub_23DE24494(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __ABStateParamLimits_block_invoke()
{
  v115[11] = *MEMORY[0x277D85DE8];
  v114[0] = @"Scale";
  v0 = [ABParameterLimits alloc];
  if (v0)
  {
    v0 = OUTLINED_FUNCTION_0_2(v0, v1, v2, v3, v4, v5, v6, v7, v106, v107, v109, v111, v113);
    if (v0)
    {
      *&v0->_minValue = xmmword_23DE289A0;
    }
  }

  v112 = v0;
  v115[0] = v0;
  v114[1] = @"Damping";
  v8 = [ABParameterLimits alloc];
  if (v8)
  {
    v8 = OUTLINED_FUNCTION_0_2(v8, v9, v10, v11, v12, v13, v14, v15, v106, v107, v109, v112, v113);
    if (v8)
    {
      *&v8->_minValue = xmmword_23DE289B0;
    }
  }

  v110 = v8;
  v115[1] = v8;
  v114[2] = @"DampingSmooth";
  v16 = [ABParameterLimits alloc];
  if (v16)
  {
    v16 = OUTLINED_FUNCTION_0_2(v16, v17, v18, v19, v20, v21, v22, v23, v106, v107, v110, v112, v113);
    if (v16)
    {
      *&v16->_minValue = xmmword_23DE289B0;
    }
  }

  v108 = v16;
  v115[2] = v16;
  v114[3] = @"Response";
  v24 = [ABParameterLimits alloc];
  if (v24)
  {
    v32 = OUTLINED_FUNCTION_0_2(v24, v25, v26, v27, v28, v29, v30, v31, v106, v108, v110, v112, v113);
    v33 = v32;
    if (v32)
    {
      *(v32 + 8) = xmmword_23DE289B0;
    }
  }

  else
  {
    v33 = 0;
  }

  v115[3] = v33;
  v114[4] = @"ResponseSmooth";
  v34 = [ABParameterLimits alloc];
  if (v34)
  {
    v42 = OUTLINED_FUNCTION_0_2(v34, v35, v36, v37, v38, v39, v40, v41, v106, v108, v110, v112, v113);
    v43 = v42;
    if (v42)
    {
      *(v42 + 8) = xmmword_23DE289B0;
    }
  }

  else
  {
    v43 = 0;
  }

  v115[4] = v43;
  v114[5] = @"TimeFactor";
  v44 = [ABParameterLimits alloc];
  if (v44)
  {
    v52 = OUTLINED_FUNCTION_0_2(v44, v45, v46, v47, v48, v49, v50, v51, v106, v108, v110, v112, v113);
    v53 = v52;
    if (v52)
    {
      *(v52 + 8) = xmmword_23DE289B0;
    }
  }

  else
  {
    v53 = 0;
  }

  v115[5] = v53;
  v114[6] = @"FocusDistance";
  v54 = [ABParameterLimits alloc];
  if (v54)
  {
    v62 = OUTLINED_FUNCTION_0_2(v54, v55, v56, v57, v58, v59, v60, v61, v106, v108, v110, v112, v113);
    v63 = v62;
    if (v62)
    {
      *(v62 + 8) = xmmword_23DE289A0;
    }
  }

  else
  {
    v63 = 0;
  }

  v115[6] = v63;
  v114[7] = @"FocalLength";
  v64 = [ABParameterLimits alloc];
  if (v64)
  {
    v72 = OUTLINED_FUNCTION_0_2(v64, v65, v66, v67, v68, v69, v70, v71, v106, v108, v110, v112, v113);
    v73 = v72;
    if (v72)
    {
      *(v72 + 8) = xmmword_23DE289A0;
    }
  }

  else
  {
    v73 = 0;
  }

  v115[7] = v73;
  v114[8] = @"ApertureBlades";
  v74 = [ABParameterLimits alloc];
  if (v74)
  {
    v82 = OUTLINED_FUNCTION_0_2(v74, v75, v76, v77, v78, v79, v80, v81, v106, v108, v110, v112, v113);
    v83 = v82;
    if (v82)
    {
      *(v82 + 8) = xmmword_23DE289B0;
    }
  }

  else
  {
    v83 = 0;
  }

  v115[8] = v83;
  v114[9] = @"fStop";
  v84 = [ABParameterLimits alloc];
  if (v84)
  {
    v92 = OUTLINED_FUNCTION_0_2(v84, v85, v86, v87, v88, v89, v90, v91, v106, v108, v110, v112, v113);
    v93 = v92;
    if (v92)
    {
      *(v92 + 8) = xmmword_23DE289A0;
    }
  }

  else
  {
    v93 = 0;
  }

  v115[9] = v93;
  v114[10] = @"LightingIntensity";
  v94 = [ABParameterLimits alloc];
  if (v94)
  {
    v102 = OUTLINED_FUNCTION_0_2(v94, v95, v96, v97, v98, v99, v100, v101, v106, v108, v110, v112, v113);
    v103 = v102;
    if (v102)
    {
      *(v102 + 8) = xmmword_23DE289B0;
    }
  }

  else
  {
    v103 = 0;
  }

  v115[10] = v103;
  v104 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v115 forKeys:v114 count:11];
  v105 = ABStateParamLimits_limits;
  ABStateParamLimits_limits = v104;
}

void __transitionStateParams_block_invoke_cold_1(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [*(a1 + 40) objectForKeyedSubscript:a2];
  [v6 doubleValue];
  v8 = v7;
  [a3 doubleValue];
  v10 = (v8 - v9) * *(a1 + 56);

  v12 = ABStateParamLimits(v11);
  v13 = [v12 objectForKeyedSubscript:a2];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = +[ABParameterLimits unlimited];
  }

  v22 = v15;

  v16 = MEMORY[0x277CCABB0];
  [a3 doubleValue];
  v18 = v17 + v10 * *(a1 + 64);
  if (v22)
  {
    v19 = v22[1];
    v20 = v22[2];
  }

  else
  {
    v19 = 0.0;
    v20 = 0.0;
  }

  v21 = [v16 numberWithDouble:{ABClamp(v18, v19, v20)}];
  [*(a1 + 48) setObject:v21 forKeyedSubscript:a2];
}

CAFrameRateRange CAFrameRateRangeMake(float minimum, float maximum, float preferred)
{
  MEMORY[0x282128850](minimum, maximum, preferred);
  result.preferred = v5;
  result.maximum = v4;
  result.minimum = v3;
  return result;
}