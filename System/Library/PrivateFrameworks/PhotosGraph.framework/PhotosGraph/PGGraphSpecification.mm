@interface PGGraphSpecification
- (Class)edgeClassWithLabel:(id)label domain:(unsigned __int16)domain;
- (Class)nodeClassWithLabel:(id)label domain:(unsigned __int16)domain;
- (PGGraphSpecification)init;
- (id)edgeClassByDomain;
- (id)edgeClassByDomainAndLabel;
- (id)nodeClassByDomain;
- (id)nodeClassByDomainAndLabel;
- (void)enumerateEdgeClassesUsingBlock:(id)block;
- (void)enumerateNodeClassesUsingBlock:(id)block;
@end

@implementation PGGraphSpecification

- (void)enumerateEdgeClassesUsingBlock:(id)block
{
  blockCopy = block;
  edgeClassByDomainAndLabel = [(PGGraphSpecification *)self edgeClassByDomainAndLabel];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__PGGraphSpecification_enumerateEdgeClassesUsingBlock___block_invoke;
  v11[3] = &unk_27887FFE0;
  v6 = blockCopy;
  v12 = v6;
  [edgeClassByDomainAndLabel enumerateKeysAndObjectsUsingBlock:v11];

  edgeClassByDomain = [(PGGraphSpecification *)self edgeClassByDomain];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__PGGraphSpecification_enumerateEdgeClassesUsingBlock___block_invoke_3;
  v9[3] = &unk_278880008;
  v10 = v6;
  v8 = v6;
  [edgeClassByDomain enumerateKeysAndObjectsUsingBlock:v9];
}

void __55__PGGraphSpecification_enumerateEdgeClassesUsingBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__PGGraphSpecification_enumerateEdgeClassesUsingBlock___block_invoke_2;
  v8[3] = &unk_27887FFB8;
  v6 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v7 = v5;
  [a3 enumerateKeysAndObjectsUsingBlock:v8];
}

uint64_t __55__PGGraphSpecification_enumerateEdgeClassesUsingBlock___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [a2 unsignedIntegerValue];
  v6 = *(v4 + 16);

  return v6(v4, 0, v5, a3);
}

void __55__PGGraphSpecification_enumerateEdgeClassesUsingBlock___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = a2;
  (*(v4 + 16))(v4, v6, [v5 unsignedIntegerValue], a3);
}

- (Class)edgeClassWithLabel:(id)label domain:(unsigned __int16)domain
{
  domainCopy = domain;
  labelCopy = label;
  if (!labelCopy || (-[PGGraphSpecification edgeClassByDomainAndLabel](self, "edgeClassByDomainAndLabel"), v7 = objc_claimAutoreleasedReturnValue(), [MEMORY[0x277CCABB0] numberWithUnsignedShort:domainCopy], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "objectForKeyedSubscript:", v8), v9 = objc_claimAutoreleasedReturnValue(), defaultEdgeClass = objc_msgSend(v9, "objectForKeyedSubscript:", labelCopy), v9, v8, v7, !defaultEdgeClass))
  {
    edgeClassByDomain = [(PGGraphSpecification *)self edgeClassByDomain];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:domainCopy];
    defaultEdgeClass = [edgeClassByDomain objectForKeyedSubscript:v12];

    if (!defaultEdgeClass)
    {
      defaultEdgeClass = [(MAGraphSpecification *)self defaultEdgeClass];
    }
  }

  v13 = defaultEdgeClass;

  return defaultEdgeClass;
}

- (id)edgeClassByDomain
{
  if (edgeClassByDomain_onceToken != -1)
  {
    dispatch_once(&edgeClassByDomain_onceToken, &__block_literal_global_352);
  }

  v3 = edgeClassByDomain_edgeClassByDomain;

  return v3;
}

void __41__PGGraphSpecification_edgeClassByDomain__block_invoke()
{
  v0 = edgeClassByDomain_edgeClassByDomain;
  edgeClassByDomain_edgeClassByDomain = MEMORY[0x277CBEC10];
}

- (id)edgeClassByDomainAndLabel
{
  if (edgeClassByDomainAndLabel_onceToken != -1)
  {
    dispatch_once(&edgeClassByDomainAndLabel_onceToken, &__block_literal_global_284);
  }

  v3 = edgeClassByDomainAndLabel_edgeClassByDomainAndLabel;

  return v3;
}

