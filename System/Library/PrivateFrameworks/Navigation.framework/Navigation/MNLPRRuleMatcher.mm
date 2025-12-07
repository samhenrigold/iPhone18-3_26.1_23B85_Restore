@interface MNLPRRuleMatcher
- (id)debug_jsonDescriptionOfLastPlate;
- (id)generateMaskedPlateForWaypoints:(id)waypoints date:(id)date timeZone:(id)zone error:(id *)error;
- (id)initForVehicle:(id)vehicle withRules:(id)rules;
@end

@implementation MNLPRRuleMatcher

- (id)debug_jsonDescriptionOfLastPlate
{
  v38[5] = *MEMORY[0x1E69E9840];
  lastPlate = self->_lastPlate;
  if (lastPlate && [(NSArray *)lastPlate->_chars count])
  {
    v4 = MEMORY[0x1E695DF70];
    v5 = self->_lastPlate;
    if (v5)
    {
      v6 = [(NSArray *)v5->_chars count];
    }

    else
    {
      v6 = 0;
    }

    v7 = [v4 arrayWithCapacity:v6];
    v8 = self->_lastPlate;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __52__MNLPRRuleMatcher_debug_jsonDescriptionOfLastPlate__block_invoke;
    v33[3] = &unk_1E842B040;
    null3 = v7;
    v34 = null3;
    [(_MNLPRPlate *)v8 enumerateCharsUsingBlock:v33];
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = 0;
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 1;
    v10 = self->_lastPlate;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __52__MNLPRRuleMatcher_debug_jsonDescriptionOfLastPlate__block_invoke_2;
    v24[3] = &unk_1E842B068;
    v24[4] = &v29;
    v24[5] = &v25;
    [(_MNLPRPlate *)v10 enumerateCharsUsingBlock:v24];
    v11 = objc_alloc_init(MEMORY[0x1E696AC80]);
    [v11 setTimeZone:self->_lastTimeZone];
    v12 = [v11 stringFromDate:self->_lastDate];
    name = [(NSTimeZone *)self->_lastTimeZone name];
    v36[0] = null3;
    v35[0] = @"values";
    v35[1] = @"permutations";
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v26[3]];
    v36[1] = v14;
    v35[2] = @"unmaskableValues";
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v30[3]];
    v36[2] = v15;
    v35[3] = @"date";
    null = v12;
    if (!v12)
    {
      null = [MEMORY[0x1E695DFB0] null];
    }

    v36[3] = null;
    v35[4] = @"timeZone";
    null2 = name;
    if (!name)
    {
      null2 = [MEMORY[0x1E695DFB0] null];
    }

    usedRegions = self->_usedRegions;
    usedRegionETAs = self->_usedRegionETAs;
    v36[4] = null2;
    v36[5] = usedRegions;
    v35[5] = @"usedRegions";
    v35[6] = @"usedRegionETAs";
    v36[6] = usedRegionETAs;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:7];
    if (!name)
    {
    }

    if (!v12)
    {
    }

    _Block_object_dispose(&v25, 8);
    _Block_object_dispose(&v29, 8);
    null4 = v34;
  }

  else
  {
    v37[0] = @"values";
    null3 = [MEMORY[0x1E695DFB0] null];
    v38[0] = null3;
    v38[1] = &unk_1F4EE2368;
    v37[1] = @"permutations";
    v37[2] = @"unmaskableValues";
    v38[2] = &unk_1F4EE2380;
    v37[3] = @"date";
    null4 = [MEMORY[0x1E695DFB0] null];
    v38[3] = null4;
    v37[4] = @"timeZone";
    null5 = [MEMORY[0x1E695DFB0] null];
    v38[4] = null5;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:5];
  }

  return v20;
}

void __52__MNLPRRuleMatcher_debug_jsonDescriptionOfLastPlate__block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = v2;
  v4 = MEMORY[0x1E695DF70];
  if (v2)
  {
    v5 = v2[5];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = [v4 arrayWithCapacity:{objc_msgSend(v6, "count")}];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  if (v3)
  {
    v8 = *(v3 + 40);
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v30;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v29 + 1) + 8 * i) intValue];
        if ((v14 - 1) >= 3)
        {
          v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v14];
        }

        else
        {
          v15 = off_1E842B088[(v14 - 1)];
        }

        [v7 addObject:v15];
      }

      v11 = [v9 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v11);
  }

  v26 = *(a1 + 32);
  v33[0] = @"glyph";
  if (v3)
  {
    v16 = *(v3 + 32);
  }

  else
  {
    v16 = 0;
  }

  v28 = v16;
  v34[0] = v28;
  v33[1] = @"isPickup";
  if (v3)
  {
    v17 = *(v3 + 24);
  }

  else
  {
    v17 = 0;
  }

  v18 = [MEMORY[0x1E696AD98] numberWithBool:v17 & 1];
  v34[1] = v18;
  v33[2] = @"mappings";
  v19 = [(_MNLPRPlateCharacter *)v3 valueMappings];
  if ([v19 count])
  {
    [(_MNLPRPlateCharacter *)v3 valueMappings];
  }

  else
  {
    [MEMORY[0x1E695DFB0] null];
  }
  v20 = ;
  v34[2] = v20;
  v33[3] = @"fills";
  v21 = [v7 count];
  v22 = v7;
  if (!v21)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v34[3] = v22;
  v33[4] = @"replacements";
  v23 = [(_MNLPRPlateCharacter *)v3 _validReplacements:?];
  v24 = v23;
  if (!v23)
  {
    v24 = [MEMORY[0x1E695DFB0] null];
  }

  v34[4] = v24;
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:5];
  [v26 addObject:v25];

  if (!v23)
  {
  }

  if (!v21)
  {
  }
}

unint64_t __52__MNLPRRuleMatcher_debug_jsonDescriptionOfLastPlate__block_invoke_2(uint64_t a1, void *a2)
{
  result = [(_MNLPRPlateCharacter *)a2 validReplacementCount:?];
  if (result > 1)
  {
    v4 = result;
  }

  else
  {
    ++*(*(*(a1 + 32) + 8) + 24);
    v4 = 1;
  }

  *(*(*(a1 + 40) + 8) + 24) *= v4;
  return result;
}

- (id)generateMaskedPlateForWaypoints:(id)waypoints date:(id)date timeZone:(id)zone error:(id *)error
{
  v599[16] = *MEMORY[0x1E69E9840];
  waypointsCopy = waypoints;
  dateCopy = date;
  zoneCopy = zone;
  v9 = MNGetMNLPRRuleMatcherLog();
  self->_signpost = os_signpost_id_generate(v9);

  selfCopy = self;
  lastPlate = self->_lastPlate;
  self = (self + 32);
  self->super.isa = 0;

  location = self;
  objc_storeStrong(&self->_vehicle, date);
  objc_storeStrong(&selfCopy->_lastTimeZone, zone);
  usedRegions = selfCopy->_usedRegions;
  selfCopy->_usedRegions = MEMORY[0x1E695E0F8];

  v560 = 0u;
  v559 = 0u;
  v558 = 0u;
  v557 = 0u;
  p_usedRegions = &selfCopy->_usedRegions;
  v12 = selfCopy->_ruleSets;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v557 objects:v599 count:16];
  if (!v13)
  {
LABEL_9:

    _mnLPRWrappedError(error, -3, 0, @"Empty rules %@", v18, v19, v20, v21, selfCopy->_ruleSets);
    [MEMORY[0x1E69A1598] captureUserAction:2191 target:0 value:@"EmptyRules"];
LABEL_35:
    v52 = 0;
    goto LABEL_367;
  }

  v14 = *v558;
