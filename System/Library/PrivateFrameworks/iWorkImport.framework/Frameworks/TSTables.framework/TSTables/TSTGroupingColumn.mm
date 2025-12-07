@interface TSTGroupingColumn
+ (id)shortStringForDayOfWeekType;
+ (id)shortStringForDayOfWeekTypeForLocale:(id)locale;
+ (id)shortStringForDayType;
+ (id)shortStringForDayTypeForLocale:(id)locale;
+ (id)shortStringForGroupingType:(int64_t)type;
+ (id)shortStringForGroupingType:(int64_t)type locale:(id)locale;
+ (id)shortStringForMonthOfYearType;
+ (id)shortStringForMonthOfYearTypeForLocale:(id)locale;
+ (id)shortStringForMonthType;
+ (id)shortStringForMonthTypeForLocale:(id)locale;
+ (id)shortStringForQuarterOfYearType;
+ (id)shortStringForQuarterOfYearTypeForLocale:(id)locale;
+ (id)shortStringForYearQuarterType;
+ (id)shortStringForYearQuarterTypeForLocale:(id)locale;
+ (id)shortStringForYearType;
+ (id)shortStringForYearTypeForLocale:(id)locale;
+ (id)shortStringForYearWeekType;
+ (id)shortStringForYearWeekTypeForLocale:(id)locale;
+ (id)stringForDayOfWeekType;
+ (id)stringForDayOfWeekTypeForLocale:(id)locale;
+ (id)stringForDayType;
+ (id)stringForDayTypeForLocale:(id)locale;
+ (id)stringForGroupingType:(int64_t)type;
+ (id)stringForGroupingType:(int64_t)type locale:(id)locale;
+ (id)stringForMonthOfYearType;
+ (id)stringForMonthOfYearTypeForLocale:(id)locale;
+ (id)stringForMonthType;
+ (id)stringForMonthTypeForLocale:(id)locale;
+ (id)stringForQuarterOfYearType;
+ (id)stringForQuarterOfYearTypeForLocale:(id)locale;
+ (id)stringForUniqueType;
+ (id)stringForUniqueTypeForLocale:(id)locale;
+ (id)stringForYearQuarterType;
+ (id)stringForYearQuarterTypeForLocale:(id)locale;
+ (id)stringForYearType;
+ (id)stringForYearTypeForLocale:(id)locale;
+ (id)stringForYearWeekType;
+ (id)stringForYearWeekTypeForLocale:(id)locale;
+ (int64_t)coarserGroupingTypeFor:(int64_t)for;
+ (int64_t)coarserGroupingTypeFor:(int64_t)for groupTypesToAvoid:(id)avoid;
+ (int64_t)finerGroupingTypeFor:(int64_t)for;
+ (int64_t)finerGroupingTypeFor:(int64_t)for groupTypesToAvoid:(id)avoid;
- (BOOL)isEqual:(id)equal;
- (TSKUIDStruct)columnUid;
- (TSKUIDStruct)groupingColumnUid;
- (TSKUIDStruct)uniqueObjectUID;
- (TSTGroupingColumn)initWithArchive:(const void *)archive;
- (TSTGroupingColumn)initWithColumnIndex:(TSUModelColumnIndex)index groupingType:(int64_t)type inTableInfo:(id)info;
- (TSTGroupingColumn)initWithColumnUid:(TSKUIDStruct)uid groupingType:(int64_t)type;
- (TSTGroupingColumn)initWithGroupingColumnUid:(TSKUIDStruct)uid columnUid:(TSKUIDStruct)columnUid groupingType:(int64_t)type;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
- (id)groupValueForValue:(id)value calcEngine:(id)engine;
- (id)p_groupingFormatWithLocale:(id)locale;
- (void)encodeToArchive:(void *)archive archiver:(id)archiver;
- (void)getUUIDBytesForColumnUid:(unsigned __int8)uid[16];
- (void)getUUIDBytesForGroupingColumnUid:(unsigned __int8)uid[16];
- (void)setFunctorForType;
@end

@implementation TSTGroupingColumn

- (TSTGroupingColumn)initWithGroupingColumnUid:(TSKUIDStruct)uid columnUid:(TSKUIDStruct)columnUid groupingType:(int64_t)type
{
  upper = columnUid._upper;
  lower = columnUid._lower;
  v8 = uid._upper;
  v9 = uid._lower;
  v16.receiver = self;
  v16.super_class = TSTGroupingColumn;
  v10 = [(TSTGroupingColumn *)&v16 init];
  v14 = v10;
  if (v10)
  {
    v10->_groupingColumnUid.var0.var0._lower = v9;
    v10->_groupingColumnUid.var0.var0._upper = v8;
    v10->_columnUid.var0.var0._lower = lower;
    v10->_columnUid.var0.var0._upper = upper;
    v10->_groupingType = type;
    objc_msgSend_setFunctorForType(v10, v11, v12, v13);
  }

  return v14;
}

- (TSTGroupingColumn)initWithColumnUid:(TSKUIDStruct)uid groupingType:(int64_t)type
{
  upper = uid._upper;
  lower = uid._lower;
  v8 = TSKMakeUIDStructRandom();
  return objc_msgSend_initWithGroupingColumnUid_columnUid_groupingType_(self, v9, v8, v9, lower, upper, type);
}

- (TSTGroupingColumn)initWithColumnIndex:(TSUModelColumnIndex)index groupingType:(int64_t)type inTableInfo:(id)info
{
  v8 = objc_msgSend_translator(info, a2, *&index._column, type);
  v11 = objc_msgSend_columnUIDForBaseColumnIndex_(v8, v9, index._column, v10);
  v13 = objc_msgSend_initWithColumnUid_groupingType_(self, v12, v11, v12, type);

  return v13;
}

- (TSKUIDStruct)groupingColumnUid
{
  p_groupingColumnUid = &self->_groupingColumnUid;
  lower = self->_groupingColumnUid.var0.var0._lower;
  upper = p_groupingColumnUid->var0.var0._upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)columnUid
{
  p_columnUid = &self->_columnUid;
  lower = self->_columnUid.var0.var0._lower;
  upper = p_columnUid->var0.var0._upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TSTGroupingColumn alloc];
  v8 = objc_msgSend_groupingColumnUid(self, v5, v6, v7);
  v10 = v9;
  v14 = objc_msgSend_columnUid(self, v9, v11, v12);
  groupingType = self->_groupingType;

  return objc_msgSend_initWithGroupingColumnUid_columnUid_groupingType_(v4, v13, v8, v10, v14, v13, groupingType);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v5 = TSUDynamicCast();
    v9 = objc_msgSend_groupingColumnUid(self, v6, v7, v8);
    v11 = v10;
    v17 = 0;
    if (v9 == objc_msgSend_groupingColumnUid(v5, v10, v12, v13) && v11 == v14)
    {
      v18 = objc_msgSend_columnUid(self, v14, v15, v16);
      v20 = v19;
      v17 = 0;
      if (v18 == objc_msgSend_columnUid(v5, v19, v21, v22) && v20 == v23)
      {
        groupingType = self->_groupingType;
        v17 = groupingType == objc_msgSend_groupingType(v5, v23, v24, v25);
      }
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)getUUIDBytesForGroupingColumnUid:(unsigned __int8)uid[16]
{
  if (uid)
  {
    uuid_copy(uid, self->_groupingColumnUid.var0._uuid);
  }
}

