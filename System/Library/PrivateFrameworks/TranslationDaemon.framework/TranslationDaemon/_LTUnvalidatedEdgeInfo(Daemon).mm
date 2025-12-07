@interface _LTUnvalidatedEdgeInfo(Daemon)
+ (id)unvalidatedEdgeWithEMTAlternative:()Daemon;
+ (id)unvalidatedEdgeWithFTAlternative:()Daemon descriptions:;
@end

@implementation _LTUnvalidatedEdgeInfo(Daemon)

+ (id)unvalidatedEdgeWithEMTAlternative:()Daemon
{
  v4 = a3;
  v5 = objc_opt_respondsToSelector();
  if (v5)
  {
    alternativeDescription = [v4 alternativeDescription];
    alternativeType = [alternativeDescription alternativeType];
    if (alternativeType == 1)
    {
      meaningDescription = [alternativeDescription meaningDescription];
      genderDescription = meaningDescription;
      if (meaningDescription)
      {
        definition = [meaningDescription definition];
        if ([definition length])
        {
          v11 = [self meaningEdgeInfoWithTargetPhraseIndex:objc_msgSend(v4 targetLinkIndex:"translationPhraseIndex") meaningDescription:{objc_msgSend(v4, "selectionSpanIndex"), definition}];
        }

        else
        {
          v19 = _LTOSLogDisambiguation(0, v16);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            +[_LTUnvalidatedEdgeInfo(Daemon) unvalidatedEdgeWithEMTAlternative:];
          }

          v11 = 0;
        }

        goto LABEL_22;
      }

      v18 = _LTOSLogDisambiguation(0, v14);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        +[_LTUnvalidatedEdgeInfo(Daemon) unvalidatedEdgeWithEMTAlternative:];
      }
    }

    else
    {
      if (alternativeType)
      {
        v11 = 0;
LABEL_23:

        goto LABEL_24;
      }

      genderDescription = [alternativeDescription genderDescription];
      if (genderDescription)
      {
        v11 = [self genderEdgeInfoWithTargetPhraseIndex:objc_msgSend(v4 targetLinkIndex:"translationPhraseIndex") gender:objc_msgSend(v4 defaultGender:{"selectionSpanIndex"), objc_msgSend(genderDescription, "gender") != 0, objc_msgSend(genderDescription, "defaultGender") != 0}];
LABEL_22:

        goto LABEL_23;
      }

      v17 = _LTOSLogDisambiguation(0, v9);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        +[_LTUnvalidatedEdgeInfo(Daemon) unvalidatedEdgeWithEMTAlternative:];
      }
    }

    v11 = 0;
    goto LABEL_22;
  }

  v12 = _LTOSLogDisambiguation(v5, v6);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    +[_LTUnvalidatedEdgeInfo(Daemon) unvalidatedEdgeWithEMTAlternative:];
  }

  v11 = 0;
LABEL_24:

  return v11;
}

+ (id)unvalidatedEdgeWithFTAlternative:()Daemon descriptions:
{
  v6 = a3;
  v7 = a4;
  alternative_description_index = [v6 alternative_description_index];
  v9 = [v7 count];
  if (v9 > alternative_description_index)
  {
    v11 = [v7 objectAtIndexedSubscript:alternative_description_index];
    alternative_type = [v11 alternative_type];
    if (alternative_type)
    {
      if (alternative_type != 1)
      {
        v18 = 0;
LABEL_23:

        goto LABEL_24;
      }

      meaning_description = [v11 meaning_description];
      gender_description = meaning_description;
      if (meaning_description)
      {
        definition = [meaning_description definition];
        if ([definition length])
        {
          v18 = [self meaningEdgeInfoWithTargetPhraseIndex:objc_msgSend(v6 targetLinkIndex:"translation_phrase_index") meaningDescription:{objc_msgSend(v6, "selection_span_index"), definition}];
        }

        else
        {
          v23 = _LTOSLogDisambiguation(0, v17);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            +[_LTUnvalidatedEdgeInfo(Daemon) unvalidatedEdgeWithFTAlternative:descriptions:];
          }

          v18 = 0;
        }

        goto LABEL_22;
      }

      v21 = _LTOSLogDisambiguation(0, v14);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        +[_LTUnvalidatedEdgeInfo(Daemon) unvalidatedEdgeWithFTAlternative:descriptions:];
      }
    }

    else
    {
      gender_description = [v11 gender_description];
      if (gender_description)
      {
        v18 = [self genderEdgeInfoWithTargetPhraseIndex:objc_msgSend(v6 targetLinkIndex:"translation_phrase_index") gender:objc_msgSend(v6 defaultGender:{"selection_span_index"), objc_msgSend(gender_description, "gender") != 0, objc_msgSend(gender_description, "default_gender") != 0}];
LABEL_22:

        goto LABEL_23;
      }

      v22 = _LTOSLogDisambiguation(0, v20);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        +[_LTUnvalidatedEdgeInfo(Daemon) unvalidatedEdgeWithFTAlternative:descriptions:];
      }
    }

    v18 = 0;
    goto LABEL_22;
  }

  v19 = _LTOSLogDisambiguation(v9, v10);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
  {
    [(_LTUnvalidatedEdgeInfo(Daemon) *)v19 unvalidatedEdgeWithFTAlternative:v7 descriptions:alternative_description_index];
  }

  v18 = 0;
LABEL_24:

  return v18;
}

+ (void)unvalidatedEdgeWithFTAlternative:()Daemon descriptions:.cold.1(void *a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = 134218240;
  v7 = a3;
  v8 = 2048;
  v9 = [a2 count];
  _os_log_fault_impl(&dword_232E53000, v5, OS_LOG_TYPE_FAULT, "Can't create unvalidated edge info from FTAlternative because description index %zu doesn't exist; descriptions has %zu items", &v6, 0x16u);
}

@end