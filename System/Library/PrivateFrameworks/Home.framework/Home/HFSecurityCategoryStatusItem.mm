@interface HFSecurityCategoryStatusItem
+ (id)_aggregatablePositionStatusItemClasses;
+ (id)statusItemClasses;
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HFSecurityCategoryStatusItem

+ (id)statusItemClasses
{
  if (_MergedGlobals_209 != -1)
  {
    dispatch_once(&_MergedGlobals_209, &__block_literal_global_3_0);
  }

  v3 = qword_280E02A80;

  return v3;
}

void __49__HFSecurityCategoryStatusItem_statusItemClasses__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4[6] = *MEMORY[0x277D85DE8];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v4[3] = objc_opt_class();
  v4[4] = objc_opt_class();
  v4[5] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:6];
  v3 = qword_280E02A80;
  qword_280E02A80 = v2;
}

- (id)_subclass_updateWithOptions:(id)options
{
  optionsCopy = options;
  v12.receiver = self;
  v12.super_class = HFSecurityCategoryStatusItem;
  v5 = [(HFAccessoryCategoryStatusItem *)&v12 _subclass_updateWithOptions:optionsCopy];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__HFSecurityCategoryStatusItem__subclass_updateWithOptions___block_invoke;
  v9[3] = &unk_277DF3068;
  v10 = optionsCopy;
  selfCopy = self;
  v6 = optionsCopy;
  v7 = [v5 flatMap:v9];

  return v7;
}

id __60__HFSecurityCategoryStatusItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 mutableCopy];
  v5 = [v4 objectForKeyedSubscript:@"hidden"];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    goto LABEL_8;
  }

  v7 = _HFLocalizedStringWithDefaultValue(@"HFAccessoryTypeGroupNameSecurity", @"HFAccessoryTypeGroupNameSecurity", 1);
  [v4 setObject:v7 forKeyedSubscript:@"title"];

  [v4 setObject:@"Home.Status.Category.Security" forKeyedSubscript:@"HFResultDisplayAccessibilityIDKey"];
  [v4 setObject:@"lock.fill" forKeyedSubscript:@"iconNames"];
  v8 = [HFImageIconDescriptor alloc];
  v9 = [v4 objectForKeyedSubscript:@"iconNames"];
  v10 = [(HFImageIconDescriptor *)v8 initWithSystemImageNamed:v9];
  [v4 setObject:v10 forKeyedSubscript:@"icon"];

  v11 = [*(a1 + 32) objectForKeyedSubscript:HFItemUpdateOptionFastInitialUpdate];
  if ([v11 BOOLValue])
  {

LABEL_8:
    v34 = [MEMORY[0x277D2C900] futureWithResult:v4];
    goto LABEL_9;
  }

  v12 = [v4 objectForKeyedSubscript:@"state"];
  v13 = [v12 integerValue];

  if (!v13)
  {
    goto LABEL_8;
  }

  v121 = 0;
  v122 = &v121;
  v123 = 0x3032000000;
  v124 = __Block_byref_object_copy__0;
  v125 = __Block_byref_object_dispose__0;
  v126 = 0;
  v14 = [MEMORY[0x277CBEB58] set];
  v15 = [MEMORY[0x277CBEB58] set];
  v16 = [MEMORY[0x277CBEB58] set];
  v17 = [MEMORY[0x277CBEB58] set];
  v18 = [MEMORY[0x277CBEB58] set];
  v19 = [MEMORY[0x277CBEB58] set];
  v20 = [objc_opt_class() statusItemClasses];
  v113[0] = MEMORY[0x277D85DD0];
  v113[1] = 3221225472;
  v113[2] = __60__HFSecurityCategoryStatusItem__subclass_updateWithOptions___block_invoke_21;
  v113[3] = &unk_277DF3040;
  v113[4] = *(a1 + 40);
  v120 = &v121;
  v21 = v14;
  v114 = v21;
  v22 = v15;
  v115 = v22;
  v23 = v16;
  v116 = v23;
  v111 = v17;
  v117 = v111;
  v110 = v18;
  v118 = v110;
  v24 = v19;
  v119 = v24;
  [v20 na_each:v113];

  v112 = [*(a1 + 40) _statusItemOfClass:objc_opt_class()];
  v25 = [objc_opt_class() _aggregatablePositionStatusItemClasses];
  LODWORD(v20) = [v25 containsObject:objc_opt_class()];

  if (!v20)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v49 = [v112 latestResults];
      v50 = [v49 objectForKeyedSubscript:@"state"];
      v51 = [v50 isEqual:&unk_282523328];

      if (v51)
      {
        v33 = _HFLocalizedStringWithDefaultValue(@"HFSecurityCategoryStatusDescription_NoAlerts", @"HFSecurityCategoryStatusDescription_NoAlerts", 1);
        [v4 setObject:v33 forKeyedSubscript:@"description"];
        goto LABEL_37;
      }

      v33 = [v112 latestResults];
      v38 = [v33 objectForKeyedSubscript:@"shortDescription"];
      [v4 setObject:v38 forKeyedSubscript:@"description"];