- (void)getUUIDBytesForColumnUid:(unsigned __int8)uid[16]
{
  if (uid)
  {
    uuid_copy(uid, self->_columnUid.var0._uuid);
  }
}

- (void)setFunctorForType
{
  groupingType = self->_groupingType;
  if (groupingType <= 3)
  {
    if (groupingType > 0)
    {
      if (groupingType == 1)
      {
        TSCEFormulaCreationMagic::LET_VAR(0, &v405, x1_0, v2, v3);
        TSCEFormulaCreationMagic::SUM(&v405, v438, &v406);
        TSCEFormulaCreationMagic::LET_VAR(0, &v404, v159, v160, v161);
        v162.var0 = &v404;
        TSCEFormulaCreationMagic::EQ(&v406, v162, v468, &v407);
        TSCEFormulaCreationMagic::LET_VAR(0, &v401, v163, v164, v165);
        TSCEFormulaCreationMagic::ISBLANK(&v401, v439, &v402);
        TSCEFormulaCreationMagic::NOT(&v402, v440, &v403);
        v166.var0 = &v403;
        TSCEFormulaCreationMagic::AND(&v407, v166, v469, &v408);
        TSCEFormulaCreationMagic::LET_VAR(0, &v398, v167, v168, v169);
        TSCEFormulaCreationMagic::YEAR(&v398, v441, &v399);
        TSUDecimal::operator=();
        v521._decimal.w[0] = v396;
        TSCEFormulaCreationMagic::number(v395, v521, &v397, v170);
        TSUDecimal::operator=();
        v522._decimal.w[0] = v396;
        TSCEFormulaCreationMagic::number(v395, v522, &v394, v171);
        v172.var0 = &v397;
        v173.var0 = &v394;
        TSCEFormulaCreationMagic::DATE(&v399, v172, v173, v485, &v400);
        TSUDecimal::operator=();
        v523._decimal.w[0] = v396;
        TSCEFormulaCreationMagic::number(v395, v523, &v392, v174);
        TSUDecimal::operator=();
        v524._decimal.w[0] = v396;
        TSCEFormulaCreationMagic::number(v395, v524, &v391, v175);
        TSCEFormulaCreationMagic::operator/(&v392, &v391, &v393);
        v176.var0 = &v400;
        v177.var0 = &v393;
        TSCEFormulaCreationMagic::IF(&v408, v176, v177, v486, &v409);
        v178.var0 = &v409;
        TSCEFunctor::TSCEFunctor(&v410, v178, 1u, 0);
        TSCEFunctor::operator=(&self->_groupingFunctor._formula, &v410);

        formula = v405;
      }

      else if (groupingType == 2)
      {
        TSCEFormulaCreationMagic::LET_VAR(0, &v386, x1_0, v2, v3);
        TSCEFormulaCreationMagic::SUM(&v386, v423, &v387);
        TSCEFormulaCreationMagic::LET_VAR(0, &v385, v82, v83, v84);
        v85.var0 = &v385;
        TSCEFormulaCreationMagic::EQ(&v387, v85, v460, &v388);
        TSCEFormulaCreationMagic::LET_VAR(0, &v382, v86, v87, v88);
        TSCEFormulaCreationMagic::ISBLANK(&v382, v424, &v383);
        TSCEFormulaCreationMagic::NOT(&v383, v425, &v384);
        v89.var0 = &v384;
        TSCEFormulaCreationMagic::AND(&v388, v89, v461, &v389);
        TSCEFormulaCreationMagic::LET_VAR(0, &v379, v90, v91, v92);
        TSCEFormulaCreationMagic::YEAR(&v379, v426, &v380);
        TSCEFormulaCreationMagic::LET_VAR(0, &v377, v93, v94, v95);
        TSCEFormulaCreationMagic::MONTH(&v377, v427, &v378);
        TSUDecimal::operator=();
        v506._decimal.w[0] = v396;
        TSCEFormulaCreationMagic::number(v395, v506, &v376, v96);
        v97.var0 = &v378;
        v98.var0 = &v376;
        TSCEFormulaCreationMagic::DATE(&v380, v97, v98, v479, &v381);
        TSUDecimal::operator=();
        v507._decimal.w[0] = v396;
        TSCEFormulaCreationMagic::number(v395, v507, &v374, v99);
        TSUDecimal::operator=();
        v508._decimal.w[0] = v396;
        TSCEFormulaCreationMagic::number(v395, v508, &v373, v100);
        TSCEFormulaCreationMagic::operator/(&v374, &v373, &v375);
        v101.var0 = &v381;
        v102.var0 = &v375;
        TSCEFormulaCreationMagic::IF(&v389, v101, v102, v480, &v390);
        v103.var0 = &v390;
        TSCEFunctor::TSCEFunctor(&v410, v103, 1u, 0);
        TSCEFunctor::operator=(&self->_groupingFunctor._formula, &v410);

        formula = v386;
      }

      else
      {
        TSCEFormulaCreationMagic::LET_VAR(0, &v368, x1_0, v2, v3);
        TSCEFormulaCreationMagic::SUM(&v368, v416, &v369);
        TSCEFormulaCreationMagic::LET_VAR(0, &v367, v34, v35, v36);
        v37.var0 = &v367;
        TSCEFormulaCreationMagic::EQ(&v369, v37, v455, &v370);
        TSCEFormulaCreationMagic::LET_VAR(0, &v364, v38, v39, v40);
        TSCEFormulaCreationMagic::ISBLANK(&v364, v417, &v365);
        TSCEFormulaCreationMagic::NOT(&v365, v418, &v366);
        v41.var0 = &v366;
        TSCEFormulaCreationMagic::AND(&v370, v41, v456, &v371);
        TSUDecimal::operator=();
        v498._decimal.w[0] = v396;
        TSCEFormulaCreationMagic::number(v395, v498, &v362, v42);
        TSUDecimal::operator=();
        v499._decimal.w[0] = v396;
        TSCEFormulaCreationMagic::number(v395, v499, &v361, v43);
        TSUDecimal::operator=();
        v500._decimal.w[0] = v396;
        TSCEFormulaCreationMagic::number(v395, v500, &v359, v44);
        TSCEFormulaCreationMagic::LET_VAR(0, &v357, v45, v46, v47);
        TSCEFormulaCreationMagic::WEEKDAY(&v357, v419, &v358);
        TSCEFormulaCreationMagic::operator+(&v359, &v358, &v360);
        v48.var0 = &v361;
        v49.var0 = &v360;
        TSCEFormulaCreationMagic::DATE(&v362, v48, v49, v476, &v363);
        TSUDecimal::operator=();
        v501._decimal.w[0] = v396;
        TSCEFormulaCreationMagic::number(v395, v501, &v355, v50);
        TSUDecimal::operator=();
        v502._decimal.w[0] = v396;
        TSCEFormulaCreationMagic::number(v395, v502, &v354, v51);
        TSCEFormulaCreationMagic::operator/(&v355, &v354, &v356);
        v52.var0 = &v363;
        v53.var0 = &v356;
        TSCEFormulaCreationMagic::IF(&v371, v52, v53, v477, &v372);
        v54.var0 = &v372;
        TSCEFunctor::TSCEFunctor(&v410, v54, 1u, 0);
        TSCEFunctor::operator=(&self->_groupingFunctor._formula, &v410);

        formula = v368;
      }

      goto LABEL_24;
    }

    if (groupingType == -1)
    {
      v73 = MEMORY[0x277D81150];
      v74 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], x1_0, "[TSTGroupingColumn setFunctorForType]", v3);
      v77 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v75, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupingColumn.mm", v76);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v73, v78, v74, v77, 121, 0, "should not attempt to use an invalid grouping type");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v79, v80, v81);
    }

    else if (!groupingType)
    {
      TSCEFunctor::TSCEFunctor(&v410);
      TSCEFunctor::operator=(&self->_groupingFunctor._formula, &v410);
      formula = v410._formula;
      goto LABEL_24;
    }
  }

  else
  {
    if (groupingType <= 6)
    {
      if (groupingType == 4)
      {
        TSCEFormulaCreationMagic::LET_VAR(0, &v349, x1_0, v2, v3);
        TSCEFormulaCreationMagic::SUM(&v349, v442, &v350);
        TSCEFormulaCreationMagic::LET_VAR(0, &v348, v179, v180, v181);
        v182.var0 = &v348;
        TSCEFormulaCreationMagic::EQ(&v350, v182, v470, &v351);
        TSCEFormulaCreationMagic::LET_VAR(0, &v345, v183, v184, v185);
        TSCEFormulaCreationMagic::ISBLANK(&v345, v443, &v346);
        TSCEFormulaCreationMagic::NOT(&v346, v444, &v347);
        v186.var0 = &v347;
        TSCEFormulaCreationMagic::AND(&v351, v186, v471, &v352);
        TSCEFormulaCreationMagic::LET_VAR(0, &v342, v187, v188, v189);
        TSCEFormulaCreationMagic::YEAR(&v342, v445, &v343);
        TSCEFormulaCreationMagic::LET_VAR(0, &v340, v190, v191, v192);
        TSCEFormulaCreationMagic::MONTH(&v340, v446, &v341);
        TSCEFormulaCreationMagic::LET_VAR(0, &v338, v193, v194, v195);
        TSCEFormulaCreationMagic::DAY(&v338, v447, &v339);
        v196.var0 = &v341;
        v197.var0 = &v339;
        TSCEFormulaCreationMagic::DATE(&v343, v196, v197, v487, &v344);
        TSUDecimal::operator=();
        v525._decimal.w[0] = v396;
        TSCEFormulaCreationMagic::number(v395, v525, &v336, v198);
        TSUDecimal::operator=();
        v526._decimal.w[0] = v396;
        TSCEFormulaCreationMagic::number(v395, v526, &v335, v199);
        TSCEFormulaCreationMagic::operator/(&v336, &v335, &v337);
        v200.var0 = &v344;
        v201.var0 = &v337;
        TSCEFormulaCreationMagic::IF(&v352, v200, v201, v488, &v353);
        v202.var0 = &v353;
        TSCEFunctor::TSCEFunctor(&v410, v202, 1u, 0);
        TSCEFunctor::operator=(&self->_groupingFunctor._formula, &v410);

        formula = v349;
      }

      else if (groupingType == 5)
      {
        TSCEFormulaCreationMagic::LET_VAR(0, &v330, x1_0, v2, v3);
        TSCEFormulaCreationMagic::SUM(&v330, v428, &v331);
        TSCEFormulaCreationMagic::LET_VAR(0, &v329, v104, v105, v106);
        v107.var0 = &v329;
        TSCEFormulaCreationMagic::EQ(&v331, v107, v462, &v332);
        TSCEFormulaCreationMagic::LET_VAR(0, &v326, v108, v109, v110);
        TSCEFormulaCreationMagic::ISBLANK(&v326, v429, &v327);
        TSCEFormulaCreationMagic::NOT(&v327, v430, &v328);
        v111.var0 = &v328;
        TSCEFormulaCreationMagic::AND(&v332, v111, v463, &v333);
        TSCEFormulaCreationMagic::LET_VAR(0, &v321, v112, v113, v114);
        TSCEFormulaCreationMagic::YEAR(&v321, v431, &v322);
        TSCEFormulaCreationMagic::LET_VAR(0, &v319, v115, v116, v117);
        TSCEFormulaCreationMagic::MONTH(&v319, v432, &v320);
        TSCEFormulaCreationMagic::LET_VAR(0, &v317, v118, v119, v120);
        TSCEFormulaCreationMagic::DAY(&v317, v433, &v318);
        v121.var0 = &v320;
        v122.var0 = &v318;
        TSCEFormulaCreationMagic::DATE(&v322, v121, v122, v481, &v323);
        TSUDecimal::operator=();
        v509._decimal.w[0] = v396;
        TSCEFormulaCreationMagic::number(v395, v509, &v316, v123);
        TSCEFormulaCreationMagic::operator+(&v323, &v316, &v324);
        TSCEFormulaCreationMagic::LET_VAR(0, &v314, v124, v125, v126);
        TSUDecimal::operator=();
        v510._decimal.w[0] = v396;
        TSCEFormulaCreationMagic::number(v395, v510, &v313, v127);
        v128.var0 = &v313;
        TSCEFormulaCreationMagic::WEEKDAY(&v314, v128, v464, &v315);
        TSCEFormulaCreationMagic::operator-(&v324, &v315, &v325);
        TSUDecimal::operator=();
        v511._decimal.w[0] = v396;
        TSCEFormulaCreationMagic::number(v395, v511, &v311, v129);
        TSUDecimal::operator=();
        v512._decimal.w[0] = v396;
        TSCEFormulaCreationMagic::number(v395, v512, &v310, v130);
        TSCEFormulaCreationMagic::operator/(&v311, &v310, &v312);
        v131.var0 = &v325;
        v132.var0 = &v312;
        TSCEFormulaCreationMagic::IF(&v333, v131, v132, v482, &v334);
        v133.var0 = &v334;
        TSCEFunctor::TSCEFunctor(&v410, v133, 1u, 0);
        TSCEFunctor::operator=(&self->_groupingFunctor._formula, &v410);

        formula = v330;
      }

      else
      {
        TSCEFormulaCreationMagic::LET_VAR(0, &v305, x1_0, v2, v3);
        TSCEFormulaCreationMagic::SUM(&v305, v411, &v306);
        TSCEFormulaCreationMagic::LET_VAR(0, &v304, v6, v7, v8);
        v9.var0 = &v304;
        TSCEFormulaCreationMagic::EQ(&v306, v9, v452, &v307);
        TSCEFormulaCreationMagic::LET_VAR(0, &v301, v10, v11, v12);
        TSCEFormulaCreationMagic::ISBLANK(&v301, v412, &v302);
        TSCEFormulaCreationMagic::NOT(&v302, v413, &v303);
        v13.var0 = &v303;
        TSCEFormulaCreationMagic::AND(&v307, v13, v453, &v308);
        TSCEFormulaCreationMagic::LET_VAR(0, &v298, v14, v15, v16);
        TSCEFormulaCreationMagic::YEAR(&v298, v414, &v299);
        TSCEFormulaCreationMagic::LET_VAR(0, &v291, v17, v18, v19);
        TSCEFormulaCreationMagic::MONTH(&v291, v415, &v292);
        TSUDecimal::operator=();
        v491._decimal.w[0] = v396;
        TSCEFormulaCreationMagic::number(v395, v491, &v290, v20);
        TSCEFormulaCreationMagic::operator-(&v292, &v290, &v293);
        TSUDecimal::operator=();
        v492._decimal.w[0] = v396;
        TSCEFormulaCreationMagic::number(v395, v492, &v289, v21);
        TSCEFormulaCreationMagic::operator/(&v293, &v289, &v294);
        TSCEFormulaCreator::TSCEFormulaCreator(&v288, 0);
        v22.var0 = &v288;
        TSCEFormulaCreationMagic::ROUNDDOWN(&v294, v22, v454, &v295);
        TSUDecimal::operator=();
        v493._decimal.w[0] = v396;
        TSCEFormulaCreationMagic::number(v395, v493, &v287, v23);
        TSCEFormulaCreationMagic::operator*(&v295, &v287, &v296);
        TSUDecimal::operator=();
        v494._decimal.w[0] = v396;
        TSCEFormulaCreationMagic::number(v395, v494, &v286, v24);
        TSCEFormulaCreationMagic::operator+(&v296, &v286, &v297);
        TSUDecimal::operator=();
        v495._decimal.w[0] = v396;
        TSCEFormulaCreationMagic::number(v395, v495, &v285, v25);
        v26.var0 = &v297;
        v27.var0 = &v285;
        TSCEFormulaCreationMagic::DATE(&v299, v26, v27, v474, &v300);
        TSUDecimal::operator=();
        v496._decimal.w[0] = v396;
        TSCEFormulaCreationMagic::number(v395, v496, &v283, v28);
        TSUDecimal::operator=();
        v497._decimal.w[0] = v396;
        TSCEFormulaCreationMagic::number(v395, v497, &v282, v29);
        TSCEFormulaCreationMagic::operator/(&v283, &v282, &v284);
        v30.var0 = &v300;
        v31.var0 = &v284;
        TSCEFormulaCreationMagic::IF(&v308, v30, v31, v475, &v309);
        v32.var0 = &v309;
        TSCEFunctor::TSCEFunctor(&v410, v32, 1u, 0);
        TSCEFunctor::operator=(&self->_groupingFunctor._formula, &v410);

        formula = v305;
      }

      goto LABEL_24;
    }

    switch(groupingType)
    {
      case 7:
        TSCEFormulaCreationMagic::LET_VAR(0, &v277, x1_0, v2, v3);
        TSCEFormulaCreationMagic::SUM(&v277, v448, &v278);
        TSCEFormulaCreationMagic::LET_VAR(0, &v276, v203, v204, v205);
        v206.var0 = &v276;
        TSCEFormulaCreationMagic::EQ(&v278, v206, v472, &v279);
        TSCEFormulaCreationMagic::LET_VAR(0, &v273, v207, v208, v209);
        TSCEFormulaCreationMagic::ISBLANK(&v273, v449, &v274);
        TSCEFormulaCreationMagic::NOT(&v274, v450, &v275);
        v210.var0 = &v275;
        TSCEFormulaCreationMagic::AND(&v279, v210, v473, &v280);
        TSUDecimal::operator=();
        v527._decimal.w[0] = v396;
        TSCEFormulaCreationMagic::number(v395, v527, &v271, v211);
        TSCEFormulaCreationMagic::LET_VAR(0, &v269, v212, v213, v214);
        TSCEFormulaCreationMagic::MONTH(&v269, v451, &v270);
        TSUDecimal::operator=();
        v528._decimal.w[0] = v396;
        TSCEFormulaCreationMagic::number(v395, v528, &v268, v215);
        v216.var0 = &v270;
        v217.var0 = &v268;
        TSCEFormulaCreationMagic::DATE(&v271, v216, v217, v489, &v272);
        TSUDecimal::operator=();
        v529._decimal.w[0] = v396;
        TSCEFormulaCreationMagic::number(v395, v529, &v266, v218);
        TSUDecimal::operator=();
        v530._decimal.w[0] = v396;
        TSCEFormulaCreationMagic::number(v395, v530, &v265, v219);
        TSCEFormulaCreationMagic::operator/(&v266, &v265, &v267);
        v220.var0 = &v272;
        v221.var0 = &v267;
        TSCEFormulaCreationMagic::IF(&v280, v220, v221, v490, &v281);
        v222.var0 = &v281;
        TSCEFunctor::TSCEFunctor(&v410, v222, 1u, 0);
        TSCEFunctor::operator=(&self->_groupingFunctor._formula, &v410);

        formula = v277;
        goto LABEL_24;
      case 8:
        TSCEFormulaCreationMagic::LET_VAR(0, &v260, x1_0, v2, v3);
        TSCEFormulaCreationMagic::SUM(&v260, v434, &v261);
        TSCEFormulaCreationMagic::LET_VAR(0, &v259, v134, v135, v136);
        v137.var0 = &v259;
        TSCEFormulaCreationMagic::EQ(&v261, v137, v465, &v262);
        TSCEFormulaCreationMagic::LET_VAR(0, &v256, v138, v139, v140);
        TSCEFormulaCreationMagic::ISBLANK(&v256, v435, &v257);
        TSCEFormulaCreationMagic::NOT(&v257, v436, &v258);
        v141.var0 = &v258;
        TSCEFormulaCreationMagic::AND(&v262, v141, v466, &v263);
        TSUDecimal::operator=();
        v513._decimal.w[0] = v396;
        TSCEFormulaCreationMagic::number(v395, v513, &v254, v142);
        TSCEFormulaCreationMagic::LET_VAR(0, &v247, v143, v144, v145);
        TSCEFormulaCreationMagic::MONTH(&v247, v437, &v248);
        TSUDecimal::operator=();
        v514._decimal.w[0] = v396;
        TSCEFormulaCreationMagic::number(v395, v514, &v246, v146);
        TSCEFormulaCreationMagic::operator-(&v248, &v246, &v249);
        TSUDecimal::operator=();
        v515._decimal.w[0] = v396;
        TSCEFormulaCreationMagic::number(v395, v515, &v245, v147);
        TSCEFormulaCreationMagic::operator/(&v249, &v245, &v250);
        TSCEFormulaCreator::TSCEFormulaCreator(&v244, 0);
        v148.var0 = &v244;
        TSCEFormulaCreationMagic::ROUNDDOWN(&v250, v148, v467, &v251);
        TSUDecimal::operator=();
        v516._decimal.w[0] = v396;
        TSCEFormulaCreationMagic::number(v395, v516, &v243, v149);
        TSCEFormulaCreationMagic::operator*(&v251, &v243, &v252);
        TSUDecimal::operator=();
        v517._decimal.w[0] = v396;
        TSCEFormulaCreationMagic::number(v395, v517, &v242, v150);
        TSCEFormulaCreationMagic::operator+(&v252, &v242, &v253);
        TSUDecimal::operator=();
        v518._decimal.w[0] = v396;
        TSCEFormulaCreationMagic::number(v395, v518, &v241, v151);
        v152.var0 = &v253;
        v153.var0 = &v241;
        TSCEFormulaCreationMagic::DATE(&v254, v152, v153, v483, &v255);
        TSUDecimal::operator=();
        v519._decimal.w[0] = v396;
        TSCEFormulaCreationMagic::number(v395, v519, &v239, v154);
        TSUDecimal::operator=();
        v520._decimal.w[0] = v396;
        TSCEFormulaCreationMagic::number(v395, v520, &v238, v155);
        TSCEFormulaCreationMagic::operator/(&v239, &v238, &v240);
        v156.var0 = &v255;
        v157.var0 = &v240;
        TSCEFormulaCreationMagic::IF(&v263, v156, v157, v484, &v264);
        v158.var0 = &v264;
        TSCEFunctor::TSCEFunctor(&v410, v158, 1u, 0);
        TSCEFunctor::operator=(&self->_groupingFunctor._formula, &v410);

        formula = v260;
        goto LABEL_24;
      case 10:
        TSCEFormulaCreationMagic::LET_VAR(0, &v233, x1_0, v2, v3);
        TSCEFormulaCreationMagic::SUM(&v233, v420, &v234);
        TSCEFormulaCreationMagic::LET_VAR(0, &v232, v55, v56, v57);
        v58.var0 = &v232;
        TSCEFormulaCreationMagic::EQ(&v234, v58, v457, &v235);
        TSCEFormulaCreationMagic::LET_VAR(0, &v229, v59, v60, v61);
        TSCEFormulaCreationMagic::ISBLANK(&v229, v421, &v230);
        TSCEFormulaCreationMagic::NOT(&v230, v422, &v231);
        v62.var0 = &v231;
        TSCEFormulaCreationMagic::AND(&v235, v62, v458, &v236);
        TSCEFormulaCreationMagic::LET_VAR(0, &v227, v63, v64, v65);
        TSUDecimal::operator=();
        v503._decimal.w[0] = v396;
        TSCEFormulaCreationMagic::number(v395, v503, &v226, v66);
        v67.var0 = &v226;
        TSCEFormulaCreationMagic::ROUND(&v227, v67, v459, &v228);
        TSUDecimal::operator=();
        v504._decimal.w[0] = v396;
        TSCEFormulaCreationMagic::number(v395, v504, &v224, v68);
        TSUDecimal::operator=();
        v505._decimal.w[0] = v396;
        TSCEFormulaCreationMagic::number(v395, v505, &v223, v69);
        TSCEFormulaCreationMagic::operator/(&v224, &v223, &v225);
        v70.var0 = &v228;
        v71.var0 = &v225;
        TSCEFormulaCreationMagic::IF(&v236, v70, v71, v478, &v237);
        v72.var0 = &v237;
        TSCEFunctor::TSCEFunctor(&v410, v72, 1u, 0);
        TSCEFunctor::operator=(&self->_groupingFunctor._formula, &v410);

        formula = v233;
LABEL_24:

        break;
    }
  }

  self->_groupingFormatComputed = 0;
}