void __49__PGGraphSpecification_edgeClassByDomainAndLabel__block_invoke()
{
  v131[32] = *MEMORY[0x277D85DE8];
  v65 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:501];
  v130[0] = v65;
  v128 = @"POI";
  v129 = objc_opt_class();
  v64 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v129 forKeys:&v128 count:1];
  v131[0] = v64;
  v63 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:502];
  v130[1] = v63;
  v126 = @"ROI";
  v127 = objc_opt_class();
  v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v127 forKeys:&v126 count:1];
  v131[1] = v62;
  v61 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:700];
  v130[2] = v61;
  v124[0] = @"MEANING";
  v125[0] = objc_opt_class();
  v124[1] = @"SUBMEANING_OF";
  v125[1] = objc_opt_class();
  v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v125 forKeys:v124 count:2];
  v131[2] = v60;
  v59 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:702];
  v130[3] = v59;
  v122 = @"MEANING";
  v123 = objc_opt_class();
  v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v123 forKeys:&v122 count:1];
  v131[3] = v58;
  v57 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:701];
  v130[4] = v57;
  v120 = @"PERSON_ACTIVITY_MEANING";
  v121 = objc_opt_class();
  v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v121 forKeys:&v120 count:1];
  v131[4] = v56;
  v55 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:101];
  v130[5] = v55;
  v118 = @"NEXT";
  v119 = objc_opt_class();
  v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v119 forKeys:&v118 count:1];
  v131[5] = v54;
  v53 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:102];
  v130[6] = v53;
  v116[0] = @"CONTAINS";
  v117[0] = objc_opt_class();
  v116[1] = @"GROUP_CONTAINS";
  v117[1] = objc_opt_class();
  v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v117 forKeys:v116 count:2];
  v131[6] = v52;
  v51 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:103];
  v130[7] = v51;
  v114 = @"HAS_TYPE";
  v115 = objc_opt_class();
  v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v115 forKeys:&v114 count:1];
  v131[7] = v50;
  v49 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:300];
  v130[8] = v49;
  v112[0] = @"PRESENT";
  v113[0] = objc_opt_class();
  v112[1] = @"CPRESENT";
  v113[1] = objc_opt_class();
  v112[2] = @"PARTNER";
  v113[2] = objc_opt_class();
  v112[3] = @"FATHER";
  v113[3] = objc_opt_class();
  v112[4] = @"MOTHER";
  v113[4] = objc_opt_class();
  v112[5] = @"BROTHER";
  v113[5] = objc_opt_class();
  v112[6] = @"SISTER";
  v113[6] = objc_opt_class();
  v112[7] = @"DAUGHTER";
  v113[7] = objc_opt_class();
  v112[8] = @"SON";
  v113[8] = objc_opt_class();
  v112[9] = @"PARENT";
  v113[9] = objc_opt_class();
  v112[10] = @"FAMILY";
  v113[10] = objc_opt_class();
  v112[11] = @"FAMILY_SOCIALGROUP";
  v113[11] = objc_opt_class();
  v112[12] = @"CHILD";
  v113[12] = objc_opt_class();
  v112[13] = @"FRIEND";
  v113[13] = objc_opt_class();
  v112[14] = @"COWORKER";
  v113[14] = objc_opt_class();
  v112[15] = @"COWORKER_SOCIALGROUP";
  v113[15] = objc_opt_class();
  v112[16] = @"ACQUAINTANCE";
  v113[16] = objc_opt_class();
  v112[17] = @"VIP";
  v113[17] = objc_opt_class();
  v112[18] = @"AUTHOR";
  v113[18] = objc_opt_class();
  v112[19] = @"IN_PROXIMITY";
  v113[19] = objc_opt_class();
  v112[20] = @"IS_AROUND";
  v113[20] = objc_opt_class();
  v112[21] = @"INFERRED_TO";
  v113[21] = objc_opt_class();
  v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v113 forKeys:v112 count:22];
  v131[8] = v48;
  v47 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:306];
  v130[9] = v47;
  v110[0] = @"PARTNER";
  v111[0] = objc_opt_class();
  v110[1] = @"FATHER";
  v111[1] = objc_opt_class();
  v110[2] = @"MOTHER";
  v111[2] = objc_opt_class();
  v110[3] = @"BROTHER";
  v111[3] = objc_opt_class();
  v110[4] = @"SISTER";
  v111[4] = objc_opt_class();
  v110[5] = @"DAUGHTER";
  v111[5] = objc_opt_class();
  v110[6] = @"SON";
  v111[6] = objc_opt_class();
  v110[7] = @"PARENT";
  v111[7] = objc_opt_class();
  v110[8] = @"FAMILY";
  v111[8] = objc_opt_class();
  v110[9] = @"FAMILY_SOCIALGROUP";
  v111[9] = objc_opt_class();
  v110[10] = @"CHILD";
  v111[10] = objc_opt_class();
  v110[11] = @"FRIEND";
  v111[11] = objc_opt_class();
  v110[12] = @"COWORKER";
  v111[12] = objc_opt_class();
  v110[13] = @"COWORKER_SOCIALGROUP";
  v111[13] = objc_opt_class();
  v110[14] = @"ACQUAINTANCE";
  v111[14] = objc_opt_class();
  v110[15] = @"VIP";
  v111[15] = objc_opt_class();
  v110[16] = @"HOUSEHOLD_MEMBER";
  v111[16] = objc_opt_class();
  v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v111 forKeys:v110 count:17];
  v131[9] = v46;
  v45 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:301];
  v130[10] = v45;
  v108[0] = @"BIRTHDAY";
  v109[0] = objc_opt_class();
  v108[1] = @"ANNIVERSARY";
  v109[1] = objc_opt_class();
  v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v109 forKeys:v108 count:2];
  v131[10] = v44;
  v43 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:302];
  v130[11] = v43;
  v106[0] = @"SOCIALGROUP";
  v107[0] = objc_opt_class();
  v106[1] = @"BELONGSTO";
  v107[1] = objc_opt_class();
  v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v107 forKeys:v106 count:2];
  v131[11] = v42;
  v41 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:304];
  v130[12] = v41;
  v104[0] = @"PET_IS_PRESENT";
  v105[0] = objc_opt_class();
  v104[1] = @"IS_OWNER_OF";
  v105[1] = objc_opt_class();
  v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v105 forKeys:v104 count:2];
  v131[12] = v40;
  v39 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:305];
  v130[13] = v39;
  v102 = @"RELATIONSHIP_TAG";
  v103 = objc_opt_class();
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v103 forKeys:&v102 count:1];
  v131[13] = v38;
  v37 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:600];
  v130[14] = v37;
  v100 = @"SCENE";
  v101 = objc_opt_class();
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v101 forKeys:&v100 count:1];
  v131[14] = v36;
  v35 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:603];
  v130[15] = v35;
  v98 = @"SCENE";
  v99 = objc_opt_class();
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v99 forKeys:&v98 count:1];
  v131[15] = v34;
  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:200];
  v130[16] = v33;
  v96[0] = @"ADDRESS";
  v97[0] = objc_opt_class();
  v96[1] = @"REMOTE_ADDRESS";
  v97[1] = objc_opt_class();
  v96[2] = @"NUMBER";
  v97[2] = objc_opt_class();
  v96[3] = @"STREET";
  v97[3] = objc_opt_class();
  v96[4] = @"DISTRICT";
  v97[4] = objc_opt_class();
  v96[5] = @"CITY";
  v97[5] = objc_opt_class();
  v96[6] = @"COUNTY";
  v97[6] = objc_opt_class();
  v96[7] = @"STATE";
  v97[7] = objc_opt_class();
  v96[8] = @"COUNTRY";
  v97[8] = objc_opt_class();
  v96[9] = @"SUBCONTINENT";
  v97[9] = objc_opt_class();
  v96[10] = @"CONTINENT";
  v97[10] = objc_opt_class();
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v97 forKeys:v96 count:11];
  v131[16] = v32;
  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:201];
  v130[17] = v31;
  v94 = @"AREA";
  v95 = objc_opt_class();
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
  v131[17] = v30;
  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:202];
  v130[18] = v29;
  v92[0] = @"IS_OWNED_BY";
  v93[0] = objc_opt_class();
  v92[1] = @"IS_HOME_WORK";
  v93[1] = objc_opt_class();
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v93 forKeys:v92 count:2];
  v131[18] = v28;
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:203];
  v130[19] = v27;
  v90 = @"MOBILITY";
  v91 = objc_opt_class();
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
  v131[19] = v26;
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:204];
  v130[20] = v25;
  v88[0] = @"AT";
  v89[0] = objc_opt_class();
  v88[1] = @"IN";
  v89[1] = objc_opt_class();
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v89 forKeys:v88 count:2];
  v131[20] = v24;
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:205];
  v130[21] = v23;
  v86 = @"POPULAR_LANGUAGE";
  v87 = objc_opt_class();
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
  v131[21] = v22;
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:503];
  v130[22] = v21;
  v84 = @"BUSINESS";
  v85 = objc_opt_class();
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
  v131[22] = v20;
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:303];
  v130[23] = v19;
  v82 = @"PEOPLE_CONTACT_SUGGESTION";
  v83 = objc_opt_class();
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
  v131[23] = v18;
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:400];
  v130[24] = v17;
  v80[0] = @"DAY";
  v81[0] = objc_opt_class();
  v80[1] = @"MONTH";
  v81[1] = objc_opt_class();
  v80[2] = @"MONTH_DAY";
  v81[2] = objc_opt_class();
  v80[3] = @"YEAR";
  v81[3] = objc_opt_class();
  v80[4] = @"WEEKMONTH";
  v81[4] = objc_opt_class();
  v80[5] = @"WEEKYEAR";
  v81[5] = objc_opt_class();
  v80[6] = @"SEASON";
  v81[6] = objc_opt_class();
  v80[7] = @"DATE";
  v81[7] = objc_opt_class();
  v80[8] = @"PARTOFWEEK";
  v81[8] = objc_opt_class();
  v80[9] = @"DAYOFWEEK";
  v81[9] = objc_opt_class();
  v80[10] = @"PARTOFDAY";
  v81[10] = objc_opt_class();
  v80[11] = @"BDAY_MONTH_DAY";
  v81[11] = objc_opt_class();
  v80[12] = @"ANNIVERSARY_MONTH_DAY";
  v81[12] = objc_opt_class();
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v81 forKeys:v80 count:13];
  v131[24] = v16;
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:401];
  v130[25] = v15;
  v78[0] = @"HOLIDAY";
  v79[0] = objc_opt_class();
  v78[1] = @"CELEBRATING";
  v79[1] = objc_opt_class();
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:v78 count:2];
  v131[25] = v14;
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:900];
  v130[26] = v13;
  v76[0] = @"PUBLIC_EVENT";
  v77[0] = objc_opt_class();
  v76[1] = @"PERFORMER";
  v77[1] = objc_opt_class();
  v76[2] = @"PUBLIC_EVENT_BUSINESS";
  v77[2] = objc_opt_class();
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v77 forKeys:v76 count:3];
  v131[26] = v12;
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:901];
  v130[27] = v11;
  v74 = @"CATEGORY";
  v75 = objc_opt_class();
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
  v131[27] = v0;
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:902];
  v130[28] = v1;
  v72 = @"LOCALIZED_SUBCATEGORY";
  v73 = objc_opt_class();
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
  v131[28] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:504];
  v130[29] = v3;
  v70 = @"BUSINESSCATEGORY";
  v71 = objc_opt_class();
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
  v131[29] = v4;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:1100];
  v130[30] = v5;
  v68[0] = @"CONTAINS_ASSETS_FROM";
  v68[1] = @"MEMORY_FEATURES";
  v69[0] = objc_opt_class();
  v69[1] = objc_opt_class();
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:v68 count:2];
  v131[30] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:1200];
  v130[31] = v7;
  v66 = @"MOMENT_FEATURES";
  v67 = objc_opt_class();
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
  v131[31] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v131 forKeys:v130 count:32];
  v10 = edgeClassByDomainAndLabel_edgeClassByDomainAndLabel;
  edgeClassByDomainAndLabel_edgeClassByDomainAndLabel = v9;
}

