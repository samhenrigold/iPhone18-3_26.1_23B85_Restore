@interface NSArray(CTDisplayPlan)
- (id)carrierNames;
- (id)filteredPlansForHiddenInCloudBucket:()CTDisplayPlan;
- (id)filteredPlansForNonInstallableBucket;
- (id)filteredPlansForTransferableBucket;
- (id)filteredPlansForVisitStoreBucket;
- (id)filteredPlansWithTransferCapabilities:()CTDisplayPlan restrictionAllowed:;
- (id)filteredPlansWithTransferCapability:()CTDisplayPlan;
- (id)getCombinedFooterForNonTransferablePlans;
- (void)getCombinedTitleAndDetailsForNonTransferablePlans:()CTDisplayPlan details:;
- (void)getCombinedTitleAndDetailsForTransferCapability:()CTDisplayPlan title:detail:;
@end

@implementation NSArray(CTDisplayPlan)

- (id)carrierNames
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB58] set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  selfCopy = self;
  v4 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(selfCopy);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        carrierName = [v8 carrierName];
        v10 = [carrierName length];

        if (v10)
        {
          carrierName2 = [v8 carrierName];
          [v2 addObject:carrierName2];
        }
      }

      v5 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  return v2;
}

- (id)filteredPlansWithTransferCapability:()CTDisplayPlan
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__NSArray_CTDisplayPlan__filteredPlansWithTransferCapability___block_invoke;
  v7[3] = &__block_descriptor_40_e25_B24__0_8__NSDictionary_16l;
  v7[4] = a3;
  v4 = [MEMORY[0x277CCAC30] predicateWithBlock:v7];
  v5 = [self filteredArrayUsingPredicate:v4];

  return v5;
}

- (id)filteredPlansWithTransferCapabilities:()CTDisplayPlan restrictionAllowed:
{
  v6 = a3;
  v7 = v6;
  if (v6 && [v6 count])
  {
    v8 = MEMORY[0x277CCAC30];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __83__NSArray_CTDisplayPlan__filteredPlansWithTransferCapabilities_restrictionAllowed___block_invoke;
    v15 = &unk_279B44BA0;
    v17 = a4;
    v16 = v7;
    v9 = [v8 predicateWithBlock:&v12];
    v10 = [self filteredArrayUsingPredicate:{v9, v12, v13, v14, v15}];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)filteredPlansForNonInstallableBucket
{
  v2 = [&unk_287583F20 mutableCopy];
  if (!+[TSUtilities inBuddy])
  {
    [v2 addObject:&unk_287583A00];
  }

  v3 = [self filteredPlansWithTransferCapabilities:v2 restrictionAllowed:1];

  return v3;
}

- (id)filteredPlansForTransferableBucket
{
  v2 = [&unk_287583F38 mutableCopy];
  if (!+[TSUtilities inBuddy])
  {
    [v2 addObject:&unk_287583A00];
  }

  v3 = [self filteredPlansWithTransferCapabilities:v2 restrictionAllowed:0];

  return v3;
}

- (id)filteredPlansForVisitStoreBucket
{
  v2 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_3];
  v3 = [self filteredArrayUsingPredicate:v2];

  return v3;
}

- (id)filteredPlansForHiddenInCloudBucket:()CTDisplayPlan
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__NSArray_CTDisplayPlan__filteredPlansForHiddenInCloudBucket___block_invoke;
  v7[3] = &__block_descriptor_33_e25_B24__0_8__NSDictionary_16l;
  v8 = a3;
  v4 = [MEMORY[0x277CCAC30] predicateWithBlock:v7];
  v5 = [self filteredArrayUsingPredicate:v4];

  return v5;
}