- (id)p_groupingFormatWithLocale:(id)locale
{
  localeCopy = locale;
  if (self->_docLocale != localeCopy || !self->_groupingFormatComputed)
  {
    objc_storeStrong(&self->_docLocale, locale);
    groupingType = self->_groupingType;
    if (groupingType > 3)
    {
      if (groupingType <= 6)
      {
        if (groupingType == 4)
        {
          v35 = objc_alloc(MEMORY[0x277D80658]);
          v11 = objc_msgSend_localizedStringForKey_value_table_(self->_docLocale, v36, @"M/d/yyyy", &stru_2834BADA0, @"TSTables");
          v14 = objc_msgSend_initWithFormatString_(v35, v37, v11, v38);
          goto LABEL_27;
        }

        if (groupingType == 5)
        {
          v9 = objc_alloc(MEMORY[0x277D80658]);
          objc_msgSend_localizedStringForKey_value_table_(self->_docLocale, v26, @"yyyy'-W'w", &stru_2834BADA0, @"TSTables");
        }

        else
        {
          v9 = objc_alloc(MEMORY[0x277D80658]);
          objc_msgSend_localizedStringForKey_value_table_(self->_docLocale, v10, @"yyyy-QQQ", &stru_2834BADA0, @"TSTables");
        }

        v11 = LABEL_8:;
        v14 = objc_msgSend_initWithFormatString_(v9, v12, v11, v13);
LABEL_27:
        groupingFormat = self->_groupingFormat;
        self->_groupingFormat = v14;

        goto LABEL_28;
      }

      if (groupingType == 7)
      {
        v39 = objc_alloc(MEMORY[0x277D80658]);
        v11 = objc_msgSend_localizedStringForKey_value_table_(self->_docLocale, v40, @"LLLL", &stru_2834BADA0, @"TSTables");
        v14 = objc_msgSend_initWithFormatString_(v39, v41, v11, v42);
        goto LABEL_27;
      }

      if (groupingType == 8)
      {
        v27 = objc_alloc(MEMORY[0x277D80658]);
        v11 = objc_msgSend_localizedStringForKey_value_table_(self->_docLocale, v28, @"QQQ", &stru_2834BADA0, @"TSTables");
        v14 = objc_msgSend_initWithFormatString_(v27, v29, v11, v30);
        goto LABEL_27;
      }

      if (groupingType != 10)
      {
        goto LABEL_29;
      }

LABEL_19:
      v11 = self->_groupingFormat;
      self->_groupingFormat = 0;
LABEL_28:

      goto LABEL_29;
    }

    if (groupingType > 0)
    {
      if (groupingType == 1)
      {
        v31 = objc_alloc(MEMORY[0x277D80658]);
        v11 = objc_msgSend_localizedStringForKey_value_table_(self->_docLocale, v32, @"yyyy", &stru_2834BADA0, @"TSTables");
        v14 = objc_msgSend_initWithFormatString_(v31, v33, v11, v34);
        goto LABEL_27;
      }

      if (groupingType == 2)
      {
        v9 = objc_alloc(MEMORY[0x277D80658]);
        objc_msgSend_localizedStringForKey_value_table_(self->_docLocale, v25, @"LLLL yyyy", &stru_2834BADA0, @"TSTables");
      }

      else
      {
        v9 = objc_alloc(MEMORY[0x277D80658]);
        objc_msgSend_localizedStringForKey_value_table_(self->_docLocale, v15, @"EEEE", &stru_2834BADA0, @"TSTables");
      }

      goto LABEL_8;
    }

    if (groupingType == -1)
    {
      v16 = MEMORY[0x277D81150];
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTGroupingColumn p_groupingFormatWithLocale:]", v7);
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupingColumn.mm", v19);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v17, v20, 202, 0, "should not attempt to use an invalid grouping type");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24);
    }

    else if (!groupingType)
    {
      goto LABEL_19;
    }

LABEL_29:
    self->_groupingFormatComputed = 1;
  }

  v44 = self->_groupingFormat;
  v45 = v44;

  return v44;
}

