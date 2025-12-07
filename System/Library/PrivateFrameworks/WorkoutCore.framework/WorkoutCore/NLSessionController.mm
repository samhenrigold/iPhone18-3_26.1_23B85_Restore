@interface NLSessionController
- (HKWorkoutSessionDelegate)mirroredDelegate;
- (HKWorkoutSessionDelegate)stingDelegate;
- (HKWorkoutSessionPrivateDelegate)mirroringDelegate;
- (NLSessionController)initWithWorkoutSession:(id)session;
- (NLSessionControllerDelegate)delegate;
- (void)_configureStateActions;
- (void)_configureStateMachine;
- (void)_onCompleted;
- (void)_onRecovery;
- (void)_onSessionError;
- (void)_prepareSession;
- (void)_setState:(unint64_t)state;
- (void)_startSession;
- (void)_stopSession;
- (void)addSessionControllerStateObserver:(id)observer;
- (void)removeSessionControllerStateObserver:(id)observer;
- (void)sessionActivity:(id)activity didChangeFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)workoutSession:(id)session didChangeToState:(int64_t)state fromState:(int64_t)fromState date:(id)date;
- (void)workoutSession:(id)session didDisconnectFromRemoteDeviceWithError:(id)error;
- (void)workoutSession:(id)session didFailWithError:(id)error;
- (void)workoutSession:(id)session didGenerateEvent:(id)event;
- (void)workoutSession:(id)session didReceiveDataFromRemoteDevice:(id)device;
- (void)workoutSession:(id)session didReceiveDataFromRemoteWorkoutSession:(id)workoutSession;
- (void)workoutSession:(id)session didSuggestWorkoutConfiguration:(id)configuration date:(id)date;
- (void)workoutSession:(id)session didUpdateWorkoutConfiguration:(id)configuration;
@end

@implementation NLSessionController

