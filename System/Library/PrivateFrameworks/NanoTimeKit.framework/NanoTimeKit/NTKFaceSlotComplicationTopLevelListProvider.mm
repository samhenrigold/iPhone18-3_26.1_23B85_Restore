@interface NTKFaceSlotComplicationTopLevelListProvider
- (NSDiffableDataSourceSnapshot)pickerListDataSourceSnapshot;
- (NTKFaceSlotComplicationTopLevelListProvider)initWithRichSlot:(BOOL)slot complicationFamily:(int64_t)family complications:(id)complications selectedComplication:(id)complication;
- (id)detailListProviderForSectionIdentifier:(id)identifier;
- (void)_buildDataIfNeeded;
@end

@implementation NTKFaceSlotComplicationTopLevelListProvider

- (NTKFaceSlotComplicationTopLevelListProvider)initWithRichSlot:(BOOL)slot complicationFamily:(int64_t)family complications:(id)complications selectedComplication:(id)complication
{
  complicationsCopy = complications;
  complicationCopy = complication;
  v16.receiver = self;
  v16.super_class = NTKFaceSlotComplicationTopLevelListProvider;
  v12 = [(NTKFaceSlotComplicationTopLevelListProvider *)&v16 init];
  if (v12)
  {
    v13 = [complicationsCopy copy];
    complications = v12->_complications;
    v12->_complications = v13;

    objc_storeStrong(&v12->_selectedItemIgnoringMoreButton, complication);
    v12->_pickerListProviderSlotIsRich = slot;
    v12->_pickerComplicationFamily = family;
  }

  return v12;
}

- (id)detailListProviderForSectionIdentifier:(id)identifier
{
  if (identifier)
  {
    identifierCopy = identifier;
    [(NTKFaceSlotComplicationTopLevelListProvider *)self _buildDataIfNeeded];
    complicationsBySectionIdentifier = [(NTKFaceSlotComplicationTopLevelListProvider *)self complicationsBySectionIdentifier];
    v6 = [complicationsBySectionIdentifier objectForKey:identifierCopy];

    selectedItemIgnoringMoreButton = [(NTKFaceSlotComplicationTopLevelListProvider *)self selectedItemIgnoringMoreButton];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      selectedItemIgnoringMoreButton = 0;
    }

    v8 = [[NTKFaceSlotComplicationDetailListProvider alloc] initWithRichSlot:[(NTKFaceSlotComplicationTopLevelListProvider *)self pickerListProviderSlotIsRich] complicationFamily:self->_pickerComplicationFamily complications:v6 selectedComplication:selectedItemIgnoringMoreButton];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSDiffableDataSourceSnapshot)pickerListDataSourceSnapshot
{
  [(NTKFaceSlotComplicationTopLevelListProvider *)self _buildDataIfNeeded];
  pickerListDataSourceSnapshot = self->_pickerListDataSourceSnapshot;

  return pickerListDataSourceSnapshot;
}