LABEL_3:
  v15 = 0;
  while (1)
  {
    if (*v558 != v14)
    {
      objc_enumerationMutation(v12);
    }

    licensePlateRegions = [*(*(&v557 + 1) + 8 * v15) licensePlateRegions];
    v17 = [licensePlateRegions count] == 0;

    if (!v17)
    {
      break;
    }

    if (v13 == ++v15)
    {
      v13 = [(NSArray *)v12 countByEnumeratingWithState:&v557 objects:v599 count:16];
      if (!v13)
      {
        goto LABEL_9;
      }

      goto LABEL_3;
    }
  }

  if (![waypointsCopy count])
  {
    _mnLPRWrappedError(error, -6, 0, @"No waypoints specified %@", v22, v23, v24, v25, waypointsCopy);
    [MEMORY[0x1E69A1598] captureUserAction:2191 target:0 value:@"EmptyRegions"];
    goto LABEL_35;
  }

  if (!selfCopy->_vehicle)
  {
    _mnLPRWrappedError(error, -4, 0, @"Empty vehicle %@", v22, v23, v24, v25, 0);
    [MEMORY[0x1E69A1598] captureUserAction:2191 target:0 value:@"EmptyVehicle"];
    goto LABEL_35;
  }

  v26 = MNGetMNLPRRuleMatcherLog();
  v27 = v26;
  signpost = selfCopy->_signpost;
  if (signpost - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
  {
    LOWORD(v592.receiver) = 0;
    _os_signpost_emit_with_name_impl(&dword_1D311E000, v27, OS_SIGNPOST_INTERVAL_BEGIN, signpost, "MaskPlate", "", &v592, 2u);
  }

  v29 = MNGetMNLPRRuleMatcherLog();
  v30 = v29;
  v31 = selfCopy->_signpost;
  if (v31 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
  {
    licensePlate = [(GEOLPRVehicle *)selfCopy->_vehicle licensePlate];
    v33 = [licensePlate length];
    LODWORD(v592.receiver) = 67109120;
    HIDWORD(v592.receiver) = v33;
    _os_signpost_emit_with_name_impl(&dword_1D311E000, v30, OS_SIGNPOST_INTERVAL_BEGIN, v31, "PreparePlate", "length=%d", &v592, 8u);
  }

  licensePlate2 = [(GEOLPRVehicle *)selfCopy->_vehicle licensePlate];
  mnlpr_componentsSeparatedByGlyph = [licensePlate2 mnlpr_componentsSeparatedByGlyph];

  if (mnlpr_componentsSeparatedByGlyph)
  {
    v35 = MEMORY[0x1E695DF70];
    licensePlate3 = [(GEOLPRVehicle *)selfCopy->_vehicle licensePlate];
    v447 = [v35 arrayWithCapacity:{objc_msgSend(licensePlate3, "length")}];

    v556 = 0u;
    v555 = 0u;
    v554 = 0u;
    v553 = 0u;
    v37 = mnlpr_componentsSeparatedByGlyph;
    v38 = [v37 countByEnumeratingWithState:&v553 objects:v598 count:16];
    if (v38)
    {
      v39 = *v554;
      do
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v554 != v39)
          {
            objc_enumerationMutation(v37);
          }

          v41 = *(*(&v553 + 1) + 8 * i);
          v42 = [_MNLPRPlateCharacter alloc];
          v43 = v41;
          if (v42)
          {
            v592.receiver = v42;
            v592.super_class = _MNLPRPlateCharacter;
            v44 = [(MNLPRRuleMatcher *)&v592 init];
            v42 = v44;
            if (v44)
            {
              objc_storeStrong(&v44->_lastPlate, v41);
              valueMappings = v42->_valueMappings;
              v42->_valueMappings = 0;

              dictionary = [MEMORY[0x1E695DF90] dictionary];
              fillTypes = v42->_fillTypes;
              v42->_fillTypes = dictionary;
            }
          }

          [v447 addObject:v42];
        }

        v38 = [v37 countByEnumeratingWithState:&v553 objects:v598 count:16];
      }

      while (v38);
    }

    if (![v447 count])
    {
      licensePlate4 = [(GEOLPRVehicle *)selfCopy->_vehicle licensePlate];
      _mnLPRWrappedError(error, -5, 0, @"Failed to generate plate abstraction for license %@", v59, v60, v61, v62, licensePlate4);

      v63 = MNGetMNLPRRuleMatcherLog();
      v64 = v63;
      v65 = selfCopy->_signpost;
      if (v65 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v63))
      {
        LOWORD(v592.receiver) = 0;
        _os_signpost_emit_with_name_impl(&dword_1D311E000, v64, OS_SIGNPOST_INTERVAL_END, v65, "PreparePlate", "failed", &v592, 2u);
      }

      v66 = MNGetMNLPRRuleMatcherLog();
      v67 = v66;
      v68 = selfCopy->_signpost;
      if (v68 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v66))
      {
        LOWORD(v592.receiver) = 0;
        _os_signpost_emit_with_name_impl(&dword_1D311E000, v67, OS_SIGNPOST_INTERVAL_END, v68, "MaskPlate", "failed", &v592, 2u);
      }

      [MEMORY[0x1E69A1598] captureUserAction:2191 target:0 value:@"EmptyLicensePlate"];
      v52 = 0;