- (NLSessionController)initWithWorkoutSession:(id)session
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, session);
  v3 = selfCopy;
  selfCopy = 0;
  v9.receiver = v3;
  v9.super_class = NLSessionController;
  v8 = [(NLSessionController *)&v9 init];
  selfCopy = v8;
  objc_storeStrong(&selfCopy, v8);
  if (v8)
  {
    selfCopy->_sessionState = 0;
    objc_storeStrong(&selfCopy->_workoutSession, location[0]);
    [(HKWorkoutSession *)selfCopy->_workoutSession setDelegate:selfCopy];
    [(NLSessionController *)selfCopy _configureStateMachine];
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    stateObservers = selfCopy->_stateObservers;
    selfCopy->_stateObservers = weakObjectsHashTable;
    MEMORY[0x277D82BD8](stateObservers);
  }

  v7 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (void)_configureStateMachine
{
  v280[14] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  __b[14] = a2;
  memset(__b, 0, 0x70uLL);
  NLSessionStateIdentifierShortHandStruct(__b);
  v258 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[0]];
  v280[0] = v258;
  v257 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[1]];
  v280[1] = v257;
  v256 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[2]];
  v280[2] = v256;
  v255 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[3]];
  v280[3] = v255;
  v254 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[4]];
  v280[4] = v254;
  v253 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[5]];
  v280[5] = v253;
  v252 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[6]];
  v280[6] = v252;
  v251 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[7]];
  v280[7] = v251;
  v250 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[8]];
  v280[8] = v250;
  v249 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[9]];
  v280[9] = v249;
  v248 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[11]];
  v280[10] = v248;
  v247 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[12]];
  v280[11] = v247;
  v246 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[13]];
  v280[12] = v246;
  v245 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[10]];
  v280[13] = v245;
  v276 = [MEMORY[0x277CBEA60] arrayWithObjects:v280 count:14];
  MEMORY[0x277D82BD8](v245);
  MEMORY[0x277D82BD8](v246);
  MEMORY[0x277D82BD8](v247);
  MEMORY[0x277D82BD8](v248);
  MEMORY[0x277D82BD8](v249);
  MEMORY[0x277D82BD8](v250);
  MEMORY[0x277D82BD8](v251);
  MEMORY[0x277D82BD8](v252);
  MEMORY[0x277D82BD8](v253);
  MEMORY[0x277D82BD8](v254);
  MEMORY[0x277D82BD8](v255);
  MEMORY[0x277D82BD8](v256);
  MEMORY[0x277D82BD8](v257);
  MEMORY[0x277D82BD8](v258);
  v260 = objc_alloc(MEMORY[0x277D0A800]);
  uUID = [(NLSessionController *)selfCopy UUID];
  v262 = FIUIStateMachineLabel();
  v259 = MEMORY[0x277D85CD0];
  v2 = MEMORY[0x277D85CD0];
  v261 = v259;
  v3 = [v260 initWithLabel:v262 queue:?];
  stateMachine = selfCopy->_stateMachine;
  selfCopy->_stateMachine = v3;
  MEMORY[0x277D82BD8](stateMachine);
  MEMORY[0x277D82BD8](v261);
  MEMORY[0x277D82BD8](v262);
  MEMORY[0x277D82BD8](uUID);
  FIUIStateMachineSetDiagnosticAndErrorHandler();
  v275 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v276, "count")}];
  memset(v273, 0, sizeof(v273));
  obj = MEMORY[0x277D82BE0](v276);
  v265 = [obj countByEnumeratingWithState:v273 objects:v279 count:16];
  if (v265)
  {
    v242 = *v273[2];
    v243 = 0;
    v244 = v265;
    while (1)
    {
      v241 = v243;
      if (*v273[2] != v242)
      {
        objc_enumerationMutation(obj);
      }

      v274 = *(v273[1] + 8 * v243);
      unsignedIntegerValue = [v274 unsignedIntegerValue];
      v239 = objc_alloc(MEMORY[0x277D0A7F8]);
      v240 = NLSessionStateIdentifierDescription(unsignedIntegerValue);
      v271 = [v239 initWithLabel:?];
      *&v5 = MEMORY[0x277D82BD8](v240).n128_u64[0];
      [v275 setObject:v271 forKeyedSubscript:{v274, v5}];
      [(FIUIStateMachine *)selfCopy->_stateMachine addState:v271];
      objc_storeStrong(&v271, 0);
      ++v243;
      if (v241 + 1 >= v244)
      {
        v243 = 0;
        v244 = [obj countByEnumeratingWithState:v273 objects:v279 count:16];
        if (!v244)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  objc_storeStrong(&selfCopy->_stateMap, v275);
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v269 = [objc_alloc(MEMORY[0x277D0A7F8]) initWithLabel:@"Preparing"];
  v39 = selfCopy->_stateMachine;
  v36 = MEMORY[0x277CBEB98];
  v34 = v275;
  v46 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[1]];
  v45 = [v34 objectForKeyedSubscript:?];
  v35 = v275;
  v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[3]];
  v43 = [v35 objectForKeyedSubscript:?];
  v42 = [v36 setWithObjects:{v45, v43, 0}];
  v38 = v269;
  v37 = v275;
  v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[1]];
  v40 = [v37 objectForKeyedSubscript:?];
  [(FIUIStateMachine *)v39 addChildStates:v42 toState:v38 withEntryState:?];
  MEMORY[0x277D82BD8](v40);
  MEMORY[0x277D82BD8](v41);
  MEMORY[0x277D82BD8](v42);
  MEMORY[0x277D82BD8](v43);
  MEMORY[0x277D82BD8](v44);
  MEMORY[0x277D82BD8](v45);
  *&v6 = MEMORY[0x277D82BD8](v46).n128_u64[0];
  v47 = v269;
  v48 = dictionary;
  label = [v269 label];
  [v48 setObject:v47 forKeyedSubscript:?];
  MEMORY[0x277D82BD8](label);
  v268 = [objc_alloc(MEMORY[0x277D0A7F8]) initWithLabel:@"InSession"];
  v57 = selfCopy->_stateMachine;
  v54 = MEMORY[0x277CBEB98];
  v50 = v275;
  v68 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[6]];
  v67 = [v50 objectForKeyedSubscript:?];
  v51 = v275;
  v66 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[4]];
  v65 = [v51 objectForKeyedSubscript:?];
  v52 = v275;
  v64 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[5]];
  v63 = [v52 objectForKeyedSubscript:?];
  v53 = v275;
  v62 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[7]];
  v61 = [v53 objectForKeyedSubscript:?];
  v60 = [v54 setWithObjects:{v67, v65, v63, v61, 0}];
  v56 = v268;
  v55 = v275;
  v59 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[4]];
  v58 = [v55 objectForKeyedSubscript:?];
  [(FIUIStateMachine *)v57 addChildStates:v60 toState:v56 withEntryState:?];
  MEMORY[0x277D82BD8](v58);
  MEMORY[0x277D82BD8](v59);
  MEMORY[0x277D82BD8](v60);
  MEMORY[0x277D82BD8](v61);
  MEMORY[0x277D82BD8](v62);
  MEMORY[0x277D82BD8](v63);
  MEMORY[0x277D82BD8](v64);
  MEMORY[0x277D82BD8](v65);
  MEMORY[0x277D82BD8](v66);
  MEMORY[0x277D82BD8](v67);
  *&v7 = MEMORY[0x277D82BD8](v68).n128_u64[0];
  v69 = v268;
  v70 = dictionary;
  label2 = [v268 label];
  [v70 setObject:v69 forKeyedSubscript:?];
  MEMORY[0x277D82BD8](label2);
  v267 = [objc_alloc(MEMORY[0x277D0A7F8]) initWithLabel:@"Stopping"];
  v77 = selfCopy->_stateMachine;
  v74 = MEMORY[0x277CBEB98];
  v72 = v275;
  v84 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[8]];
  v83 = [v72 objectForKeyedSubscript:?];
  v73 = v275;
  v82 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[9]];
  v81 = [v73 objectForKeyedSubscript:?];
  v80 = [v74 setWithObjects:{v83, v81, 0}];
  v76 = v267;
  v75 = v275;
  v79 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[8]];
  v78 = [v75 objectForKeyedSubscript:?];
  [(FIUIStateMachine *)v77 addChildStates:v80 toState:v76 withEntryState:?];
  MEMORY[0x277D82BD8](v78);
  MEMORY[0x277D82BD8](v79);
  MEMORY[0x277D82BD8](v80);
  MEMORY[0x277D82BD8](v81);
  MEMORY[0x277D82BD8](v82);
  MEMORY[0x277D82BD8](v83);
  *&v8 = MEMORY[0x277D82BD8](v84).n128_u64[0];
  v85 = v267;
  v86 = dictionary;
  label3 = [v267 label];
  [v86 setObject:v85 forKeyedSubscript:?];
  MEMORY[0x277D82BD8](label3);
  v266 = [objc_alloc(MEMORY[0x277D0A7F8]) initWithLabel:@"Ending"];
  v93 = selfCopy->_stateMachine;
  v90 = MEMORY[0x277CBEB98];
  v88 = v275;
  v100 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[11]];
  v99 = [v88 objectForKeyedSubscript:?];
  v89 = v275;
  v98 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[12]];
  v97 = [v89 objectForKeyedSubscript:?];
  v96 = [v90 setWithObjects:{v99, v97, 0}];
  v92 = v266;
  v91 = v275;
  v95 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[11]];
  v94 = [v91 objectForKeyedSubscript:?];
  [(FIUIStateMachine *)v93 addChildStates:v96 toState:v92 withEntryState:?];
  MEMORY[0x277D82BD8](v94);
  MEMORY[0x277D82BD8](v95);
  MEMORY[0x277D82BD8](v96);
  MEMORY[0x277D82BD8](v97);
  MEMORY[0x277D82BD8](v98);
  MEMORY[0x277D82BD8](v99);
  *&v9 = MEMORY[0x277D82BD8](v100).n128_u64[0];
  v101 = v266;
  v102 = dictionary;
  label4 = [v266 label];
  [v102 setObject:v101 forKeyedSubscript:?];
  MEMORY[0x277D82BD8](label4);
  objc_storeStrong(&selfCopy->_parentStateMap, dictionary);
  stateMap = selfCopy->_stateMap;
  v106 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[0]];
  v105 = [(NSDictionary *)stateMap objectForKeyedSubscript:?];
  _RegisterTransition(v105, v269, 1);
  MEMORY[0x277D82BD8](v105);
  *&v10 = MEMORY[0x277D82BD8](v106).n128_u64[0];
  v107 = selfCopy->_stateMap;
  v112 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[0], v10}];
  v111 = [(NSDictionary *)v107 objectForKeyedSubscript:?];
  v108 = selfCopy->_stateMap;
  v110 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[2]];
  v109 = [(NSDictionary *)v108 objectForKeyedSubscript:?];
  _RegisterTransition(v111, v109, 3);
  MEMORY[0x277D82BD8](v109);
  MEMORY[0x277D82BD8](v110);
  MEMORY[0x277D82BD8](v111);
  *&v11 = MEMORY[0x277D82BD8](v112).n128_u64[0];
  v113 = selfCopy->_stateMap;
  v118 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[2], v11}];
  v117 = [(NSDictionary *)v113 objectForKeyedSubscript:?];
  v114 = selfCopy->_stateMap;
  v116 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[4]];
  v115 = [(NSDictionary *)v114 objectForKeyedSubscript:?];
  _RegisterTransition(v117, v115, 8);
  MEMORY[0x277D82BD8](v115);
  MEMORY[0x277D82BD8](v116);
  MEMORY[0x277D82BD8](v117);
  *&v12 = MEMORY[0x277D82BD8](v118).n128_u64[0];
  v119 = selfCopy->_stateMap;
  v124 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[2], v12}];
  v123 = [(NSDictionary *)v119 objectForKeyedSubscript:?];
  v120 = selfCopy->_stateMap;
  v122 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[6]];
  v121 = [(NSDictionary *)v120 objectForKeyedSubscript:?];
  _RegisterTransition(v123, v121, 7);
  MEMORY[0x277D82BD8](v121);
  MEMORY[0x277D82BD8](v122);
  MEMORY[0x277D82BD8](v123);
  *&v13 = MEMORY[0x277D82BD8](v124).n128_u64[0];
  v125 = selfCopy->_stateMap;
  v130 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[2], v13}];
  v129 = [(NSDictionary *)v125 objectForKeyedSubscript:?];
  v126 = selfCopy->_stateMap;
  v128 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[7]];
  v127 = [(NSDictionary *)v126 objectForKeyedSubscript:?];
  _RegisterTransition(v129, v127, 6);
  MEMORY[0x277D82BD8](v127);
  MEMORY[0x277D82BD8](v128);
  MEMORY[0x277D82BD8](v129);
  *&v14 = MEMORY[0x277D82BD8](v130).n128_u64[0];
  v131 = selfCopy->_stateMap;
  v136 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[1], v14}];
  v135 = [(NSDictionary *)v131 objectForKeyedSubscript:?];
  v132 = selfCopy->_stateMap;
  v134 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[3]];
  v133 = [(NSDictionary *)v132 objectForKeyedSubscript:?];
  _RegisterTransition(v135, v133, 2);
  MEMORY[0x277D82BD8](v133);
  MEMORY[0x277D82BD8](v134);
  MEMORY[0x277D82BD8](v135);
  *&v15 = MEMORY[0x277D82BD8](v136).n128_u64[0];
  v137 = selfCopy->_stateMap;
  v142 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[3], v15}];
  v141 = [(NSDictionary *)v137 objectForKeyedSubscript:?];
  v138 = selfCopy->_stateMap;
  v140 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[4]];
  v139 = [(NSDictionary *)v138 objectForKeyedSubscript:?];
  _RegisterTransition(v141, v139, 4);
  MEMORY[0x277D82BD8](v139);
  MEMORY[0x277D82BD8](v140);
  MEMORY[0x277D82BD8](v141);
  MEMORY[0x277D82BD8](v142);
  _RegisterTransition(v269, v266, 13);
  _RegisterTransition(v269, v267, 9);
  v143 = selfCopy->_stateMap;
  v148 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[4]];
  v147 = [(NSDictionary *)v143 objectForKeyedSubscript:?];
  v144 = selfCopy->_stateMap;
  v146 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[5]];
  v145 = [(NSDictionary *)v144 objectForKeyedSubscript:?];
  _RegisterTransition(v147, v145, 5);
  MEMORY[0x277D82BD8](v145);
  MEMORY[0x277D82BD8](v146);
  MEMORY[0x277D82BD8](v147);
  *&v16 = MEMORY[0x277D82BD8](v148).n128_u64[0];
  v149 = selfCopy->_stateMap;
  v154 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[5], v16}];
  v153 = [(NSDictionary *)v149 objectForKeyedSubscript:?];
  v150 = selfCopy->_stateMap;
  v152 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[7]];
  v151 = [(NSDictionary *)v150 objectForKeyedSubscript:?];
  _RegisterTransition(v153, v151, 6);
  MEMORY[0x277D82BD8](v151);
  MEMORY[0x277D82BD8](v152);
  MEMORY[0x277D82BD8](v153);
  *&v17 = MEMORY[0x277D82BD8](v154).n128_u64[0];
  v155 = selfCopy->_stateMap;
  v160 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[7], v17}];
  v159 = [(NSDictionary *)v155 objectForKeyedSubscript:?];
  v156 = selfCopy->_stateMap;
  v158 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[6]];
  v157 = [(NSDictionary *)v156 objectForKeyedSubscript:?];
  _RegisterTransition(v159, v157, 7);
  MEMORY[0x277D82BD8](v157);
  MEMORY[0x277D82BD8](v158);
  MEMORY[0x277D82BD8](v159);
  *&v18 = MEMORY[0x277D82BD8](v160).n128_u64[0];
  v161 = selfCopy->_stateMap;
  v166 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[6], v18}];
  v165 = [(NSDictionary *)v161 objectForKeyedSubscript:?];
  v162 = selfCopy->_stateMap;
  v164 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[4]];
  v163 = [(NSDictionary *)v162 objectForKeyedSubscript:?];
  _RegisterTransition(v165, v163, 8);
  MEMORY[0x277D82BD8](v163);
  MEMORY[0x277D82BD8](v164);
  MEMORY[0x277D82BD8](v165);
  *&v19 = MEMORY[0x277D82BD8](v166).n128_u64[0];
  v167 = selfCopy->_stateMap;
  v172 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[5], v19}];
  v171 = [(NSDictionary *)v167 objectForKeyedSubscript:?];
  v168 = selfCopy->_stateMap;
  v170 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[6]];
  v169 = [(NSDictionary *)v168 objectForKeyedSubscript:?];
  _RegisterTransition(v171, v169, 7);
  MEMORY[0x277D82BD8](v169);
  MEMORY[0x277D82BD8](v170);
  MEMORY[0x277D82BD8](v171);
  *&v20 = MEMORY[0x277D82BD8](v172).n128_u64[0];
  v173 = selfCopy->_stateMap;
  v178 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[6], v20}];
  v177 = [(NSDictionary *)v173 objectForKeyedSubscript:?];
  v174 = selfCopy->_stateMap;
  v176 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[5]];
  v175 = [(NSDictionary *)v174 objectForKeyedSubscript:?];
  _RegisterTransition(v177, v175, 5);
  MEMORY[0x277D82BD8](v175);
  MEMORY[0x277D82BD8](v176);
  MEMORY[0x277D82BD8](v177);
  MEMORY[0x277D82BD8](v178);
  _RegisterTransition(v268, v267, 9);
  v180 = v268;
  v179 = selfCopy->_stateMap;
  v182 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[12]];
  v181 = [(NSDictionary *)v179 objectForKeyedSubscript:?];
  _RegisterTransition(v180, v181, 10);
  MEMORY[0x277D82BD8](v181);
  *&v21 = MEMORY[0x277D82BD8](v182).n128_u64[0];
  v183 = selfCopy->_stateMap;
  v188 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[8], v21}];
  v187 = [(NSDictionary *)v183 objectForKeyedSubscript:?];
  v184 = selfCopy->_stateMap;
  v186 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[9]];
  v185 = [(NSDictionary *)v184 objectForKeyedSubscript:?];
  _RegisterTransition(v187, v185, 11);
  MEMORY[0x277D82BD8](v185);
  MEMORY[0x277D82BD8](v186);
  MEMORY[0x277D82BD8](v187);
  *&v22 = MEMORY[0x277D82BD8](v188).n128_u64[0];
  v189 = selfCopy->_stateMap;
  v191 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[9], v22}];
  v190 = [(NSDictionary *)v189 objectForKeyedSubscript:?];
  _RegisterTransition(v190, v266, 13);
  MEMORY[0x277D82BD8](v190);
  *&v23 = MEMORY[0x277D82BD8](v191).n128_u64[0];
  v192 = selfCopy->_stateMap;
  v194 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[8], v23}];
  v193 = [(NSDictionary *)v192 objectForKeyedSubscript:?];
  _RegisterTransition(v193, v266, 13);
  MEMORY[0x277D82BD8](v193);
  *&v24 = MEMORY[0x277D82BD8](v194).n128_u64[0];
  v196 = v267;
  v195 = selfCopy->_stateMap;
  v198 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[12], v24}];
  v197 = [(NSDictionary *)v195 objectForKeyedSubscript:?];
  _RegisterTransition(v196, v197, 10);
  MEMORY[0x277D82BD8](v197);
  *&v25 = MEMORY[0x277D82BD8](v198).n128_u64[0];
  v199 = selfCopy->_stateMap;
  v204 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[11], v25}];
  v203 = [(NSDictionary *)v199 objectForKeyedSubscript:?];
  v200 = selfCopy->_stateMap;
  v202 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[12]];
  v201 = [(NSDictionary *)v200 objectForKeyedSubscript:?];
  _RegisterTransition(v203, v201, 10);
  MEMORY[0x277D82BD8](v201);
  MEMORY[0x277D82BD8](v202);
  MEMORY[0x277D82BD8](v203);
  *&v26 = MEMORY[0x277D82BD8](v204).n128_u64[0];
  v205 = selfCopy->_stateMap;
  v210 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[12], v26}];
  v209 = [(NSDictionary *)v205 objectForKeyedSubscript:?];
  v206 = selfCopy->_stateMap;
  v208 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[13]];
  v207 = [(NSDictionary *)v206 objectForKeyedSubscript:?];
  _RegisterTransition(v209, v207, 14);
  MEMORY[0x277D82BD8](v207);
  MEMORY[0x277D82BD8](v208);
  MEMORY[0x277D82BD8](v209);
  *&v27 = MEMORY[0x277D82BD8](v210).n128_u64[0];
  [(NLSessionController *)selfCopy _configureStateActions];
  v212 = v269;
  v211 = selfCopy->_stateMap;
  v214 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[10]];
  v213 = [(NSDictionary *)v211 objectForKeyedSubscript:?];
  _RegisterTransition(v212, v213, 12);
  MEMORY[0x277D82BD8](v213);
  *&v28 = MEMORY[0x277D82BD8](v214).n128_u64[0];
  v216 = v268;
  v215 = selfCopy->_stateMap;
  v218 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[10], v28}];
  v217 = [(NSDictionary *)v215 objectForKeyedSubscript:?];
  _RegisterTransition(v216, v217, 12);
  MEMORY[0x277D82BD8](v217);
  *&v29 = MEMORY[0x277D82BD8](v218).n128_u64[0];
  v219 = selfCopy->_stateMap;
  v224 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[2], v29}];
  v223 = [(NSDictionary *)v219 objectForKeyedSubscript:?];
  v220 = selfCopy->_stateMap;
  v222 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[10]];
  v221 = [(NSDictionary *)v220 objectForKeyedSubscript:?];
  _RegisterTransition(v223, v221, 12);
  MEMORY[0x277D82BD8](v221);
  MEMORY[0x277D82BD8](v222);
  MEMORY[0x277D82BD8](v223);
  *&v30 = MEMORY[0x277D82BD8](v224).n128_u64[0];
  v226 = v267;
  v225 = selfCopy->_stateMap;
  v228 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[10], v30}];
  v227 = [(NSDictionary *)v225 objectForKeyedSubscript:?];
  _RegisterTransition(v226, v227, 12);
  MEMORY[0x277D82BD8](v227);
  *&v31 = MEMORY[0x277D82BD8](v228).n128_u64[0];
  v230 = v266;
  v229 = selfCopy->_stateMap;
  v232 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[10], v31}];
  v231 = [(NSDictionary *)v229 objectForKeyedSubscript:?];
  _RegisterTransition(v230, v231, 12);
  MEMORY[0x277D82BD8](v231);
  *&v32 = MEMORY[0x277D82BD8](v232).n128_u64[0];
  v233 = selfCopy->_stateMap;
  v238 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[10], v32}];
  v237 = [(NSDictionary *)v233 objectForKeyedSubscript:?];
  v234 = selfCopy->_stateMap;
  v236 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[13]];
  v235 = [(NSDictionary *)v234 objectForKeyedSubscript:?];
  _RegisterTransition(v237, v235, 14);
  MEMORY[0x277D82BD8](v235);
  MEMORY[0x277D82BD8](v236);
  MEMORY[0x277D82BD8](v237);
  *&v33 = MEMORY[0x277D82BD8](v238).n128_u64[0];
  [(FIUIStateMachine *)selfCopy->_stateMachine export];
  objc_storeStrong(&v266, 0);
  objc_storeStrong(&v267, 0);
  objc_storeStrong(&v268, 0);
  objc_storeStrong(&v269, 0);
  objc_storeStrong(&dictionary, 0);
  objc_storeStrong(&v275, 0);
  objc_storeStrong(&v276, 0);
}

