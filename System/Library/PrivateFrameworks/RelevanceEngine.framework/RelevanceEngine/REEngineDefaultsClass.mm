@interface REEngineDefaultsClass
@end

@implementation REEngineDefaultsClass

void __get_REEngineDefaultsClass_block_invoke(uint64_t a1)
{
  v4 = 0;
  v2 = RelevanceEngineLibraryCore_0(&v4);
  v3 = v4;
  if (v2)
  {
    if (!v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = abort_report_np("%s", v4);
  }

  free(v3);
LABEL_3:
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("_REEngineDefaults");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_REEngineDefaultsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __get_REEngineDefaultsClass_block_invoke_cold_1();
    OUTLINED_FUNCTION_0_6();
  }
}

void __get_REEngineDefaultsClass_block_invoke_0(uint64_t a1)
{
  v4 = 0;
  v2 = RelevanceEngineLibraryCore_1(&v4);
  v3 = v4;
  if (v2)
  {
    if (!v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = abort_report_np("%s", v4);
  }

  free(v3);
LABEL_3:
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("_REEngineDefaults");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_REEngineDefaultsClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __get_REEngineDefaultsClass_block_invoke_cold_1();
    OUTLINED_FUNCTION_1_3();
  }
}

Class __get_REEngineDefaultsClass_block_invoke_1(uint64_t a1)
{
  v7 = 0;
  v2 = RelevanceEngineLibraryCore_2(&v7);
  v3 = v7;
  if (v2)
  {
    if (!v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = abort_report_np("%s", v7);
  }

  free(v3);
LABEL_3:
  result = objc_getClass("_REEngineDefaults");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_REEngineDefaultsClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __get_REEngineDefaultsClass_block_invoke_cold_1();
    return OUTLINED_FUNCTION_4_1(v5, v6);
  }

  return result;
}

Class __get_REEngineDefaultsClass_block_invoke_2(uint64_t a1)
{
  v6 = 0;
  v2 = RelevanceEngineLibraryCore_3(&v6);
  v3 = v6;
  if (v2)
  {
    if (!v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = abort_report_np("%s", v6);
  }

  free(v3);
LABEL_3:
  result = objc_getClass("_REEngineDefaults");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_REEngineDefaultsClass_softClass_2 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __get_REEngineDefaultsClass_block_invoke_cold_1();
    return RESampleFeature(v5);
  }

  return result;
}

Class __get_REEngineDefaultsClass_block_invoke_3(uint64_t a1)
{
  v7 = 0;
  v2 = RelevanceEngineLibraryCore_4(&v7);
  v3 = v7;
  if (v2)
  {
    if (!v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = abort_report_np("%s", v7);
  }

  free(v3);
LABEL_3:
  result = objc_getClass("_REEngineDefaults");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_REEngineDefaultsClass_softClass_3 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __get_REEngineDefaultsClass_block_invoke_cold_1();
    return __REGetDisableMLModel_block_invoke(v5, v6);
  }

  return result;
}

@end