- (id)groupValueForValue:(id)value calcEngine:(id)engine
{
  valueCopy = value;
  engineCopy = engine;
  v8 = valueCopy;
  v12 = TSCEFunctor::isValid(&self->_groupingFunctor, v9, v10, v11) ^ 1;
  if (!engineCopy)
  {
    LOBYTE(v12) = 1;
  }

  v13 = v8;
  if ((v12 & 1) == 0)
  {
    v14 = objc_alloc(MEMORY[0x277CBEA60]);
    v17 = objc_msgSend_initWithObjects_(v14, v15, v8, v16, 0);
    v18 = TSCEFunctor::evaluateWithArgs(&self->_groupingFunctor, v17, engineCopy);

    if (v18 && objc_msgSend_valueType(v18, v19, v20, v21) != 9 && objc_msgSend_valueType(v18, v22, v23, v24) && objc_msgSend_valueType(v18, v25, v26, v27) != 10)
    {
      v32 = objc_msgSend_locale(v18, v28, v29, v30);
      v35 = objc_msgSend_p_groupingFormatWithLocale_(self, v33, v32, v34);

      if (v35)
      {
        v39 = objc_msgSend_tsceValue(v18, v36, v37, v38);
        TSCEFormat::TSCEFormat(&v48, v35, 0);
        TSCEFormat::TSCEFormat(&v49, &v48);
        objc_msgSend_setFormat_(v39, v40, &v49, v41);
        v45 = objc_msgSend_locale(v18, v42, v43, v44);
        v47 = objc_msgSend_newCellValueFromTSCEValue_withLocale_(TSCECellValue, v46, v39, v45);

        v18 = v47;
      }

      v13 = v18;
    }

    else
    {
      v13 = v8;
    }
  }

  return v13;
}