- (void)_configureStateActions
{
  selfCopy = self;
  __b[14] = a2;
  memset(__b, 0, 0x70uLL);
  NLSessionStateIdentifierShortHandStruct(__b);
  objc_initWeak(&location, selfCopy);
  stateMap = selfCopy->_stateMap;
  v51 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[1]];
  v50 = [(NSDictionary *)stateMap objectForKeyedSubscript:?];
  v125 = MEMORY[0x277D85DD0];
  v126 = -1073741824;
  v127 = 0;
  v128 = __45__NLSessionController__configureStateActions__block_invoke;
  v129 = &unk_277D88970;
  objc_copyWeak(v130, &location);
  [v50 setEntry:&v125];
  MEMORY[0x277D82BD8](v50);
  *&v2 = MEMORY[0x277D82BD8](v51).n128_u64[0];
  v49 = selfCopy->_stateMap;
  v48 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[3], v2}];
  v47 = [(NSDictionary *)v49 objectForKeyedSubscript:?];
  v119 = MEMORY[0x277D85DD0];
  v120 = -1073741824;
  v121 = 0;
  v122 = __45__NLSessionController__configureStateActions__block_invoke_2;
  v123 = &unk_277D88970;
  objc_copyWeak(&v124, &location);
  [v47 setEntry:&v119];
  MEMORY[0x277D82BD8](v47);
  *&v3 = MEMORY[0x277D82BD8](v48).n128_u64[0];
  v46 = selfCopy->_stateMap;
  v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[2], v3}];
  v44 = [(NSDictionary *)v46 objectForKeyedSubscript:?];
  v113 = MEMORY[0x277D85DD0];
  v114 = -1073741824;
  v115 = 0;
  v116 = __45__NLSessionController__configureStateActions__block_invoke_3;
  v117 = &unk_277D88970;
  objc_copyWeak(&v118, &location);
  [v44 setEntry:&v113];
  MEMORY[0x277D82BD8](v44);
  *&v4 = MEMORY[0x277D82BD8](v45).n128_u64[0];
  v43 = selfCopy->_stateMap;
  v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[5], v4}];
  v41 = [(NSDictionary *)v43 objectForKeyedSubscript:?];
  v107 = MEMORY[0x277D85DD0];
  v108 = -1073741824;
  v109 = 0;
  v110 = __45__NLSessionController__configureStateActions__block_invoke_4;
  v111 = &unk_277D88970;
  objc_copyWeak(&v112, &location);
  [v41 setEntry:&v107];
  MEMORY[0x277D82BD8](v41);
  *&v5 = MEMORY[0x277D82BD8](v42).n128_u64[0];
  v40 = selfCopy->_stateMap;
  v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[6], v5}];
  v38 = [(NSDictionary *)v40 objectForKeyedSubscript:?];
  v101 = MEMORY[0x277D85DD0];
  v102 = -1073741824;
  v103 = 0;
  v104 = __45__NLSessionController__configureStateActions__block_invoke_5;
  v105 = &unk_277D88970;
  objc_copyWeak(&v106, &location);
  [v38 setEntry:&v101];
  MEMORY[0x277D82BD8](v38);
  *&v6 = MEMORY[0x277D82BD8](v39).n128_u64[0];
  v37 = selfCopy->_stateMap;
  v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[7], v6}];
  v35 = [(NSDictionary *)v37 objectForKeyedSubscript:?];
  v95 = MEMORY[0x277D85DD0];
  v96 = -1073741824;
  v97 = 0;
  v98 = __45__NLSessionController__configureStateActions__block_invoke_6;
  v99 = &unk_277D88970;
  objc_copyWeak(&v100, &location);
  [v35 setEntry:&v95];
  MEMORY[0x277D82BD8](v35);
  *&v7 = MEMORY[0x277D82BD8](v36).n128_u64[0];
  v34 = selfCopy->_stateMap;
  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[4], v7}];
  v32 = [(NSDictionary *)v34 objectForKeyedSubscript:?];
  v89 = MEMORY[0x277D85DD0];
  v90 = -1073741824;
  v91 = 0;
  v92 = __45__NLSessionController__configureStateActions__block_invoke_7;
  v93 = &unk_277D88970;
  objc_copyWeak(&v94, &location);
  [v32 setEntry:&v89];
  MEMORY[0x277D82BD8](v32);
  *&v8 = MEMORY[0x277D82BD8](v33).n128_u64[0];
  v31 = selfCopy->_stateMap;
  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[8], v8}];
  v29 = [(NSDictionary *)v31 objectForKeyedSubscript:?];
  v83 = MEMORY[0x277D85DD0];
  v84 = -1073741824;
  v85 = 0;
  v86 = __45__NLSessionController__configureStateActions__block_invoke_8;
  v87 = &unk_277D88970;
  objc_copyWeak(&v88, &location);
  [v29 setEntry:&v83];
  MEMORY[0x277D82BD8](v29);
  *&v9 = MEMORY[0x277D82BD8](v30).n128_u64[0];
  v28 = selfCopy->_stateMap;
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[9], v9}];
  v26 = [(NSDictionary *)v28 objectForKeyedSubscript:?];
  v77 = MEMORY[0x277D85DD0];
  v78 = -1073741824;
  v79 = 0;
  v80 = __45__NLSessionController__configureStateActions__block_invoke_9;
  v81 = &unk_277D88970;
  objc_copyWeak(&v82, &location);
  [v26 setEntry:&v77];
  MEMORY[0x277D82BD8](v26);
  *&v10 = MEMORY[0x277D82BD8](v27).n128_u64[0];
  v25 = selfCopy->_stateMap;
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[11], v10}];
  v23 = [(NSDictionary *)v25 objectForKeyedSubscript:?];
  v71 = MEMORY[0x277D85DD0];
  v72 = -1073741824;
  v73 = 0;
  v74 = __45__NLSessionController__configureStateActions__block_invoke_10;
  v75 = &unk_277D88970;
  objc_copyWeak(&v76, &location);
  [v23 setEntry:&v71];
  MEMORY[0x277D82BD8](v23);
  *&v11 = MEMORY[0x277D82BD8](v24).n128_u64[0];
  v22 = selfCopy->_stateMap;
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[12], v11}];
  v20 = [(NSDictionary *)v22 objectForKeyedSubscript:?];
  v65 = MEMORY[0x277D85DD0];
  v66 = -1073741824;
  v67 = 0;
  v68 = __45__NLSessionController__configureStateActions__block_invoke_11;
  v69 = &unk_277D88970;
  objc_copyWeak(&v70, &location);
  [v20 setEntry:&v65];
  MEMORY[0x277D82BD8](v20);
  *&v12 = MEMORY[0x277D82BD8](v21).n128_u64[0];
  v19 = selfCopy->_stateMap;
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[10], v12}];
  v17 = [(NSDictionary *)v19 objectForKeyedSubscript:?];
  v59 = MEMORY[0x277D85DD0];
  v60 = -1073741824;
  v61 = 0;
  v62 = __45__NLSessionController__configureStateActions__block_invoke_12;
  v63 = &unk_277D88970;
  objc_copyWeak(&v64, &location);
  [v17 setEntry:&v59];
  MEMORY[0x277D82BD8](v17);
  *&v13 = MEMORY[0x277D82BD8](v18).n128_u64[0];
  v16 = selfCopy->_stateMap;
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[13], v13}];
  v14 = [(NSDictionary *)v16 objectForKeyedSubscript:?];
  v53 = MEMORY[0x277D85DD0];
  v54 = -1073741824;
  v55 = 0;
  v56 = __45__NLSessionController__configureStateActions__block_invoke_13;
  v57 = &unk_277D88970;
  objc_copyWeak(&v58, &location);
  [v14 setEntry:&v53];
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  objc_destroyWeak(&v58);
  objc_destroyWeak(&v64);
  objc_destroyWeak(&v70);
  objc_destroyWeak(&v76);
  objc_destroyWeak(&v82);
  objc_destroyWeak(&v88);
  objc_destroyWeak(&v94);
  objc_destroyWeak(&v100);
  objc_destroyWeak(&v106);
  objc_destroyWeak(&v112);
  objc_destroyWeak(&v118);
  objc_destroyWeak(&v124);
  objc_destroyWeak(v130);
  objc_destroyWeak(&location);
}