LABEL_365:

      goto LABEL_366;
    }

    v48 = [_MNLPRPlate alloc];
    v49 = v447;
    if (v48 && (v592.receiver = v48, v592.super_class = _MNLPRPlate, (obj = [(MNLPRRuleMatcher *)&v592 init]) != 0))
    {
      v50 = [v49 copy];
      vehicle = obj->_vehicle;
      obj->_vehicle = v50;
    }

    else
    {
      obj = 0;
    }

    objc_storeStrong(&location->super.isa, obj);
    v69 = MNGetMNLPRRuleMatcherLog();
    v70 = v69;
    v71 = selfCopy->_signpost;
    if (v71 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v69))
    {
      LOWORD(v592.receiver) = 0;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v70, OS_SIGNPOST_INTERVAL_END, v71, "PreparePlate", "success", &v592, 2u);
    }

    v72 = MNGetMNLPRRuleMatcherLog();
    v73 = v72;
    v74 = selfCopy->_signpost;
    if (v74 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v72))
    {
      LOWORD(v592.receiver) = 0;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v73, OS_SIGNPOST_INTERVAL_BEGIN, v74, "FindPlateRegions", "", &v592, 2u);
    }

    GEOConfigGetDouble();
    v76 = v75;
    array = [MEMORY[0x1E695DF70] array];
    v552 = 0u;
    v551 = 0u;
    v550 = 0u;
    v549 = 0u;
    v78 = selfCopy->_ruleSets;
    v79 = [(NSArray *)v78 countByEnumeratingWithState:&v549 objects:v597 count:16];
    if (v79)
    {
      v80 = *v550;
      do
      {
        for (j = 0; j != v79; ++j)
        {
          if (*v550 != v80)
          {
            objc_enumerationMutation(v78);
          }

          v82 = [*(*(&v549 + 1) + 8 * j) plateRegionsContainingLatLngs:waypointsCopy inRadius:v76];
          [array addObjectsFromArray:v82];
        }

        v79 = [(NSArray *)v78 countByEnumeratingWithState:&v549 objects:v597 count:16];
      }

      while (v79);
    }

    v83 = MNGetMNLPRRuleMatcherLog();
    v84 = v83;
    v85 = selfCopy->_signpost;
    if (v85 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v83))
    {
      v86 = [array count];
      LODWORD(v592.receiver) = 67109120;
      HIDWORD(v592.receiver) = v86;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v84, OS_SIGNPOST_INTERVAL_END, v85, "FindPlateRegions", "matched=%d", &v592, 8u);
    }

    firstObject = [waypointsCopy firstObject];
    [firstObject coordinate];
    v89 = v88;
    v91 = v90;

    GEOConfigGetDouble();
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __72__MNLPRRuleMatcher_generateMaskedPlateForWaypoints_date_timeZone_error___block_invoke;
    aBlock[3] = &unk_1E842AF50;
    v546 = v92;
    v374 = dateCopy;
    v543 = v374;
    v544 = selfCopy;
    v385 = waypointsCopy;
    v545 = v385;
    v547 = v89;
    v548 = v91;
    v387 = _Block_copy(aBlock);
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    objc_storeStrong(p_usedRegions, dictionary2);
    objc_storeStrong(&selfCopy->_usedRegionETAs, dictionary3);
    v592.receiver = 0;
    v592.super_class = &v592;
    v593 = 0x3032000000;
    v594 = __Block_byref_object_copy__4186;
    v595 = __Block_byref_object_dispose__4187;
    v596 = 0;
    v376 = [MEMORY[0x1E695DFA8] set];
    array2 = [MEMORY[0x1E695DF70] array];
    array3 = [MEMORY[0x1E695DF70] array];
    array4 = [MEMORY[0x1E695DF70] array];
    v93 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:512 valueOptions:0];
    v94 = MNGetMNLPRRuleMatcherLog();
    v95 = v94;
    v96 = selfCopy->_signpost;
    if (v96 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v94))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v95, OS_SIGNPOST_INTERVAL_BEGIN, v96, "FindRules", "", buf, 2u);
    }

    v541 = 0u;
    v540 = 0u;
    v539 = 0u;
    v538 = 0u;
    v382 = array;
    v97 = [v382 countByEnumeratingWithState:&v538 objects:v591 count:16];
    if (v97)
    {
      v98 = 0;
      v399 = 0;
      v394 = v97;
      v395 = *v539;
      do
      {
        v418 = 0;
        do
        {
          if (*v539 != v395)
          {
            objc_enumerationMutation(v382);
          }

          v409 = *(*(&v538 + 1) + 8 * v418);
          v99 = [v409 plateInfosMatchingVehicle:selfCopy->_vehicle];
          if ([v99 count])
          {
            v398 = v99;
            firstObject2 = [v99 firstObject];
            licensePlateStructure = [firstObject2 licensePlateStructure];

            supportedNumericCharacterSet = [licensePlateStructure supportedNumericCharacterSet];
            supportedAlphabeticCharacterSet = [licensePlateStructure supportedAlphabeticCharacterSet];
            v101 = [v409 restrictionRegionsContainingLatLngs:v385 inRadius:v76];
            v397 = [v101 count] != 0;
            array5 = [MEMORY[0x1E695DF70] array];
            v537 = 0u;
            v536 = 0u;
            v535 = 0u;
            v534 = 0u;
            v413 = v101;
            v391 = [v413 countByEnumeratingWithState:&v534 objects:v590 count:16];
            if (v391)
            {
              v393 = *v535;
              while (2)
              {
                for (k = 0; k != v391; ++k)
                {
                  if (*v535 != v393)
                  {
                    objc_enumerationMutation(v413);
                  }

                  v424 = *(*(&v534 + 1) + 8 * k);
                  v102 = MNGetMNLPRRuleMatcherLog();
                  v103 = v102;
                  v104 = selfCopy->_signpost;
                  if (v104 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v102))
                  {
                    *buf = 0;
                    _os_signpost_emit_with_name_impl(&dword_1D311E000, v103, OS_SIGNPOST_INTERVAL_BEGIN, v104, "ExamineRegion", "", buf, 2u);
                  }

                  v105 = selfCopy->_vehicle;
                  v106 = (v592.super_class + 40);
                  v533 = *(v592.super_class + 5);
                  v415 = [v424 plateTypeIndexesMatchingVehicle:v105 error:&v533];
                  objc_storeStrong(v106, v533);
                  v107 = *(v592.super_class + 5);
                  if (v107)
                  {
                    if (error)
                    {
                      *error = v107;
                    }

                    v212 = MNGetMNLPRRuleMatcherLog();
                    v108 = v212;
                    v213 = selfCopy->_signpost;
                    if (v213 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v212))
                    {
                      *buf = 0;
                      _os_signpost_emit_with_name_impl(&dword_1D311E000, v108, OS_SIGNPOST_INTERVAL_END, v213, "MaskPlate", "failed", buf, 2u);
                    }

LABEL_200:

                    v204 = 0;
                    goto LABEL_201;
                  }

                  v108 = v387[2](v387, v424);
                  identifier = [v424 identifier];
                  [dictionary3 setObject:v108 forKeyedSubscript:identifier];

                  v532 = 0u;
                  v531 = 0u;
                  v530 = 0u;
                  v529 = 0u;
                  convertRules = [v424 convertRules];
                  v388 = [convertRules countByEnumeratingWithState:&v529 objects:v589 count:16];
                  if (v388)
                  {
                    v392 = *v530;
                    do
                    {
                      for (m = 0; m != v388; ++m)
                      {
                        if (*v530 != v392)
                        {
                          objc_enumerationMutation(convertRules);
                        }

                        v110 = *(*(&v529 + 1) + 8 * m);
                        v111 = MNGetMNLPRRuleMatcherLog();
                        v112 = v111;
                        v113 = selfCopy->_signpost;
                        if (v113 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v111))
                        {
                          *buf = 0;
                          _os_signpost_emit_with_name_impl(&dword_1D311E000, v112, OS_SIGNPOST_INTERVAL_BEGIN, v113, "ExamineRule", "", buf, 2u);
                        }

                        if ([v110 hasValidDateInterval])
                        {
                          v528 = 0u;
                          v527 = 0u;
                          v526 = 0u;
                          v525 = 0u;
                          v114 = v108;
                          v115 = [v114 countByEnumeratingWithState:&v525 objects:v588 count:16];
                          if (v115)
                          {
                            v116 = *v526;
                            while (2)
                            {
                              for (n = 0; n != v115; ++n)
                              {
                                if (*v526 != v116)
                                {
                                  objc_enumerationMutation(v114);
                                }

                                v118 = *(*(&v525 + 1) + 8 * n);
                                validDateInterval = [v110 validDateInterval];
                                LOBYTE(v118) = [validDateInterval containsDate:v118];

                                if (v118)
                                {

                                  goto LABEL_100;
                                }
                              }

                              v115 = [v114 countByEnumeratingWithState:&v525 objects:v588 count:16];
                              if (v115)
                              {
                                continue;
                              }

                              break;
                            }
                          }

                          v120 = MNGetMNLPRRuleMatcherLog();
                          v121 = v120;
                          v122 = selfCopy->_signpost;
                          if (v122 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v120))
                          {
                            *buf = 0;
                            _os_signpost_emit_with_name_impl(&dword_1D311E000, v121, OS_SIGNPOST_INTERVAL_END, v122, "ExamineRule", "skipped, not valid for date", buf, 2u);
                          }
                        }

                        else
                        {
LABEL_100:
                          definedPlateTypes = [v424 definedPlateTypes];
                          v411 = [v110 pickupRulesForPlateTypes:definedPlateTypes atIndexes:v415];

                          definedPlateTypes2 = [v424 definedPlateTypes];
                          v125 = [v110 mapRulesForPlateTypes:definedPlateTypes2 atIndexes:v415];

                          definedPlateTypes3 = [v424 definedPlateTypes];
                          v390 = [v110 fillRulesForPlateTypes:definedPlateTypes3 atIndexes:v415];

                          locationa = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[NSObject count](v411, "count")}];
                          v127 = MNGetMNLPRRuleMatcherLog();
                          v128 = v127;
                          v129 = selfCopy->_signpost;
                          if (v129 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v127))
                          {
                            *buf = 0;
                            _os_signpost_emit_with_name_impl(&dword_1D311E000, v128, OS_SIGNPOST_INTERVAL_BEGIN, v129, "ExamineMapRules", "", buf, 2u);
                          }

                          v524 = 0u;
                          v523 = 0u;
                          v522 = 0u;
                          v521 = 0u;
                          v403 = v125;
                          v130 = [v403 countByEnumeratingWithState:&v521 objects:v587 count:16];
                          if (v130)
                          {
                            v383 = *v522;
                            do
                            {
                              for (ii = 0; ii != v130; ii = ii + 1)
                              {
                                if (*v522 != v383)
                                {
                                  objc_enumerationMutation(v403);
                                }

                                v131 = *(*(&v521 + 1) + 8 * ii);
                                [v131 setMrLicensePlateStructure:licensePlateStructure];
                                v520 = 0u;
                                v519 = 0u;
                                v518 = 0u;
                                v517 = 0u;
                                targetChars = [v131 targetChars];
                                v133 = [targetChars countByEnumeratingWithState:&v517 objects:v586 count:16];
                                if (v133)
                                {
                                  v134 = *v518;
                                  while (2)
                                  {
                                    for (jj = 0; jj != v133; ++jj)
                                    {
                                      if (*v518 != v134)
                                      {
                                        objc_enumerationMutation(targetChars);
                                      }

                                      v136 = *(*(&v517 + 1) + 8 * jj);
                                      v137 = [(_MNLPRPlate *)obj charIndexForTarget:v136 alphabetics:supportedAlphabeticCharacterSet numerics:supportedNumericCharacterSet];
                                      if (v137 == 0x7FFFFFFFFFFFFFFFLL)
                                      {
                                        _mnLPRWrappedError(error, -108, 0, @"unable to locate plate char for map rule target: %@", v138, v139, v140, v141, v136);
                                        v205 = MNGetMNLPRRuleMatcherLog();
                                        v206 = v205;
                                        v207 = selfCopy->_signpost;
                                        if (v207 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v205))
                                        {
                                          *buf = 0;
                                          _os_signpost_emit_with_name_impl(&dword_1D311E000, v206, OS_SIGNPOST_INTERVAL_END, v207, "MaskPlate", "failed", buf, 2u);
                                        }

                                        [MEMORY[0x1E69A1598] captureUserAction:2191 target:0 value:@"NoCharForTarget"];
                                        v208 = v403;
LABEL_199:

                                        v98 = 1;
                                        goto LABEL_200;
                                      }

                                      v142 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v137];
                                      v143 = [locationa objectForKeyedSubscript:v142];
                                      v144 = v143 == 0;

                                      if (v144)
                                      {
                                        array6 = [MEMORY[0x1E695DF70] array];
                                        [locationa setObject:array6 forKeyedSubscript:v142];
                                      }

                                      v146 = [locationa objectForKeyedSubscript:v142];
                                      [v146 addObject:v131];
                                    }

                                    v133 = [targetChars countByEnumeratingWithState:&v517 objects:v586 count:16];
                                    if (v133)
                                    {
                                      continue;
                                    }

                                    break;
                                  }
                                }
                              }

                              v130 = [v403 countByEnumeratingWithState:&v521 objects:v587 count:16];
                            }

                            while (v130);
                          }

                          v147 = MNGetMNLPRRuleMatcherLog();
                          v148 = v147;
                          v149 = selfCopy->_signpost;
                          if (v149 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v147))
                          {
                            *buf = 0;
                            _os_signpost_emit_with_name_impl(&dword_1D311E000, v148, OS_SIGNPOST_INTERVAL_END, v149, "ExamineMapRules", "", buf, 2u);
                          }

                          v150 = MNGetMNLPRRuleMatcherLog();
                          v151 = v150;
                          v152 = selfCopy->_signpost;
                          if (v152 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v150))
                          {
                            *buf = 0;
                            _os_signpost_emit_with_name_impl(&dword_1D311E000, v151, OS_SIGNPOST_INTERVAL_BEGIN, v152, "ExaminePickupRules", "", buf, 2u);
                          }

                          v516 = 0u;
                          v515 = 0u;
                          v514 = 0u;
                          v513 = 0u;
                          v411 = v411;
                          v153 = licensePlateStructure;
                          v378 = [v411 countByEnumeratingWithState:&v513 objects:v585 count:16];
                          if (v378)
                          {
                            v379 = *v514;
                            do
                            {
                              for (kk = 0; kk != v378; ++kk)
                              {
                                if (*v514 != v379)
                                {
                                  objc_enumerationMutation(v411);
                                }

                                v154 = *(*(&v513 + 1) + 8 * kk);
                                [v154 setPrLicensePlateStructure:v153];
                                v512 = 0u;
                                v511 = 0u;
                                v510 = 0u;
                                v509 = 0u;
                                pickupChars = [v154 pickupChars];
                                v156 = [pickupChars countByEnumeratingWithState:&v509 objects:v584 count:16];
                                if (v156)
                                {
                                  v436 = *v510;
                                  targetChars = pickupChars;
                                  while (2)
                                  {
                                    v157 = v156;
                                    for (mm = 0; mm != v157; ++mm)
                                    {
                                      if (*v510 != v436)
                                      {
                                        objc_enumerationMutation(pickupChars);
                                      }

                                      v159 = *(*(&v509 + 1) + 8 * mm);
                                      v160 = [(_MNLPRPlate *)obj charIndexForTarget:v159 alphabetics:supportedAlphabeticCharacterSet numerics:supportedNumericCharacterSet];
                                      if (v160 == 0x7FFFFFFFFFFFFFFFLL)
                                      {
                                        _mnLPRWrappedError(error, -108, 0, @"unable to locate plate char for pickup rule target: %@", v161, v162, v163, v164, v159);
                                        v209 = MNGetMNLPRRuleMatcherLog();
                                        v210 = v209;
                                        v211 = selfCopy->_signpost;
                                        if (v211 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v209))
                                        {
                                          *buf = 0;
                                          _os_signpost_emit_with_name_impl(&dword_1D311E000, v210, OS_SIGNPOST_INTERVAL_END, v211, "MaskPlate", "failed", buf, 2u);
                                        }

                                        [MEMORY[0x1E69A1598] captureUserAction:2191 target:0 value:@"NoCharForTarget"];
                                        v208 = v411;
                                        goto LABEL_199;
                                      }

                                      v165 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v160];
                                      v166 = [locationa objectForKeyedSubscript:v165];
                                      v167 = v166 == 0;

                                      if (v167)
                                      {
                                        v168 = objc_alloc_init(MEMORY[0x1E69A1E30]);
                                        [v168 setMrLicensePlateStructure:licensePlateStructure];
                                        v169 = [v159 copy];
                                        [v168 addTargetChar:v169];

                                        v170 = objc_alloc_init(MEMORY[0x1E69A1E40]);
                                        array7 = [MEMORY[0x1E695DF70] array];
                                        [v170 setMappedValues:array7];

                                        [v168 addValueMapping:v170];
                                        v172 = [MEMORY[0x1E695DF70] arrayWithObject:v168];
                                        [locationa setObject:v172 forKeyedSubscript:v165];
                                      }

                                      pickupChars = targetChars;
                                    }

                                    v156 = [targetChars countByEnumeratingWithState:&v509 objects:v584 count:16];
                                    if (v156)
                                    {
                                      continue;
                                    }

                                    break;
                                  }
                                }

                                v153 = licensePlateStructure;
                              }

                              v378 = [v411 countByEnumeratingWithState:&v513 objects:v585 count:16];
                            }

                            while (v378);
                          }

                          v173 = MNGetMNLPRRuleMatcherLog();
                          v174 = v173;
                          v175 = selfCopy->_signpost;
                          if (v175 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v173))
                          {
                            *buf = 0;
                            _os_signpost_emit_with_name_impl(&dword_1D311E000, v174, OS_SIGNPOST_INTERVAL_END, v175, "ExaminePickupRules", "", buf, 2u);
                          }

                          v508 = 0u;
                          v507 = 0u;
                          v506 = 0u;
                          v505 = 0u;
                          v437 = v390;
                          v176 = [v437 countByEnumeratingWithState:&v505 objects:v583 count:16];
                          if (v176)
                          {
                            v177 = *v506;
                            do
                            {
                              for (nn = 0; nn != v176; ++nn)
                              {
                                if (*v506 != v177)
                                {
                                  objc_enumerationMutation(v437);
                                }

                                [*(*(&v505 + 1) + 8 * nn) setFrLicensePlateStructure:licensePlateStructure];
                              }

                              v176 = [v437 countByEnumeratingWithState:&v505 objects:v583 count:16];
                            }

                            while (v176);
                          }

                          v179 = v411;
                          if (-[NSObject count](v411, "count") || [locationa count] || objc_msgSend(v437, "count"))
                          {
                            identifier2 = [v424 identifier];
                            v181 = identifier2;
                            v182 = @"<unknown>";
                            if (identifier2)
                            {
                              v182 = identifier2;
                            }

                            v183 = v182;

                            if ([v424 hasName])
                            {
                              name = [v424 name];
                              v184 = [(__CFString *)v183 stringByAppendingFormat:@":%@"];

                              v183 = v184;
                            }

                            [v376 addObject:v183];
                            [array5 addObject:v183];

                            v179 = v411;
                          }

                          [array2 addObjectsFromArray:v179];
                          v504 = 0u;
                          v503 = 0u;
                          v502 = 0u;
                          v501 = 0u;
                          allValues = [locationa allValues];
                          v186 = [allValues countByEnumeratingWithState:&v501 objects:v582 count:16];
                          if (v186)
                          {
                            v187 = *v502;
                            do
                            {
                              for (i1 = 0; i1 != v186; ++i1)
                              {
                                if (*v502 != v187)
                                {
                                  objc_enumerationMutation(allValues);
                                }

                                v189 = *(*(&v501 + 1) + 8 * i1);
                                [array3 addObjectsFromArray:v189];
                                v500 = 0u;
                                v499 = 0u;
                                v498 = 0u;
                                v497 = 0u;
                                v190 = v189;
                                v191 = [v190 countByEnumeratingWithState:&v497 objects:v581 count:16];
                                if (v191)
                                {
                                  v192 = *v498;
                                  do
                                  {
                                    for (i2 = 0; i2 != v191; ++i2)
                                    {
                                      if (*v498 != v192)
                                      {
                                        objc_enumerationMutation(v190);
                                      }

                                      [v93 setObject:v108 forKey:*(*(&v497 + 1) + 8 * i2)];
                                    }

                                    v191 = [v190 countByEnumeratingWithState:&v497 objects:v581 count:16];
                                  }

                                  while (v191);
                                }
                              }

                              v186 = [allValues countByEnumeratingWithState:&v501 objects:v582 count:16];
                            }

                            while (v186);
                          }

                          [array4 addObjectsFromArray:v437];
                          v194 = MNGetMNLPRRuleMatcherLog();
                          v195 = v194;
                          v196 = selfCopy->_signpost;
                          if (v196 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v194))
                          {
                            v197 = [v411 count];
                            v198 = [locationa count];
                            v199 = [v437 count];
                            *buf = 67109632;
                            *&buf[4] = v197;
                            LOWORD(v576) = 1024;
                            *(&v576 + 2) = v198;
                            HIWORD(v576) = 1024;
                            LODWORD(v577) = v199;
                            _os_signpost_emit_with_name_impl(&dword_1D311E000, v195, OS_SIGNPOST_INTERVAL_END, v196, "ExamineRule", "pickup=%d, map=%d, fill=%d", buf, 0x14u);
                          }

                          v98 = 1;
                          v121 = v411;
                        }
                      }

                      v388 = [convertRules countByEnumeratingWithState:&v529 objects:v589 count:16];
                    }

                    while (v388);
                  }

                  if ([array5 count])
                  {
                    identifier3 = [v409 identifier];
                    [dictionary2 setObject:array5 forKeyedSubscript:identifier3];
                  }

                  v201 = MNGetMNLPRRuleMatcherLog();
                  v202 = v201;
                  v203 = selfCopy->_signpost;
                  if (v203 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v201))
                  {
                    *buf = 0;
                    _os_signpost_emit_with_name_impl(&dword_1D311E000, v202, OS_SIGNPOST_INTERVAL_END, v203, "ExamineRegion", "", buf, 2u);
                  }
                }

                v204 = 1;
                v391 = [v413 countByEnumeratingWithState:&v534 objects:v590 count:16];
                if (v391)
                {
                  continue;
                }

                break;
              }
            }

            else
            {
              v204 = 1;
            }