- (TSTGroupingColumn)initWithArchive:(const void *)archive
{
  if ((*(archive + 16) & 4) != 0)
  {
    v5 = TSKUIDStruct::loadFromMessage(*(archive + 5), a2);
  }

  else
  {
    v5 = TSKMakeUIDStructRandom();
  }

  v7 = v5;
  v8 = v6;
  if (*(archive + 3))
  {
    v9 = *(archive + 3);
  }

  else
  {
    v9 = MEMORY[0x277D809E0];
  }

  v10 = TSKUIDStruct::loadFromMessage(v9, v6);
  v12 = v11;
  TSCEFunctor::TSCEFunctor(&v18);
  groupingType = *(archive + 12);
  self->_groupingType = groupingType;
  if ((*(archive + 16) & 2) != 0)
  {
    TSCEFunctor::TSCEFunctor(&v17, *(archive + 4));
    TSCEFunctor::operator=(&v18._formula, &v17);

    groupingType = self->_groupingType;
  }

  v15 = objc_msgSend_initWithGroupingColumnUid_columnUid_groupingType_(self, v13, v7, v8, v10, v12, groupingType);

  return v15;
}

- (void)encodeToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  *(archive + 4) |= 4u;
  v6 = *(archive + 5);
  if (!v6)
  {
    v7 = *(archive + 1);
    if (v7)
    {
      v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
    }

    v6 = MEMORY[0x223DA0360](v7);
    *(archive + 5) = v6;
  }

  TSP::UUIDData::saveToMessage(&self->_groupingColumnUid, v6);
  *(archive + 4) |= 1u;
  v8 = *(archive + 3);
  if (!v8)
  {
    v9 = *(archive + 1);
    if (v9)
    {
      v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
    }

    v8 = MEMORY[0x223DA0360](v9);
    *(archive + 3) = v8;
  }

  TSP::UUIDData::saveToMessage(&self->_columnUid, v8);
  groupingType = self->_groupingType;
  *(archive + 4) |= 8u;
  *(archive + 12) = groupingType;
  if (TSCEFunctor::isValid(&self->_groupingFunctor, v11, v12, v13))
  {
    *(archive + 4) |= 2u;
    v14 = *(archive + 4);
    if (!v14)
    {
      v15 = *(archive + 1);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      v14 = google::protobuf::Arena::CreateMaybeMessage<TSCE::FunctorArchive>(v15);
      *(archive + 4) = v14;
    }

    TSCEFunctor::encodeToArchive(&self->_groupingFunctor, v14, archiverCopy);
  }
}