LABEL_36:

      goto LABEL_37;
    }

    v36 = [v122[5] latestResults];
    v33 = [v36 objectForKeyedSubscript:@"obstructedServices"];

    v37 = [v122[5] latestResults];
    v38 = [v37 objectForKeyedSubscript:@"openServices"];

    v39 = [v122[5] latestResults];
    v109 = [v39 objectForKeyedSubscript:@"openingServices"];

    v40 = [v122[5] latestResults];
    v108 = [v40 objectForKeyedSubscript:@"closingServices"];

    if ([v33 count])
    {
      v41 = [v33 count];
      v48 = HFLocalizedStringWithFormat(@"HFSecurityCategoryStatusTitle_Jammed", @"%lu", v42, v43, v44, v45, v46, v47, v41);
      [v4 setObject:v48 forKeyedSubscript:@"description"];
    }

    else if ([v38 count])
    {
      v59 = [v38 count];
      v48 = HFLocalizedStringWithFormat(@"HFSecurityCategoryStatusTitle_Unlocked", @"%lu", v60, v61, v62, v63, v64, v65, v59);
      [v4 setObject:v48 forKeyedSubscript:@"description"];
    }

    else if ([v109 count])
    {
      v73 = [v109 count];
      v48 = HFLocalizedStringWithFormat(@"HFSecurityCategoryStatusTitle_Unlocking", @"%lu", v74, v75, v76, v77, v78, v79, v73);
      [v4 setObject:v48 forKeyedSubscript:@"description"];
    }

    else if ([v108 count])
    {
      v87 = [v108 count];
      v48 = HFLocalizedStringWithFormat(@"HFSecurityCategoryStatusTitle_Locking", @"%lu", v88, v89, v90, v91, v92, v93, v87);
      [v4 setObject:v48 forKeyedSubscript:@"description"];
    }

    else
    {
      if (![v24 count])
      {
LABEL_35:

        goto LABEL_36;
      }

      v101 = [v24 count];
      v48 = HFLocalizedStringWithFormat(@"HFSecurityCategoryStatusTitle_Unknown", @"%lu", v102, v103, v104, v105, v106, v107, v101);
      [v4 setObject:v48 forKeyedSubscript:@"description"];
    }

    goto LABEL_35;
  }

  if ([v21 count])
  {
    v26 = [v21 count];
    v33 = HFLocalizedStringWithFormat(@"HFSecurityCategoryStatusTitle_Obstructed", @"%lu", v27, v28, v29, v30, v31, v32, v26);
    [v4 setObject:v33 forKeyedSubscript:@"description"];
LABEL_37:

    goto LABEL_38;
  }

  if ([v22 count])
  {
    v52 = [v22 count];
    v33 = HFLocalizedStringWithFormat(@"HFSecurityCategoryStatusTitle_Open", @"%lu", v53, v54, v55, v56, v57, v58, v52);
    [v4 setObject:v33 forKeyedSubscript:@"description"];
    goto LABEL_37;
  }

  if ([v23 count])
  {
    v66 = [v23 count];
    v33 = HFLocalizedStringWithFormat(@"HFSecurityCategoryStatusTitle_Opening", @"%lu", v67, v68, v69, v70, v71, v72, v66);
    [v4 setObject:v33 forKeyedSubscript:@"description"];
    goto LABEL_37;
  }

  if ([v111 count])
  {
    v80 = [v111 count];
    v33 = HFLocalizedStringWithFormat(@"HFSecurityCategoryStatusTitle_Closing", @"%lu", v81, v82, v83, v84, v85, v86, v80);
    [v4 setObject:v33 forKeyedSubscript:@"description"];
    goto LABEL_37;
  }

  if ([v24 count])
  {
    v94 = [v24 count];
    v33 = HFLocalizedStringWithFormat(@"HFSecurityCategoryStatusTitle_Unknown", @"%lu", v95, v96, v97, v98, v99, v100, v94);
    [v4 setObject:v33 forKeyedSubscript:@"description"];
    goto LABEL_37;
  }