LABEL_201:

            if (!v204)
            {

              v52 = 0;
              goto LABEL_364;
            }

            v399 |= v397;
          }

          else
          {
          }

          v418 = v418 + 1;
        }

        while (v418 != v394);
        v214 = [v382 countByEnumeratingWithState:&v538 objects:v591 count:16];
        v394 = v214;
      }

      while (v214);
    }

    else
    {
      v98 = 0;
      v399 = 0;
    }

    v215 = MNGetMNLPRRuleMatcherLog();
    v216 = v215;
    v217 = selfCopy->_signpost;
    if (v217 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v215))
    {
      v218 = [array2 count];
      v219 = [array3 count];
      v220 = [array4 count];
      *buf = 67109632;
      *&buf[4] = v218;
      LOWORD(v576) = 1024;
      *(&v576 + 2) = v219;
      HIWORD(v576) = 1024;
      LODWORD(v577) = v220;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v216, OS_SIGNPOST_INTERVAL_END, v217, "FindRules", "pickup=%d, map=%d, fill=%d", buf, 0x14u);
    }

    *buf = 0;
    v576 = buf;
    v577 = 0x3032000000;
    v578 = __Block_byref_object_copy__4186;
    v579 = __Block_byref_object_dispose__4187;
    v580 = 0;
    v495[0] = 0;
    v495[1] = v495;
    v495[2] = 0x3032000000;
    v495[3] = __Block_byref_object_copy__4186;
    v495[4] = __Block_byref_object_dispose__4187;
    v496 = 0;
    v490[0] = MEMORY[0x1E69E9820];
    v490[1] = 3221225472;
    v490[2] = __72__MNLPRRuleMatcher_generateMaskedPlateForWaypoints_date_timeZone_error___block_invoke_196;
    v490[3] = &unk_1E842AF78;
    v493 = buf;
    v494 = v495;
    v491 = zoneCopy;
    v492 = selfCopy;
    v221 = _Block_copy(v490);
    v222 = MNGetMNLPRRuleMatcherLog();
    v223 = v222;
    v224 = selfCopy->_signpost;
    if (v224 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v222))
    {
      v225 = [array3 count];
      *v565 = 67109120;
      *&v565[4] = v225;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v223, OS_SIGNPOST_INTERVAL_BEGIN, v224, "FilterMapRules", "count=%d", v565, 8u);
    }

    v226 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(array3, "count")}];
    v485[0] = MEMORY[0x1E69E9820];
    v485[1] = 3221225472;
    v485[2] = __72__MNLPRRuleMatcher_generateMaskedPlateForWaypoints_date_timeZone_error___block_invoke_199;
    v485[3] = &unk_1E842AFC8;
    v486 = v93;
    v487 = v374;
    v412 = v221;
    v489 = v412;
    v414 = v226;
    v488 = v414;
    [array3 enumerateObjectsUsingBlock:v485];
    v227 = MNGetMNLPRRuleMatcherLog();
    v228 = v227;
    v229 = selfCopy->_signpost;
    if (v229 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v227))
    {
      v230 = [v414 count];
      *v565 = 67109120;
      *&v565[4] = v230;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v228, OS_SIGNPOST_INTERVAL_END, v229, "FilterMapRules", "count=%d", v565, 8u);
    }

    if (![array2 count] || !objc_msgSend(v414, "count") && !objc_msgSend(array4, "count"))
    {
      if (v399)
      {
        if (v98)
        {
          _mnLPRWrappedError(error, -11, 0, @"No pickup or mapping rules available for provided vehicle", v231, v232, v233, v234, name);
          v331 = @"NoRulesForVehicle";
        }

        else
        {
          _mnLPRWrappedError(error, -12, 0, @"No pickup or mapping rules available for provided time interval", v231, v232, v233, v234, name);
          v331 = @"EmptyRulesForTimeRange";
        }
      }

      else
      {
        _mnLPRWrappedError(error, -10, 0, @"No pickup or mapping rules available for provided regions", v231, v232, v233, v234, name);
        v331 = @"NoRulesForRegion";
      }

      [MEMORY[0x1E69A1598] captureUserAction:2191 target:0 value:v331];
      v332 = MNGetMNLPRRuleMatcherLog();
      v333 = v332;
      v334 = selfCopy->_signpost;
      if (v334 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v332))
      {
        *v565 = 0;
        _os_signpost_emit_with_name_impl(&dword_1D311E000, v333, OS_SIGNPOST_INTERVAL_END, v334, "MaskPlate", "failed", v565, 2u);
      }

      v52 = 0;