- (id)getCombinedFooterForNonTransferablePlans
{
  v43[6] = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CBEB38] dictionaryWithPlansByGroupByTransferCapability:self];
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v43[0] = v2;
  v43[1] = &unk_287583928;
  v43[2] = &unk_2875839E8;
  v43[3] = &unk_2875839D0;
  v43[4] = &unk_287583940;
  v43[5] = &unk_2875838E0;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:6];

  string = [MEMORY[0x277CCAB68] string];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v4 = v3;
  v5 = v1;
  obj = v4;
  v6 = [v4 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v39;
    v36 = v1;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v39 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v38 + 1) + 8 * i);
        v11 = [v5 objectForKey:v10];
        v12 = v11;
        if (v11 && [v11 count])
        {
          unsignedIntegerValue = [v10 unsignedIntegerValue];
          carrierNames = [v12 carrierNames];
          v15 = sFormattedCarrierListFromSet(carrierNames);
          v16 = v15;
          if (!v15 || ![v15 length])
          {
            v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v18 = [v17 localizedStringForKey:@"YOUR_CARRIER" value:&stru_28753DF48 table:@"Localizable"];

            v16 = v18;
          }

          if (unsignedIntegerValue == 11001)
          {
            v19 = [carrierNames count];
            v20 = MEMORY[0x277CCACA8];
            v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v22 = v21;
            if (v19 > 1)
            {
              v23 = @"MULTI_TRANSFER_PLAN_LABELS_SECTION_FOOTER_VISIT_STORE_%@";
            }

            else
            {
              v23 = @"SINGLE_TRANSFER_PLAN_LABELS_SECTION_FOOTER_VISIT_STORE_%@";
            }

            v25 = [v21 localizedStringForKey:v23 value:&stru_28753DF48 table:@"Localizable"];
            [v20 stringWithFormat:v25, v16];
            v24 = LABEL_28:;

LABEL_29:
LABEL_30:
            if ([v24 length])
            {
              v32 = [MEMORY[0x277CCAB68] stringWithString:v24];
              v33 = [TSUtilities getStringWithFirstCharacterUppercase:v32];

              if ([string length])
              {
                [string appendString:@"\n\n"];
              }

              [string appendString:v33];
              v24 = v33;
              v5 = v36;
            }

            goto LABEL_35;
          }

          v24 = 0;
          if (unsignedIntegerValue <= 14)
          {
            if (unsignedIntegerValue == 12)
            {
              v26 = MEMORY[0x277CCACA8];
              v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v22 = v27;
              v28 = @"TRANSFER_PLAN_LABELS_SECTION_FOOTER_CARRIER_UNLOCK_%@";
            }

            else
            {
              if (unsignedIntegerValue != 14)
              {
                goto LABEL_30;
              }

              v26 = MEMORY[0x277CCACA8];
              v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v22 = v27;
              v28 = @"TRANSFER_PLAN_LABELS_SECTION_FOOTER_REQUIRE_TARGET_SOFTWARE_UPDATE_%@";
            }
          }

          else
          {
            if (unsignedIntegerValue == 15)
            {
              v29 = MEMORY[0x277CCACA8];
              v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v30 = [v22 localizedStringForKey:@"TRANSFER_PLAN_LABELS_SECTION_FOOTER_REQUIRE_SOURCE_SOFTWARE_UPDATE_%@" value:&stru_28753DF48 table:@"Localizable"];
              v24 = [v29 stringWithFormat:v30, v16];

              v5 = v36;
              goto LABEL_29;
            }

            if (unsignedIntegerValue != 16)
            {
              if (unsignedIntegerValue == 19)
              {
                v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                v24 = [v22 localizedStringForKey:@"TRANSFER_PLAN_LABELS_SECTION_FOOTER_UNKNOWN_LOCATION" value:&stru_28753DF48 table:@"Localizable"];
                goto LABEL_29;
              }

              goto LABEL_30;
            }

            v26 = MEMORY[0x277CCACA8];
            v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v22 = v27;
            v28 = @"TRANSFER_PLAN_LABELS_SECTION_FOOTER_MISSING_CERTIFICATE_%@";
          }

          v25 = [v27 localizedStringForKey:v28 value:&stru_28753DF48 table:@"Localizable"];
          v31 = v26;
          v5 = v36;
          [v31 stringWithFormat:v25, v16];
          goto LABEL_28;
        }

LABEL_35:
      }

      v7 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v7);
  }

  return string;
}

- (void)getCombinedTitleAndDetailsForNonTransferablePlans:()CTDisplayPlan details:
{
  v35 = *MEMORY[0x277D85DE8];
  string = [MEMORY[0x277CCAB68] string];
  v6 = [MEMORY[0x277CBEB38] dictionaryWithPlansByGroupByTransferCapability:self];
  v7 = [v6 mergeByTransferCapabilities:&unk_287583F68];
  v8 = [v6 mergeByTransferCapabilities:&unk_287583F80];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (!v10)
  {
    v12 = 0;
    goto LABEL_19;
  }

  v11 = v10;
  v12 = 0;
  v27 = *v31;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v31 != v27)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v30 + 1) + 8 * i);
      unsignedIntegerValue = [v14 unsignedIntegerValue];
      v16 = [v9 objectForKeyedSubscript:v14];
      v28 = 0;
      v29 = 0;
      [v16 getCombinedTitleAndDetailsForTransferCapability:unsignedIntegerValue title:&v29 detail:&v28];
      v17 = v29;
      v18 = v28;

      if ([v12 length])
      {
        if ([v12 isEqualToString:v17])
        {
          goto LABEL_11;
        }

        v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v20 = [v19 localizedStringForKey:@"MULTISIM_INELIGIBLE_TRANSFER_PLANS_TITLE" value:&stru_28753DF48 table:@"Localizable"];

        v12 = v19;
      }

      else
      {
        v20 = v17;
      }

      v12 = v20;