- (void)enumerateNodeClassesUsingBlock:(id)block
{
  blockCopy = block;
  nodeClassByDomainAndLabel = [(PGGraphSpecification *)self nodeClassByDomainAndLabel];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__PGGraphSpecification_enumerateNodeClassesUsingBlock___block_invoke;
  v11[3] = &unk_27887FFE0;
  v6 = blockCopy;
  v12 = v6;
  [nodeClassByDomainAndLabel enumerateKeysAndObjectsUsingBlock:v11];

  nodeClassByDomain = [(PGGraphSpecification *)self nodeClassByDomain];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__PGGraphSpecification_enumerateNodeClassesUsingBlock___block_invoke_3;
  v9[3] = &unk_278880008;
  v10 = v6;
  v8 = v6;
  [nodeClassByDomain enumerateKeysAndObjectsUsingBlock:v9];
}

void __55__PGGraphSpecification_enumerateNodeClassesUsingBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__PGGraphSpecification_enumerateNodeClassesUsingBlock___block_invoke_2;
  v8[3] = &unk_27887FFB8;
  v6 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v7 = v5;
  [a3 enumerateKeysAndObjectsUsingBlock:v8];
}

uint64_t __55__PGGraphSpecification_enumerateNodeClassesUsingBlock___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [a2 unsignedIntegerValue];
  v6 = *(v4 + 16);

  return v6(v4, 0, v5, a3);
}