LABEL_363:

      _Block_object_dispose(v495, 8);
      _Block_object_dispose(buf, 8);

LABEL_364:
      _Block_object_dispose(&v592, 8);

      goto LABEL_365;
    }

    v235 = MNGetMNLPRRuleMatcherLog();
    v236 = v235;
    v237 = selfCopy->_signpost;
    if (v237 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v235))
    {
      *v565 = 0;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v236, OS_SIGNPOST_INTERVAL_BEGIN, v237, "BuildPickupRules", "", v565, 2u);
    }

    v483 = 0u;
    v484 = 0u;
    v481 = 0u;
    v482 = 0u;
    v438 = array2;
    v238 = [v438 countByEnumeratingWithState:&v481 objects:v574 count:16];
    if (v238)
    {
      locationb = *v482;
      do
      {
        for (i3 = 0; i3 != v238; ++i3)
        {
          if (*v482 != locationb)
          {
            objc_enumerationMutation(v438);
          }

          v240 = *(*(&v481 + 1) + 8 * i3);
          prLicensePlateStructure = [v240 prLicensePlateStructure];
          supportedNumericCharacterSet2 = [prLicensePlateStructure supportedNumericCharacterSet];

          prLicensePlateStructure2 = [v240 prLicensePlateStructure];
          supportedAlphabeticCharacterSet2 = [prLicensePlateStructure2 supportedAlphabeticCharacterSet];

          v479 = 0u;
          v480 = 0u;
          v477 = 0u;
          v478 = 0u;
          pickupChars2 = [v240 pickupChars];
          v246 = [pickupChars2 countByEnumeratingWithState:&v477 objects:v573 count:16];
          if (v246)
          {
            v247 = *v478;
            do
            {
              for (i4 = 0; i4 != v246; ++i4)
              {
                if (*v478 != v247)
                {
                  objc_enumerationMutation(pickupChars2);
                }

                v249 = [(_MNLPRPlate *)obj charMatching:supportedAlphabeticCharacterSet2 alphabetics:supportedNumericCharacterSet2 numerics:?];
                if (v249)
                {
                  v249[24] = 1;
                }
              }

              v246 = [pickupChars2 countByEnumeratingWithState:&v477 objects:v573 count:16];
            }

            while (v246);
          }
        }

        v238 = [v438 countByEnumeratingWithState:&v481 objects:v574 count:16];
      }

      while (v238);
    }

    v250 = MNGetMNLPRRuleMatcherLog();
    v251 = v250;
    v252 = selfCopy->_signpost;
    if (v252 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v250))
    {
      *v565 = 0;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v251, OS_SIGNPOST_INTERVAL_END, v252, "BuildPickupRules", "", v565, 2u);
    }

    v253 = MNGetMNLPRRuleMatcherLog();
    v254 = v253;
    v255 = selfCopy->_signpost;
    if (v255 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v253))
    {
      *v565 = 0;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v254, OS_SIGNPOST_INTERVAL_BEGIN, v255, "BuildMapRules", "", v565, 2u);
    }

    v475 = 0u;
    v476 = 0u;
    v473 = 0u;
    v474 = 0u;
    v256 = v414;
    v257 = [v256 countByEnumeratingWithState:&v473 objects:v572 count:16];
    if (v257)
    {
      v410 = *v474;
      v405 = v256;
      do
      {
        v258 = 0;
        v407 = v257;
        do
        {
          if (*v474 != v410)
          {
            objc_enumerationMutation(v256);
          }

          v416 = v258;
          v422 = *(*(&v473 + 1) + 8 * v258);
          mrLicensePlateStructure = [v422 mrLicensePlateStructure];
          supportedNumericCharacterSet3 = [mrLicensePlateStructure supportedNumericCharacterSet];

          mrLicensePlateStructure2 = [v422 mrLicensePlateStructure];
          supportedAlphabeticCharacterSet3 = [mrLicensePlateStructure2 supportedAlphabeticCharacterSet];

          v471 = 0u;
          v472 = 0u;
          v469 = 0u;
          v470 = 0u;
          targetChars2 = [v422 targetChars];
          v439 = [targetChars2 countByEnumeratingWithState:&v469 objects:v571 count:16];
          if (v439)
          {
            v425 = *v470;
            do
            {
              for (locationc = 0; locationc != v439; locationc = (locationc + 1))
              {
                if (*v470 != v425)
                {
                  objc_enumerationMutation(targetChars2);
                }

                v261 = [(_MNLPRPlate *)obj charMatching:supportedAlphabeticCharacterSet3 alphabetics:supportedNumericCharacterSet3 numerics:?];
                if (v261)
                {
                  v467 = 0u;
                  v468 = 0u;
                  v465 = 0u;
                  v466 = 0u;
                  valueMappings = [v422 valueMappings];
                  v263 = [valueMappings countByEnumeratingWithState:&v465 objects:v570 count:16];
                  if (v263)
                  {
                    v264 = *v466;
                    do
                    {
                      for (i5 = 0; i5 != v263; ++i5)
                      {
                        if (*v466 != v264)
                        {
                          objc_enumerationMutation(valueMappings);
                        }

                        v266 = *(*(&v465 + 1) + 8 * i5);
                        if ([v266 valuesCount])
                        {
                          values = [v266 values];
                          v268 = v261[4];
                          v269 = [values containsObject:v268];

                          if (!v269)
                          {
                            continue;
                          }
                        }

                        v270 = v266;
                        if ([v270 mappedValuesCount])
                        {
                          [v270 mappedValues];
                        }

                        else
                        {
                          [v270 values];
                        }
                        v271 = ;
                        if (v261[1])
                        {
                          v272 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v271];
                          [v261[1] intersectOrderedSet:v272];
                        }

                        else
                        {
                          v273 = [MEMORY[0x1E695DFA0] orderedSetWithArray:v271];
                          v272 = v261[1];
                          v261[1] = v273;
                        }
                      }

                      v263 = [valueMappings countByEnumeratingWithState:&v465 objects:v570 count:16];
                    }

                    while (v263);
                  }
                }
              }

              v439 = [targetChars2 countByEnumeratingWithState:&v469 objects:v571 count:16];
            }

            while (v439);
          }

          v258 = v416 + 1;
          v256 = v405;
        }

        while (v416 + 1 != v407);
        v257 = [v405 countByEnumeratingWithState:&v473 objects:v572 count:16];
      }

      while (v257);
    }

    v274 = MNGetMNLPRRuleMatcherLog();
    v275 = v274;
    v276 = selfCopy->_signpost;
    if (v276 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v274))
    {
      *v565 = 0;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v275, OS_SIGNPOST_INTERVAL_END, v276, "BuildMapRules", "", v565, 2u);
    }

    v277 = MNGetMNLPRRuleMatcherLog();
    v278 = v277;
    v279 = selfCopy->_signpost;
    if (v279 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v277))
    {
      *v565 = 0;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v278, OS_SIGNPOST_INTERVAL_BEGIN, v279, "BuildFillRules", "", v565, 2u);
    }

    v463 = 0u;
    v464 = 0u;
    v461 = 0u;
    v462 = 0u;
    v417 = array4;
    v423 = [v417 countByEnumeratingWithState:&v461 objects:v569 count:16];
    if (v423)
    {
      v420 = *v462;
      do
      {
        v433 = 0;
        do
        {
          if (*v462 != v420)
          {
            objc_enumerationMutation(v417);
          }

          v280 = *(*(&v461 + 1) + 8 * v433);
          frLicensePlateStructure = [v280 frLicensePlateStructure];
          supportedNumericCharacterSet4 = [frLicensePlateStructure supportedNumericCharacterSet];

          frLicensePlateStructure2 = [v280 frLicensePlateStructure];
          supportedAlphabeticCharacterSet4 = [frLicensePlateStructure2 supportedAlphabeticCharacterSet];

          if (obj)
          {
            v283 = [(GEOLPRVehicle *)obj->_vehicle count];
          }

          else
          {
            v283 = 0;
          }

          if ([v280 hasFromChar])
          {
            fromChar = [v280 fromChar];
            v285 = [(_MNLPRPlate *)obj charIndexForTarget:fromChar alphabetics:supportedAlphabeticCharacterSet4 numerics:supportedNumericCharacterSet4];

            if (v285 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v285 = 0;
            }
          }

          else
          {
            v285 = 0;
          }

          v286 = (v283 - 1);
          if ([v280 hasToChar])
          {
            toChar = [v280 toChar];
            v288 = [(_MNLPRPlate *)obj charIndexForTarget:toChar alphabetics:supportedAlphabeticCharacterSet4 numerics:supportedNumericCharacterSet4];

            if (v288 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v286 = v288;
            }
          }

          v440 = v286;
          if (v285 <= v286)
          {
            while (obj && [(GEOLPRVehicle *)obj->_vehicle count]> v285)
            {
              v289 = [(GEOLPRVehicle *)obj->_vehicle objectAtIndexedSubscript:v285];
              v290 = v289;
              if (!v289)
              {
                goto LABEL_312;
              }

              if ((*(v289 + 24) & 1) == 0)
              {
                locationd = 0;
                goto LABEL_313;
              }

LABEL_329:

              if (++v285 > v440)
              {
                goto LABEL_304;
              }
            }

            v290 = 0;
LABEL_312:
            locationd = 1;
LABEL_313:
            fillType = [v280 fillType];
            switch(fillType)
            {
              case 1:
                frLicensePlateStructure3 = [v280 frLicensePlateStructure];
                supportedPlateAlphabetLetters = [frLicensePlateStructure3 supportedPlateAlphabetLetters];
                frLicensePlateStructure4 = [v280 frLicensePlateStructure];
                supportedPlateNumerics = [frLicensePlateStructure4 supportedPlateNumerics];
                v294 = [supportedPlateAlphabetLetters stringByAppendingString:supportedPlateNumerics];

                break;
              case 2:
                frLicensePlateStructure3 = [v280 frLicensePlateStructure];
                supportedPlateAlphabetLetters2 = [frLicensePlateStructure3 supportedPlateAlphabetLetters];
LABEL_318:
                v294 = supportedPlateAlphabetLetters2;
                break;
              case 3:
                frLicensePlateStructure3 = [v280 frLicensePlateStructure];
                supportedPlateAlphabetLetters2 = [frLicensePlateStructure3 supportedPlateNumerics];
                goto LABEL_318;
              default:
                v294 = 0;
LABEL_322:
                if (locationd)
                {
                  v298 = 0;
                }

                else
                {
                  v298 = v290[5];
                }

                v299 = v298;
                v300 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v280, "fillType")}];
                v301 = [v299 objectForKeyedSubscript:v300];

                if (v301)
                {
                  v302 = MEMORY[0x1E695DFA0];
                  mnlpr_componentsSeparatedByGlyph2 = [v301 mnlpr_componentsSeparatedByGlyph];
                  v304 = [v302 orderedSetWithArray:mnlpr_componentsSeparatedByGlyph2];

                  v305 = MEMORY[0x1E695DFB8];
                  mnlpr_componentsSeparatedByGlyph3 = [v294 mnlpr_componentsSeparatedByGlyph];
                  v307 = [v305 orderedSetWithArray:mnlpr_componentsSeparatedByGlyph3];

                  [v304 intersectOrderedSet:v307];
                  array8 = [v304 array];
                  v309 = [array8 componentsJoinedByString:&stru_1F4EB6B70];

                  v294 = v309;
                }

                if (locationd)
                {
                  v310 = 0;
                }

                else
                {
                  v310 = v290[5];
                }

                v311 = v310;
                v312 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v280, "fillType")}];
                [v311 setObject:v294 forKeyedSubscript:v312];

                goto LABEL_329;
            }

            goto LABEL_322;
          }

