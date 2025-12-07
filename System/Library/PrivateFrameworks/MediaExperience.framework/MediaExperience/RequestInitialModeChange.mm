@interface RequestInitialModeChange
@end

@implementation RequestInitialModeChange

uint64_t __fsmcontroller_RequestInitialModeChange_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1;
  v76 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = *(a1 + 48);
    if (v11 && (v12 = *v11) != 0)
    {
      *(v10 + 32) = v12;
      if (v12 == 2)
      {
        v13 = 100;
        *(v10 + 36) = 100;
      }

      else
      {
        *(v10 + 36) = v11[1];
        v13 = v11[2];
      }
    }

    else
    {
      *(v10 + 32) = 0x6400000002;
      v13 = 100;
    }

    *(v10 + 40) = v13;
    if (!dword_1EB75E258)
    {
      goto LABEL_15;
    }

    v14 = OUTLINED_FUNCTION_10_7(a1, a2, a3, a4, a5, a6, a7, a8, v57, v60, v63, v66, SBYTE2(v66), SBYTE3(v66), SHIDWORD(v66));
    OUTLINED_FUNCTION_4_2(v14, v15, v16, v17, v18, v19, v20, v21, v58, v61, v64, v67, v69, v71, v73);
    OUTLINED_FUNCTION_12_7();
    if (v23)
    {
      v24 = v22;
    }

    else
    {
      v24 = v8;
    }

    if (v24)
    {
      FSMDebug_GetFigStarkModeEntityString(*(v10 + 32));
      FSMDebug_GetFigStarkModeConstraintString(*(v10 + 36));
      FSMDebug_GetFigStarkModeConstraintString(*(v10 + 40));
      OUTLINED_FUNCTION_6_12();
      OUTLINED_FUNCTION_5_13();
      OUTLINED_FUNCTION_2_11(v24, v25, v75, v26, &dword_1B17A2000, v27, v28, "-stark mode- %s: Final initial owner of CarPlay screen resource is %{public}@/%{public}@/%{public}@");
      v8 = HIDWORD(v66);
    }

    OUTLINED_FUNCTION_0_0();
    a1 = OUTLINED_FUNCTION_15_7(v29, v30, v31, v32, v33);
    v10 = *(v9 + 40);
    if (v10)
    {
LABEL_15:
      v34 = *(v9 + 56);
      if (v34 && (v35 = *v34) != 0)
      {
        *(v10 + 64) = v35;
        if (v35 == 2)
        {
          v36 = 100;
          *(v10 + 68) = 100;
        }

        else
        {
          *(v10 + 68) = v34[1];
          v36 = v34[2];
        }
      }

      else
      {
        *(v10 + 64) = 0x6400000002;
        v36 = 100;
      }

      *(v10 + 72) = v36;
      if (dword_1EB75E258)
      {
        v37 = OUTLINED_FUNCTION_10_7(a1, a2, a3, a4, a5, a6, a7, a8, v57, v60, v63, v66, SBYTE2(v66), SBYTE3(v66), SHIDWORD(v66));
        OUTLINED_FUNCTION_4_2(v37, v38, v39, v40, v41, v42, v43, v44, v59, v62, v65, v68, v70, v72, v74);
        OUTLINED_FUNCTION_12_7();
        if (v23)
        {
          v46 = v45;
        }

        else
        {
          v46 = v8;
        }

        if (v46)
        {
          FSMDebug_GetFigStarkModeEntityString(*(v10 + 64));
          FSMDebug_GetFigStarkModeConstraintString(*(v10 + 68));
          FSMDebug_GetFigStarkModeConstraintString(*(v10 + 72));
          OUTLINED_FUNCTION_6_12();
          OUTLINED_FUNCTION_5_13();
          OUTLINED_FUNCTION_2_11(v46, v47, v75, v48, &dword_1B17A2000, v49, v50, "-stark mode- %s: Final initial owner of CarPlay main audio resource is %{public}@/%{public}@/%{public}@");
        }

        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_15_7(v51, v52, v53, v54, v55);
        v10 = *(v9 + 40);
      }
    }
  }

  result = fsm_requestModeChange(v10, (v9 + 64), *(v9 + 136), 1, *(v9 + 144), 0);
  *(*(*(v9 + 32) + 8) + 24) = result;
  return result;
}

@end