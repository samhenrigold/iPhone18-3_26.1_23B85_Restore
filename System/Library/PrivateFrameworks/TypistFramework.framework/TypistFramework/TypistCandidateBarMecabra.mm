@interface TypistCandidateBarMecabra
- (BOOL)hasCandidate:(id)candidate withAlternativeText:(id)text inRange:(_NSRange)range;
- (BOOL)hasVisibleCandidate:(id)candidate;
- (BOOL)isExtendedCandidateViewMode;
- (BOOL)scrollCandidateBar:(int)bar;
- (BOOL)scrollCandidateBarByOneScreen;
- (TypistCandidateBarMecabra)init;
- (id)candidateUIInformation:(id)information;
- (id)getAllCandidates;
- (id)getVisibleCandidates;
- (int64_t)getIndexOfCandidate:(id)candidate withAlternativeText:(id)text;
- (int64_t)selectCandidate:(id)candidate;
- (int64_t)selectCandidateAtIndex:(int64_t)index;
- (void)hideExtendedCandidateView;
- (void)showExtendedCandidateView;
- (void)toggleExtendedCandidateViewMode;
@end

@implementation TypistCandidateBarMecabra

- (TypistCandidateBarMecabra)init
{
  v3.receiver = self;
  v3.super_class = TypistCandidateBarMecabra;
  return [(TypistCandidateBar *)&v3 init];
}

- (id)candidateUIInformation:(id)information
{
  informationCopy = information;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__8;
  v14 = __Block_byref_object_dispose__8;
  v15 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__TypistCandidateBarMecabra_candidateUIInformation___block_invoke;
  v7[3] = &unk_279DF4758;
  v4 = informationCopy;
  v8 = v4;
  v9 = &v10;
  [TypistKeyboardUtilities runOnMainThread:v7];
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

void __52__TypistCandidateBarMecabra_candidateUIInformation___block_invoke(uint64_t a1)
{
  v69 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277D75DA0] allWindowsIncludingInternalWindows:1 onlyVisibleWindows:0];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v1 = v63 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v60 objects:v68 count:16];
  if (v2)
  {
    v3 = *v61;
    v4 = @"TUICandidateCell";
    v48 = v1;
    v40 = *v61;
    do
    {
      v5 = 0;
      v41 = v2;
      do
      {
        if (*v61 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v60 + 1) + 8 * v5);
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v46 = v6;
        v7 = [v6 allSubViews];
        v8 = [v7 countByEnumeratingWithState:&v56 objects:v67 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v57;
          v49 = v7;
          v42 = *v57;
          v43 = v5;
          do
          {
            v11 = 0;
            v44 = v9;
            do
            {
              if (*v57 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v56 + 1) + 8 * v11);
              NSClassFromString(&cfstr_Uikeyboardcand_2.isa);
              if (objc_opt_isKindOfClass() & 1) != 0 || (NSClassFromString(&cfstr_Tuicandidatevi.isa), (objc_opt_isKindOfClass()))
              {
                v45 = v11;
                v54 = 0u;
                v55 = 0u;
                v52 = 0u;
                v53 = 0u;
                v47 = v12;
                obj = [v12 allSubViews];
                v13 = [obj countByEnumeratingWithState:&v52 objects:v66 count:16];
                if (v13)
                {
                  v14 = v13;
                  v15 = *v53;
                  while (2)
                  {
                    for (i = 0; i != v14; ++i)
                    {
                      if (*v53 != v15)
                      {
                        objc_enumerationMutation(obj);
                      }

                      v17 = *(*(&v52 + 1) + 8 * i);
                      NSClassFromString(&v4->isa);
                      if (objc_opt_isKindOfClass())
                      {
                        v18 = v4;
                        v19 = [v17 performSelector:sel_textLabel];
                        v20 = [v17 performSelector:sel_candidateNumberLabel];
                        v21 = [v19 text];
                        v22 = [v21 isEqualToString:*(a1 + 32)];

                        if (v22)
                        {
                          v23 = [v17 superview];
                          [v47 frame];
                          [v23 convertRect:v46 toView:?];
                          UIRectGetCenter();
                          v25 = v24;
                          v27 = v26;

                          v28 = [v20 text];
                          v29 = [v17 performSelector:sel_isFocused] != 0;
                          v30 = [v20 isHidden];
                          v31 = *(a1 + 32);
                          v64[0] = @"candidateString";
                          v64[1] = @"candidateNumberString";
                          v32 = &stru_288014100;
                          if (v28)
                          {
                            v32 = v28;
                          }

                          v65[0] = v31;
                          v65[1] = v32;
                          v64[2] = @"isFocused";
                          v33 = [MEMORY[0x277CCABB0] numberWithBool:v29];
                          v65[2] = v33;
                          v64[3] = @"rowSelected";
                          v34 = [MEMORY[0x277CCABB0] numberWithBool:v30 ^ 1u];
                          v65[3] = v34;
                          v64[4] = @"centerX";
                          v35 = [MEMORY[0x277CCABB0] numberWithDouble:v25];
                          v65[4] = v35;
                          v64[5] = @"centerY";
                          v36 = [MEMORY[0x277CCABB0] numberWithDouble:v27];
                          v65[5] = v36;
                          v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:v64 count:6];
                          v38 = *(*(a1 + 40) + 8);
                          v39 = *(v38 + 40);
                          *(v38 + 40) = v37;

                          v1 = v48;
                          goto LABEL_32;
                        }

                        v4 = v18;
                      }
                    }

                    v14 = [obj countByEnumeratingWithState:&v52 objects:v66 count:16];
                    if (v14)
                    {
                      continue;
                    }

                    break;
                  }
                }

                v1 = v48;
                v7 = v49;
                v10 = v42;
                v5 = v43;
                v9 = v44;
                v11 = v45;
              }

              ++v11;
            }

            while (v11 != v9);
            v9 = [v7 countByEnumeratingWithState:&v56 objects:v67 count:16];
          }

          while (v9);
        }

        ++v5;
        v3 = v40;
      }

      while (v5 != v41);
      v2 = [v1 countByEnumeratingWithState:&v60 objects:v68 count:16];
    }

    while (v2);
  }