- (void)_buildDataIfNeeded
{
  v110 = *MEMORY[0x277D85DE8];
  if (!self->_pickerListDataSourceSnapshot)
  {
    v72 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v76 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    obj = [(NTKFaceSlotComplicationTopLevelListProvider *)self complications];
    v3 = [obj countByEnumeratingWithState:&v97 objects:v109 count:16];
    selfCopy = self;
    if (!v3)
    {
      v70 = 0;
      goto LABEL_34;
    }

    v4 = v3;
    v70 = 0;
    v5 = *v98;
    while (1)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v98 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v97 + 1) + 8 * i);
        ntk_sectionIdentifier = [v7 ntk_sectionIdentifier];
        if (ntk_sectionIdentifier)
        {
          v9 = ntk_sectionIdentifier;
          if ([(__CFString *)ntk_sectionIdentifier isEqualToString:@"com.apple.DateComplicationsHost"])
          {

            v9 = @"com.apple.NanoCalendar";
          }

          array = [v72 objectForKeyedSubscript:v9];
          if (!array)
          {
            array = [MEMORY[0x277CBEB18] array];
            [v72 setObject:array forKeyedSubscript:v9];
            localizedSectionHeaderName = [v7 localizedSectionHeaderName];
            if (!localizedSectionHeaderName)
            {
              localizedSectionHeaderName = v9;
            }

            v12 = [[NTKTopLevelSectionInfo alloc] initWithIdentifier:v9 localizedSectionName:localizedSectionHeaderName];
            [v76 addObject:v12];
          }

          selectedItemIgnoringMoreButton = [(NTKFaceSlotComplicationTopLevelListProvider *)selfCopy selectedItemIgnoringMoreButton];
          ntk_identifier = [selectedItemIgnoringMoreButton ntk_identifier];
          ntk_identifier2 = [v7 ntk_identifier];
          v16 = [ntk_identifier isEqual:ntk_identifier2];

          if (v16)
          {
            v17 = v9;

            v70 = v17;
          }

          if ([v7 complicationType] == 31 || objc_msgSend(v7, "complicationType") == 37)
          {
LABEL_18:
            [array addObject:v7];
          }

          else
          {
            if ([(__CFString *)v9 isEqualToString:@"com.apple.NanoWorldClock"])
            {
              v18 = [array count];
              v19 = array;
              v20 = v7;
              v21 = &__block_literal_global_87;
            }

            else if ([(__CFString *)v9 isEqualToString:@"com.apple.private.NanoTimer"])
            {
              v18 = [array count];
              v19 = array;
              v20 = v7;
              v21 = &__block_literal_global_14_0;
            }

            else
            {
              if ([(__CFString *)v9 isEqualToString:@"com.apple.NanoCompass.watchkitapp.waypoints"])
              {
                v18 = [array count];
                v96[0] = MEMORY[0x277D85DD0];
                v96[1] = 3221225472;
                v96[2] = __65__NTKFaceSlotComplicationTopLevelListProvider__buildDataIfNeeded__block_invoke_3;
                v96[3] = &unk_2787827E0;
                v96[4] = selfCopy;
                v96[5] = 1;
                v21 = v96;
              }

              else
              {
                if ([v7 complicationType] == 56)
                {
                  goto LABEL_18;
                }

                pickerListProviderSlotIsRich = [(NTKFaceSlotComplicationTopLevelListProvider *)selfCopy pickerListProviderSlotIsRich];
                v18 = [array count];
                v94[0] = MEMORY[0x277D85DD0];
                v94[1] = 3221225472;
                v94[2] = __65__NTKFaceSlotComplicationTopLevelListProvider__buildDataIfNeeded__block_invoke_4;
                v94[3] = &__block_descriptor_41_e45_q24__0__NTKComplication_8__NTKComplication_16l;
                v94[4] = 1;
                v95 = pickerListProviderSlotIsRich;
                v21 = v94;
              }

              v19 = array;
              v20 = v7;
            }

            [array insertObject:v7 atIndex:{objc_msgSend(v19, "indexOfObject:inSortedRange:options:usingComparator:", v20, 0, v18, 1024, v21)}];
          }

          continue;
        }
      }

      v4 = [obj countByEnumeratingWithState:&v97 objects:v109 count:16];
      if (!v4)
      {
LABEL_34:

        [v76 sortUsingComparator:&__block_literal_global_19_0];
        v23 = [MEMORY[0x277CBEB58] set];
        v68 = objc_alloc_init(MEMORY[0x277CFB890]);
        [v68 appendSectionsWithIdentifiers:v76];
        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v66 = v76;
        v69 = [v66 countByEnumeratingWithState:&v90 objects:v108 count:16];
        if (!v69)
        {
          goto LABEL_96;
        }

        v67 = *v91;
        v65 = v88;
        while (1)
        {
          v24 = 0;
          do
          {
            if (*v91 != v67)
            {
              objc_enumerationMutation(v66);
            }

            v73 = *(*(&v90 + 1) + 8 * v24);
            ntk_identifier3 = [v73 ntk_identifier];
            v26 = [v72 objectForKey:ntk_identifier3];
            v27 = [ntk_identifier3 isEqualToString:@"com.apple.nanotimekit.contacts"];
            if (v27)
            {
              v29 = [NTKPeopleComplication _complicationPickerShouldShowMoreButtonForList:v26];
              if ([v26 count] > 4)
              {
                goto LABEL_41;
              }

              v31 = [v26 count];
              v77 = [v26 copy];
              if (v29)
              {
                v33 = v26;
                goto LABEL_51;
              }

              goto LABEL_52;
            }

            if ((NTKUseComplicationEditor(v27, v28) & 1) != 0 || ![ntk_identifier3 isEqualToString:@"com.apple.NanoHome"])
            {
              v32 = [v26 count];
              v77 = [v26 copy];
              if (v32 <= 4)
              {
LABEL_42:
                v30 = 0;
                v31 = 3;
                goto LABEL_53;
              }

LABEL_48:
              v33 = v26;
              v31 = 3;
LABEL_51:
              v26 = [v33 subarrayWithRange:{0, v31}];

              v30 = 1;
              goto LABEL_53;
            }

            if ([v26 count] <= 4)
            {
              v31 = [v26 count];
              v77 = [v26 copy];
LABEL_52:
              v30 = 0;
              goto LABEL_53;
            }

            v33 = [NTKHomeListPickerDataSource topLevelItemsForComplicationFamily:[(NTKFaceSlotComplicationTopLevelListProvider *)selfCopy pickerComplicationFamily] sectionIdentifier:ntk_identifier3];

            v29 = +[NTKHomeListPickerDataSource shouldShowTopLevelMoreButton];
            if ([v33 count] > 4)
            {
              v26 = v33;
LABEL_41:
              v77 = [v26 copy];
              if (!v29)
              {
                goto LABEL_42;
              }

              goto LABEL_48;
            }

            v31 = [v33 count];
            v77 = [v33 copy];
            if (v29)
            {
              goto LABEL_51;
            }

            v30 = 0;
            v26 = v33;
LABEL_53:
            if ([(__CFString *)v70 isEqual:ntk_identifier3])
            {
              selectedItemIgnoringMoreButton2 = [(NTKFaceSlotComplicationTopLevelListProvider *)selfCopy selectedItemIgnoringMoreButton];
              v35 = selectedItemIgnoringMoreButton2;
              v36 = v30 ^ 1;
              if (!selectedItemIgnoringMoreButton2)
              {
                v36 = 1;
              }

              if ((v36 & 1) == 0)
              {
                v87[0] = MEMORY[0x277D85DD0];
                v87[1] = 3221225472;
                v88[0] = __65__NTKFaceSlotComplicationTopLevelListProvider__buildDataIfNeeded__block_invoke_6;
                v88[1] = &unk_278782848;
                v37 = selectedItemIgnoringMoreButton2;
                v89 = v37;
                v38 = [v77 indexOfObjectPassingTest:v87];
                if (v38 != 0x7FFFFFFFFFFFFFFFLL && v38 >= v31)
                {
                  v40 = [v26 subarrayWithRange:{0, v31 - 1}];
                  v107 = v37;
                  v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v107 count:1];
                  v42 = [v41 arrayByAddingObjectsFromArray:v40];

                  v26 = v42;
                }
              }

              [(NTKFaceSlotComplicationTopLevelListProvider *)selfCopy setPickerSelectedItem:v35];
            }

            v75 = v24;
            if (v30)
            {
              v43 = [[NTKMoreButtonListItem alloc] initWithSectionIdentifier:ntk_identifier3];
              v44 = [v26 arrayByAddingObject:v43];

              v26 = v44;
            }

            v74 = ntk_identifier3;
            v45 = [MEMORY[0x277CBEB40] orderedSetWithArray:v26];
            v46 = [v45 count];
            if (v46 != [v26 count])
            {
              array2 = [MEMORY[0x277CBEB18] array];
              v83 = 0u;
              v84 = 0u;
              v85 = 0u;
              v86 = 0u;
              v48 = v26;
              v49 = [v48 countByEnumeratingWithState:&v83 objects:v106 count:16];
              if (v49)
              {
                v50 = v49;
                v51 = *v84;
                do
                {
                  for (j = 0; j != v50; ++j)
                  {
                    if (*v84 != v51)
                    {
                      objc_enumerationMutation(v48);
                    }

                    ntk_identifier4 = [*(*(&v83 + 1) + 8 * j) ntk_identifier];
                    [array2 addObject:ntk_identifier4];
                  }

                  v50 = [v48 countByEnumeratingWithState:&v83 objects:v106 count:16];
                }

                while (v50);
              }

              v54 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
              if (os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
              {
                *buf = 138412546;
                v103 = array2;
                v104 = 2112;
                v105 = v48;
                _os_log_fault_impl(&dword_22D9C5000, v54, OS_LOG_TYPE_FAULT, "NTKListProviderError: Items %@ has a duplicate (%@)", buf, 0x16u);
              }
            }

            v81 = 0u;
            v82 = 0u;
            v79 = 0u;
            v80 = 0u;
            v55 = v26;
            v56 = [v55 countByEnumeratingWithState:&v79 objects:v101 count:16];
            if (v56)
            {
              v57 = v56;
              v58 = *v80;
              do
              {
                for (k = 0; k != v57; ++k)
                {
                  if (*v80 != v58)
                  {
                    objc_enumerationMutation(v55);
                  }

                  v60 = *(*(&v79 + 1) + 8 * k);
                  if ([v23 containsObject:v60])
                  {
                    [v45 removeObject:v60];
                    v61 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
                    if (os_log_type_enabled(v61, OS_LOG_TYPE_FAULT))
                    {
                      ntk_identifier5 = [v60 ntk_identifier];
                      *buf = 138412546;
                      v103 = ntk_identifier5;
                      v104 = 2112;
                      v105 = v60;
                      _os_log_fault_impl(&dword_22D9C5000, v61, OS_LOG_TYPE_FAULT, "NTKListProviderError: Item %@ (%@) already in list provider", buf, 0x16u);
                    }
                  }
                }

                v57 = [v55 countByEnumeratingWithState:&v79 objects:v101 count:16];
              }

              while (v57);
            }

            array3 = [v45 array];
            [v23 addObjectsFromArray:array3];
            [v68 appendItemsWithIdentifiers:array3 intoSectionWithIdentifier:v73];

            v24 = v75 + 1;
          }

          while (v75 + 1 != v69);
          v64 = [v66 countByEnumeratingWithState:&v90 objects:v108 count:16];
          v69 = v64;
          if (!v64)
          {
LABEL_96:

            [(NTKFaceSlotComplicationTopLevelListProvider *)selfCopy setPickerListDataSourceSnapshot:v68];
            [(NTKFaceSlotComplicationTopLevelListProvider *)selfCopy setComplicationsBySectionIdentifier:v72];

            return;
          }
        }
      }
    }
  }
}