LABEL_11:
      if ([v18 length])
      {
        v21 = [MEMORY[0x277CCAB68] stringWithString:v18];
        v22 = [TSUtilities getStringWithFirstCharacterUppercase:v21];

        if ([string length])
        {
          [string appendString:@"\n\n"];
        }

        [string appendString:v22];
        v18 = v22;
      }
    }

    v11 = [v9 countByEnumeratingWithState:&v30 objects:v34 count:16];
  }

  while (v11);
LABEL_19:

  if (a3)
  {
    v23 = v12;
    *a3 = v12;
  }

  if (a4)
  {
    v24 = string;
    *a4 = string;
  }
}

- (void)getCombinedTitleAndDetailsForTransferCapability:()CTDisplayPlan title:detail:
{
  if ([self count])
  {
    carrierNames = [self carrierNames];
    v10 = sFormattedCarrierListFromSet(carrierNames);
    v11 = v10;
    if (!v10 || ![v10 length])
    {
      v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v13 = [v12 localizedStringForKey:@"YOUR_CARRIER" value:&stru_28753DF48 table:@"Localizable"];

      v11 = v13;
    }

    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = &stru_28753DF48;
    v16 = [v14 localizedStringForKey:@"CONTACT_CARRIER_TO_SETUP_ESIM" value:&stru_28753DF48 table:@"Localizable"];

    if (a3 == 11001)
    {
      v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      [v18 localizedStringForKey:@"VISIT_STORE_TITLE" value:&stru_28753DF48 table:@"Localizable"];
      v19 = carrierNames;
      v20 = a4;
      v22 = v21 = a5;

      v23 = MEMORY[0x277CCACA8];
      v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v25 = [v24 localizedStringForKey:@"VISIT_STORE_FOR_WARNING_DETAIL_%@" value:&stru_28753DF48 table:@"Localizable"];
      v15 = [v23 stringWithFormat:v25, v11];

      v16 = v22;
      a5 = v21;
      a4 = v20;
      carrierNames = v19;
    }

    switch(a3)
    {
      case 0:
      case 1:
      case 8:
      case 13:
        v27 = MEMORY[0x277CCACA8];
        v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v29 = [v28 localizedStringForKey:@"TRANSFER_UNSUPPORTED_PLAN_DETAIL_%@" value:&stru_28753DF48 table:@"Localizable"];
        v30 = [v27 stringWithFormat:v29, v11];

        v15 = v30;
        break;
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 11:
        v26 = _TSLogDomain(v17);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          [NSArray(CTDisplayPlan) getCombinedTitleAndDetailsForTransferCapability:a3 title:v26 detail:?];
        }

        v15 = &stru_28753DF48;
        break;
      case 9:
        v31 = [carrierNames count];
        v32 = MEMORY[0x277CCACA8];
        v33 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v34 = v33;
        if (v31 > 1)
        {
          v35 = @"COMBINED_MULTI_INELIGIBLE_ESIM_TRANSFER_CAPABILITY_INELIGIBLE_DETAIL_%@_%@";
        }

        else
        {
          v35 = @"COMBINED_SINGLE_INELIGIBLE_ESIM_TRANSFER_CAPABILITY_INELIGIBLE_DETAIL_%@_%@";
        }

        v65 = [v33 localizedStringForKey:v35 value:&stru_28753DF48 table:@"Localizable"];
        v66 = [v32 stringWithFormat:v65, v11, v11];

        v15 = v66;
        break;
      case 10:
        v36 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        [v36 localizedStringForKey:@"TRANSFER_INELIGIBLE_FOR_NOW_PLAN" value:&stru_28753DF48 table:@"Localizable"];
        v37 = v69 = a5;

        v38 = MEMORY[0x277CCACA8];
        v39 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v40 = [v39 localizedStringForKey:@"COMBINED_TRANSFER_INELIGIBLE_FOR_NOW_PLAN_DETAIL_%@_%@" value:&stru_28753DF48 table:@"Localizable"];
        [v38 stringWithFormat:v40, v11, v11];
        goto LABEL_29;
      case 12:
        v45 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        [v45 localizedStringForKey:@"TRANSFER_INELIGIBLE_PLAN" value:&stru_28753DF48 table:@"Localizable"];
        v37 = v69 = a5;

        v42 = MEMORY[0x277CCACA8];
        v43 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v39 = v43;
        v44 = @"COMBINED_SINGLE_INELIGIBLE_ESIM_TRANSFER_CAPABILITY_INELIGIBLE_DETAIL_ACTIVATION_POLICY_MISMATCH_CARRIER_UNLOCK_%@";
        goto LABEL_28;
      case 14:
        v55 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        [v55 localizedStringForKey:@"TRANSFER_UPDATE_REQUIRED_TITLE" value:&stru_28753DF48 table:@"Localizable"];
        v37 = v69 = a5;

        v42 = MEMORY[0x277CCACA8];
        v43 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v39 = v43;
        v44 = @"COMBINED_TRANSFER_TARGET_UPDATE_REQUIRED_DETAIL_%@";
        goto LABEL_28;
      case 15:
        v41 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        [v41 localizedStringForKey:@"TRANSFER_UPDATE_REQUIRED_TITLE" value:&stru_28753DF48 table:@"Localizable"];
        v37 = v69 = a5;

        v42 = MEMORY[0x277CCACA8];
        v43 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v39 = v43;
        v44 = @"COMBINED_TRANSFER_SOURCE_UPDATE_REQUIRED_DETAIL_%@";
        goto LABEL_28;
      case 16:
        v61 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        [v61 localizedStringForKey:@"UNABLE_TO_TRANSFER" value:&stru_28753DF48 table:@"Localizable"];
        v37 = v69 = a5;

        v42 = MEMORY[0x277CCACA8];
        v43 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v39 = v43;
        v44 = @"COMBINED_SINGLE_INELIGIBLE_ESIM_TRANSFER_CAPABILITY_MISSING_CERTIFICATE_%@";
        goto LABEL_28;
      case 17:
        v46 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        [v46 localizedStringForKey:@"UNABLE_TO_TRANSFER" value:&stru_28753DF48 table:@"Localizable"];
        v37 = v69 = a5;

        v42 = MEMORY[0x277CCACA8];
        v43 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v39 = v43;
        v44 = @"COMBINED_SINGLE_INELIGIBLE_ESIM_TRANSFER_CAPABILITY_REGULATORY_RESTRICTED_%@";
        goto LABEL_28;
      case 18:
        v54 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        [v54 localizedStringForKey:@"UNABLE_TO_TRANSFER" value:&stru_28753DF48 table:@"Localizable"];
        v37 = v69 = a5;

        v42 = MEMORY[0x277CCACA8];
        v43 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v39 = v43;
        v44 = @"COMBINED_SINGLE_INELIGIBLE_ESIM_TRANSFER_CAPABILITY_UNREGULATORY_RESTRICTED_%@";
LABEL_28:
        v40 = [v43 localizedStringForKey:v44 value:&stru_28753DF48 table:@"Localizable"];
        [v42 stringWithFormat:v40, v11, v68];
        v62 = LABEL_29:;

        v15 = v62;
        v16 = v37;
        a5 = v69;
        break;
      case 19:
        v56 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v57 = [v56 localizedStringForKey:@"TURN_ON_LOCATION_SERVICE" value:&stru_28753DF48 table:@"Localizable"];

        LODWORD(v56) = +[TSUtilities inBuddy];
        v58 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v59 = v58;
        if (v56)
        {
          v60 = @"SINGLE_INELIGIBLE_ESIM_TRANSFER_CAPABILITY_UNKNOWN_LOCATION_BUDDY";
        }

        else
        {
          v60 = @"SINGLE_INELIGIBLE_ESIM_TRANSFER_CAPABILITY_UNKNOWN_LOCATION";
        }

        v67 = [v58 localizedStringForKey:v60 value:&stru_28753DF48 table:@"Localizable"];

        v15 = v67;
        v16 = v57;
        break;
      case 20:
        v47 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        [v47 localizedStringForKey:@"ESIM_COUNT_RESTRICTION_WARNING_TITLE" value:&stru_28753DF48 table:@"Localizable"];
        v48 = carrierNames;
        v49 = a4;
        v51 = v50 = a5;

        v52 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v53 = [v52 localizedStringForKey:@"ESIM_COUNT_RESTRICTION_WARNING_DETAIL" value:&stru_28753DF48 table:@"Localizable"];

        v15 = v53;
        v16 = v51;
        a5 = v50;
        a4 = v49;
        carrierNames = v48;
        break;
      default:
        break;
    }

    if (a4)
    {
      v63 = v16;
      *a4 = v16;
    }

    if (a5)
    {
      v64 = v15;
      *a5 = v15;
    }
  }

  else
  {
    if (a4)
    {
      *a4 = &stru_28753DF48;
    }

    if (a5)
    {
      *a5 = &stru_28753DF48;
    }
  }
}

- (void)getCombinedTitleAndDetailsForTransferCapability:()CTDisplayPlan title:detail:.cold.1(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = 134218498;
  v4 = a1;
  v5 = 2080;
  v6 = CTPlanTransferCapabilityAsString();
  v7 = 2080;
  v8 = "[NSArray(CTDisplayPlan) getCombinedTitleAndDetailsForTransferCapability:title:detail:]";
  _os_log_error_impl(&dword_262AA8000, a2, OS_LOG_TYPE_ERROR, "[E]unexpected transfer capability : %lu(%s) @%s", &v3, 0x20u);
}

@end