LABEL_32:
}

- (id)getVisibleCandidates
{
  v2 = +[TypistKeyboardData keyboardData];

  return [(objc_class *)v2 getVisibleCandidateList:@"typistCandidateBarTypeMecabra"];
}

- (BOOL)hasVisibleCandidate:(id)candidate
{
  v17 = *MEMORY[0x277D85DE8];
  candidateCopy = candidate;
  [(TypistCandidateBarMecabra *)self getVisibleCandidates];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        candidate = [*(*(&v12 + 1) + 8 * i) candidate];
        v10 = [candidate isEqualToString:candidateCopy];

        if (v10)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (BOOL)hasCandidate:(id)candidate withAlternativeText:(id)text inRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v7 = [(TypistCandidateBarMecabra *)self getIndexOfCandidate:candidate withAlternativeText:text];
  v9 = v7 >= location && v7 - location < length;
  return v7 >= 0 && v9;
}

- (id)getAllCandidates
{
  v3 = 50;
  do
  {
    if ([(TypistCandidateBar *)self hasCandidates])
    {
      break;
    }

    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    TYLogl(OS_LOG_TYPE_DEBUG, @"%@: Waiting for visible candidates", v6, v7, v8, v9, v10, v11, v5);

    [TypistKeyboardUtilities waitFor:0.1];
    --v3;
  }

  while (v3);
  v14.receiver = self;
  v14.super_class = TypistCandidateBarMecabra;
  getAllCandidates = [(TypistCandidateBar *)&v14 getAllCandidates];

  return getAllCandidates;
}