LABEL_304:

          ++v433;
        }

        while (v433 != v423);
        v313 = [v417 countByEnumeratingWithState:&v461 objects:v569 count:16];
        v423 = v313;
      }

      while (v313);
    }

    v314 = MNGetMNLPRRuleMatcherLog();
    v315 = v314;
    v316 = selfCopy->_signpost;
    if (v316 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v314))
    {
      *v565 = 0;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v315, OS_SIGNPOST_INTERVAL_END, v316, "BuildFillRules", "", v565, 2u);
    }

    *v565 = 0;
    v566 = v565;
    v567 = 0x2020000000;
    v568 = 0;
    v457 = 0;
    v458 = &v457;
    v459 = 0x2020000000;
    v460 = 1;
    v317 = MEMORY[0x1E695DF70];
    if (obj)
    {
      v318 = [(GEOLPRVehicle *)obj->_vehicle count];
    }

    else
    {
      v318 = 0;
    }

    v319 = [v317 arrayWithCapacity:v318];
    v320 = MNGetMNLPRRuleMatcherLog();
    v321 = v320;
    v322 = selfCopy->_signpost;
    if (v322 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v320))
    {
      *v561 = 0;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v321, OS_SIGNPOST_INTERVAL_BEGIN, v322, "ScoreRules", "", v561, 2u);
    }

    v452[0] = MEMORY[0x1E69E9820];
    v452[1] = 3221225472;
    v452[2] = __72__MNLPRRuleMatcher_generateMaskedPlateForWaypoints_date_timeZone_error___block_invoke_224;
    v452[3] = &unk_1E842AFF0;
    v454 = &v592;
    v323 = v319;
    v453 = v323;
    v455 = v565;
    v456 = &v457;
    [(_MNLPRPlate *)obj enumerateCharsUsingBlock:v452];
    v324 = MNGetMNLPRRuleMatcherLog();
    v325 = v324;
    v326 = selfCopy->_signpost;
    if (v326 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v324))
    {
      *v561 = 0;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v325, OS_SIGNPOST_INTERVAL_END, v326, "ScoreRules", "", v561, 2u);
    }

    v327 = *(v592.super_class + 5);
    if (v327)
    {
      if (error)
      {
        *error = v327;
      }

      v328 = MNGetMNLPRRuleMatcherLog();
      v329 = v328;
      v330 = selfCopy->_signpost;
      if (v330 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v328))
      {
        *v561 = 0;
        _os_signpost_emit_with_name_impl(&dword_1D311E000, v329, OS_SIGNPOST_INTERVAL_END, v330, "MaskPlate", "failed", v561, 2u);
      }

      v52 = 0;
    }

    else
    {
      v336 = *(v566 + 3);
      if (obj)
      {
        v337 = [(GEOLPRVehicle *)obj->_vehicle count];
      }

      else
      {
        v337 = 0;
      }

      v338 = v458[3];
      if (v336 == v337 || v338 <= 0x3E7)
      {
        v352 = MEMORY[0x1E69A1598];
        v353 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v338];
        allObjects = [v376 allObjects];
        [v352 captureHardStopWithScore:v353 digits:v323 cities:allObjects];

        if (obj)
        {
          v355 = [(GEOLPRVehicle *)obj->_vehicle count];
        }

        else
        {
          v355 = 0;
        }

        v373 = [v323 componentsJoinedByString:{@", "}];
        _mnLPRWrappedError(error, -105, 0, @"Plate has %d chars and rules only allow us to mask chars {%@} for %llu permutation", v356, v357, v358, v359, v355);

        v360 = MNGetMNLPRRuleMatcherLog();
        v361 = v360;
        v362 = selfCopy->_signpost;
        if (v362 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v360))
        {
          *v561 = 0;
          _os_signpost_emit_with_name_impl(&dword_1D311E000, v361, OS_SIGNPOST_INTERVAL_END, v362, "MaskPlate", "failed", v561, 2u);
        }

        [MEMORY[0x1E69A1598] captureUserAction:2191 target:0 value:@"RulesPreventMasking"];
        v52 = 0;
        goto LABEL_405;
      }

      v339 = MNGetMNLPRRuleMatcherLog();
      v340 = v339;
      v341 = selfCopy->_signpost;
      if (v341 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v339))
      {
        *v561 = 0;
        _os_signpost_emit_with_name_impl(&dword_1D311E000, v340, OS_SIGNPOST_INTERVAL_BEGIN, v341, "ApplyRules", "", v561, 2u);
      }

      v342 = MEMORY[0x1E696AD60];
      licensePlate5 = [(GEOLPRVehicle *)selfCopy->_vehicle licensePlate];
      v344 = [v342 stringWithCapacity:{objc_msgSend(licensePlate5, "length")}];

      v449[0] = MEMORY[0x1E69E9820];
      v449[1] = 3221225472;
      v449[2] = __72__MNLPRRuleMatcher_generateMaskedPlateForWaypoints_date_timeZone_error___block_invoke_232;
      v449[3] = &unk_1E842B018;
      v451 = &v592;
      v329 = v344;
      v450 = v329;
      [(_MNLPRPlate *)obj enumerateCharsUsingBlock:v449];
      v345 = MNGetMNLPRRuleMatcherLog();
      v346 = v345;
      v347 = selfCopy->_signpost;
      if (v347 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v345))
      {
        *v561 = 0;
        _os_signpost_emit_with_name_impl(&dword_1D311E000, v346, OS_SIGNPOST_INTERVAL_END, v347, "ApplyRules", "", v561, 2u);
      }

      v348 = *(v592.super_class + 5);
      if (v348)
      {
        if (error)
        {
          *error = v348;
        }

        v349 = MNGetMNLPRRuleMatcherLog();
        v350 = v349;
        v351 = selfCopy->_signpost;
        if (v351 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v349))
        {
          *v561 = 0;
          _os_signpost_emit_with_name_impl(&dword_1D311E000, v350, OS_SIGNPOST_INTERVAL_END, v351, "MaskPlate", "failed", v561, 2u);
        }

        v52 = 0;
      }

      else
      {
        v363 = MNGetMNLPRRuleMatcherLog();
        v364 = v363;
        v365 = selfCopy->_signpost;
        if (v365 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v363))
        {
          *v561 = 0;
          _os_signpost_emit_with_name_impl(&dword_1D311E000, v364, OS_SIGNPOST_INTERVAL_END, v365, "MaskPlate", "success", v561, 2u);
        }

        v366 = MNGetMNLPRRuleMatcherLog();
        if (os_log_type_enabled(v366, OS_LOG_TYPE_DEBUG))
        {
          licensePlate6 = [(GEOLPRVehicle *)selfCopy->_vehicle licensePlate];
          *v561 = 138478083;
          v562 = licensePlate6;
          v563 = 2113;
          v564 = v329;
          _os_log_impl(&dword_1D311E000, v366, OS_LOG_TYPE_DEBUG, "Masked plate from %{private}@ -> %{private}@", v561, 0x16u);
        }

        v368 = MNGetMNLPRRuleMatcherLog();
        if (os_log_type_enabled(v368, OS_LOG_TYPE_DEBUG))
        {
          v369 = *p_usedRegions;
          *v561 = 138477827;
          v562 = v369;
          _os_log_impl(&dword_1D311E000, v368, OS_LOG_TYPE_DEBUG, "Used regions: %{private}@", v561, 0xCu);
        }

        v370 = MNGetMNLPRRuleMatcherLog();
        if (os_log_type_enabled(v370, OS_LOG_TYPE_DEBUG))
        {
          usedRegionETAs = selfCopy->_usedRegionETAs;
          *v561 = 138477827;
          v562 = usedRegionETAs;
          _os_log_impl(&dword_1D311E000, v370, OS_LOG_TYPE_DEBUG, "Used region ETAs: %{private}@", v561, 0xCu);
        }

        v52 = [v329 copy];
      }
    }

