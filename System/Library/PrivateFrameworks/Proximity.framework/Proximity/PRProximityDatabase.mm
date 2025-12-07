@interface PRProximityDatabase
+ (BOOL)getProximityDeviceParameters:(id *)parameters forDeviceModel:(id)model withError:(id *)error;
+ (id)getDeviceData;
+ (int64_t)getPRDeviceModelFromModelId:(id)id;
+ (int64_t)getScannerDeviceModel;
- (PRProximityDatabase)init;
@end

@implementation PRProximityDatabase

- (PRProximityDatabase)init
{
  [(PRProximityDatabase *)self doesNotRecognizeSelector:a2];

  return 0;
}

+ (id)getDeviceData
{
  if (+[PRProximityDatabase getDeviceData]::createOnce != -1)
  {
    +[PRProximityDatabase getDeviceData];
  }

  v3 = +[PRProximityDatabase getDeviceData]::proxDeviceData;

  return v3;
}

void __36__PRProximityDatabase_getDeviceData__block_invoke()
{
  v415[5] = *MEMORY[0x277D85DE8];
  v305 = [MEMORY[0x277CCABB0] numberWithInteger:10];
  v414[0] = v305;
  v303 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v412[0] = v303;
  v410[0] = @"rssiImmediate";
  v302 = [MEMORY[0x277CCABB0] numberWithInteger:-45];
  v411[0] = v302;
  v410[1] = @"rssiNear";
  v301 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v411[1] = v301;
  v410[2] = @"sampSize";
  v300 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v411[2] = v300;
  v410[3] = @"Algo";
  v299 = [MEMORY[0x277CCABB0] numberWithInteger:2];
  v411[3] = v299;
  v298 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v411 forKeys:v410 count:4];
  v413[0] = v298;
  v297 = [MEMORY[0x277CCABB0] numberWithInteger:7];
  v412[1] = v297;
  v408[0] = @"rssiImmediate";
  v296 = [MEMORY[0x277CCABB0] numberWithInteger:-38];
  v409[0] = v296;
  v408[1] = @"rssiNear";
  v295 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v409[1] = v295;
  v408[2] = @"sampSize";
  v294 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v409[2] = v294;
  v408[3] = @"Algo";
  v293 = [MEMORY[0x277CCABB0] numberWithInteger:2];
  v409[3] = v293;
  v292 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v409 forKeys:v408 count:4];
  v413[1] = v292;
  v291 = [MEMORY[0x277CCABB0] numberWithInteger:6];
  v412[2] = v291;
  v406[0] = @"rssiImmediate";
  v290 = [MEMORY[0x277CCABB0] numberWithInteger:-38];
  v407[0] = v290;
  v406[1] = @"rssiNear";
  v289 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v407[1] = v289;
  v406[2] = @"sampSize";
  v288 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v407[2] = v288;
  v406[3] = @"Algo";
  v287 = [MEMORY[0x277CCABB0] numberWithInteger:2];
  v407[3] = v287;
  v286 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v407 forKeys:v406 count:4];
  v413[2] = v286;
  v285 = [MEMORY[0x277CCABB0] numberWithInteger:11];
  v412[3] = v285;
  v404[0] = @"rssiImmediate";
  v284 = [MEMORY[0x277CCABB0] numberWithInteger:-40];
  v405[0] = v284;
  v404[1] = @"rssiNear";
  v283 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v405[1] = v283;
  v404[2] = @"sampSize";
  v282 = [MEMORY[0x277CCABB0] numberWithInteger:8];
  v405[2] = v282;
  v404[3] = @"Algo";
  v281 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v405[3] = v281;
  v280 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v405 forKeys:v404 count:4];
  v413[3] = v280;
  v279 = [MEMORY[0x277CCABB0] numberWithInteger:10];
  v412[4] = v279;
  v402[0] = @"rssiImmediate";
  v278 = [MEMORY[0x277CCABB0] numberWithInteger:-40];
  v403[0] = v278;
  v402[1] = @"rssiNear";
  v277 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v403[1] = v277;
  v402[2] = @"sampSize";
  v276 = [MEMORY[0x277CCABB0] numberWithInteger:8];
  v403[2] = v276;
  v402[3] = @"Algo";
  v275 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v403[3] = v275;
  v274 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v403 forKeys:v402 count:4];
  v413[4] = v274;
  v273 = [MEMORY[0x277CCABB0] numberWithInteger:8];
  v412[5] = v273;
  v400[0] = @"rssiImmediate";
  v272 = [MEMORY[0x277CCABB0] numberWithInteger:-44];
  v401[0] = v272;
  v400[1] = @"rssiNear";
  v271 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v401[1] = v271;
  v400[2] = @"sampSize";
  v270 = [MEMORY[0x277CCABB0] numberWithInteger:8];
  v401[2] = v270;
  v400[3] = @"Algo";
  v269 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v401[3] = v269;
  v268 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v401 forKeys:v400 count:4];
  v413[5] = v268;
  v267 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v413 forKeys:v412 count:6];
  v415[0] = v267;
  v266 = [MEMORY[0x277CCABB0] numberWithInteger:11];
  v414[1] = v266;
  v265 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v398[0] = v265;
  v396[0] = @"rssiImmediate";
  v264 = [MEMORY[0x277CCABB0] numberWithInteger:-45];
  v397[0] = v264;
  v396[1] = @"rssiNear";
  v263 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v397[1] = v263;
  v396[2] = @"sampSize";
  v262 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v397[2] = v262;
  v396[3] = @"Algo";
  v261 = [MEMORY[0x277CCABB0] numberWithInteger:2];
  v397[3] = v261;
  v260 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v397 forKeys:v396 count:4];
  v399[0] = v260;
  v259 = [MEMORY[0x277CCABB0] numberWithInteger:7];
  v398[1] = v259;
  v394[0] = @"rssiImmediate";
  v258 = [MEMORY[0x277CCABB0] numberWithInteger:-38];
  v395[0] = v258;
  v394[1] = @"rssiNear";
  v257 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v395[1] = v257;
  v394[2] = @"sampSize";
  v256 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v395[2] = v256;
  v394[3] = @"Algo";
  v255 = [MEMORY[0x277CCABB0] numberWithInteger:2];
  v395[3] = v255;
  v254 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v395 forKeys:v394 count:4];
  v399[1] = v254;
  v253 = [MEMORY[0x277CCABB0] numberWithInteger:6];
  v398[2] = v253;
  v392[0] = @"rssiImmediate";
  v252 = [MEMORY[0x277CCABB0] numberWithInteger:-38];
  v393[0] = v252;
  v392[1] = @"rssiNear";
  v251 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v393[1] = v251;
  v392[2] = @"sampSize";
  v250 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v393[2] = v250;
  v392[3] = @"Algo";
  v249 = [MEMORY[0x277CCABB0] numberWithInteger:2];
  v393[3] = v249;
  v248 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v393 forKeys:v392 count:4];
  v399[2] = v248;
  v247 = [MEMORY[0x277CCABB0] numberWithInteger:15];
  v398[3] = v247;
  v390[0] = @"rssiImmediate";
  v246 = [MEMORY[0x277CCABB0] numberWithInteger:-40];
  v391[0] = v246;
  v390[1] = @"rssiNear";
  v245 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v391[1] = v245;
  v390[2] = @"sampSize";
  v244 = [MEMORY[0x277CCABB0] numberWithInteger:16];
  v391[2] = v244;
  v390[3] = @"Algo";
  v243 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v391[3] = v243;
  v242 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v391 forKeys:v390 count:4];
  v399[3] = v242;
  v241 = [MEMORY[0x277CCABB0] numberWithInteger:11];
  v398[4] = v241;
  v388[0] = @"rssiImmediate";
  v240 = [MEMORY[0x277CCABB0] numberWithInteger:-45];
  v389[0] = v240;
  v388[1] = @"rssiNear";
  v239 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v389[1] = v239;
  v388[2] = @"sampSize";
  v238 = [MEMORY[0x277CCABB0] numberWithInteger:16];
  v389[2] = v238;
  v388[3] = @"Algo";
  v237 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v389[3] = v237;
  v236 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v389 forKeys:v388 count:4];
  v399[4] = v236;
  v235 = [MEMORY[0x277CCABB0] numberWithInteger:14];
  v398[5] = v235;
  v386[0] = @"rssiImmediate";
  v234 = [MEMORY[0x277CCABB0] numberWithInteger:-41];
  v387[0] = v234;
  v386[1] = @"rssiNear";
  v233 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v387[1] = v233;
  v386[2] = @"sampSize";
  v232 = [MEMORY[0x277CCABB0] numberWithInteger:16];
  v387[2] = v232;
  v386[3] = @"Algo";
  v231 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v387[3] = v231;
  v230 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v387 forKeys:v386 count:4];
  v399[5] = v230;
  v229 = [MEMORY[0x277CCABB0] numberWithInteger:12];
  v398[6] = v229;
  v384[0] = @"rssiImmediate";
  v228 = [MEMORY[0x277CCABB0] numberWithInteger:-40];
  v385[0] = v228;
  v384[1] = @"rssiNear";
  v227 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v385[1] = v227;
  v384[2] = @"sampSize";
  v226 = [MEMORY[0x277CCABB0] numberWithInteger:16];
  v385[2] = v226;
  v384[3] = @"Algo";
  v225 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v385[3] = v225;
  v224 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v385 forKeys:v384 count:4];
  v399[6] = v224;
  v223 = [MEMORY[0x277CCABB0] numberWithInteger:13];
  v398[7] = v223;
  v382[0] = @"rssiImmediate";
  v222 = [MEMORY[0x277CCABB0] numberWithInteger:-40];
  v383[0] = v222;
  v382[1] = @"rssiNear";
  v221 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v383[1] = v221;
  v382[2] = @"sampSize";
  v220 = [MEMORY[0x277CCABB0] numberWithInteger:16];
  v383[2] = v220;
  v382[3] = @"Algo";
  v219 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v383[3] = v219;
  v218 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v383 forKeys:v382 count:4];
  v399[7] = v218;
  v217 = [MEMORY[0x277CCABB0] numberWithInteger:10];
  v398[8] = v217;
  v380[0] = @"rssiImmediate";
  v216 = [MEMORY[0x277CCABB0] numberWithInteger:-40];
  v381[0] = v216;
  v380[1] = @"rssiNear";
  v215 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v381[1] = v215;
  v380[2] = @"sampSize";
  v214 = [MEMORY[0x277CCABB0] numberWithInteger:8];
  v381[2] = v214;
  v380[3] = @"Algo";
  v213 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v381[3] = v213;
  v212 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v381 forKeys:v380 count:4];
  v399[8] = v212;
  v211 = [MEMORY[0x277CCABB0] numberWithInteger:8];
  v398[9] = v211;
  v378[0] = @"rssiImmediate";
  v210 = [MEMORY[0x277CCABB0] numberWithInteger:-39];
  v379[0] = v210;
  v378[1] = @"rssiNear";
  v209 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v379[1] = v209;
  v378[2] = @"sampSize";
  v208 = [MEMORY[0x277CCABB0] numberWithInteger:16];
  v379[2] = v208;
  v378[3] = @"Algo";
  v207 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v379[3] = v207;
  v206 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v379 forKeys:v378 count:4];
  v399[9] = v206;
  v205 = [MEMORY[0x277CCABB0] numberWithInteger:9];
  v398[10] = v205;
  v376[0] = @"rssiImmediate";
  v204 = [MEMORY[0x277CCABB0] numberWithInteger:-42];
  v377[0] = v204;
  v376[1] = @"rssiNear";
  v203 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v377[1] = v203;
  v376[2] = @"sampSize";
  v202 = [MEMORY[0x277CCABB0] numberWithInteger:8];
  v377[2] = v202;
  v376[3] = @"Algo";
  v201 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v377[3] = v201;
  v200 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v377 forKeys:v376 count:4];
  v399[10] = v200;
  v199 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v399 forKeys:v398 count:11];
  v415[1] = v199;
  v198 = [MEMORY[0x277CCABB0] numberWithInteger:12];
  v414[2] = v198;
  v197 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v374[0] = v197;
  v372[0] = @"rssiImmediate";
  v196 = [MEMORY[0x277CCABB0] numberWithInteger:-45];
  v373[0] = v196;
  v372[1] = @"rssiNear";
  v195 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v373[1] = v195;
  v372[2] = @"sampSize";
  v194 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v373[2] = v194;
  v372[3] = @"Algo";
  v193 = [MEMORY[0x277CCABB0] numberWithInteger:2];
  v373[3] = v193;
  v192 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v373 forKeys:v372 count:4];
  v375[0] = v192;
  v191 = [MEMORY[0x277CCABB0] numberWithInteger:7];
  v374[1] = v191;
  v370[0] = @"rssiImmediate";
  v190 = [MEMORY[0x277CCABB0] numberWithInteger:-38];
  v371[0] = v190;
  v370[1] = @"rssiNear";
  v189 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v371[1] = v189;
  v370[2] = @"sampSize";
  v188 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v371[2] = v188;
  v370[3] = @"Algo";
  v187 = [MEMORY[0x277CCABB0] numberWithInteger:2];
  v371[3] = v187;
  v186 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v371 forKeys:v370 count:4];
  v375[1] = v186;
  v185 = [MEMORY[0x277CCABB0] numberWithInteger:6];
  v374[2] = v185;
  v368[0] = @"rssiImmediate";
  v184 = [MEMORY[0x277CCABB0] numberWithInteger:-38];
  v369[0] = v184;
  v368[1] = @"rssiNear";
  v183 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v369[1] = v183;
  v368[2] = @"sampSize";
  v182 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v369[2] = v182;
  v368[3] = @"Algo";
  v181 = [MEMORY[0x277CCABB0] numberWithInteger:2];
  v369[3] = v181;
  v180 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v369 forKeys:v368 count:4];
  v375[2] = v180;
  v179 = [MEMORY[0x277CCABB0] numberWithInteger:15];
  v374[3] = v179;
  v366[0] = @"rssiImmediate";
  v178 = [MEMORY[0x277CCABB0] numberWithInteger:-40];
  v367[0] = v178;
  v366[1] = @"rssiNear";
  v177 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v367[1] = v177;
  v366[2] = @"sampSize";
  v176 = [MEMORY[0x277CCABB0] numberWithInteger:16];
  v367[2] = v176;
  v366[3] = @"Algo";
  v175 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v367[3] = v175;
  v174 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v367 forKeys:v366 count:4];
  v375[3] = v174;
  v173 = [MEMORY[0x277CCABB0] numberWithInteger:11];
  v374[4] = v173;
  v364[0] = @"rssiImmediate";
  v172 = [MEMORY[0x277CCABB0] numberWithInteger:-40];
  v365[0] = v172;
  v364[1] = @"rssiNear";
  v171 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v365[1] = v171;
  v364[2] = @"sampSize";
  v170 = [MEMORY[0x277CCABB0] numberWithInteger:16];
  v365[2] = v170;
  v364[3] = @"Algo";
  v169 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v365[3] = v169;
  v168 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v365 forKeys:v364 count:4];
  v375[4] = v168;
  v167 = [MEMORY[0x277CCABB0] numberWithInteger:14];
  v374[5] = v167;
  v362[0] = @"rssiImmediate";
  v166 = [MEMORY[0x277CCABB0] numberWithInteger:-40];
  v363[0] = v166;
  v362[1] = @"rssiNear";
  v165 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v363[1] = v165;
  v362[2] = @"sampSize";
  v164 = [MEMORY[0x277CCABB0] numberWithInteger:16];
  v363[2] = v164;
  v362[3] = @"Algo";
  v163 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v363[3] = v163;
  v162 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v363 forKeys:v362 count:4];
  v375[5] = v162;
  v161 = [MEMORY[0x277CCABB0] numberWithInteger:12];
  v374[6] = v161;
  v360[0] = @"rssiImmediate";
  v160 = [MEMORY[0x277CCABB0] numberWithInteger:-37];
  v361[0] = v160;
  v360[1] = @"rssiNear";
  v159 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v361[1] = v159;
  v360[2] = @"sampSize";
  v158 = [MEMORY[0x277CCABB0] numberWithInteger:16];
  v361[2] = v158;
  v360[3] = @"Algo";
  v157 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v361[3] = v157;
  v156 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v361 forKeys:v360 count:4];
  v375[6] = v156;
  v155 = [MEMORY[0x277CCABB0] numberWithInteger:13];
  v374[7] = v155;
  v358[0] = @"rssiImmediate";
  v154 = [MEMORY[0x277CCABB0] numberWithInteger:-37];
  v359[0] = v154;
  v358[1] = @"rssiNear";
  v153 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v359[1] = v153;
  v358[2] = @"sampSize";
  v152 = [MEMORY[0x277CCABB0] numberWithInteger:16];
  v359[2] = v152;
  v358[3] = @"Algo";
  v151 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v359[3] = v151;
  v150 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v359 forKeys:v358 count:4];
  v375[7] = v150;
  v149 = [MEMORY[0x277CCABB0] numberWithInteger:10];
  v374[8] = v149;
  v356[0] = @"rssiImmediate";
  v148 = [MEMORY[0x277CCABB0] numberWithInteger:-40];
  v357[0] = v148;
  v356[1] = @"rssiNear";
  v147 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v357[1] = v147;
  v356[2] = @"sampSize";
  v146 = [MEMORY[0x277CCABB0] numberWithInteger:8];
  v357[2] = v146;
  v356[3] = @"Algo";
  v145 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v357[3] = v145;
  v144 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v357 forKeys:v356 count:4];
  v375[8] = v144;
  v143 = [MEMORY[0x277CCABB0] numberWithInteger:8];
  v374[9] = v143;
  v354[0] = @"rssiImmediate";
  v142 = [MEMORY[0x277CCABB0] numberWithInteger:-36];
  v355[0] = v142;
  v354[1] = @"rssiNear";
  v141 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v355[1] = v141;
  v354[2] = @"sampSize";
  v140 = [MEMORY[0x277CCABB0] numberWithInteger:16];
  v355[2] = v140;
  v354[3] = @"Algo";
  v139 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v355[3] = v139;
  v99 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v355 forKeys:v354 count:4];
  v375[9] = v99;
  v98 = [MEMORY[0x277CCABB0] numberWithInteger:9];
  v374[10] = v98;
  v352[0] = @"rssiImmediate";
  v97 = [MEMORY[0x277CCABB0] numberWithInteger:-39];
  v353[0] = v97;
  v352[1] = @"rssiNear";
  v96 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v353[1] = v96;
  v352[2] = @"sampSize";
  v95 = [MEMORY[0x277CCABB0] numberWithInteger:16];
  v353[2] = v95;
  v352[3] = @"Algo";
  v94 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v353[3] = v94;
  v93 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v353 forKeys:v352 count:4];
  v375[10] = v93;
  v92 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v375 forKeys:v374 count:11];
  v415[2] = v92;
  v91 = [MEMORY[0x277CCABB0] numberWithInteger:13];
  v414[3] = v91;
  v90 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v350[0] = v90;
  v348[0] = @"rssiImmediate";
  v89 = [MEMORY[0x277CCABB0] numberWithInteger:-45];
  v349[0] = v89;
  v348[1] = @"rssiNear";
  v88 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v349[1] = v88;
  v348[2] = @"sampSize";
  v87 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v349[2] = v87;
  v348[3] = @"Algo";
  v86 = [MEMORY[0x277CCABB0] numberWithInteger:2];
  v349[3] = v86;
  v85 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v349 forKeys:v348 count:4];
  v351[0] = v85;
  v84 = [MEMORY[0x277CCABB0] numberWithInteger:7];
  v350[1] = v84;
  v346[0] = @"rssiImmediate";
  v83 = [MEMORY[0x277CCABB0] numberWithInteger:-38];
  v347[0] = v83;
  v346[1] = @"rssiNear";
  v82 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v347[1] = v82;
  v346[2] = @"sampSize";
  v81 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v347[2] = v81;
  v346[3] = @"Algo";
  v80 = [MEMORY[0x277CCABB0] numberWithInteger:2];
  v347[3] = v80;
  v79 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v347 forKeys:v346 count:4];
  v351[1] = v79;
  v78 = [MEMORY[0x277CCABB0] numberWithInteger:6];
  v350[2] = v78;
  v344[0] = @"rssiImmediate";
  v77 = [MEMORY[0x277CCABB0] numberWithInteger:-38];
  v345[0] = v77;
  v344[1] = @"rssiNear";
  v304 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v345[1] = v304;
  v344[2] = @"sampSize";
  v76 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v345[2] = v76;
  v344[3] = @"Algo";
  v75 = [MEMORY[0x277CCABB0] numberWithInteger:2];
  v345[3] = v75;
  v74 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v345 forKeys:v344 count:4];
  v351[2] = v74;
  v73 = [MEMORY[0x277CCABB0] numberWithInteger:15];
  v350[3] = v73;
  v342[0] = @"rssiImmediate";
  v72 = [MEMORY[0x277CCABB0] numberWithInteger:-40];
  v343[0] = v72;
  v342[1] = @"rssiNear";
  v71 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v343[1] = v71;
  v342[2] = @"sampSize";
  v70 = [MEMORY[0x277CCABB0] numberWithInteger:16];
  v343[2] = v70;
  v342[3] = @"Algo";
  v69 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v343[3] = v69;
  v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v343 forKeys:v342 count:4];
  v351[3] = v68;
  v67 = [MEMORY[0x277CCABB0] numberWithInteger:11];
  v350[4] = v67;
  v340[0] = @"rssiImmediate";
  v66 = [MEMORY[0x277CCABB0] numberWithInteger:-40];
  v341[0] = v66;
  v340[1] = @"rssiNear";
  v65 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v341[1] = v65;
  v340[2] = @"sampSize";
  v64 = [MEMORY[0x277CCABB0] numberWithInteger:16];
  v341[2] = v64;
  v340[3] = @"Algo";
  v63 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v341[3] = v63;
  v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v341 forKeys:v340 count:4];
  v351[4] = v62;
  v61 = [MEMORY[0x277CCABB0] numberWithInteger:14];
  v350[5] = v61;
  v338[0] = @"rssiImmediate";
  v60 = [MEMORY[0x277CCABB0] numberWithInteger:-40];
  v339[0] = v60;
  v338[1] = @"rssiNear";
  v59 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v339[1] = v59;
  v338[2] = @"sampSize";
  v58 = [MEMORY[0x277CCABB0] numberWithInteger:16];
  v339[2] = v58;
  v338[3] = @"Algo";
  v57 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v339[3] = v57;
  v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v339 forKeys:v338 count:4];
  v351[5] = v56;
  v55 = [MEMORY[0x277CCABB0] numberWithInteger:12];
  v350[6] = v55;
  v336[0] = @"rssiImmediate";
  v54 = [MEMORY[0x277CCABB0] numberWithInteger:-37];
  v337[0] = v54;
  v336[1] = @"rssiNear";
  v53 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v337[1] = v53;
  v336[2] = @"sampSize";
  v52 = [MEMORY[0x277CCABB0] numberWithInteger:16];
  v337[2] = v52;
  v336[3] = @"Algo";
  v51 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v337[3] = v51;
  v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v337 forKeys:v336 count:4];
  v351[6] = v50;
  v49 = [MEMORY[0x277CCABB0] numberWithInteger:13];
  v350[7] = v49;
  v334[0] = @"rssiImmediate";
  v48 = [MEMORY[0x277CCABB0] numberWithInteger:-37];
  v335[0] = v48;
  v334[1] = @"rssiNear";
  v47 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v335[1] = v47;
  v334[2] = @"sampSize";
  v46 = [MEMORY[0x277CCABB0] numberWithInteger:16];
  v335[2] = v46;
  v334[3] = @"Algo";
  v45 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v335[3] = v45;
  v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v335 forKeys:v334 count:4];
  v351[7] = v44;
  v43 = [MEMORY[0x277CCABB0] numberWithInteger:10];
  v350[8] = v43;
  v332[0] = @"rssiImmediate";
  v42 = [MEMORY[0x277CCABB0] numberWithInteger:-40];
  v333[0] = v42;
  v332[1] = @"rssiNear";
  v41 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v333[1] = v41;
  v332[2] = @"sampSize";
  v40 = [MEMORY[0x277CCABB0] numberWithInteger:8];
  v333[2] = v40;
  v332[3] = @"Algo";
  v39 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v333[3] = v39;
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v333 forKeys:v332 count:4];
  v351[8] = v38;
  v37 = [MEMORY[0x277CCABB0] numberWithInteger:8];
  v350[9] = v37;
  v330[0] = @"rssiImmediate";
  v36 = [MEMORY[0x277CCABB0] numberWithInteger:-36];
  v331[0] = v36;
  v330[1] = @"rssiNear";
  v35 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v331[1] = v35;
  v330[2] = @"sampSize";
  v34 = [MEMORY[0x277CCABB0] numberWithInteger:16];
  v331[2] = v34;
  v330[3] = @"Algo";
  v33 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v331[3] = v33;
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v331 forKeys:v330 count:4];
  v351[9] = v32;
  v31 = [MEMORY[0x277CCABB0] numberWithInteger:9];
  v350[10] = v31;
  v328[0] = @"rssiImmediate";
  v30 = [MEMORY[0x277CCABB0] numberWithInteger:-39];
  v329[0] = v30;
  v328[1] = @"rssiNear";
  v29 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v329[1] = v29;
  v328[2] = @"sampSize";
  v28 = [MEMORY[0x277CCABB0] numberWithInteger:16];
  v329[2] = v28;
  v328[3] = @"Algo";
  v27 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v329[3] = v27;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v329 forKeys:v328 count:4];
  v351[10] = v26;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v351 forKeys:v350 count:11];
  v415[3] = v25;
  v24 = [MEMORY[0x277CCABB0] numberWithInteger:14];
  v414[4] = v24;
  v23 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v326[0] = v23;
  v324[0] = @"rssiImmediate";
  v22 = [MEMORY[0x277CCABB0] numberWithInteger:-45];
  v325[0] = v22;
  v324[1] = @"rssiNear";
  v21 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v325[1] = v21;
  v324[2] = @"sampSize";
  v20 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v325[2] = v20;
  v324[3] = @"Algo";
  v19 = [MEMORY[0x277CCABB0] numberWithInteger:2];
  v325[3] = v19;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v325 forKeys:v324 count:4];
  v327[0] = v18;
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:7];
  v326[1] = v17;
  v322[0] = @"rssiImmediate";
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:-38];
  v323[0] = v16;
  v322[1] = @"rssiNear";
  v15 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v323[1] = v15;
  v322[2] = @"sampSize";
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v323[2] = v14;
  v322[3] = @"Algo";
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:2];
  v323[3] = v13;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v323 forKeys:v322 count:4];
  v327[1] = v12;
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:6];
  v326[2] = v11;
  v320[0] = @"rssiImmediate";
  v138 = [MEMORY[0x277CCABB0] numberWithInteger:-38];
  v321[0] = v138;
  v320[1] = @"rssiNear";
  v137 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v321[1] = v137;
  v320[2] = @"sampSize";
  v136 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v321[2] = v136;
  v320[3] = @"Algo";
  v135 = [MEMORY[0x277CCABB0] numberWithInteger:2];
  v321[3] = v135;
  v134 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v321 forKeys:v320 count:4];
  v327[2] = v134;
  v133 = [MEMORY[0x277CCABB0] numberWithInteger:15];
  v326[3] = v133;
  v318[0] = @"rssiImmediate";
  v132 = [MEMORY[0x277CCABB0] numberWithInteger:-40];
  v319[0] = v132;
  v318[1] = @"rssiNear";
  v131 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v319[1] = v131;
  v318[2] = @"sampSize";
  v130 = [MEMORY[0x277CCABB0] numberWithInteger:16];
  v319[2] = v130;
  v318[3] = @"Algo";
  v129 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v319[3] = v129;
  v128 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v319 forKeys:v318 count:4];
  v327[3] = v128;
  v127 = [MEMORY[0x277CCABB0] numberWithInteger:11];
  v326[4] = v127;
  v316[0] = @"rssiImmediate";
  v126 = [MEMORY[0x277CCABB0] numberWithInteger:-41];
  v317[0] = v126;
  v316[1] = @"rssiNear";
  v125 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v317[1] = v125;
  v316[2] = @"sampSize";
  v124 = [MEMORY[0x277CCABB0] numberWithInteger:16];
  v317[2] = v124;
  v316[3] = @"Algo";
  v123 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v317[3] = v123;
  v122 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v317 forKeys:v316 count:4];
  v327[4] = v122;
  v121 = [MEMORY[0x277CCABB0] numberWithInteger:12];
  v326[5] = v121;
  v314[0] = @"rssiImmediate";
  v120 = [MEMORY[0x277CCABB0] numberWithInteger:-40];
  v315[0] = v120;
  v314[1] = @"rssiNear";
  v119 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v315[1] = v119;
  v314[2] = @"sampSize";
  v118 = [MEMORY[0x277CCABB0] numberWithInteger:16];
  v315[2] = v118;
  v314[3] = @"Algo";
  v117 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v315[3] = v117;
  v116 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v315 forKeys:v314 count:4];
  v327[5] = v116;
  v115 = [MEMORY[0x277CCABB0] numberWithInteger:13];
  v326[6] = v115;
  v312[0] = @"rssiImmediate";
  v114 = [MEMORY[0x277CCABB0] numberWithInteger:-40];
  v313[0] = v114;
  v312[1] = @"rssiNear";
  v113 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v313[1] = v113;
  v312[2] = @"sampSize";
  v112 = [MEMORY[0x277CCABB0] numberWithInteger:16];
  v313[2] = v112;
  v312[3] = @"Algo";
  v111 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v313[3] = v111;
  v110 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v313 forKeys:v312 count:4];
  v327[6] = v110;
  v109 = [MEMORY[0x277CCABB0] numberWithInteger:10];
  v326[7] = v109;
  v310[0] = @"rssiImmediate";
  v108 = [MEMORY[0x277CCABB0] numberWithInteger:-40];
  v311[0] = v108;
  v310[1] = @"rssiNear";
  v107 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v311[1] = v107;
  v310[2] = @"sampSize";
  v106 = [MEMORY[0x277CCABB0] numberWithInteger:8];
  v311[2] = v106;
  v310[3] = @"Algo";
  v105 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v311[3] = v105;
  v104 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v311 forKeys:v310 count:4];
  v327[7] = v104;
  v103 = [MEMORY[0x277CCABB0] numberWithInteger:8];
  v326[8] = v103;
  v308[0] = @"rssiImmediate";
  v102 = [MEMORY[0x277CCABB0] numberWithInteger:-39];
  v309[0] = v102;
  v308[1] = @"rssiNear";
  v101 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v309[1] = v101;
  v308[2] = @"sampSize";
  v100 = [MEMORY[0x277CCABB0] numberWithInteger:16];
  v309[2] = v100;
  v308[3] = @"Algo";
  v0 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v309[3] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v309 forKeys:v308 count:4];
  v327[8] = v1;
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:9];
  v326[9] = v2;
  v306[0] = @"rssiImmediate";
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:-42];
  v307[0] = v3;
  v306[1] = @"rssiNear";
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:-60];
  v307[1] = v4;
  v306[2] = @"sampSize";
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:16];
  v307[2] = v5;
  v306[3] = @"Algo";
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v307[3] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v307 forKeys:v306 count:4];
  v327[9] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v327 forKeys:v326 count:10];
  v415[4] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v415 forKeys:v414 count:5];
  v10 = +[PRProximityDatabase getDeviceData]::proxDeviceData;
  +[PRProximityDatabase getDeviceData]::proxDeviceData = v9;
}