void __55__PGGraphSpecification_enumerateNodeClassesUsingBlock___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = a2;
  (*(v4 + 16))(v4, v6, [v5 unsignedIntegerValue], a3);
}

- (Class)nodeClassWithLabel:(id)label domain:(unsigned __int16)domain
{
  domainCopy = domain;
  labelCopy = label;
  if (!labelCopy || (-[PGGraphSpecification nodeClassByDomainAndLabel](self, "nodeClassByDomainAndLabel"), v7 = objc_claimAutoreleasedReturnValue(), [MEMORY[0x277CCABB0] numberWithUnsignedShort:domainCopy], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "objectForKeyedSubscript:", v8), v9 = objc_claimAutoreleasedReturnValue(), defaultNodeClass = objc_msgSend(v9, "objectForKeyedSubscript:", labelCopy), v9, v8, v7, !defaultNodeClass))
  {
    nodeClassByDomain = [(PGGraphSpecification *)self nodeClassByDomain];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:domainCopy];
    defaultNodeClass = [nodeClassByDomain objectForKeyedSubscript:v12];

    if (!defaultNodeClass)
    {
      defaultNodeClass = [(MAGraphSpecification *)self defaultNodeClass];
    }
  }

  v13 = defaultNodeClass;

  return defaultNodeClass;
}