LABEL_405:
    _Block_object_dispose(&v457, 8);
    _Block_object_dispose(v565, 8);
    goto LABEL_363;
  }

  licensePlate7 = [(GEOLPRVehicle *)selfCopy->_vehicle licensePlate];
  _mnLPRWrappedError(error, -101, 0, @"Empty/unsplittable plate %@", v54, v55, v56, v57, licensePlate7);

  [MEMORY[0x1E69A1598] captureUserAction:2191 target:0 value:@"UnableToSplitString"];
  v52 = 0;
LABEL_366:

LABEL_367:

  return v52;
}

id __72__MNLPRRuleMatcher_generateMaskedPlateForWaypoints_date_timeZone_error___block_invoke(uint64_t a1, void *a2)
{
  v51[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 56) >= 1.0)
  {
    v5 = MNGetMNLPRRuleMatcherLog();
    v6 = v5;
    v7 = *(*(a1 + 40) + 24);
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v7, "CalculateRoughETAs", "", buf, 2u);
    }

    v8 = [v3 mapRegion];
    v9 = [v8 mapRegion];

    v10 = [MEMORY[0x1E695DFA8] set];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v11 = *(a1 + 48);
    v12 = [v11 countByEnumeratingWithState:&v44 objects:v50 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v45;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v45 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v44 + 1) + 8 * i) coordinate];
          v17 = v16;
          v19 = v18;
          v20 = [v9 containsCoordinate:?];
          if (v20)
          {
            v53.var0 = *(a1 + 64);
            v53.var1 = *(a1 + 72);
            v53.var2 = v17;
            v24 = v19;
            v25 = [*(a1 + 32) dateByAddingTimeInterval:{GEOCalculateDistance(v20, v21, v53, *(&v22 - 1)) / *(a1 + 56)}];
            [v10 addObject:v25];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v44 objects:v50 count:16];
      }

      while (v13);
    }

    v26 = [v9 intersectionsOnPolyline:*(a1 + 48)];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v27 = [v26 countByEnumeratingWithState:&v40 objects:v49 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v41;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v41 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = [*(*(&v40 + 1) + 8 * j) coordinate];
          v54.var2 = v32;
          v55.var0 = v33;
          v54.var0 = *(a1 + 64);
          v54.var1 = *(a1 + 72);
          v35 = [*(a1 + 32) dateByAddingTimeInterval:{GEOCalculateDistance(v31, v34, v54, v55) / *(a1 + 56)}];
          [v10 addObject:v35];
        }

        v28 = [v26 countByEnumeratingWithState:&v40 objects:v49 count:16];
      }

      while (v28);
    }

    v36 = MNGetMNLPRRuleMatcherLog();
    v37 = v36;
    v38 = *(*(a1 + 40) + 24);
    if (v38 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v37, OS_SIGNPOST_INTERVAL_END, v38, "CalculateRoughETAs", "success", buf, 2u);
    }

    v4 = [v10 allObjects];
  }

  else
  {
    v51[0] = *(a1 + 32);
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:1];
  }

  return v4;
}