+ (id)stringForUniqueType
{
  v4 = sub_2214AAEA8(self, a2, v2, v3);
  v6 = objc_msgSend_localizedStringForKey_value_table_(v4, v5, @"Value", &stru_2834BADA0, @"TSTables");

  return v6;
}

+ (id)stringForYearType
{
  v4 = sub_2214AAEA8(self, a2, v2, v3);
  v6 = objc_msgSend_localizedStringForKey_value_table_(v4, v5, @"Year", &stru_2834BADA0, @"TSTables");

  return v6;
}

+ (id)stringForMonthType
{
  v4 = sub_2214AAEA8(self, a2, v2, v3);
  v6 = objc_msgSend_localizedStringForKey_value_table_(v4, v5, @"Year-Month", &stru_2834BADA0, @"TSTables");

  return v6;
}

+ (id)stringForDayOfWeekType
{
  v4 = sub_2214AAEA8(self, a2, v2, v3);
  v6 = objc_msgSend_localizedStringForKey_value_table_(v4, v5, @"Day of Week", &stru_2834BADA0, @"TSTables");

  return v6;
}

+ (id)stringForDayType
{
  v4 = sub_2214AAEA8(self, a2, v2, v3);
  v6 = objc_msgSend_localizedStringForKey_value_table_(v4, v5, @"Year-Month-Day", &stru_2834BADA0, @"TSTables");

  return v6;
}

+ (id)stringForYearWeekType
{
  v4 = sub_2214AAEA8(self, a2, v2, v3);
  v6 = objc_msgSend_localizedStringForKey_value_table_(v4, v5, @"Year-Week", &stru_2834BADA0, @"TSTables");

  return v6;
}

+ (id)stringForYearQuarterType
{
  v4 = sub_2214AAEA8(self, a2, v2, v3);
  v6 = objc_msgSend_localizedStringForKey_value_table_(v4, v5, @"Year-Quarter", &stru_2834BADA0, @"TSTables");

  return v6;
}

+ (id)stringForMonthOfYearType
{
  v4 = sub_2214AAEA8(self, a2, v2, v3);
  v6 = objc_msgSend_localizedStringForKey_value_table_(v4, v5, @"Month", &stru_2834BADA0, @"TSTables");

  return v6;
}

+ (id)stringForQuarterOfYearType
{
  v4 = sub_2214AAEA8(self, a2, v2, v3);
  v6 = objc_msgSend_localizedStringForKey_value_table_(v4, v5, @"Quarter", &stru_2834BADA0, @"TSTables");

  return v6;
}

+ (id)shortStringForYearType
{
  v4 = sub_2214AAEA8(self, a2, v2, v3);
  v6 = objc_msgSend_localizedStringForKey_value_table_(v4, v5, @"Year", &stru_2834BADA0, @"TSTables");

  return v6;
}

+ (id)shortStringForMonthType
{
  v4 = sub_2214AAEA8(self, a2, v2, v3);
  v6 = objc_msgSend_localizedStringForKey_value_table_(v4, v5, @"YM", &stru_2834BADA0, @"TSTables");

  return v6;
}

