id HDSourceEntityPredicateForSourceWithUUID(void *a1, int a2)
{
  v3 = MEMORY[0x277D10B18];
  v4 = [a1 hk_dataForUUIDBytes];
  v5 = [v3 predicateWithProperty:@"uuid" equalToValue:v4];

  if (a2)
  {
    v6 = v5;
  }

  else
  {
    v6 = _HDSourceEntityPredicateForNotDeletedWithPredicate(v5);
  }

  v7 = v6;

  return v7;
}

void HDVersionFromBuildStringForProductType(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v9 = a1;
  v5 = a2;
  if ([v9 isEqualToString:@"UnknownBuild"])
  {
    goto LABEL_2;
  }

  if ([v9 isEqualToString:{@"[8.0, 8.2"}]))
  {
    v6 = &HDDataProvenanceOperatingSystemVersion8_0_0;
    goto LABEL_7;
  }

  if ([v9 isEqualToString:{@"[8.2, 9.0"}]))
  {
    v6 = &HDDataProvenanceOperatingSystemVersion8_2_0;
    goto LABEL_7;
  }

  if ([v5 hasPrefix:@"iPhone"])
  {
    if (qword_280D67A98 != -1)
    {
      dispatch_once(&qword_280D67A98, &__block_literal_global_461);
    }

    v7 = v9;
    v8 = qword_280D67A90;
  }

  else
  {
    if (![v5 hasPrefix:@"Watch"])
    {
LABEL_2:
      v6 = &HDDataProvenanceOperatingSystemVersionUnknown;
LABEL_7:
      *a3 = *v6;
      a3[2] = *(v6 + 2);
      goto LABEL_8;
    }

    if (qword_280D67AA8 != -1)
    {
      dispatch_once(&qword_280D67AA8, &__block_literal_global_466);
    }

    v7 = v9;
    v8 = qword_280D67AA0;
  }

  versionFromBuildString(a3, v7, v8);
LABEL_8:
}

void __iOSSortedBuildStrings_block_invoke()
{
  v0 = qword_280D67A90;
  qword_280D67A90 = &unk_283CAE590;
}

void versionFromBuildString(void *a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  v6 = [v5 count];
  if (qword_280D67A88 != -1)
  {
    dispatch_once(&qword_280D67A88, &__block_literal_global_302);
  }

  v7 = _MergedGlobals_194;
  v8 = [v7 objectForKey:v14];
  v9 = v8;
  if (v8)
  {
    objc_copyStruct(a1, (v8 + 8), 24, 1, 0);
  }

  else
  {
    v10 = [v5 indexOfObject:v14 inSortedRange:0 options:v6 usingComparator:{1024, &__block_literal_global_4}];
    if (v10 >= v6)
    {
      *a1 = HDDataProvenanceOperatingSystemVersionUnknown;
      a1[2] = 0;
    }

    else
    {
      v11 = [v5 objectAtIndexedSubscript:v10];
      v12 = [v7 objectForKeyedSubscript:v11];
      v13 = v12;
      if (v12)
      {
        objc_copyStruct(a1, (v12 + 8), 24, 1, 0);
      }

      else
      {
        *a1 = 0;
        a1[1] = 0;
        a1[2] = 0;
      }
    }
  }
}

void __buildStringToVersionMap_block_invoke()
{
  v55[52] = *MEMORY[0x277D85DE8];
  v54[0] = @"13A0";
  v53 = +[HDNSOperatingSystemVersion unknownVersion];
  v55[0] = v53;
  v54[1] = @"13A344";
  v52 = [HDNSOperatingSystemVersion versionWithMajor:0 minor:0 patch:?];
  v55[1] = v52;
  v54[2] = @"13A405";
  v51 = [HDNSOperatingSystemVersion versionWithMajor:0 minor:1 patch:?];
  v55[2] = v51;
  v54[3] = @"13A452";
  v50 = [HDNSOperatingSystemVersion versionWithMajor:0 minor:2 patch:?];
  v55[3] = v50;
  v54[4] = @"13A5325c";
  v49 = [HDNSOperatingSystemVersion versionWithMajor:0 minor:0 patch:?];
  v55[4] = v49;
  v54[5] = @"13B143";
  v48 = [HDNSOperatingSystemVersion versionWithMajor:1 minor:0 patch:?];
  v55[5] = v48;
  v54[6] = @"13B5130b";
  v47 = [HDNSOperatingSystemVersion versionWithMajor:1 minor:0 patch:?];
  v55[6] = v47;
  v54[7] = @"13C5060d";
  v46 = [HDNSOperatingSystemVersion versionWithMajor:2 minor:0 patch:?];
  v55[7] = v46;
  v54[8] = @"13D20";
  v45 = [HDNSOperatingSystemVersion versionWithMajor:2 minor:1 patch:?];
  v55[8] = v45;
  v54[9] = @"13E237";
  v44 = [HDNSOperatingSystemVersion versionWithMajor:3 minor:0 patch:?];
  v55[9] = v44;
  v54[10] = @"13E238";
  v43 = [HDNSOperatingSystemVersion versionWithMajor:3 minor:1 patch:?];
  v55[10] = v43;
  v54[11] = @"13E5234a";
  v42 = [HDNSOperatingSystemVersion versionWithMajor:3 minor:0 patch:?];
  v55[11] = v42;
  v54[12] = @"13F69";
  v41 = [HDNSOperatingSystemVersion versionWithMajor:3 minor:2 patch:?];
  v55[12] = v41;
  v54[13] = @"13G34";
  v40 = [HDNSOperatingSystemVersion versionWithMajor:3 minor:3 patch:?];
  v55[13] = v40;
  v54[14] = @"13G35";
  v39 = [HDNSOperatingSystemVersion versionWithMajor:3 minor:4 patch:?];
  v55[14] = v39;
  v54[15] = @"13G36";
  v38 = [HDNSOperatingSystemVersion versionWithMajor:3 minor:5 patch:?];
  v55[15] = v38;
  v54[16] = @"14A0";
  v37 = +[HDNSOperatingSystemVersion unknownVersion];
  v55[16] = v37;
  v54[17] = @"14A346";
  v36 = [HDNSOperatingSystemVersion versionWithMajor:0 minor:0 patch:?];
  v55[17] = v36;
  v54[18] = @"14A403";
  v35 = [HDNSOperatingSystemVersion versionWithMajor:0 minor:1 patch:?];
  v55[18] = v35;
  v54[19] = @"14A456";
  v34 = [HDNSOperatingSystemVersion versionWithMajor:0 minor:2 patch:?];
  v55[19] = v34;
  v54[20] = @"14A551";
  v33 = [HDNSOperatingSystemVersion versionWithMajor:0 minor:3 patch:?];
  v55[20] = v33;
  v54[21] = @"14A5346a";
  v32 = [HDNSOperatingSystemVersion versionWithMajor:0 minor:0 patch:?];
  v55[21] = v32;
  v54[22] = @"14B99999";
  v31 = [HDNSOperatingSystemVersion versionWithMajor:1 minor:0 patch:?];
  v55[22] = v31;
  v54[23] = @"14C99999";
  v30 = [HDNSOperatingSystemVersion versionWithMajor:2 minor:0 patch:?];
  v55[23] = v30;
  v54[24] = @"14E0";
  v29 = +[HDNSOperatingSystemVersion unknownVersion];
  v55[24] = v29;
  v54[25] = @"14E99999";
  v28 = [HDNSOperatingSystemVersion versionWithMajor:3 minor:0 patch:?];
  v55[25] = v28;
  v54[26] = @"150";
  v27 = +[HDNSOperatingSystemVersion unknownVersion];
  v55[26] = v27;
  v54[27] = @"15A99999";
  v26 = [HDNSOperatingSystemVersion versionWithMajor:0 minor:0 patch:?];
  v55[27] = v26;
  v54[28] = @"12S0";
  v25 = +[HDNSOperatingSystemVersion unknownVersion];
  v55[28] = v25;
  v54[29] = @"12S507";
  v24 = [HDNSOperatingSystemVersion versionWithMajor:0 minor:0 patch:?];
  v55[29] = v24;
  v54[30] = @"12S632";
  v23 = [HDNSOperatingSystemVersion versionWithMajor:0 minor:1 patch:?];
  v55[30] = v23;
  v54[31] = @"13S0";
  v22 = +[HDNSOperatingSystemVersion unknownVersion];
  v55[31] = v22;
  v54[32] = @"13S344";
  v21 = [HDNSOperatingSystemVersion versionWithMajor:0 minor:0 patch:?];
  v55[32] = v21;
  v54[33] = @"13S428";
  v20 = [HDNSOperatingSystemVersion versionWithMajor:0 minor:1 patch:?];
  v55[33] = v20;
  v54[34] = @"13S661";
  v19 = [HDNSOperatingSystemVersion versionWithMajor:1 minor:0 patch:?];
  v55[34] = v19;
  v54[35] = @"13S5325c";
  v18 = [HDNSOperatingSystemVersion versionWithMajor:0 minor:0 patch:?];
  v55[35] = v18;
  v54[36] = @"13V0";
  v17 = +[HDNSOperatingSystemVersion unknownVersion];
  v55[36] = v17;
  v54[37] = @"13V144";
  v16 = [HDNSOperatingSystemVersion versionWithMajor:2 minor:0 patch:?];
  v55[37] = v16;
  v54[38] = @"13V420";
  v15 = [HDNSOperatingSystemVersion versionWithMajor:2 minor:1 patch:?];
  v55[38] = v15;
  v54[39] = @"13V604";
  v14 = [HDNSOperatingSystemVersion versionWithMajor:2 minor:2 patch:?];
  v55[39] = v14;
  v54[40] = @"13V5143a";
  v13 = [HDNSOperatingSystemVersion versionWithMajor:2 minor:0 patch:?];
  v55[40] = v13;
  v54[41] = @"14B0";
  v12 = +[HDNSOperatingSystemVersion unknownVersion];
  v55[41] = v12;
  v54[42] = @"14B471";
  v0 = [HDNSOperatingSystemVersion versionWithMajor:1 minor:0 patch:?];
  v55[42] = v0;
  v54[43] = @"14S0";
  v1 = +[HDNSOperatingSystemVersion unknownVersion];
  v55[43] = v1;
  v54[44] = @"14S326";
  v2 = [HDNSOperatingSystemVersion versionWithMajor:0 minor:0 patch:?];
  v55[44] = v2;
  v54[45] = @"14S471";
  v3 = [HDNSOperatingSystemVersion versionWithMajor:1 minor:0 patch:?];
  v55[45] = v3;
  v54[46] = @"14S1000";
  v4 = [HDNSOperatingSystemVersion versionWithMajor:1 minor:1 patch:?];
  v55[46] = v4;
  v54[47] = @"14S5869b";
  v5 = [HDNSOperatingSystemVersion versionWithMajor:0 minor:0 patch:?];
  v55[47] = v5;
  v54[48] = @"14V0";
  v6 = +[HDNSOperatingSystemVersion unknownVersion];
  v55[48] = v6;
  v54[49] = @"14V9999";
  v7 = [HDNSOperatingSystemVersion versionWithMajor:3 minor:0 patch:?];
  v55[49] = v7;
  v54[50] = @"15R0";
  v8 = +[HDNSOperatingSystemVersion unknownVersion];
  v55[50] = v8;
  v54[51] = @"15R9999";
  v9 = [HDNSOperatingSystemVersion versionWithMajor:0 minor:0 patch:?];
  v55[51] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:52];
  v11 = _MergedGlobals_194;
  _MergedGlobals_194 = v10;
}

uint64_t __allowedClasses_block_invoke()
{
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v0 setWithObjects:{v1, v2, v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];
  v11 = qword_280D67DE8;
  qword_280D67DE8 = v10;

  return MEMORY[0x2821F96F8](v10, v11);
}

void HDPowerLog(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v7 = [a2 mutableCopy];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [v7 setObject:v6 forKeyedSubscript:@"status"];

  PLLogRegisteredEvent();
}