void __45__NLSessionController__configureStateActions__block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _prepareSession];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __45__NLSessionController__configureStateActions__block_invoke_2(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _startSession];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __45__NLSessionController__configureStateActions__block_invoke_3(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _onRecovery];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __45__NLSessionController__configureStateActions__block_invoke_4(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _pauseSession];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __45__NLSessionController__configureStateActions__block_invoke_5(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _resumeSession];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __45__NLSessionController__configureStateActions__block_invoke_6(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _sessionPaused];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __45__NLSessionController__configureStateActions__block_invoke_7(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _inSession];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __45__NLSessionController__configureStateActions__block_invoke_8(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _stopSession];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __45__NLSessionController__configureStateActions__block_invoke_9(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _onStopped];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __45__NLSessionController__configureStateActions__block_invoke_10(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _endSession];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __45__NLSessionController__configureStateActions__block_invoke_11(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _onEnded];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __45__NLSessionController__configureStateActions__block_invoke_12(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _onSessionError];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __45__NLSessionController__configureStateActions__block_invoke_13(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _onCompleted];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)_prepareSession
{
  selfCopy = self;
  location[1] = a2;
  [(NLSessionController *)self _setState:1];
  _HKInitializeLogging();
  location[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v5 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v5;
    __os_log_helper_16_0_0(v4);
    _os_log_impl(&dword_20AEA4000, log, type, "[SessionController] Calling prepare on HKWorkoutSession", v4, 2u);
  }

  objc_storeStrong(location, 0);
  [(HKWorkoutSession *)selfCopy->_workoutSession prepare];
}

