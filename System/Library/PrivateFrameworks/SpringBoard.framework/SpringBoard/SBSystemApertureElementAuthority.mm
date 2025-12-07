@interface SBSystemApertureElementAuthority
- (BOOL)elementRequiresBeingDisplayedAlone:(id)alone;
- (SBSystemApertureElementAuthorityDelegate)elementAuthorityDelegate;
- (id)elementsOrderedByPromotionFromTemporallyOrderedElements:(id)elements withPreviousOrdering:(id)ordering;
@end

@implementation SBSystemApertureElementAuthority

- (id)elementsOrderedByPromotionFromTemporallyOrderedElements:(id)elements withPreviousOrdering:(id)ordering
{
  v46 = *MEMORY[0x277D85DE8];
  elementsCopy = elements;
  orderingCopy = ordering;
  v8 = [elementsCopy count];
  if (v8 <= 1)
  {
    v9 = elementsCopy;
    v10 = v9;
    goto LABEL_29;
  }

  v11 = SBLogSystemApertureMediation(v8);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [elementsCopy bs_mapNoNulls:&__block_literal_global_30_2];
    v13 = [orderingCopy bs_mapNoNulls:&__block_literal_global_32_3];
    *buf = 138543618;
    v43 = v12;
    v44 = 2114;
    v45 = v13;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "Ordering elements by promotion: temporallyOrderedElements: %{public}@; previouslyOrderedElements: %{public}@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_elementAuthorityDelegate);
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __113__SBSystemApertureElementAuthority_elementsOrderedByPromotionFromTemporallyOrderedElements_withPreviousOrdering___block_invoke_33;
  v38[3] = &unk_2783BAAC0;
  v15 = WeakRetained;
  v39 = v15;
  selfCopy = self;
  v41 = elementsCopy;
  v10 = [v41 sortedArrayUsingComparator:v38];
  v16 = SBLogSystemApertureMediation(v10);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v10 bs_mapNoNulls:&__block_literal_global_69_1];
    *buf = 138543362;
    v43 = v17;
    _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, "Ordered elements after initial sort: %{public}@", buf, 0xCu);
  }

  v18 = [v15 systemApertureApertureElementAuthorityMaximumNumberOfSimultaneouslyVisibleElements:self];
  if ([v10 count] <= v18)
  {
    goto LABEL_28;
  }

  firstObject = [v10 firstObject];
  v20 = [v15 systemApertureApertureElementAuthority:self preferredLayoutModeForElement:firstObject];

  if (v20 > 2)
  {
    goto LABEL_28;
  }

  v36 = orderingCopy;
  v37 = elementsCopy;
  if (![v10 count])
  {
    v22 = 0;
    v21 = 0;
    goto LABEL_25;
  }

  v21 = 0;
  v22 = 0;
  v23 = 0;
  while (1)
  {
    v24 = [v10 objectAtIndexedSubscript:v23];
    v25 = [v15 systemApertureApertureElementAuthority:self isElementPreferringToRemainVisible:v24];
    if (((v25 | [v15 systemApertureApertureElementAuthority:self isElementRequiredPriority:v24]) & 1) != 0 && v23 >= v18)
    {
      break;
    }

LABEL_19:

    if (++v23 >= [v10 count])
    {
      goto LABEL_25;
    }
  }

  if (v21)
  {
    if (v22)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (v22)
    {
      goto LABEL_15;
    }
  }

  v22 = objc_alloc_init(MEMORY[0x277CCAB58]);
LABEL_15:
  v26 = [v21 count];
  if (v26 < v18)
  {
    v27 = SBLogSystemApertureMediation(v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = _SBShortElementDescription(v24);
      *buf = 138543362;
      v43 = v28;
      _os_log_impl(&dword_21ED4E000, v27, OS_LOG_TYPE_DEFAULT, "Prioritizing '%{public}@' since it prefers visibility", buf, 0xCu);
    }

    [v21 addObject:v24];
    [v22 addIndex:v23];
    goto LABEL_19;
  }

LABEL_25:
  v29 = [v21 count];
  orderingCopy = v36;
  if (v29)
  {
    v30 = v29;
    v31 = [v10 mutableCopy];
    [v31 removeObjectsAtIndexes:v22];
    v32 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexesInRange:{v18 - v30, v30}];
    [v31 insertObjects:v21 atIndexes:v32];

    v10 = v31;
  }

  elementsCopy = v37;
LABEL_28:

LABEL_29:
  v33 = SBLogSystemApertureMediation(v9);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v34 = [v10 bs_mapNoNulls:&__block_literal_global_75_0];
    *buf = 138543362;
    v43 = v34;
    _os_log_impl(&dword_21ED4E000, v33, OS_LOG_TYPE_DEFAULT, "Elements ordered by promotion: %{public}@", buf, 0xCu);
  }

  return v10;
}