uint64_t sub_2289AAEB0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2289AAEF0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2289AAF28()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2289AAF60()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2289AAF9C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2289AAFE8()
{
  MEMORY[0x22AAC9900](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2289AB020()
{
  MEMORY[0x22AAC9900](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2289AB058()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2289AB0B0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2289AB0E8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2289AB138()
{
  MEMORY[0x22AAC9900](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2289AB170()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2289AB1A8@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2289C88D8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2289AB1D4(void *a1, void *a2)
{
  *(*a2 + OBJC_IVAR____TtC12HealthDaemon13HDSwimTracker____lazy_storage___tracker) = *a1;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

uint64_t sub_2289AB220()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2289AB258()
{

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2289AB2B0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2289AB2E8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2289AB328()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2289AB360()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2289AB3A8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2289AB3F0()
{
  swift_unknownObjectRelease();

  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2289AB44C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2289AB48C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2289AB4C4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2289AB4FC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2289AB534()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2289AB56C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2289AB5A4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2289AB5DC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2289AB6E0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2289AB718()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2289AB750()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2289AB790()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2289AB7C8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2289AB80C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2289AB844()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2289AB8EC(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_2289AB920(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_2289AB968()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2289AB9BC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2289AB9F4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2289ABA2C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2289ABA64()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2289ABAD0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2289ABB08()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2289ABB40(uint64_t a1, uint64_t a2)
{
  v4 = sub_22911B88C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2289ABBAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22911B88C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2289ABC1C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22911BADC();
  *a1 = result;
  return result;
}

uint64_t sub_2289ABC70@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22911BA0C();
  *a1 = result;
  return result;
}

uint64_t sub_2289ABCC4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22911BA2C();
  *a1 = result;
  return result;
}

uint64_t sub_2289ABD18@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22911B9EC();
  *a1 = result;
  return result;
}

uint64_t sub_2289ABD6C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22911BB1C();
  *a1 = result;
  return result;
}

uint64_t sub_2289ABDC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22911BA4C();
  *a1 = result;
  return result;
}

uint64_t sub_2289ABE14@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22911BA6C();
  *a1 = result;
  return result;
}

uint64_t sub_2289ABE68@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22911BAAC();
  *a1 = result;
  return result;
}

uint64_t sub_2289ABEBC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22911BA8C();
  *a1 = result;
  return result;
}

uint64_t sub_2289ABF10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22911BAFC();
  *a1 = result;
  return result;
}

uint64_t sub_2289ABF64()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2289ABFB4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2289ABFEC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_2289AC034@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12HealthDaemon37HDWorkoutBackgroundActivityController_currentAttribution;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_2289AC0A0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2289AC0D8()
{
  MEMORY[0x22AAC9900](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2289AC110()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2289AC150()
{

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2289ACBE4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2289ACBF4(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2289ACC14(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2289ACC34(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_2289ACC80(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2289ACCA0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t sub_2289ACCFC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2289ACD1C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void sub_2289ACD58(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t DatabaseJournalMetrics.loggingDescription.getter()
{
  v1 = OBJC_IVAR___HDDatabaseJournalMetrics_store;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  for (i = 0; v5; result = )
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_22911C83C();
    MEMORY[0x22AAC5FC0](9, 0xE100000000000000);
    MEMORY[0x22AAC5FC0](v12, v13);

    MEMORY[0x22AAC5FC0](8250, 0xE200000000000000);
    v14 = sub_22911CAAC();
    MEMORY[0x22AAC5FC0](v14);

    MEMORY[0x22AAC5FC0](0x202C736574796220, 0xE800000000000000);
    sub_22911C4FC();
    MEMORY[0x22AAC5FC0](175336736, 0xE400000000000000);
    MEMORY[0x22AAC5FC0](0, 0xE000000000000000);
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return 0;
    }

    v5 = *(v2 + 64 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall DatabaseJournalMetrics.add(className:size:duration:)(Swift::String className, Swift::Int size, Swift::Double duration)
{
  v4 = v3;
  object = className._object;
  countAndFlagsBits = className._countAndFlagsBits;
  v9 = OBJC_IVAR___HDDatabaseJournalMetrics_store;
  swift_beginAccess();
  v10 = *(v3 + v9);
  if (!*(v10 + 16) || (v11 = sub_2289AD318(countAndFlagsBits, object), (v12 & 1) == 0))
  {
    swift_endAccess();
    goto LABEL_6;
  }

  v13 = *(v10 + 56) + 16 * v11;
  v14 = *v13;
  v15 = *(v13 + 8);
  swift_endAccess();
  v16 = __OFADD__(v14, size);
  size += v14;
  if (!v16)
  {
    duration = v15 + duration;
LABEL_6:
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v4 + v9);
    *(v4 + v9) = 0x8000000000000000;
    sub_2289AFD9C(size, countAndFlagsBits, object, isUniquelyReferenced_nonNull_native, duration);
    *(v4 + v9) = v18;
    swift_endAccess();
    return;
  }

  __break(1u);
}

id DatabaseJournalMetrics.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DatabaseJournalMetrics.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR___HDDatabaseJournalMetrics_store;
  *&v0[v2] = sub_2289B21B0(MEMORY[0x277D84F90]);
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_init);
}

id DatabaseJournalMetrics.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2289AD318(uint64_t a1, uint64_t a2)
{
  sub_22911CB7C();
  sub_22911C3DC();
  v4 = sub_22911CB9C();

  return sub_2289AD864(a1, a2, v4);
}

unint64_t sub_2289AD390(uint64_t a1)
{
  sub_22911BE5C();
  v2 = MEMORY[0x277CCB418];
  sub_2289B2394(&qword_27D8629C0, MEMORY[0x277CCB418], MEMORY[0x277CCB420]);
  v3 = sub_22911C2FC();
  return sub_2289AD988(a1, v3, MEMORY[0x277CCB418], &qword_27D8629C8, v2, MEMORY[0x277CCB428]);
}

unint64_t sub_2289AD464(uint64_t a1)
{
  sub_22911C0DC();
  v2 = MEMORY[0x277CCB558];
  sub_2289B2394(&qword_27D862A98, MEMORY[0x277CCB558], MEMORY[0x277CCB560]);
  v3 = sub_22911C2FC();
  return sub_2289AD988(a1, v3, MEMORY[0x277CCB558], &qword_27D862AA0, v2, MEMORY[0x277CCB568]);
}

unint64_t sub_2289AD538(uint64_t a1)
{
  sub_22911BD4C();
  v2 = MEMORY[0x277CCB3C0];
  sub_2289B2394(&qword_27D862A78, MEMORY[0x277CCB3C0], MEMORY[0x277CCB3C8]);
  v3 = sub_22911C2FC();
  return sub_2289AD988(a1, v3, MEMORY[0x277CCB3C0], &qword_27D862A80, v2, MEMORY[0x277CCB3D0]);
}

unint64_t sub_2289AD60C(uint64_t a1)
{
  v2 = sub_22911CB6C();

  return sub_2289AD91C(a1, v2);
}

unint64_t sub_2289AD6A0(uint64_t a1)
{
  sub_22911B8DC();
  v2 = MEMORY[0x277CC95F0];
  sub_2289B2394(&qword_27D8629D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v3 = sub_22911C2FC();
  return sub_2289AD988(a1, v3, MEMORY[0x277CC95F0], &qword_27D8629E0, v2, MEMORY[0x277CC9610]);
}

unint64_t sub_2289AD864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_22911CADC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2289AD91C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2289AD988(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_2289B2394(v23, v24, v25);
      v19 = sub_22911C33C();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

unint64_t sub_2289ADB28(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_2289B3D00(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_22911C6BC();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

uint64_t sub_2289ADBF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2289B3D48(0, &qword_27D862B00, sub_2289B3DAC);
  v38 = v4;
  result = sub_22911CA6C();
  v7 = result;
  if (*(v5 + 16))
  {
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = *v26;
      v28 = v26[1];
      if ((v38 & 1) == 0)
      {
      }

      sub_22911CB7C();
      sub_22911C3DC();
      result = sub_22911CB9C();
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v27;
      v18[1] = v28;
      ++*(v7 + 16);
      v5 = v37;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2289ADEC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2289B3B18();
  v33 = v4;
  result = sub_22911CA6C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_2289B3C48(v24, v34);
      }

      else
      {
        sub_2289B3CA4(v24, v34);
      }

      sub_22911CB7C();
      sub_22911C3DC();
      result = sub_22911CB9C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_2289B3C48(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_2289AE170(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_22911BE5C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_2289B22F8(0);
  v40 = v4;
  result = sub_22911CA6C();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = result + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v42 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v5);
      }

      else
      {
        (*v37)(v43, v26, v5);
      }

      v27 = *(*(v9 + 56) + 8 * v24);
      sub_2289B2394(&qword_27D8629C0, MEMORY[0x277CCB418], MEMORY[0x277CCB420]);
      result = sub_22911C2FC();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v41)(*(v11 + 48) + v25 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v27;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
      v16 = v42;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_2289AE524(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, void *a5)
{
  v6 = v5;
  v7 = a2;
  v8 = *v5;
  sub_2289B3894(0, a3, a4, a5);
  v38 = v7;
  result = sub_22911CA6C();
  v10 = result;
  if (*(v8 + 16))
  {
    v37 = v8;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = (*(v8 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v8 + 56) + 8 * v23);
      if ((v38 & 1) == 0)
      {

        v28 = v27;
      }

      sub_22911CB7C();
      sub_22911C3DC();
      result = sub_22911CB9C();
      v29 = -1 << *(v10 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v17 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v17 + 8 * v31);
          if (v35 != -1)
          {
            v18 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v30) & ~*(v17 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v8 = v37;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v6 = v5;
      goto LABEL_33;
    }

    v36 = 1 << *(v8 + 32);
    v6 = v5;
    if (v36 >= 64)
    {
      bzero(v12, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v36;
    }

    *(v8 + 16) = 0;
  }

LABEL_33:
  *v6 = v10;
  return result;
}

uint64_t sub_2289AE7C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_22911BD4C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_2289B36DC(0);
  v39 = v4;
  result = sub_22911CA6C();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v38 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v6 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_2289B2394(&qword_27D862A78, MEMORY[0x277CCB3C0], MEMORY[0x277CCB3C8]);
      result = sub_22911C2FC();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v6 = v37;
      v9 = v38;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_2289AEB94(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2289B37A4(0, &qword_27D862A88, MEMORY[0x277D84460]);
  result = sub_22911CA6C();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = sub_22911CB6C();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_2289AEE3C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2289B3574(0);
  result = sub_22911CA6C();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      result = sub_22911C6AC();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_2289AF098(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2289B334C(0);
  result = sub_22911CA6C();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
      }

      result = sub_22911C6AC();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2289AF2FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v40 = sub_22911C00C();
  v5 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v39 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_2289B3448(0);
  v38 = v4;
  result = sub_22911CA6C();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v36 = (v5 + 16);
    v37 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(v5 + 72);
      v25 = *(v7 + 56) + v24 * v22;
      if (v38)
      {
        (*v16)(v39, v25, v40);
      }

      else
      {
        (*v36)(v39, v25, v40);
        v26 = v23;
      }

      result = sub_22911C6AC();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 8 * v18) = v23;
      result = (*v16)(*(v9 + 56) + v24 * v18, v39, v40);
      ++*(v9 + 16);
      v5 = v37;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v7 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v7 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_2289AF63C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  v8 = v5;
  v9 = a2;
  v56 = a3(0);
  v10 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = &v44 - v11;
  v12 = sub_22911B8DC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v57 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v5;
  sub_2289B3630(0, a4, a5);
  v51 = v9;
  result = sub_22911CA6C();
  v17 = result;
  if (*(v15 + 16))
  {
    v18 = 0;
    v19 = (v15 + 64);
    v20 = 1 << *(v15 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v13;
    v23 = v21 & *(v15 + 64);
    v24 = (v20 + 63) >> 6;
    v47 = (v22 + 16);
    v48 = v22;
    v45 = v5;
    v46 = v10 + 16;
    v49 = v15;
    v50 = v10;
    v52 = (v10 + 32);
    v53 = (v22 + 32);
    v25 = result + 64;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_15:
      v30 = v27 | (v18 << 6);
      v31 = *(v15 + 48);
      v54 = *(v22 + 72);
      v32 = v31 + v54 * v30;
      if (v51)
      {
        (*v53)(v57, v32, v12);
        v33 = *(v15 + 56);
        v34 = *(v50 + 72);
        (*(v50 + 32))(v55, v33 + v34 * v30, v56);
      }

      else
      {
        (*v47)(v57, v32, v12);
        v35 = *(v15 + 56);
        v34 = *(v50 + 72);
        (*(v50 + 16))(v55, v35 + v34 * v30, v56);
      }

      sub_2289B2394(&qword_27D8629D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_22911C2FC();
      v36 = -1 << *(v17 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v25 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v25 + 8 * v38);
          if (v42 != -1)
          {
            v26 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v37) & ~*(v25 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v53)((*(v17 + 48) + v54 * v26), v57, v12);
      result = (*v52)(*(v17 + 56) + v34 * v26, v55, v56);
      ++*(v17 + 16);
      v22 = v48;
      v15 = v49;
    }

    v28 = v18;
    while (1)
    {
      v18 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v18 >= v24)
      {
        break;
      }

      v29 = v19[v18];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_15;
      }
    }

    if ((v51 & 1) == 0)
    {

      v8 = v45;
      goto LABEL_34;
    }

    v43 = 1 << *(v15 + 32);
    v8 = v45;
    if (v43 >= 64)
    {
      bzero(v19, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v43;
    }

    *(v15 + 16) = 0;
  }

LABEL_34:
  *v8 = v17;
  return result;
}

uint64_t sub_2289AFAE4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2289B3D48(0, &qword_27D8629F0, sub_2289B2618);
  v34 = v4;
  result = sub_22911CA6C();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_22911CB7C();
      sub_22911C3DC();
      result = sub_22911CB9C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_2289AFD9C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, double a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_2289AD318(a2, a3);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 < v18 || (a4 & 1) != 0)
    {
      sub_2289ADBF4(v18, a4 & 1);
      result = sub_2289AD318(a2, a3);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_16:
        result = sub_22911CB1C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      sub_2289B0DAC();
      result = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = v23[7] + 16 * result;
    *v24 = a1;
    *(v24 + 8) = a5;
    return result;
  }

  v23[(result >> 6) + 8] |= 1 << result;
  v25 = (v23[6] + 16 * result);
  *v25 = a2;
  v25[1] = a3;
  v26 = v23[7] + 16 * result;
  *v26 = a1;
  *(v26 + 8) = a5;
  v27 = v23[2];
  v17 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v17)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v23[2] = v28;
}

_OWORD *sub_2289AFF24(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2289AD318(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_2289B0F34();
      v11 = v19;
      goto LABEL_8;
    }

    sub_2289ADEC4(v16, a4 & 1);
    v11 = sub_2289AD318(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_22911CB1C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return sub_2289B3C48(a1, v22);
  }

  else
  {
    sub_2289B0AE8(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_2289B00AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, unint64_t *a5, unint64_t *a6, void *a7)
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_2289AD318(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 < v22 || (a4 & 1) != 0)
    {
      sub_2289AE524(v22, a4 & 1, a5, a6, a7);
      v17 = sub_2289AD318(a2, a3);
      if ((v23 & 1) != (v26 & 1))
      {
LABEL_18:
        v17 = sub_22911CB1C();
        __break(1u);
        return MEMORY[0x2821F96F8](v17, v29);
      }
    }

    else
    {
      v25 = v17;
      sub_2289B1384(a5, a6, a7);
      v17 = v25;
    }
  }

  v27 = *v11;
  if (v23)
  {
    v28 = v27[7];
    v29 = *(v28 + 8 * v17);
    *(v28 + 8 * v17) = a1;

    return MEMORY[0x2821F96F8](v17, v29);
  }

  v27[(v17 >> 6) + 8] |= 1 << v17;
  v30 = (v27[6] + 16 * v17);
  *v30 = a2;
  v30[1] = a3;
  *(v27[7] + 8 * v17) = a1;
  v31 = v27[2];
  v21 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v27[2] = v32;
}

uint64_t sub_2289B0254(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_22911BE5C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_2289AD390(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      *(v20[7] + 8 * v14) = a1;
      return result;
    }

    goto LABEL_11;
  }

  if (v19 >= result && (a3 & 1) == 0)
  {
    result = sub_2289B1104();
    goto LABEL_7;
  }

  sub_2289AE170(result, a3 & 1);
  result = sub_2289AD390(a2);
  if ((v18 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_22911CB1C();
    __break(1u);
    return result;
  }

  v14 = result;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_2289B0B54(v14, v11, a1, v20);
}

id sub_2289B040C(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_2289AD7C4(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_2289AF098(v13, a3 & 1);
      v8 = sub_2289AD7C4(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_2289B3D00(0, &qword_27D862A08, off_27860F5C8);
        result = sub_22911CB1C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_2289B18EC();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v20 = v18[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v21;

  return a2;
}

id sub_2289B0588(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v9 = sub_2289AD774(a2);
  v10 = v7[2];
  v11 = (v8 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_17;
  }

  v13 = v8;
  v14 = v7[3];
  if (v14 < v12 || (a3 & 1) == 0)
  {
    if (v14 >= v12 && (a3 & 1) == 0)
    {
      sub_2289B1A44();
      goto LABEL_7;
    }

    sub_2289AF2FC(v12, a3 & 1);
    v23 = sub_2289AD774(a2);
    if ((v13 & 1) == (v24 & 1))
    {
      v9 = v23;
      v15 = *v4;
      if (v13)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_2289B3D00(0, &qword_27D862A20, 0x277CBC5D0);
    result = sub_22911CB1C();
    __break(1u);
    return result;
  }

LABEL_7:
  v15 = *v4;
  if (v13)
  {
LABEL_8:
    v16 = v15[7];
    v17 = sub_22911C00C();
    v18 = *(v17 - 8);
    v19 = *(v18 + 40);
    v20 = v17;
    v21 = v16 + *(v18 + 72) * v9;

    return v19(v21, a1, v20);
  }

LABEL_13:
  sub_2289B0C0C(v9, a2, a1, v15);

  return a2;
}

uint64_t sub_2289B0708(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_22911B8DC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_2289AD6A0(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_2289B1CD4(MEMORY[0x277CCB510], &qword_27D8629E8, MEMORY[0x277CCB510]);
      goto LABEL_7;
    }

    sub_2289AF63C(v17, a3 & 1, MEMORY[0x277CCB510], &qword_27D8629E8, MEMORY[0x277CCB510]);
    v28 = sub_2289AD6A0(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_2289B0CB8(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_22911CB1C();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = sub_22911C00C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

uint64_t sub_2289B096C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2289AD318(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2289AFAE4(v16, a4 & 1);
      v11 = sub_2289AD318(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_22911CB1C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_2289B2030();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

_OWORD *sub_2289B0AE8(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_2289B3C48(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_2289B0B54(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_22911BE5C();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_2289B0C0C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_22911C00C();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_2289B0CB8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_22911B8DC();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_22911C00C();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

void *sub_2289B0DAC()
{
  v1 = v0;
  sub_2289B3D48(0, &qword_27D862B00, sub_2289B3DAC);
  v2 = *v0;
  v3 = sub_22911CA5C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_2289B0F34()
{
  v1 = v0;
  sub_2289B3B18();
  v2 = *v0;
  v3 = sub_22911CA5C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_2289B3CA4(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_2289B3C48(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_2289B1104()
{
  v1 = v0;
  v31 = sub_22911BE5C();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2289B22F8(0);
  v3 = *v0;
  v4 = sub_22911CA5C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = (v3 + 64);
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, v27, 8 * v7);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    v15 = v5;
    if (v13)
    {
      do
      {
        v16 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_17:
        v19 = v16 | (v9 << 6);
        v20 = v33;
        v21 = *(v33 + 72) * v19;
        v23 = v30;
        v22 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v21, v31);
        v24 = *(*(v3 + 56) + 8 * v19);
        result = (*(v20 + 32))(*(v15 + 48) + v21, v23, v22);
        *(*(v15 + 56) + 8 * v19) = v24;
        v13 = v34;
      }

      while (v34);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_21;
      }

      v18 = *(v27 + v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v34 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v5;
  }

  return result;
}

id sub_2289B1384(unint64_t *a1, unint64_t *a2, void *a3)
{
  v4 = v3;
  sub_2289B3894(0, a1, a2, a3);
  v5 = *v3;
  v6 = sub_22911CA5C();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = (*(v5 + 48) + 16 * v20);
        v22 = v21[1];
        v23 = *(*(v5 + 56) + 8 * v20);
        v24 = (*(v7 + 48) + 16 * v20);
        *v24 = *v21;
        v24[1] = v22;
        *(*(v7 + 56) + 8 * v20) = v23;

        result = v23;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {
        goto LABEL_19;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v4 = v7;
  }

  return result;
}

void *sub_2289B14F0()
{
  v1 = v0;
  v31 = sub_22911BD4C();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2289B36DC(0);
  v3 = *v0;
  v4 = sub_22911CA5C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = (v3 + 64);
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, v27, 8 * v7);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;

        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_21;
      }

      v17 = *(v27 + v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v5;
  }

  return result;
}

void *sub_2289B175C()
{
  v1 = v0;
  sub_2289B37A4(0, &qword_27D862A88, MEMORY[0x277D84460]);
  v2 = *v0;
  v3 = sub_22911CA5C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_2289B18EC()
{
  v1 = v0;
  sub_2289B334C(0);
  v2 = *v0;
  v3 = sub_22911CA5C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_2289B1A44()
{
  v1 = v0;
  v30 = sub_22911C00C();
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v29 = v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2289B3448(0);
  v3 = *v0;
  v4 = sub_22911CA5C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v27[0] = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v10 = 0;
    v11 = *(v3 + 16);
    v31 = v5;
    *(v5 + 16) = v11;
    v12 = 1 << *(v3 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v3 + 64);
    v15 = (v12 + 63) >> 6;
    v27[1] = v32 + 32;
    v27[2] = v32 + 16;
    for (i = v3; v14; v3 = i)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_17:
      v19 = v16 | (v10 << 6);
      v20 = *(v3 + 56);
      v21 = *(*(v3 + 48) + 8 * v19);
      v22 = v32;
      v23 = *(v32 + 72) * v19;
      v25 = v29;
      v24 = v30;
      (*(v32 + 16))(v29, v20 + v23, v30);
      v26 = v31;
      *(*(v31 + 48) + 8 * v19) = v21;
      (*(v22 + 32))(*(v26 + 56) + v23, v25, v24);
      result = v21;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27[0];
        v5 = v31;
        goto LABEL_21;
      }

      v18 = *(v7 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v5;
  }

  return result;
}

char *sub_2289B1CD4(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = v3;
  v46 = a1(0);
  v49 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = &v35 - v7;
  v44 = sub_22911B8DC();
  v48 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2289B3630(0, a2, a3);
  v9 = *v3;
  v10 = sub_22911CA5C();
  v11 = v10;
  if (*(v9 + 16))
  {
    result = (v10 + 64);
    v13 = (v9 + 64);
    v14 = ((1 << *(v11 + 32)) + 63) >> 6;
    v35 = v6;
    v36 = v9 + 64;
    if (v11 != v9 || result >= &v13[8 * v14])
    {
      result = memmove(result, v13, 8 * v14);
    }

    v15 = 0;
    v16 = *(v9 + 16);
    v47 = v11;
    *(v11 + 16) = v16;
    v17 = 1 << *(v9 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v9 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = v48 + 16;
    v41 = v20;
    v38 = v48 + 32;
    v39 = v49 + 16;
    v37 = v49 + 32;
    v42 = v9;
    v22 = v43;
    v21 = v44;
    if (v19)
    {
      do
      {
        v23 = __clz(__rbit64(v19));
        v50 = (v19 - 1) & v19;
LABEL_14:
        v26 = v23 | (v15 << 6);
        v27 = v48;
        v28 = *(v48 + 72) * v26;
        (*(v48 + 16))(v22, *(v9 + 48) + v28, v21);
        v29 = v49;
        v30 = *(v49 + 72) * v26;
        v31 = v45;
        v32 = v46;
        (*(v49 + 16))(v45, *(v9 + 56) + v30, v46);
        v33 = v47;
        (*(v27 + 32))(*(v47 + 48) + v28, v22, v21);
        v34 = *(v33 + 56);
        v9 = v42;
        result = (*(v29 + 32))(v34 + v30, v31, v32);
        v20 = v41;
        v19 = v50;
      }

      while (v50);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v6 = v35;
        v11 = v47;
        goto LABEL_18;
      }

      v25 = *(v36 + 8 * v15);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v50 = (v25 - 1) & v25;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v6 = v11;
  }

  return result;
}

void *sub_2289B2030()
{
  v1 = v0;
  sub_2289B3D48(0, &qword_27D8629F0, sub_2289B2618);
  v2 = *v0;
  v3 = sub_22911CA5C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_2289B21B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2289B3D48(0, &qword_27D862B00, sub_2289B3DAC);
    v3 = sub_22911CA7C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_2289AD318(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_2289B22F8(uint64_t a1)
{
  if (!qword_27D8629B8)
  {
    sub_22911BE5C();
    sub_2289B2394(&qword_27D8629C0, MEMORY[0x277CCB418], MEMORY[0x277CCB420]);
    v1 = sub_22911CA8C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8629B8);
    }
  }
}

uint64_t sub_2289B2394(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2289B23DC(uint64_t a1)
{
  sub_2289B25B0(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_2289B22F8(0);
    v8 = sub_22911CA7C();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_2289B3B7C(v10, v6, sub_2289B25B0);
      result = sub_2289AD390(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_22911BE5C();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_2289B25B0(uint64_t a1)
{
  if (!qword_27D8629D0)
  {
    sub_22911BE5C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D8629D0);
    }
  }
}

void sub_2289B2618(uint64_t a1)
{
  if (!qword_27D8629F8)
  {
    sub_22911C00C();
    v1 = sub_22911C4BC();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8629F8);
    }
  }
}

unint64_t sub_2289B26A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2289B3B18();
    v3 = sub_22911CA7C();
    v4 = a1 + 32;

    while (1)
    {
      sub_2289B3B7C(v4, &v13, sub_2289B3BE4);
      v5 = v13;
      v6 = v14;
      result = sub_2289AD318(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2289B3C48(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2289B27F8(uint64_t a1)
{
  sub_2289B38FC(0, &qword_27D862AA8, MEMORY[0x277CCB558], sub_2289B3978);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_2289B39E4(0);
    v8 = sub_22911CA7C();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_2289B3A90(v10, v6, &qword_27D862AA8, MEMORY[0x277CCB558], sub_2289B3978);
      result = sub_2289AD464(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_22911C0DC();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      result = sub_2289B3B00(&v6[v9], (v8[7] + 48 * v14));
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2289B2A38(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_2289B3894(0, a2, a3, a4);
    v6 = sub_22911CA7C();

    for (i = (a1 + 48); ; i += 3)
    {
      v8 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;

      v11 = v10;
      result = sub_2289AD318(v8, v9);
      if (v13)
      {
        break;
      }

      *(v6 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v6[6] + 16 * result);
      *v14 = v8;
      v14[1] = v9;
      *(v6[7] + 8 * result) = v11;
      v15 = v6[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v6[2] = v17;
      if (!--v4)
      {

        return v6;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2289B2B30(uint64_t a1)
{
  sub_2289B3808(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_2289B36DC(0);
    v8 = sub_22911CA7C();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_2289B3B7C(v10, v6, sub_2289B3808);
      result = sub_2289AD538(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_22911BD4C();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2289B2D04(uint64_t a1)
{
  sub_2289B34F4(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_2289B3448(0);
    v8 = sub_22911CA7C();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_2289B3B7C(v10, v6, sub_2289B34F4);
      v12 = *v6;
      result = sub_2289AD774(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = sub_22911C00C();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v6 + v9, v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2289B2ED8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2289B334C(0);
    v3 = sub_22911CA7C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_2289AD7C4(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2289B2FC4(uint64_t a1)
{
  sub_2289B38FC(0, &qword_27D862A00, MEMORY[0x277CC95F0], MEMORY[0x277CCB510]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_2289B3630(0, &qword_27D8629E8, MEMORY[0x277CCB510]);
    v8 = sub_22911CA7C();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_2289B3A90(v10, v6, &qword_27D862A00, MEMORY[0x277CC95F0], MEMORY[0x277CCB510]);
      result = sub_2289AD6A0(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_22911B8DC();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = sub_22911C00C();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2289B3238(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2289B3D48(0, &qword_27D8629F0, sub_2289B2618);
    v3 = sub_22911CA7C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2289AD318(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_2289B334C(uint64_t a1)
{
  if (!qword_27D862A10)
  {
    sub_2289B3D00(255, &qword_27D862A08, off_27860F5C8);
    sub_2289B2618(255);
    sub_2289B33F8(&qword_27D862A18, &qword_27D862A08, off_27860F5C8);
    v1 = sub_22911CA8C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D862A10);
    }
  }
}

uint64_t sub_2289B33F8(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2289B3D00(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2289B3448(uint64_t a1)
{
  if (!qword_27D862A28)
  {
    sub_2289B3D00(255, &qword_27D862A20, 0x277CBC5D0);
    sub_22911C00C();
    sub_2289B33F8(&qword_27D862A30, &qword_27D862A20, 0x277CBC5D0);
    v1 = sub_22911CA8C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D862A28);
    }
  }
}

void sub_2289B34F4(uint64_t a1)
{
  if (!qword_27D862A38)
  {
    sub_2289B3D00(255, &qword_27D862A20, 0x277CBC5D0);
    sub_22911C00C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D862A38);
    }
  }
}

void sub_2289B3574(uint64_t a1)
{
  if (!qword_27D862A48)
  {
    sub_2289B3D00(255, &qword_27D862A40, off_27860E1E8);
    sub_2289B3D00(255, &qword_27D862A50, off_27860DB28);
    sub_2289B33F8(&qword_27D862A58, &qword_27D862A40, off_27860E1E8);
    v1 = sub_22911CA8C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D862A48);
    }
  }
}

void sub_2289B3630(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_22911B8DC();
    a3(255);
    sub_2289B2394(&qword_27D8629D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v5 = sub_22911CA8C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2289B36DC(uint64_t a1)
{
  if (!qword_27D862A68)
  {
    sub_22911BD4C();
    sub_2289B37A4(255, &qword_27D862A70, MEMORY[0x277D834F8]);
    sub_2289B2394(&qword_27D862A78, MEMORY[0x277CCB3C0], MEMORY[0x277CCB3C8]);
    v1 = sub_22911CA8C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D862A68);
    }
  }
}

void sub_2289B37A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D83B88], MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2289B3808(uint64_t a1)
{
  if (!qword_27D862A90)
  {
    sub_22911BD4C();
    sub_2289B37A4(255, &qword_27D862A70, MEMORY[0x277D834F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D862A90);
    }
  }
}

void sub_2289B3894(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_2289B3D00(255, a3, a4);
    v5 = sub_22911CA8C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2289B38FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_2289B3978()
{
  result = qword_27D862AB0;
  if (!qword_27D862AB0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D862AB0);
  }

  return result;
}

void sub_2289B39E4(uint64_t a1)
{
  if (!qword_27D862AB8)
  {
    sub_22911C0DC();
    sub_2289B3978();
    sub_2289B2394(&qword_27D862A98, MEMORY[0x277CCB558], MEMORY[0x277CCB560]);
    v1 = sub_22911CA8C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D862AB8);
    }
  }
}

uint64_t sub_2289B3A90(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  sub_2289B38FC(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

_OWORD *sub_2289B3B00(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

void sub_2289B3B18()
{
  if (!qword_27D862AC0)
  {
    v0 = sub_22911CA8C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D862AC0);
    }
  }
}

uint64_t sub_2289B3B7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2289B3BE4()
{
  if (!qword_27D862AC8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D862AC8);
    }
  }
}

_OWORD *sub_2289B3C48(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_2289B3CA4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2289B3D00(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_2289B3D48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22911CA8C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2289B3DAC()
{
  if (!qword_27D862B08)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D862B08);
    }
  }
}

void sub_2289B3E10(uint64_t *a1@<X8>)
{
  sub_2289B4304(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22911B8DC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2289B435C(0);
  v71 = v10;
  v11 = v10[12];
  v12 = [v1 contactIdentifier];
  v13 = sub_22911C35C();
  v15 = v14;

  *a1 = v13;
  a1[1] = v15;
  v16 = [v1 UUID];
  sub_22911B8CC();

  (*(v7 + 32))(a1 + v11, v9, v6);
  v17 = [v1 invitationUUID];
  if (v17)
  {
    v18 = v17;
    sub_22911B8CC();

    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  (*(v7 + 56))(v5, v19, 1, v6);
  v20 = v71;
  sub_2289B453C(v5, a1 + v71[16]);
  v21 = [v1 relationshipStatus];
  if (v21)
  {
    v22 = v21;
    [v21 longLongValue];

    v23 = HKStringForSharingStatus();
    v24 = sub_22911C35C();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  v27 = (a1 + v20[20]);
  *v27 = v24;
  v27[1] = v26;
  v28 = [v1 relationshipDirection];
  if (v28)
  {
    v29 = v28;
    v30 = [v28 longLongValue];

    if ((v30 & 0x8000000000000000) != 0)
    {
      __break(1u);
      return;
    }

    v31 = HKStringForMessageDirection();
    v32 = sub_22911C35C();
    v34 = v33;
  }

  else
  {
    v32 = 0;
    v34 = 0;
  }

  v35 = (a1 + v20[24]);
  *v35 = v32;
  v35[1] = v34;
  v36 = [v1 relationshipType];
  if (v36)
  {
    v37 = v36;
    [v36 longLongValue];

    v38 = HKStringForSharingType();
    v39 = sub_22911C35C();
    v41 = v40;
  }

  else
  {
    v39 = 0;
    v41 = 0;
  }

  v42 = (a1 + v20[28]);
  *v42 = v39;
  v42[1] = v41;
  v43 = [v1 notificationStatus];
  if (v43)
  {
    v44 = v43;
    [v43 longLongValue];

    v45 = HKStringForNotificationStatus();
    v46 = sub_22911C35C();
    v48 = v47;
  }

  else
  {
    v46 = 0;
    v48 = 0;
  }

  v49 = (a1 + v20[32]);
  *v49 = v46;
  v49[1] = v48;
  v50 = [v1 lastName];
  if (v50)
  {
    v51 = v50;
    v52 = sub_22911C35C();
    v54 = v53;
  }

  else
  {
    v52 = 0;
    v54 = 0;
  }

  v55 = (a1 + v20[36]);
  *v55 = v52;
  v55[1] = v54;
  v56 = [v1 firstName];
  if (v56)
  {
    v57 = v56;
    v58 = sub_22911C35C();
    v60 = v59;
  }

  else
  {
    v58 = 0;
    v60 = 0;
  }

  v61 = (a1 + v20[40]);
  *v61 = v58;
  v61[1] = v60;
  v62 = [v1 cloudKitIdentifier];
  if (v62)
  {
    v63 = v62;
    v64 = sub_22911C35C();
    v66 = v65;
  }

  else
  {
    v64 = 0;
    v66 = 0;
  }

  v67 = (a1 + v20[44]);
  *v67 = v64;
  v67[1] = v66;
  v68 = *MEMORY[0x277CCB490];
  v69 = sub_22911BF0C();
  (*(*(v69 - 8) + 104))(a1, v68, v69);
}

void sub_2289B4304(uint64_t a1)
{
  if (!qword_27D8630C0)
  {
    sub_22911B8DC();
    v1 = sub_22911C6CC();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8630C0);
    }
  }
}

void sub_2289B435C(uint64_t a1)
{
  if (!qword_27D862B10)
  {
    MEMORY[0x28223BE20](a1);
    sub_22911B8DC();
    sub_2289B4304(255);
    sub_2289B44EC();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27D862B10);
    }
  }
}

void sub_2289B44EC()
{
  if (!qword_27D862B18)
  {
    v0 = sub_22911C6CC();
    if (!v1)
    {
      atomic_store(v0, &qword_27D862B18);
    }
  }
}

uint64_t sub_2289B453C(uint64_t a1, uint64_t a2)
{
  sub_2289B4304(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_2289B45A0@<X0>(void *a1@<X8>)
{
  result = [type metadata accessor for HDHRDomainSnapshotEntity() defaultForeignKey];
  *a1 = 0xD000000000000017;
  a1[1] = 0x8000000229181F40;
  a1[2] = 0xD000000000000012;
  a1[3] = 0x8000000229181F60;
  a1[4] = result;
  return result;
}

id HDHRDomainSnapshotMEntity.__allocating_init(persistentID:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithPersistentID_];
}

id HDHRDomainSnapshotMEntity.init(persistentID:)(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for HDHRDomainSnapshotMEntity();
  return objc_msgSendSuper2(&v4, sel_initWithPersistentID_, a1);
}

id HDHRDomainSnapshotMEntity.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HDHRDomainSnapshotMEntity.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HDHRDomainSnapshotMEntity();
  return objc_msgSendSuper2(&v2, sel_init);
}

id HDHRDomainSnapshotMEntity.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HDHRDomainSnapshotMEntity();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2289B47F0()
{
  sub_2289B3D00(0, &qword_27D862B28, off_27860DF68);
  sub_2289B4AE8();
  v1 = v0;
  if (swift_dynamicCast())
  {
    sub_2289B4C00(v5, v7);
    v2 = v8;
    v3 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    (*(v3 + 8))(v2, v3);
    return __swift_destroy_boxed_opaque_existential_0(v7);
  }

  else
  {
    v6 = 0;
    memset(v5, 0, sizeof(v5));
    sub_2289B4B4C(v5);
    result = sub_22911CA2C();
    __break(1u);
  }

  return result;
}

HDCloudSyncRecordPrintDescription __swiftcall HDCloudSyncRecordPrintDescription.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t sub_2289B4AE8()
{
  result = qword_27D862B30;
  if (!qword_27D862B30)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D862B30);
  }

  return result;
}

uint64_t sub_2289B4B4C(uint64_t a1)
{
  sub_2289B4BA8(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2289B4BA8(uint64_t a1)
{
  if (!qword_27D862B38)
  {
    sub_2289B4AE8();
    v1 = sub_22911C6CC();
    if (!v2)
    {
      atomic_store(v1, &qword_27D862B38);
    }
  }
}

uint64_t sub_2289B4C00(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void *sub_2289B4C5C@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v2 = sub_22911B88C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v35 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22911BF9C();
  v6 = *(v5 - 8);
  v36 = v5;
  v37 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v1 medicalIDData];
  if (v9)
  {
    v10 = v9;
    if ([v9 hasDateSaved])
    {
      [v10 dateSaved];
      v11 = HDDecodeDateForValue();
      sub_22911B86C();

      v12 = 0;
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 1;
  }

  (*(v3 + 56))(v31, v12, 1, v2);
  v13 = [v1 medicalIDLogs];
  if (!v13)
  {
    v19 = 0;
LABEL_27:
    sub_2289B50C0(0);
    v27 = v31;
    *(v31 + *(v26 + 48)) = v19;
    v28 = *MEMORY[0x277CCB4D8];
    v29 = sub_22911BF0C();
    return (*(*(v29 - 8) + 104))(v27, v28, v29);
  }

  v14 = v13;
  sub_2289B5228();
  v15 = sub_22911C45C();

  if (v15 >> 62)
  {
    goto LABEL_25;
  }

  v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
LABEL_26:

    v19 = MEMORY[0x277D84F90];
    goto LABEL_27;
  }

  while (1)
  {
    v39 = MEMORY[0x277D84F90];
    result = sub_2289FD398(0, v16 & ~(v16 >> 63), 0);
    if (v16 < 0)
    {
      break;
    }

    v18 = 0;
    v19 = v39;
    v32 = v15 & 0xFFFFFFFFFFFFFF8;
    v33 = v37 + 32;
    v34 = v15 & 0xC000000000000001;
    while (!__OFADD__(v18, 1))
    {
      v38 = v18 + 1;
      if (v34)
      {
        v20 = MEMORY[0x22AAC6410](v18, v15);
      }

      else
      {
        if (v18 >= *(v32 + 16))
        {
          goto LABEL_24;
        }

        v20 = *(v15 + 8 * v18 + 32);
      }

      v21 = v20;
      result = [v20 event];
      if (!result)
      {
        goto LABEL_29;
      }

      v22 = result;
      sub_22911C35C();

      [v21 timeStamp];
      v23 = HDDecodeDateForValue();
      sub_22911B86C();

      sub_22911BF8C();
      v39 = v19;
      v25 = *(v19 + 16);
      v24 = *(v19 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_2289FD398((v24 > 1), v25 + 1, 1);
        v19 = v39;
      }

      *(v19 + 16) = v25 + 1;
      (*(v37 + 32))(v19 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v25, v8, v36);
      ++v18;
      if (v38 == v16)
      {

        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    v16 = sub_22911C78C();
    if (!v16)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

void sub_2289B50C0(uint64_t a1)
{
  if (!qword_27D862B40)
  {
    v1 = MEMORY[0x277D83D88];
    sub_2289B51C4(255, &qword_27D862B48, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    sub_2289B51C4(255, &qword_27D862B50, sub_2289B5190, v1);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D862B40);
    }
  }
}

void sub_2289B51C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_2289B5228()
{
  result = qword_27D862B60;
  if (!qword_27D862B60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D862B60);
  }

  return result;
}

uint64_t static HDHRDemoEntity.properties.getter()
{
  sub_2289B5AD4();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_229163C50;
  *(v0 + 32) = sub_22911C35C();
  *(v0 + 40) = v1;
  *(v0 + 48) = 0x7461645F6F6D6564;
  *(v0 + 56) = 0xE900000000000061;
  return v0;
}

id HDHRDemoEntity.__allocating_init(persistentID:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithPersistentID_];
}

id HDHRDemoEntity.init(persistentID:)(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for HDHRDemoEntity();
  return objc_msgSendSuper2(&v4, sel_initWithPersistentID_, a1);
}

id HDHRDemoEntity.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HDHRDemoEntity.init()(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for HDHRDemoEntity();
  return objc_msgSendSuper2(&v4, sel_init);
}

id HDHRDemoEntity.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for HDHRDemoEntity();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t _s12HealthDaemon14HDHRDemoEntityC7columnsSaySo014HDSQLiteSchemaD0C0aB10FoundationE16ColumnDefinitionVGvgZ_0()
{
  v0 = sub_22911C66C();
  v23 = v0;
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2289B5B48(0, &qword_27D862B88, MEMORY[0x277D10A20]);
  v4 = *(sub_22911C68C() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v25 = 2 * *(v4 + 72);
  v6 = swift_allocObject();
  v24 = v6;
  *(v6 + 16) = xmmword_229163C60;
  v22 = v6 + v5;
  v7 = swift_allocObject();
  *(v7 + 16) = 0xD000000000000021;
  *(v7 + 24) = 0x80000002291820F0;
  *v3 = v7;
  v8 = *(v1 + 104);
  v8(v3, *MEMORY[0x277D109D0], v0);
  sub_22911C67C();
  sub_22911C35C();
  sub_2289B5B9C(0);
  v10 = v9;
  v11 = swift_allocBox();
  v13 = v12;
  v14 = *(v10 + 48);
  *v12 = 0xD000000000000010;
  *(v12 + 1) = 0x8000000229182120;
  v15 = *MEMORY[0x277D109B8];
  v16 = sub_22911C64C();
  (*(*(v16 - 8) + 104))(&v13[v14], v15, v16);
  *v3 = v11;
  v17 = v23;
  v8(v3, *MEMORY[0x277D109C8], v23);
  sub_22911C67C();
  v18 = sub_22911C65C();
  v19 = swift_allocBox();
  (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D109D8], v18);
  *v3 = v19;
  v8(v3, *MEMORY[0x277D109E8], v17);
  sub_22911C67C();
  return v24;
}

void sub_2289B5A00(uint64_t a1)
{
  if (!qword_27D862B70)
  {
    sub_2289B3D00(255, &qword_27D862AF8, 0x277D10B38);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D862B70);
    }
  }
}

uint64_t sub_2289B5A78(uint64_t a1)
{
  sub_2289B5A00(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2289B5AD4()
{
  if (!qword_27D862B80)
  {
    v0 = sub_22911CABC();
    if (!v1)
    {
      atomic_store(v0, &qword_27D862B80);
    }
  }
}

void sub_2289B5B48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22911CABC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2289B5B9C(uint64_t a1)
{
  if (!qword_27D862B90)
  {
    sub_22911C64C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D862B90);
    }
  }
}

Swift::Void __swiftcall HDAnalyticsSubmissionCoordinator.maintenanceCoordinator_reportCoreAnalytics(operationName:database:pendingOperationsCount:activeOperationsCount:timeUntilStart:canceled:timedOut:elapsedTime:isImmediateRequest:async:)(Swift::String operationName, Swift::String database, Swift::Int pendingOperationsCount, Swift::Int activeOperationsCount, Swift::Int timeUntilStart, Swift::Bool canceled, Swift::Bool timedOut, Swift::Int elapsedTime, Swift::Bool isImmediateRequest, Swift::Bool async)
{
  object = database._object;
  countAndFlagsBits = database._countAndFlagsBits;
  v14 = operationName._object;
  v15 = operationName._countAndFlagsBits;
  v20 = sub_22911C34C();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v14;
  *(v16 + 32) = countAndFlagsBits;
  *(v16 + 40) = object;
  *(v16 + 48) = pendingOperationsCount;
  *(v16 + 56) = activeOperationsCount;
  *(v16 + 64) = timeUntilStart;
  *(v16 + 72) = canceled;
  *(v16 + 73) = timedOut;
  *(v16 + 80) = elapsedTime;
  *(v16 + 88) = isImmediateRequest;
  *(v16 + 89) = async;
  aBlock[4] = sub_2289B6000;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2289B6004;
  aBlock[3] = &block_descriptor;
  v17 = _Block_copy(aBlock);

  [v21 sendEvent:v20 block:v17];
  _Block_release(v17);
}

unint64_t sub_2289B5D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, unsigned __int8 a9, uint64_t a10, unsigned __int8 a11, unsigned __int8 a12)
{
  sub_2289B62D4(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_229163CD0;
  strcpy((inited + 32), "operationName");
  *(inited + 46) = -4864;
  *(inited + 48) = sub_22911C34C();
  *(inited + 56) = 0x6573616261746164;
  *(inited + 64) = 0xE800000000000000;
  *(inited + 72) = sub_22911C34C();
  *(inited + 80) = 0xD000000000000016;
  *(inited + 88) = 0x80000002291821D0;
  *(inited + 96) = sub_22911C56C();
  *(inited + 104) = 0xD000000000000015;
  *(inited + 112) = 0x80000002291821F0;
  *(inited + 120) = sub_22911C56C();
  strcpy((inited + 128), "timeUntilStart");
  *(inited + 143) = -18;
  *(inited + 144) = sub_22911C56C();
  *(inited + 152) = 0x64656C65636E6163;
  *(inited + 160) = 0xE800000000000000;
  sub_2289B3D00(0, &unk_280D679B0, 0x277CCABB0);
  *(inited + 168) = sub_22911C69C();
  *(inited + 176) = 0x74754F64656D6974;
  *(inited + 184) = 0xE800000000000000;
  *(inited + 192) = sub_22911C69C();
  *(inited + 200) = 0x5464657370616C65;
  *(inited + 208) = 0xEB00000000656D69;
  *(inited + 216) = sub_22911C56C();
  *(inited + 224) = 0xD000000000000012;
  *(inited + 232) = 0x8000000229182210;
  *(inited + 240) = sub_22911C69C();
  *(inited + 248) = 0x636E797361;
  *(inited + 256) = 0xE500000000000000;
  *(inited + 264) = sub_22911C69C();
  v13 = sub_2289B268C(inited);
  swift_setDeallocating();
  sub_2289B632C(0);
  swift_arrayDestroy();
  return v13;
}

id sub_2289B6004(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  sub_2289B3D00(0, &qword_280D678B0, 0x277D82BB8);
  v3 = sub_22911C2BC();

  return v3;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 90, 7);
}

void sub_2289B62D4(uint64_t a1)
{
  if (!qword_280D67898)
  {
    sub_2289B632C(255);
    v1 = sub_22911CABC();
    if (!v2)
    {
      atomic_store(v1, &qword_280D67898);
    }
  }
}

void sub_2289B632C(uint64_t a1)
{
  if (!qword_280D678A0)
  {
    sub_2289B3D00(255, &qword_280D678B0, 0x277D82BB8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280D678A0);
    }
  }
}

uint64_t sub_2289B63B0()
{
  v0 = sub_22911B95C();
  __swift_allocate_value_buffer(v0, qword_27D86A948);
  __swift_project_value_buffer(v0, qword_27D86A948);
  _HKInitializeLogging();
  v1 = HKLogWorkoutsCategory();
  return sub_22911B96C();
}

id HDSwimmingEventCollector.__allocating_init(profile:delegate:)(void *a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(v2) initWithProfile:a1 delegate:a2];

  swift_unknownObjectRelease();
  return v4;
}

id HDSwimmingEventCollector.init(profile:delegate:)(void *a1, uint64_t a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for HDSwimmingEventCollector();
  v5 = objc_msgSendSuper2(&v7, sel_initWithProfile_delegate_, a1, a2);

  swift_unknownObjectRelease();
  return v5;
}

void sub_2289B6550(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_22911B8DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27D862780 != -1)
  {
    swift_once();
  }

  v8 = sub_22911B95C();
  __swift_project_value_buffer(v8, qword_27D86A948);
  (*(v5 + 16))(v7, a1, v4);
  v9 = sub_22911B94C();
  v10 = sub_22911C5FC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v24 = v1;
    v12 = v11;
    v13 = swift_slowAlloc();
    v25 = v13;
    *v12 = 136446466;
    v14 = sub_22911CBAC();
    v16 = sub_2289B9170(v14, v15, &v25);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    sub_2289B98BC(&qword_27D862B98, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v17 = sub_22911CAAC();
    v19 = v18;
    (*(v5 + 8))(v7, v4);
    v20 = sub_2289B9170(v17, v19, &v25);

    *(v12 + 14) = v20;
    _os_log_impl(&dword_228986000, v9, v10, "%{public}s Starting swimming event collector for sessionID: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAC9830](v13, -1, -1);
    v21 = v12;
    v2 = v24;
    MEMORY[0x22AAC9830](v21, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v22 = sub_22911B8BC();
  v23 = type metadata accessor for HDSwimmingEventCollector();
  v26.receiver = v2;
  v26.super_class = v23;
  objc_msgSendSuper2(&v26, sel_startWithSessionId_, v22);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id sub_2289B6960()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_27D862780 != -1)
  {
    swift_once();
  }

  v2 = sub_22911B95C();
  __swift_project_value_buffer(v2, qword_27D86A948);
  v3 = sub_22911B94C();
  v4 = sub_22911C5FC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v7 = sub_22911CBAC();
    v9 = sub_2289B9170(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_228986000, v3, v4, "%{public}s Stopping swimming event collector", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x22AAC9830](v6, -1, -1);
    MEMORY[0x22AAC9830](v5, -1, -1);
  }

  v10 = type metadata accessor for HDSwimmingEventCollector();
  v13.receiver = v1;
  v13.super_class = v10;
  return objc_msgSendSuper2(&v13, sel_stop);
}

void sub_2289B6B24(unint64_t a1, void *a2)
{
  swift_getObjectType();
  if (!(a1 >> 62))
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }

    v33 = a2;
    goto LABEL_4;
  }

  if (sub_22911C78C() > 0)
  {
    v33 = a2;
    v28 = sub_22911C78C();
    if (v28)
    {
      v4 = v28;
      if (v28 < 1)
      {
        __break(1u);
        return;
      }

LABEL_4:
      v5 = a2;
      swift_beginAccess();
      v6 = 0;
      v7 = 0;
      v29 = v4;
      while ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x22AAC6410](v7, a1);
        if (v6)
        {
          goto LABEL_8;
        }

LABEL_9:
        v9 = qword_27D862780;
        v10 = v8;
        if (v9 != -1)
        {
          swift_once();
        }

        v11 = sub_22911B95C();
        __swift_project_value_buffer(v11, qword_27D86A948);
        v12 = sub_22911B94C();
        v13 = sub_22911C5FC();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          v15 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v32 = v31;
          *v14 = 136446722;
          v16 = sub_22911CBAC();
          log = v12;
          v18 = sub_2289B9170(v16, v17, &v32);

          *(v14 + 4) = v18;
          *(v14 + 12) = 2112;
          *(v14 + 14) = v5;
          *(v14 + 22) = 2112;
          *(v14 + 24) = v10;
          *v15 = v5;
          v15[1] = v10;
          v19 = v10;
          v20 = v5;
          _os_log_impl(&dword_228986000, log, v13, "%{public}s Calculating difference for prior swim data %@ and current swim data %@", v14, 0x20u);
          sub_2289B9904(0, &qword_27D862BA0, sub_2289B9700, MEMORY[0x277D83D88]);
          swift_arrayDestroy();
          MEMORY[0x22AAC9830](v15, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v31);
          MEMORY[0x22AAC9830](v31, -1, -1);
          v21 = v14;
          v4 = v29;
          MEMORY[0x22AAC9830](v21, -1, -1);
        }

        else
        {
        }

        v22 = v10;
        v23 = v5;
        v24 = sub_2289B75A0(v23, v22);

        if (v24)
        {
          sub_2289B6F58(v24, 5);
        }

        v25 = v22;
        v26 = v23;
        v27 = sub_2289B82F8(v26, v25);

        if (v27)
        {
          sub_2289B6F58(v27, 9);
        }

        ++v7;

        v33 = v25;
        v5 = v25;

        v6 = 1;
        if (v4 == v7)
        {

          return;
        }
      }

      v8 = *(a1 + 8 * v7 + 32);
      if ((v6 & 1) == 0)
      {
        goto LABEL_9;
      }

LABEL_8:

      goto LABEL_9;
    }
  }
}

void sub_2289B6F58(void *a1, NSObject *a2)
{
  v3 = v2;
  v58 = a2;
  ObjectType = swift_getObjectType();
  v6 = sub_22911B7DC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22911B8DC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v53 - v15;
  v17 = [v3 sessionId];
  if (v17)
  {
    v53[1] = ObjectType;
    v57 = v3;
    v18 = v17;
    sub_22911B8CC();

    v19 = *(v11 + 16);
    v56 = v10;
    v19(v14, v16, v10);
    v20 = [a1 dateInterval];
    sub_22911B7BC();

    v21 = [a1 metadata];
    v54 = v11;
    v55 = v16;
    if (v21)
    {
      v22 = v21;
      v23 = sub_22911C2CC();
    }

    else
    {
      v23 = 0;
    }

    v31 = sub_22911B8BC();
    v32 = sub_22911B7AC();
    if (v23)
    {
      v33 = sub_22911C2BC();
    }

    else
    {
      v33 = 0;
    }

    v34 = objc_allocWithZone(MEMORY[0x277CCDE58]);
    v35 = [v34 initWithEventType:v58 sessionId:v31 dateInterval:v32 metadata:v33];

    (*(v7 + 8))(v9, v6);
    v36 = *(v54 + 8);
    v37 = v14;
    v38 = v56;
    v36(v37, v56);
    if (qword_27D862780 != -1)
    {
      swift_once();
    }

    v39 = sub_22911B95C();
    __swift_project_value_buffer(v39, qword_27D86A948);
    v40 = v35;
    v41 = sub_22911B94C();
    v42 = sub_22911C5FC();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v59 = v58;
      *v43 = 136446466;
      v45 = sub_22911CBAC();
      v47 = sub_2289B9170(v45, v46, &v59);

      *(v43 + 4) = v47;
      *(v43 + 12) = 2112;
      *(v43 + 14) = v40;
      *v44 = v40;
      v48 = v40;
      _os_log_impl(&dword_228986000, v41, v42, "%{public}s Created workout event %@", v43, 0x16u);
      sub_2289B97CC(v44, &qword_27D862BA0, sub_2289B9700);
      MEMORY[0x22AAC9830](v44, -1, -1);
      v49 = v58;
      __swift_destroy_boxed_opaque_existential_0(v58);
      MEMORY[0x22AAC9830](v49, -1, -1);
      MEMORY[0x22AAC9830](v43, -1, -1);
    }

    v50 = v55;
    v51 = [v57 delegate];
    if (v51)
    {
      [v51 receivedWorkoutEvent_];

      swift_unknownObjectRelease();
      v36(v50, v38);
    }

    else
    {
      v36(v50, v38);
    }
  }

  else
  {
    if (qword_27D862780 != -1)
    {
      swift_once();
    }

    v24 = sub_22911B95C();
    __swift_project_value_buffer(v24, qword_27D86A948);
    v58 = sub_22911B94C();
    v25 = sub_22911C5EC();
    if (os_log_type_enabled(v58, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v59 = v27;
      *v26 = 136446210;
      v28 = sub_22911CBAC();
      v30 = sub_2289B9170(v28, v29, &v59);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_228986000, v58, v25, "%{public}s Failed creating event. SessionId cannot be nil", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x22AAC9830](v27, -1, -1);
      MEMORY[0x22AAC9830](v26, -1, -1);
    }

    else
    {
      v52 = v58;
    }
  }
}

id sub_2289B75A0(uint64_t a1, uint64_t a2)
{
  v104 = a1;
  ObjectType = swift_getObjectType();
  v3 = sub_22911B7DC();
  v106 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v103 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v105 = (&v97 - v6);
  v7 = MEMORY[0x277D83D88];
  sub_2289B9904(0, &qword_27D8630C0, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v108 = &v97 - v9;
  v110 = sub_22911B8DC();
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v107 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277CC9578];
  sub_2289B9904(0, &qword_27D862B48, MEMORY[0x277CC9578], v7);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v97 - v16;
  v18 = sub_22911B88C();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v102 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v101 = &v97 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v111 = &v97 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v97 - v26;
  v28 = a2;
  sub_2289B983C(a2 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_startDate, v17, &qword_27D862B48, v11);
  v29 = *(v19 + 48);
  if (v29(v17, 1, v18) == 1)
  {
    v30 = &qword_27D862B48;
    v31 = MEMORY[0x277CC9578];
    v32 = v17;
LABEL_7:
    sub_2289B97CC(v32, v30, v31);
    if (qword_27D862780 != -1)
    {
      swift_once();
    }

    v40 = sub_22911B95C();
    __swift_project_value_buffer(v40, qword_27D86A948);
    v41 = sub_22911B94C();
    v42 = sub_22911C5EC();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *&v115 = v44;
      *v43 = 136446210;
      v45 = sub_22911CBAC();
      v47 = sub_2289B9170(v45, v46, &v115);

      *(v43 + 4) = v47;
      _os_log_impl(&dword_228986000, v41, v42, "%{public}s Unable to calculate lap difference for prior swim data. start, end or sourceID is nil", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x22AAC9830](v44, -1, -1);
      MEMORY[0x22AAC9830](v43, -1, -1);
    }

    return 0;
  }

  v100 = v3;
  v33 = *(v19 + 32);
  v33(v27, v17, v18);
  sub_2289B983C(v28 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_endDate, v15, &qword_27D862B48, MEMORY[0x277CC9578]);
  v34 = v18;
  if (v29(v15, 1, v18) == 1)
  {
    (*(v19 + 8))(v27, v18);
    v30 = &qword_27D862B48;
    v31 = MEMORY[0x277CC9578];
    v32 = v15;
    goto LABEL_7;
  }

  v99 = v27;
  v98 = v19;
  v35 = v111;
  v33(v111, v15, v34);
  v36 = v108;
  sub_2289B983C(v28 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_sourceId, v108, &qword_27D8630C0, MEMORY[0x277CC95F0]);
  v37 = v109;
  v38 = v110;
  if ((v109[6])(v36, 1, v110) == 1)
  {
    v39 = *(v98 + 8);
    v39(v35, v34);
    v39(v99, v34);
    v30 = &qword_27D8630C0;
    v31 = MEMORY[0x277CC95F0];
    v32 = v36;
    goto LABEL_7;
  }

  v49 = v28;
  v37[4](v107, v36, v38);
  v50 = *(v28 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_lapCount);
  v51 = *(v104 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_lapCount);
  v52 = v50 - v51;
  v53 = v98;
  v54 = v99;
  if (__OFSUB__(v50, v51))
  {
    __break(1u);
LABEL_24:
    swift_once();
    goto LABEL_16;
  }

  v28 = v100;
  if (v52 < 1)
  {
    (v37[1])(v107, v38);
    v76 = *(v53 + 8);
    v76(v111, v34);
    v76(v54, v34);
    return 0;
  }

  v55 = *(v98 + 16);
  v55(v101, v99, v34);
  v55(v102, v111, v34);
  v37 = v105;
  sub_22911B7CC();
  v56 = [objc_opt_self() countUnit];
  v52 = [objc_opt_self() quantityWithUnit:v56 doubleValue:v52];

  if (qword_27D862780 != -1)
  {
    goto LABEL_24;
  }

LABEL_16:
  v108 = v34;
  v57 = sub_22911B95C();
  __swift_project_value_buffer(v57, qword_27D86A948);
  v58 = v106;
  v59 = v103;
  (*(v106 + 16))(v103, v37, v28);
  v60 = v52;
  v61 = sub_22911B94C();
  v62 = sub_22911C5FC();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    *&v115 = v104;
    *v63 = 136446722;
    v64 = sub_22911CBAC();
    v66 = sub_2289B9170(v64, v65, &v115);

    *(v63 + 4) = v66;
    *(v63 + 12) = 2080;
    sub_2289B98BC(&qword_27D862BA8, MEMORY[0x277CC88A8], MEMORY[0x277CC88E0]);
    v67 = sub_22911CAAC();
    v69 = v68;
    v70 = *(v58 + 8);
    v70(v59, v28);
    v71 = sub_2289B9170(v67, v69, &v115);

    *(v63 + 14) = v71;
    *(v63 + 22) = 2112;
    *(v63 + 24) = v60;
    v72 = v102;
    *v102 = v60;
    v73 = v60;
    _os_log_impl(&dword_228986000, v61, v62, "%{public}s Creating lap datum with date interval %s and quantity %@", v63, 0x20u);
    sub_2289B97CC(v72, &qword_27D862BA0, sub_2289B9700);
    MEMORY[0x22AAC9830](v72, -1, -1);
    v74 = v104;
    swift_arrayDestroy();
    MEMORY[0x22AAC9830](v74, -1, -1);
    MEMORY[0x22AAC9830](v63, -1, -1);
  }

  else
  {

    v70 = *(v58 + 8);
    v70(v59, v28);
  }

  v75 = v28;
  sub_2289B9904(0, &qword_27D863220, sub_2289B3BE4, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_229163C40;
  *(inited + 32) = sub_22911C35C();
  *(inited + 40) = v78;
  v79 = sub_2289DDE04();
  *(inited + 72) = MEMORY[0x277D83B88];
  *(inited + 48) = v79;
  v80 = sub_2289B26A8(inited);
  swift_setDeallocating();
  sub_2289B9968(inited + 32);
  v81 = *(v49 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_data);
  if ([v81 isSWOLFValid])
  {
    [v81 SWOLF];
    v83 = v82;
    v84 = sub_22911C35C();
    v86 = v85;
    v116 = MEMORY[0x277D839F8];
    *&v115 = v83;
    sub_2289B3C48(&v115, v114);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v113 = v80;
    sub_2289AFF24(v114, v84, v86, isUniquelyReferenced_nonNull_native);
  }

  v88 = objc_allocWithZone(HDQuantityDatum);
  v89 = v107;
  v90 = sub_22911B8BC();
  v91 = v105;
  v92 = sub_22911B7AC();
  v93 = sub_22911C2BC();

  v94 = [v88 initWithIdentifier:v90 dateInterval:v92 quantity:v60 metadata:v93 resumeContextProvider:0];

  v70(v91, v75);
  (v109[1])(v89, v110);
  v95 = *(v98 + 8);
  v96 = v108;
  v95(v111, v108);
  v95(v99, v96);
  return v94;
}

id sub_2289B82F8(uint64_t a1, uint64_t a2)
{
  v113 = a2;
  ObjectType = swift_getObjectType();
  v101 = sub_22911B7DC();
  v105 = *(v101 - 8);
  v3 = MEMORY[0x28223BE20](v101);
  v100 = &v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v106 = &v100 - v5;
  v6 = MEMORY[0x277D83D88];
  sub_2289B9904(0, &qword_27D8630C0, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v107 = &v100 - v8;
  v9 = sub_22911B8DC();
  v110 = *(v9 - 8);
  v111 = v9;
  MEMORY[0x28223BE20](v9);
  v108 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277CC9578];
  sub_2289B9904(0, &qword_27D862B48, MEMORY[0x277CC9578], v6);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = (&v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v17 = &v100 - v16;
  v18 = sub_22911B88C();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v100 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v109 = &v100 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v100 - v28;
  v104 = a1;
  sub_2289B983C(a1 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_endDate, v17, &qword_27D862B48, v11);
  v30 = *(v19 + 48);
  if (v30(v17, 1, v18) == 1)
  {
    sub_2289B97CC(v17, &qword_27D862B48, MEMORY[0x277CC9578]);
    if (qword_27D862780 != -1)
    {
      swift_once();
    }

    v31 = sub_22911B95C();
    __swift_project_value_buffer(v31, qword_27D86A948);
    v32 = sub_22911B94C();
    v33 = sub_22911C5EC();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *&v116 = v35;
      *v34 = 136446210;
      v36 = sub_22911CBAC();
      v38 = sub_2289B9170(v36, v37, &v116);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_228986000, v32, v33, "%{public}s Unable to calculate segment prior end date is nil", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x22AAC9830](v35, -1, -1);
      MEMORY[0x22AAC9830](v34, -1, -1);
    }

    return 0;
  }

  v103 = v19;
  v39 = *(v19 + 32);
  v102 = v29;
  v39();
  v40 = v113;
  sub_2289B983C(v113 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_startDate, v15, &qword_27D862B48, MEMORY[0x277CC9578]);
  v41 = v18;
  if (v30(v15, 1, v18) == 1)
  {
    sub_2289B97CC(v15, &qword_27D862B48, MEMORY[0x277CC9578]);
    v42 = v103;
LABEL_11:
    v47 = v102;
    if (qword_27D862780 != -1)
    {
      swift_once();
    }

    v48 = sub_22911B95C();
    __swift_project_value_buffer(v48, qword_27D86A948);
    v49 = sub_22911B94C();
    v50 = sub_22911C5EC();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *&v116 = v52;
      *v51 = 136446210;
      v53 = sub_22911CBAC();
      v55 = v41;
      v56 = sub_2289B9170(v53, v54, &v116);

      *(v51 + 4) = v56;
      _os_log_impl(&dword_228986000, v49, v50, "%{public}s Unable to calculate segment difference for prior swim data. start or sourceID is nil", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);
      MEMORY[0x22AAC9830](v52, -1, -1);
      MEMORY[0x22AAC9830](v51, -1, -1);

      (*(v42 + 8))(v47, v55);
    }

    else
    {

      (*(v42 + 8))(v47, v41);
    }

    return 0;
  }

  v43 = v109;
  (v39)(v109, v15, v18);
  v44 = v107;
  sub_2289B983C(v40 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_sourceId, v107, &qword_27D8630C0, MEMORY[0x277CC95F0]);
  v46 = v110;
  v45 = v111;
  if ((*(v110 + 48))(v44, 1, v111) == 1)
  {
    v42 = v103;
    (*(v103 + 8))(v43, v18);
    sub_2289B97CC(v44, &qword_27D8630C0, MEMORY[0x277CC95F0]);
    goto LABEL_11;
  }

  (*(v46 + 32))(v108, v44, v45);
  v58 = *(v40 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_segment);
  v59 = *(v104 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_segment);
  v60 = v58 - v59;
  v61 = v103;
  v62 = v102;
  if (__OFSUB__(v58, v59))
  {
    __break(1u);
LABEL_32:
    swift_once();
    goto LABEL_20;
  }

  v15 = v105;
  if (v60 < 1)
  {
    (*(v46 + 8))(v108, v45);
    v84 = *(v61 + 8);
    v84(v43, v41);
    v84(v62, v41);
    return 0;
  }

  v63 = *(v103 + 16);
  v63(v25, v43, v41);
  v107 = v41;
  v63(v22, v62, v41);
  v45 = v106;
  sub_22911B7CC();
  v64 = [objc_opt_self() countUnit];
  v60 = [objc_opt_self() quantityWithUnit:v64 doubleValue:v60];

  if (qword_27D862780 != -1)
  {
    goto LABEL_32;
  }

LABEL_20:
  v65 = sub_22911B95C();
  __swift_project_value_buffer(v65, qword_27D86A948);
  v66 = v100;
  v67 = v45;
  v68 = v101;
  v15[2](v100, v67, v101);
  v69 = v60;
  v70 = sub_22911B94C();
  v71 = sub_22911C5FC();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    *&v116 = v104;
    *v72 = 136446722;
    v74 = sub_22911CBAC();
    v76 = sub_2289B9170(v74, v75, &v116);

    *(v72 + 4) = v76;
    *(v72 + 12) = 2080;
    sub_2289B98BC(&qword_27D862BA8, MEMORY[0x277CC88A8], MEMORY[0x277CC88E0]);
    v77 = sub_22911CAAC();
    v79 = v78;
    v80 = v105[1];
    (v80)(v66, v68);
    v81 = sub_2289B9170(v77, v79, &v116);

    *(v72 + 14) = v81;
    *(v72 + 22) = 2112;
    *(v72 + 24) = v69;
    *v73 = v69;
    v82 = v69;
    _os_log_impl(&dword_228986000, v70, v71, "%{public}s Creating segment datum with date interval %s and quantity %@", v72, 0x20u);
    sub_2289B97CC(v73, &qword_27D862BA0, sub_2289B9700);
    MEMORY[0x22AAC9830](v73, -1, -1);
    v83 = v104;
    swift_arrayDestroy();
    MEMORY[0x22AAC9830](v83, -1, -1);
    MEMORY[0x22AAC9830](v72, -1, -1);
  }

  else
  {

    v80 = v15[1];
    (v80)(v66, v68);
  }

  v85 = *(v113 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_data);
  if ([v85 isSegmentSWOLFValid])
  {
    [v85 segmentSWOLF];
    v87 = v86;
    v88 = sub_2289B26A8(MEMORY[0x277D84F90]);
    v89 = sub_22911C35C();
    v91 = v90;
    v117 = MEMORY[0x277D839F8];
    *&v116 = v87;
    sub_2289B3C48(&v116, v115);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v114 = v88;
    sub_2289AFF24(v115, v89, v91, isUniquelyReferenced_nonNull_native);

    v93 = v114;
  }

  else
  {
    v93 = 0;
  }

  v94 = sub_22911B8BC();
  v95 = sub_22911B7AC();
  if (v93)
  {
    v96 = sub_22911C2BC();
  }

  else
  {
    v96 = 0;
  }

  v97 = [objc_allocWithZone(HDQuantityDatum) initWithIdentifier:v94 dateInterval:v95 quantity:v69 metadata:v96 resumeContextProvider:0];

  (v80)(v106, v68);
  (*(v110 + 8))(v108, v111);
  v98 = *(v103 + 8);
  v99 = v107;
  v98(v109, v107);
  v98(v102, v99);

  return v97;
}

id HDSwimmingEventCollector.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HDSwimmingEventCollector.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HDSwimmingEventCollector();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2289B9170(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2289B923C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2289B3CA4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2289B923C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2289B9348(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_22911C87C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_2289B9348(uint64_t a1, unint64_t a2)
{
  v3 = sub_2289B9394(a1, a2);
  sub_2289B94C4(&unk_283BE3630);
  return v3;
}

void *sub_2289B9394(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2289B95B0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_22911C87C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_22911C40C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2289B95B0(v10, 0);
        result = sub_22911C82C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2289B94C4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2289B9618(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2289B95B0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_2289B99C4();
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2289B9618(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_2289B99C4();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_2289B9700()
{
  result = qword_280D678B0;
  if (!qword_280D678B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D678B0);
  }

  return result;
}

uint64_t sub_2289B97CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2289B9904(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2289B983C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2289B9904(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2289B98BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2289B9904(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2289B9968(uint64_t a1)
{
  sub_2289B3BE4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2289B99C4()
{
  if (!qword_27D862BB0)
  {
    v0 = sub_22911CABC();
    if (!v1)
    {
      atomic_store(v0, &qword_27D862BB0);
    }
  }
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t EpochBasedSyncStateUpdaterDelegate.domain.getter()
{
  v0 = sub_2289BA8B4();

  return v0;
}

id sub_2289B9AE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3();

  v3 = sub_22911C34C();

  return v3;
}

uint64_t EpochBasedSyncStateUpdaterDelegate.key.getter()
{
  v0 = sub_2289BA8E4();

  return v0;
}

id EpochBasedSyncStateUpdaterDelegate.__allocating_init(logger:key:supportedSyncVersionRange:domain:store:maxDataSizeInBytes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v18 = objc_allocWithZone(v9);
  v19 = sub_2289BA914(a1, a2, a3, a4, a5, a6, a7, a8);
  (*(*(*(v9 + 10) - 8) + 8))(a7);
  return v19;
}

id EpochBasedSyncStateUpdaterDelegate.init(logger:key:supportedSyncVersionRange:domain:store:maxDataSizeInBytes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *v8;
  v11 = *MEMORY[0x277D85000];
  v12 = sub_2289BA914(a1, a2, a3, a4, a5, a6, a7, a8);
  (*(*(*((v11 & v10) + 0x50) - 8) + 8))(a7);
  return v12;
}

uint64_t sub_2289B9D98(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getDynamicType();
  sub_2289BCE40();
  return sub_22911C3AC();
}

uint64_t sub_2289B9DEC(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, id *a8)
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v15 = a6;
  v16 = a7;
  v17 = a1;
  v18 = sub_2289BAB34(a3, a4, a5, a8);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v18;
}

uint64_t sub_2289B9E9C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_getObjectType();
  v6 = *v3;
  v7 = *((*MEMORY[0x277D85000] & v6) + 0x58);
  v39 = *((*MEMORY[0x277D85000] & v6) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = swift_dynamicCastUnknownClass();
  swift_unknownObjectRetain();
  v10 = sub_22911B94C();
  if (v9)
  {
    v11 = sub_22911C5DC();
    if (os_log_type_enabled(v10, v11))
    {
      log = v10;
      v12 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v40[0] = v36;
      *v12 = 136446466;
      v13 = sub_22911CBAC();
      v15 = sub_2289B9170(v13, v14, v40);

      *(v12 + 4) = v15;
      *(v12 + 12) = 2080;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v17 = (*(AssociatedConformanceWitness + 56))(AssociatedTypeWitness, AssociatedConformanceWitness);
      v19 = sub_2289B9170(v17, v18, v40);

      *(v12 + 14) = v19;
      _os_log_impl(&dword_228986000, log, v11, "[%{public}s] Syncing merged state: %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAC9830](v36, -1, -1);
      MEMORY[0x22AAC9830](v12, -1, -1);
    }

    else
    {
    }

    [a1 setCodableObject:v9 version:*(v4 + *((*MEMORY[0x277D85000] & *v4) + 0x80)) profile:{a3, log}];
    return swift_unknownObjectRelease();
  }

  else
  {
    v20 = sub_22911C5EC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v10, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v40[0] = v22;
      *v21 = 136446466;
      v23 = sub_22911CBAC();
      v25 = sub_2289B9170(v23, v24, v40);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2080;
      swift_getObjectType();
      v40[5] = a2;
      swift_unknownObjectRetain();
      v26 = sub_22911C3AC();
      v28 = sub_2289B9170(v26, v27, v40);

      *(v21 + 14) = v28;
      _os_log_impl(&dword_228986000, v10, v20, "[%{public}s] Unexpected object type: %s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAC9830](v22, -1, -1);
      MEMORY[0x22AAC9830](v21, -1, -1);
    }

    v40[3] = swift_getObjectType();
    v40[0] = a2;
    swift_unknownObjectRetain();
    v29 = sub_2289B9D98(v40);
    v31 = v30;
    __swift_destroy_boxed_opaque_existential_0(v40);
    type metadata accessor for EpochBasedSyncStateUpdaterDelegate.Failure(0, v39, v7, v32);
    swift_getWitnessTable();
    swift_allocError();
    *v33 = v29;
    v33[1] = v31;
    return swift_willThrow();
  }
}

uint64_t sub_2289BA2CC(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a5;
  v10 = a1;
  sub_2289B9E9C(v8, a4, v9);

  swift_unknownObjectRelease();
  return 1;
}

uint64_t sub_2289BA3A8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_unknownObjectRetain();
  v7 = a4;
  v8 = a1;
  sub_2289BBD44(a3);

  swift_unknownObjectRelease();
  return 1;
}

uint64_t sub_2289BA470(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a4;
  v9 = a5;
  v10 = a1;
  sub_2289BC1B0(a3);

  return 1;
}

uint64_t sub_2289BA524(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v10 = a4;
  v11 = a5;
  v12 = a1;
  v13 = sub_2289BC450(a3, v10, a6);

  return v13;
}

id EpochBasedSyncStateUpdaterDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EpochBasedSyncStateUpdaterDelegate.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for EpochBasedSyncStateUpdaterDelegate(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_2289BA6BC(char *a1)
{
  v2 = *a1;
  v3 = MEMORY[0x277D85000];
  v4 = *MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *a1) + 0x68);
  v6 = sub_22911B95C();
  (*(*(v6 - 8) + 8))(&a1[v5], v6);

  v7 = *(*(*((v4 & v2) + 0x50) - 8) + 8);
  v8 = &a1[*((*v3 & *a1) + 0x88)];

  return v7(v8);
}

unint64_t sub_2289BA800(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0xD000000000000030;
  }

  sub_22911C83C();

  MEMORY[0x22AAC5FC0](a1, a2);
  return 0xD00000000000002CLL;
}

id sub_2289BA914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *v8;
  v13 = MEMORY[0x277D85000];
  v14 = *MEMORY[0x277D85000];
  v15 = *((*MEMORY[0x277D85000] & *v8) + 0x68);
  v16 = sub_22911B95C();
  v17 = *(v16 - 8);
  (*(v17 + 16))(&v8[v15], a1, v16);
  v18 = &v8[*((*v13 & *v8) + 0x78)];
  *v18 = a2;
  *(v18 + 1) = a3;
  *&v8[*((*v13 & *v8) + 0x80)] = a4;
  v19 = &v8[*((*v13 & *v8) + 0x70)];
  *v19 = a5;
  *(v19 + 1) = a6;
  v20 = *((v14 & v12) + 0x50);
  (*(*(v20 - 8) + 16))(&v8[*((*v13 & *v8) + 0x88)], a7, v20);
  *&v8[*((*v13 & *v8) + 0x60)] = a8;
  v22 = type metadata accessor for EpochBasedSyncStateUpdaterDelegate(0, v20, *((v14 & v12) + 0x58), v21);
  v30.receiver = v8;
  v30.super_class = v22;
  v23 = objc_msgSendSuper2(&v30, sel_init);
  (*(v17 + 8))(a1, v16);
  return v23;
}

uint64_t sub_2289BAB34(void *a1, void *a2, void *a3, id *a4)
{
  swift_getObjectType();
  v8 = *((*MEMORY[0x277D85000] & *v4) + 0x58);
  v9 = *((*MEMORY[0x277D85000] & *v4) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v143 = swift_dynamicCastUnknownClass();
  if (!v143 || (v11 = swift_dynamicCastUnknownClass()) == 0)
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v26 = sub_22911B94C();
    v27 = sub_22911C5EC();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = a2;
      v29 = swift_slowAlloc();
      v144 = swift_slowAlloc();
      v147[0] = v144;
      *v29 = 136446722;
      v30 = sub_22911CBAC();
      v138 = a4;
      v32 = sub_2289B9170(v30, v31, v147);

      *(v29 + 4) = v32;
      *(v29 + 12) = 2080;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v33 = sub_22911C3AC();
      v35 = sub_2289B9170(v33, v34, v147);

      *(v29 + 14) = v35;
      *(v29 + 22) = 2080;
      swift_getObjectType();
      v146 = a3;
      swift_unknownObjectRetain();
      v36 = sub_22911C3AC();
      v38 = sub_2289B9170(v36, v37, v147);

      *(v29 + 24) = v38;
      a4 = v138;
      _os_log_impl(&dword_228986000, v26, v27, "[%{public}s] Unexpected type for object, cloud: %s local: %s", v29, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAC9830](v144, -1, -1);
      v39 = v29;
      a2 = v28;
      MEMORY[0x22AAC9830](v39, -1, -1);
    }

    v147[3] = swift_getObjectType();
    v147[0] = a2;
    swift_unknownObjectRetain();
    v40 = sub_2289B9D98(v147);
    v42 = v41;
    __swift_destroy_boxed_opaque_existential_0(v147);
    type metadata accessor for EpochBasedSyncStateUpdaterDelegate.Failure(0, v9, v8, v43);
    swift_getWitnessTable();
    v44 = swift_allocError();
    *v45 = v40;
    v45[1] = v42;
    swift_willThrow();
    v147[0] = v44;
    sub_2289BCE8C();
    sub_2289BCEF0();
    swift_dynamicCast();
    v46 = v146;
    if (a4)
    {
      v47 = v146;
      *a4 = v146;
      v48 = v46;
    }

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v49 = v46;
    v50 = sub_22911B94C();
    v51 = sub_22911C5EC();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v145 = v53;
      *v52 = 136446978;
      v54 = sub_22911CBAC();
      v56 = sub_2289B9170(v54, v55, &v145);

      *(v52 + 4) = v56;
      *(v52 + 12) = 2080;
      v57 = [v49 localizedDescription];
      v58 = sub_22911C35C();
      v60 = v59;

      v61 = sub_2289B9170(v58, v60, &v145);

      *(v52 + 14) = v61;
      *(v52 + 22) = 2080;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v62 = sub_22911C3AC();
      v64 = sub_2289B9170(v62, v63, &v145);

      *(v52 + 24) = v64;
      *(v52 + 32) = 2080;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v65 = sub_22911C3AC();
      v67 = sub_2289B9170(v65, v66, &v145);

      *(v52 + 34) = v67;
      _os_log_impl(&dword_228986000, v50, v51, "[%{public}s] Error when trying to update: %s local: %s cloud: %s", v52, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x22AAC9830](v53, -1, -1);
      MEMORY[0x22AAC9830](v52, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  v12 = v11;
  v136 = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = *(AssociatedConformanceWitness + 8);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v15 = v14(AssociatedTypeWitness, AssociatedConformanceWitness);
  v135 = v14;
  if (v14(AssociatedTypeWitness, AssociatedConformanceWitness) < v15)
  {
    v16 = AssociatedConformanceWitness;
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain_n();
    v17 = sub_22911B94C();
    v18 = sub_22911C5FC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      v147[0] = v137;
      *v19 = 136446722;
      v20 = sub_22911CBAC();
      v141 = v18;
      v22 = sub_2289B9170(v20, v21, v147);

      *(v19 + 4) = v22;
      *(v19 + 12) = 2048;
      v23 = AssociatedTypeWitness;
      v24 = v135(AssociatedTypeWitness, v16);
      swift_unknownObjectRelease();
      *(v19 + 14) = v24;
      swift_unknownObjectRelease();
      *(v19 + 22) = 2048;
      v25 = v135(AssociatedTypeWitness, v16);
      swift_unknownObjectRelease();
      *(v19 + 24) = v25;
      swift_unknownObjectRelease();
      _os_log_impl(&dword_228986000, v17, v141, "[%{public}s] Choosing cloud state, it has a higher epoch (%lld vs %lld)", v19, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v137);
      MEMORY[0x22AAC9830](v137, -1, -1);
      MEMORY[0x22AAC9830](v19, -1, -1);
    }

    else
    {

      swift_unknownObjectRelease_n();
      swift_unknownObjectRelease_n();
      v23 = AssociatedTypeWitness;
    }

    *a1 = (*(v16 + 32))(v23, v16);
    swift_unknownObjectRelease();
LABEL_19:
    swift_unknownObjectRelease();
    return 2;
  }

  v69 = v14(AssociatedTypeWitness, AssociatedConformanceWitness);
  if (v14(AssociatedTypeWitness, AssociatedConformanceWitness) < v69)
  {
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain_n();
    v70 = sub_22911B94C();
    v71 = sub_22911C5FC();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      v147[0] = v139;
      *v72 = 136446722;
      v73 = sub_22911CBAC();
      v142 = v71;
      v75 = sub_2289B9170(v73, v74, v147);

      *(v72 + 4) = v75;
      *(v72 + 12) = 2048;
      v76 = v135(AssociatedTypeWitness, AssociatedConformanceWitness);
      swift_unknownObjectRelease();
      *(v72 + 14) = v76;
      swift_unknownObjectRelease();
      *(v72 + 22) = 2048;
      v77 = v135(AssociatedTypeWitness, AssociatedConformanceWitness);
      swift_unknownObjectRelease();
      *(v72 + 24) = v77;
      swift_unknownObjectRelease();
      _os_log_impl(&dword_228986000, v70, v142, "[%{public}s] Choosing local state, it has a higher epoch (%lld vs %lld)", v72, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v139);
      MEMORY[0x22AAC9830](v139, -1, -1);
      MEMORY[0x22AAC9830](v72, -1, -1);
    }

    else
    {

      swift_unknownObjectRelease_n();
      swift_unknownObjectRelease_n();
    }

    *a1 = (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
    swift_unknownObjectRelease();
LABEL_24:
    swift_unknownObjectRelease();
    return 3;
  }

  v78 = v143;
  v79 = (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
  swift_unknownObjectRetain_n();
  v80 = sub_22911B94C();
  v81 = sub_22911C5FC();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v147[0] = swift_slowAlloc();
    v83 = AssociatedConformanceWitness;
    v84 = AssociatedTypeWitness;
    v85 = v147[0];
    *v82 = 136446466;
    v86 = sub_22911CBAC();
    v133 = v81;
    v88 = v79;
    v89 = sub_2289B9170(v86, v87, v147);

    *(v82 + 4) = v89;
    v79 = v88;
    v78 = v143;
    *(v82 + 12) = 2048;
    v90 = v135(v84, v83);
    swift_unknownObjectRelease();
    *(v82 + 14) = v90;
    swift_unknownObjectRelease();
    _os_log_impl(&dword_228986000, v80, v133, "[%{public}s] Merging local and cloud state with same epoch (%lld)", v82, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v85);
    v91 = v85;
    AssociatedTypeWitness = v84;
    AssociatedConformanceWitness = v83;
    MEMORY[0x22AAC9830](v91, -1, -1);
    MEMORY[0x22AAC9830](v82, -1, -1);
  }

  else
  {

    swift_unknownObjectRelease_n();
  }

  (*(AssociatedConformanceWitness + 40))(v12, AssociatedTypeWitness, AssociatedConformanceWitness);
  v134 = v12;
  result = [v79 data];
  if (!result)
  {
    goto LABEL_55;
  }

  v92 = result;
  v93 = sub_22911B81C();
  v95 = v94;

  v96 = v95;
  v97 = v95 >> 62;
  if ((v95 >> 62) > 1)
  {
    if (v97 != 2)
    {
      sub_2289BCF3C(v93, v95);
      v98 = 0;
      goto LABEL_37;
    }

    v100 = *(v93 + 16);
    v99 = *(v93 + 24);
    sub_2289BCF3C(v93, v96);
    v98 = v99 - v100;
    if (!__OFSUB__(v99, v100))
    {
      goto LABEL_37;
    }

    __break(1u);
    goto LABEL_34;
  }

  if (v97)
  {
LABEL_34:
    result = sub_2289BCF3C(v93, v96);
    LODWORD(v98) = HIDWORD(v93) - v93;
    if (!__OFSUB__(HIDWORD(v93), v93))
    {
      v98 = v98;
      goto LABEL_37;
    }

    __break(1u);
LABEL_55:
    __break(1u);
    return result;
  }

  sub_2289BCF3C(v93, v95);
  v98 = BYTE6(v95);
LABEL_37:
  if (*(v136 + *((*MEMORY[0x277D85000] & *v136) + 0x60)) < v98)
  {
    v101 = v79;
    v102 = sub_22911B94C();
    v103 = sub_22911C5EC();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      v147[0] = v132;
      *v104 = 136446466;
      v105 = sub_22911CBAC();
      v107 = sub_2289B9170(v105, v106, v147);

      *(v104 + 4) = v107;
      *(v104 + 12) = 2048;
      v108 = v135(AssociatedTypeWitness, AssociatedConformanceWitness);

      *(v104 + 14) = v108;
      _os_log_impl(&dword_228986000, v102, v103, "[%{public}s] Merged state's size above the limit, purge metadata and increment epoch, previous: %lld", v104, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v132);
      MEMORY[0x22AAC9830](v132, -1, -1);
      MEMORY[0x22AAC9830](v104, -1, -1);
    }

    else
    {
    }

    (*(AssociatedConformanceWitness + 48))(AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  v109 = v79;
  *a1 = v109;
  v110 = v109;
  if (([v110 isEqual_] & 1) == 0)
  {
    v120 = sub_22911B94C();
    v121 = sub_22911C5FC();
    if (os_log_type_enabled(v120, v121))
    {
      v122 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      v147[0] = v123;
      *v122 = 136446210;
      v124 = sub_22911CBAC();
      v126 = sub_2289B9170(v124, v125, v147);

      *(v122 + 4) = v126;
      _os_log_impl(&dword_228986000, v120, v121, "[%{public}s] Update cloud state", v122, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v123);
      MEMORY[0x22AAC9830](v123, -1, -1);
      MEMORY[0x22AAC9830](v122, -1, -1);
    }

    swift_unknownObjectRelease();
    goto LABEL_24;
  }

  v111 = [v110 isEqual_];
  v112 = sub_22911B94C();
  v113 = sub_22911C5FC();
  v114 = os_log_type_enabled(v112, v113);
  if ((v111 & 1) == 0)
  {
    if (v114)
    {
      v127 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v147[0] = v128;
      *v127 = 136446210;
      v129 = sub_22911CBAC();
      v131 = sub_2289B9170(v129, v130, v147);

      *(v127 + 4) = v131;
      _os_log_impl(&dword_228986000, v112, v113, "[%{public}s] Update local state", v127, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v128);
      MEMORY[0x22AAC9830](v128, -1, -1);
      MEMORY[0x22AAC9830](v127, -1, -1);
    }

    swift_unknownObjectRelease();
    goto LABEL_19;
  }

  if (v114)
  {
    v115 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v147[0] = v116;
    *v115 = 136446210;
    v117 = sub_22911CBAC();
    v119 = sub_2289B9170(v117, v118, v147);

    *(v115 + 4) = v119;
    _os_log_impl(&dword_228986000, v112, v113, "[%{public}s] No update required", v115, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v116);
    MEMORY[0x22AAC9830](v116, -1, -1);
    MEMORY[0x22AAC9830](v115, -1, -1);
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return 1;
}

uint64_t sub_2289BBD44(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = *v1;
  v5 = *((*MEMORY[0x277D85000] & v4) + 0x58);
  v6 = *((*MEMORY[0x277D85000] & v4) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = swift_dynamicCastUnknownClass();
  swift_unknownObjectRetain();
  v9 = sub_22911B94C();
  if (v8)
  {
    v10 = sub_22911C5DC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35[0] = v34;
      *v11 = 136446466;
      v12 = sub_22911CBAC();
      v14 = sub_2289B9170(v12, v13, v35);

      *(v11 + 4) = v14;
      *(v11 + 12) = 2080;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v16 = (*(AssociatedConformanceWitness + 56))(AssociatedTypeWitness, AssociatedConformanceWitness);
      v18 = sub_2289B9170(v16, v17, v35);

      *(v11 + 14) = v18;
      _os_log_impl(&dword_228986000, v9, v10, "[%{public}s] Persisting cloud state locally: %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAC9830](v34, -1, -1);
      MEMORY[0x22AAC9830](v11, -1, -1);
    }

    (*(*((*MEMORY[0x277D85000] & *v2) + 0x58) + 24))(v8, *((*MEMORY[0x277D85000] & *v2) + 0x50));
    return swift_unknownObjectRelease();
  }

  else
  {
    v20 = sub_22911C5EC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v9, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v35[0] = v22;
      *v21 = 136446466;
      v23 = sub_22911CBAC();
      v25 = sub_2289B9170(v23, v24, v35);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2080;
      swift_getObjectType();
      v35[5] = a1;
      swift_unknownObjectRetain();
      v26 = sub_22911C3AC();
      v28 = sub_2289B9170(v26, v27, v35);

      *(v21 + 14) = v28;
      _os_log_impl(&dword_228986000, v9, v20, "[%{public}s] returned object is not the expected type: %s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAC9830](v22, -1, -1);
      MEMORY[0x22AAC9830](v21, -1, -1);
    }

    v35[3] = swift_getObjectType();
    v35[0] = a1;
    swift_unknownObjectRetain();
    v29 = sub_2289B9D98(v35);
    v31 = v30;
    __swift_destroy_boxed_opaque_existential_0(v35);
    type metadata accessor for EpochBasedSyncStateUpdaterDelegate.Failure(0, v6, v5, v32);
    swift_getWitnessTable();
    swift_allocError();
    *v33 = v29;
    v33[1] = v31;
    return swift_willThrow();
  }
}

void sub_2289BC1B0(void *a1)
{
  swift_getObjectType();
  v4 = (*(*((*MEMORY[0x277D85000] & *v1) + 0x58) + 32))(*((*MEMORY[0x277D85000] & *v1) + 0x50), *((*MEMORY[0x277D85000] & *v1) + 0x58));
  if (!v2)
  {
    v5 = v4;
    v6 = v4;
    v7 = sub_22911B94C();
    v8 = sub_22911C5FC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = v22;
      *v9 = 136446466;
      v10 = sub_22911CBAC();
      v12 = sub_2289B9170(v10, v11, &v23);

      *(v9 + 4) = v12;
      *(v9 + 12) = 2080;
      if (v5)
      {
        swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v21 = v8;
        v14 = a1;
        v15 = *(AssociatedConformanceWitness + 56);
        v16 = swift_checkMetadataState();
        v17 = v15(v16, AssociatedConformanceWitness);
        a1 = v14;
        v8 = v21;
        v19 = v18;
      }

      else
      {
        v19 = 0xE300000000000000;
        v17 = 7104878;
      }

      v20 = sub_2289B9170(v17, v19, &v23);

      *(v9 + 14) = v20;
      _os_log_impl(&dword_228986000, v7, v8, "%{public}s Retrieved local state: %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAC9830](v22, -1, -1);
      MEMORY[0x22AAC9830](v9, -1, -1);
    }

    *a1 = v5;
  }
}

uint64_t sub_2289BC450(void *a1, void *a2, void *a3)
{
  v52[4] = *MEMORY[0x277D85DE8];
  swift_getObjectType();
  v6 = *v3;
  v7 = *MEMORY[0x277D85000];
  v8 = *((*MEMORY[0x277D85000] & *v3) + 0x58);
  v9 = *((*MEMORY[0x277D85000] & *v3) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = *(v3 + *((v7 & v6) + 0x80));
  v51 = 0;
  v52[0] = 0;
  v13 = [a2 decodedObjectOfClass:ObjCClassFromMetadata version:v12 decodedObject:v52 error:&v51];
  v15 = v51;
  v14 = v52[0];
  if (!v13)
  {
    v30 = v51;
    swift_unknownObjectRetain();
    v31 = sub_22911B7FC();

    swift_willThrow();
    swift_unknownObjectRelease();
    if (!a3)
    {
LABEL_9:

      return 0;
    }

LABEL_8:
    *a3 = sub_22911B7EC();
    goto LABEL_9;
  }

  if (!v52[0])
  {
    v32 = v51;
    return 2;
  }

  v16 = swift_dynamicCastUnknownClass();
  swift_unknownObjectRetain_n();
  if (!v16)
  {
    v33 = v15;
    swift_unknownObjectRetain();
    v34 = sub_22911B94C();
    v35 = sub_22911C5EC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v52[0] = v37;
      *v36 = 136446466;
      v38 = sub_22911CBAC();
      v40 = sub_2289B9170(v38, v39, v52);

      *(v36 + 4) = v40;
      *(v36 + 12) = 2080;
      swift_getObjectType();
      v51 = v14;
      swift_unknownObjectRetain();
      v41 = sub_22911C3AC();
      v43 = sub_2289B9170(v41, v42, v52);

      *(v36 + 14) = v43;
      _os_log_impl(&dword_228986000, v34, v35, "[%{public}s] object is not of the expected type: %s", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAC9830](v37, -1, -1);
      MEMORY[0x22AAC9830](v36, -1, -1);
    }

    v52[3] = swift_getObjectType();
    v52[0] = v14;
    swift_unknownObjectRetain();
    v44 = sub_2289B9D98(v52);
    v46 = v45;
    __swift_destroy_boxed_opaque_existential_0(v52);
    type metadata accessor for EpochBasedSyncStateUpdaterDelegate.Failure(0, v9, v8, v47);
    swift_getWitnessTable();
    v31 = swift_allocError();
    *v48 = v44;
    v48[1] = v46;
    swift_willThrow();
    swift_unknownObjectRelease_n();
    if (!a3)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  swift_unknownObjectRetain_n();
  v17 = v15;
  v18 = sub_22911B94C();
  v19 = sub_22911C5FC();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v52[0] = v49;
    *v20 = 136446466;
    v21 = sub_22911CBAC();
    v23 = sub_2289B9170(v21, v22, v52);

    *(v20 + 4) = v23;
    *(v20 + 12) = 2080;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v25 = (*(AssociatedConformanceWitness + 56))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v27 = sub_2289B9170(v25, v26, v52);

    *(v20 + 14) = v27;
    _os_log_impl(&dword_228986000, v18, v19, "[%{public}s] Retrieved cloud data: %s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAC9830](v49, -1, -1);
    MEMORY[0x22AAC9830](v20, -1, -1);
  }

  v28 = v16;
  *a1 = v16;
  swift_unknownObjectRelease_n();
  return 1;
}

uint64_t sub_2289BCAB0(uint64_t a1)
{
  result = sub_22911B95C();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2289BCD10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2289BCD64(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2289BCDB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_2289BCE08(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_2289BCE20(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_2289BCE40()
{
  result = qword_27D862D20;
  if (!qword_27D862D20)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_27D862D20);
  }

  return result;
}

unint64_t sub_2289BCE8C()
{
  result = qword_27D862D28;
  if (!qword_27D862D28)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D862D28);
  }

  return result;
}

unint64_t sub_2289BCEF0()
{
  result = qword_27D862D30;
  if (!qword_27D862D30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D862D30);
  }

  return result;
}

uint64_t sub_2289BCF3C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_2289BCFC0(uint64_t a1)
{
  v3 = sub_22911B8DC();
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v43 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v42 = v34 - v6;
  v41 = sub_22911BE7C();
  v44 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = sub_22911C78C();
  }

  else
  {
    v9 = *(a1 + 16);
  }

  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
    return v10;
  }

  v53 = MEMORY[0x277D84F90];
  sub_2289FD348(0, v9 & ~(v9 >> 63), 0);
  v10 = v53;
  if (v45)
  {
    result = sub_22911C73C();
  }

  else
  {
    result = sub_22911C6FC();
    v12 = *(a1 + 36);
  }

  v50 = result;
  v51 = v12;
  v52 = v45 != 0;
  if ((v9 & 0x8000000000000000) == 0)
  {
    v34[1] = v1;
    v13 = 0;
    v39 = v44 + 32;
    v40 = a1;
    v14 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v14 = a1;
    }

    v36 = a1 + 56;
    v37 = v14;
    v35 = a1 + 64;
    v38 = v9;
    while (v13 < v9)
    {
      if (__OFADD__(v13++, 1))
      {
        goto LABEL_37;
      }

      v48 = v50;
      v46 = v51;
      v47 = v52;
      sub_2289E6910(v50, v51, v52, a1);
      v18 = v17;
      v19 = [v17 hardwareIdentifier];
      sub_22911B8CC();

      v20 = [v18 databaseIdentifier];
      sub_22911B8CC();

      v21 = [v18 instanceDiscriminator];
      sub_22911C35C();

      sub_22911BE6C();
      v53 = v10;
      v23 = *(v10 + 16);
      v22 = *(v10 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_2289FD348((v22 > 1), v23 + 1, 1);
        v10 = v53;
      }

      *(v10 + 16) = v23 + 1;
      (*(v44 + 32))(v10 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v23, v8, v41);
      if (v45)
      {
        a1 = v40;
        result = v48;
        if (!v47)
        {
          goto LABEL_42;
        }

        if (sub_22911C75C())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v9 = v38;
        sub_2289BE620(0);
        v15 = sub_22911C53C();
        sub_22911C7DC();
        result = v15(v49, 0);
        if (v13 == v9)
        {
LABEL_34:
          sub_2289ACBF4(v50, v51, v52);
          return v10;
        }
      }

      else
      {
        a1 = v40;
        result = v48;
        if (v47)
        {
          goto LABEL_43;
        }

        if ((v48 & 0x8000000000000000) != 0)
        {
          goto LABEL_38;
        }

        v24 = 1 << *(v40 + 32);
        if (v48 >= v24)
        {
          goto LABEL_38;
        }

        v25 = v48 >> 6;
        v26 = *(v36 + 8 * (v48 >> 6));
        if (((v26 >> v48) & 1) == 0)
        {
          goto LABEL_39;
        }

        if (*(v40 + 36) != v46)
        {
          goto LABEL_40;
        }

        v27 = v26 & (-2 << (v48 & 0x3F));
        if (v27)
        {
          v24 = __clz(__rbit64(v27)) | v48 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v28 = v25 << 6;
          v29 = v25 + 1;
          v30 = (v35 + 8 * v25);
          while (v29 < (v24 + 63) >> 6)
          {
            v32 = *v30++;
            v31 = v32;
            v28 += 64;
            ++v29;
            if (v32)
            {
              result = sub_2289ACBF4(v48, v46, 0);
              v24 = __clz(__rbit64(v31)) + v28;
              goto LABEL_33;
            }
          }

          result = sub_2289ACBF4(v48, v46, 0);
        }

LABEL_33:
        v33 = *(a1 + 36);
        v50 = v24;
        v51 = v33;
        v52 = 0;
        v9 = v38;
        if (v13 == v38)
        {
          goto LABEL_34;
        }
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

__CFString *sub_2289BD4B0@<X0>(uint64_t a1@<X8>)
{
  sub_2289BE3F0(0, &qword_27D862B48, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v55 - v4;
  v6 = [v1 slot];
  switch(v6)
  {
    case 3:
      v7 = @"Tombstone";
      v10 = @"Tombstone";
      break;
    case 2:
      v7 = @"B";
      v9 = @"B";
      break;
    case 1:
      v7 = @"A";
      v8 = @"A";
      break;
    default:
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v6];
      break;
  }

  result = v7;
  if (!result)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  v12 = result;
  v13 = sub_22911C35C();
  v15 = v14;

  *a1 = v13;
  *(a1 + 8) = v15;
  *(a1 + 16) = [v1 isActive];
  v16 = [v1 record];
  v17 = [v16 modificationDate];

  if (v17)
  {
    sub_22911B86C();

    v18 = sub_22911B88C();
    (*(*(v18 - 8) + 56))(v5, 0, 1, v18);
  }

  else
  {
    v19 = sub_22911B88C();
    (*(*(v19 - 8) + 56))(v5, 1, 1, v19);
  }

  sub_2289BDFAC(0);
  v21 = v20;
  v22 = v20[20];
  v23 = v20[24];
  v24 = v20[28];
  sub_2289BE454(v5, a1 + v20[16]);
  *(a1 + v22) = [v1 baselineEpoch];
  *(a1 + v23) = [v1 changeIndex];
  *(a1 + v24) = [v1 childRecordCount];
  [v1 protocolVersion];
  result = HKSyncProtocolVersionToString();
  if (!result)
  {
    goto LABEL_17;
  }

  v25 = result;
  v26 = (a1 + v21[32]);
  v27 = v21[36];
  v28 = v21[40];
  v29 = v21[44];
  v30 = v21[52];
  v55 = v21[48];
  v56 = v30;
  v31 = sub_22911C35C();
  v33 = v32;

  *v26 = v31;
  v26[1] = v33;
  v34 = [v1 includedIdentifiers];
  sub_22911B8DC();
  sub_2289BE534(&qword_27D8629D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v35 = sub_22911C51C();

  *(a1 + v27) = v35;
  v36 = [v1 includedSyncIdentities];
  sub_2289BE4E8();
  sub_2289BE534(&qword_27D862A18, sub_2289BE4E8, MEMORY[0x277D85378]);
  v37 = sub_22911C51C();

  v38 = sub_2289BCFC0(v37);

  v39 = sub_2289DCE9C(v38);

  *(a1 + v28) = v39;
  v40 = [v1 includedChildSyncIdentities];
  v41 = sub_22911C51C();

  v42 = sub_2289BCFC0(v41);

  v43 = sub_2289DCE9C(v42);

  *(a1 + v29) = v43;
  v44 = [v1 syncAnchorMap];
  v45 = swift_allocObject();
  *(v45 + 16) = sub_2289B23DC(MEMORY[0x277D84F90]);
  v61 = sub_2289BE600;
  v62 = v45;
  aBlock = MEMORY[0x277D85DD0];
  v58 = 1107296256;
  v59 = sub_2289BE57C;
  v60 = &block_descriptor_0;
  v46 = _Block_copy(&aBlock);

  [v44 enumerateAnchorsAndEntityIdentifiersWithBlock_];

  _Block_release(v46);
  swift_beginAccess();
  v47 = *(v45 + 16);

  *(a1 + v55) = v47;
  v48 = [v1 frozenSyncAnchorMap];
  if (v48)
  {
    v49 = swift_allocObject();
    *(v49 + 16) = sub_2289B23DC(MEMORY[0x277D84F90]);
    v61 = sub_2289BE6B8;
    v62 = v49;
    aBlock = MEMORY[0x277D85DD0];
    v58 = 1107296256;
    v59 = sub_2289BE57C;
    v60 = &block_descriptor_5;
    v50 = _Block_copy(&aBlock);

    [v48 &selRef_eventType + 3];

    _Block_release(v50);
    swift_beginAccess();
    v48 = *(v49 + 16);
  }

  *(a1 + v56) = v48;
  v51 = v21[56];
  sub_2289BDB98();
  *(a1 + v51) = v52;
  v53 = *MEMORY[0x277CCB4D0];
  v54 = sub_22911BF0C();
  return (*(*(v54 - 8) + 104))(a1, v53, v54);
}

void sub_2289BDB98()
{
  v1 = sub_22911BE5C();
  MEMORY[0x28223BE20](v1 - 8);
  v36 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_22911BE3C();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v0;
  v5 = [v0 syncEntityVersionMap];
  v6 = [v5 entityVersionRanges];

  if (v6)
  {
    v7 = [v6 count];
    if (v7 < 0)
    {
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
    }

    else
    {
      v8 = v7;
      if (!v7)
      {

        return;
      }

      v29 = v6;
      v37 = MEMORY[0x277D84F90];
      sub_2289FD2F8(0, v7, 0);
      v9 = 0;
      v30 = v35 + 32;
      v31 = v4;
      v10 = v37;
      v11 = &selRef_deviceEntityWithDevice_syncIdentity_healthDatabase_error_;
      v32 = v8;
      while (1)
      {
        v12 = [v34 syncEntityVersionMap];
        v13 = [v12 entityVersionRangeAtIndex_];

        if (!v13)
        {
          break;
        }

        v14 = [v13 v11[300]];
        if (!v14)
        {
          goto LABEL_21;
        }

        v15 = v14;
        v16 = [objc_allocWithZone(HDSyncEntityIdentifier) initWithCodableEntityIdentifier_];

        [v16 v11[300]];
        v17 = [v16 schemaIdentifier];
        if (v17)
        {
          v18 = v17;
          sub_22911C35C();
        }

        v19 = [v16 description];
        sub_22911C35C();

        sub_22911BE4C();
        v20 = [v13 versionRange];
        if (!v20)
        {
          goto LABEL_18;
        }

        v21 = v20;
        [v20 current];

        v22 = [v13 versionRange];
        v23 = v32;
        if (!v22)
        {
          goto LABEL_19;
        }

        v24 = v22;
        [v22 minimum];

        v25 = v31;
        sub_22911BE2C();

        v37 = v10;
        v27 = *(v10 + 16);
        v26 = *(v10 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_2289FD2F8((v26 > 1), v27 + 1, 1);
          v10 = v37;
        }

        ++v9;
        *(v10 + 16) = v27 + 1;
        (*(v35 + 32))(v10 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v27, v25, v33);
        v11 = &selRef_deviceEntityWithDevice_syncIdentity_healthDatabase_error_;
        if (v23 == v9)
        {

          return;
        }
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }
}

void sub_2289BDFAC(uint64_t a1)
{
  if (!qword_27D862D40)
  {
    MEMORY[0x28223BE20](a1);
    v1 = MEMORY[0x277D83D88];
    sub_2289BE3F0(255, &qword_27D862B48, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    sub_2289BE1F8(255);
    sub_2289BE28C(255);
    sub_2289BE320(255);
    sub_2289BE3F0(255, &qword_27D862D68, sub_2289BE320, v1);
    sub_2289BE3F0(255, &qword_27D862D70, sub_2289BE3BC, v1);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_27D862D40);
    }
  }
}

void sub_2289BE1F8(uint64_t a1)
{
  if (!qword_27D862D48)
  {
    sub_22911B8DC();
    sub_2289BE534(&qword_27D8629D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v1 = sub_22911C55C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D862D48);
    }
  }
}

void sub_2289BE28C(uint64_t a1)
{
  if (!qword_27D862D50)
  {
    sub_22911BE7C();
    sub_2289BE534(&qword_27D862D58, MEMORY[0x277CCB430], MEMORY[0x277CCB438]);
    v1 = sub_22911C55C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D862D50);
    }
  }
}

void sub_2289BE320(uint64_t a1)
{
  if (!qword_27D862D60)
  {
    sub_22911BE5C();
    sub_2289BE534(&qword_27D8629C0, MEMORY[0x277CCB418], MEMORY[0x277CCB420]);
    v1 = sub_22911C2EC();
    if (!v2)
    {
      atomic_store(v1, &qword_27D862D60);
    }
  }
}

void sub_2289BE3F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2289BE454(uint64_t a1, uint64_t a2)
{
  sub_2289BE3F0(0, &qword_27D862B48, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2289BE4E8()
{
  result = qword_27D862A08;
  if (!qword_27D862A08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D862A08);
  }

  return result;
}

uint64_t sub_2289BE534(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2289BE57C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2289BE620(uint64_t a1)
{
  if (!qword_27D862D80)
  {
    sub_2289BE4E8();
    sub_2289BE534(&qword_27D862A18, sub_2289BE4E8, MEMORY[0x277D85378]);
    v1 = sub_22911C54C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D862D80);
    }
  }
}

void sub_2289BE6C0(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_22911B8DC();
  v5 = MEMORY[0x28223BE20](v4 - 8);
  MEMORY[0x28223BE20](v5);
  v6 = [v1 codableDeviceContext];
  v7 = [v6 productTypeName];

  if (!v7)
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = sub_22911C35C();
  v10 = v9;

  *a1 = v8;
  a1[1] = v10;
  v11 = [v2 codableDeviceContext];
  v12 = [v11 currentOSName];

  if (!v12)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v13 = sub_22911C35C();
  v15 = v14;

  a1[2] = v13;
  a1[3] = v15;
  v16 = [v2 codableDeviceContext];
  v17 = [v16 currentOSVersion];

  if (!v17)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v18 = sub_22911C35C();
  v20 = v19;

  a1[4] = v18;
  a1[5] = v20;
  v21 = [v2 codableDeviceContext];
  v22 = [v21 syncIdentity];

  if (v22)
  {
    sub_2289BEAC0(0);
    v24 = *(v23 + 80);
    sub_2289BE4E8();
    v25 = sub_2289BEC2C(v22);

    v26 = [v25 hardwareIdentifier];
    sub_22911B8CC();

    v27 = [v25 databaseIdentifier];
    sub_22911B8CC();

    v28 = [v25 instanceDiscriminator];
    sub_22911C35C();

    sub_22911BE6C();
    v29 = sub_22911BE7C();
    (*(*(v29 - 8) + 56))(a1 + v24, 0, 1, v29);
    v30 = [v2 codableDeviceContext];
    [v30 modificationDate];

    v31 = HDDecodeDateForValue();
    sub_22911B86C();

    v32 = *MEMORY[0x277CCB460];
    v33 = sub_22911BF0C();
    (*(*(v33 - 8) + 104))(a1, v32, v33);
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_2289BEAC0(uint64_t a1)
{
  if (!qword_27D862D88)
  {
    MEMORY[0x28223BE20](a1);
    sub_2289BEBD4(255);
    sub_22911B88C();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27D862D88);
    }
  }
}

void sub_2289BEBD4(uint64_t a1)
{
  if (!qword_27D862D90)
  {
    sub_22911BE7C();
    v1 = sub_22911C6CC();
    if (!v2)
    {
      atomic_store(v1, &qword_27D862D90);
    }
  }
}

id sub_2289BEC2C(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() syncIdentityWithCodable:a1 error:v5];
  if (v1)
  {
    v2 = v5[0];
  }

  else
  {
    v3 = v5[0];
    sub_22911B7FC();

    swift_willThrow();
  }

  return v1;
}

uint64_t static HDHRMEntity.columns.getter()
{
  v1 = sub_22911C66C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2289BF1C0(0);
  v5 = *(sub_22911C68C() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v43 = 4 * v6;
  v44 = v6;
  v8 = swift_allocObject();
  v42 = v8;
  *(v8 + 16) = xmmword_229163F30;
  v9 = v8 + v7;
  v10 = swift_allocObject();
  *(v10 + 16) = 0xD000000000000021;
  *(v10 + 24) = 0x80000002291820F0;
  *v4 = v10;
  v11 = *MEMORY[0x277D109D0];
  v12 = *(v2 + 104);
  v41 = v2 + 104;
  v12(v4, v11, v1);
  v39 = v9;
  v13 = sub_22911C67C();
  (*(v0 + 80))(v45, v13);
  v40 = v45[3];

  sub_2289BF3F4(0, &qword_27D862B90, MEMORY[0x277D109C0]);
  v15 = v14;
  v16 = swift_allocBox();
  v18 = v17;
  v19 = *(v15 + 48);
  strcpy(v17, "BLOB NOT NULL");
  *(v17 + 14) = -4864;
  v20 = *MEMORY[0x277D109B0];
  v21 = sub_22911C64C();
  (*(*(v21 - 8) + 104))(v18 + v19, v20, v21);
  *v4 = v16;
  v12(v4, *MEMORY[0x277D109C8], v1);
  v38 = v12;
  v22 = v44;
  sub_22911C67C();
  v40 = "Must override by subclass";
  v23 = sub_22911C65C();
  v24 = swift_allocBox();
  v25 = *MEMORY[0x277D109D8];
  v26 = *(*(v23 - 8) + 104);
  v26(v27, v25, v23);
  *v4 = v24;
  v28 = *MEMORY[0x277D109F8];
  v37 = v1;
  v12(v4, v28, v1);
  sub_22911C67C();
  v44 += 2 * v22;
  v29 = swift_allocBox();
  v26(v30, v25, v23);
  *v4 = v29;
  v31 = v1;
  v32 = v38;
  v38(v4, v28, v31);
  sub_22911C67C();
  v33 = swift_allocBox();
  v26(v34, v25, v23);
  *v4 = v33;
  v32(v4, v28, v37);
  sub_22911C67C();
  return v42;
}

void sub_2289BF1C0(uint64_t a1)
{
  if (!qword_27D862B88)
  {
    sub_22911C68C();
    v1 = sub_22911CABC();
    if (!v2)
    {
      atomic_store(v1, &qword_27D862B88);
    }
  }
}

unint64_t sub_2289BF2A4()
{
  sub_2289BF380(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_229163C40;
  v2 = *(v0 + 80);
  v2(v10);
  v3 = v10[2];
  v4 = v10[3];

  *(inited + 32) = v3;
  *(inited + 40) = v4;
  (v2)(v9, v5);
  v6 = v9[4];

  *(inited + 48) = v6;
  v7 = sub_2289B2670(inited);
  swift_setDeallocating();
  sub_2289B5A78(inited + 32);
  return v7;
}

void sub_2289BF380(uint64_t a1)
{
  if (!qword_27D862B68)
  {
    sub_2289BF3F4(255, &qword_27D862B70, sub_2289BF458);
    v1 = sub_22911CABC();
    if (!v2)
    {
      atomic_store(v1, &qword_27D862B68);
    }
  }
}

void sub_2289BF3F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_2289BF458()
{
  result = qword_27D862AF8;
  if (!qword_27D862AF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D862AF8);
  }

  return result;
}

id HDHRMEntity.__allocating_init(persistentID:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithPersistentID_];
}

id HDHRMEntity.init(persistentID:)(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for HDHRMEntity();
  return objc_msgSendSuper2(&v4, sel_initWithPersistentID_, a1);
}

id HDHRMEntity.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HDHRMEntity.init()(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for HDHRMEntity();
  return objc_msgSendSuper2(&v4, sel_init);
}

id HDHRMEntity.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for HDHRMEntity();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2289BF76C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2289BF7B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2289BF80C()
{
  result = qword_27D862D98;
  if (!qword_27D862D98)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_27D862D98);
  }

  return result;
}

id HDHRIndicatorCollectionEntity.__allocating_init(persistentID:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithPersistentID_];
}

id HDHRIndicatorCollectionEntity.init(persistentID:)(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for HDHRIndicatorCollectionEntity();
  return objc_msgSendSuper2(&v4, sel_initWithPersistentID_, a1);
}

id HDHRIndicatorCollectionEntity.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HDHRIndicatorCollectionEntity.init()(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for HDHRIndicatorCollectionEntity();
  return objc_msgSendSuper2(&v4, sel_init);
}

id HDHRIndicatorCollectionEntity.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for HDHRIndicatorCollectionEntity();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t _s12HealthDaemon29HDHRIndicatorCollectionEntityC7columnsSaySo014HDSQLiteSchemaE0C0aB10FoundationE16ColumnDefinitionVGvgZ_0()
{
  v0 = sub_22911C66C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2289B5B48(0, &qword_27D862B88, MEMORY[0x277D10A20]);
  v4 = *(sub_22911C68C() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v44 = 4 * v5;
  v7 = v5;
  v8 = swift_allocObject();
  v43 = v8;
  *(v8 + 16) = xmmword_229163F30;
  v9 = v8 + v6;
  v10 = swift_allocObject();
  *(v10 + 16) = 0xD000000000000021;
  *(v10 + 24) = 0x80000002291820F0;
  *v3 = v10;
  v11 = *(v1 + 104);
  v11(v3, *MEMORY[0x277D109D0], v0);
  v45 = v11;
  v39 = v9;
  sub_22911C67C();
  v12 = sub_22911C35C();
  v41 = v13;
  v42 = v12;
  sub_2289B5B9C(0);
  v15 = v14;
  v16 = swift_allocBox();
  v18 = v17;
  v19 = *(v15 + 48);
  *v17 = 0xD000000000000010;
  *(v17 + 1) = 0x8000000229182120;
  v20 = *MEMORY[0x277D109B8];
  v21 = sub_22911C64C();
  (*(*(v21 - 8) + 104))(&v18[v19], v20, v21);
  *v3 = v16;
  v11(v3, *MEMORY[0x277D109C8], v0);
  v40 = v7;
  sub_22911C67C();
  v42 = "rCollectionEntity";
  v22 = sub_22911C65C();
  v23 = swift_allocBox();
  v24 = *MEMORY[0x277D109D8];
  v41 = *(*(v22 - 8) + 104);
  HIDWORD(v38) = v24;
  v41(v25, v24, v22);
  *v3 = v23;
  v26 = *MEMORY[0x277D109F8];
  v27 = v0;
  v28 = v0;
  v29 = v45;
  v45(v3, v26, v27);
  sub_22911C67C();
  v42 = (2 * v7 + v40);
  v30 = swift_allocBox();
  v32 = v31;
  v33 = v24;
  v34 = v41;
  v41(v32, v33, v22);
  *v3 = v30;
  v29(v3, v26, v28);
  sub_22911C67C();
  v35 = swift_allocBox();
  v34(v36, HIDWORD(v38), v22);
  *v3 = v35;
  v45(v3, v26, v28);
  sub_22911C67C();
  return v43;
}