- (void)_startSession
{
  v10 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v7[1] = a2;
  [(NLSessionController *)self _setState:3];
  delegate = [(NLSessionController *)selfCopy delegate];
  v7[0] = [(NLSessionControllerDelegate *)delegate activityBeginDate];
  MEMORY[0x277D82BD8](delegate);
  _HKInitializeLogging();
  oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    [v7[0] timeIntervalSinceReferenceDate];
    v4 = v2;
    [v7[0] timeIntervalSince1970];
    __os_log_helper_16_2_3_8_64_8_0_8_0(v9, v7[0], v4, v3);
    _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "[SessionController] Calling startActivity on HKWorkoutSession with activity begin date %@, timeInterval(SinceReferenceDate: %f, Since1970: %f)", v9, 0x20u);
  }

  objc_storeStrong(&oslog, 0);
  [(HKWorkoutSession *)selfCopy->_workoutSession startActivityWithDate:v7[0]];
  objc_storeStrong(v7, 0);
}

- (void)_stopSession
{
  v7 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v4[1] = a2;
  [(NLSessionController *)self _setState:8];
  delegate = [(NLSessionController *)selfCopy delegate];
  v4[0] = [(NLSessionControllerDelegate *)delegate activityEndDate];
  MEMORY[0x277D82BD8](delegate);
  _HKInitializeLogging();
  oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v6, v4[0]);
    _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "[SessionController] Calling stopActivity on HKWorkoutSession with activity end date %@", v6, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  [(HKWorkoutSession *)selfCopy->_workoutSession stopActivityWithDate:v4[0]];
  objc_storeStrong(v4, 0);
}