uint64_t __113__SBSystemApertureElementAuthority_elementsOrderedByPromotionFromTemporallyOrderedElements_withPreviousOrdering___block_invoke_33(uint64_t a1, void *a2, void *a3)
{
  v70 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) systemApertureApertureElementAuthority:*(a1 + 40) preferredLayoutModeForElement:v5];
  v8 = [*(a1 + 32) systemApertureApertureElementAuthority:*(a1 + 40) preferredLayoutModeForElement:v6];
  if (v7 <= 0 && v8 < 1)
  {
    v33 = 0;
    v32 = @"Neither element visible";
    goto LABEL_41;
  }

  v10 = v8;
  if (v7 >= 1 && v8 <= 0)
  {
    v26 = MEMORY[0x277CCACA8];
    v27 = _SBShortElementDescription(v5);
    v28 = _SBShortElementDescription(v6);
    v32 = [v26 stringWithFormat:@"Element '%@' visible while '%@' is not", v27, v28];

    v33 = -1;
    goto LABEL_41;
  }

  if (v7 <= 0 && v8 >= 1)
  {
    v29 = MEMORY[0x277CCACA8];
    v30 = _SBShortElementDescription(v6);
    v31 = _SBShortElementDescription(v5);
    v32 = [v29 stringWithFormat:@"Element '%@' visible while '%@' is not", v30, v31];

    v33 = 1;
    goto LABEL_41;
  }

  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __113__SBSystemApertureElementAuthority_elementsOrderedByPromotionFromTemporallyOrderedElements_withPreviousOrdering___block_invoke_2_37;
  v59[3] = &unk_2783BAA98;
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v60 = v13;
  v61 = v14;
  v15 = MEMORY[0x223D6F7F0](v59);
  v16 = [*(a1 + 32) systemApertureApertureElementAuthority:*(a1 + 40) isElementRequiredPriority:v5];
  v17 = [*(a1 + 32) systemApertureApertureElementAuthority:*(a1 + 40) isElementRequiredPriority:v6];
  v57 = [*(a1 + 32) systemApertureApertureElementAuthority:*(a1 + 40) isElementUrgentlyVisible:v5];
  v18 = [*(a1 + 32) systemApertureApertureElementAuthority:*(a1 + 40) isElementUrgentlyVisible:v6];
  v19 = (v15)[2](v15, v5, v7);
  v20 = (v15)[2](v15, v6, v10);
  if (v16 && v17)
  {
    v21 = [*(a1 + 48) indexOfObject:v5];
    v22 = [*(a1 + 48) indexOfObject:v6];
    v23 = MEMORY[0x277CCACA8];
    if (v21 <= v22)
    {
      v24 = _SBShortElementDescription(v5);
      v25 = v6;
    }

    else
    {
      v24 = _SBShortElementDescription(v6);
      v25 = v5;
    }

    v40 = _SBShortElementDescription(v25);
    v32 = [v23 stringWithFormat:@"Both elements required priority, element '%@' temporally after '%@'", v24, v40];
    if (v21 > v22)
    {
      goto LABEL_28;
    }

LABEL_38:

    goto LABEL_39;
  }

  if (v16)
  {
    v34 = MEMORY[0x277CCACA8];
    v35 = _SBShortElementDescription(v5);
    v36 = _SBShortElementDescription(v6);
    [v34 stringWithFormat:@"Element '%@' is required priority while '%@' is not", v35, v36];
    v32 = LABEL_22:;

LABEL_39:
    v33 = -1;
    goto LABEL_40;
  }

  if (v17)
  {
    v37 = MEMORY[0x277CCACA8];
    v38 = _SBShortElementDescription(v6);
    v39 = _SBShortElementDescription(v5);
    [v37 stringWithFormat:@"Element '%@' is required priority while '%@' is not", v38, v39];
    goto LABEL_25;
  }

  if ((v57 & v18) == 1)
  {
    v41 = [*(a1 + 48) indexOfObject:v5];
    v42 = [*(a1 + 48) indexOfObject:v6];
    v43 = MEMORY[0x277CCACA8];
    if (v41 <= v42)
    {
      v24 = _SBShortElementDescription(v6);
      v44 = v5;
    }

    else
    {
      v24 = _SBShortElementDescription(v5);
      v44 = v6;
    }

    v40 = _SBShortElementDescription(v44);
    [v43 stringWithFormat:@"Both elements urgent and important, element '%@' temporally after '%@'", v24, v40];
    goto LABEL_37;
  }

  if (v57)
  {
    v45 = MEMORY[0x277CCACA8];
    v35 = _SBShortElementDescription(v5);
    v36 = _SBShortElementDescription(v6);
    [v45 stringWithFormat:@"Element '%@' is urgent while '%@' is not", v35, v36];
    goto LABEL_22;
  }

  if (v18)
  {
    v52 = MEMORY[0x277CCACA8];
    v38 = _SBShortElementDescription(v6);
    v39 = _SBShortElementDescription(v5);
    [v52 stringWithFormat:@"Element '%@' is urgent while '%@' is not", v38, v39];
    goto LABEL_25;
  }

  if ((v19 & v20) == 1)
  {
    v41 = [*(a1 + 48) indexOfObject:v5];
    v42 = [*(a1 + 48) indexOfObject:v6];
    v53 = MEMORY[0x277CCACA8];
    if (v41 <= v42)
    {
      v24 = _SBShortElementDescription(v6);
      v54 = v5;
    }

    else
    {
      v24 = _SBShortElementDescription(v5);
      v54 = v6;
    }

    v40 = _SBShortElementDescription(v54);
    [v53 stringWithFormat:@"Both elements alerts, alerting activities, or expanded due to user interaction, element '%@' temporally after '%@'", v24, v40];
    v32 = LABEL_37:;
    if (v41 <= v42)
    {
LABEL_28:

      goto LABEL_29;
    }

    goto LABEL_38;
  }

  if (v19)
  {
    v55 = MEMORY[0x277CCACA8];
    v35 = _SBShortElementDescription(v5);
    v36 = _SBShortElementDescription(v6);
    [v55 stringWithFormat:@"Element '%@' is an alert, alerting activity, or expanded due to user interaction while '%@' is not", v35, v36];
    goto LABEL_22;
  }

  if (!v20)
  {
    v58 = 0;
    v33 = _CompareActivityElementsByElementIdentifier(v5, v6, &v58);
    v32 = v58;
    goto LABEL_40;
  }

  v56 = MEMORY[0x277CCACA8];
  v38 = _SBShortElementDescription(v6);
  v39 = _SBShortElementDescription(v5);
  [v56 stringWithFormat:@"Element '%@' is an alert, alerting activity, or expanded due to user interaction while '%@' is not", v38, v39];
  v32 = LABEL_25:;