+ (BOOL)getProximityDeviceParameters:(id *)parameters forDeviceModel:(id)model withError:(id *)error
{
  v31[1] = *MEMORY[0x277D85DE8];
  modelCopy = model;
  v8 = +[PRProximityDatabase getScannerDeviceModel];
  v9 = [PRProximityDatabase getPRDeviceModelFromModelId:modelCopy];
  v10 = v9;
  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (v8)
    {
      if (v9)
      {
        v12 = 0;
        v13 = 0;
        if (!error)
        {
          goto LABEL_23;
        }

        goto LABEL_21;
      }

      v22 = @"Unknown Peer model";
    }

    else
    {
      v22 = @"Unknown Scanning device - Proximity Estimation not supported on this device";
    }

    [MEMORY[0x277CCACA8] stringWithFormat:v22];
    v12 = v13 = 0;
    if (!error)
    {
      goto LABEL_23;
    }

LABEL_21:
    if (!v13)
    {
      v23 = MEMORY[0x277CCA9B8];
      v30 = *MEMORY[0x277CCA450];
      v31[0] = v12;
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
      *error = [v23 errorWithDomain:@"com.apple.Proximity.ErrorDomain" code:999 userInfo:v24];
    }

    goto LABEL_23;
  }

  v29 = +[PRProximityDatabase getDeviceData];
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
  v15 = [v29 objectForKeyedSubscript:v14];

  if (v15)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
    v17 = [v15 objectForKeyedSubscript:v16];

    v13 = v17 != 0;
    if (v17)
    {
      v27 = [PRProximityDeviceParameters alloc];
      v28 = [v17 objectForKeyedSubscript:@"Algo"];
      v18 = *(&btFilters + [v28 intValue]);
      v26 = [v17 objectForKeyedSubscript:@"sampSize"];
      unsignedIntegerValue = [v26 unsignedIntegerValue];
      v20 = [v17 objectForKeyedSubscript:@"rssiImmediate"];
      v21 = [v17 objectForKeyedSubscript:@"rssiNear"];
      *parameters = [(PRProximityDeviceParameters *)v27 initWithFilter:v18 sampleSize:unsignedIntegerValue rssiImmediate:v20 rssiNear:v21];

      v12 = 0;
    }

    else
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Proximity Estimation to Peer not supported"];
    }
  }

  else
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Proximity Estimation not supported on this device"];
    v13 = 0;
  }

  if (error)
  {
    goto LABEL_21;
  }