- (void)_onRecovery
{
  v13 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v10 = a2;
  [(NLSessionController *)self _setState:2];
  v9 = 0;
  state = [(HKWorkoutSession *)selfCopy->_workoutSession state];
  switch(state)
  {
    case 1:
      goto LABEL_9;
    case 2:
      v9 = 8;
      goto LABEL_12;
    case 3:
      goto LABEL_9;
    case 4:
      v9 = 6;
      goto LABEL_12;
  }

  if ((state - 5) <= 1)
  {
LABEL_9:
    _HKInitializeLogging();
    v8 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v7 = 16;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      log = v8;
      type = v7;
      [(HKWorkoutSession *)selfCopy->_workoutSession state];
      v4 = HKWorkoutSessionStateToString();
      v6 = MEMORY[0x277D82BE0](v4);
      __os_log_helper_16_2_1_8_66(v12, v6);
      _os_log_error_impl(&dword_20AEA4000, log, type, "[SessionController] Unhandled recovered state %{public}@", v12, 0xCu);
      MEMORY[0x277D82BD8](v4);
      objc_storeStrong(&v6, 0);
    }

    objc_storeStrong(&v8, 0);
  }

LABEL_12:
  if (v9)
  {
    [(FIUIStateMachine *)selfCopy->_stateMachine event:v9];
  }
}