uint64_t __65__NTKFaceSlotComplicationTopLevelListProvider__buildDataIfNeeded__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ((v7 = v6, [v5 complication], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "bundleIdentifier"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", @"com.apple.NanoCompass.complications.waypoint"), v9, v8, objc_msgSend(v7, "complication"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "bundleIdentifier"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToString:", @"com.apple.NanoCompass.complications.waypoint"), v12, v11, v7, v10) ? (v14 = -1) : (v14 = 1), (v10 & 1) == 0 && (v13 & 1) == 0))
  {
    v15 = [*(a1 + 32) pickerListProviderSlotIsRich];
    v16 = [v5 ntk_localizedNameWithOptions:*(a1 + 40) forRichComplicationSlot:v15];
    v17 = [v6 ntk_localizedNameWithOptions:*(a1 + 40) forRichComplicationSlot:v15];
    v14 = [v16 localizedCaseInsensitiveCompare:v17];
  }

  return v14;
}

uint64_t __65__NTKFaceSlotComplicationTopLevelListProvider__buildDataIfNeeded__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  v8 = [a2 ntk_localizedNameWithOptions:v5 forRichComplicationSlot:v6];
  v9 = [v7 ntk_localizedNameWithOptions:*(a1 + 32) forRichComplicationSlot:*(a1 + 40)];

  v10 = [v8 localizedCaseInsensitiveCompare:v9];
  return v10;
}

uint64_t __65__NTKFaceSlotComplicationTopLevelListProvider__buildDataIfNeeded__block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 ntk_identifier];
  v7 = [v6 isEqualToString:@"com.apple.nanotimekit.off"];

  if (v7)
  {
    v8 = -1;
  }

  else
  {
    v9 = [v4 ntk_localizedSectionName];
    v10 = [v5 ntk_localizedSectionName];
    v8 = [v9 localizedCaseInsensitiveCompare:v10];
  }

  return v8;
}

uint64_t __65__NTKFaceSlotComplicationTopLevelListProvider__buildDataIfNeeded__block_invoke_6(uint64_t a1, void *a2)
{
  v3 = [a2 ntk_identifier];
  v4 = [*(a1 + 32) ntk_identifier];
  v5 = [v3 isEqual:v4];

  return v5;
}

@end