+ (id)shortStringForDayOfWeekType
{
  v4 = sub_2214AAEA8(self, a2, v2, v3);
  v6 = objc_msgSend_localizedStringForKey_value_table_(v4, v5, @"Day", &stru_2834BADA0, @"TSTables");

  return v6;
}

+ (id)shortStringForDayType
{
  v4 = sub_2214AAEA8(self, a2, v2, v3);
  v6 = objc_msgSend_localizedStringForKey_value_table_(v4, v5, @"YMD", &stru_2834BADA0, @"TSTables");

  return v6;
}

+ (id)shortStringForYearWeekType
{
  v4 = sub_2214AAEA8(self, a2, v2, v3);
  v6 = objc_msgSend_localizedStringForKey_value_table_(v4, v5, @"YW", &stru_2834BADA0, @"TSTables");

  return v6;
}

+ (id)shortStringForYearQuarterType
{
  v4 = sub_2214AAEA8(self, a2, v2, v3);
  v6 = objc_msgSend_localizedStringForKey_value_table_(v4, v5, @"YQ", &stru_2834BADA0, @"TSTables");

  return v6;
}

+ (id)shortStringForMonthOfYearType
{
  v4 = sub_2214AAEA8(self, a2, v2, v3);
  v6 = objc_msgSend_localizedStringForKey_value_table_(v4, v5, @"Month", &stru_2834BADA0, @"TSTables");

  return v6;
}

+ (id)shortStringForQuarterOfYearType
{
  v4 = sub_2214AAEA8(self, a2, v2, v3);
  v6 = objc_msgSend_localizedStringForKey_value_table_(v4, v5, @"Qtr", &stru_2834BADA0, @"TSTables");

  return v6;
}

+ (id)stringForUniqueTypeForLocale:(id)locale
{
  v3 = objc_msgSend_localizedStringForKey_value_table_(locale, a2, @"Value", &stru_2834BADA0, @"TSTables");

  return v3;
}

+ (id)stringForYearTypeForLocale:(id)locale
{
  v3 = objc_msgSend_localizedStringForKey_value_table_(locale, a2, @"Year", &stru_2834BADA0, @"TSTables");

  return v3;
}

+ (id)stringForMonthTypeForLocale:(id)locale
{
  v3 = objc_msgSend_localizedStringForKey_value_table_(locale, a2, @"Year-Month", &stru_2834BADA0, @"TSTables");

  return v3;
}

+ (id)stringForDayOfWeekTypeForLocale:(id)locale
{
  v3 = objc_msgSend_localizedStringForKey_value_table_(locale, a2, @"Day of Week", &stru_2834BADA0, @"TSTables");

  return v3;
}

+ (id)stringForDayTypeForLocale:(id)locale
{
  v3 = objc_msgSend_localizedStringForKey_value_table_(locale, a2, @"Year-Month-Day", &stru_2834BADA0, @"TSTables");

  return v3;
}

+ (id)stringForYearWeekTypeForLocale:(id)locale
{
  v3 = objc_msgSend_localizedStringForKey_value_table_(locale, a2, @"Year-Week", &stru_2834BADA0, @"TSTables");

  return v3;
}

+ (id)stringForYearQuarterTypeForLocale:(id)locale
{
  v3 = objc_msgSend_localizedStringForKey_value_table_(locale, a2, @"Year-Quarter", &stru_2834BADA0, @"TSTables");

  return v3;
}

+ (id)stringForMonthOfYearTypeForLocale:(id)locale
{
  v3 = objc_msgSend_localizedStringForKey_value_table_(locale, a2, @"Month", &stru_2834BADA0, @"TSTables");

  return v3;
}

+ (id)stringForQuarterOfYearTypeForLocale:(id)locale
{
  v3 = objc_msgSend_localizedStringForKey_value_table_(locale, a2, @"Quarter", &stru_2834BADA0, @"TSTables");

  return v3;
}

+ (id)shortStringForYearTypeForLocale:(id)locale
{
  v3 = objc_msgSend_localizedStringForKey_value_table_(locale, a2, @"Year", &stru_2834BADA0, @"TSTables");

  return v3;
}

+ (id)shortStringForMonthTypeForLocale:(id)locale
{
  v3 = objc_msgSend_localizedStringForKey_value_table_(locale, a2, @"YM", &stru_2834BADA0, @"TSTables");

  return v3;
}

+ (id)shortStringForDayOfWeekTypeForLocale:(id)locale
{
  v3 = objc_msgSend_localizedStringForKey_value_table_(locale, a2, @"Day", &stru_2834BADA0, @"TSTables");

  return v3;
}

+ (id)shortStringForDayTypeForLocale:(id)locale
{
  v3 = objc_msgSend_localizedStringForKey_value_table_(locale, a2, @"YMD", &stru_2834BADA0, @"TSTables");

  return v3;
}

+ (id)shortStringForYearWeekTypeForLocale:(id)locale
{
  v3 = objc_msgSend_localizedStringForKey_value_table_(locale, a2, @"YW", &stru_2834BADA0, @"TSTables");

  return v3;
}

+ (id)shortStringForYearQuarterTypeForLocale:(id)locale
{
  v3 = objc_msgSend_localizedStringForKey_value_table_(locale, a2, @"YQ", &stru_2834BADA0, @"TSTables");

  return v3;
}

+ (id)shortStringForMonthOfYearTypeForLocale:(id)locale
{
  v3 = objc_msgSend_localizedStringForKey_value_table_(locale, a2, @"Month", &stru_2834BADA0, @"TSTables");

  return v3;
}

+ (id)shortStringForQuarterOfYearTypeForLocale:(id)locale
{
  v3 = objc_msgSend_localizedStringForKey_value_table_(locale, a2, @"Qtr", &stru_2834BADA0, @"TSTables");

  return v3;
}