- (void)_onSessionError
{
  [(NLSessionController *)self _setState:10];
  delegate = [(NLSessionController *)self delegate];
  [(NLSessionControllerDelegate *)delegate sessionEncounteredSessionError:self->_sessionError];
  [(FIUIStateMachine *)self->_stateMachine event:14, MEMORY[0x277D82BD8](delegate).n128_f64[0]];
}

- (void)_onCompleted
{
  [(NLSessionController *)self _setState:13];
  objc_storeStrong(&self->_workoutSession, 0);
  delegate = [(NLSessionController *)self delegate];
  [(NLSessionControllerDelegate *)delegate sessionControllerDidComplete];
  MEMORY[0x277D82BD8](delegate);
}

- (void)sessionActivity:(id)activity didChangeFromState:(unint64_t)state toState:(unint64_t)toState
{
  v22 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, activity);
  stateCopy = state;
  toStateCopy = toState;
  _HKInitializeLogging();
  v16 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v15 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    log = v16;
    type = v15;
    v9 = NLSessionActivityStateDescription(stateCopy);
    v5 = MEMORY[0x277D82BE0](v9);
    v14 = v5;
    v8 = NLSessionActivityStateDescription(toStateCopy);
    v13 = MEMORY[0x277D82BE0](v8);
    __os_log_helper_16_2_2_8_64_8_64(v21, v5, v13);
    _os_log_impl(&dword_20AEA4000, log, type, "[SessionController] sessionActivity changed state from:%@ to:%@", v21, 0x16u);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v14, 0);
  }

  objc_storeStrong(&v16, 0);
  v12 = 0;
  switch(toStateCopy)
  {
    case 0uLL:
      goto LABEL_27;
    case 1uLL:
      v12 = 1;
      break;
    case 2uLL:
      goto LABEL_27;
    case 3uLL:
      if (stateCopy != 4)
      {
        v12 = 5;
      }

      break;
    case 4uLL:
      goto LABEL_27;
    case 5uLL:
      v12 = 5;
      break;
    case 6uLL:
      v12 = _StateForEnteringSessionActiveFromState(stateCopy);
      break;
    case 7uLL:
      if ([(NLSessionController *)selfCopy sessionState]!= 12 && [(NLSessionController *)selfCopy sessionState]!= 11 && [(NLSessionController *)selfCopy sessionState]!= 13 && [(NLSessionController *)selfCopy sessionState])
      {
        v12 = 13;
      }

      break;
    default:
      if (toStateCopy - 8 > 1)
      {
        if (toStateCopy == 10)
        {
          v12 = 9;
        }

        break;
      }

LABEL_27:
      v12 = 0;
      break;
  }

  if (v12)
  {
    [(FIUIStateMachine *)selfCopy->_stateMachine event:v12];
  }

  objc_storeStrong(location, 0);
}

- (void)workoutSession:(id)session didChangeToState:(int64_t)state fromState:(int64_t)fromState date:(id)date
{
  v32 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, session);
  stateCopy = state;
  fromStateCopy = fromState;
  v26 = 0;
  objc_storeStrong(&v26, date);
  _HKInitializeLogging();
  v25 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v24 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    log = v25;
    type = v24;
    v13 = location[0];
    v18 = HKWorkoutSessionStateToString();
    v14 = MEMORY[0x277D82BE0](v18);
    v23 = v14;
    v17 = HKWorkoutSessionStateToString();
    v22 = MEMORY[0x277D82BE0](v17);
    __os_log_helper_16_2_4_8_64_8_64_8_64_8_64(v31, v13, v14, v22, v26);
    _os_log_impl(&dword_20AEA4000, log, type, "[SessionController] workoutSession:%@ changed state from:%@ to:%@ date:%@", v31, 0x2Au);
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v18);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v23, 0);
  }

  objc_storeStrong(&v25, 0);
  if ((fromStateCopy == 1 || fromStateCopy == 5) && stateCopy == 2)
  {
    v12 = +[WOCoreWorkoutSignposter shared];
    [(WOCoreWorkoutSignposter *)v12 emitWithSignpost:5];
    *&v6 = MEMORY[0x277D82BD8](v12).n128_u64[0];
    [(FIUIStateMachine *)selfCopy->_stateMachine eventAsync:4, v6];
  }

  else if (stateCopy != 1)
  {
    switch(stateCopy)
    {
      case 2:
        [(FIUIStateMachine *)selfCopy->_stateMachine eventAsync:8];
        break;
      case 3:
        if (!selfCopy->_sessionError)
        {
          [(FIUIStateMachine *)selfCopy->_stateMachine eventAsync:10];
        }

        break;
      case 4:
        [(FIUIStateMachine *)selfCopy->_stateMachine eventAsync:6];
        break;
      case 6:
        [(FIUIStateMachine *)selfCopy->_stateMachine eventAsync:11];
        break;
    }
  }

  mirroringDelegate = [(NLSessionController *)selfCopy mirroringDelegate];
  [(HKWorkoutSessionPrivateDelegate *)mirroringDelegate workoutSession:location[0] didChangeToState:stateCopy fromState:fromStateCopy date:v26];
  *&v7 = MEMORY[0x277D82BD8](mirroringDelegate).n128_u64[0];
  stingDelegate = [(NLSessionController *)selfCopy stingDelegate];
  [(HKWorkoutSessionDelegate *)stingDelegate workoutSession:location[0] didChangeToState:stateCopy fromState:fromStateCopy date:v26];
  *&v8 = MEMORY[0x277D82BD8](stingDelegate).n128_u64[0];
  mirroredDelegate = [(NLSessionController *)selfCopy mirroredDelegate];
  [(HKWorkoutSessionDelegate *)mirroredDelegate workoutSession:location[0] didChangeToState:stateCopy fromState:fromStateCopy date:v26];
  MEMORY[0x277D82BD8](mirroredDelegate);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
}