- (int64_t)getIndexOfCandidate:(id)candidate withAlternativeText:(id)text
{
  candidateCopy = candidate;
  textCopy = text;
  if (+[TypistKeyboardUtilities hasMarkedText])
  {
    v8 = +[TypistKeyboardUtilities markedText];
    v9 = [v8 isEqualToString:candidateCopy];

    if (v9)
    {
      v10 = 0;
      goto LABEL_18;
    }
  }

  getAllCandidates = [(TypistCandidateBarMecabra *)self getAllCandidates];
  if (![getAllCandidates count])
  {
    goto LABEL_16;
  }

  v10 = 0;
  while (1)
  {
    v12 = [getAllCandidates objectAtIndex:v10];
    candidate = [v12 candidate];
    if (([candidateCopy isEqualToString:candidate] & 1) == 0)
    {

      goto LABEL_11;
    }

    if (!textCopy)
    {
      break;
    }

    alternativeText = [v12 alternativeText];
    v15 = [textCopy isEqualToString:alternativeText];

    if (v15)
    {
      goto LABEL_14;
    }

LABEL_11:
    ++v10;

    if (v10 >= [getAllCandidates count])
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_15;
    }
  }

LABEL_14:
LABEL_15:
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_16:
    v10 = -1;
  }

LABEL_18:
  return v10;
}

- (BOOL)scrollCandidateBarByOneScreen
{
  if ([(TypistCandidateBarMecabra *)self isExtendedCandidateViewMode])
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  return [(TypistCandidateBarMecabra *)self scrollCandidateBar:v3];
}

- (int64_t)selectCandidate:(id)candidate
{
  candidateCopy = candidate;
  if ([(TypistCandidateBar *)self hasCandidate:candidateCopy])
  {
    v5 = [(TypistCandidateBarMecabra *)self getIndexOfCandidate:candidateCopy];
    if ([(TypistCandidateBar *)self hasCandidate:candidateCopy])
    {
      if (![(TypistCandidateBarMecabra *)self hasVisibleCandidate:candidateCopy])
      {
        TYLog(@"Looking for candidate [%@] in the candidate bar...", v6, v7, v8, v9, v10, v11, v12, candidateCopy);
        if ([(TypistCandidateBarMecabra *)self scrollCandidateBarByOneScreen])
        {
            ;
          }
        }
      }
    }

    if (v5 <= 0x7FFFFFFFFFFFFFFELL)
    {
      [(TypistCandidateBar *)self centerOfCandidate:candidateCopy];
      v14 = v13;
      v16 = v15;
      v17 = MEMORY[0x277D44358];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __45__TypistCandidateBarMecabra_selectCandidate___block_invoke;
      v20[3] = &unk_279DF4DB0;
      v21 = candidateCopy;
      v22 = v14;
      v23 = v16;
      v18 = [v17 eventStreamWithEventActions:v20];
      [TypistKeyboardUtilities launchRecapWithSyntheticEventStream:v18];
      [TypistKeyboardUtilities waitFor:0.2];
    }
  }

  else
  {
    v5 = -1;
  }

  return v5;
}

void __45__TypistCandidateBarMecabra_selectCandidate___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D44340];
  v14 = a2;
  v4 = [v3 touchScreenDigitizerSender];
  [v14 setSenderProperties:v4];

  v5 = *(a1 + 32);
  v6 = NSStringFromCGPoint(*(a1 + 40));
  TYLog(@"Tapping [%@] candidate center at: %@", v7, v8, v9, v10, v11, v12, v13, v5, v6);

  [v14 tap:{*(a1 + 40), *(a1 + 48)}];
}