- (id)nodeClassByDomain
{
  if (nodeClassByDomain_onceToken != -1)
  {
    dispatch_once(&nodeClassByDomain_onceToken, &__block_literal_global_262);
  }

  v3 = nodeClassByDomain_nodeClassByDomain;

  return v3;
}

void __41__PGGraphSpecification_nodeClassByDomain__block_invoke()
{
  v20[17] = *MEMORY[0x277D85DE8];
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:103];
  v19[0] = v18;
  v20[0] = objc_opt_class();
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:203];
  v19[1] = v17;
  v20[1] = objc_opt_class();
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:700];
  v19[2] = v16;
  v20[2] = objc_opt_class();
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:701];
  v19[3] = v15;
  v20[3] = objc_opt_class();
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:305];
  v19[4] = v14;
  v20[4] = objc_opt_class();
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:600];
  v19[5] = v13;
  v20[5] = objc_opt_class();
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:601];
  v19[6] = v12;
  v20[6] = objc_opt_class();
  v0 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:603];
  v19[7] = v0;
  v20[7] = objc_opt_class();
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:200];
  v19[8] = v1;
  v20[8] = objc_opt_class();
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:901];
  v19[9] = v2;
  v20[9] = objc_opt_class();
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:902];
  v19[10] = v3;
  v20[10] = objc_opt_class();
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:504];
  v19[11] = v4;
  v20[11] = objc_opt_class();
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:501];
  v19[12] = v5;
  v20[12] = objc_opt_class();
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:502];
  v19[13] = v6;
  v20[13] = objc_opt_class();
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:202];
  v19[14] = v7;
  v20[14] = objc_opt_class();
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:1100];
  v19[15] = v8;
  v20[15] = objc_opt_class();
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:1201];
  v19[16] = v9;
  v20[16] = objc_opt_class();
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:17];
  v11 = nodeClassByDomain_nodeClassByDomain;
  nodeClassByDomain_nodeClassByDomain = v10;
}

- (id)nodeClassByDomainAndLabel
{
  if (nodeClassByDomainAndLabel_onceToken != -1)
  {
    dispatch_once(&nodeClassByDomainAndLabel_onceToken, &__block_literal_global_10912);
  }

  v3 = nodeClassByDomainAndLabel_nodeClassByDomainAndLabel;

  return v3;
}