- (void)workoutSession:(id)session didFailWithError:(id)error
{
  v26 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, session);
  v22 = 0;
  objc_storeStrong(&v22, error);
  _HKInitializeLogging();
  v21 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v20 = OS_LOG_TYPE_ERROR;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_64_8_64(v25, location[0], v22);
    _os_log_error_impl(&dword_20AEA4000, v21, v20, "[SessionController] Workout session %@ did fail with error: %@", v25, 0x16u);
  }

  objc_storeStrong(&v21, 0);
  mirroringDelegate = [(NLSessionController *)selfCopy mirroringDelegate];
  [(HKWorkoutSessionPrivateDelegate *)mirroringDelegate workoutSession:location[0] didFailWithError:v22];
  *&v4 = MEMORY[0x277D82BD8](mirroringDelegate).n128_u64[0];
  stingDelegate = [(NLSessionController *)selfCopy stingDelegate];
  [(HKWorkoutSessionDelegate *)stingDelegate workoutSession:location[0] didFailWithError:v22];
  *&v5 = MEMORY[0x277D82BD8](stingDelegate).n128_u64[0];
  mirroredDelegate = [(NLSessionController *)selfCopy mirroredDelegate];
  [(HKWorkoutSessionDelegate *)mirroredDelegate workoutSession:location[0] didFailWithError:v22];
  MEMORY[0x277D82BD8](mirroredDelegate);
  v10 = MEMORY[0x277D85CD0];
  v6 = MEMORY[0x277D85CD0];
  queue = v10;
  v13 = MEMORY[0x277D85DD0];
  v14 = -1073741824;
  v15 = 0;
  v16 = __55__NLSessionController_workoutSession_didFailWithError___block_invoke;
  v17 = &unk_277D88998;
  v18 = MEMORY[0x277D82BE0](selfCopy);
  v19 = MEMORY[0x277D82BE0](v22);
  dispatch_async(queue, &v13);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

- (void)workoutSession:(id)session didUpdateWorkoutConfiguration:(id)configuration
{
  v13 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, session);
  v9 = 0;
  objc_storeStrong(&v9, configuration);
  _HKInitializeLogging();
  v8 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v12, [v9 locationType]);
    _os_log_impl(&dword_20AEA4000, v8, OS_LOG_TYPE_DEFAULT, "[SessionController] Recevied HKWorkoutSessionLocationType %ld", v12, 0xCu);
  }

  objc_storeStrong(&v8, 0);
  delegate = [(NLSessionController *)selfCopy delegate];
  -[NLSessionControllerDelegate didUpdateWorkoutLocationType:](delegate, "didUpdateWorkoutLocationType:", [v9 locationType]);
  *&v4 = MEMORY[0x277D82BD8](delegate).n128_u64[0];
  mirroringDelegate = [(NLSessionController *)selfCopy mirroringDelegate];
  [(HKWorkoutSessionPrivateDelegate *)mirroringDelegate workoutSession:location[0] didUpdateWorkoutConfiguration:v9];
  MEMORY[0x277D82BD8](mirroringDelegate);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)workoutSession:(id)session didSuggestWorkoutConfiguration:(id)configuration date:(id)date
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, session);
  v9 = 0;
  objc_storeStrong(&v9, configuration);
  v8 = 0;
  objc_storeStrong(&v8, date);
  delegate = [(NLSessionController *)selfCopy delegate];
  [(NLSessionControllerDelegate *)delegate sessionController:selfCopy didSuggestWorkoutConfiguration:v9 date:v8];
  MEMORY[0x277D82BD8](delegate);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)workoutSession:(id)session didGenerateEvent:(id)event
{
  v11 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, session);
  v7 = 0;
  objc_storeStrong(&v7, event);
  _HKInitializeLogging();
  oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_64_8_64(v10, location[0], v7);
    _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "[SessionController] Workout session %@ did generate event %@", v10, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  delegate = [(NLSessionController *)selfCopy delegate];
  [(NLSessionControllerDelegate *)delegate sessionController:selfCopy didRecieveWorkoutEvent:v7];
  MEMORY[0x277D82BD8](delegate);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)workoutSession:(id)session didReceiveDataFromRemoteDevice:(id)device
{
  v11[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, session);
  v8 = 0;
  objc_storeStrong(&v8, device);
  mirroringDelegate = [(NLSessionController *)selfCopy mirroringDelegate];
  v5 = location[0];
  v11[0] = v8;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  [(HKWorkoutSessionPrivateDelegate *)mirroringDelegate workoutSession:v5 didReceiveDataFromRemoteWorkoutSession:?];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](mirroringDelegate);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)workoutSession:(id)session didReceiveDataFromRemoteWorkoutSession:(id)workoutSession
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, session);
  v6 = 0;
  objc_storeStrong(&v6, workoutSession);
  mirroringDelegate = [(NLSessionController *)selfCopy mirroringDelegate];
  [(HKWorkoutSessionPrivateDelegate *)mirroringDelegate workoutSession:location[0] didReceiveDataFromRemoteWorkoutSession:v6];
  MEMORY[0x277D82BD8](mirroringDelegate);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)workoutSession:(id)session didDisconnectFromRemoteDeviceWithError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, session);
  v6 = 0;
  objc_storeStrong(&v6, error);
  mirroringDelegate = [(NLSessionController *)selfCopy mirroringDelegate];
  [(HKWorkoutSessionPrivateDelegate *)mirroringDelegate workoutSession:location[0] didDisconnectFromRemoteDeviceWithError:v6];
  MEMORY[0x277D82BD8](mirroringDelegate);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)_setState:(unint64_t)state
{
  v16 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v13 = a2;
  stateCopy = state;
  memset(__b, 0, sizeof(__b));
  obj = [(NSHashTable *)selfCopy->_stateObservers allObjects];
  v9 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v15 count:16];
  if (v9)
  {
    v5 = *__b[2];
    v6 = 0;
    v7 = v9;
    while (1)
    {
      v4 = v6;
      if (*__b[2] != v5)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(__b[1] + 8 * v6);
      [v11 sessionController:selfCopy didChangeFromState:selfCopy->_sessionState toState:{stateCopy, v7}];
      ++v6;
      v7 = v3;
      if (v4 + 1 >= v3)
      {
        v6 = 0;
        v7 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v15 count:16];
        if (!v7)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  selfCopy->_sessionState = stateCopy;
}

- (void)addSessionControllerStateObserver:(id)observer
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, observer);
  [(NSHashTable *)selfCopy->_stateObservers addObject:location[0]];
  objc_storeStrong(location, 0);
}

- (void)removeSessionControllerStateObserver:(id)observer
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, observer);
  [(NSHashTable *)selfCopy->_stateObservers removeObject:location[0]];
  objc_storeStrong(location, 0);
}

- (NLSessionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HKWorkoutSessionPrivateDelegate)mirroringDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_mirroringDelegate);

  return WeakRetained;
}

- (HKWorkoutSessionDelegate)stingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_stingDelegate);

  return WeakRetained;
}

- (HKWorkoutSessionDelegate)mirroredDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_mirroredDelegate);

  return WeakRetained;
}

@end