- (int64_t)selectCandidateAtIndex:(int64_t)index
{
  getAllCandidates = [(TypistCandidateBarMecabra *)self getAllCandidates];
  if ([getAllCandidates count] <= index)
  {
    v15 = -1;
  }

  else
  {
    [(objc_class *)+[TypistKeyboardData keyboardData](TypistKeyboardData showCandidateAtIndex:"showCandidateAtIndex:", index];
    v6 = [getAllCandidates objectAtIndex:index];
    candidate = [v6 candidate];

    v8 = [MEMORY[0x277CCABB0] numberWithInteger:index];
    TYLogl(OS_LOG_TYPE_DEBUG, @"The candidate at position %@ is %@", v9, v10, v11, v12, v13, v14, v8, candidate);

    v15 = [(TypistCandidateBarMecabra *)self selectCandidate:candidate];
  }

  return v15;
}

- (void)showExtendedCandidateView
{
  if (![(TypistCandidateBarMecabra *)self isExtendedCandidateViewMode])
  {

    [(TypistCandidateBarMecabra *)self toggleExtendedCandidateViewMode];
  }
}

- (void)hideExtendedCandidateView
{
  if ([(TypistCandidateBarMecabra *)self isExtendedCandidateViewMode])
  {

    [(TypistCandidateBarMecabra *)self toggleExtendedCandidateViewMode];
  }
}

- (void)toggleExtendedCandidateViewMode
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3010000000;
  v11 = 0;
  v12 = 0;
  v10 = &unk_2701AD026;
  [(objc_class *)+[TypistKeyboardData keyboardData](TypistKeyboardData getExtendedCandidateViewToggleButtonCenter];
  v11 = v2;
  v12 = v3;
  if (v8[4] != *MEMORY[0x277CBF348] || v8[5] != *(MEMORY[0x277CBF348] + 8))
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __60__TypistCandidateBarMecabra_toggleExtendedCandidateViewMode__block_invoke;
    v6[3] = &unk_279DF4DD8;
    v6[4] = &v7;
    v5 = [MEMORY[0x277D44358] eventStreamWithEventActions:v6];
    [TypistKeyboardUtilities launchRecapWithSyntheticEventStream:v5];
    [TypistKeyboardUtilities waitFor:0.5];
  }

  _Block_object_dispose(&v7, 8);
}

void __60__TypistCandidateBarMecabra_toggleExtendedCandidateViewMode__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D44340];
  v13 = a2;
  v4 = [v3 touchScreenDigitizerSender];
  [v13 setSenderProperties:v4];

  v5 = NSStringFromCGPoint(*(*(*(a1 + 32) + 8) + 32));
  TYLog(@"Tapping center of toggle button: %@", v6, v7, v8, v9, v10, v11, v12, v5);

  [v13 tap:{*(*(*(a1 + 32) + 8) + 32), *(*(*(a1 + 32) + 8) + 40)}];
}

- (BOOL)scrollCandidateBar:(int)bar
{
  if ((bar & 0xFFFFFFFE) == 2)
  {
    if ([(TypistCandidateBarMecabra *)self isExtendedCandidateViewMode])
    {
LABEL_9:
      isExtendedCandidateViewMode = [(TypistCandidateBarMecabra *)self isExtendedCandidateViewMode];
      v19 = @"Bar View";
      if (isExtendedCandidateViewMode)
      {
        v19 = @"Extended View";
      }

      TYLogl(OS_LOG_TYPE_ERROR, @"scrollCandidateBar: Invalid scroll direction for candidate view mode: %@", v13, v14, v15, v16, v17, v18, v19);
      LOBYTE(v11) = 0;
      return v11;
    }
  }

  else if (bar <= 1 && ![(TypistCandidateBarMecabra *)self isExtendedCandidateViewMode])
  {
    goto LABEL_9;
  }

  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v29[3] = 0x3FF0000000000000;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__8;
  v27 = __Block_byref_object_dispose__8;
  v28 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __48__TypistCandidateBarMecabra_scrollCandidateBar___block_invoke;
  v21[3] = &unk_279DF4E28;
  v21[4] = self;
  v21[5] = v29;
  barCopy = bar;
  v21[6] = &v23;
  [TypistKeyboardUtilities runOnMainThread:v21];
  if (v24[5])
  {
    [TypistKeyboardUtilities launchRecapWithSyntheticEventStream:?];
    [TypistKeyboardUtilities waitFor:0.5];
  }

  getVisibleCandidates = [(TypistCandidateBarMecabra *)self getVisibleCandidates];
  lastObject = [getVisibleCandidates lastObject];
  candidate = [lastObject candidate];
  getAllCandidates = [(TypistCandidateBarMecabra *)self getAllCandidates];
  lastObject2 = [getAllCandidates lastObject];
  candidate2 = [lastObject2 candidate];
  v11 = [candidate isEqualToString:candidate2] ^ 1;

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(v29, 8);
  return v11;
}