LABEL_38:
  [*(a1 + 40) applyInflectionToDescriptions:v4];
  v34 = [MEMORY[0x277D2C900] futureWithResult:v4];

  _Block_object_dispose(&v121, 8);
LABEL_9:

  return v34;
}

void __60__HFSecurityCategoryStatusItem__subclass_updateWithOptions___block_invoke_21(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) _statusItemOfClass:a2];
  obj = v4;
  if (!*(*(*(a1 + 88) + 8) + 40))
  {
    v5 = [v4 latestResults];
    v6 = [v5 objectForKeyedSubscript:@"state"];
    v7 = [v6 isEqual:&unk_282523310];

    if (v7)
    {
      objc_storeStrong((*(*(a1 + 88) + 8) + 40), obj);
    }
  }

  v8 = [objc_opt_class() _aggregatablePositionStatusItemClasses];
  v9 = [v8 containsObject:a2];

  if (v9)
  {
    v10 = *(a1 + 40);
    v11 = [obj latestResults];
    v12 = [v11 objectForKeyedSubscript:@"obstructedServices"];
    [v10 unionSet:v12];

    v13 = *(a1 + 48);
    v14 = [obj latestResults];
    v15 = [v14 objectForKeyedSubscript:@"openServices"];
    [v13 unionSet:v15];

    v16 = *(a1 + 56);
    v17 = [obj latestResults];
    v18 = [v17 objectForKeyedSubscript:@"openingServices"];
    [v16 unionSet:v18];

    v19 = *(a1 + 64);
    v20 = [obj latestResults];
    v21 = [v20 objectForKeyedSubscript:@"closingServices"];
    [v19 unionSet:v21];

    v22 = *(a1 + 72);
    v23 = [obj latestResults];
    v24 = [v23 objectForKeyedSubscript:@"closedServices"];
    [v22 unionSet:v24];
  }

  v25 = *(a1 + 80);
  v26 = [obj latestResults];
  v27 = [v26 objectForKeyedSubscript:@"unknownServices"];
  [v25 unionSet:v27];
}

+ (id)_aggregatablePositionStatusItemClasses
{
  if (qword_280E02A88 != -1)
  {
    dispatch_once(&qword_280E02A88, &__block_literal_global_63);
  }

  v3 = qword_280E02A90;

  return v3;
}

void __70__HFSecurityCategoryStatusItem__aggregatablePositionStatusItemClasses__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v6[2] = objc_opt_class();
  v6[3] = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:4];
  v4 = [v2 setWithArray:v3];
  v5 = qword_280E02A90;
  qword_280E02A90 = v4;
}

@end