LABEL_23:

  return v13;
}

+ (int64_t)getPRDeviceModelFromModelId:(id)id
{
  idCopy = id;
  v4 = idCopy;
  if (idCopy)
  {
    if ([idCopy containsString:@"AirPods"])
    {
      v5 = 3;
    }

    else if ([v4 isEqualToString:{@"BeatsSolo3, 1"}])
    {
      v5 = 6;
    }

    else if ([v4 isEqualToString:{@"Device1, 8201"}])
    {
      v5 = 7;
    }

    else if ([v4 isEqualToString:@"SiriRemote"])
    {
      v5 = 9;
    }

    else if ([v4 containsString:@"iPad"])
    {
      v5 = 10;
    }

    else if ([v4 containsString:@"iPhone"])
    {
      if (([v4 isEqualToString:{@"iPhone10, 1"}] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"iPhone10,4"))
      {
        v5 = 12;
      }

      else
      {
        v5 = 11;
      }

      if (([v4 isEqualToString:{@"iPhone10, 2"}] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"iPhone10,5"))
      {
        v5 = 13;
      }

      if (([v4 isEqualToString:{@"iPhone10, 3"}] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"iPhone10,6") & 1) != 0 || objc_msgSend(v4, "containsString:", @"iPhone11"))
      {
        v5 = 14;
      }
    }

    else if ([v4 containsString:@"Watch"])
    {
      v5 = 15;
    }

    else if ([v4 containsString:@"AppleTV"])
    {
      v5 = 16;
    }

    else if ([v4 containsString:@"MacPro"])
    {
      v5 = 20;
    }

    else if ([v4 containsString:@"iMac"])
    {
      v5 = 19;
    }

    else if ([v4 containsString:@"Mac"])
    {
      v5 = 18;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (int64_t)getScannerDeviceModel
{
  v2 = PRGetDeviceModelName(self);
  v3 = [PRProximityDatabase getPRDeviceModelFromModelId:v2];

  return v3;
}

@end