void __49__PGGraphSpecification_nodeClassByDomainAndLabel__block_invoke()
{
  v67[16] = *MEMORY[0x277D85DE8];
  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:21];
  v66[0] = v33;
  v64 = @"Info";
  v65 = objc_opt_class();
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
  v67[0] = v32;
  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:100];
  v66[1] = v31;
  v62 = @"Moment";
  v63 = objc_opt_class();
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
  v67[1] = v30;
  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:102];
  v66[2] = v29;
  v60[0] = @"Highlight";
  v61[0] = objc_opt_class();
  v60[1] = @"HighlightGroup";
  v61[1] = objc_opt_class();
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:v60 count:2];
  v67[2] = v28;
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:400];
  v66[3] = v27;
  v58[0] = @"Date";
  v59[0] = objc_opt_class();
  v58[1] = @"DayOfWeek";
  v59[1] = objc_opt_class();
  v58[2] = @"Day";
  v59[2] = objc_opt_class();
  v58[3] = @"Month";
  v59[3] = objc_opt_class();
  v58[4] = @"MonthDay";
  v59[4] = objc_opt_class();
  v58[5] = @"Year";
  v59[5] = objc_opt_class();
  v58[6] = @"WeekMonth";
  v59[6] = objc_opt_class();
  v58[7] = @"WeekYear";
  v59[7] = objc_opt_class();
  v58[8] = @"PartOfDay";
  v59[8] = objc_opt_class();
  v58[9] = @"Season";
  v59[9] = objc_opt_class();
  v58[10] = @"Weekend";
  v59[10] = objc_opt_class();
  v58[11] = @"Weekday";
  v59[11] = objc_opt_class();
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:12];
  v67[3] = v26;
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:401];
  v66[4] = v25;
  v56 = @"Holiday";
  v57 = objc_opt_class();
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
  v67[4] = v24;
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:402];
  v66[5] = v23;
  v54 = @"OverTheYears";
  v55 = objc_opt_class();
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
  v67[5] = v22;
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:200];
  v66[6] = v21;
  v52[0] = @"Address";
  v53[0] = objc_opt_class();
  v52[1] = @"Number";
  v53[1] = objc_opt_class();
  v52[2] = @"Street";
  v53[2] = objc_opt_class();
  v52[3] = @"District";
  v53[3] = objc_opt_class();
  v52[4] = @"City";
  v53[4] = objc_opt_class();
  v52[5] = @"County";
  v53[5] = objc_opt_class();
  v52[6] = @"State";
  v53[6] = objc_opt_class();
  v52[7] = @"Country";
  v53[7] = objc_opt_class();
  v52[8] = @"Subcontinent";
  v53[8] = objc_opt_class();
  v52[9] = @"Continent";
  v53[9] = objc_opt_class();
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:10];
  v67[6] = v20;
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:201];
  v66[7] = v19;
  v50 = @"Area";
  v51 = objc_opt_class();
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
  v67[7] = v18;
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:204];
  v66[8] = v17;
  v48 = @"FrequentLocation";
  v49 = objc_opt_class();
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
  v67[8] = v16;
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:205];
  v66[9] = v15;
  v46 = @"Language";
  v47 = objc_opt_class();
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
  v67[9] = v14;
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:503];
  v66[10] = v13;
  v44 = @"Business";
  v45 = objc_opt_class();
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
  v67[10] = v12;
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:300];
  v66[11] = v11;
  v42[0] = @"People";
  v42[1] = @"Me";
  v43[0] = objc_opt_class();
  v43[1] = objc_opt_class();
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:2];
  v67[11] = v0;
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:303];
  v66[12] = v1;
  v40 = @"Contact";
  v41 = objc_opt_class();
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
  v67[12] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:302];
  v66[13] = v3;
  v38 = @"SocialGroup";
  v39 = objc_opt_class();
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
  v67[13] = v4;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:900];
  v66[14] = v5;
  v36[0] = @"PublicEvent";
  v36[1] = @"Performer";
  v37[0] = objc_opt_class();
  v37[1] = objc_opt_class();
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];
  v67[14] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:304];
  v66[15] = v7;
  v34 = @"Pet";
  v35 = objc_opt_class();
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
  v67[15] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:v66 count:16];
  v10 = nodeClassByDomainAndLabel_nodeClassByDomainAndLabel;
  nodeClassByDomainAndLabel_nodeClassByDomainAndLabel = v9;
}

- (PGGraphSpecification)init
{
  v4.receiver = self;
  v4.super_class = PGGraphSpecification;
  v2 = [(MAGraphSpecification *)&v4 init];
  if (v2)
  {
    [(MAGraphSpecification *)v2 setDefaultNodeClass:objc_opt_class()];
    [(MAGraphSpecification *)v2 setDefaultEdgeClass:objc_opt_class()];
  }

  return v2;
}

@end