LABEL_29:
  v33 = 1;
LABEL_40:

LABEL_41:
  v46 = SBLogSystemApertureMediation(v8);
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    if (v33 == 1)
    {
      v47 = _SBShortElementDescription(v6);
      v48 = @"over";
      v49 = v5;
    }

    else
    {
      v47 = _SBShortElementDescription(v5);
      if (v33)
      {
        v48 = @"over";
      }

      else
      {
        v48 = @"same as";
      }

      v49 = v6;
    }

    v50 = _SBShortElementDescription(v49);
    *buf = 138544130;
    v63 = v47;
    v64 = 2114;
    v65 = v48;
    v66 = 2114;
    v67 = v50;
    v68 = 2114;
    v69 = v32;
    _os_log_impl(&dword_21ED4E000, v46, OS_LOG_TYPE_DEFAULT, "Prioritizing '%{public}@' %{public}@ '%{public}@' (%{public}@)", buf, 0x2Au);
  }

  return v33;
}

uint64_t __113__SBSystemApertureElementAuthority_elementsOrderedByPromotionFromTemporallyOrderedElements_withPreviousOrdering___block_invoke_2_37(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (SAHasAlertBehavior() & 1) != 0 || SAHasActivityBehavior() && ([*(a1 + 32) systemApertureApertureElementAuthority:*(a1 + 40) isActivityElementAlerting:v5])
  {
    v6 = 1;
  }

  else if (a3 == 3)
  {
    v6 = [*(a1 + 32) systemApertureApertureElementAuthority:*(a1 + 40) isElementExpandedDueToUserInteraction:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)elementRequiresBeingDisplayedAlone:(id)alone
{
  aloneCopy = alone;
  WeakRetained = objc_loadWeakRetained(&self->_elementAuthorityDelegate);
  if (SAHasActivityBehavior() && ([WeakRetained systemApertureApertureElementAuthority:self isActivityElementAlerting:aloneCopy] & 1) != 0)
  {
    v6 = 1;
  }

  else
  {
    v6 = [WeakRetained systemApertureApertureElementAuthority:self isElementUrgentlyVisible:aloneCopy];
  }

  return v6;
}

- (SBSystemApertureElementAuthorityDelegate)elementAuthorityDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_elementAuthorityDelegate);

  return WeakRetained;
}

@end