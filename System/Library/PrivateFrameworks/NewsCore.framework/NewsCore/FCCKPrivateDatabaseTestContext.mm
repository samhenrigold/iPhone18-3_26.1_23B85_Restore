@interface FCCKPrivateDatabaseTestContext
- (FCCKPrivateDatabaseTestContext)init;
@end

@implementation FCCKPrivateDatabaseTestContext

- (FCCKPrivateDatabaseTestContext)init
{
  v332[1] = *MEMORY[0x1E69E9840];
  v301.receiver = self;
  v301.super_class = FCCKPrivateDatabaseTestContext;
  v2 = [(FCCKPrivateDatabaseTestContext *)&v301 init];
  if (v2)
  {
    v3 = MEMORY[0x1E695E0F0];
    v4 = [FCCKRecordSchema recordWithType:MEMORY[0x1E695E0F0] fields:?];
    v5 = [FCCKRecordSchema recordWithType:v3 fields:?];
    v6 = [FCCKZoneSchema zoneWithName:?];
    v300 = [FCCKZoneSchema zoneWithName:?];
    v7 = [FCCKZoneSchema zoneWithName:?];
    v299 = [FCCKZoneSchema zoneWithName:2 options:0 staticRecordNames:?];
    v298 = [FCCKZoneSchema zoneWithName:?];
    v297 = [FCCKZoneSchema zoneWithName:6 options:0 staticRecordNames:?];
    v292 = [FCCKZoneSchema zoneWithName:?];
    v291 = [FCCKZoneSchema zoneWithName:6 options:0 staticRecordNames:?];
    v332[0] = @"DefaultZoneStaticRecord_Client";
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v332 count:1];
    v9 = [FCCKZoneSchema defaultZoneWithStaticRecordNames:v8 shouldUseSecureContainer:0];

    v331 = @"DefaultZoneStaticRecord_Server";
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v331 count:1];
    v295 = [FCCKZoneSchema defaultZoneWithStaticRecordNames:v10 shouldUseSecureContainer:0];

    v330 = @"DefaultZoneStaticRecordSecure_Client";
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v330 count:1];
    v294 = [FCCKZoneSchema defaultZoneWithStaticRecordNames:v11 shouldUseSecureContainer:0];

    v329 = @"DefaultZoneStaticRecordSecure_Server";
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v329 count:1];
    v13 = [FCCKZoneSchema defaultZoneWithStaticRecordNames:v12 shouldUseSecureContainer:1];

    v14 = objc_alloc_init(TCKDatabase);
    tckDatabase = v2->_tckDatabase;
    v2->_tckDatabase = v14;

    v16 = objc_alloc_init(TCKDatabase);
    tckDatabaseWithZoneWidePCS = v2->_tckDatabaseWithZoneWidePCS;
    v2->_tckDatabaseWithZoneWidePCS = v16;

    v18 = objc_alloc_init(TCKDatabase);
    tckSecureDatabase = v2->_tckSecureDatabase;
    v2->_tckSecureDatabase = v18;

    objc_storeStrong(&v2->_ckDatabase, v2->_tckDatabase);
    objc_storeStrong(&v2->_ckDatabaseWithZoneWidePCS, v2->_tckDatabaseWithZoneWidePCS);
    objc_storeStrong(&v2->_ckSecureDatabase, v2->_tckSecureDatabase);
    v296 = v9;
    if (v9)
    {
      v20 = *(v9 + 16);
    }

    else
    {
      v20 = 0;
    }

    v283 = v20;
    if (v4)
    {
      v21 = *(v4 + 16);
    }

    else
    {
      v21 = 0;
    }

    v262 = v21;
    v261 = [FCPair pairWithFirst:v283 second:?];
    v328[0] = v261;
    if (v6)
    {
      v22 = *(v6 + 16);
    }

    else
    {
      v22 = 0;
    }

    v280 = v22;
    if (v4)
    {
      v23 = *(v4 + 16);
    }

    else
    {
      v23 = 0;
    }

    v260 = v23;
    v259 = [FCPair pairWithFirst:v280 second:?];
    v328[1] = v259;
    if (v7)
    {
      v24 = *(v7 + 16);
    }

    else
    {
      v24 = 0;
    }

    v278 = v24;
    if (v4)
    {
      v25 = *(v4 + 16);
    }

    else
    {
      v25 = 0;
    }

    v258 = v25;
    v257 = [FCPair pairWithFirst:v278 second:?];
    v328[2] = v257;
    if (v298)
    {
      v26 = v298[2];
    }

    else
    {
      v26 = 0;
    }

    v276 = v26;
    if (v4)
    {
      v27 = *(v4 + 16);
    }

    else
    {
      v27 = 0;
    }

    v256 = v27;
    v255 = [FCPair pairWithFirst:v276 second:?];
    v328[3] = v255;
    if (v292)
    {
      v28 = v292[2];
    }

    else
    {
      v28 = 0;
    }

    v274 = v28;
    if (v4)
    {
      v29 = *(v4 + 16);
    }

    else
    {
      v29 = 0;
    }

    v254 = v29;
    v253 = [FCPair pairWithFirst:v274 second:?];
    v328[4] = v253;
    v252 = [MEMORY[0x1E695DEC8] arrayWithObjects:v328 count:5];
    v30 = v9;
    if (v9)
    {
      v30 = *(v9 + 16);
    }

    v272 = v30;
    if (v4)
    {
      v31 = *(v4 + 16);
    }

    else
    {
      v31 = 0;
    }

    v251 = v31;
    v250 = [FCPair pairWithFirst:v272 second:?];
    v326[0] = v250;
    v32 = v295;
    if (v295)
    {
      v32 = v295[2];
    }

    v270 = v32;
    if (v5)
    {
      v33 = *(v5 + 16);
    }

    else
    {
      v33 = 0;
    }

    v249 = v33;
    v248 = [FCPair pairWithFirst:v270 second:?];
    v327[0] = v248;
    v34 = v294;
    if (v294)
    {
      v34 = v294[2];
    }

    v269 = v34;
    if (v4)
    {
      v35 = *(v4 + 16);
    }

    else
    {
      v35 = 0;
    }

    v247 = v35;
    v246 = [FCPair pairWithFirst:v269 second:?];
    v326[1] = v246;
    if (v13)
    {
      v36 = *(v13 + 16);
    }

    else
    {
      v36 = 0;
    }

    v268 = v36;
    if (v5)
    {
      v37 = *(v5 + 16);
    }

    else
    {
      v37 = 0;
    }

    v245 = v37;
    v244 = [FCPair pairWithFirst:v268 second:?];
    v327[1] = v244;
    if (v6)
    {
      v38 = *(v6 + 16);
    }

    else
    {
      v38 = 0;
    }

    v267 = v38;
    if (v4)
    {
      v39 = *(v4 + 16);
    }

    else
    {
      v39 = 0;
    }

    v243 = v39;
    v242 = [FCPair pairWithFirst:v267 second:?];
    v326[2] = v242;
    v40 = v300;
    if (v300)
    {
      v40 = v300[2];
    }

    v266 = v40;
    if (v5)
    {
      v41 = *(v5 + 16);
    }

    else
    {
      v41 = 0;
    }

    v241 = v41;
    v240 = [FCPair pairWithFirst:v266 second:?];
    v327[2] = v240;
    if (v7)
    {
      v42 = *(v7 + 16);
    }

    else
    {
      v42 = 0;
    }

    v265 = v42;
    if (v4)
    {
      v43 = *(v4 + 16);
    }

    else
    {
      v43 = 0;
    }

    v239 = v43;
    v238 = [FCPair pairWithFirst:v265 second:?];
    v326[3] = v238;
    v44 = v299;
    if (v299)
    {
      v44 = v299[2];
    }

    v264 = v44;
    if (v5)
    {
      v45 = *(v5 + 16);
    }

    else
    {
      v45 = 0;
    }

    v237 = v45;
    v236 = [FCPair pairWithFirst:v264 second:?];
    v327[3] = v236;
    if (v298)
    {
      v46 = v298[2];
    }

    else
    {
      v46 = 0;
    }

    v47 = v46;
    if (v4)
    {
      v48 = *(v4 + 16);
    }

    else
    {
      v48 = 0;
    }

    v235 = v48;
    v234 = [FCPair pairWithFirst:v47 second:?];
    v326[4] = v234;
    v49 = v297;
    if (v297)
    {
      v49 = v297[2];
    }

    v263 = v49;
    v290 = v4;
    v287 = v13;
    if (v5)
    {
      v50 = *(v5 + 16);
    }

    else
    {
      v50 = 0;
    }

    v233 = v50;
    v232 = [FCPair pairWithFirst:v263 second:?];
    v327[4] = v232;
    if (v292)
    {
      v51 = v292[2];
    }

    else
    {
      v51 = 0;
    }

    v52 = v51;
    v53 = v4;
    v293 = v7;
    if (v4)
    {
      v53 = *(v4 + 16);
    }

    v54 = v53;
    v55 = [FCPair pairWithFirst:v52 second:v54];
    v326[5] = v55;
    v56 = v291;
    if (v291)
    {
      v56 = v291[2];
    }

    v57 = v56;
    v288 = v6;
    v289 = v5;
    if (v5)
    {
      v58 = *(v5 + 16);
    }

    else
    {
      v58 = 0;
    }

    v59 = v58;
    v60 = [FCPair pairWithFirst:v57 second:v59];
    v327[5] = v60;
    v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v327 forKeys:v326 count:6];
    v286 = [FCCKPrivateDatabaseVersionMapping mappingWithBaseValues:v252 V2Changes:v61 V3Changes:0 V4Changes:0];

    if (v296)
    {
      v62 = v296[2];
    }

    else
    {
      v62 = 0;
    }

    v284 = v62;
    v281 = [FCPair pairWithFirst:"pairWithFirst:second:" second:?];
    v325[0] = v281;
    if (v296)
    {
      v63 = v296[2];
    }

    else
    {
      v63 = 0;
    }

    v279 = v63;
    v277 = [FCPair pairWithFirst:"pairWithFirst:second:" second:?];
    v325[1] = v277;
    v64 = [MEMORY[0x1E695DEC8] arrayWithObjects:v325 count:2];
    if (v296)
    {
      v65 = v296[2];
    }

    else
    {
      v65 = 0;
    }

    v275 = v65;
    v273 = [FCPair pairWithFirst:"pairWithFirst:second:" second:?];
    v323[0] = v273;
    v66 = v295;
    if (v295)
    {
      v66 = v295[2];
    }

    v271 = v66;
    v67 = [FCPair pairWithFirst:"pairWithFirst:second:" second:?];
    v324[0] = v67;
    v68 = v294;
    if (v294)
    {
      v68 = v294[2];
    }

    v69 = v68;
    v70 = [FCPair pairWithFirst:v69 second:@"DefaultZoneStaticRecordSecure_Client"];
    v323[1] = v70;
    if (v287)
    {
      v71 = v287[2];
    }

    else
    {
      v71 = 0;
    }

    v72 = v71;
    v73 = [FCPair pairWithFirst:v72 second:@"DefaultZoneStaticRecordSecure_Server"];
    v324[1] = v73;
    v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v324 forKeys:v323 count:2];
    v75 = [FCCKPrivateDatabaseVersionMapping mappingWithBaseValues:v64 V2Changes:v74 V3Changes:0 V4Changes:0];

    v322[0] = v288;
    v322[1] = v300;
    v322[2] = v293;
    v322[3] = v299;
    v322[4] = v298;
    v322[5] = v297;
    v322[6] = v292;
    v322[7] = v291;
    v322[8] = v296;
    v322[9] = v295;
    v322[10] = v294;
    v322[11] = v287;
    v76 = [MEMORY[0x1E695DEC8] arrayWithObjects:v322 count:12];
    v321[0] = v290;
    v321[1] = v289;
    v77 = [MEMORY[0x1E695DEC8] arrayWithObjects:v321 count:2];
    v285 = v75;
    v78 = [FCCKPrivateDatabaseSchema databaseSchemaWithZones:v76 records:v77 recordTypeVersionMapping:v286 recordNameVersionMapping:v75];

    v79 = [[FCCKDatabaseEncryptionMiddleware alloc] initWithEncryptionSchema:v78 recordNameCipher:0];
    v80 = [FCCKPrivateDatabase alloc];
    ckDatabase = v2->_ckDatabase;
    ckDatabaseWithZoneWidePCS = v2->_ckDatabaseWithZoneWidePCS;
    ckSecureDatabase = v2->_ckSecureDatabase;
    v282 = v79;
    v320 = v79;
    v84 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v320 count:1];
    v85 = [(FCCKPrivateDatabase *)&v80->super.isa t_initWithContainers:ckDatabase database:ckDatabaseWithZoneWidePCS databaseWithZoneWidePCS:ckSecureDatabase secureDatabase:v78 schema:v84 middleware:0 encryptionDelegate:0 networkBehaviorMonitor:?];
    database = v2->_database;
    v2->_database = v85;

    v87 = v2->_database;
    if (v87)
    {
      v87->_currentVersion = 3;
    }

    v88 = objc_alloc(MEMORY[0x1E695BA90]);
    if (v288)
    {
      v89 = v288[2];
    }

    else
    {
      v89 = 0;
    }

    v90 = v89;
    v91 = *MEMORY[0x1E695B728];
    v92 = [v88 initWithZoneName:v90 ownerName:*MEMORY[0x1E695B728]];
    clientZoneID = v2->_clientZoneID;
    v2->_clientZoneID = v92;

    v94 = objc_alloc(MEMORY[0x1E695BA90]);
    v95 = v293;
    if (v293)
    {
      v95 = v293[2];
    }

    v96 = v95;
    v97 = [v94 initWithZoneName:v96 ownerName:v91];
    clientZoneIDWithZoneWidePCS = v2->_clientZoneIDWithZoneWidePCS;
    v2->_clientZoneIDWithZoneWidePCS = v97;

    v99 = objc_alloc(MEMORY[0x1E695BA90]);
    v100 = v298;
    if (v298)
    {
      v100 = v298[2];
    }

    v101 = v100;
    v102 = [v99 initWithZoneName:v101 ownerName:v91];
    clientZoneIDSecure = v2->_clientZoneIDSecure;
    v2->_clientZoneIDSecure = v102;

    v318 = *&v2->_clientZoneID;
    v319 = v2->_clientZoneIDSecure;
    v104 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v318 count:3];
    allClientZoneIDs = v2->_allClientZoneIDs;
    v2->_allClientZoneIDs = v104;

    v106 = [objc_alloc(MEMORY[0x1E695BA80]) initWithZoneID:v2->_clientZoneID];
    clientZone = v2->_clientZone;
    v2->_clientZone = v106;

    v108 = [objc_alloc(MEMORY[0x1E695BA80]) initWithZoneID:v2->_clientZoneIDWithZoneWidePCS];
    clientZoneWithZoneWidePCS = v2->_clientZoneWithZoneWidePCS;
    v2->_clientZoneWithZoneWidePCS = v108;

    v110 = [objc_alloc(MEMORY[0x1E695BA80]) initWithZoneID:v2->_clientZoneIDSecure];
    clientZoneSecure = v2->_clientZoneSecure;
    v2->_clientZoneSecure = v110;

    v316 = *&v2->_clientZone;
    v317 = v2->_clientZoneSecure;
    v112 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v316 count:3];
    allClientZones = v2->_allClientZones;
    v2->_allClientZones = v112;

    v114 = [(NSArray *)v2->_allClientZones fc_dictionaryWithKeyBlock:&__block_literal_global_150];
    allClientZonesByID = v2->_allClientZonesByID;
    v2->_allClientZonesByID = v114;

    v116 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:@"R" zoneID:v2->_clientZoneID];
    clientRecordID = v2->_clientRecordID;
    v2->_clientRecordID = v116;

    v118 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:@"R" zoneID:v2->_clientZoneIDWithZoneWidePCS];
    clientRecordIDWithZoneWidePCS = v2->_clientRecordIDWithZoneWidePCS;
    v2->_clientRecordIDWithZoneWidePCS = v118;

    v120 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:@"R" zoneID:v2->_clientZoneIDSecure];
    clientRecordIDSecure = v2->_clientRecordIDSecure;
    v2->_clientRecordIDSecure = v120;

    v314 = *&v2->_clientRecordID;
    v315 = v2->_clientRecordIDSecure;
    v122 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v314 count:3];
    allClientRecordIDs = v2->_allClientRecordIDs;
    v2->_allClientRecordIDs = v122;

    v124 = objc_alloc(MEMORY[0x1E695BA60]);
    if (v290)
    {
      v125 = v290[2];
    }

    else
    {
      v125 = 0;
    }

    v126 = v125;
    v127 = [v124 initWithRecordType:v126 recordID:v2->_clientRecordID];
    clientRecord = v2->_clientRecord;
    v2->_clientRecord = v127;

    v129 = objc_alloc(MEMORY[0x1E695BA60]);
    if (v290)
    {
      v130 = v290[2];
    }

    else
    {
      v130 = 0;
    }

    v131 = v130;
    v132 = [v129 initWithRecordType:v131 recordID:v2->_clientRecordIDWithZoneWidePCS];
    clientRecordWithZoneWidePCS = v2->_clientRecordWithZoneWidePCS;
    v2->_clientRecordWithZoneWidePCS = v132;

    v134 = objc_alloc(MEMORY[0x1E695BA60]);
    if (v290)
    {
      v135 = v290[2];
    }

    else
    {
      v135 = 0;
    }

    v136 = v135;
    v137 = [v134 initWithRecordType:v136 recordID:v2->_clientRecordIDSecure];
    clientRecordSecure = v2->_clientRecordSecure;
    v2->_clientRecordSecure = v137;

    v312 = *&v2->_clientRecord;
    v313 = v2->_clientRecordSecure;
    v139 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v312 count:3];
    allClientRecords = v2->_allClientRecords;
    v2->_allClientRecords = v139;

    v141 = [(NSArray *)v2->_allClientRecords fc_dictionaryWithKeyBlock:&__block_literal_global_59_0];
    allClientRecordsByID = v2->_allClientRecordsByID;
    v2->_allClientRecordsByID = v141;

    v143 = objc_alloc(MEMORY[0x1E695BA90]);
    v144 = v300;
    if (v300)
    {
      v144 = v300[2];
    }

    v145 = v144;
    v146 = [v143 initWithZoneName:v145 ownerName:v91];
    serverZoneID = v2->_serverZoneID;
    v2->_serverZoneID = v146;

    v148 = objc_alloc(MEMORY[0x1E695BA90]);
    v149 = v299;
    if (v299)
    {
      v149 = v299[2];
    }

    v150 = v149;
    v151 = [v148 initWithZoneName:v150 ownerName:v91];
    serverZoneIDWithZoneWidePCS = v2->_serverZoneIDWithZoneWidePCS;
    v2->_serverZoneIDWithZoneWidePCS = v151;

    v153 = objc_alloc(MEMORY[0x1E695BA90]);
    v154 = v297;
    if (v297)
    {
      v154 = v297[2];
    }

    v155 = v154;
    v156 = [v153 initWithZoneName:v155 ownerName:v91];
    serverZoneIDSecure = v2->_serverZoneIDSecure;
    v2->_serverZoneIDSecure = v156;

    v310 = *&v2->_serverZoneID;
    v311 = v2->_serverZoneIDSecure;
    v158 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v310 count:3];
    allServerZoneIDs = v2->_allServerZoneIDs;
    v2->_allServerZoneIDs = v158;

    v160 = [objc_alloc(MEMORY[0x1E695BA80]) initWithZoneID:v2->_serverZoneID];
    serverZone = v2->_serverZone;
    v2->_serverZone = v160;

    v162 = [objc_alloc(MEMORY[0x1E695BA80]) initWithZoneID:v2->_serverZoneIDWithZoneWidePCS];
    serverZoneWithZoneWidePCS = v2->_serverZoneWithZoneWidePCS;
    v2->_serverZoneWithZoneWidePCS = v162;

    v164 = [objc_alloc(MEMORY[0x1E695BA80]) initWithZoneID:v2->_serverZoneIDSecure];
    serverZoneSecure = v2->_serverZoneSecure;
    v2->_serverZoneSecure = v164;

    v308 = *&v2->_serverZone;
    v309 = v2->_serverZoneSecure;
    v166 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v308 count:3];
    allServerZones = v2->_allServerZones;
    v2->_allServerZones = v166;

    v168 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:@"R" zoneID:v2->_serverZoneID];
    serverRecordID = v2->_serverRecordID;
    v2->_serverRecordID = v168;

    v170 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:@"R" zoneID:v2->_serverZoneIDWithZoneWidePCS];
    serverRecordIDWithZoneWidePCS = v2->_serverRecordIDWithZoneWidePCS;
    v2->_serverRecordIDWithZoneWidePCS = v170;

    v172 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:@"R" zoneID:v2->_serverZoneIDSecure];
    serverRecordIDSecure = v2->_serverRecordIDSecure;
    v2->_serverRecordIDSecure = v172;

    v306 = *&v2->_serverRecordID;
    v307 = v2->_serverRecordIDSecure;
    v174 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v306 count:3];
    allServerRecordIDs = v2->_allServerRecordIDs;
    v2->_allServerRecordIDs = v174;

    v176 = objc_alloc(MEMORY[0x1E695BA60]);
    if (v289)
    {
      v177 = v289[2];
    }

    else
    {
      v177 = 0;
    }

    v178 = v177;
    v179 = [v176 initWithRecordType:v178 recordID:v2->_serverRecordID];
    serverRecord = v2->_serverRecord;
    v2->_serverRecord = v179;

    v181 = objc_alloc(MEMORY[0x1E695BA60]);
    if (v289)
    {
      v182 = v289[2];
    }

    else
    {
      v182 = 0;
    }

    v183 = v182;
    v184 = [v181 initWithRecordType:v183 recordID:v2->_serverRecordIDWithZoneWidePCS];
    serverRecordWithZoneWidePCS = v2->_serverRecordWithZoneWidePCS;
    v2->_serverRecordWithZoneWidePCS = v184;

    v186 = objc_alloc(MEMORY[0x1E695BA60]);
    if (v289)
    {
      v187 = v289[2];
    }

    else
    {
      v187 = 0;
    }

    v188 = v187;
    v189 = [v186 initWithRecordType:v188 recordID:v2->_serverRecordIDSecure];
    serverRecordSecure = v2->_serverRecordSecure;
    v2->_serverRecordSecure = v189;

    v304 = *&v2->_serverRecord;
    v305 = v2->_serverRecordSecure;
    v191 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v304 count:3];
    allServerRecords = v2->_allServerRecords;
    v2->_allServerRecords = v191;

    v193 = objc_alloc(MEMORY[0x1E695BA90]);
    v194 = [v193 initWithZoneName:*MEMORY[0x1E695B800] ownerName:v91];
    v195 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:@"DefaultZoneStaticRecord_Client" zoneID:v194];
    defaultZoneClientRecordID = v2->_defaultZoneClientRecordID;
    v2->_defaultZoneClientRecordID = v195;

    v197 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:@"DefaultZoneStaticRecordSecure_Client" zoneID:v194];
    defaultZoneClientRecordIDSecure = v2->_defaultZoneClientRecordIDSecure;
    v2->_defaultZoneClientRecordIDSecure = v197;

    v199 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:@"DefaultZoneStaticRecord_Server" zoneID:v194];
    defaultZoneServerRecordID = v2->_defaultZoneServerRecordID;
    v2->_defaultZoneServerRecordID = v199;

    v201 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:@"DefaultZoneStaticRecordSecure_Server" zoneID:v194];
    defaultZoneServerRecordIDSecure = v2->_defaultZoneServerRecordIDSecure;
    v2->_defaultZoneServerRecordIDSecure = v201;

    v203 = v2->_defaultZoneClientRecordIDSecure;
    v303[0] = v2->_defaultZoneClientRecordID;
    v303[1] = v203;
    v204 = [MEMORY[0x1E695DEC8] arrayWithObjects:v303 count:2];
    allDefaultZoneClientRecordIDs = v2->_allDefaultZoneClientRecordIDs;
    v2->_allDefaultZoneClientRecordIDs = v204;

    v206 = objc_alloc(MEMORY[0x1E695BA60]);
    if (v290)
    {
      v207 = v290[2];
    }

    else
    {
      v207 = 0;
    }

    v208 = v207;
    v209 = [v206 initWithRecordType:v208 recordID:v2->_defaultZoneClientRecordID];
    defaultZoneClientRecord = v2->_defaultZoneClientRecord;
    v2->_defaultZoneClientRecord = v209;

    v211 = objc_alloc(MEMORY[0x1E695BA60]);
    if (v290)
    {
      v212 = v290[2];
    }

    else
    {
      v212 = 0;
    }

    v213 = v212;
    v214 = [v211 initWithRecordType:v213 recordID:v2->_defaultZoneClientRecordIDSecure];
    defaultZoneClientRecordSecure = v2->_defaultZoneClientRecordSecure;
    v2->_defaultZoneClientRecordSecure = v214;

    v216 = objc_alloc(MEMORY[0x1E695BA60]);
    if (v289)
    {
      v217 = v289[2];
    }

    else
    {
      v217 = 0;
    }

    v218 = v217;
    v219 = [v216 initWithRecordType:v218 recordID:v2->_defaultZoneServerRecordID];
    defaultZoneServerRecord = v2->_defaultZoneServerRecord;
    v2->_defaultZoneServerRecord = v219;

    v221 = objc_alloc(MEMORY[0x1E695BA60]);
    if (v289)
    {
      v222 = v289[2];
    }

    else
    {
      v222 = 0;
    }

    v223 = v222;
    v224 = [v221 initWithRecordType:v223 recordID:v2->_defaultZoneServerRecordIDSecure];
    defaultZoneServerRecordSecure = v2->_defaultZoneServerRecordSecure;
    v2->_defaultZoneServerRecordSecure = v224;

    v226 = v2->_defaultZoneClientRecordSecure;
    v302[0] = v2->_defaultZoneClientRecord;
    v302[1] = v226;
    v227 = [MEMORY[0x1E695DEC8] arrayWithObjects:v302 count:2];
    allDefaultZoneClientRecords = v2->_allDefaultZoneClientRecords;
    v2->_allDefaultZoneClientRecords = v227;

    v229 = [(NSArray *)v2->_allDefaultZoneClientRecords fc_dictionaryWithKeyBlock:&__block_literal_global_61_5];
    allDefaultZoneClientRecordsByID = v2->_allDefaultZoneClientRecordsByID;
    v2->_allDefaultZoneClientRecordsByID = v229;
  }

  return v2;
}

@end