void __48__TypistCandidateBarMecabra_scrollCandidateBar___block_invoke(uint64_t a1)
{
  v95 = *MEMORY[0x277D85DE8];
  obj = [*(a1 + 32) getVisibleCandidates];
  v2 = [obj count];
  v3 = [*(a1 + 32) getAllCandidates];
  if (v2 < [v3 count])
  {
    v4 = [*(a1 + 32) getVisibleCandidates];
    v5 = [v4 lastObject];
    v6 = [v5 candidate];
    v73 = a1;
    v7 = [*(a1 + 32) getAllCandidates];
    v8 = [v7 lastObject];
    v9 = [v8 candidate];
    v10 = [v6 isEqualToString:v9];

    if (v10)
    {
      return;
    }

    [MEMORY[0x277D75DA0] allWindowsIncludingInternalWindows:1 onlyVisibleWindows:0];
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    obja = v91 = 0u;
    v11 = [obja countByEnumeratingWithState:&v88 objects:v94 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v89;
      v14 = 0.0;
      v15 = 0.0;
      v16 = 0.0;
      v17 = 0.0;
      v18 = v73;
      v72 = *v89;
      do
      {
        v19 = 0;
        v74 = v12;
        do
        {
          if (*v89 != v13)
          {
            objc_enumerationMutation(obja);
          }

          v20 = *(*(&v88 + 1) + 8 * v19);
          NSClassFromString(&cfstr_Uiremotekeyboa.isa);
          if (objc_opt_isKindOfClass())
          {
            v21 = [v20 allSubViews];
            v84 = 0u;
            v85 = 0u;
            v86 = 0u;
            v87 = 0u;
            v22 = v21;
            v23 = [v22 countByEnumeratingWithState:&v84 objects:v93 count:16];
            if (v23)
            {
              v24 = v23;
              v25 = *v85;
              while (2)
              {
                for (i = 0; i != v24; ++i)
                {
                  if (*v85 != v25)
                  {
                    objc_enumerationMutation(v22);
                  }

                  v27 = *(*(&v84 + 1) + 8 * i);
                  NSClassFromString(&cfstr_Uikeyboardcand_3.isa);
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    NSClassFromString(&cfstr_Uikeyboardcand_4.isa);
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      NSClassFromString(&cfstr_Tuicandidatevi.isa);
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        continue;
                      }
                    }
                  }

                  v28 = v27;
                  if ([*(v18 + 32) isExtendedCandidateViewMode])
                  {
                    v83 = 0u;
                    v81 = 0u;
                    v82 = 0u;
                    v80 = 0u;
                    v29 = [v28 allSubViews];
                    v30 = [v29 countByEnumeratingWithState:&v80 objects:v92 count:16];
                    if (v30)
                    {
                      v31 = v30;
                      v32 = *v81;
                      while (2)
                      {
                        for (j = 0; j != v31; ++j)
                        {
                          if (*v81 != v32)
                          {
                            objc_enumerationMutation(v29);
                          }

                          v34 = *(*(&v80 + 1) + 8 * j);
                          NSClassFromString(&cfstr_Uicollectionvi.isa);
                          if (objc_opt_isKindOfClass())
                          {
                            v35 = v34;

                            v28 = v35;
                            goto LABEL_31;
                          }
                        }

                        v31 = [v29 countByEnumeratingWithState:&v80 objects:v92 count:16];
                        if (v31)
                        {
                          continue;
                        }

                        break;
                      }
                    }

LABEL_31:
                  }

                  v36 = [v28 superview];
                  [v28 frame];
                  v38 = v37;
                  v40 = v39;
                  v42 = v41;
                  v44 = v43;
                  v45 = [v20 rootViewController];
                  v46 = [v45 view];
                  [v36 convertRect:v46 toView:{v38, v40, v42, v44}];
                  v17 = v47;
                  v16 = v48;

                  v49 = [v28 superview];
                  [v28 frame];
                  v51 = v50;
                  v53 = v52;
                  v55 = v54;
                  v57 = v56;
                  v58 = [MEMORY[0x277D75128] sharedApplication];
                  v59 = [v58 delegate];
                  v60 = [v59 window];
                  v61 = [v60 rootViewController];
                  v62 = [v61 view];
                  [v49 convertRect:v62 toView:{v51, v53, v55, v57}];
                  UIRectGetCenter();
                  v15 = v63;
                  v14 = v64;

                  v18 = v73;
                  goto LABEL_33;
                }

                v24 = [v22 countByEnumeratingWithState:&v84 objects:v93 count:16];
                if (v24)
                {
                  continue;
                }

                break;
              }

LABEL_33:
              v13 = v72;
              v12 = v74;
            }
          }

          ++v19;
        }

        while (v19 != v12);
        v12 = [obja countByEnumeratingWithState:&v88 objects:v94 count:16];
      }

      while (v12);
      v65 = v16 * 0.5;
    }

    else
    {
      v14 = 0.0;
      v15 = 0.0;
      v65 = 0.0;
      v17 = 0.0;
      v18 = v73;
    }

    *(*(*(v18 + 40) + 8) + 24) = v17 / 300.0;
    v78 = 0.0;
    v79 = 0.0;
    v66 = *(v18 + 56);
    if (v66 <= 1)
    {
      if (!v66)
      {
        v67 = 0.0 - v65;
        goto LABEL_50;
      }

      if (v66 == 1)
      {
        v67 = v65 + 0.0;
LABEL_50:
        v79 = v67;
      }

LABEL_53:
      +[TypistKeyboardUtilities correctForRotation:orientation:](TypistKeyboardUtilities, "correctForRotation:orientation:", &v78, +[TypistKeyboardUtilities toUIDeviceOrientation:](TypistKeyboardUtilities, "toUIDeviceOrientation:", +[TypistKeyboardUtilities getUIInterfaceOrientation]));
      v77[0] = MEMORY[0x277D85DD0];
      v77[1] = 3221225472;
      v77[2] = __48__TypistCandidateBarMecabra_scrollCandidateBar___block_invoke_2;
      v77[3] = &unk_279DF4E00;
      *&v77[5] = v15;
      *&v77[6] = v14;
      *&v77[7] = v15 + v78;
      *&v77[8] = v14 + v79;
      v77[4] = *(v18 + 40);
      v69 = [MEMORY[0x277D44358] eventStreamWithEventActions:v77];
      v70 = *(*(v18 + 48) + 8);
      v71 = *(v70 + 40);
      *(v70 + 40) = v69;

      return;
    }

    if (v66 == 3)
    {
      v68 = 0.5;
    }

    else
    {
      if (v66 != 2)
      {
        goto LABEL_53;
      }

      v68 = -0.5;
    }

    v78 = v17 * v68 + 0.0;
    goto LABEL_53;
  }
}

void __48__TypistCandidateBarMecabra_scrollCandidateBar___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D44340];
  v14 = a2;
  v4 = [v3 touchScreenDigitizerSender];
  [v14 setSenderProperties:v4];

  v5 = NSStringFromCGPoint(*(a1 + 40));
  v6 = NSStringFromCGPoint(*(a1 + 56));
  TYLog(@"Scrolling candidate bar...dragging from %@ to %@", v7, v8, v9, v10, v11, v12, v13, v5, v6);

  [v14 dragWithStartPoint:*(a1 + 40) endPoint:*(a1 + 48) duration:{*(a1 + 56), *(a1 + 64), *(*(*(a1 + 32) + 8) + 24)}];
}

- (BOOL)isExtendedCandidateViewMode
{
  v2 = +[TypistKeyboardData keyboardData];

  return [(objc_class *)v2 isExtendedCandidateViewMode];
}

@end