id __72__MNLPRRuleMatcher_generateMaskedPlateForWaypoints_date_timeZone_error___block_invoke_196(void *a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1[6] + 8) + 40) objectForKeyedSubscript:v3];
  if (!v4)
  {
    v5 = *(*(a1[7] + 8) + 40);
    if (!v5)
    {
      v6 = objc_alloc(MEMORY[0x1E695DEE8]);
      v7 = [v6 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
      v8 = *(a1[7] + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      v10 = a1[4];
      if (v10)
      {
        v11 = [*(*(a1[7] + 8) + 40) timeZone];
        v12 = [v10 isEqualToTimeZone:v11];

        if ((v12 & 1) == 0)
        {
          [*(*(a1[7] + 8) + 40) setTimeZone:a1[4]];
        }
      }

      v13 = [*(*(a1[7] + 8) + 40) timeZone];
      v14 = a1[5];
      v15 = *(v14 + 48);
      *(v14 + 48) = v13;

      v5 = *(*(a1[7] + 8) + 40);
    }

    v4 = [v5 components:528 fromDate:v3];
    v16 = *(*(a1[6] + 8) + 40);
    if (!v16)
    {
      v17 = [MEMORY[0x1E695DF90] dictionary];
      v18 = *(a1[6] + 8);
      v19 = *(v18 + 40);
      *(v18 + 40) = v17;

      v16 = *(*(a1[6] + 8) + 40);
    }

    [v16 setObject:v4 forKeyedSubscript:v3];
  }

  v20 = v4;

  return v20;
}

void __72__MNLPRRuleMatcher_generateMaskedPlateForWaypoints_date_timeZone_error___block_invoke_199(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E696AD50] indexSet];
  v5 = [*(a1 + 32) objectForKey:v3];
  if (![v5 count])
  {
    v6 = MNGetMNLPRRuleMatcherLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v7 = *(a1 + 40);
      *buf = 138478083;
      v24 = v3;
      v25 = 2114;
      v26 = v7;
      _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_FAULT, "Did not find a rough ETA for rule %{private}@ using %{public}@ instead", buf, 0x16u);
    }

    v22 = *(a1 + 40);
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];

    v5 = v8;
  }

  v9 = [v3 valueMappings];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __72__MNLPRRuleMatcher_generateMaskedPlateForWaypoints_date_timeZone_error___block_invoke_200;
  v18 = &unk_1E842AFA0;
  v10 = v5;
  v19 = v10;
  v21 = *(a1 + 56);
  v11 = v4;
  v20 = v11;
  [v9 enumerateObjectsUsingBlock:&v15];

  if ([v11 count])
  {
    v12 = [v3 valueMappingsCount];
    if (v12 > [v11 count])
    {
      v13 = [v3 copy];
      v14 = [v13 valueMappings];
      [v14 removeObjectsAtIndexes:v11];

      [*(a1 + 48) addObject:v13];
    }
  }

  else
  {
    [*(a1 + 48) addObject:v3];
  }
}

void __72__MNLPRRuleMatcher_generateMaskedPlateForWaypoints_date_timeZone_error___block_invoke_224(void *a1, void *a2, uint64_t a3, BOOL *a4)
{
  v6 = *(a1[5] + 8);
  obj = *(v6 + 40);
  v7 = [(_MNLPRPlateCharacter *)a2 validReplacementCount:?];
  objc_storeStrong((v6 + 40), obj);
  v8 = a1[4];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
  [v8 addObject:v9];

  *a4 = *(*(a1[5] + 8) + 40) != 0;
  if (v7 > 1)
  {
    v10 = v7;
  }

  else
  {
    ++*(*(a1[6] + 8) + 24);
    v10 = 1;
  }

  *(*(a1[7] + 8) + 24) *= v10;
}

void __72__MNLPRRuleMatcher_generateMaskedPlateForWaypoints_date_timeZone_error___block_invoke_232(uint64_t a1, uint64_t a2, uint64_t a3, BOOL *a4)
{
  v7 = *(*(a1 + 40) + 8);
  v10 = *(v7 + 40);
  v9 = (v7 + 40);
  v8 = v10;
  obj = v10;
  if (a2)
  {
    v11 = [(_MNLPRPlateCharacter *)a2 _validReplacements:?];
    v12 = [v11 count];
    if (v12)
    {
      if (v12 == 1)
      {
        [v11 firstObject];
      }

      else
      {
        [v11 objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(v11, "count"))}];
      }
      v13 = ;
    }

    else
    {
      v13 = 0;
    }

    v8 = obj;
  }

  else
  {
    v13 = 0;
  }

  objc_storeStrong(v9, v8);
  v14 = *(a1 + 40);
  if (v13 && !*(*(v14 + 8) + 40))
  {
    [*(a1 + 32) appendString:v13];
    v14 = *(a1 + 40);
  }

  *a4 = *(*(v14 + 8) + 40) != 0;
}

void __72__MNLPRRuleMatcher_generateMaskedPlateForWaypoints_date_timeZone_error___block_invoke_200(uint64_t a1, void *a2, uint64_t a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v30 = a2;
  if (![v30 timeConditionsCount])
  {
    goto LABEL_36;
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v5 = *(a1 + 32);
  v31 = [v5 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (!v31)
  {

LABEL_35:
    [*(a1 + 40) addIndex:{a3, v26}];
    goto LABEL_36;
  }

  v26 = a3;
  obj = v5;
  v28 = 0;
  v29 = *v37;
  do
  {
    for (i = 0; i != v31; ++i)
    {
      if (*v37 != v29)
      {
        objc_enumerationMutation(obj);
      }

      v7 = (*(*(a1 + 48) + 16))();
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v8 = [v30 timeConditions];
      v9 = [v8 countByEnumeratingWithState:&v32 objects:v40 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v33;
        while (2)
        {
          for (j = 0; j != v10; ++j)
          {
            if (*v33 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v32 + 1) + 8 * j);
            if ([v13 dayOfWeeksCount] || objc_msgSend(v13, "dayOfMonthsCount"))
            {
              if (![v13 dayOfWeeksCount])
              {
                goto LABEL_39;
              }

              v14 = [v7 weekday];
              v15 = [v13 dayOfWeeks];
              v16 = [v13 dayOfWeeksCount];
              if (v16)
              {
                v17 = 1;
                do
                {
                  v19 = *v15++;
                  v18 = v19;
                  if (v17 >= v16)
                  {
                    break;
                  }

                  ++v17;
                }

                while (v18 != v14);
                if (v18 == v14)
                {
LABEL_39:
                  if (![v13 dayOfMonthsCount])
                  {
                    goto LABEL_29;
                  }

                  v20 = [v7 day];
                  v21 = [v13 dayOfMonths];
                  v22 = [v13 dayOfMonthsCount];
                  if (v22)
                  {
                    v23 = 1;
                    do
                    {
                      v25 = *v21++;
                      v24 = v25;
                      if (v23 >= v22)
                      {
                        break;
                      }

                      ++v23;
                    }

                    while (v24 != v20);
                    if (v24 == v20)
                    {
LABEL_29:
                      v28 = 1;
                      goto LABEL_30;
                    }
                  }
                }
              }
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v32 objects:v40 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

LABEL_30:
    }

    v31 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  }

  while (v31);

  a3 = v26;
  if ((v28 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_36:
}

- (id)initForVehicle:(id)vehicle withRules:(id)rules
{
  vehicleCopy = vehicle;
  rulesCopy = rules;
  v14.receiver = self;
  v14.super_class = MNLPRRuleMatcher;
  v8 = [(MNLPRRuleMatcher *)&v14 self];

  if (v8)
  {
    v9 = [vehicleCopy copy];
    v10 = v8[1];
    v8[1] = v9;

    v11 = [rulesCopy copy];
    v12 = v8[2];
    v8[2] = v11;
  }

  return v8;
}

@end