+ (id)shortStringForGroupingType:(int64_t)type
{
  v4 = objc_opt_class();
  if (type <= 4)
  {
    if (type <= 2)
    {
      if (type == 1)
      {
        v8 = objc_msgSend_shortStringForYearType(v4, v5, v6, v7);
        goto LABEL_20;
      }

      if (type == 2)
      {
        v8 = objc_msgSend_shortStringForMonthType(v4, v5, v6, v7);
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    if (type == 3)
    {
      objc_msgSend_shortStringForDayOfWeekType(v4, v5, v6, v7);
    }

    else
    {
      objc_msgSend_shortStringForDayType(v4, v5, v6, v7);
    }

    v8 = LABEL_9:;
    goto LABEL_20;
  }

  if (type <= 6)
  {
    if (type == 5)
    {
      objc_msgSend_shortStringForYearWeekType(v4, v5, v6, v7);
    }

    else
    {
      objc_msgSend_shortStringForYearQuarterType(v4, v5, v6, v7);
    }

    goto LABEL_9;
  }

  if (type == 7)
  {
    v8 = objc_msgSend_shortStringForMonthOfYearType(v4, v5, v6, v7);
    goto LABEL_20;
  }

  if (type == 8)
  {
    v8 = objc_msgSend_shortStringForQuarterOfYearType(v4, v5, v6, v7);
    goto LABEL_20;
  }

LABEL_19:
  v8 = objc_msgSend_stringForUniqueType(v4, v5, v6, v7);
LABEL_20:

  return v8;
}

+ (id)stringForGroupingType:(int64_t)type
{
  v4 = objc_opt_class();
  if (type <= 4)
  {
    if (type <= 2)
    {
      if (type == 1)
      {
        v8 = objc_msgSend_stringForYearType(v4, v5, v6, v7);
        goto LABEL_20;
      }

      if (type == 2)
      {
        v8 = objc_msgSend_stringForMonthType(v4, v5, v6, v7);
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    if (type == 3)
    {
      objc_msgSend_stringForDayOfWeekType(v4, v5, v6, v7);
    }

    else
    {
      objc_msgSend_stringForDayType(v4, v5, v6, v7);
    }

    v8 = LABEL_9:;
    goto LABEL_20;
  }

  if (type <= 6)
  {
    if (type == 5)
    {
      objc_msgSend_stringForYearWeekType(v4, v5, v6, v7);
    }

    else
    {
      objc_msgSend_stringForYearQuarterType(v4, v5, v6, v7);
    }

    goto LABEL_9;
  }

  if (type == 7)
  {
    v8 = objc_msgSend_stringForMonthOfYearType(v4, v5, v6, v7);
    goto LABEL_20;
  }

  if (type == 8)
  {
    v8 = objc_msgSend_stringForQuarterOfYearType(v4, v5, v6, v7);
    goto LABEL_20;
  }

LABEL_19:
  v8 = objc_msgSend_stringForUniqueType(v4, v5, v6, v7);
LABEL_20:

  return v8;
}

+ (id)stringForGroupingType:(int64_t)type locale:(id)locale
{
  localeCopy = locale;
  if (type <= 4)
  {
    if (type <= 2)
    {
      if (type == 1)
      {
        v19 = objc_opt_class();
        v9 = objc_msgSend_stringForYearTypeForLocale_(v19, v20, localeCopy, v21);
        goto LABEL_20;
      }

      if (type == 2)
      {
        v6 = objc_opt_class();
        v9 = objc_msgSend_stringForMonthTypeForLocale_(v6, v7, localeCopy, v8);
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    v13 = objc_opt_class();
    if (type == 3)
    {
      objc_msgSend_stringForDayOfWeekTypeForLocale_(v13, v14, localeCopy, v15);
    }

    else
    {
      objc_msgSend_stringForDayTypeForLocale_(v13, v14, localeCopy, v15);
    }

    v9 = LABEL_9:;
    goto LABEL_20;
  }

  if (type <= 6)
  {
    v10 = objc_opt_class();
    if (type == 5)
    {
      objc_msgSend_stringForYearWeekTypeForLocale_(v10, v11, localeCopy, v12);
    }

    else
    {
      objc_msgSend_stringForYearQuarterTypeForLocale_(v10, v11, localeCopy, v12);
    }

    goto LABEL_9;
  }

  if (type == 7)
  {
    v22 = objc_opt_class();
    v9 = objc_msgSend_stringForMonthOfYearTypeForLocale_(v22, v23, localeCopy, v24);
    goto LABEL_20;
  }

  if (type == 8)
  {
    v16 = objc_opt_class();
    v9 = objc_msgSend_stringForQuarterOfYearTypeForLocale_(v16, v17, localeCopy, v18);
    goto LABEL_20;
  }

LABEL_19:
  v25 = objc_opt_class();
  v9 = objc_msgSend_stringForUniqueTypeForLocale_(v25, v26, localeCopy, v27);
LABEL_20:
  v28 = v9;

  return v28;
}

+ (id)shortStringForGroupingType:(int64_t)type locale:(id)locale
{
  localeCopy = locale;
  if (type <= 4)
  {
    if (type <= 2)
    {
      if (type == 1)
      {
        v19 = objc_opt_class();
        v9 = objc_msgSend_shortStringForYearTypeForLocale_(v19, v20, localeCopy, v21);
        goto LABEL_20;
      }

      if (type == 2)
      {
        v6 = objc_opt_class();
        v9 = objc_msgSend_shortStringForMonthTypeForLocale_(v6, v7, localeCopy, v8);
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    v13 = objc_opt_class();
    if (type == 3)
    {
      objc_msgSend_shortStringForDayOfWeekTypeForLocale_(v13, v14, localeCopy, v15);
    }

    else
    {
      objc_msgSend_shortStringForDayTypeForLocale_(v13, v14, localeCopy, v15);
    }

    v9 = LABEL_9:;
    goto LABEL_20;
  }

  if (type <= 6)
  {
    v10 = objc_opt_class();
    if (type == 5)
    {
      objc_msgSend_shortStringForYearWeekTypeForLocale_(v10, v11, localeCopy, v12);
    }

    else
    {
      objc_msgSend_shortStringForYearQuarterTypeForLocale_(v10, v11, localeCopy, v12);
    }

    goto LABEL_9;
  }

  if (type == 7)
  {
    v22 = objc_opt_class();
    v9 = objc_msgSend_shortStringForMonthOfYearTypeForLocale_(v22, v23, localeCopy, v24);
    goto LABEL_20;
  }

  if (type == 8)
  {
    v16 = objc_opt_class();
    v9 = objc_msgSend_shortStringForQuarterOfYearTypeForLocale_(v16, v17, localeCopy, v18);
    goto LABEL_20;
  }

LABEL_19:
  v25 = objc_opt_class();
  v9 = objc_msgSend_stringForUniqueTypeForLocale_(v25, v26, localeCopy, v27);
LABEL_20:
  v28 = v9;

  return v28;
}

+ (int64_t)coarserGroupingTypeFor:(int64_t)for
{
  if ((for - 1) > 7)
  {
    return 0;
  }

  else
  {
    return qword_2217E2190[for - 1];
  }
}

+ (int64_t)coarserGroupingTypeFor:(int64_t)for groupTypesToAvoid:(id)avoid
{
  avoidCopy = avoid;
  do
  {
    v11 = objc_msgSend_coarserGroupingTypeFor_(self, v6, for, v7);
    if (v11 == for)
    {
      break;
    }

    for = v11;
  }

  while ((objc_msgSend_containsIndex_(avoidCopy, v9, v11, v10) & 1) != 0);

  return for;
}

+ (int64_t)finerGroupingTypeFor:(int64_t)for
{
  if ((for - 1) > 7)
  {
    return 0;
  }

  else
  {
    return qword_2217E21D0[for - 1];
  }
}

+ (int64_t)finerGroupingTypeFor:(int64_t)for groupTypesToAvoid:(id)avoid
{
  avoidCopy = avoid;
  do
  {
    v11 = objc_msgSend_finerGroupingTypeFor_(self, v6, for, v7);
    if (v11 == for)
    {
      break;
    }

    for = v11;
  }

  while ((objc_msgSend_containsIndex_(avoidCopy, v9, v11, v10) & 1) != 0);

  return for;
}

- (TSKUIDStruct)uniqueObjectUID
{
  p_uniqueObjectUID = &self->_uniqueObjectUID;
  lower = self->_uniqueObjectUID._lower;
  upper = p_uniqueObjectUID->_upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (id).cxx_construct
{
  self->_groupingColumnUid = 0uLL;
  self->_columnUid = 0uLL;
  TSCEFunctor::TSCEFunctor(&self->_groupingFunctor);
  return self;
}

@end