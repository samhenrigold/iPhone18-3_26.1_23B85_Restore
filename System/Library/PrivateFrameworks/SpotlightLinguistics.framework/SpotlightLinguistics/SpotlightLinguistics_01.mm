void sub_26B7B6FB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::string::basic_string[abi:ne200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

void incompleteRomajiKanaData(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v532 = *MEMORY[0x277D85DE8];
  {
    std::string::basic_string[abi:ne200100]<0>(v214, "b");
    std::string::basic_string[abi:ne200100]<0>(v469, "っ");
    std::string::basic_string[abi:ne200100]<0>(v470, "ば");
    std::string::basic_string[abi:ne200100]<0>(v471, "び");
    std::string::basic_string[abi:ne200100]<0>(v472, "ぶ");
    std::string::basic_string[abi:ne200100]<0>(v473, "べ");
    std::string::basic_string[abi:ne200100]<0>(v474, "ぼ");
    memset(v213, 0, sizeof(v213));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v213, v469, v475, 6uLL);
    std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<true,0>(v475, v214, v213);
    std::string::basic_string[abi:ne200100]<0>(v211, "by");
    std::string::basic_string[abi:ne200100]<0>(v464, "びゃ");
    std::string::basic_string[abi:ne200100]<0>(v465, "びぃ");
    std::string::basic_string[abi:ne200100]<0>(v466, "びゅ");
    std::string::basic_string[abi:ne200100]<0>(v467, "びぇ");
    std::string::basic_string[abi:ne200100]<0>(v468, "びょ");
    memset(v210, 0, sizeof(v210));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v210, v464, v469, 5uLL);
    std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<true,0>(v476, v211, v210);
    std::string::basic_string[abi:ne200100]<0>(v208, "c");
    std::string::basic_string[abi:ne200100]<0>(v457, "っ");
    std::string::basic_string[abi:ne200100]<0>(v458, "か");
    std::string::basic_string[abi:ne200100]<0>(v459, "し");
    std::string::basic_string[abi:ne200100]<0>(v460, "く");
    std::string::basic_string[abi:ne200100]<0>(v461, "せ");
    std::string::basic_string[abi:ne200100]<0>(v462, "こ");
    std::string::basic_string[abi:ne200100]<0>(v463, "ち");
    memset(v207, 0, sizeof(v207));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v207, v457, v464, 7uLL);
    std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<true,0>(v477, v208, v207);
    std::string::basic_string[abi:ne200100]<0>(v205, "ch");
    std::string::basic_string[abi:ne200100]<0>(v455, "ち");
    memset(v204, 0, sizeof(v204));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v204, v455, v457, 1uLL);
    std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<true,0>(v478, v205, v204);
    std::string::basic_string[abi:ne200100]<0>(v202, "cy");
    std::string::basic_string[abi:ne200100]<0>(v450, "ちゃ");
    std::string::basic_string[abi:ne200100]<0>(v451, "ちぃ");
    std::string::basic_string[abi:ne200100]<0>(v452, "ちゅ");
    std::string::basic_string[abi:ne200100]<0>(v453, "ちぇ");
    std::string::basic_string[abi:ne200100]<0>(v454, "ちょ");
    memset(v201, 0, sizeof(v201));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v201, v450, v455, 5uLL);
    std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<true,0>(v479, v202, v201);
    std::string::basic_string[abi:ne200100]<0>(v199, "d");
    std::string::basic_string[abi:ne200100]<0>(v444, "っ");
    std::string::basic_string[abi:ne200100]<0>(v445, "だ");
    std::string::basic_string[abi:ne200100]<0>(v446, "ぢ");
    std::string::basic_string[abi:ne200100]<0>(v447, "づ");
    std::string::basic_string[abi:ne200100]<0>(v448, "で");
    std::string::basic_string[abi:ne200100]<0>(v449, "ど");
    memset(v198, 0, sizeof(v198));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v198, v444, v450, 6uLL);
    std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<true,0>(v480, v199, v198);
    std::string::basic_string[abi:ne200100]<0>(v196, "dh");
    std::string::basic_string[abi:ne200100]<0>(v439, "でゃ");
    std::string::basic_string[abi:ne200100]<0>(v440, "でぃ");
    std::string::basic_string[abi:ne200100]<0>(v441, "でゅ");
    std::string::basic_string[abi:ne200100]<0>(v442, "でぇ");
    std::string::basic_string[abi:ne200100]<0>(v443, "でょ");
    memset(v195, 0, sizeof(v195));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v195, v439, v444, 5uLL);
    std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<true,0>(v481, v196, v195);
    std::string::basic_string[abi:ne200100]<0>(v193, "dw");
    std::string::basic_string[abi:ne200100]<0>(v437, "どぅ");
    memset(v192, 0, sizeof(v192));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v192, v437, v439, 1uLL);
    std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<true,0>(v482, v193, v192);
    std::string::basic_string[abi:ne200100]<0>(v190, "dy");
    std::string::basic_string[abi:ne200100]<0>(v432, "ぢゃ");
    std::string::basic_string[abi:ne200100]<0>(v433, "ぢぃ");
    std::string::basic_string[abi:ne200100]<0>(v434, "ぢゅ");
    std::string::basic_string[abi:ne200100]<0>(v435, "ぢぇ");
    std::string::basic_string[abi:ne200100]<0>(v436, "ぢょ");
    memset(v189, 0, sizeof(v189));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v189, v432, v437, 5uLL);
    std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<true,0>(v483, v190, v189);
    std::string::basic_string[abi:ne200100]<0>(v187, "f");
    std::string::basic_string[abi:ne200100]<0>(v430, "ふ");
    memset(v186, 0, sizeof(v186));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v186, v430, v432, 1uLL);
    std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<true,0>(v484, v187, v186);
    std::string::basic_string[abi:ne200100]<0>(v184, "fy");
    std::string::basic_string[abi:ne200100]<0>(v428, "ふゅ");
    memset(v183, 0, sizeof(v183));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v183, v428, v430, 1uLL);
    std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<true,0>(v485, v184, v183);
    std::string::basic_string[abi:ne200100]<0>(v181, "g");
    std::string::basic_string[abi:ne200100]<0>(v422, "っ");
    std::string::basic_string[abi:ne200100]<0>(v423, "が");
    std::string::basic_string[abi:ne200100]<0>(v424, "ぎ");
    std::string::basic_string[abi:ne200100]<0>(v425, "ぐ");
    std::string::basic_string[abi:ne200100]<0>(v426, "げ");
    std::string::basic_string[abi:ne200100]<0>(v427, "ご");
    memset(v180, 0, sizeof(v180));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v180, v422, v428, 6uLL);
    std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<true,0>(v486, v181, v180);
    std::string::basic_string[abi:ne200100]<0>(v178, "gw");
    std::string::basic_string[abi:ne200100]<0>(v417, "ぐぁ");
    std::string::basic_string[abi:ne200100]<0>(v418, "ぐぃ");
    std::string::basic_string[abi:ne200100]<0>(v419, "ぐぅ");
    std::string::basic_string[abi:ne200100]<0>(v420, "ぐぇ");
    std::string::basic_string[abi:ne200100]<0>(v421, "ぐぉ");
    memset(v177, 0, sizeof(v177));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v177, v417, v422, 5uLL);
    std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<true,0>(v487, v178, v177);
    std::string::basic_string[abi:ne200100]<0>(v175, "gy");
    std::string::basic_string[abi:ne200100]<0>(v412, "ぎゃ");
    std::string::basic_string[abi:ne200100]<0>(v413, "ぎぃ");
    std::string::basic_string[abi:ne200100]<0>(v414, "ぎゅ");
    std::string::basic_string[abi:ne200100]<0>(v415, "ぎぇ");
    std::string::basic_string[abi:ne200100]<0>(v416, "ぎょ");
    memset(v174, 0, sizeof(v174));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v174, v412, v417, 5uLL);
    std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<true,0>(v488, v175, v174);
    std::string::basic_string[abi:ne200100]<0>(v172, "h");
    std::string::basic_string[abi:ne200100]<0>(v406, "っ");
    std::string::basic_string[abi:ne200100]<0>(v407, "は");
    std::string::basic_string[abi:ne200100]<0>(v408, "ひ");
    std::string::basic_string[abi:ne200100]<0>(v409, "ふ");
    std::string::basic_string[abi:ne200100]<0>(v410, "へ");
    std::string::basic_string[abi:ne200100]<0>(v411, "ほ");
    memset(v171, 0, sizeof(v171));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v171, v406, v412, 6uLL);
    std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<true,0>(v489, v172, v171);
    std::string::basic_string[abi:ne200100]<0>(v169, "hw");
    std::string::basic_string[abi:ne200100]<0>(v401, "ふぁ");
    std::string::basic_string[abi:ne200100]<0>(v402, "ふぃ");
    std::string::basic_string[abi:ne200100]<0>(v403, "ふぇ");
    std::string::basic_string[abi:ne200100]<0>(v404, "ふぉ");
    std::string::basic_string[abi:ne200100]<0>(v405, "ふゅ");
    memset(v168, 0, sizeof(v168));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v168, v401, v406, 5uLL);
    std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<true,0>(v490, v169, v168);
    std::string::basic_string[abi:ne200100]<0>(v166, "hy");
    std::string::basic_string[abi:ne200100]<0>(v396, "ひゃ");
    std::string::basic_string[abi:ne200100]<0>(v397, "ひぃ");
    std::string::basic_string[abi:ne200100]<0>(v398, "ひゅ");
    std::string::basic_string[abi:ne200100]<0>(v399, "ひぇ");
    std::string::basic_string[abi:ne200100]<0>(v400, "ひょ");
    memset(v165, 0, sizeof(v165));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v165, v396, v401, 5uLL);
    std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<true,0>(v491, v166, v165);
    std::string::basic_string[abi:ne200100]<0>(v163, "j");
    std::string::basic_string[abi:ne200100]<0>(v394, "っ");
    std::string::basic_string[abi:ne200100]<0>(v395, "じ");
    memset(v162, 0, sizeof(v162));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v162, v394, v396, 2uLL);
    std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<true,0>(v492, v163, v162);
    std::string::basic_string[abi:ne200100]<0>(v160, "jy");
    std::string::basic_string[abi:ne200100]<0>(v389, "じゃ");
    std::string::basic_string[abi:ne200100]<0>(v390, "じぃ");
    std::string::basic_string[abi:ne200100]<0>(v391, "じゅ");
    std::string::basic_string[abi:ne200100]<0>(v392, "じぇ");
    std::string::basic_string[abi:ne200100]<0>(v393, "じょ");
    memset(v159, 0, sizeof(v159));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v159, v389, v394, 5uLL);
    std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<true,0>(v493, v160, v159);
    std::string::basic_string[abi:ne200100]<0>(v157, "k");
    std::string::basic_string[abi:ne200100]<0>(v383, "っ");
    std::string::basic_string[abi:ne200100]<0>(v384, "か");
    std::string::basic_string[abi:ne200100]<0>(v385, "き");
    std::string::basic_string[abi:ne200100]<0>(v386, "く");
    std::string::basic_string[abi:ne200100]<0>(v387, "け");
    std::string::basic_string[abi:ne200100]<0>(v388, "こ");
    memset(v156, 0, sizeof(v156));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v156, v383, v389, 6uLL);
    std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<true,0>(v494, v157, v156);
    std::string::basic_string[abi:ne200100]<0>(v154, "kw");
    std::string::basic_string[abi:ne200100]<0>(v378, "くぁ");
    std::string::basic_string[abi:ne200100]<0>(v379, "くぃ");
    std::string::basic_string[abi:ne200100]<0>(v380, "くぅ");
    std::string::basic_string[abi:ne200100]<0>(v381, "くぇ");
    std::string::basic_string[abi:ne200100]<0>(v382, "くぉ");
    memset(v153, 0, sizeof(v153));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v153, v378, v383, 5uLL);
    std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<true,0>(v495, v154, v153);
    std::string::basic_string[abi:ne200100]<0>(v151, "ky");
    std::string::basic_string[abi:ne200100]<0>(v373, "きゃ");
    std::string::basic_string[abi:ne200100]<0>(v374, "きぃ");
    std::string::basic_string[abi:ne200100]<0>(v375, "きゅ");
    std::string::basic_string[abi:ne200100]<0>(v376, "きぇ");
    std::string::basic_string[abi:ne200100]<0>(v377, "きょ");
    memset(v150, 0, sizeof(v150));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v150, v373, v378, 5uLL);
    std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<true,0>(v496, v151, v150);
    std::string::basic_string[abi:ne200100]<0>(v148, "l");
    std::string::basic_string[abi:ne200100]<0>(v363, "っ");
    std::string::basic_string[abi:ne200100]<0>(v364, "ぁ");
    std::string::basic_string[abi:ne200100]<0>(v365, "ぃ");
    std::string::basic_string[abi:ne200100]<0>(v366, "ぅ");
    std::string::basic_string[abi:ne200100]<0>(v367, "ぇ");
    std::string::basic_string[abi:ne200100]<0>(v368, "ぉ");
    std::string::basic_string[abi:ne200100]<0>(v369, "ゃ");
    std::string::basic_string[abi:ne200100]<0>(v370, "ゅ");
    std::string::basic_string[abi:ne200100]<0>(v371, "ょ");
    std::string::basic_string[abi:ne200100]<0>(v372, "ゎ");
    memset(v147, 0, sizeof(v147));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v147, v363, v373, 0xAuLL);
    std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<true,0>(v497, v148, v147);
    std::string::basic_string[abi:ne200100]<0>(v145, "lt");
    std::string::basic_string[abi:ne200100]<0>(v361, "っ");
    memset(v144, 0, sizeof(v144));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v144, v361, v363, 1uLL);
    std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<true,0>(v498, v145, v144);
    std::string::basic_string[abi:ne200100]<0>(v142, "lw");
    std::string::basic_string[abi:ne200100]<0>(v359, "ゎ");
    memset(v141, 0, sizeof(v141));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v141, v359, v361, 1uLL);
    std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<true,0>(v499, v142, v141);
    std::string::basic_string[abi:ne200100]<0>(v139, "ly");
    std::string::basic_string[abi:ne200100]<0>(v354, "ゃ");
    std::string::basic_string[abi:ne200100]<0>(v355, "ぃ");
    std::string::basic_string[abi:ne200100]<0>(v356, "ゅ");
    std::string::basic_string[abi:ne200100]<0>(v357, "ぇ");
    std::string::basic_string[abi:ne200100]<0>(v358, "ょ");
    memset(v138, 0, sizeof(v138));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v138, v354, v359, 5uLL);
    std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<true,0>(v500, v139, v138);
    std::string::basic_string[abi:ne200100]<0>(v136, "m");
    std::string::basic_string[abi:ne200100]<0>(v348, "っ");
    std::string::basic_string[abi:ne200100]<0>(v349, "ま");
    std::string::basic_string[abi:ne200100]<0>(v350, "み");
    std::string::basic_string[abi:ne200100]<0>(v351, "む");
    std::string::basic_string[abi:ne200100]<0>(v352, "め");
    std::string::basic_string[abi:ne200100]<0>(v353, "も");
    memset(v135, 0, sizeof(v135));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v135, v348, v354, 6uLL);
    std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<true,0>(v501, v136, v135);
    std::string::basic_string[abi:ne200100]<0>(v133, "my");
    std::string::basic_string[abi:ne200100]<0>(v343, "みゃ");
    std::string::basic_string[abi:ne200100]<0>(v344, "みぃ");
    std::string::basic_string[abi:ne200100]<0>(v345, "みゅ");
    std::string::basic_string[abi:ne200100]<0>(v346, "みぇ");
    std::string::basic_string[abi:ne200100]<0>(v347, "みょ");
    memset(v132, 0, sizeof(v132));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v132, v343, v348, 5uLL);
    std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<true,0>(v502, v133, v132);
    std::string::basic_string[abi:ne200100]<0>(v130, "n");
    std::string::basic_string[abi:ne200100]<0>(v336, "っ");
    std::string::basic_string[abi:ne200100]<0>(v337, "な");
    std::string::basic_string[abi:ne200100]<0>(v338, "に");
    std::string::basic_string[abi:ne200100]<0>(v339, "ぬ");
    std::string::basic_string[abi:ne200100]<0>(v340, "ね");
    std::string::basic_string[abi:ne200100]<0>(v341, "の");
    std::string::basic_string[abi:ne200100]<0>(v342, "ん");
    memset(v129, 0, sizeof(v129));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v129, v336, v343, 7uLL);
    std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<true,0>(v503, v130, v129);
    std::string::basic_string[abi:ne200100]<0>(v127, "ny");
    std::string::basic_string[abi:ne200100]<0>(v331, "にゃ");
    std::string::basic_string[abi:ne200100]<0>(v332, "にぃ");
    std::string::basic_string[abi:ne200100]<0>(v333, "にゅ");
    std::string::basic_string[abi:ne200100]<0>(v334, "にぇ");
    std::string::basic_string[abi:ne200100]<0>(v335, "にょ");
    memset(v126, 0, sizeof(v126));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v126, v331, v336, 5uLL);
    std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<true,0>(v504, v127, v126);
    std::string::basic_string[abi:ne200100]<0>(v124, "p");
    std::string::basic_string[abi:ne200100]<0>(v325, "っ");
    std::string::basic_string[abi:ne200100]<0>(v326, "ぱ");
    std::string::basic_string[abi:ne200100]<0>(v327, "ぴ");
    std::string::basic_string[abi:ne200100]<0>(v328, "ぷ");
    std::string::basic_string[abi:ne200100]<0>(v329, "ぺ");
    std::string::basic_string[abi:ne200100]<0>(v330, "ぽ");
    memset(v123, 0, sizeof(v123));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v123, v325, v331, 6uLL);
    std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<true,0>(v505, v124, v123);
    std::string::basic_string[abi:ne200100]<0>(v121, "py");
    std::string::basic_string[abi:ne200100]<0>(v320, "ぴゃ");
    std::string::basic_string[abi:ne200100]<0>(v321, "ぴぃ");
    std::string::basic_string[abi:ne200100]<0>(v322, "ぴゅ");
    std::string::basic_string[abi:ne200100]<0>(v323, "ぴぇ");
    std::string::basic_string[abi:ne200100]<0>(v324, "ぴょ");
    memset(v120, 0, sizeof(v120));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v120, v320, v325, 5uLL);
    std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<true,0>(v506, v121, v120);
    std::string::basic_string[abi:ne200100]<0>(v118, "q");
    std::string::basic_string[abi:ne200100]<0>(v318, "く");
    memset(v117, 0, sizeof(v117));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v117, v318, v320, 1uLL);
    std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<true,0>(v507, v118, v117);
    std::string::basic_string[abi:ne200100]<0>(v115, "qy");
    std::string::basic_string[abi:ne200100]<0>(v313, "くゃ");
    std::string::basic_string[abi:ne200100]<0>(v314, "くぃ");
    std::string::basic_string[abi:ne200100]<0>(v315, "くゅ");
    std::string::basic_string[abi:ne200100]<0>(v316, "くぇ");
    std::string::basic_string[abi:ne200100]<0>(v317, "くょ");
    memset(v114, 0, sizeof(v114));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v114, v313, v318, 5uLL);
    std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<true,0>(v508, v115, v114);
    std::string::basic_string[abi:ne200100]<0>(v112, "r");
    std::string::basic_string[abi:ne200100]<0>(v307, "っ");
    std::string::basic_string[abi:ne200100]<0>(v308, "ら");
    std::string::basic_string[abi:ne200100]<0>(v309, "り");
    std::string::basic_string[abi:ne200100]<0>(v310, "る");
    std::string::basic_string[abi:ne200100]<0>(v311, "れ");
    std::string::basic_string[abi:ne200100]<0>(v312, "ろ");
    memset(v111, 0, sizeof(v111));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v111, v307, v313, 6uLL);
    std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<true,0>(v509, v112, v111);
    std::string::basic_string[abi:ne200100]<0>(v109, "ry");
    std::string::basic_string[abi:ne200100]<0>(v302, "りゃ");
    std::string::basic_string[abi:ne200100]<0>(v303, "りぃ");
    std::string::basic_string[abi:ne200100]<0>(v304, "りゅ");
    std::string::basic_string[abi:ne200100]<0>(v305, "りぇ");
    std::string::basic_string[abi:ne200100]<0>(v306, "りょ");
    memset(v108, 0, sizeof(v108));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v108, v302, v307, 5uLL);
    std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<true,0>(v510, v109, v108);
    std::string::basic_string[abi:ne200100]<0>(v106, "s");
    std::string::basic_string[abi:ne200100]<0>(v296, "っ");
    std::string::basic_string[abi:ne200100]<0>(v297, "さ");
    std::string::basic_string[abi:ne200100]<0>(v298, "し");
    std::string::basic_string[abi:ne200100]<0>(v299, "す");
    std::string::basic_string[abi:ne200100]<0>(v300, "せ");
    std::string::basic_string[abi:ne200100]<0>(v301, "そ");
    memset(v105, 0, sizeof(v105));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v105, v296, v302, 6uLL);
    std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<true,0>(v511, v106, v105);
    std::string::basic_string[abi:ne200100]<0>(v103, "sh");
    std::string::basic_string[abi:ne200100]<0>(v294, "し");
    memset(v102, 0, sizeof(v102));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v102, v294, v296, 1uLL);
    std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<true,0>(v512, v103, v102);
    std::string::basic_string[abi:ne200100]<0>(v100, "sy");
    std::string::basic_string[abi:ne200100]<0>(v289, "しゃ");
    std::string::basic_string[abi:ne200100]<0>(v290, "しぃ");
    std::string::basic_string[abi:ne200100]<0>(v291, "しゅ");
    std::string::basic_string[abi:ne200100]<0>(v292, "しぇ");
    std::string::basic_string[abi:ne200100]<0>(v293, "しょ");
    memset(v99, 0, sizeof(v99));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v99, v289, v294, 5uLL);
    std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<true,0>(v513, v100, v99);
    std::string::basic_string[abi:ne200100]<0>(v97, "t");
    std::string::basic_string[abi:ne200100]<0>(v283, "っ");
    std::string::basic_string[abi:ne200100]<0>(v284, "た");
    std::string::basic_string[abi:ne200100]<0>(v285, "ち");
    std::string::basic_string[abi:ne200100]<0>(v286, "つ");
    std::string::basic_string[abi:ne200100]<0>(v287, "て");
    std::string::basic_string[abi:ne200100]<0>(v288, "と");
    memset(v96, 0, sizeof(v96));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v96, v283, v289, 6uLL);
    std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<true,0>(v514, v97, v96);
    std::string::basic_string[abi:ne200100]<0>(v94, "th");
    std::string::basic_string[abi:ne200100]<0>(v279, "てゃてぃ");
    std::string::basic_string[abi:ne200100]<0>(v280, "てゅ");
    std::string::basic_string[abi:ne200100]<0>(v281, "てぇ");
    std::string::basic_string[abi:ne200100]<0>(v282, "てょ");
    memset(v93, 0, sizeof(v93));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v93, v279, v283, 4uLL);
    std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<true,0>(v515, v94, v93);
    std::string::basic_string[abi:ne200100]<0>(v91, "ts");
    std::string::basic_string[abi:ne200100]<0>(v277, "つ");
    memset(v90, 0, sizeof(v90));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v90, v277, v279, 1uLL);
    std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<true,0>(v516, v91, v90);
    std::string::basic_string[abi:ne200100]<0>(v88, "tw");
    std::string::basic_string[abi:ne200100]<0>(v275, "とぅ");
    memset(v87, 0, sizeof(v87));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v87, v275, v277, 1uLL);
    std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<true,0>(v517, v88, v87);
    std::string::basic_string[abi:ne200100]<0>(v85, "ty");
    std::string::basic_string[abi:ne200100]<0>(v270, "ちゃ");
    std::string::basic_string[abi:ne200100]<0>(v271, "ちぃ");
    std::string::basic_string[abi:ne200100]<0>(v272, "ちゅ");
    std::string::basic_string[abi:ne200100]<0>(v273, "ちぇ");
    std::string::basic_string[abi:ne200100]<0>(v274, "ちょ");
    memset(v84, 0, sizeof(v84));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v84, v270, v275, 5uLL);
    std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<true,0>(v518, v85, v84);
    std::string::basic_string[abi:ne200100]<0>(v82, "v");
    std::string::basic_string[abi:ne200100]<0>(v268, "っ");
    std::string::basic_string[abi:ne200100]<0>(v269, "ゔ");
    memset(v81, 0, sizeof(v81));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v81, v268, v270, 2uLL);
    std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<true,0>(v519, v82, v81);
    std::string::basic_string[abi:ne200100]<0>(v79, "vy");
    std::string::basic_string[abi:ne200100]<0>(v266, "ゔゅ");
    memset(v78, 0, sizeof(v78));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v78, v266, v268, 1uLL);
    std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<true,0>(v520, v79, v78);
    std::string::basic_string[abi:ne200100]<0>(v76, "w");
    std::string::basic_string[abi:ne200100]<0>(v260, "っ");
    std::string::basic_string[abi:ne200100]<0>(v261, "わ");
    std::string::basic_string[abi:ne200100]<0>(v262, "う");
    std::string::basic_string[abi:ne200100]<0>(v263, "を");
    std::string::basic_string[abi:ne200100]<0>(v264, "ゐ");
    std::string::basic_string[abi:ne200100]<0>(v265, "ゑ");
    memset(v75, 0, sizeof(v75));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v75, v260, v266, 6uLL);
    std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<true,0>(v521, v76, v75);
    std::string::basic_string[abi:ne200100]<0>(v73, "wh");
    std::string::basic_string[abi:ne200100]<0>(v257, "うぃ");
    std::string::basic_string[abi:ne200100]<0>(v258, "うぇ");
    std::string::basic_string[abi:ne200100]<0>(v259, "うぉ");
    memset(v72, 0, sizeof(v72));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v72, v257, v260, 3uLL);
    std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<true,0>(v522, v73, v72);
    std::string::basic_string[abi:ne200100]<0>(v70, "wy");
    std::string::basic_string[abi:ne200100]<0>(v255, "ゐ");
    std::string::basic_string[abi:ne200100]<0>(v256, "ゑ");
    memset(v69, 0, sizeof(v69));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v69, v255, v257, 2uLL);
    std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<true,0>(v523, v70, v69);
    std::string::basic_string[abi:ne200100]<0>(v67, "x");
    std::string::basic_string[abi:ne200100]<0>(v245, "っ");
    std::string::basic_string[abi:ne200100]<0>(v246, "ぁ");
    std::string::basic_string[abi:ne200100]<0>(v247, "ぃ");
    std::string::basic_string[abi:ne200100]<0>(v248, "ぅ");
    std::string::basic_string[abi:ne200100]<0>(v249, "ぇ");
    std::string::basic_string[abi:ne200100]<0>(v250, "ぉ");
    std::string::basic_string[abi:ne200100]<0>(v251, "ゃ");
    std::string::basic_string[abi:ne200100]<0>(v252, "ゅ");
    std::string::basic_string[abi:ne200100]<0>(v253, "ょ");
    std::string::basic_string[abi:ne200100]<0>(v254, "ゎ");
    memset(v66, 0, sizeof(v66));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v66, v245, v255, 0xAuLL);
    std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<true,0>(v524, v67, v66);
    std::string::basic_string[abi:ne200100]<0>(v64, "xt");
    std::string::basic_string[abi:ne200100]<0>(v243, "っ");
    memset(v63, 0, sizeof(v63));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v63, v243, v245, 1uLL);
    std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<true,0>(v525, v64, v63);
    std::string::basic_string[abi:ne200100]<0>(v61, "xts");
    std::string::basic_string[abi:ne200100]<0>(v241, "っ");
    memset(v60, 0, sizeof(v60));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v60, v241, v243, 1uLL);
    std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<true,0>(v526, v61, v60);
    std::string::basic_string[abi:ne200100]<0>(v58, "xw");
    std::string::basic_string[abi:ne200100]<0>(v239, "ゎ");
    memset(v57, 0, sizeof(v57));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v57, v239, v241, 1uLL);
    std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<true,0>(v527, v58, v57);
    std::string::basic_string[abi:ne200100]<0>(v55, "xy");
    std::string::basic_string[abi:ne200100]<0>(v234, "ゃ");
    std::string::basic_string[abi:ne200100]<0>(v235, "ぃ");
    std::string::basic_string[abi:ne200100]<0>(v236, "ゅ");
    std::string::basic_string[abi:ne200100]<0>(v237, "ぇ");
    std::string::basic_string[abi:ne200100]<0>(v238, "ょ");
    memset(v54, 0, sizeof(v54));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v54, v234, v239, 5uLL);
    std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<true,0>(v528, v55, v54);
    std::string::basic_string[abi:ne200100]<0>(v52, "y");
    std::string::basic_string[abi:ne200100]<0>(v228, "っ");
    std::string::basic_string[abi:ne200100]<0>(v229, "や");
    std::string::basic_string[abi:ne200100]<0>(v230, "い");
    std::string::basic_string[abi:ne200100]<0>(v231, "ゆ");
    std::string::basic_string[abi:ne200100]<0>(v232, "いぇ");
    std::string::basic_string[abi:ne200100]<0>(v233, "よ");
    memset(v51, 0, sizeof(v51));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v51, v228, v234, 6uLL);
    std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<true,0>(v529, v52, v51);
    std::string::basic_string[abi:ne200100]<0>(v49, "z");
    std::string::basic_string[abi:ne200100]<0>(v222, "っ");
    std::string::basic_string[abi:ne200100]<0>(v223, "ざ");
    std::string::basic_string[abi:ne200100]<0>(v224, "じ");
    std::string::basic_string[abi:ne200100]<0>(v225, "ず");
    std::string::basic_string[abi:ne200100]<0>(v226, "ぜ");
    std::string::basic_string[abi:ne200100]<0>(v227, "ぞ");
    memset(v48, 0, sizeof(v48));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v48, v222, v228, 6uLL);
    std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<true,0>(v530, v49, v48);
    std::string::basic_string[abi:ne200100]<0>(__p, "zy");
    std::string::basic_string[abi:ne200100]<0>(v217, "じゃ");
    std::string::basic_string[abi:ne200100]<0>(v218, "じぃ");
    std::string::basic_string[abi:ne200100]<0>(v219, "じゅ");
    std::string::basic_string[abi:ne200100]<0>(v220, "じぇ");
    std::string::basic_string[abi:ne200100]<0>(v221, "じょ");
    memset(v45, 0, sizeof(v45));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v45, v217, v222, 5uLL);
    std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<true,0>(v531, __p, v45);
    std::unordered_map<std::string,std::vector<std::string>>::unordered_map(&incompleteRomajiKanaData(void)::data, v475, 57);
    for (i = 2688; i != -48; i -= 48)
    {
      std::pair<std::string const,std::vector<std::string>>::~pair(&v475[i / 0x18]);
    }

    v216 = v45;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v216);
    for (j = 0; j != -15; j -= 3)
    {
      if (SHIBYTE(v221[j + 2]) < 0)
      {
        operator delete(v221[j]);
      }
    }

    if (v47 < 0)
    {
      operator delete(__p[0]);
    }

    v217[0] = v48;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v217);
    for (k = 0; k != -18; k -= 3)
    {
      if (SHIBYTE(v227[k + 2]) < 0)
      {
        operator delete(v227[k]);
      }
    }

    if (v50 < 0)
    {
      operator delete(v49[0]);
    }

    v222[0] = v51;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v222);
    for (m = 0; m != -18; m -= 3)
    {
      if (SHIBYTE(v233[m + 2]) < 0)
      {
        operator delete(v233[m]);
      }
    }

    if (v53 < 0)
    {
      operator delete(v52[0]);
    }

    v228[0] = v54;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v228);
    for (n = 0; n != -15; n -= 3)
    {
      if (SHIBYTE(v238[n + 2]) < 0)
      {
        operator delete(v238[n]);
      }
    }

    if (v56 < 0)
    {
      operator delete(v55[0]);
    }

    v228[0] = v57;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v228);
    if (v240 < 0)
    {
      operator delete(v239[0]);
    }

    if (v59 < 0)
    {
      operator delete(v58[0]);
    }

    v228[0] = v60;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v228);
    if (v242 < 0)
    {
      operator delete(v241[0]);
    }

    if (v62 < 0)
    {
      operator delete(v61[0]);
    }

    v228[0] = v63;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v228);
    if (v244 < 0)
    {
      operator delete(v243[0]);
    }

    if (v65 < 0)
    {
      operator delete(v64[0]);
    }

    v228[0] = v66;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v228);
    for (ii = 0; ii != -30; ii -= 3)
    {
      if (SHIBYTE(v254[ii + 2]) < 0)
      {
        operator delete(v254[ii]);
      }
    }

    if (v68 < 0)
    {
      operator delete(v67[0]);
    }

    v245[0] = v69;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v245);
    for (jj = 0; jj != -6; jj -= 3)
    {
      if (SHIBYTE(v256[jj + 2]) < 0)
      {
        operator delete(v255[jj + 3]);
      }
    }

    if (v71 < 0)
    {
      operator delete(v70[0]);
    }

    v245[0] = v72;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v245);
    for (kk = 0; kk != -9; kk -= 3)
    {
      if (SHIBYTE(v259[kk + 2]) < 0)
      {
        operator delete(v259[kk]);
      }
    }

    if (v74 < 0)
    {
      operator delete(v73[0]);
    }

    v245[0] = v75;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v245);
    for (mm = 0; mm != -18; mm -= 3)
    {
      if (SHIBYTE(v265[mm + 2]) < 0)
      {
        operator delete(v265[mm]);
      }
    }

    if (v77 < 0)
    {
      operator delete(v76[0]);
    }

    v245[0] = v78;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v245);
    if (v267 < 0)
    {
      operator delete(v266[0]);
    }

    if (v80 < 0)
    {
      operator delete(v79[0]);
    }

    v245[0] = v81;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v245);
    for (nn = 0; nn != -6; nn -= 3)
    {
      if (SHIBYTE(v269[nn + 2]) < 0)
      {
        operator delete(v268[nn + 3]);
      }
    }

    if (v83 < 0)
    {
      operator delete(v82[0]);
    }

    v245[0] = v84;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v245);
    for (i1 = 0; i1 != -15; i1 -= 3)
    {
      if (SHIBYTE(v274[i1 + 2]) < 0)
      {
        operator delete(v274[i1]);
      }
    }

    if (v86 < 0)
    {
      operator delete(v85[0]);
    }

    v245[0] = v87;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v245);
    if (v276 < 0)
    {
      operator delete(v275[0]);
    }

    if (v89 < 0)
    {
      operator delete(v88[0]);
    }

    v245[0] = v90;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v245);
    if (v278 < 0)
    {
      operator delete(v277[0]);
    }

    if (v92 < 0)
    {
      operator delete(v91[0]);
    }

    v245[0] = v93;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v245);
    for (i2 = 0; i2 != -12; i2 -= 3)
    {
      if (SHIBYTE(v282[i2 + 2]) < 0)
      {
        operator delete(v282[i2]);
      }
    }

    if (v95 < 0)
    {
      operator delete(v94[0]);
    }

    v245[0] = v96;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v245);
    for (i3 = 0; i3 != -18; i3 -= 3)
    {
      if (SHIBYTE(v288[i3 + 2]) < 0)
      {
        operator delete(v288[i3]);
      }
    }

    if (v98 < 0)
    {
      operator delete(v97[0]);
    }

    v245[0] = v99;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v245);
    for (i4 = 0; i4 != -15; i4 -= 3)
    {
      if (SHIBYTE(v293[i4 + 2]) < 0)
      {
        operator delete(v293[i4]);
      }
    }

    if (v101 < 0)
    {
      operator delete(v100[0]);
    }

    v245[0] = v102;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v245);
    if (v295 < 0)
    {
      operator delete(v294[0]);
    }

    if (v104 < 0)
    {
      operator delete(v103[0]);
    }

    v245[0] = v105;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v245);
    for (i5 = 0; i5 != -18; i5 -= 3)
    {
      if (SHIBYTE(v301[i5 + 2]) < 0)
      {
        operator delete(v301[i5]);
      }
    }

    if (v107 < 0)
    {
      operator delete(v106[0]);
    }

    v245[0] = v108;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v245);
    for (i6 = 0; i6 != -15; i6 -= 3)
    {
      if (SHIBYTE(v306[i6 + 2]) < 0)
      {
        operator delete(v306[i6]);
      }
    }

    if (v110 < 0)
    {
      operator delete(v109[0]);
    }

    v245[0] = v111;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v245);
    for (i7 = 0; i7 != -18; i7 -= 3)
    {
      if (SHIBYTE(v312[i7 + 2]) < 0)
      {
        operator delete(v312[i7]);
      }
    }

    if (v113 < 0)
    {
      operator delete(v112[0]);
    }

    v245[0] = v114;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v245);
    for (i8 = 0; i8 != -15; i8 -= 3)
    {
      if (SHIBYTE(v317[i8 + 2]) < 0)
      {
        operator delete(v317[i8]);
      }
    }

    if (v116 < 0)
    {
      operator delete(v115[0]);
    }

    v245[0] = v117;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v245);
    if (v319 < 0)
    {
      operator delete(v318[0]);
    }

    if (v119 < 0)
    {
      operator delete(v118[0]);
    }

    v245[0] = v120;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v245);
    for (i9 = 0; i9 != -15; i9 -= 3)
    {
      if (SHIBYTE(v324[i9 + 2]) < 0)
      {
        operator delete(v324[i9]);
      }
    }

    if (v122 < 0)
    {
      operator delete(v121[0]);
    }

    v245[0] = v123;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v245);
    for (i10 = 0; i10 != -18; i10 -= 3)
    {
      if (SHIBYTE(v330[i10 + 2]) < 0)
      {
        operator delete(v330[i10]);
      }
    }

    if (v125 < 0)
    {
      operator delete(v124[0]);
    }

    v245[0] = v126;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v245);
    for (i11 = 0; i11 != -15; i11 -= 3)
    {
      if (SHIBYTE(v335[i11 + 2]) < 0)
      {
        operator delete(v335[i11]);
      }
    }

    if (v128 < 0)
    {
      operator delete(v127[0]);
    }

    v245[0] = v129;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v245);
    for (i12 = 0; i12 != -21; i12 -= 3)
    {
      if (SHIBYTE(v342[i12 + 2]) < 0)
      {
        operator delete(v342[i12]);
      }
    }

    if (v131 < 0)
    {
      operator delete(v130[0]);
    }

    v245[0] = v132;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v245);
    for (i13 = 0; i13 != -15; i13 -= 3)
    {
      if (SHIBYTE(v347[i13 + 2]) < 0)
      {
        operator delete(v347[i13]);
      }
    }

    if (v134 < 0)
    {
      operator delete(v133[0]);
    }

    v245[0] = v135;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v245);
    for (i14 = 0; i14 != -18; i14 -= 3)
    {
      if (SHIBYTE(v353[i14 + 2]) < 0)
      {
        operator delete(v353[i14]);
      }
    }

    if (v137 < 0)
    {
      operator delete(v136[0]);
    }

    v245[0] = v138;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v245);
    for (i15 = 0; i15 != -15; i15 -= 3)
    {
      if (SHIBYTE(v358[i15 + 2]) < 0)
      {
        operator delete(v358[i15]);
      }
    }

    if (v140 < 0)
    {
      operator delete(v139[0]);
    }

    v245[0] = v141;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v245);
    if (v360 < 0)
    {
      operator delete(v359[0]);
    }

    if (v143 < 0)
    {
      operator delete(v142[0]);
    }

    v245[0] = v144;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v245);
    if (v362 < 0)
    {
      operator delete(v361[0]);
    }

    if (v146 < 0)
    {
      operator delete(v145[0]);
    }

    v245[0] = v147;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v245);
    for (i16 = 0; i16 != -30; i16 -= 3)
    {
      if (SHIBYTE(v372[i16 + 2]) < 0)
      {
        operator delete(v372[i16]);
      }
    }

    if (v149 < 0)
    {
      operator delete(v148[0]);
    }

    v363[0] = v150;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v363);
    for (i17 = 0; i17 != -15; i17 -= 3)
    {
      if (SHIBYTE(v377[i17 + 2]) < 0)
      {
        operator delete(v377[i17]);
      }
    }

    if (v152 < 0)
    {
      operator delete(v151[0]);
    }

    v363[0] = v153;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v363);
    for (i18 = 0; i18 != -15; i18 -= 3)
    {
      if (SHIBYTE(v382[i18 + 2]) < 0)
      {
        operator delete(v382[i18]);
      }
    }

    if (v155 < 0)
    {
      operator delete(v154[0]);
    }

    v363[0] = v156;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v363);
    for (i19 = 0; i19 != -18; i19 -= 3)
    {
      if (SHIBYTE(v388[i19 + 2]) < 0)
      {
        operator delete(v388[i19]);
      }
    }

    if (v158 < 0)
    {
      operator delete(v157[0]);
    }

    v363[0] = v159;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v363);
    for (i20 = 0; i20 != -15; i20 -= 3)
    {
      if (SHIBYTE(v393[i20 + 2]) < 0)
      {
        operator delete(v393[i20]);
      }
    }

    if (v161 < 0)
    {
      operator delete(v160[0]);
    }

    v363[0] = v162;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v363);
    for (i21 = 0; i21 != -6; i21 -= 3)
    {
      if (SHIBYTE(v395[i21 + 2]) < 0)
      {
        operator delete(v394[i21 + 3]);
      }
    }

    if (v164 < 0)
    {
      operator delete(v163[0]);
    }

    v363[0] = v165;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v363);
    for (i22 = 0; i22 != -15; i22 -= 3)
    {
      if (SHIBYTE(v400[i22 + 2]) < 0)
      {
        operator delete(v400[i22]);
      }
    }

    if (v167 < 0)
    {
      operator delete(v166[0]);
    }

    v363[0] = v168;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v363);
    for (i23 = 0; i23 != -15; i23 -= 3)
    {
      if (SHIBYTE(v405[i23 + 2]) < 0)
      {
        operator delete(v405[i23]);
      }
    }

    if (v170 < 0)
    {
      operator delete(v169[0]);
    }

    v363[0] = v171;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v363);
    for (i24 = 0; i24 != -18; i24 -= 3)
    {
      if (SHIBYTE(v411[i24 + 2]) < 0)
      {
        operator delete(v411[i24]);
      }
    }

    if (v173 < 0)
    {
      operator delete(v172[0]);
    }

    v363[0] = v174;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v363);
    for (i25 = 0; i25 != -15; i25 -= 3)
    {
      if (SHIBYTE(v416[i25 + 2]) < 0)
      {
        operator delete(v416[i25]);
      }
    }

    if (v176 < 0)
    {
      operator delete(v175[0]);
    }

    v363[0] = v177;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v363);
    for (i26 = 0; i26 != -15; i26 -= 3)
    {
      if (SHIBYTE(v421[i26 + 2]) < 0)
      {
        operator delete(v421[i26]);
      }
    }

    if (v179 < 0)
    {
      operator delete(v178[0]);
    }

    v363[0] = v180;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v363);
    for (i27 = 0; i27 != -18; i27 -= 3)
    {
      if (SHIBYTE(v427[i27 + 2]) < 0)
      {
        operator delete(v427[i27]);
      }
    }

    if (v182 < 0)
    {
      operator delete(v181[0]);
    }

    v363[0] = v183;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v363);
    if (v429 < 0)
    {
      operator delete(v428[0]);
    }

    if (v185 < 0)
    {
      operator delete(v184[0]);
    }

    v363[0] = v186;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v363);
    if (v431 < 0)
    {
      operator delete(v430[0]);
    }

    if (v188 < 0)
    {
      operator delete(v187[0]);
    }

    v363[0] = v189;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v363);
    for (i28 = 0; i28 != -15; i28 -= 3)
    {
      if (SHIBYTE(v436[i28 + 2]) < 0)
      {
        operator delete(v436[i28]);
      }
    }

    if (v191 < 0)
    {
      operator delete(v190[0]);
    }

    v363[0] = v192;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v363);
    if (v438 < 0)
    {
      operator delete(v437[0]);
    }

    if (v194 < 0)
    {
      operator delete(v193[0]);
    }

    v363[0] = v195;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v363);
    for (i29 = 0; i29 != -15; i29 -= 3)
    {
      if (SHIBYTE(v443[i29 + 2]) < 0)
      {
        operator delete(v443[i29]);
      }
    }

    if (v197 < 0)
    {
      operator delete(v196[0]);
    }

    v363[0] = v198;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v363);
    for (i30 = 0; i30 != -18; i30 -= 3)
    {
      if (SHIBYTE(v449[i30 + 2]) < 0)
      {
        operator delete(v449[i30]);
      }
    }

    if (v200 < 0)
    {
      operator delete(v199[0]);
    }

    v363[0] = v201;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v363);
    for (i31 = 0; i31 != -15; i31 -= 3)
    {
      if (SHIBYTE(v454[i31 + 2]) < 0)
      {
        operator delete(v454[i31]);
      }
    }

    if (v203 < 0)
    {
      operator delete(v202[0]);
    }

    v363[0] = v204;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v363);
    if (v456 < 0)
    {
      operator delete(v455[0]);
    }

    if (v206 < 0)
    {
      operator delete(v205[0]);
    }

    v363[0] = v207;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v363);
    for (i32 = 0; i32 != -21; i32 -= 3)
    {
      if (SHIBYTE(v463[i32 + 2]) < 0)
      {
        operator delete(v463[i32]);
      }
    }

    if (v209 < 0)
    {
      operator delete(v208[0]);
    }

    v363[0] = v210;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v363);
    for (i33 = 0; i33 != -15; i33 -= 3)
    {
      if (SHIBYTE(v468[i33 + 2]) < 0)
      {
        operator delete(v468[i33]);
      }
    }

    if (v212 < 0)
    {
      operator delete(v211[0]);
    }

    v363[0] = v213;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v363);
    for (i34 = 0; i34 != -18; i34 -= 3)
    {
      if (SHIBYTE(v474[i34 + 2]) < 0)
      {
        operator delete(v474[i34]);
      }
    }

    if (v215 < 0)
    {
      operator delete(v214[0]);
    }
  }
}

void sub_26B7BA99C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, char a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, char a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, char a63)
{
  v81 = -2736;
  v82 = v77;
  do
  {
    v82 = std::pair<std::string const,std::vector<std::string>>::~pair(v82) - 48;
    v81 += 48;
  }

  while (v81);
  STACK[0xAB0] = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0xAB0]);
  v83 = &STACK[0xB2F];
  v84 = -120;
  v85 = &STACK[0xB2F];
  while (1)
  {
    v86 = *v85;
    v85 -= 3;
    if (v86 < 0)
    {
      operator delete(*(v83 - 23));
    }

    v83 = v85;
    v84 += 24;
    if (!v84)
    {
      if (a17 < 0)
      {
        operator delete(__p);
      }

      STACK[0xAB8] = &a18;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0xAB8]);
      v87 = &STACK[0xBBF];
      v88 = -144;
      v89 = &STACK[0xBBF];
      while (1)
      {
        v90 = *v89;
        v89 -= 3;
        if (v90 < 0)
        {
          operator delete(*(v87 - 23));
        }

        v87 = v89;
        v88 += 24;
        if (!v88)
        {
          if (a26 < 0)
          {
            operator delete(a21);
          }

          STACK[0xB30] = &a27;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0xB30]);
          v91 = &STACK[0xC4F];
          v92 = -144;
          v93 = &STACK[0xC4F];
          while (1)
          {
            v94 = *v93;
            v93 -= 3;
            if (v94 < 0)
            {
              operator delete(*(v91 - 23));
            }

            v91 = v93;
            v92 += 24;
            if (!v92)
            {
              if (a35 < 0)
              {
                operator delete(a30);
              }

              STACK[0xBC0] = &a36;
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0xBC0]);
              v95 = &STACK[0xCC7];
              v96 = -120;
              v97 = &STACK[0xCC7];
              while (1)
              {
                v98 = *v97;
                v97 -= 3;
                if (v98 < 0)
                {
                  operator delete(*(v95 - 23));
                }

                v95 = v97;
                v96 += 24;
                if (!v96)
                {
                  if (a44 < 0)
                  {
                    operator delete(a39);
                  }

                  STACK[0xBC0] = &a45;
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0xBC0]);
                  if (SLOBYTE(STACK[0xCDF]) < 0)
                  {
                    operator delete(STACK[0xCC8]);
                  }

                  if (a53 < 0)
                  {
                    operator delete(a48);
                  }

                  STACK[0xBC0] = &a54;
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0xBC0]);
                  if (SLOBYTE(STACK[0xCF7]) < 0)
                  {
                    operator delete(STACK[0xCE0]);
                  }

                  if (a62 < 0)
                  {
                    operator delete(a57);
                  }

                  STACK[0xBC0] = &a63;
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0xBC0]);
                  if (SLOBYTE(STACK[0xD0F]) < 0)
                  {
                    operator delete(STACK[0xCF8]);
                  }

                  if (a66 < 0)
                  {
                    operator delete(a65);
                  }

                  STACK[0xBC0] = &a67;
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0xBC0]);
                  v99 = &STACK[0xDFF];
                  v100 = -240;
                  v101 = &STACK[0xDFF];
                  while (1)
                  {
                    v102 = *v101;
                    v101 -= 3;
                    if (v102 < 0)
                    {
                      operator delete(*(v99 - 23));
                    }

                    v99 = v101;
                    v100 += 24;
                    if (!v100)
                    {
                      if (a69 < 0)
                      {
                        operator delete(a68);
                      }

                      STACK[0xD10] = &a70;
                      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0xD10]);
                      v103 = &STACK[0xE2F];
                      v104 = -48;
                      v105 = &STACK[0xE2F];
                      while (1)
                      {
                        v106 = *v105;
                        v105 -= 3;
                        if (v106 < 0)
                        {
                          operator delete(*(v103 - 23));
                        }

                        v103 = v105;
                        v104 += 24;
                        if (!v104)
                        {
                          if (a72 < 0)
                          {
                            operator delete(a71);
                          }

                          STACK[0xD10] = &a73;
                          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0xD10]);
                          v107 = &STACK[0xE77];
                          v108 = -72;
                          v109 = &STACK[0xE77];
                          while (1)
                          {
                            v110 = *v109;
                            v109 -= 3;
                            if (v110 < 0)
                            {
                              operator delete(*(v107 - 23));
                            }

                            v107 = v109;
                            v108 += 24;
                            if (!v108)
                            {
                              if (a75 < 0)
                              {
                                operator delete(a74);
                              }

                              STACK[0xD10] = &a76;
                              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0xD10]);
                              v111 = &STACK[0xF07];
                              v112 = -144;
                              v113 = &STACK[0xF07];
                              while (1)
                              {
                                v114 = *v113;
                                v113 -= 3;
                                if (v114 < 0)
                                {
                                  operator delete(*(v111 - 23));
                                }

                                v111 = v113;
                                v112 += 24;
                                if (!v112)
                                {
                                  if (SLOBYTE(STACK[0x20F]) < 0)
                                  {
                                    operator delete(a77);
                                  }

                                  STACK[0xD10] = &STACK[0x210];
                                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0xD10]);
                                  if (SLOBYTE(STACK[0xF1F]) < 0)
                                  {
                                    operator delete(STACK[0xF08]);
                                  }

                                  if (SLOBYTE(STACK[0x23F]) < 0)
                                  {
                                    operator delete(STACK[0x228]);
                                  }

                                  STACK[0xD10] = &STACK[0x240];
                                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0xD10]);
                                  v115 = &STACK[0xF4F];
                                  v116 = -48;
                                  v117 = &STACK[0xF4F];
                                  while (1)
                                  {
                                    v118 = *v117;
                                    v117 -= 3;
                                    if (v118 < 0)
                                    {
                                      operator delete(*(v115 - 23));
                                    }

                                    v115 = v117;
                                    v116 += 24;
                                    if (!v116)
                                    {
                                      if (SLOBYTE(STACK[0x26F]) < 0)
                                      {
                                        operator delete(STACK[0x258]);
                                      }

                                      STACK[0xD10] = &STACK[0x270];
                                      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0xD10]);
                                      v119 = &STACK[0xFC7];
                                      v120 = -120;
                                      v121 = &STACK[0xFC7];
                                      while (1)
                                      {
                                        v122 = *v121;
                                        v121 -= 3;
                                        if (v122 < 0)
                                        {
                                          operator delete(*(v119 - 23));
                                        }

                                        v119 = v121;
                                        v120 += 24;
                                        if (!v120)
                                        {
                                          if (SLOBYTE(STACK[0x29F]) < 0)
                                          {
                                            operator delete(STACK[0x288]);
                                          }

                                          STACK[0xD10] = &STACK[0x2A0];
                                          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0xD10]);
                                          if (v79[23] < 0)
                                          {
                                            operator delete(STACK[0xFC8]);
                                          }

                                          if (SLOBYTE(STACK[0x2CF]) < 0)
                                          {
                                            operator delete(STACK[0x2B8]);
                                          }

                                          STACK[0xD10] = &STACK[0x2D0];
                                          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0xD10]);
                                          if (v79[47] < 0)
                                          {
                                            operator delete(STACK[0xFE0]);
                                          }

                                          if (SLOBYTE(STACK[0x2FF]) < 0)
                                          {
                                            operator delete(STACK[0x2E8]);
                                          }

                                          STACK[0xD10] = &STACK[0x300];
                                          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0xD10]);
                                          v123 = &STACK[0x1057];
                                          v124 = -96;
                                          v125 = &STACK[0x1057];
                                          while (1)
                                          {
                                            v126 = *v125;
                                            v125 -= 3;
                                            if (v126 < 0)
                                            {
                                              operator delete(*(v123 - 23));
                                            }

                                            v123 = v125;
                                            v124 += 24;
                                            if (!v124)
                                            {
                                              if (SLOBYTE(STACK[0x32F]) < 0)
                                              {
                                                operator delete(STACK[0x318]);
                                              }

                                              STACK[0xD10] = &STACK[0x330];
                                              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0xD10]);
                                              v127 = &STACK[0x10E7];
                                              v128 = -144;
                                              v129 = &STACK[0x10E7];
                                              while (1)
                                              {
                                                v130 = *v129;
                                                v129 -= 3;
                                                if (v130 < 0)
                                                {
                                                  operator delete(*(v127 - 23));
                                                }

                                                v127 = v129;
                                                v128 += 24;
                                                if (!v128)
                                                {
                                                  if (SLOBYTE(STACK[0x35F]) < 0)
                                                  {
                                                    operator delete(STACK[0x348]);
                                                  }

                                                  STACK[0xD10] = &STACK[0x360];
                                                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0xD10]);
                                                  v131 = &STACK[0x115F];
                                                  v132 = -120;
                                                  v133 = &STACK[0x115F];
                                                  while (1)
                                                  {
                                                    v134 = *v133;
                                                    v133 -= 3;
                                                    if (v134 < 0)
                                                    {
                                                      operator delete(*(v131 - 23));
                                                    }

                                                    v131 = v133;
                                                    v132 += 24;
                                                    if (!v132)
                                                    {
                                                      if (SLOBYTE(STACK[0x38F]) < 0)
                                                      {
                                                        operator delete(STACK[0x378]);
                                                      }

                                                      STACK[0xD10] = &STACK[0x390];
                                                      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0xD10]);
                                                      if (v79[431] < 0)
                                                      {
                                                        operator delete(STACK[0x1160]);
                                                      }

                                                      if (SLOBYTE(STACK[0x3BF]) < 0)
                                                      {
                                                        operator delete(STACK[0x3A8]);
                                                      }

                                                      STACK[0xD10] = &STACK[0x3C0];
                                                      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0xD10]);
                                                      v135 = &STACK[0x1207];
                                                      v136 = -144;
                                                      v137 = &STACK[0x1207];
                                                      while (1)
                                                      {
                                                        v138 = *v137;
                                                        v137 -= 3;
                                                        if (v138 < 0)
                                                        {
                                                          operator delete(*(v135 - 23));
                                                        }

                                                        v135 = v137;
                                                        v136 += 24;
                                                        if (!v136)
                                                        {
                                                          if (SLOBYTE(STACK[0x3EF]) < 0)
                                                          {
                                                            operator delete(STACK[0x3D8]);
                                                          }

                                                          STACK[0xD10] = &STACK[0x3F0];
                                                          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0xD10]);
                                                          v139 = &STACK[0x127F];
                                                          v140 = -120;
                                                          v141 = &STACK[0x127F];
                                                          while (1)
                                                          {
                                                            v142 = *v141;
                                                            v141 -= 3;
                                                            if (v142 < 0)
                                                            {
                                                              operator delete(*(v139 - 23));
                                                            }

                                                            v139 = v141;
                                                            v140 += 24;
                                                            if (!v140)
                                                            {
                                                              if (SLOBYTE(STACK[0x41F]) < 0)
                                                              {
                                                                operator delete(STACK[0x408]);
                                                              }

                                                              STACK[0xD10] = &STACK[0x420];
                                                              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0xD10]);
                                                              v143 = &STACK[0x130F];
                                                              v144 = -144;
                                                              v145 = &STACK[0x130F];
                                                              while (1)
                                                              {
                                                                v146 = *v145;
                                                                v145 -= 3;
                                                                if (v146 < 0)
                                                                {
                                                                  operator delete(*(v143 - 23));
                                                                }

                                                                v143 = v145;
                                                                v144 += 24;
                                                                if (!v144)
                                                                {
                                                                  if (SLOBYTE(STACK[0x44F]) < 0)
                                                                  {
                                                                    operator delete(STACK[0x438]);
                                                                  }

                                                                  STACK[0xD10] = &STACK[0x450];
                                                                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0xD10]);
                                                                  v147 = &STACK[0x1387];
                                                                  v148 = -120;
                                                                  v149 = &STACK[0x1387];
                                                                  while (1)
                                                                  {
                                                                    v150 = *v149;
                                                                    v149 -= 3;
                                                                    if (v150 < 0)
                                                                    {
                                                                      operator delete(*(v147 - 23));
                                                                    }

                                                                    v147 = v149;
                                                                    v148 += 24;
                                                                    if (!v148)
                                                                    {
                                                                      if (SLOBYTE(STACK[0x47F]) < 0)
                                                                      {
                                                                        operator delete(STACK[0x468]);
                                                                      }

                                                                      STACK[0xD10] = &STACK[0x480];
                                                                      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0xD10]);
                                                                      if (v79[983] < 0)
                                                                      {
                                                                        operator delete(STACK[0x1388]);
                                                                      }

                                                                      if (SLOBYTE(STACK[0x4AF]) < 0)
                                                                      {
                                                                        operator delete(STACK[0x498]);
                                                                      }

                                                                      STACK[0xD10] = &STACK[0x4B0];
                                                                      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0xD10]);
                                                                      v151 = &STACK[0x1417];
                                                                      v152 = -120;
                                                                      v153 = &STACK[0x1417];
                                                                      while (1)
                                                                      {
                                                                        v154 = *v153;
                                                                        v153 -= 3;
                                                                        if (v154 < 0)
                                                                        {
                                                                          operator delete(*(v151 - 23));
                                                                        }

                                                                        v151 = v153;
                                                                        v152 += 24;
                                                                        if (!v152)
                                                                        {
                                                                          if (SLOBYTE(STACK[0x4DF]) < 0)
                                                                          {
                                                                            operator delete(STACK[0x4C8]);
                                                                          }

                                                                          STACK[0xD10] = &STACK[0x4E0];
                                                                          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0xD10]);
                                                                          v155 = &STACK[0x14A7];
                                                                          v156 = -144;
                                                                          v157 = &STACK[0x14A7];
                                                                          while (1)
                                                                          {
                                                                            v158 = *v157;
                                                                            v157 -= 3;
                                                                            if (v158 < 0)
                                                                            {
                                                                              operator delete(*(v155 - 23));
                                                                            }

                                                                            v155 = v157;
                                                                            v156 += 24;
                                                                            if (!v156)
                                                                            {
                                                                              if (SLOBYTE(STACK[0x50F]) < 0)
                                                                              {
                                                                                operator delete(STACK[0x4F8]);
                                                                              }

                                                                              STACK[0xD10] = &STACK[0x510];
                                                                              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0xD10]);
                                                                              v159 = &STACK[0x151F];
                                                                              v160 = -120;
                                                                              v161 = &STACK[0x151F];
                                                                              while (1)
                                                                              {
                                                                                v162 = *v161;
                                                                                v161 -= 3;
                                                                                if (v162 < 0)
                                                                                {
                                                                                  operator delete(*(v159 - 23));
                                                                                }

                                                                                v159 = v161;
                                                                                v160 += 24;
                                                                                if (!v160)
                                                                                {
                                                                                  if (SLOBYTE(STACK[0x53F]) < 0)
                                                                                  {
                                                                                    operator delete(STACK[0x528]);
                                                                                  }

                                                                                  STACK[0xD10] = &STACK[0x540];
                                                                                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0xD10]);
                                                                                  v163 = &STACK[0x15C7];
                                                                                  v164 = -168;
                                                                                  v165 = &STACK[0x15C7];
                                                                                  while (1)
                                                                                  {
                                                                                    v166 = *v165;
                                                                                    v165 -= 3;
                                                                                    if (v166 < 0)
                                                                                    {
                                                                                      operator delete(*(v163 - 23));
                                                                                    }

                                                                                    v163 = v165;
                                                                                    v164 += 24;
                                                                                    if (!v164)
                                                                                    {
                                                                                      if (SLOBYTE(STACK[0x56F]) < 0)
                                                                                      {
                                                                                        operator delete(STACK[0x558]);
                                                                                      }

                                                                                      STACK[0xD10] = &STACK[0x570];
                                                                                      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0xD10]);
                                                                                      v167 = &STACK[0x163F];
                                                                                      v168 = -120;
                                                                                      v169 = &STACK[0x163F];
                                                                                      while (1)
                                                                                      {
                                                                                        v170 = *v169;
                                                                                        v169 -= 3;
                                                                                        if (v170 < 0)
                                                                                        {
                                                                                          operator delete(*(v167 - 23));
                                                                                        }

                                                                                        v167 = v169;
                                                                                        v168 += 24;
                                                                                        if (!v168)
                                                                                        {
                                                                                          if (SLOBYTE(STACK[0x59F]) < 0)
                                                                                          {
                                                                                            operator delete(STACK[0x588]);
                                                                                          }

                                                                                          STACK[0xD10] = &STACK[0x5A0];
                                                                                          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0xD10]);
                                                                                          v171 = &STACK[0x16CF];
                                                                                          v172 = -144;
                                                                                          v173 = &STACK[0x16CF];
                                                                                          while (1)
                                                                                          {
                                                                                            v174 = *v173;
                                                                                            v173 -= 3;
                                                                                            if (v174 < 0)
                                                                                            {
                                                                                              operator delete(*(v171 - 23));
                                                                                            }

                                                                                            v171 = v173;
                                                                                            v172 += 24;
                                                                                            if (!v172)
                                                                                            {
                                                                                              if (SLOBYTE(STACK[0x5CF]) < 0)
                                                                                              {
                                                                                                operator delete(STACK[0x5B8]);
                                                                                              }

                                                                                              STACK[0xD10] = &STACK[0x5D0];
                                                                                              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0xD10]);
                                                                                              v175 = &STACK[0x1747];
                                                                                              v176 = -120;
                                                                                              v177 = &STACK[0x1747];
                                                                                              while (1)
                                                                                              {
                                                                                                v178 = *v177;
                                                                                                v177 -= 3;
                                                                                                if (v178 < 0)
                                                                                                {
                                                                                                  operator delete(*(v175 - 23));
                                                                                                }

                                                                                                v175 = v177;
                                                                                                v176 += 24;
                                                                                                if (!v176)
                                                                                                {
                                                                                                  if (SLOBYTE(STACK[0x5FF]) < 0)
                                                                                                  {
                                                                                                    operator delete(STACK[0x5E8]);
                                                                                                  }

                                                                                                  STACK[0xD10] = &STACK[0x600];
                                                                                                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0xD10]);
                                                                                                  if (v79[1943] < 0)
                                                                                                  {
                                                                                                    operator delete(STACK[0x1748]);
                                                                                                  }

                                                                                                  if (SLOBYTE(STACK[0x62F]) < 0)
                                                                                                  {
                                                                                                    operator delete(STACK[0x618]);
                                                                                                  }

                                                                                                  STACK[0xD10] = &STACK[0x630];
                                                                                                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0xD10]);
                                                                                                  if (v79[1967] < 0)
                                                                                                  {
                                                                                                    operator delete(STACK[0x1760]);
                                                                                                  }

                                                                                                  if (SLOBYTE(STACK[0x65F]) < 0)
                                                                                                  {
                                                                                                    operator delete(STACK[0x648]);
                                                                                                  }

                                                                                                  STACK[0xD10] = &STACK[0x660];
                                                                                                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0xD10]);
                                                                                                  v179 = &STACK[0x1867];
                                                                                                  v180 = -240;
                                                                                                  v181 = &STACK[0x1867];
                                                                                                  while (1)
                                                                                                  {
                                                                                                    v182 = *v181;
                                                                                                    v181 -= 3;
                                                                                                    if (v182 < 0)
                                                                                                    {
                                                                                                      operator delete(*(v179 - 23));
                                                                                                    }

                                                                                                    v179 = v181;
                                                                                                    v180 += 24;
                                                                                                    if (!v180)
                                                                                                    {
                                                                                                      if (SLOBYTE(STACK[0x68F]) < 0)
                                                                                                      {
                                                                                                        operator delete(STACK[0x678]);
                                                                                                      }

                                                                                                      STACK[0x1778] = &STACK[0x690];
                                                                                                      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x1778]);
                                                                                                      v183 = &STACK[0x18DF];
                                                                                                      v184 = -120;
                                                                                                      v185 = &STACK[0x18DF];
                                                                                                      while (1)
                                                                                                      {
                                                                                                        v186 = *v185;
                                                                                                        v185 -= 3;
                                                                                                        if (v186 < 0)
                                                                                                        {
                                                                                                          operator delete(*(v183 - 23));
                                                                                                        }

                                                                                                        v183 = v185;
                                                                                                        v184 += 24;
                                                                                                        if (!v184)
                                                                                                        {
                                                                                                          if (SLOBYTE(STACK[0x6BF]) < 0)
                                                                                                          {
                                                                                                            operator delete(STACK[0x6A8]);
                                                                                                          }

                                                                                                          STACK[0x1778] = &STACK[0x6C0];
                                                                                                          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x1778]);
                                                                                                          v187 = &STACK[0x1957];
                                                                                                          v188 = -120;
                                                                                                          v189 = &STACK[0x1957];
                                                                                                          while (1)
                                                                                                          {
                                                                                                            v190 = *v189;
                                                                                                            v189 -= 3;
                                                                                                            if (v190 < 0)
                                                                                                            {
                                                                                                              operator delete(*(v187 - 23));
                                                                                                            }

                                                                                                            v187 = v189;
                                                                                                            v188 += 24;
                                                                                                            if (!v188)
                                                                                                            {
                                                                                                              if (SLOBYTE(STACK[0x6EF]) < 0)
                                                                                                              {
                                                                                                                operator delete(STACK[0x6D8]);
                                                                                                              }

                                                                                                              STACK[0x1778] = &STACK[0x6F0];
                                                                                                              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x1778]);
                                                                                                              v191 = &STACK[0x19E7];
                                                                                                              v192 = -144;
                                                                                                              v193 = &STACK[0x19E7];
                                                                                                              while (1)
                                                                                                              {
                                                                                                                v194 = *v193;
                                                                                                                v193 -= 3;
                                                                                                                if (v194 < 0)
                                                                                                                {
                                                                                                                  operator delete(*(v191 - 23));
                                                                                                                }

                                                                                                                v191 = v193;
                                                                                                                v192 += 24;
                                                                                                                if (!v192)
                                                                                                                {
                                                                                                                  if (SLOBYTE(STACK[0x71F]) < 0)
                                                                                                                  {
                                                                                                                    operator delete(STACK[0x708]);
                                                                                                                  }

                                                                                                                  STACK[0x1778] = &STACK[0x720];
                                                                                                                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x1778]);
                                                                                                                  v195 = &STACK[0x1A5F];
                                                                                                                  v196 = -120;
                                                                                                                  v197 = &STACK[0x1A5F];
                                                                                                                  while (1)
                                                                                                                  {
                                                                                                                    v198 = *v197;
                                                                                                                    v197 -= 3;
                                                                                                                    if (v198 < 0)
                                                                                                                    {
                                                                                                                      operator delete(*(v195 - 23));
                                                                                                                    }

                                                                                                                    v195 = v197;
                                                                                                                    v196 += 24;
                                                                                                                    if (!v196)
                                                                                                                    {
                                                                                                                      if (SLOBYTE(STACK[0x74F]) < 0)
                                                                                                                      {
                                                                                                                        operator delete(STACK[0x738]);
                                                                                                                      }

                                                                                                                      STACK[0x1778] = &STACK[0x750];
                                                                                                                      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x1778]);
                                                                                                                      v199 = &STACK[0x1A8F];
                                                                                                                      v200 = -48;
                                                                                                                      v201 = &STACK[0x1A8F];
                                                                                                                      while (1)
                                                                                                                      {
                                                                                                                        v202 = *v201;
                                                                                                                        v201 -= 3;
                                                                                                                        if (v202 < 0)
                                                                                                                        {
                                                                                                                          operator delete(*(v199 - 23));
                                                                                                                        }

                                                                                                                        v199 = v201;
                                                                                                                        v200 += 24;
                                                                                                                        if (!v200)
                                                                                                                        {
                                                                                                                          if (SLOBYTE(STACK[0x77F]) < 0)
                                                                                                                          {
                                                                                                                            operator delete(STACK[0x768]);
                                                                                                                          }

                                                                                                                          STACK[0x1778] = &STACK[0x780];
                                                                                                                          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x1778]);
                                                                                                                          v203 = &STACK[0x1B07];
                                                                                                                          v204 = -120;
                                                                                                                          v205 = &STACK[0x1B07];
                                                                                                                          while (1)
                                                                                                                          {
                                                                                                                            v206 = *v205;
                                                                                                                            v205 -= 3;
                                                                                                                            if (v206 < 0)
                                                                                                                            {
                                                                                                                              operator delete(*(v203 - 23));
                                                                                                                            }

                                                                                                                            v203 = v205;
                                                                                                                            v204 += 24;
                                                                                                                            if (!v204)
                                                                                                                            {
                                                                                                                              if (SLOBYTE(STACK[0x7AF]) < 0)
                                                                                                                              {
                                                                                                                                operator delete(STACK[0x798]);
                                                                                                                              }

                                                                                                                              STACK[0x1778] = &STACK[0x7B0];
                                                                                                                              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x1778]);
                                                                                                                              v207 = &STACK[0x1B7F];
                                                                                                                              v208 = -120;
                                                                                                                              v209 = &STACK[0x1B7F];
                                                                                                                              while (1)
                                                                                                                              {
                                                                                                                                v210 = *v209;
                                                                                                                                v209 -= 3;
                                                                                                                                if (v210 < 0)
                                                                                                                                {
                                                                                                                                  operator delete(*(v207 - 23));
                                                                                                                                }

                                                                                                                                v207 = v209;
                                                                                                                                v208 += 24;
                                                                                                                                if (!v208)
                                                                                                                                {
                                                                                                                                  if (SLOBYTE(STACK[0x7DF]) < 0)
                                                                                                                                  {
                                                                                                                                    operator delete(STACK[0x7C8]);
                                                                                                                                  }

                                                                                                                                  STACK[0x1778] = &STACK[0x7E0];
                                                                                                                                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x1778]);
                                                                                                                                  v211 = &STACK[0x1C0F];
                                                                                                                                  v212 = -144;
                                                                                                                                  v213 = &STACK[0x1C0F];
                                                                                                                                  while (1)
                                                                                                                                  {
                                                                                                                                    v214 = *v213;
                                                                                                                                    v213 -= 3;
                                                                                                                                    if (v214 < 0)
                                                                                                                                    {
                                                                                                                                      operator delete(*(v211 - 23));
                                                                                                                                    }

                                                                                                                                    v211 = v213;
                                                                                                                                    v212 += 24;
                                                                                                                                    if (!v212)
                                                                                                                                    {
                                                                                                                                      if (SLOBYTE(STACK[0x80F]) < 0)
                                                                                                                                      {
                                                                                                                                        operator delete(STACK[0x7F8]);
                                                                                                                                      }

                                                                                                                                      STACK[0x1778] = &STACK[0x810];
                                                                                                                                      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x1778]);
                                                                                                                                      v215 = &STACK[0x1C87];
                                                                                                                                      v216 = -120;
                                                                                                                                      v217 = &STACK[0x1C87];
                                                                                                                                      while (1)
                                                                                                                                      {
                                                                                                                                        v218 = *v217;
                                                                                                                                        v217 -= 3;
                                                                                                                                        if (v218 < 0)
                                                                                                                                        {
                                                                                                                                          operator delete(*(v215 - 23));
                                                                                                                                        }

                                                                                                                                        v215 = v217;
                                                                                                                                        v216 += 24;
                                                                                                                                        if (!v216)
                                                                                                                                        {
                                                                                                                                          if (SLOBYTE(STACK[0x83F]) < 0)
                                                                                                                                          {
                                                                                                                                            operator delete(STACK[0x828]);
                                                                                                                                          }

                                                                                                                                          STACK[0x1778] = &STACK[0x840];
                                                                                                                                          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x1778]);
                                                                                                                                          v219 = &STACK[0x1CFF];
                                                                                                                                          v220 = -120;
                                                                                                                                          v221 = &STACK[0x1CFF];
                                                                                                                                          while (1)
                                                                                                                                          {
                                                                                                                                            v222 = *v221;
                                                                                                                                            v221 -= 3;
                                                                                                                                            if (v222 < 0)
                                                                                                                                            {
                                                                                                                                              operator delete(*(v219 - 23));
                                                                                                                                            }

                                                                                                                                            v219 = v221;
                                                                                                                                            v220 += 24;
                                                                                                                                            if (!v220)
                                                                                                                                            {
                                                                                                                                              if (SLOBYTE(STACK[0x86F]) < 0)
                                                                                                                                              {
                                                                                                                                                operator delete(STACK[0x858]);
                                                                                                                                              }

                                                                                                                                              STACK[0x1778] = &STACK[0x870];
                                                                                                                                              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x1778]);
                                                                                                                                              v223 = &STACK[0x1D8F];
                                                                                                                                              v224 = -144;
                                                                                                                                              v225 = &STACK[0x1D8F];
                                                                                                                                              while (1)
                                                                                                                                              {
                                                                                                                                                v226 = *v225;
                                                                                                                                                v225 -= 3;
                                                                                                                                                if (v226 < 0)
                                                                                                                                                {
                                                                                                                                                  operator delete(*(v223 - 23));
                                                                                                                                                }

                                                                                                                                                v223 = v225;
                                                                                                                                                v224 += 24;
                                                                                                                                                if (!v224)
                                                                                                                                                {
                                                                                                                                                  if (SLOBYTE(STACK[0x89F]) < 0)
                                                                                                                                                  {
                                                                                                                                                    operator delete(STACK[0x888]);
                                                                                                                                                  }

                                                                                                                                                  STACK[0x1778] = &STACK[0x8A0];
                                                                                                                                                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x1778]);
                                                                                                                                                  if (v79[3551] < 0)
                                                                                                                                                  {
                                                                                                                                                    operator delete(STACK[0x1D90]);
                                                                                                                                                  }

                                                                                                                                                  if (SLOBYTE(STACK[0x8CF]) < 0)
                                                                                                                                                  {
                                                                                                                                                    operator delete(STACK[0x8B8]);
                                                                                                                                                  }

                                                                                                                                                  STACK[0x1778] = &STACK[0x8D0];
                                                                                                                                                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x1778]);
                                                                                                                                                  if (v79[3575] < 0)
                                                                                                                                                  {
                                                                                                                                                    operator delete(STACK[0x1DA8]);
                                                                                                                                                  }

                                                                                                                                                  if (SLOBYTE(STACK[0x8FF]) < 0)
                                                                                                                                                  {
                                                                                                                                                    operator delete(STACK[0x8E8]);
                                                                                                                                                  }

                                                                                                                                                  STACK[0x1778] = &STACK[0x900];
                                                                                                                                                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x1778]);
                                                                                                                                                  v227 = &STACK[0x1E37];
                                                                                                                                                  v228 = -120;
                                                                                                                                                  v229 = &STACK[0x1E37];
                                                                                                                                                  while (1)
                                                                                                                                                  {
                                                                                                                                                    v230 = *v229;
                                                                                                                                                    v229 -= 3;
                                                                                                                                                    if (v230 < 0)
                                                                                                                                                    {
                                                                                                                                                      operator delete(*(v227 - 23));
                                                                                                                                                    }

                                                                                                                                                    v227 = v229;
                                                                                                                                                    v228 += 24;
                                                                                                                                                    if (!v228)
                                                                                                                                                    {
                                                                                                                                                      if (SLOBYTE(STACK[0x92F]) < 0)
                                                                                                                                                      {
                                                                                                                                                        operator delete(STACK[0x918]);
                                                                                                                                                      }

                                                                                                                                                      STACK[0x1778] = &STACK[0x930];
                                                                                                                                                      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x1778]);
                                                                                                                                                      if (v79[3719] < 0)
                                                                                                                                                      {
                                                                                                                                                        operator delete(STACK[0x1E38]);
                                                                                                                                                      }

                                                                                                                                                      if (SLOBYTE(STACK[0x95F]) < 0)
                                                                                                                                                      {
                                                                                                                                                        operator delete(STACK[0x948]);
                                                                                                                                                      }

                                                                                                                                                      STACK[0x1778] = &STACK[0x960];
                                                                                                                                                      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x1778]);
                                                                                                                                                      v231 = &STACK[0x1EC7];
                                                                                                                                                      v232 = -120;
                                                                                                                                                      v233 = &STACK[0x1EC7];
                                                                                                                                                      while (1)
                                                                                                                                                      {
                                                                                                                                                        v234 = *v233;
                                                                                                                                                        v233 -= 3;
                                                                                                                                                        if (v234 < 0)
                                                                                                                                                        {
                                                                                                                                                          operator delete(*(v231 - 23));
                                                                                                                                                        }

                                                                                                                                                        v231 = v233;
                                                                                                                                                        v232 += 24;
                                                                                                                                                        if (!v232)
                                                                                                                                                        {
                                                                                                                                                          if (SLOBYTE(STACK[0x98F]) < 0)
                                                                                                                                                          {
                                                                                                                                                            operator delete(STACK[0x978]);
                                                                                                                                                          }

                                                                                                                                                          STACK[0x1778] = &STACK[0x990];
                                                                                                                                                          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x1778]);
                                                                                                                                                          v235 = &STACK[0x1F57];
                                                                                                                                                          v236 = -144;
                                                                                                                                                          v237 = &STACK[0x1F57];
                                                                                                                                                          while (1)
                                                                                                                                                          {
                                                                                                                                                            v238 = *v237;
                                                                                                                                                            v237 -= 3;
                                                                                                                                                            if (v238 < 0)
                                                                                                                                                            {
                                                                                                                                                              operator delete(*(v235 - 23));
                                                                                                                                                            }

                                                                                                                                                            v235 = v237;
                                                                                                                                                            v236 += 24;
                                                                                                                                                            if (!v236)
                                                                                                                                                            {
                                                                                                                                                              if (SLOBYTE(STACK[0x9BF]) < 0)
                                                                                                                                                              {
                                                                                                                                                                operator delete(STACK[0x9A8]);
                                                                                                                                                              }

                                                                                                                                                              STACK[0x1778] = &STACK[0x9C0];
                                                                                                                                                              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x1778]);
                                                                                                                                                              v239 = &STACK[0x1FCF];
                                                                                                                                                              v240 = -120;
                                                                                                                                                              v241 = &STACK[0x1FCF];
                                                                                                                                                              while (1)
                                                                                                                                                              {
                                                                                                                                                                v242 = *v241;
                                                                                                                                                                v241 -= 3;
                                                                                                                                                                if (v242 < 0)
                                                                                                                                                                {
                                                                                                                                                                  operator delete(*(v239 - 23));
                                                                                                                                                                }

                                                                                                                                                                v239 = v241;
                                                                                                                                                                v240 += 24;
                                                                                                                                                                if (!v240)
                                                                                                                                                                {
                                                                                                                                                                  if (SLOBYTE(STACK[0x9EF]) < 0)
                                                                                                                                                                  {
                                                                                                                                                                    operator delete(STACK[0x9D8]);
                                                                                                                                                                  }

                                                                                                                                                                  STACK[0x1778] = &STACK[0x9F0];
                                                                                                                                                                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x1778]);
                                                                                                                                                                  if (*(v78 + 23) < 0)
                                                                                                                                                                  {
                                                                                                                                                                    operator delete(STACK[0x1FD0]);
                                                                                                                                                                  }

                                                                                                                                                                  if (SLOBYTE(STACK[0xA1F]) < 0)
                                                                                                                                                                  {
                                                                                                                                                                    operator delete(STACK[0xA08]);
                                                                                                                                                                  }

                                                                                                                                                                  STACK[0x1778] = &STACK[0xA20];
                                                                                                                                                                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x1778]);
                                                                                                                                                                  v243 = &STACK[0x208F];
                                                                                                                                                                  v244 = -168;
                                                                                                                                                                  v245 = &STACK[0x208F];
                                                                                                                                                                  while (1)
                                                                                                                                                                  {
                                                                                                                                                                    v246 = *v245;
                                                                                                                                                                    v245 -= 3;
                                                                                                                                                                    if (v246 < 0)
                                                                                                                                                                    {
                                                                                                                                                                      operator delete(*(v243 - 23));
                                                                                                                                                                    }

                                                                                                                                                                    v243 = v245;
                                                                                                                                                                    v244 += 24;
                                                                                                                                                                    if (!v244)
                                                                                                                                                                    {
                                                                                                                                                                      if (SLOBYTE(STACK[0xA4F]) < 0)
                                                                                                                                                                      {
                                                                                                                                                                        operator delete(STACK[0xA38]);
                                                                                                                                                                      }

                                                                                                                                                                      STACK[0x1778] = &STACK[0xA50];
                                                                                                                                                                      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x1778]);
                                                                                                                                                                      v247 = &STACK[0x2107];
                                                                                                                                                                      v248 = -120;
                                                                                                                                                                      v249 = &STACK[0x2107];
                                                                                                                                                                      while (1)
                                                                                                                                                                      {
                                                                                                                                                                        v250 = *v249;
                                                                                                                                                                        v249 -= 3;
                                                                                                                                                                        if (v250 < 0)
                                                                                                                                                                        {
                                                                                                                                                                          operator delete(*(v247 - 23));
                                                                                                                                                                        }

                                                                                                                                                                        v247 = v249;
                                                                                                                                                                        v248 += 24;
                                                                                                                                                                        if (!v248)
                                                                                                                                                                        {
                                                                                                                                                                          if (SLOBYTE(STACK[0xA7F]) < 0)
                                                                                                                                                                          {
                                                                                                                                                                            operator delete(STACK[0xA68]);
                                                                                                                                                                          }

                                                                                                                                                                          STACK[0x1778] = &STACK[0xA80];
                                                                                                                                                                          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x1778]);
                                                                                                                                                                          v251 = &STACK[0x2197];
                                                                                                                                                                          v252 = -144;
                                                                                                                                                                          v253 = &STACK[0x2197];
                                                                                                                                                                          while (1)
                                                                                                                                                                          {
                                                                                                                                                                            v254 = *v253;
                                                                                                                                                                            v253 -= 3;
                                                                                                                                                                            if (v254 < 0)
                                                                                                                                                                            {
                                                                                                                                                                              operator delete(*(v251 - 23));
                                                                                                                                                                            }

                                                                                                                                                                            v251 = v253;
                                                                                                                                                                            v252 += 24;
                                                                                                                                                                            if (!v252)
                                                                                                                                                                            {
                                                                                                                                                                              if (SLOBYTE(STACK[0xAAF]) < 0)
                                                                                                                                                                              {
                                                                                                                                                                                operator delete(STACK[0xA98]);
                                                                                                                                                                              }

                                                                                                                                                                              _Unwind_Resume(a1);
                                                                                                                                                                            }
                                                                                                                                                                          }
                                                                                                                                                                        }
                                                                                                                                                                      }
                                                                                                                                                                    }
                                                                                                                                                                  }
                                                                                                                                                                }
                                                                                                                                                              }
                                                                                                                                                            }
                                                                                                                                                          }
                                                                                                                                                        }
                                                                                                                                                      }
                                                                                                                                                    }
                                                                                                                                                  }
                                                                                                                                                }
                                                                                                                                              }
                                                                                                                                            }
                                                                                                                                          }
                                                                                                                                        }
                                                                                                                                      }
                                                                                                                                    }
                                                                                                                                  }
                                                                                                                                }
                                                                                                                              }
                                                                                                                            }
                                                                                                                          }
                                                                                                                        }
                                                                                                                      }
                                                                                                                    }
                                                                                                                  }
                                                                                                                }
                                                                                                              }
                                                                                                            }
                                                                                                          }
                                                                                                        }
                                                                                                      }
                                                                                                    }
                                                                                                  }
                                                                                                }
                                                                                              }
                                                                                            }
                                                                                          }
                                                                                        }
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_26B7BC774()
{
  while (1)
  {
    v1 = *(v0 - 1);
    v0 -= 3;
    if (v1 < 0)
    {
      operator delete(*v0);
    }

    if (v0 == &STACK[0xE78])
    {
      JUMPOUT(0x26B7BC798);
    }
  }
}

void sub_26B7BC7A0()
{
  while (1)
  {
    v1 = *(v0 - 1);
    v0 -= 3;
    if (v1 < 0)
    {
      operator delete(*v0);
    }

    if (v0 == &STACK[0x1058])
    {
      JUMPOUT(0x26B7BC7C8);
    }
  }
}

void sub_26B7BC7D0()
{
  while (1)
  {
    v1 = *(v0 - 1);
    v0 -= 3;
    if (v1 < 0)
    {
      operator delete(*v0);
    }

    if (v0 == &STACK[0x1178])
    {
      JUMPOUT(0x26B7BC7F8);
    }
  }
}

void sub_26B7BC800()
{
  while (1)
  {
    v1 = *(v0 - 1);
    v0 -= 3;
    if (v1 < 0)
    {
      operator delete(*v0);
    }

    if (v0 == &STACK[0x1280])
    {
      JUMPOUT(0x26B7BC828);
    }
  }
}

void sub_26B7BC830()
{
  while (1)
  {
    v1 = *(v0 - 1);
    v0 -= 3;
    if (v1 < 0)
    {
      operator delete(*v0);
    }

    if (v0 == &STACK[0x1418])
    {
      JUMPOUT(0x26B7BC858);
    }
  }
}

void sub_26B7BC860()
{
  while (1)
  {
    v1 = *(v0 - 1);
    v0 -= 3;
    if (v1 < 0)
    {
      operator delete(*v0);
    }

    if (v0 == &STACK[0x1640])
    {
      JUMPOUT(0x26B7BC888);
    }
  }
}

void sub_26B7BC890()
{
  while (1)
  {
    v1 = *(v0 - 1);
    v0 -= 3;
    if (v1 < 0)
    {
      operator delete(*v0);
    }

    if (v0 == &STACK[0x1958])
    {
      JUMPOUT(0x26B7BC8B8);
    }
  }
}

void sub_26B7BC8C0()
{
  while (1)
  {
    v1 = *(v0 - 1);
    v0 -= 3;
    if (v1 < 0)
    {
      operator delete(*v0);
    }

    if (v0 == &STACK[0x1B80])
    {
      JUMPOUT(0x26B7BC8E8);
    }
  }
}

void sub_26B7BC8F0()
{
  while (1)
  {
    v1 = *(v0 - 1);
    v0 -= 3;
    if (v1 < 0)
    {
      operator delete(*v0);
    }

    if (v0 == &STACK[0x1D00])
    {
      JUMPOUT(0x26B7BC918);
    }
  }
}

void sub_26B7BC920()
{
  while (1)
  {
    v1 = *(v0 - 1);
    v0 -= 3;
    if (v1 < 0)
    {
      operator delete(*v0);
    }

    if (v0 == &STACK[0x1EC8])
    {
      JUMPOUT(0x26B7BC948);
    }
  }
}

void sub_26B7BC950()
{
  while (1)
  {
    v1 = *(v0 - 1);
    v0 -= 3;
    if (v1 < 0)
    {
      operator delete(*v0);
    }

    if (v0 == &STACK[0x2108])
    {
      JUMPOUT(0x26B7BC978);
    }
  }
}

void sub_26B7BC988()
{
  while (1)
  {
    v1 = *(v0 - 1);
    v0 -= 3;
    if (v1 < 0)
    {
      operator delete(*v0);
    }

    if (v0 == &STACK[0x1520])
    {
      JUMPOUT(0x26B7BC9B0);
    }
  }
}

void sub_26B7BC9B8()
{
  while (1)
  {
    v1 = *(v0 - 1);
    v0 -= 3;
    if (v1 < 0)
    {
      operator delete(*v0);
    }

    if (v0 == &STACK[0x1FE8])
    {
      JUMPOUT(0x26B7BC9E0);
    }
  }
}

void sub_26B7BC9E8()
{
  while (1)
  {
    v1 = *(v0 - 1);
    v0 -= 3;
    if (v1 < 0)
    {
      operator delete(*v0);
    }

    if (v0 == &STACK[0xD10])
    {
      JUMPOUT(0x26B7BCA0CLL);
    }
  }
}

void sub_26B7BCA14()
{
  while (1)
  {
    v1 = *(v0 - 1);
    v0 -= 3;
    if (v1 < 0)
    {
      operator delete(*v0);
    }

    if (v0 == &STACK[0x1778])
    {
      JUMPOUT(0x26B7BCA3CLL);
    }
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::find<std::string>(void *a1, uint64_t *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v6 == v12)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v5, a2, v3);
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](a2, a3);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

uint64_t std::pair<std::string const,std::vector<std::string>>::~pair(uint64_t a1)
{
  v3 = (a1 + 24);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(uint64_t *result, int a2, int a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_26B7BD12C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::string>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, a2);
  }

  std::vector<std::string>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string const*,std::string const*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  LOBYTE(v10) = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

std::string *std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<true,0>(std::string *this, __int128 *a2, void *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&this[1], *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  return this;
}

void sub_26B7BD5E4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unordered_map<std::string,std::vector<std::string>>::unordered_map(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 48 * a3;
    do
    {
      std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::vector<std::string>> const&>(a1, a2, a2);
      a2 += 6;
      v5 -= 48;
    }

    while (v5);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::vector<std::string>> const&>(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v6 = v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v7)
    {
      v10 = v5 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    v15 = 0;
    v16 = 0;
    v17 = 0;
    std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::__construct_node_hash<std::pair<std::string const,std::vector<std::string>> const&>();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

void sub_26B7BD8D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::string>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::string>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

char **std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::string>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::string>>,void *>>>>::~unique_ptr[abi:ne200100](char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::string>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

std::string *std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&this[1], *(a2 + 3), *(a2 + 4), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 4) - *(a2 + 3)) >> 3));
  return this;
}

void sub_26B7BDA24(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::__rehash<true>(uint64_t result, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(result + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(result + 24) / *(result + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::__do_rehash<true>(result, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::string>>,0>(uint64_t a1)
{
  v2 = (a1 + 24);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::string>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t *std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(uint64_t *result, int a2, int a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_26B7BDDC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  LOBYTE(v10) = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t SIIsAppleInternal(uint64_t a1, uint64_t a2)
{
  if (SIIsAppleInternal_onceToken != -1)
  {
    SIIsAppleInternal_cold_1();
  }

  return SIIsAppleInternal_internal;
}

uint64_t __SIIsAppleInternal_block_invoke()
{
  result = MGGetBoolAnswer();
  SIIsAppleInternal_internal = result;
  return result;
}

uint64_t SIBullseyeFilterLocalSuggestionsDefault(uint64_t a1, uint64_t a2)
{
  if (SIBullseyeFilterLocalSuggestionsDefault_onceFilterLocalToken != -1)
  {
    SIBullseyeFilterLocalSuggestionsDefault_cold_1();
  }

  return SIBullseyeFilterLocalSuggestionsDefault__bullseyeFilterLocalSuggestions;
}

uint64_t __SIBullseyeFilterLocalSuggestionsDefault_block_invoke()
{
  keyExistsAndHasValidFormat = 0;
  v0 = *MEMORY[0x277CBF028];
  CFPreferencesAddSuitePreferencesToApp(*MEMORY[0x277CBF028], @"com.apple.spotlightui");
  result = CFPreferencesGetAppBooleanValue(@"SPBullseyeFilterLocalSuggestions", v0, &keyExistsAndHasValidFormat);
  if (result)
  {
    v2 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  SIBullseyeFilterLocalSuggestionsDefault__bullseyeFilterLocalSuggestions = v3;
  return result;
}

uint64_t SIBullseyeThresholdLocalSuggestionsDefault(uint64_t a1, uint64_t a2)
{
  if (SIBullseyeThresholdLocalSuggestionsDefault_onceThresholdLocalToken != -1)
  {
    SIBullseyeThresholdLocalSuggestionsDefault_cold_1();
  }

  return SIBullseyeThresholdLocalSuggestionsDefault__bullseyeThresholdLocalSuggestions;
}

uint64_t __SIBullseyeThresholdLocalSuggestionsDefault_block_invoke()
{
  keyExistsAndHasValidFormat = 0;
  v0 = *MEMORY[0x277CBF028];
  CFPreferencesAddSuitePreferencesToApp(*MEMORY[0x277CBF028], @"com.apple.spotlightui");
  result = CFPreferencesGetAppBooleanValue(@"SPBullseyeThresholdLocalSuggestions", v0, &keyExistsAndHasValidFormat);
  if (result)
  {
    v2 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  SIBullseyeThresholdLocalSuggestionsDefault__bullseyeThresholdLocalSuggestions = v3;
  return result;
}

uint64_t SIBullseyeNoForceUnigramsDefault(uint64_t a1, uint64_t a2)
{
  if (SIBullseyeNoForceUnigramsDefault_onceToken != -1)
  {
    SIBullseyeNoForceUnigramsDefault_cold_1();
  }

  return SIBullseyeNoForceUnigramsDefault_sUnigrams;
}

uint64_t __SIBullseyeNoForceUnigramsDefault_block_invoke()
{
  keyExistsAndHasValidFormat = 0;
  v0 = *MEMORY[0x277CBF028];
  CFPreferencesAddSuitePreferencesToApp(*MEMORY[0x277CBF028], @"com.apple.spotlightui");
  result = CFPreferencesGetAppBooleanValue(@"SIBullseyeNoForceUnigrams", v0, &keyExistsAndHasValidFormat);
  if (result)
  {
    v2 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  SIBullseyeNoForceUnigramsDefault_sUnigrams = v3;
  return result;
}

void SISimulateCrashForPid(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    v5 = 3134249728;
    if (a2)
    {
      v5 = a2;
    }

    v6 = 134218242;
    v7 = v5;
    v8 = 2112;
    v9 = a3;
    _os_log_fault_impl(&dword_26B7AA000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "%lld %@", &v6, 0x16u);
  }
}

uint64_t SIIsProcessDebugged(int a1)
{
  v9 = *MEMORY[0x277D85DE8];
  bzero(v7, 0x288uLL);
  *v4 = 0xE00000001;
  v5 = 1;
  v6 = a1;
  v3 = 648;
  if (sysctl(v4, 4u, v7, &v3, 0, 0))
  {
    return 0;
  }

  else
  {
    return (v8 >> 11) & 1;
  }
}

void *SIDataMapCreateMutableWithOptions(const __CFURL *a1, const __CFString *a2, const __CFDictionary *a3)
{
  values[128] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 0;
  }

  if (!CFURLResourceIsReachable(a1, 0))
  {
    v22 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v22)
    {
      SIDataMapCreateMutableWithOptions_cold_3(v22, v23, v24, v25, v26, v27, v28, v29);
    }

    return 0;
  }

  v6 = *MEMORY[0x277CBF168];
  values[0] = *MEMORY[0x277CBF168];
  v7 = CFArrayCreate(*MEMORY[0x277CBECE8], values, 1, MEMORY[0x277CBF128]);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = CFURLCopyResourcePropertiesForKeys(a1, v7, 0);
  if (!v9)
  {
    CFRelease(v8);
    return 0;
  }

  v10 = v9;
  v11 = CFDictionaryGetValue(v9, v6);
  v12 = *MEMORY[0x277CBED28];
  CFRelease(v10);
  CFRelease(v8);
  if (v11 != v12)
  {
    return 0;
  }

  v13 = *MEMORY[0x277CBED10];
  value = *MEMORY[0x277CBED10];
  if (a2)
  {
    v14 = a2;
  }

  else
  {
    v14 = @"data.map";
  }

  bzero(values, 0x400uLL);
  usedBufLen = 0;
  memset(&v47, 0, sizeof(v47));
  v15 = CFURLCopyPath(a1);
  if (v15)
  {
    v16 = v15;
    v51.length = CFStringGetLength(v15);
    v51.location = 0;
    CFStringGetBytes(v16, v51, 0x8000100u, 0x2Du, 0, values, 1024, &usedBufLen);
    *(values + usedBufLen) = 0;
    CFRelease(v16);
  }

  if (stat(values, &v47))
  {
    return 0;
  }

  v17 = open(values, 256);
  if (v17 < 0)
  {
    v31 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v31)
    {
      SIDataMapCreateMutableWithOptions_cold_2(v31, v32, v33, v34, v35, v36, v37, v38);
    }

    if (v17 == -1)
    {
      return 0;
    }

    goto LABEL_29;
  }

  v52.length = CFStringGetLength(v14);
  v52.location = 0;
  CFStringGetBytes(v14, v52, 0x8000100u, 0x2Du, 0, values, 1024, &usedBufLen);
  *(values + usedBufLen) = 0;
  if (a3)
  {
    CFDictionaryGetValueIfPresent(a3, kSIDataMapOptionEnablePayloads, &value);
    v13 = value;
  }

  v18 = 4 * (v13 == v11);
  v19 = data_map32_init(v17, values, v18, 9);
  if (!v19)
  {
    v39 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v39)
    {
      SIDataMapCreateMutableWithOptions_cold_1(v39, v40, v41, v42, v43, v44, v45, v46);
    }

LABEL_29:
    close(v17);
    return 0;
  }

  v20 = v19;
  v21 = malloc_type_calloc(1uLL, 0x20uLL, 0x1060040504AB746uLL);
  if (v21)
  {
    v21[1] = CFRetain(a1);
    v21[2] = v20;
    *(v21 + 6) = v18;
    *(v21 + 7) = v17;
    atomic_fetch_add(v21, 1u);
  }

  else
  {
    close(v17);
    data_map32_destroy(v20);
  }

  return v21;
}

atomic_uint *SIDataMapRetain(atomic_uint *result)
{
  if (result)
  {
    atomic_fetch_add(result, 1u);
  }

  return result;
}

void *SIDataMapCreateWithOptions(const __CFURL *a1, const __CFString *a2, const __CFDictionary *a3)
{
  values[128] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 0;
  }

  if (!CFURLResourceIsReachable(a1, 0))
  {
    v28 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v28)
    {
      SIDataMapCreateMutableWithOptions_cold_3(v28, v29, v30, v31, v32, v33, v34, v35);
    }

    return 0;
  }

  v6 = *MEMORY[0x277CBF168];
  values[0] = *MEMORY[0x277CBF168];
  v7 = *MEMORY[0x277CBECE8];
  v8 = CFArrayCreate(*MEMORY[0x277CBECE8], values, 1, MEMORY[0x277CBF128]);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = CFURLCopyResourcePropertiesForKeys(a1, v8, 0);
  if (!v10)
  {
    CFRelease(v9);
    return 0;
  }

  v11 = v10;
  v12 = CFDictionaryGetValue(v10, v6);
  v13 = *MEMORY[0x277CBED28];
  CFRelease(v11);
  CFRelease(v9);
  if (v12 != v13)
  {
    return 0;
  }

  v14 = *MEMORY[0x277CBED10];
  value = *MEMORY[0x277CBED10];
  if (a2)
  {
    v15 = a2;
  }

  else
  {
    v15 = @"data.map";
  }

  bzero(values, 0x400uLL);
  usedBufLen = 0;
  memset(&v59, 0, sizeof(v59));
  v16 = CFURLCopyPath(a1);
  if (v16)
  {
    v17 = v16;
    v63.length = CFStringGetLength(v16);
    v63.location = 0;
    CFStringGetBytes(v17, v63, 0x8000100u, 0x2Du, 0, values, 1024, &usedBufLen);
    *(values + usedBufLen) = 0;
    CFRelease(v17);
  }

  if (stat(values, &v59))
  {
    return 0;
  }

  v18 = open(values, 256);
  if (v18 < 0)
  {
    v38 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v38)
    {
      SIDataMapCreateMutableWithOptions_cold_2(v38, v39, v40, v41, v42, v43, v44, v45);
    }

    return 0;
  }

  v19 = v18;
  v20 = CFStringCreateWithFormat(v7, 0, @"%@/%@.plist", a1, @"config");
  if (v20)
  {
    v21 = v20;
    v22 = CFURLCreateWithString(v7, v20, 0);
    if (v22)
    {
      v23 = v22;
      v58 = 0;
      v24 = createDictionaryWithContentsOfURL(v22, &v58);
      if (v24)
      {
        v25 = v24;
        v26 = CFDictionaryGetValue(v24, @"_SIDataMapVersion");
        if (v26)
        {
          valuePtr = 0;
          CFNumberGetValue(v26, kCFNumberCFIndexType, &valuePtr);
          v27 = valuePtr;
          CFRelease(v25);
          CFRelease(v23);
          CFRelease(v21);
          if (v27 == 1)
          {
            goto LABEL_29;
          }

          return 0;
        }

        CFRelease(v25);
      }

      CFRelease(v23);
    }

    CFRelease(v21);
  }

LABEL_29:
  v64.length = CFStringGetLength(v15);
  v64.location = 0;
  CFStringGetBytes(v15, v64, 0x8000100u, 0x2Du, 0, values, 1024, &usedBufLen);
  *(values + usedBufLen) = 0;
  if (a3)
  {
    CFDictionaryGetValueIfPresent(a3, kSIDataMapOptionEnablePayloads, &value);
    v14 = value;
  }

  v46 = 4 * (v14 == v12);
  v47 = data_map32_init(v19, values, v46, 10);
  if (!v47)
  {
    v49 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v49)
    {
      SIDataMapCreateMutableWithOptions_cold_1(v49, v50, v51, v52, v53, v54, v55, v56);
    }

    close(v19);
    return 0;
  }

  v48 = v47;
  v36 = malloc_type_calloc(1uLL, 0x20uLL, 0x1060040504AB746uLL);
  if (v36)
  {
    v36[1] = CFRetain(a1);
    v36[2] = v48;
    *(v36 + 6) = v46;
    *(v36 + 7) = v19;
    atomic_fetch_add(v36, 1u);
  }

  else
  {
    close(v19);
    data_map32_destroy(v48);
  }

  return v36;
}

uint64_t SIDataMapGetCount(uint64_t result)
{
  if (result)
  {
    result = *(result + 16);
    if (result)
    {
      return data_map32_count(result);
    }
  }

  return result;
}

uint64_t SIDataMapLookupKey(uint64_t result, unsigned __int16 *a2, size_t a3, unint64_t a4, unint64_t a5)
{
  if (!result)
  {
    return result;
  }

  v5 = result;
  result = *(result + 16);
  if (!result)
  {
    return result;
  }

  if (!(a4 | a5))
  {
    return 0;
  }

  if (a4)
  {
    v11 = 0;
    extra_with_key = data_map32_get_extra_with_key(result, a2, a3, &v11);
    if (v11)
    {
      *a4 = extra_with_key;
      goto LABEL_7;
    }

    return 0;
  }

LABEL_7:
  if (!a5)
  {
    return 1;
  }

  result = *(v5 + 16);
  if (result)
  {
    result = data_map32_id_get(result, a2, a3);
    if (result)
    {
      *a5 = result;
      return 1;
    }
  }

  return result;
}

uint64_t SIDataMapAddKeyWithPayload(uint64_t result, const void *a2, size_t a3, int a4, _DWORD *a5)
{
  v14[1] = *MEMORY[0x277D85DE8];
  if (result)
  {
    v5 = result;
    if (*(result + 16))
    {
      v10 = *(result + 24);
      v11 = v10 + a3;
      MEMORY[0x28223BE20](result);
      v13 = v14 - v12;
      bzero(v14 - v12, v11);
      *v13 = a4;
      memcpy(&v13[v10], a2, a3);
      result = data_map32_id_insert(*(v5 + 16), v13, v11);
      if (result)
      {
        if (a5)
        {
          *a5 = result;
        }

        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t SIDataMapLookupStringKey(uint64_t result, CFStringRef theString, unint64_t a3, unint64_t a4)
{
  v13[1] = *MEMORY[0x277D85DE8];
  if (result)
  {
    v5 = result;
    result = 0;
    if (theString)
    {
      if (*(v5 + 16))
      {
        Length = CFStringGetLength(theString);
        result = 0;
        if (Length)
        {
          if (Length <= 1023)
          {
            MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
            v10 = MEMORY[0x28223BE20](MaximumSizeForEncoding);
            v12 = (v13 - v11);
            bzero(v13 - v11, v10 + 1);
            v13[0] = 0;
            v14.location = 0;
            v14.length = Length;
            if (CFStringGetBytes(theString, v14, 0x8000100u, 0x2Du, 0, v12, MaximumSizeForEncoding, v13) == Length)
            {
              *(v12 + v13[0]) = 0;
              return SIDataMapLookupKey(v5, v12, Length, a3, a4);
            }

            else
            {
              result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
              if (result)
              {
                SIDataMapLookupStringKey_cold_1();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t SIDataMapAddStringKeyWithPayload(uint64_t result, CFStringRef theString, int a3, _DWORD *a4)
{
  v13[1] = *MEMORY[0x277D85DE8];
  if (result)
  {
    v4 = result;
    if (*(result + 16))
    {
      Length = CFStringGetLength(theString);
      MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
      v10 = MEMORY[0x28223BE20](MaximumSizeForEncoding);
      v12 = v13 - v11;
      bzero(v13 - v11, v10 + 1);
      v13[0] = 0;
      v14.location = 0;
      v14.length = Length;
      if (CFStringGetBytes(theString, v14, 0x8000100u, 0x2Du, 0, v12, MaximumSizeForEncoding, v13) == Length)
      {
        v12[v13[0]] = 0;
        return SIDataMapAddKeyWithPayload(v4, v12, Length, a3, a4);
      }

      else
      {
        result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (result)
        {
          SIDataMapLookupStringKey_cold_1();
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t SIDataMapLookupUInt32Key(uint64_t result, int a2, unint64_t a3, unint64_t a4)
{
  v4 = a2;
  if (result)
  {
    if (*(result + 16))
    {
      return SIDataMapLookupKey(result, &v4, 4uLL, a3, a4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t SIDataMapAddUInt32KeyWithPayload(uint64_t result, int a2, int a3, _DWORD *a4)
{
  v4 = a2;
  if (result)
  {
    if (*(result + 16))
    {
      return SIDataMapAddKeyWithPayload(result, &v4, 4uLL, a3, a4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t SIDataMapAddUInt32Key(uint64_t result, int a2, _DWORD *a3)
{
  v3 = a2;
  if (result)
  {
    if (*(result + 16))
    {
      return SIDataMapAddKeyWithPayload(result, &v3, 4uLL, 0, a3);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t SIDataMapGetKey(uint64_t a1, unsigned int a2, void *a3, int a4, _DWORD *a5)
{
  if (a1 && *(a1 + 16))
  {
    return dataMapLookupKey(a1, a2, a3, a4, a5);
  }

  else
  {
    return 0;
  }
}

uint64_t dataMapLookupKey(uint64_t a1, unsigned int a2, void *a3, int a4, _DWORD *a5)
{
  result = *(a1 + 16);
  if (result)
  {
    LODWORD(v7) = a4;
    v10 = 0;
    data = data_map32_get_data(result, a2, &v10);
    if (a3)
    {
      if (v10 <= v7)
      {
        v7 = v10;
      }

      else
      {
        v7 = v7;
      }

      memcpy(a3, data, v7);
      if (a5)
      {
        *a5 = v7;
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t SIDataMapGetKeyWithPayload(uint64_t result, unsigned int a2, void *a3, int a4, _DWORD *a5, _DWORD *a6)
{
  if (result)
  {
    v6 = result;
    if (*(result + 16))
    {
      result = dataMapLookupKey(result, a2, a3, a4, a5);
      if (result)
      {
        result = *(v6 + 16);
        if (result)
        {
          v10 = *a5;
          v12 = 0;
          extra_with_key = data_map32_get_extra_with_key(result, a3, v10, &v12);
          result = 0;
          if (v12 == 1)
          {
            if (a6)
            {
              *a6 = extra_with_key;
            }

            return 1;
          }
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void SIDataMapWrite(uint64_t a1, const __CFDictionary *a2)
{
  if (a1)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      data_map32_commit(v3);
      data_map32_make_read_only(*(a1 + 16));
      v5 = *MEMORY[0x277CBECE8];
      v6 = a2 ? CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, a2) : CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v7 = v6;
      if (v6)
      {
        valuePtr = 1;
        v8 = CFNumberCreate(v5, kCFNumberCFIndexType, &valuePtr);
        if (v8)
        {
          v9 = v8;
          CFDictionarySetValue(v7, @"_SIDataMapVersion", v8);
          CFRelease(v9);
        }

        v10 = CFStringCreateWithFormat(v5, 0, @"%@/%@.plist", *(a1 + 8), @"config");
        if (v10)
        {
          v11 = v10;
          v12 = CFURLCreateWithString(v5, v10, 0);
          if (v12)
          {
            v13 = v12;
            cf = 0;
            writeContentsOfDictionaryToURL(v7, v12, kCFPropertyListXMLFormat_v1_0, &cf);
            if (cf)
            {
              CFRelease(cf);
            }

            CFRelease(v13);
          }

          CFRelease(v11);
        }

        CFRelease(v7);
      }
    }
  }
}

void SIDataMapRelease(void *a1)
{
  if (a1 && atomic_fetch_add(a1, 0xFFFFFFFF) == 1)
  {
    v2 = a1[1];
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = a1[2];
    if (v3)
    {
      data_map32_destroy(v3);
    }

    v4 = *(a1 + 7);
    if ((v4 & 0x80000000) == 0)
    {
      close(v4);
    }

    free(a1);
  }
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

uint64_t MDHash(unsigned __int8 *a1, unsigned int a2, unsigned int a3)
{
  v3 = -1640531527;
  if (a2 < 0xC)
  {
    v5 = -1640531527;
    v4 = a2;
  }

  else
  {
    v4 = a2;
    v5 = -1640531527;
    do
    {
      v6 = *(a1 + 1) + v3;
      v7 = *(a1 + 2) + a3;
      v8 = (*a1 + v5 - (v6 + v7)) ^ (v7 >> 13);
      v9 = (v6 - v7 - v8) ^ (v8 << 8);
      v10 = (v7 - v8 - v9) ^ (v9 >> 13);
      v11 = (v8 - v9 - v10) ^ (v10 >> 12);
      v12 = (v9 - v10 - v11) ^ (v11 << 16);
      v13 = (v10 - v11 - v12) ^ (v12 >> 5);
      v5 = (v11 - v12 - v13) ^ (v13 >> 3);
      v3 = (v12 - v13 - v5) ^ (v5 << 10);
      a3 = (v13 - v5 - v3) ^ (v3 >> 15);
      a1 += 12;
      v4 -= 12;
    }

    while (v4 > 0xB);
  }

  v14 = a3 + a2;
  if (v4 > 5)
  {
    if (v4 > 8)
    {
      if (v4 != 9)
      {
        if (v4 != 10)
        {
          v14 += a1[10] << 24;
        }

        v14 += a1[9] << 16;
      }

      v14 += a1[8] << 8;
    }

    else
    {
      if (v4 == 6)
      {
LABEL_22:
        v3 += a1[5] << 8;
        goto LABEL_23;
      }

      if (v4 == 7)
      {
LABEL_21:
        v3 += a1[6] << 16;
        goto LABEL_22;
      }
    }

    v3 += a1[7] << 24;
    goto LABEL_21;
  }

  if (v4 > 2)
  {
    if (v4 == 3)
    {
LABEL_25:
      v5 += a1[2] << 16;
      goto LABEL_26;
    }

    if (v4 == 4)
    {
LABEL_24:
      v5 += a1[3] << 24;
      goto LABEL_25;
    }

LABEL_23:
    v3 += a1[4];
    goto LABEL_24;
  }

  if (v4 == 1)
  {
    goto LABEL_27;
  }

  if (v4 != 2)
  {
    goto LABEL_28;
  }

LABEL_26:
  v5 += a1[1] << 8;
LABEL_27:
  v5 += *a1;
LABEL_28:
  v15 = (v5 - (v3 + v14)) ^ (v14 >> 13);
  v16 = (v3 - v14 - v15) ^ (v15 << 8);
  v17 = (v14 - v15 - v16) ^ (v16 >> 13);
  v18 = (v15 - v16 - v17) ^ (v17 >> 12);
  v19 = (v16 - v17 - v18) ^ (v18 << 16);
  v20 = (v17 - v18 - v19) ^ (v19 >> 5);
  v21 = (v18 - v19 - v20) ^ (v20 >> 3);
  return (v20 - v21 - ((v19 - v20 - v21) ^ (v21 << 10))) ^ (((v19 - v20 - v21) ^ (v21 << 10)) >> 15);
}

uint64_t MDHashQuick32(int a1)
{
  v1 = (-1640531527 - a1) ^ ((a1 - 4) << 8);
  v2 = (8 - a1 - v1) ^ (v1 >> 13);
  v3 = (a1 - 4 - v1 - v2) ^ (v2 >> 12);
  v4 = (v1 - v2 - v3) ^ (v3 << 16);
  v5 = (v2 - v3 - v4) ^ (v4 >> 5);
  v6 = (v3 - v4 - v5) ^ (v5 >> 3);
  return (v5 - v6 - ((v4 - v5 - v6) ^ (v6 << 10))) ^ (((v4 - v5 - v6) ^ (v6 << 10)) >> 15);
}

uint64_t MDHashQuick32Pair(int a1, int a2)
{
  v2 = a1 - a2 - 8;
  v3 = (a2 - (a1 - a2) - 1640531527) ^ (v2 << 8);
  v4 = (16 - (a1 - a2) - v3) ^ (v3 >> 13);
  v5 = (v2 - v3 - v4) ^ (v4 >> 12);
  v6 = (v3 - v4 - v5) ^ (v5 << 16);
  v7 = (v4 - v5 - v6) ^ (v6 >> 5);
  v8 = (v5 - v6 - v7) ^ (v7 >> 3);
  return (v7 - v8 - ((v6 - v7 - v8) ^ (v8 << 10))) ^ (((v6 - v7 - v8) ^ (v8 << 10)) >> 15);
}

uint64_t MDHashQuick64(uint64_t a1)
{
  v1 = HIDWORD(a1) - a1 - 8;
  v2 = (a1 - (HIDWORD(a1) - a1) - 1640531527) ^ (v1 << 8);
  v3 = (16 - (HIDWORD(a1) - a1) - v2) ^ (v2 >> 13);
  v4 = (v1 - v2 - v3) ^ (v3 >> 12);
  v5 = (v2 - v3 - v4) ^ (v4 << 16);
  v6 = (v3 - v4 - v5) ^ (v5 >> 5);
  v7 = (v4 - v5 - v6) ^ (v6 >> 3);
  return (v6 - v7 - ((v5 - v6 - v7) ^ (v7 << 10))) ^ (((v5 - v6 - v7) ^ (v7 << 10)) >> 15);
}

unint64_t MDHash64Quick64(uint64_t a1)
{
  v1 = HIDWORD(a1) - a1 + 608135808;
  v2 = (a1 - (HIDWORD(a1) - a1) + 2046299953) ^ (v1 << 8);
  v3 = (-608135800 - (HIDWORD(a1) - a1) - v2) ^ (v2 >> 13);
  v4 = (v1 - v2 - v3) ^ (v3 >> 12);
  v5 = (v2 - v3 - v4) ^ (v4 << 16);
  v6 = (v3 - v4 - v5) ^ (v5 >> 5);
  v7 = (v4 - v5 - v6) ^ (v6 >> 3);
  v8 = (v6 - v7 - ((v5 - v6 - v7) ^ (v7 << 10))) ^ (((v5 - v6 - v7) ^ (v7 << 10)) >> 15);
  v9 = a1 + 608135808 - HIDWORD(a1);
  v10 = (HIDWORD(a1) - (v9 + 8) - 1640531527) ^ (v9 << 8);
  v11 = (8 - v9 - v10) ^ (v10 >> 13);
  v12 = (v9 - v10 - v11) ^ (v11 >> 12);
  v13 = (v10 - v11 - v12) ^ (v12 << 16);
  v14 = (v11 - v12 - v13) ^ (v13 >> 5);
  v15 = (v12 - v13 - v14) ^ (v14 >> 3);
  return v8 | (((v14 - v15 - ((v13 - v14 - v15) ^ (v15 << 10))) ^ (((v13 - v14 - v15) ^ (v15 << 10)) >> 15)) << 32);
}

unint64_t MDUHash32(int a1)
{
  v1 = (2 * a1 + 2046299953) ^ ((608135808 - a1) << 8);
  v2 = (a1 - 608135800 - v1) ^ (v1 >> 13);
  v3 = (608135808 - a1 - v1 - v2) ^ (v2 >> 12);
  v4 = (v1 - v2 - v3) ^ (v3 << 16);
  v5 = (v2 - v3 - v4) ^ (v4 >> 5);
  v6 = (v3 - v4 - v5) ^ (v5 >> 3);
  v7 = (v5 - v6 - ((v4 - v5 - v6) ^ (v6 << 10))) ^ (((v4 - v5 - v6) ^ (v6 << 10)) >> 15);
  v8 = (2046299953 - a1) ^ ((a1 + 608135808) << 8);
  v9 = (-608135800 - a1 - v8) ^ (v8 >> 13);
  v10 = (a1 + 608135808 - v8 - v9) ^ (v9 >> 12);
  v11 = (v8 - v9 - v10) ^ (v10 << 16);
  v12 = (v9 - v10 - v11) ^ (v11 >> 5);
  v13 = (v10 - v11 - v12) ^ (v12 >> 3);
  return v7 | (((v12 - v13 - ((v11 - v12 - v13) ^ (v13 << 10))) ^ (((v11 - v12 - v13) ^ (v13 << 10)) >> 15)) << 32);
}

void *CITokenizerCreate(int a1)
{
  v2 = malloc_type_calloc(1uLL, 0x70uLL, 0x10F0040AEFF90DEuLL);
  v3 = v2;
  if (v2)
  {
    v2[3] = 0;
    v2[4] = 0;
    *(v2 + 10) = a1;
    v4 = NLStringTokenizerCreate();
    v3[1] = v4;
    v3[2] = 0;
    if (!v4)
    {
      CITokenizerCreate_cold_1();
    }

    v3[7] = 0;
    v3[8] = 0;
  }

  return v3;
}

void __message_assert_1(char *a1, ...)
{
  va_start(va, a1);
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  va_copy(&v1[1], va);
  vasprintf(v1, a1, va);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v3 = v1[0];
    _os_log_error_impl(&dword_26B7AA000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
  }

  free(v1[0]);
}

void CITokenizerDispose(void *a1)
{
  if (a1)
  {
    v2 = a1[1];
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = a1[2];
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = a1[8];
    if (v4)
    {
      free(v4);
    }

    v5 = a1[7];
    if (v5)
    {
      CFRelease(v5);
    }

    free(a1);
  }
}

uint64_t CITokenizerReset(void *a1)
{
  if (a1[1])
  {
    _NLStringTokenizerSetStringWithOptionsAndLanguageID();
  }

  result = a1[2];
  if (result)
  {

    return _NLStringTokenizerSetStringWithOptionsAndLanguageID();
  }

  return result;
}

uint64_t CITokenizerSetClientObject(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(result + 80);
  if (v6)
  {
    result = v6(*(result + 48));
  }

  *(v5 + 48) = a2;
  *(v5 + 80) = a3;
  return result;
}

void *CIRetainIndexingTokenizer(unsigned int a1)
{
  if (a1 >= 4)
  {
    CIRetainIndexingTokenizer_cold_1();
  }

  v2 = OSAtomicDequeue(&gIndexingTokenizerStack + a1, 0);
  if (v2)
  {
    v3 = v2[1];
    v2[1] = 0;
    OSAtomicEnqueue(&gIndexingTokenizerHeap, v2, 0);
    return v3;
  }

  else
  {

    return CITokenizerCreate(a1);
  }
}

void CIPurgeTokenizers(int a1)
{
  for (i = 0; i != 4; ++i)
  {
    if (a1)
    {
      v3 = OSAtomicDequeue(&gIndexingTokenizerStack + i, 0);
    }

    else
    {
      v3 = 0;
    }

    v4 = OSAtomicDequeue(&gIndexingTokenizerStack + i, 0);
    if (v4)
    {
      v5 = v4;
      do
      {
        CITokenizerDispose(v5[1]);
        v5[1] = 0;
        OSAtomicEnqueue(&gIndexingTokenizerHeap, v5, 0);
        v5 = OSAtomicDequeue(&gIndexingTokenizerStack + i, 0);
      }

      while (v5);
    }

    if (v3)
    {
      OSAtomicEnqueue(&gIndexingTokenizerStack + i, v3, 0);
    }
  }
}

void CIReleaseIndexingTokenizer(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 4)
  {
    CIReleaseIndexingTokenizer_cold_1();
  }

  CITokenizerReset(a1);
  v3 = OSAtomicDequeue(&gIndexingTokenizerHeap, 0);
  if (!v3)
  {
    v3 = malloc_type_malloc(0x10uLL, 0xA0040BD48D6D6uLL);
  }

  v3[1] = a1;

  OSAtomicEnqueue(&gIndexingTokenizerStack + v1, v3, 0);
}

void CITokenizerSetLocale(uint64_t a1, const __CFString *a2, char *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  bzero(buffer, 0x400uLL);
  if (a2 && (v6 = buffer, CFStringGetCString(a2, buffer, 1024, 0x8000100u)) || (v6 = a3) != 0)
  {
    if (*v6)
    {
      a3 = v6;
    }

    else
    {
      a3 = 0;
    }

    if (*v6)
    {
      v7 = a2;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a1 + 64);
  if (a3 == v8)
  {
    return;
  }

  if (a3 && v8)
  {
    if (!strcmp(a3, *(a1 + 64)))
    {
      return;
    }

    goto LABEL_17;
  }

  if (v8)
  {
LABEL_17:
    free(v8);
  }

  *(a1 + 64) = 0;
  v9 = *(a1 + 56);
  if (v9)
  {
    CFRelease(v9);
  }

  *(a1 + 56) = 0;
  v10 = MEMORY[0x277CBECE8];
  if (a3 && !v7)
  {
    v7 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], a3, 0x8000100u);
  }

  if (v7)
  {
    v11 = CFLocaleCreate(*v10, v7);
    *(a1 + 56) = v11;
    if (v11)
    {
      *(a1 + 64) = strdup(a3);
    }

    if (v7 != a2)
    {
      CFRelease(v7);
    }
  }

  *(a1 + 72) = MEMORY[0x26D680E30](*(a1 + 56));
}

BOOL CIStringTokenizerResolveTranscriptions(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v53 = *MEMORY[0x277D85DE8];
  v9 = strlen(v1);
  alloc = *MEMORY[0x277CBECE8];
  v10 = CFStringCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v8, v9, 0x8000100u, 0, *MEMORY[0x277CBED00]);
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v12 = CIRetainIndexingTokenizer(3u);
  if (!v12)
  {
    v33 = 0;
    goto LABEL_55;
  }

  v13 = v12;
  buffer = v5;
  v36 = v3;
  bzero(v52, 0x1000uLL);
  bzero(&v51, 0x800uLL);
  bzero(v50, 0x800uLL);
  bzero(v49, 0x800uLL);
  v48 = 0;
  *v46 = 0u;
  *cf = 0u;
  memset(v45, 0, sizeof(v45));
  CITokenizerSetLocale(v13, 0, v7);
  CITokenizerStateInit(v45, v11, (*(v13 + 72) < 0x37uLL) & (0x40000000300030uLL >> *(v13 + 72)), 0);
  v37 = v11;
  if (cf[0])
  {
    v14 = cf[0];
  }

  else
  {
    v14 = v11;
  }

  CFStringGetLength(v14);
  _NLStringTokenizerSetStringWithOptionsAndLanguageID();
  v15 = 0;
  v16 = 0;
  Mutable = 0;
  chars = 32;
  v43 = v46[0];
  v38 = v13;
  v39 = v46[0] - 2;
  do
  {
    v18 = _NLStringTokenizerTokenizeWithTranscriptions();
    v40 = v18;
    if (v18 >= 1)
    {
      v19 = 0;
      v20 = v52;
      v41 = &v52[v18 - 1];
      v21 = v50;
      v22 = v18;
      while (1)
      {
        if (!*v21)
        {
          if (v22 != 1)
          {
            goto LABEL_26;
          }

          if (!v15)
          {
            goto LABEL_26;
          }

          v23 = v41[1] + *v41;
          v24 = v23 - v15;
          if (v23 == v15)
          {
            goto LABEL_26;
          }

          v25 = v43[v15];
          if (v25 > 0x7F)
          {
            if (!__maskrune(v25, 0x4000uLL))
            {
              goto LABEL_34;
            }
          }

          else if ((*(MEMORY[0x277D85DE0] + 4 * v25 + 60) & 0x4000) == 0)
          {
LABEL_34:
            CFStringAppendCharacters(Mutable, &chars, 1);
          }

          v28 = Mutable;
          v26 = &v43[v15];
          v27 = v24;
          goto LABEL_25;
        }

        if (**&v49[v19] >= 0x80u)
        {
          v16 = 1;
        }

        if (Mutable)
        {
          break;
        }

        Mutable = CFStringCreateMutable(alloc, 0);
        if (v19)
        {
          goto LABEL_22;
        }

LABEL_24:
        v15 = v20[1] + *v20;
        v26 = *&v49[v19];
        v27 = *v21;
        v28 = Mutable;
LABEL_25:
        CFStringAppendCharacters(v28, v26, v27);
LABEL_26:
        ++v21;
        v20 += 2;
        v19 += 8;
        if (!--v22)
        {
          goto LABEL_43;
        }
      }

      if (!v19)
      {
        goto LABEL_24;
      }

LABEL_22:
      if (*(v21 - 1))
      {
LABEL_23:
        CFStringAppendCharacters(Mutable, &chars, 1);
        goto LABEL_24;
      }

      v29 = *v20;
      v30 = *v20 - v15;
      if (v30 < 1)
      {
        goto LABEL_24;
      }

      if (v15)
      {
        v31 = v43[v15];
        if (v31 > 0x7F)
        {
          if (__maskrune(v31, 0x4000uLL))
          {
            goto LABEL_38;
          }
        }

        else if ((*(MEMORY[0x277D85DE0] + 4 * v31 + 60) & 0x4000) != 0)
        {
          goto LABEL_38;
        }

        CFStringAppendCharacters(Mutable, &chars, 1);
      }

LABEL_38:
      CFStringAppendCharacters(Mutable, &v43[v15], v30);
      v32 = *&v39[2 * v29];
      if (v32 > 0x7F)
      {
        if (__maskrune(v32, 0x4000uLL))
        {
          goto LABEL_24;
        }
      }

      else if ((*(MEMORY[0x277D85DE0] + 4 * v32 + 60) & 0x4000) != 0)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

LABEL_43:
    ;
  }

  while (v40);
  if (v16)
  {
    CFStringNormalize(Mutable, kCFStringNormalizationFormD);
  }

  v11 = v37;
  if (Mutable)
  {
    v33 = CFStringGetCString(Mutable, buffer, v36, 0x8000100u) != 0;
    CFRelease(Mutable);
  }

  else
  {
    v33 = 0;
  }

  CIReleaseIndexingTokenizer(v38);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v46[1])
  {
    free(v46[1]);
  }

LABEL_55:
  CFRelease(v11);
  return v33;
}

void CITokenizerStateInit(uint64_t a1, CFStringRef theString, int a3, int a4)
{
  *(a1 + 128) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  if (theString)
  {
    Length = CFStringGetLength(theString);
  }

  else
  {
    Length = 0;
  }

  CharactersPtr = CFStringGetCharactersPtr(theString);
  *(a1 + 96) = CharactersPtr;
  if (!CharactersPtr)
  {
    v10 = malloc_type_malloc(2 * Length + 32, 0x1000040BDFB0063uLL);
    *(a1 + 104) = v10;
    if (!v10)
    {
      CITokenizerStateInit_cold_1(Length);
    }

    v18.location = 0;
    v18.length = Length;
    CFStringGetCharacters(theString, v18, v10);
    *(a1 + 96) = *(a1 + 104);
  }

  *(a1 + 120) = Length;
  if (!a3 || Length < 1)
  {
    goto LABEL_15;
  }

  unorm2_getNFCInstance();
  if (unorm2_quickCheck() == 1)
  {
    *(a1 + 128) = 1;
    if (!a4)
    {
      return;
    }

    goto LABEL_16;
  }

  v11 = malloc_type_malloc(2 * (Length & 0x7FFFFFFF), 0x1000040BDFB0063uLL);
  if (!v11)
  {
LABEL_15:
    if (!a4)
    {
      return;
    }

    goto LABEL_16;
  }

  v12 = v11;
  v13 = unorm2_normalize();
  v16 = v13;
  *(a1 + 128) = 1;
  if (v13 == Length && !memcmp(*(a1 + 96), v12, Length & 0x7FFFFFFF))
  {
    free(v12);
    goto LABEL_15;
  }

  if (v16 < Length)
  {
    LODWORD(Length) = v16;
  }

  v17 = *(a1 + 104);
  if (v17)
  {
    free(v17);
  }

  *(a1 + 96) = v12;
  *(a1 + 104) = v12;
  *(a1 + 112) = CFStringCreateWithCharactersNoCopy(0, v12, Length, *MEMORY[0x277CBED00]);
  *(a1 + 120) = Length;
  if (a4)
  {
LABEL_16:
    v14 = *(a1 + 120);
    if (v14 >= 2)
    {
      v15 = *(a1 + 96) + 2 * v14;
      if (*(v15 - 2) == 42 && (*(v15 - 4) != 92 || v14 != 2 && *(v15 - 6) != 92))
      {
        *(a1 + 129) = 1;
      }
    }
  }
}

__n128 CITokenizerGetMatchState@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  result = *(a1 + 88);
  *a2 = result;
  a2[1].n128_u64[0] = *(a1 + 104);
  return result;
}

void CITokenizerGetQueryTokensWithOptions(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v7 = v6;
  if (v2)
  {
    v8 = v4;
    v9 = v3;
    v10 = v2;
    v11 = v1;
    v12 = v5;
    if (CFStringGetLength(v2))
    {
      v15[0] = v12;
      v15[1] = v7;
      v16 = 0u;
      v17 = 0u;
      v18 = 0;
      bzero(&cf, 0x1810uLL);
      CITokenizerSetLocale(v11, v9, 0);
      _CITokenizerGetTokens(v11, *(v11 + 8), v10, &cf, v8 | 0x46u, _CITokenizerGetQueryTokensStart, _CITokenizerGetQueryTokens, 0, 0, 0, _CITokenizerGetQueryTokensEnd, v15);
      if (cf)
      {
        CFRelease(cf);
      }

      if (v14)
      {
        free(v14);
      }
    }

    else
    {

      v12();
    }
  }

  else
  {

    (v5)(0);
  }
}

void _CITokenizerGetTokens(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(void, _OWORD *, uint64_t *), void (*a10)(uint64_t, uint64_t), void (*a11)(void, uint64_t, uint64_t), uint64_t a12)
{
  v12 = MEMORY[0x28223BE20](a1);
  v210 = v13;
  v206 = v14;
  v16 = v15;
  v18 = v17;
  v202 = v19;
  v21 = v20;
  v23 = v22;
  v24 = v12;
  v242 = *MEMORY[0x277D85DE8];
  bzero(v215, 0xC30uLL);
  v217 = -1;
  v25 = *(v24 + 8);
  v211 = v23;
  v214 = v24;
  v212 = v18;
  if (v25 != v23)
  {
    goto LABEL_2;
  }

  if ((v18 & 4) != 0)
  {
    LOBYTE(v26) = 1;
  }

  else
  {
    v27 = *(v24 + 72);
    if (v27 > 0x36)
    {
LABEL_2:
      LOBYTE(v26) = 0;
      goto LABEL_7;
    }

    v26 = 0x40000000300030uLL >> v27;
  }

LABEL_7:
  v203 = a11;
  v28 = *(v214 + 40);
  v227 = 0;
  v226 = 0u;
  v225 = 0u;
  v224 = 0u;
  v223 = 0u;
  memset(v222, 0, sizeof(v222));
  v221 = 0u;
  v220 = 0u;
  bzero(v241, 0x1010uLL);
  bzero(v240, 0x808uLL);
  bzero(&v236, 0x1010uLL);
  bzero(v232, 0x808uLL);
  bzero(v230, 0x808uLL);
  bzero(v229, 0x808uLL);
  CITokenizerStateInit(&v220, v21, v26 & 1, (v212 >> 6) & 1);
  if (*(v214 + 16) == v211)
  {
    LOBYTE(v227) = 1;
  }

  v213 = a12;
  v205 = *(&v226 + 1);
  if (!*(&v226 + 1))
  {
    v179 = v203;
    v180 = 0;
    if (v212)
    {
      if (v16)
      {
        v16(0, 0, v213);
      }

      if (v206)
      {
        v206(0, 0, 0, v213);
      }
    }

    goto LABEL_351;
  }

  if (a10)
  {
    v29 = NLStringTokenizerCopyBestStringLanguage();
    if (v29)
    {
      v30 = v29;
      a10(v29, v213);
      CFRelease(v30);
    }
  }

  v209 = a9;
  _NLStringTokenizerSetStringWithOptionsAndLanguageID();
  if (v16)
  {
    v16(v225, v205, v213);
  }

  v208 = 0;
  v31 = *MEMORY[0x277CBED00];
  v207 = &v216;
  v196 = &v238;
  v197 = v31;
  v32 = v232;
  v194 = (v202 + 24);
  v195 = &v233;
  v204 = &v237;
  v200 = &v231;
  v201 = &v235;
  v198 = &v234;
  v199 = &v239;
  v33 = 1;
  v34 = 4294959088;
  v35 = 65293;
  v36 = v214;
LABEL_16:
  while (2)
  {
    while (2)
    {
      while (2)
      {
        while (2)
        {
          while (2)
          {
            while (2)
            {
              v37 = *(&v221 + 1);
              for (i = v221; v37 < v221; i = v221)
              {
                v39 = &v236 + 2 * v37;
                v223 = *v39;
                v40 = v232[v37];
                *&v224 = v40;
                if (v37)
                {
                  v41 = v37 + 2;
                  if (v37 + 2 < i)
                  {
                    v42 = v37 - 1;
                    v43 = v37 - 2;
                    if (v37 < 2 || (v232[v43] & 0x20) == 0 || *(&v236 + 2 * v43 + 1) + *(&v236 + 2 * v43) != *(&v236 + 2 * v42))
                    {
                      v44 = v40 & 0x20;
                      if ((v232[v42] & 0x30) == 0 && v44 != 0 && v39[1] == 1)
                      {
                        v46 = v222[1];
                        v47 = v225 + 2 * v222[1];
                        if (*(v47 + 2 * *v39) == 46)
                        {
                          v48 = v37 + 1;
                          if ((v232[v37 + 1] & 0x30) == 0 && (v232[v41] & 0x20) != 0)
                          {
                            v49 = &v236 + 2 * v41;
                            if (v49[1] == 1 && *(v47 + 2 * *v49) == 46)
                            {
                              memset(v228, 0, 512);
                              v50 = &v236 + 2 * v42;
                              v51 = v50[1];
                              v193 = v50;
                              if (v51 > 255)
                              {
                                v53 = 0;
                              }

                              else
                              {
                                v52 = 2 * v51;
                                __memcpy_chk();
                                v53 = v52;
                              }

                              v54 = &v196[2 * v37];
                              v55 = &v195[v37];
                              while ((*(v55 - 1) & 0x30) == 0)
                              {
                                if ((*v55 & 0x20) == 0)
                                {
                                  goto LABEL_44;
                                }

                                if (v54[2] != 1)
                                {
                                  goto LABEL_44;
                                }

                                if (*(v47 + 2 * v54[1]) != 46)
                                {
                                  goto LABEL_44;
                                }

                                v56 = v53 + 2 * *v54;
                                if (v56 > 511)
                                {
                                  goto LABEL_44;
                                }

                                memcpy(v228 + v53, (v47 + 2 * *(v54 - 1)), 2 * *v54);
                                v48 += 2;
                                v54 += 4;
                                v41 += 2;
                                v55 += 2;
                                v53 = v56;
                                if (v41 >= i)
                                {
                                  v48 = v41 - 1;
                                  goto LABEL_45;
                                }
                              }

                              v48 = v41 - 1;
LABEL_44:
                              v56 = v53;
LABEL_45:
                              v57 = *v193 + v46;
                              v58 = *(&v236 + 2 * v48 - 2) - v57 + *(&v236 + 2 * v48 - 1);
                              v36 = v214;
                              *(v214 + 88) = v57;
                              v36[12] = v58;
                              v36[13] = *(&v220 + 1) - 1;
                              if (v210)
                              {
                                (v210)(v228, v56 >> 1, 0, v213);
                              }

                              v32 = v232;
                              v33 = 1;
                              v34 = 4294959088;
                              v35 = 65293;
                            }
                          }
                        }
                      }
                    }
                  }
                }

                v59 = v222[0];
                if (*(&v223 + 1) + v223 > v222[0])
                {
                  if ((v224 & 0x20) != 0)
                  {
                    if (v28 < 2 || *(&v223 + 1) != 1 || (v87 = *(v225 + 2 * v222[1] + 2 * v223), (v87 - 8208) >= 2) && (v87 != 45 ? (v88 = v87 == 65293) : (v88 = 1), !v88))
                    {
                      v222[0] = *(&v223 + 1) + v223;
                      v37 = *(&v221 + 1) + 1;
                      v59 = *(&v223 + 1) + v223;
                      goto LABEL_121;
                    }
                  }

                  v77 = *(&v236 + 2 * *(&v221 + 1));
                  v78 = *(&v236 + 2 * v221 - 1) + *(&v236 + 2 * v221 - 2);
                  v222[0] = v78;
                  if (v221 > *(&v221 + 1))
                  {
                    v79 = 0;
                    v80 = 0;
                    v81 = &v204[2 * *(&v221 + 1)];
                    v82 = 1;
                    v83 = *(&v221 + 1);
                    while (1)
                    {
                      v59 = *(v81 - 1);
                      v84 = *v81;
                      if ((v232[v83] & 0x10000020) == 0x20)
                      {
                        if (v28 < 2 || v84 != 1)
                        {
                          goto LABEL_114;
                        }

                        v85 = *(v225 + 2 * v222[1] + 2 * v59);
                        if ((v85 - 8208) < 2)
                        {
                          v84 = 1;
                        }

                        else
                        {
                          v86 = v85 == 45 || v85 == 65293;
                          v84 = 1;
                          if (!v86)
                          {
LABEL_114:
                            v222[0] = *(v81 - 1);
LABEL_115:
                            if (v80 >= 9)
                            {
                              if (v79 - v77 <= 63 && (v79 - v77) / v80 > 2)
                              {
                                if (v82)
                                {
                                  v137 = v83;
                                }

                                else
                                {
                                  v137 = v221 - 1;
                                }

                                v34 = 4294959088;
                                v35 = 65293;
                                if ((v232[v137] & 0x20) != 0)
                                {
                                  if (v28 < 2 || (v138 = &v236 + 2 * v137, v138[1] != 1) || (v139 = *(v225 + 2 * v222[1] + 2 * *v138), (v139 - 8208) >= 2) && (v139 != 45 ? (v140 = v139 == 65293) : (v140 = 1), !v140))
                                  {
                                    --v137;
                                  }
                                }

                                v141 = 0;
                                v142 = &v201[2 * v137];
                                v37 = v137 - 7;
                                v143 = &v200[v137];
                                v144 = &v199[2 * *(&v221 + 1)];
                                v145 = &v198[*(&v221 + 1)];
                                do
                                {
                                  v146 = *v145--;
                                  *v143-- = v146;
                                  *&v142[v141] = *&v144[v141];
                                  v141 -= 2;
                                }

                                while (v141 != -10);
                              }

                              else
                              {
                                *&v223 = v77;
                                *(&v223 + 1) = v79 - v77;
                                v37 = v80 + *(&v221 + 1);
                                v34 = 4294959088;
                                v35 = 65293;
                              }

LABEL_121:
                              *(&v221 + 1) = v37;
                              DWORD2(v224) = 0;
LABEL_122:
                              if (!v37)
                              {
                                goto LABEL_178;
                              }

LABEL_123:
                              v89 = v223;
                              v90 = v222[1];
                              v91 = v222[2];
                              v92 = v222[2] - v223;
                              v36[11] = v223 + v222[1];
                              v36[12] = v92;
                              goto LABEL_179;
                            }

                            v34 = 4294959088;
                            v35 = 65293;
LABEL_120:
                            v37 = *(&v221 + 1) + 1;
                            goto LABEL_121;
                          }
                        }
                      }

                      v81 += 2;
                      ++v80;
                      v79 = v84 + v59;
                      v82 = ++v83 < v221;
                      if (v221 == v83)
                      {
                        v59 = v78;
                        v80 = v221 - *(&v221 + 1);
                        v83 = v221;
                        goto LABEL_115;
                      }
                    }
                  }

                  v59 = v78;
                  goto LABEL_120;
                }

                DWORD2(v224) = 1;
                v60 = *(&v221 + 1);
                v37 = ++*(&v221 + 1);
                if (v60 < 1)
                {
                  goto LABEL_122;
                }

                if (v28 >= 2 && *(&v223 + 1) == 1)
                {
                  v61 = *(v225 + 2 * v222[1] + 2 * v223);
                  v62 = (v61 - 8208) < 2 || v61 == 65293;
                  if (v62 || v61 == 45)
                  {
                    continue;
                  }
                }

                goto LABEL_123;
              }

              v63 = *(&v220 + 1);
              v64 = v220;
              if (*(&v220 + 1) >= v220)
              {
                *(&v220 + 1) = 0;
                if ((v212 & 2) != 0)
                {
                  v64 = _NLStringTokenizerTokenize();
                }

                else
                {
                  v64 = _NLStringTokenizerTokenizeWithTranscriptions();
                }

                *&v220 = v64;
                v33 = 1;
                v34 = 4294959088;
                v35 = 65293;
                if (!v64)
                {
                  if (v208 < v205 && v36[1] == v211)
                  {
                    handle_missing_punctuation(v225, v208, v205, v206, v213, 0);
                  }

                  goto LABEL_334;
                }

                v208 = *(&v241[v64 - 1] + 1) + *&v241[v64 - 1];
                v63 = *(&v220 + 1);
                v32 = v232;
              }

              v65 = v63 + 1;
              v66 = v240[v63];
              *(&v220 + 1) = v63 + 1;
              v222[3] = v66;
              *&v222[1] = v241[v63];
              if (v222[2] == 1)
              {
                if (*(v225 + 2 * v222[1]) == 8204)
                {
                  continue;
                }

                if (v227)
                {
                  goto LABEL_126;
                }
              }

              else if (v227)
              {
                if (v222[2] > 256)
                {
                  continue;
                }

                goto LABEL_126;
              }

              break;
            }

            if (v66 & 1) != 0 || v65 < v64 && (v240[v65])
            {
              if ((v66 & 0x40001000) != 0 || (v67 = *(v225 + 2 * v222[1]), v67 >> 8 >= 0x11) && ((v67 & 0xFF00) == 0x1100 || (v67 - 11904) >> 7 < 0x197 || v67 - 65376 <= 0x4F))
              {
                v228[0] = 0;
                unorm2_getNFCInstance();
                v179 = v203;
                v180 = v205;
                if (v228[0] <= 0)
                {
                  v184 = v222[1];
                  v185 = v205 - v222[1];
                  v186 = malloc_type_malloc(2 * (v205 - v222[1]), 0xE21ED15EuLL);
                  if (v186)
                  {
                    v187 = v186;
                    v188 = unorm2_normalize();
                    if (v228[0] <= 0)
                    {
                      v189 = v185 >= v188 ? v188 : v180 - v184;
                      v190 = CFStringCreateWithCharactersNoCopy(0, v187, v189, v197);
                      if (v190)
                      {
                        v191 = v190;
                        v192 = v214;
                        if (!*(v214 + 16))
                        {
                          *(v192 + 16) = NLStringTokenizerCreate();
                        }

                        _NLStringTokenizerSetLocale();
                        _CITokenizerGetTokens(v192, *(v192 + 16), v191, v202, v212 & 0xFFFFFFFE, 0, v206, v210, 0, 0, 0, v213);
                        CFRelease(v191);
                      }
                    }

                    free(v187);
                  }
                }

                goto LABEL_351;
              }
            }

            if (v222[2] > 256)
            {
              continue;
            }

            break;
          }

          if ((~v66 & 0x401) == 0)
          {
            v228[0] = 0;
            NFCInstance = unorm2_getNFCInstance();
            if (v228[0] <= 0)
            {
              v69 = v222[2];
              v70 = v222[2];
              MEMORY[0x28223BE20](NFCInstance);
              v72 = &v193 - ((v71 + 15) & 0x3FFFFFFF0);
              bzero(v72, v71);
              v73 = unorm2_normalize();
              if (v228[0] <= 0)
              {
                v74 = v73;
                if (v73 <= v69 && (v73 != v69 || !memcmp(v72, (v225 + 2 * v222[1]), 2 * v70)))
                {
                  v75 = CFStringCreateWithCharactersNoCopy(0, v72, v74, v197);
                  if (v75)
                  {
                    v76 = v75;
                    v36 = v214;
                    if (!*(v214 + 16))
                    {
                      v36[2] = NLStringTokenizerCreate();
                    }

                    _NLStringTokenizerSetLocale();
                    _CITokenizerGetTokens(v36, v36[2], v76, v202, v212 & 0xFFFFFFFE, 0, v206, v210, 0, 0, 0, v213);
                    CFRelease(v76);
                    v32 = v232;
                    v33 = 1;
                    v34 = 4294959088;
                    v35 = 65293;
                    continue;
                  }
                }
              }

              v36 = v214;
            }

            v32 = v232;
            v33 = 1;
            v34 = 4294959088;
            v35 = 65293;
          }

          break;
        }

LABEL_126:
        v93 = v212;
        if ((v212 & 2) == 0)
        {
          if (v230[v63])
          {
            *(v36 + 11) = *&v222[1];
            v36[13] = v63;
            if (v210)
            {
              v210(v229[v63]);
              v35 = 65293;
              v34 = 4294959088;
              v33 = 1;
              v32 = v232;
            }
          }
        }

        *(&v221 + 1) = 0;
        DWORD2(v224) = 0;
        if ((v222[3] & 0xFFFFFFFFFFFFFFFDLL) == 0)
        {
          *&v221 = 1;
          v236 = 0;
          v237 = v222[2];
          v232[0] = 0;
          goto LABEL_143;
        }

        if ((v222[3] & 0x400) == 0)
        {
          goto LABEL_132;
        }

        v172 = *v202;
        if (*v202)
        {
          v243.length = CFStringGetLength(*v202);
          v243.location = 0;
          CFStringDelete(v172, v243);
          v36 = v214;
        }

        else
        {
          v173 = *(v202 + 8);
          v36 = v214;
          if (!v173)
          {
            v173 = malloc_type_malloc(0x400uLL, 0x1000040BDFB0063uLL);
            *(v202 + 8) = v173;
            if (!v173)
            {
              goto LABEL_334;
            }
          }

          MutableWithExternalCharactersNoCopy = CFStringCreateMutableWithExternalCharactersNoCopy(0, v173, 0, 512, v197);
          *v202 = MutableWithExternalCharactersNoCopy;
          if (!MutableWithExternalCharactersNoCopy)
          {
            goto LABEL_334;
          }
        }

        *&v221 = 0;
        DerivedTokens = _NLStringTokenizerGetDerivedTokens();
        *&v221 = DerivedTokens;
        if (DerivedTokens == 1)
        {
          v94 = v222[2];
          v93 = v212;
          v32 = v232;
          v34 = 4294959088;
          v35 = 65293;
          if (v222[2] == v237)
          {
            *&v221 = 0;
            v33 = 1;
            goto LABEL_133;
          }

          DerivedTokens = 1;
          v33 = 1;
          goto LABEL_320;
        }

        v93 = v212;
        v32 = v232;
        v33 = 1;
        v34 = 4294959088;
        v35 = 65293;
        if (DerivedTokens >= 1)
        {
LABEL_320:
          v176 = 0;
          v177 = v194;
          do
          {
            if (*v177)
            {
              v178 = v214;
              *(v214 + 88) = *&v222[1];
              *(v178 + 104) = v63;
              if (v210)
              {
                (v210)(*(v202 + 8) + 2 * *(v177 - 1), *v177, 2, v213, 4294959088, 65293, 1, v232);
                v35 = 65293;
                v34 = 4294959088;
                v33 = 1;
                v32 = v232;
                DerivedTokens = v221;
              }
            }

            ++v176;
            v177 += 2;
          }

          while (v176 < DerivedTokens);
        }

LABEL_132:
        v94 = v222[2];
        v36 = v214;
LABEL_133:
        if (v94 < 2 || (v93 & 0x20) != 0 && (v222[3] & 0x200) == 0)
        {
          goto LABEL_145;
        }

        SubTokensOfCompound = _NLStringTokenizerGetSubTokensOfCompound();
        *&v221 = SubTokensOfCompound;
        if (!SubTokensOfCompound)
        {
          v94 = v222[2];
          v32 = v232;
          v33 = 1;
          v34 = 4294959088;
          v35 = 65293;
LABEL_145:
          *&v221 = 1;
          v236 = 0;
          v237 = v94;
          SubTokensOfCompound = 1;
          v232[0] = 0;
          goto LABEL_146;
        }

        v32 = v232;
        v33 = 1;
        v34 = 4294959088;
        v35 = 65293;
        if (SubTokensOfCompound < 2)
        {
          v135 = SubTokensOfCompound;
LABEL_240:
          SubTokensOfCompound = v135;
          if (!v135)
          {
            continue;
          }

          goto LABEL_146;
        }

        break;
      }

      if ((v222[3] & 0x20) != 0)
      {
        if ((v93 & 8) != 0 && (v222[3] & 0x40001000) == 0)
        {
          v96 = v222[2];
          v97 = &v236 + 2 * *(&v221 + 1);
          *v97 = 0;
          v97[1] = v96;
          *&v221 = 1;
LABEL_143:
          SubTokensOfCompound = 1;
          goto LABEL_146;
        }

        LOBYTE(v162) = 0;
        v163 = 0;
        v164 = 0;
        v165 = 0;
        v166 = v225 + 2 * v222[1];
        v167 = v204;
        v135 = SubTokensOfCompound;
        while (1)
        {
          v168 = v232[v164];
          if ((v168 & 0x20) != 0)
          {
            break;
          }

          v162 = (v168 & 0xFFFFFFFFFFFFFFD1) == 0;
          if ((v163 & v162) != 1)
          {
            goto LABEL_300;
          }

          if (*v167 > 2)
          {
            LOBYTE(v162) = 1;
LABEL_300:
            v171 = v165 + (v163 & 1);
            *(&v236 + v171) = *(v167 - 1);
            v165 = v171 + 1;
            v232[v171] = v168;
            v163 = 0;
            goto LABEL_301;
          }

          v163 = 0;
          LOBYTE(v162) = 0;
          *(&v236 + 2 * v165 + 1) += *v167;
          v232[v165++] |= v168;
          *&v221 = --v135;
LABEL_301:
          ++v164;
          v167 += 2;
          if (SubTokensOfCompound == v164)
          {
            goto LABEL_240;
          }
        }

        if (*v167 == 1)
        {
          v169 = *(v166 + 2 * *(v167 - 1));
          if (v169 == 8217 || v169 == 39)
          {
            if (!v164)
            {
              goto LABEL_240;
            }

            if (v162)
            {
              --v165;
              ++*(&v236 + 2 * v165 + 1);
              v170 = v232[v165];
              if ((v170 & 0x20) == 0)
              {
                v232[v165] = v170 | 0x10000020;
              }

              LOBYTE(v162) = 0;
              *&v221 = --v135;
              v163 = 1;
              goto LABEL_301;
            }
          }
        }

        LOBYTE(v162) = 0;
        goto LABEL_300;
      }

LABEL_146:
      v98 = &v236 + 2 * *(&v221 + 1);
      v223 = *v98;
      v99 = v232[*(&v221 + 1)];
      *&v224 = v99;
      if ((v99 & 0x20) != 0)
      {
        v59 = *(&v223 + 1) + v223;
        v222[0] = *(&v223 + 1) + v223;
LABEL_176:
        v113 = *(&v221 + 1) + 1;
        goto LABEL_177;
      }

      v100 = *v98;
      v101 = *(&v236 + 2 * SubTokensOfCompound - 1) + *(&v236 + 2 * SubTokensOfCompound - 2);
      v222[0] = v101;
      if (*(&v221 + 1) >= SubTokensOfCompound)
      {
        v108 = v99;
        v59 = v101;
LABEL_175:
        *&v224 = v108 | v99;
        goto LABEL_176;
      }

      v102 = 0;
      v103 = 0;
      v104 = v225 + 2 * v222[1];
      v105 = &v204[2 * *(&v221 + 1)];
      v106 = 1;
      v107 = *(&v221 + 1);
      v108 = v99;
      while (1)
      {
        if ((v232[v107] & 0x10000020) != 0x20)
        {
          ++v102;
          v59 = *(v105 - 1);
          v109 = *v105;
          goto LABEL_165;
        }

        v59 = *(v105 - 1);
        if (v28 < 2)
        {
          break;
        }

        v109 = *v105;
        if (*v105 != 1)
        {
          v110 = v109 == 2 && BYTE1(v227) & (v222[2] + v222[1] == *(&v226 + 1));
          if (!v110 || *(v104 + 2 + 2 * v59) != 42)
          {
            break;
          }
        }

        v111 = *(v104 + 2 * v59);
        if ((v111 - 8208) >= 2 && v111 != 45 && v111 != 65293)
        {
          break;
        }

        v108 |= 0x10uLL;
        v36 = v214;
LABEL_165:
        v103 = v109 + v59;
        v106 = ++v107 < SubTokensOfCompound;
        v105 += 2;
        v32 = v232;
        if (SubTokensOfCompound == v107)
        {
          v59 = v101;
          v107 = SubTokensOfCompound;
          goto LABEL_170;
        }
      }

      v222[0] = *(v105 - 1);
      v36 = v214;
      v32 = v232;
LABEL_170:
      v33 = 1;
      if (v102 < 9)
      {
        v34 = 4294959088;
        v35 = 65293;
        goto LABEL_175;
      }

      if (v103 - v100 <= 63 && (v103 - v100) / v102 > 2)
      {
        if (v106)
        {
          v136 = v107;
        }

        else
        {
          v136 = SubTokensOfCompound - 1;
        }

        if ((v232[v136] & 0x20) != 0)
        {
          v34 = 4294959088;
          v35 = 65293;
          if (v28 < 2 || (v153 = &v236 + 2 * v136, v153[1] != 1) || (v154 = *(v225 + 2 * v222[1] + 2 * *v153), (v154 - 8208) >= 2) && (v154 != 45 ? (v155 = v154 == 65293) : (v155 = 1), !v155))
          {
            --v136;
          }
        }

        else
        {
          v34 = 4294959088;
          v35 = 65293;
        }

        v156 = 0;
        v157 = &v201[2 * v136];
        v113 = v136 - 7;
        v158 = &v200[v136];
        v159 = &v199[2 * *(&v221 + 1)];
        v160 = &v198[*(&v221 + 1)];
        do
        {
          v161 = *v160--;
          *v158-- = v161;
          *&v157[v156] = *&v159[v156];
          v156 -= 2;
        }

        while (v156 != -10);
      }

      else
      {
        *&v223 = v100;
        *(&v223 + 1) = v103 - v100;
        v113 = v102 + *(&v221 + 1);
        v34 = 4294959088;
        v35 = 65293;
      }

LABEL_177:
      *(&v221 + 1) = v113;
      if (v113)
      {
        goto LABEL_123;
      }

LABEL_178:
      v90 = v222[1];
      v91 = v222[2];
      v36[11] = v222[1];
      v36[12] = v91;
      v89 = v223;
LABEL_179:
      v114 = v225;
      v36[13] = *(&v220 + 1) - 1;
      v115 = (v114 + 2 * v90 + 2 * v89);
      v116 = v59 - v89;
      v117 = *v115;
      if ((v117 - 12441) <= 1)
      {
        if (!v116)
        {
          continue;
        }

        while (*v115 - 12441 <= 1)
        {
          ++v115;
          if (!--v116)
          {
            goto LABEL_16;
          }
        }
      }

      else if (v91 == 1 && (v117 & 0xF800 | 0x400) == 0xDC00)
      {
        continue;
      }

      break;
    }

    if (DWORD2(v224))
    {
      if (v210)
      {
        v118 = (v210)(v115, v116, 0, v213, 4294959088, 65293, 1, v232);
        v35 = 65293;
        v34 = 4294959088;
        v33 = 1;
        v32 = v232;
        v119 = v118;
        if (v118)
        {
          goto LABEL_218;
        }
      }

      else
      {
        v119 = 0;
      }

      goto LABEL_213;
    }

    v120 = v206;
    if ((v212 & 0x10) == 0 || ((v222[3] & 0x40001000) != 0 ? (v121 = v116 < 2) : (v121 = 1), v121))
    {
      if (v206)
      {
        v119 = (v206)(v115, v116, v224, v213, 4294959088, 65293, 1, v232);
      }

      else
      {
        v119 = 0;
      }

      goto LABEL_196;
    }

    v131 = 0;
    v132 = 0;
    while (1)
    {
      v133 = &v115[v131];
      if ((*v133 & 0xFC00) == 0xD800)
      {
        break;
      }

      if (v120)
      {
        v134 = 1;
        goto LABEL_229;
      }

LABEL_230:
      v132 = 0;
LABEL_231:
      if (++v131 >= v116 || (v132 & 1) != 0)
      {
        goto LABEL_233;
      }
    }

    if (++v131 < v116 && (v115[v131] & 0xFC00) == 0xDC00)
    {
      if (v120)
      {
        v134 = 2;
LABEL_229:
        v132 = (v120)(v133, v134, v224, v213, v34, v35, v33, v32);
        goto LABEL_231;
      }

      goto LABEL_230;
    }

LABEL_233:
    if (v132)
    {
      v119 = v132;
    }

    else
    {
      v119 = 0;
    }

    if (v132)
    {
LABEL_196:
      v36 = v214;
      goto LABEL_197;
    }

    v36 = v214;
    if (v210)
    {
      v119 = (v210)(v115, v116, 3, v213);
    }

LABEL_197:
    if (!v209)
    {
LABEL_212:
      v32 = v232;
      v33 = 1;
      v34 = 4294959088;
      v35 = 65293;
      if (v119)
      {
        goto LABEL_218;
      }

      goto LABEL_213;
    }

    if (v219 < 128)
    {
      v122 = (v115 - v225) >> 1;
      if (v219)
      {
        v123 = *(&v215[v219 - 1] + 1) + *&v215[v219 - 1];
        if (v123 < v122)
        {
          handle_missing_punctuation(v225, v123, (v115 - v225) >> 1, sentenceTokenizerMissingPunctuation, v215, 1);
        }
      }
    }

    else
    {
      v209(v225, v215, v207);
      v219 = 0;
      v122 = (v115 - v225) >> 1;
    }

    if (v116)
    {
      v217 = v122;
      v218 = v116;
      v124 = &v215[v219];
      *v124 = v122;
      v124[1] = v116;
      v207[v219++] = v224;
    }

    v125 = &v115[v116];
    if (v125 >= v225 + 2 * v205)
    {
      goto LABEL_210;
    }

    v126 = *v125;
    switch(v126)
    {
      case 9:
        goto LABEL_210;
      case 8200:
        goto LABEL_210;
      case 12288:
        goto LABEL_210;
    }

    Predefined = CFCharacterSetGetPredefined(kCFCharacterSetNewline);
    if (CFCharacterSetIsCharacterMember(Predefined, v126))
    {
      goto LABEL_210;
    }

    if (*(&v221 + 1) != v221)
    {
LABEL_211:
      v36 = v214;
      goto LABEL_212;
    }

    v32 = v232;
    v33 = 1;
    v34 = 4294959088;
    v35 = 65293;
    if (*(&v220 + 1) < v220)
    {
      v147 = v225 + 2 * *&v241[*(&v220 + 1)];
      if (v125 < v147)
      {
        v148 = *(&v241[*(&v220 + 1) - 1] + 1) + *&v241[*(&v220 + 1) - 1];
        v149 = 2 * v148 + 2;
        while (1)
        {
          v150 = *v125;
          if (v150 == 9 || v150 == 8200)
          {
            break;
          }

          if (v150 == 12288)
          {
            break;
          }

          v152 = CFCharacterSetGetPredefined(kCFCharacterSetNewline);
          if (CFCharacterSetIsCharacterMember(v152, v150))
          {
            break;
          }

          ++v148;
          v125 = (v225 + v149);
          v149 += 2;
          if (v225 + 2 * v148 >= v147)
          {
            goto LABEL_211;
          }
        }

LABEL_210:
        (v209)(v225, v215, v207, v219, v213);
        v219 = 0;
        goto LABEL_211;
      }
    }

    v36 = v214;
    if ((v119 & 1) == 0)
    {
LABEL_213:
      if (v36[1] == v211 && v221 == *(&v221 + 1) && *(&v220 + 1) < v220)
      {
        v128 = &v241[*(&v220 + 1)];
        v129 = *(v128 - 1) + *(v128 - 2);
        if (v129 < *v128)
        {
          v130 = handle_missing_punctuation(v225, v129, *v128, v206, v213, 0);
          v35 = 65293;
          v34 = 4294959088;
          v33 = 1;
          v32 = v232;
          v119 = v130;
        }
      }
    }

LABEL_218:
    if ((v119 & 1) == 0)
    {
      if ((v119 & 2) != 0 && !DWORD2(v224))
      {
        v222[3] &= ~0x400uLL;
      }

      continue;
    }

    break;
  }

LABEL_334:
  v179 = v203;
  v180 = v205;
  if (v209)
  {
    v181 = v219;
    if (v219)
    {
      if (v219 <= 127)
      {
        v182 = *(&v215[v219 - 1] + 1) + *&v215[v219 - 1];
        v183 = v225;
        if (v182 < v205)
        {
          handle_missing_punctuation(v225, v182, v205, sentenceTokenizerMissingPunctuation, v215, 1);
          v183 = v225;
          v181 = v219;
        }

        (v209)(v183, v215, v207, v181, v213);
        v219 = 0;
      }
    }
  }

LABEL_351:
  if (v179)
  {
    v179(v225, v180, v213);
  }

  if (v226)
  {
    CFRelease(v226);
  }

  if (*(&v225 + 1))
  {
    free(*(&v225 + 1));
  }
}

uint64_t _CITokenizerGetQueryTokensStart(uint64_t result, uint64_t a2, void *a3)
{
  a3[5] = result;
  a3[2] = result;
  a3[3] = result + 2 * a2;
  return result;
}

uint64_t _CITokenizerGetQueryTokens(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v5 = a1;
    if (*(a4 + 16) <= a1)
    {
      v6 = a2;
      v7 = *(a4 + 24);
      if (v7 > a1 && a1 + 2 * a2 <= v7)
      {
        v9 = (a1 - 2);
        v10 = *(a4 + 40);
        if (a1 - 2 >= v10)
        {
          while (1)
          {
            v11 = v9 - 1;
            if (*v9 != 42)
            {
              break;
            }

            --v9;
            if (v11 > v10 && *v11 == 92)
            {
              goto LABEL_14;
            }

            v5 -= 2;
            ++v6;
            if (v11 < v10)
            {
              v5 = (v11 + 1);
              goto LABEL_14;
            }
          }

          v5 = (v9 + 1);
        }

LABEL_14:
        v12 = *(a4 + 48);
        if (v12)
        {
          v13 = *(a4 + 32);
          v14 = (v13 + 2 * v12);
          if (v14 < v5)
          {
            v15 = v12 + 1;
            do
            {
              if (*v14 != 42)
              {
                break;
              }

              ++v14;
              *(a4 + 48) = v15++;
            }

            while (v14 < v5);
            v12 = v15 - 1;
          }

          v16 = v13 + 2 * v12;
          if (v16 == v5)
          {
            if (*(v16 - 2) == 42 && (v12 < 2 || *(v16 - 4) != 92))
            {
              *(a4 + 48) = v12 + v6;
              return 0;
            }
          }

          else
          {
            (*a4)();
            v12 = 0;
            v17 = *(a4 + 32) + 2 * *(a4 + 48);
            *(a4 + 32) = 0;
            *(a4 + 40) = v17;
            *(a4 + 48) = 0;
          }
        }

        v18 = (v5 + 2 * v6);
        if (*(v18 - 1) == 42 && (v6 < 2 || *(v18 - 2) != 92) || v18 < *(a4 + 24) && *v18 == 42)
        {
          v19 = *(a4 + 32);
          if (!v19)
          {
            *(a4 + 32) = v5;
            v19 = v5;
          }

          *(a4 + 40) = v19 + 2 * (v12 + v6);
          *(a4 + 48) = v12 + v6;
        }

        else
        {
          if (v12)
          {
            (*a4)(*(a4 + 32), v12, *(a4 + 8));
            v20 = *(a4 + 32) + 2 * *(a4 + 48);
            *(a4 + 32) = 0;
            *(a4 + 40) = v20;
            *(a4 + 48) = 0;
          }

          (*a4)(v5, v6, *(a4 + 8));
          *(a4 + 40) = v18;
        }
      }
    }
  }

  return 0;
}

uint64_t _CITokenizerGetQueryTokensEnd(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 48);
  if (v3)
  {
    return (*a3)(*(a3 + 32), v3, *(a3 + 8));
  }

  return result;
}

void CITokenizerGetTokensNew(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, uint64_t), uint64_t a10)
{
  v10 = MEMORY[0x28223BE20](a1);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = v10;
  bzero(&cf, 0x1810uLL);
  CITokenizerSetLocale(v25, v22, 0);
  _CITokenizerGetTokens(v25, *(v25 + 8), v24, &cf, v20, v18, v16, v14, v12, a9, 0, a10);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v27)
  {
    free(v27);
  }
}

void CITokenizerGetTokensTranscriptionsOptional(uint64_t a1, uint64_t a2, const __CFString *a3, int a4, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  CITokenizerSetLocale(a1, a3, 0);
  v20[0] = a8;
  v20[1] = 0;
  v20[2] = a9;
  v17 = a4 != 0;
  if (a4)
  {
    v18 = 3;
  }

  else
  {
    v18 = 2;
  }

  if (a5)
  {
    v17 = v18;
  }

  if (a6)
  {
    v19 = v17 | 0x20u;
  }

  else
  {
    v19 = v17;
  }

  CITokenizerGetTokensNew(a1, a2, a3, v19, a7, getTokensWrapper, getSubTokensWrapper, 0, 0, v20);
}

void CITokenizerGetTokens(uint64_t a1, uint64_t a2, const __CFString *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  CITokenizerSetLocale(a1, a3, 0);
  v13[0] = a6;
  v13[1] = a5;
  v13[2] = a7;
  CITokenizerGetTokensNew(a1, a2, a3, *(a1 + 32) & 0x18, getPreTokenizerCallback, getTokensWrapper, getSubTokensWrapper, 0, 0, v13);
}

uint64_t getPreTokenizerCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if (v3)
  {
    return v3(result, a2, *(a3 + 16));
  }

  return result;
}

_BYTE *CIDecomposeCFString(const __CFString *cf, _BYTE *a2, unint64_t a3, size_t a4)
{
  v21 = 0;
  v4 = a3 - a4;
  if (a3 < a4)
  {
    CIDecomposeCFString_cold_1();
  }

  if (!cf)
  {
    return 0;
  }

  v8 = CFGetTypeID(cf);
  if (v8 != CFStringGetTypeID())
  {
    return 0;
  }

  Length = CFStringGetLength(cf);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  CharactersPtr = CFStringGetCharactersPtr(cf);
  if (CharactersPtr)
  {
    v12 = CharactersPtr;
    v13 = 0;
    goto LABEL_8;
  }

  v14 = malloc_type_malloc(2 * Length, 0x1000040BDFB0063uLL);
  if (!v14)
  {
    return 0;
  }

  v12 = v14;
  v22.location = 0;
  v22.length = Length;
  CFStringGetCharacters(cf, v22, v14);
  v13 = v12;
LABEL_8:
  v15 = a2;
  if (MaximumSizeForEncoding >= v4)
  {
    v16 = malloc_type_malloc(MaximumSizeForEncoding + 1 + a4, 0x100004077774924uLL);
    v15 = v16;
    if (a2)
    {
      if (a4)
      {
        memcpy(v16, a2, a4);
      }
    }
  }

  if (v15)
  {
    v17 = utf8_encodestr(v12, 2 * Length, &v15[a4], &v21, MaximumSizeForEncoding + 1, 47, 4);
    if (v17)
    {
      v18 = v15;
    }

    else
    {
      v18 = 0;
    }

    if (v17)
    {
      v19 = 0;
    }

    else
    {
      v19 = v15;
    }
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

  free(v13);
  if (v18 && v18 != a2)
  {
    free(v18);
  }

  return v19;
}

uint64_t handle_missing_punctuation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a5, int a6)
{
  if (a2 >= a3)
  {
    return 0;
  }

  v9 = a2;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  do
  {
    v15 = *(a1 + 2 * v9);
    if (u_isUWhiteSpace(v15))
    {
      if (v14)
      {
        if (a4)
        {
          v11 = a4(a1 + 2 * v12, v14, v13, a5);
          v14 = 0;
          v13 = 0;
          v12 = 0;
          goto LABEL_19;
        }

        v14 = 0;
        v13 = 0;
        v12 = 0;
      }

      else
      {
        if (!a6)
        {
          goto LABEL_8;
        }

        if (a4)
        {
          v11 = a4(a1 + 2 * v12, 1, 2048, a5);
LABEL_8:
          v14 = 0;
          goto LABEL_19;
        }

        v14 = 0;
      }

      v11 = 0;
    }

    else
    {
      if (((1 << u_charType(v15)) & 0x30F80000) != 0)
      {
        v13 |= 0x20uLL;
      }

      if (!v14)
      {
        v12 = v9;
      }

      ++v14;
    }

LABEL_19:
    ++v9;
  }

  while (a3 != v9);
  if (v14)
  {
    result = 0;
  }

  else
  {
    result = v11;
  }

  if (v14 && a4)
  {

    return a4(a1 + 2 * v12, v14, v13, a5);
  }

  return result;
}

uint64_t sentenceTokenizerMissingPunctuation(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a4[387];
    if (v4 == -1)
    {
      v5 = 0;
    }

    else
    {
      v5 = a4[388] + v4;
    }

    a4[387] = v5;
    a4[388] = a2;
    if ((a3 & 0x800) == 0)
    {
      v6 = a4[389];
      if (v6 <= 127)
      {
        *&a4[2 * v6] = *(a4 + 387);
        a4[a4[389]++ + 258] = a3;
      }
    }
  }

  return 0;
}

_BYTE *fixPath(_BYTE *a1, _BYTE *a2)
{
  v2 = 0;
  v3 = a2;
  while (1)
  {
    v4 = *a1;
    if (v4 == 47)
    {
      v2 = 1;
      goto LABEL_10;
    }

    if (!*a1)
    {
      break;
    }

    if (v3 - a2 > 1022)
    {
      return 0;
    }

    if (v2)
    {
      *v3++ = 47;
      if (v3 - a2 > 1022)
      {
        return 0;
      }

      LOBYTE(v4) = *a1;
    }

    v2 = 0;
    *v3++ = v4;
LABEL_10:
    ++a1;
  }

  if (v3 == a2 && (v2 & 1) != 0)
  {
    *a2 = 47;
    v3 = a2 + 1;
  }

  *v3 = 0;
  return a2;
}

char *separate_path_parent_child(char *__source, char *__s)
{
  if (__s == __source)
  {
    v3 = strlen(__s);
  }

  else
  {
    v3 = strlcpy(__s, __source, 0x400uLL);
  }

  v4 = v3;
  if (v3 - 1 > 0x3FE)
  {
    return 0;
  }

  v5 = &__s[v3 - 1];
  if (*v5 != 47 || __s[v3])
  {
    v5 = strrchr(__s, 47);
  }

  if (!v5)
  {
    if (v4 <= 0x3FE)
    {
      v6 = __s + 1;
      memmove(__s + 1, __s, v4 + 1);
      *__s = 0;
      return v6;
    }

    return 0;
  }

  if (v5 == __s)
  {
    if (v4 <= 0x3FE)
    {
      memmove(v5 + 2, v5 + 1, v4);
      *__s = 47;
      return v5 + 2;
    }

    return 0;
  }

  *v5 = 0;
  return v5 + 1;
}

char *partial_path(_BYTE *a1, const char *a2, char *__dst)
{
  v3 = __dst;
  v4 = a2;
  v6 = *a1;
  if (*a1)
  {
    v7 = a1 + 1;
    while (v6 == *a2)
    {
      ++a2;
      v8 = *v7++;
      v6 = v8;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    v3 = 0;
    v9 = -v4;
  }

  else
  {
LABEL_5:
    v9 = &a2[-v4];
    if (a2 && v9 <= 0x3FF && ((v10 = &a1[v9], !*v10) && !*a2 || *(v10 - 1) == 47 || (v11 = *a2, ++a2, v11 == 47)))
    {
      v9 = strlcpy(__dst, a2, 0x400uLL);
    }

    else
    {
      v3 = 0;
    }
  }

  if (v9 <= 0x3FF)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

const char *combine_paths(const char *__source, const char *a2, char *__dst)
{
  if (__source)
  {
    v5 = __source;
    if (__source == __dst)
    {
      v6 = 0;
    }

    else
    {
      v6 = strlcpy(__dst, __source, 0x400uLL);
    }

    v7 = *a2;
    if (*a2)
    {
      if (*v5 != 47 || v5[1])
      {
        strlcat(__dst, "/", 0x400uLL);
        v7 = *a2;
      }

      if (v7 == 47)
      {
        v8 = a2 + 1;
      }

      else
      {
        v8 = a2;
      }

      v6 = strlcat(__dst, v8, 0x400uLL);
    }

    if (v6 <= 0x3FF)
    {
      return __dst;
    }

    else
    {
      return 0;
    }
  }

  return __source;
}

_BYTE *faccurate_realpath(int a1, _BYTE *a2)
{
  v2 = a2;
  if (fcntl(a1, 50, a2) < 0 || !*v2)
  {
    return 0;
  }

  return v2;
}

_BYTE *accurate_realpath(char *a1, _BYTE *a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = open(a1, 32772);
  if ((v4 & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  if (*__error() != 13)
  {
    return 0;
  }

  if (geteuid())
  {
    return 0;
  }

  memset(&v7, 0, sizeof(v7));
  if (md_stat_real(a1, &v7))
  {
    return 0;
  }

  if (!v7.st_uid)
  {
    return 0;
  }

  *v6 = 0;
  if (pthread_getugid_np(&v6[1], v6) || pthread_setugid_np(v7.st_uid, v7.st_gid))
  {
    return 0;
  }

  v4 = open(a1, 32772);
  if (pthread_setugid_np(v6[1], v6[0]))
  {
    accurate_realpath_cold_1();
  }

  if (v4 < 0)
  {
    return 0;
  }

LABEL_21:
  if (fcntl(v4, 50, a2) < 0 || !*a2)
  {
    a2 = 0;
  }

  close(v4);
  return a2;
}

uint64_t md_stat_real(char *a1, stat *a2)
{
  v4 = fstatat(-2, a1, a2, 512);
  if (!v4 || *__error() != 22)
  {
    return v4;
  }

  return fstatat(-2, a1, a2, 0);
}

_BYTE *accurate_realpath_nocred(const char *a1, _BYTE *a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = open(a1, 32772);
  if (v3 < 0)
  {
    return 0;
  }

  v4 = v3;
  if (fcntl(v3, 50, a2) < 0 || !*a2)
  {
    a2 = 0;
  }

  close(v4);
  return a2;
}

uint64_t device_for_path(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  memset(&v3, 0, sizeof(v3));
  bzero(__s, 0x400uLL);
  if (__strlcpy_chk() > 0x3FF)
  {
    return 0xFFFFFFFFLL;
  }

  while (md_stat_real(__s, &v3))
  {
    v1 = strrchr(__s, 47);
    if (!v1)
    {
      return 0xFFFFFFFFLL;
    }

    *v1 = 0;
  }

  return v3.st_dev;
}

char *device_subpath(char *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*a1 != 47)
  {
    return 0;
  }

  v1 = a1;
  memset(&v8, 0, sizeof(v8));
  if (md_stat_real(a1, &v8))
  {
    return 0;
  }

  st_dev = v8.st_dev;
  v5 = v9;
  bzero(v9, 0x400uLL);
  while (1)
  {
    v6 = strchr(v1, 47);
    if (!v6)
    {
      break;
    }

    v2 = v6 + 1;
    v7 = v6 + 1 - v1;
    memcpy(v5, v1, v7);
    v5 += v7;
    *v5 = 0;
    if (md_stat_real(v9, &v8))
    {
      return 0;
    }

    v1 = v2;
    if (v8.st_dev == st_dev)
    {
      return v2;
    }
  }

  return &v1[strlen(v1)];
}

uint64_t create_scratch_directory(char *a1, uid_t a2, gid_t a3, int a4)
{
  memset(&v10, 0, sizeof(v10));
  if (md_stat_real(a1, &v10))
  {
    goto LABEL_2;
  }

  v9 = v10.st_mode & 0xF000;
  if (v9 == 0x4000)
  {
    if ((v10.st_mode & 0x1FF) != a4)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (v9 != 0x8000)
  {
    return 0;
  }

  if (unlink(a1))
  {
    return 0xFFFFFFFFLL;
  }

LABEL_2:
  if (mkdir(a1, a4))
  {
    return 0xFFFFFFFFLL;
  }

LABEL_3:
  if (chmod(a1, a4))
  {
    return 0xFFFFFFFFLL;
  }

  if (chown(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t nosymlink_open(char *a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9)
{
  if ((a2 & 0x200) != 0)
  {
    v9 = a9;
  }

  else
  {
    v9 = 0;
  }

  return x_openat(-1, a1, a2 | 0x20000000u, a4, a5, a6, a7, a8, v9);
}

uint64_t x_openat(int a1, char *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9)
{
  if ((a3 & 0x200) != 0)
  {
    v12 = a9;
  }

  else
  {
    v12 = 0;
  }

  result = openat(a1, a2, a3, a4, a5, a6, a7, a8, v12);
  if (result == -1)
  {
    v14 = __error();
    result = 0xFFFFFFFFLL;
    if ((a3 & 0x20000000) != 0 && *v14 == 22)
    {
      return openat(a1, a2, a3 & 0xDFFFFFFF, v12);
    }
  }

  return result;
}

uint64_t nosymlink_mkdir(_BYTE *a1, uint64_t a2)
{
  v2 = a2;
  v4 = geteuid();
  v5 = getegid();

  return nosymlink_mkdir_chown(a1, v4, v5, v2);
}

uint64_t nosymlink_mkdir_chown(_BYTE *a1, uid_t a2, gid_t a3, mode_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  bzero(__s, 0x400uLL);
  fixed = fixPath(a1, __s);
  if (!fixed || (v9 = separate_path_parent_child(fixed, __s)) == 0)
  {
    v13 = 0xFFFFFFFFLL;
    v14 = 22;
LABEL_14:
    *__error() = v14;
    return v13;
  }

  v10 = v9;
  v11 = open(__s, 537952260);
  if ((v11 & 0x80000000) == 0)
  {
    v12 = v11;
    v13 = mkdirat(v11, v10, a4);
    if (_os_feature_enabled_impl())
    {
      if (v13)
      {
        goto LABEL_9;
      }

      v13 = fchmodat(v12, v10, a4, 2048);
      if (v13)
      {
        goto LABEL_9;
      }

      v13 = fchownat(v12, v10, a2, a3, 2048);
    }

    if (!v13)
    {
      v14 = 0;
      goto LABEL_13;
    }

LABEL_9:
    v14 = *__error();
LABEL_13:
    close(v12);
    goto LABEL_14;
  }

  return 0xFFFFFFFFLL;
}

uint64_t nosymlink_chown_chmod_directory(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v19 = *MEMORY[0x277D85DE8];
  bzero(v18, 0x400uLL);
  if (fixPath(a1, v18))
  {
    v8 = open(v18, 537952260);
    if ((v8 & 0x80000000) == 0)
    {
      v9 = v8;
      memset(&v17, 0, sizeof(v17));
      v10 = md_fstat_real(v8, &v17);
      if (v10)
      {
        v11 = v10;
LABEL_25:
        v15 = *__error();
LABEL_26:
        close(v9);
        *__error() = v15;
        return v11;
      }

      if (v6 == -1 || (st_uid = v17.st_uid, v17.st_uid == v6))
      {
        v11 = 0;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          nosymlink_chown_chmod_directory_cold_1(v18, st_uid);
        }

        v11 = fchown(v9, v6, 0xFFFFFFFF);
      }

      if (v5 != -1 && !v11)
      {
        st_gid = v17.st_gid;
        if (v17.st_gid == v5)
        {
          goto LABEL_20;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          nosymlink_chown_chmod_directory_cold_2(v18, st_gid);
        }

        v11 = fchown(v9, 0xFFFFFFFF, v5);
      }

      if (v11)
      {
        goto LABEL_25;
      }

LABEL_20:
      v14 = v17.st_mode & 0x1FF;
      if (v14 == v4)
      {
        v11 = 0;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          nosymlink_chown_chmod_directory_cold_3(v14);
        }

        v11 = fchmod(v9, v4);
        if (v11)
        {
          goto LABEL_25;
        }
      }

      v15 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    *__error() = 22;
  }

  return 0xFFFFFFFFLL;
}

uint64_t md_fstat_real(int a1, stat *a2)
{
  v4 = fstatat(a1, 0, a2, 1536);
  if (!v4 || *__error() != 22)
  {
    return v4;
  }

  return fstat(a1, a2);
}

uint64_t x_unlinkat(int a1, const char *a2, int a3)
{
  v6 = unlinkat(a1, a2, a3);
  if (!v6)
  {
    return v6;
  }

  v7 = __error();
  if ((a3 & 0x800) == 0 || *v7 != 22)
  {
    return v6;
  }

  return unlinkat(a1, a2, a3 & 0xFFFFF7FF);
}

uint64_t x_renamex_np(const char *a1, const char *a2, unsigned int a3)
{
  v6 = renamex_np(a1, a2, a3);
  if (!v6)
  {
    return v6;
  }

  v7 = __error();
  if ((a3 & 0x10) == 0 || *v7 != 22)
  {
    return v6;
  }

  return renamex_np(a1, a2, a3 & 0xFFFFFFEF);
}

uint64_t md_savedir(uint64_t a1, int *a2)
{
  *a2 = -1;
  memset(&v5, 0, sizeof(v5));
  if (md_fstat_real(a1, &v5))
  {
    return 0;
  }

  *a2 = open(".", 32772);
  if (!MEMORY[0x26D6817B0](a1))
  {
    return 1;
  }

  if ((*a2 & 0x80000000) == 0)
  {
    close(*a2);
  }

  result = 0;
  *a2 = -1;
  return result;
}

uint64_t md_resetdir(int a1)
{
  result = MEMORY[0x26D6817B0]();
  if ((a1 & 0x80000000) == 0)
  {

    return close(a1);
  }

  return result;
}

size_t md_fsgetpath_fast(char *a1, int a2, uint64_t a3)
{
  sprintf(a1, "/.vol/%llu/%llu", a2, a3);

  return strlen(a1);
}

uint64_t md_lstat_real(char *a1, stat *a2)
{
  v4 = fstatat(-2, a1, a2, 544);
  if (!v4 || *__error() != 22)
  {
    return v4;
  }

  return fstatat(-2, a1, a2, 32);
}

uint64_t x_fstatat(int a1, const char *a2, stat *a3, int a4)
{
  v8 = fstatat(a1, a2, a3, a4);
  if (!v8)
  {
    return v8;
  }

  v9 = __error();
  if ((a4 & 0x800) == 0 || *v9 != 22)
  {
    return v8;
  }

  return fstatat(a1, a2, a3, a4 & 0xFFFFF7FF);
}

uint64_t x_faccessat(int a1, const char *a2, int a3, int a4)
{
  v8 = faccessat(a1, a2, a3, a4);
  if (!v8)
  {
    return v8;
  }

  v9 = __error();
  if ((a4 & 0x800) == 0 || *v9 != 22)
  {
    return v8;
  }

  return faccessat(a1, a2, a3, a4 & 0xFFFFF7FF);
}

uint64_t x_fchownat(int a1, const char *a2, uid_t a3, gid_t a4, int a5)
{
  v10 = fchownat(a1, a2, a3, a4, a5);
  if (!v10)
  {
    return v10;
  }

  v11 = __error();
  if ((a5 & 0x800) == 0 || *v11 != 22)
  {
    return v10;
  }

  return fchownat(a1, a2, a3, a4, a5 & 0xFFFFF7FF);
}

uint64_t x_linkat(int a1, const char *a2, int a3, const char *a4, int a5)
{
  v10 = linkat(a1, a2, a3, a4, a5);
  if (!v10)
  {
    return v10;
  }

  v11 = __error();
  if ((a5 & 0x800) == 0 || *v11 != 22)
  {
    return v10;
  }

  return linkat(a1, a2, a3, a4, a5 & 0xFFFFF7FF);
}

uint64_t x_renameatx_np(int a1, const char *a2, int a3, const char *a4, unsigned int a5)
{
  v10 = renameatx_np(a1, a2, a3, a4, a5);
  if (!v10)
  {
    return v10;
  }

  v11 = __error();
  if ((a5 & 0x10) == 0 || *v11 != 22)
  {
    return v10;
  }

  return renameatx_np(a1, a2, a3, a4, a5 & 0xFFFFFFEF);
}

uint64_t x_getattrlist(const char *a1, void *a2, void *a3, size_t a4, unsigned int a5)
{
  v10 = getattrlist(a1, a2, a3, a4, a5);
  if (!v10)
  {
    return v10;
  }

  v11 = __error();
  if ((a5 & 0x800) == 0 || *v11 != 22)
  {
    return v10;
  }

  return getattrlist(a1, a2, a3, a4, a5 & 0xFFFFF7FF);
}

uint64_t x_getattrlistat(int a1, const char *a2, void *a3, void *a4, size_t a5, unint64_t a6)
{
  v12 = getattrlistat(a1, a2, a3, a4, a5, a6);
  if (!v12)
  {
    return v12;
  }

  v13 = __error();
  if ((a6 & 0x800) == 0 || *v13 != 22)
  {
    return v12;
  }

  return getattrlistat(a1, a2, a3, a4, a5, a6 & 0xFFFFFFFFFFFFF7FFLL);
}

uint64_t x2_openat(int a1, char *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9)
{
  v31 = *MEMORY[0x277D85DE8];
  if (x2_openat_onceToken != -1)
  {
    x2_openat_cold_1();
  }

  if (*a2 == 47)
  {
    v12 = 0;
    v13 = 47;
    while (v13 == a2[v12])
    {
      v13 = aSystemVolumesD_0[++v12];
      if (v12 == 37)
      {
LABEL_20:
        v14 = 1;
        goto LABEL_21;
      }
    }

    v15 = 0;
    v16 = 47;
    while (v16 == a2[v15])
    {
      v16 = aSystemVolumesD_1[++v15];
      if (v15 == 51)
      {
        goto LABEL_20;
      }
    }

    v17 = 0;
    v18 = 47;
    while (v18 == a2[v17])
    {
      v18 = aPrivateVarDbSp[++v17];
      if (v17 == 31)
      {
        goto LABEL_20;
      }
    }

    v19 = 0;
    v20 = 47;
    while (v20 == a2[v19])
    {
      v20 = aSystemVolumesD_2[++v19];
      if (v19 == 46)
      {
        goto LABEL_20;
      }
    }

    v26 = 0;
    v27 = 47;
    do
    {
      v28 = a2[v26];
      v14 = v27 == v28;
      if (v27 != v28)
      {
        break;
      }

      v27 = aPrivateVarDbSp_0[++v26];
    }

    while (v26 != 26);
  }

  else
  {
    v14 = 0;
  }

LABEL_21:
  if ((a3 & 0x400) != 0)
  {
    v21 = a3 & 0xDFFFFBFF | 0x20000000;
  }

  else
  {
    v21 = a3 | 0x20000000;
  }

  if ((v21 & 0x200) != 0)
  {
    v22 = a9;
  }

  else
  {
    v22 = 0;
  }

  v23 = x_openat(a1, a2, v21, a4, a5, a6, a7, a8, v22);
  v24 = v23;
  if ((v23 & 0x80000000) == 0)
  {
    memset(&v29, 0, sizeof(v29));
    if (fstat(v23, &v29) || v29.st_nlink != 1 || (bzero(&v30, 0x878uLL), !v14) && (fstatfs(v24, &v30) || *&v30.f_fsid == x2_openat_sBootFSID || *&v30.f_fsid == x2_openat_sDataFSID))
    {
      close(v24);
      *__error() = 1;
      return 0xFFFFFFFFLL;
    }

    else if ((a3 & 0x400) != 0)
    {
      ftruncate(v24, 0);
    }
  }

  return v24;
}

uint64_t __x2_openat_block_invoke()
{
  v2 = *MEMORY[0x277D85DE8];
  bzero(&v1, 0x878uLL);
  statfs("/", &v1);
  x2_openat_sBootFSID = v1.f_fsid;
  result = statfs("/System/Volumes/Data", &v1);
  x2_openat_sDataFSID = v1.f_fsid;
  return result;
}

void OUTLINED_FUNCTION_1_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0x18u);
}

void *SILexiconCacheCreateWithOptions(const __CFDictionary *a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x1020040D836DF85uLL);
  if (v2)
  {
    Value = *MEMORY[0x277CBED10];
    if (a1)
    {
      v4 = @"forceLoad";
      if (CFDictionaryContainsKey(a1, @"forceLoad") || (v4 = @"forTesting", CFDictionaryContainsKey(a1, @"forTesting")))
      {
        Value = CFDictionaryGetValue(a1, v4);
      }

      v5 = CFDictionaryGetValue(a1, @"shouldCacheResources");
      v6 = CFDictionaryGetValue(a1, @"shouldFilter");
      v7 = *MEMORY[0x277CBED28];
    }

    else
    {
      v7 = *MEMORY[0x277CBED28];
      v5 = *MEMORY[0x277CBED28];
      v6 = *MEMORY[0x277CBED28];
    }

    v2[1] = SILocalizationCreateWithOptions(a1);
    *(v2 + 17) = v5 == v7;
    *(v2 + 16) = v6 == v7;
    *(v2 + 18) = Value == v7;
    atomic_store(0, v2);
    atomic_fetch_add(v2, 1u);
  }

  return v2;
}

atomic_uint *SILexiconCacheRetain(atomic_uint *result)
{
  if (result)
  {
    atomic_fetch_add(result, 1u);
  }

  return result;
}

void SILexiconCacheLoad(uint64_t a1, const __CFLocale *a2, uint64_t a3)
{
  v27 = 0;
  v28 = &v27;
  v29 = 0x2000000000;
  v30 = 0;
  if (logger(void)::token != -1)
  {
    SILexiconCacheLoad_cold_1();
  }

  v6 = os_signpost_id_generate(logger(void)::log);
  if (logger(void)::token != -1)
  {
    SILexiconCacheLoad_cold_1();
  }

  v7 = v6 - 1;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = logger(void)::log;
    if (os_signpost_enabled(logger(void)::log))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_26B7AA000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "SILexiconCacheLoad", "", buf, 2u);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __SILexiconCacheLoad_block_invoke;
  block[3] = &unk_279D02EA0;
  block[4] = &v27;
  if (SILexiconCacheLoad::onceToken != -1)
  {
    dispatch_once(&SILexiconCacheLoad::onceToken, block);
    if (a2)
    {
      goto LABEL_10;
    }

LABEL_12:
    LanguageID = 0u;
    goto LABEL_13;
  }

  if (!a2)
  {
    goto LABEL_12;
  }

LABEL_10:
  LanguageID = SILanguagesGetLanguageID(a2);
LABEL_13:
  v10 = atomic_load(&sLexiconsLoaded[LanguageID]);
  if ((v10 & 1) != 0 || (atomic_store(1u, &sLexiconsLoaded[LanguageID]), LanguageID < 2) || LanguageID >= 59)
  {
    if (logger(void)::token != -1)
    {
      SILexiconCacheLoad_cold_1();
    }

    if (v7 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v11 = logger(void)::log;
      if (os_signpost_enabled(logger(void)::log))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_26B7AA000, v11, OS_SIGNPOST_INTERVAL_END, v6, "SILexiconCacheLoad", "", buf, 2u);
      }
    }

    (*(a3 + 16))(a3, v28[3]);
    v12 = v28[3];
    if (v12)
    {
      CFRelease(v12);
    }
  }

  else
  {
    v13 = dispatch_group_create();
    v14 = v13;
    if (*(a1 + 18))
    {
      dispatch_group_enter(v13);
      v15 = *(a1 + 8);
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 0x40000000;
      v24[2] = __SILexiconCacheLoad_block_invoke_17;
      v24[3] = &unk_279D02EC8;
      v24[4] = &v27;
      v24[5] = a2;
      v24[6] = v14;
      SILocalizationLoad(v15, a2, v24);
      dispatch_group_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
      if (!v28[3])
      {
        Lexicon = createLexicon(a2);
        StaticLexicon = createStaticLexicon(a2);
        os_unfair_lock_lock(&sLexiconLock);
        sDynamicLexicons[LanguageID] = Lexicon;
        sLexicons[LanguageID] = StaticLexicon;
        os_unfair_lock_unlock(&sLexiconLock);
      }

      if (logger(void)::token != -1)
      {
        SILexiconCacheLoad_cold_1();
      }

      if (v7 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v18 = logger(void)::log;
        if (os_signpost_enabled(logger(void)::log))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_26B7AA000, v18, OS_SIGNPOST_INTERVAL_END, v6, "SILexiconCacheLoad", "", buf, 2u);
        }
      }

      (*(a3 + 16))(a3, v28[3]);
      dispatch_release(v14);
      v19 = v28[3];
      if (v19)
      {
        CFRelease(v19);
      }
    }

    else
    {
      CFRetain(a2);
      dispatch_group_enter(v14);
      v20 = *(a1 + 8);
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 0x40000000;
      v22[2] = __SILexiconCacheLoad_block_invoke_23;
      v22[3] = &unk_279D02F10;
      v22[4] = &v27;
      v22[5] = a2;
      v22[6] = v14;
      v23 = LanguageID;
      SILocalizationLoad(v20, a2, v22);
      if (getRefreshQueue(void)::onceRefQueueToken != -1)
      {
        SILexiconCacheLoad_cold_4();
      }

      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 0x40000000;
      v21[2] = __SILexiconCacheLoad_block_invoke_3;
      v21[3] = &unk_279D02F38;
      v21[4] = a3;
      v21[5] = &v27;
      v21[6] = v6;
      v21[7] = v14;
      dispatch_group_notify(v14, getRefreshQueue(void)::gRefQueue, v21);
    }
  }

  _Block_object_dispose(&v27, 8);
}

void __SILexiconCacheLoad_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  OptionsDictionary = SIGeneralTrieCreateOptionsDictionary(1, 64, 0, 0, 0);
  sCache = SIGeneralTrieCreateMutableWithDictionary(OptionsDictionary);
  if (OptionsDictionary)
  {
    CFRelease(OptionsDictionary);
  }

  v2 = SIGeneralTrieCreateOptionsDictionary(2, 64, 0, 0, 0);
  sTypes = SIGeneralTrieCreateMutableWithDictionary(v2);
  if (v2)
  {
    CFRelease(v2);
  }

  sOVSLexicon = LXCreateWordModerationLexicon();
  for (i = 0; i != 59; ++i)
  {
    sDynamicLexicons[i] = 0;
    atomic_store(0, &sLexiconsLoaded[i]);
    sLexicons[i] = 0;
  }
}

void __SILexiconCacheLoad_block_invoke_17(uint64_t a1, uint64_t a2)
{
  userInfoKeys[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = *MEMORY[0x277CBECE8];
    v4 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"SILexiconCache: could not load localization for locale (%@)", *(a1 + 40));
    if (v4)
    {
      v5 = v4;
      v6 = *MEMORY[0x277CBEE30];
      userInfoValues = v4;
      userInfoKeys[0] = v6;
      *(*(*(a1 + 32) + 8) + 24) = CFErrorCreateWithUserInfoKeysAndValues(v3, @"SpotlightLinguisticsErrorDomain", 1, userInfoKeys, &userInfoValues, 1);
      CFRelease(v5);
    }
  }

  dispatch_group_leave(*(a1 + 48));
}

uint64_t createLexicon(const __CFLocale *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  LanguageID = SILanguagesGetLanguageID(a1);
  Current = CFAbsoluteTimeGetCurrent();
  if (logger(void)::token != -1)
  {
    createLexicon();
  }

  v4 = logger(void)::log;
  if (os_log_type_enabled(logger(void)::log, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v16 = LanguageID;
    _os_log_impl(&dword_26B7AA000, v4, OS_LOG_TYPE_INFO, "Creating lexicon for language ID %d", buf, 8u);
    if (logger(void)::token != -1)
    {
      SILexiconCacheLoad_cold_1();
    }
  }

  v5 = os_signpost_id_make_with_pointer(logger(void)::log, a1);
  if (logger(void)::token != -1)
  {
    SILexiconCacheLoad_cold_1();
  }

  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = logger(void)::log;
    if (os_signpost_enabled(logger(void)::log))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_26B7AA000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v5, "LexResources", "start creating lexicon resources", buf, 2u);
    }
  }

  v7 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, *MEMORY[0x277D23168], a1);
  v9 = CFStringCreateWithFormat(v7, 0, @"lm_seed_%d", LanguageID);
  CFDictionarySetValue(Mutable, *MEMORY[0x277D23178], v9);
  Transient = LXLexiconCreateTransient();
  CFRelease(v9);
  CFRelease(Mutable);
  if (logger(void)::token != -1)
  {
    SILexiconCacheLoad_cold_1();
  }

  v11 = logger(void)::log;
  if (os_log_type_enabled(logger(void)::log, OS_LOG_TYPE_INFO))
  {
    v12 = CFAbsoluteTimeGetCurrent();
    *buf = 67109376;
    v16 = LanguageID;
    v17 = 2048;
    v18 = v12 - Current;
    _os_log_impl(&dword_26B7AA000, v11, OS_LOG_TYPE_INFO, "Created lexicon for language ID %d <%f s>", buf, 0x12u);
    if (logger(void)::token != -1)
    {
      SILexiconCacheLoad_cold_1();
    }
  }

  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v13 = logger(void)::log;
    if (os_signpost_enabled(logger(void)::log))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_26B7AA000, v13, OS_SIGNPOST_INTERVAL_END, v5, "LexResources", "", buf, 2u);
    }
  }

  return Transient;
}

uint64_t createStaticLexicon(const __CFLocale *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  Value = CFLocaleGetValue(a1, *MEMORY[0x277CBEE98]);
  RegionID = SILanguagesGetRegionID(Value);
  LanguageID = SILanguagesGetLanguageID(a1);
  Current = CFAbsoluteTimeGetCurrent();
  if (logger(void)::token != -1)
  {
    createLexicon();
  }

  v6 = logger(void)::log;
  if (os_log_type_enabled(logger(void)::log, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v24 = LanguageID;
    _os_log_impl(&dword_26B7AA000, v6, OS_LOG_TYPE_INFO, "Creating lexicon for language ID %d", buf, 8u);
    if (logger(void)::token != -1)
    {
      SILexiconCacheLoad_cold_1();
    }
  }

  v7 = os_signpost_id_make_with_pointer(logger(void)::log, a1);
  if (logger(void)::token != -1)
  {
    SILexiconCacheLoad_cold_1();
  }

  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = logger(void)::log;
    if (os_signpost_enabled(logger(void)::log))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_26B7AA000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v7, "LexResources", "start creating lexicon resources", buf, 2u);
    }
  }

  v9 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v11 = SILanguagesCopyLocaleIdentifier(LanguageID, RegionID);
  v12 = CFLocaleCreate(v9, v11);
  v13 = *MEMORY[0x277D23168];
  if (v12)
  {
    v14 = v12;
    CFDictionarySetValue(Mutable, *MEMORY[0x277D23168], v12);
    CFRelease(v14);
  }

  else
  {
    Locale = SILanguagesGetLocale(LanguageID);
    CFDictionarySetValue(Mutable, v13, Locale);
  }

  cf = 0;
  v16 = LXLexiconCreate();
  CFRelease(Mutable);
  if (v16)
  {
    if (logger(void)::token != -1)
    {
      SILexiconCacheLoad_cold_1();
    }

    v17 = logger(void)::log;
    if (os_log_type_enabled(logger(void)::log, OS_LOG_TYPE_INFO))
    {
      v18 = CFAbsoluteTimeGetCurrent();
      *buf = 67109376;
      v24 = LanguageID;
      v25 = 2048;
      v26 = v18 - Current;
      _os_log_impl(&dword_26B7AA000, v17, OS_LOG_TYPE_INFO, "Created System lexicon for language ID %d <%f s>", buf, 0x12u);
    }
  }

  else
  {
    if (logger(void)::token != -1)
    {
      SILexiconCacheLoad_cold_1();
    }

    v19 = logger(void)::log;
    if (os_log_type_enabled(logger(void)::log, OS_LOG_TYPE_ERROR))
    {
      createStaticLexicon(&cf, LanguageID, v19);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (logger(void)::token != -1)
  {
    SILexiconCacheLoad_cold_1();
  }

  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v20 = logger(void)::log;
    if (os_signpost_enabled(logger(void)::log))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_26B7AA000, v20, OS_SIGNPOST_INTERVAL_END, v7, "LexResources", "", buf, 2u);
    }
  }

  return v16;
}

void __SILexiconCacheLoad_block_invoke_23(uint64_t a1, uint64_t a2)
{
  userInfoKeys[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = *MEMORY[0x277CBECE8];
    v4 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"SILexiconCache: could not load localization for locale (%@)", *(a1 + 40));
    if (v4)
    {
      v5 = v4;
      v6 = *MEMORY[0x277CBEE30];
      userInfoValues = v4;
      userInfoKeys[0] = v6;
      *(*(*(a1 + 32) + 8) + 24) = CFErrorCreateWithUserInfoKeysAndValues(v3, @"SpotlightLinguisticsErrorDomain", 1, userInfoKeys, &userInfoValues, 1);
      CFRelease(v5);
    }

    CFRelease(*(a1 + 40));
  }

  else
  {
    dispatch_group_enter(*(a1 + 48));
    if (getLexiconQueue(void)::onceLexQueueToken != -1)
    {
      __SILexiconCacheLoad_block_invoke_23_cold_1();
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __SILexiconCacheLoad_block_invoke_2;
    block[3] = &__block_descriptor_tmp_24;
    v9 = *(a1 + 56);
    v8 = *(a1 + 40);
    dispatch_async(getLexiconQueue(void)::gLexQueue, block);
  }

  dispatch_group_leave(*(a1 + 48));
}

void __SILexiconCacheLoad_block_invoke_2(uint64_t a1)
{
  Lexicon = createLexicon(*(a1 + 32));
  StaticLexicon = createStaticLexicon(*(a1 + 32));
  os_unfair_lock_lock(&sLexiconLock);
  v4 = *(a1 + 48);
  sDynamicLexicons[v4] = Lexicon;
  sLexicons[v4] = StaticLexicon;
  os_unfair_lock_unlock(&sLexiconLock);
  CFRelease(*(a1 + 32));
  v5 = *(a1 + 40);

  dispatch_group_leave(v5);
}

void __SILexiconCacheLoad_block_invoke_3(uint64_t a1)
{
  if (logger(void)::token != -1)
  {
    createLexicon();
  }

  v2 = *(a1 + 48);
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = logger(void)::log;
    if (os_signpost_enabled(logger(void)::log))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&dword_26B7AA000, v3, OS_SIGNPOST_INTERVAL_END, v2, "SILexiconCacheLoad", "", v5, 2u);
    }
  }

  (*(*(a1 + 32) + 16))();
  dispatch_release(*(a1 + 56));
  v4 = *(*(*(a1 + 40) + 8) + 24);
  if (v4)
  {
    CFRelease(v4);
  }
}

void SILexiconCacheRefresh(uint64_t a1, CFArrayRef theArray, uint64_t a3)
{
  v16 = a3;
  v21 = *MEMORY[0x277D85DE8];
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    MEMORY[0x28223BE20](Count);
    v7 = (&block[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    bzero(v7, v6);
    v22.location = 0;
    v22.length = Count;
    CFArrayGetValues(theArray, v22, v7);
  }

  else
  {
    Count = 0;
    v7 = &v20;
  }

  v8 = dispatch_group_create();
  v9 = malloc_type_calloc(0x3BuLL, 1uLL, 0x100004077774924uLL);
  v10 = malloc_type_calloc(0x3BuLL, 1uLL, 0x100004077774924uLL);
  if (Count >= 1)
  {
    do
    {
      Locale = *v7;
      v12 = CFGetTypeID(*v7);
      if (v12 != CFLocaleGetTypeID())
      {
        v13 = CFGetTypeID(Locale);
        if (v13 == CFStringGetTypeID())
        {
          LanguageIDForIdentifier = SILanguagesGetLanguageIDForIdentifier(Locale);
          Locale = SILanguagesGetLocale(LanguageIDForIdentifier);
        }

        else
        {
          Locale = 0;
        }
      }

      LanguageID = SILanguagesGetLanguageID(Locale);
      dispatch_group_enter(v8);
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 0x40000000;
      v18[2] = __SILexiconCacheRefresh_block_invoke;
      v18[3] = &__block_descriptor_tmp_27;
      v19 = LanguageID;
      v18[4] = v9;
      v18[5] = v10;
      v18[6] = v8;
      SILexiconCacheLoad(a1, Locale, v18);
      ++v7;
      --Count;
    }

    while (Count);
  }

  if (getRefreshQueue(void)::onceRefQueueToken != -1)
  {
    SILexiconCacheLoad_cold_4();
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __SILexiconCacheRefresh_block_invoke_2;
  block[3] = &unk_279D02F80;
  block[4] = v16;
  block[5] = v9;
  block[6] = v10;
  block[7] = v8;
  dispatch_group_notify(v8, getRefreshQueue(void)::gRefQueue, block);
}

void __SILexiconCacheRefresh_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  *(*(a1 + 32) + v2) = 1;
  if (a2)
  {
    *(*(a1 + 40) + v2) = 1;
  }

  dispatch_group_leave(*(a1 + 48));
}

void __SILexiconCacheRefresh_block_invoke_2(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  userInfoKeys[1] = *MEMORY[0x277D85DE8];
  do
  {
    if (*(*(a1 + 40) + v2) == 1)
    {
      v3 |= *(*(a1 + 48) + v2);
    }

    else
    {
      os_unfair_lock_lock(&sLexiconLock);
      v4 = sDynamicLexicons[v2];
      if (v4)
      {
        CFRelease(v4);
        sDynamicLexicons[v2] = 0;
      }

      v5 = sLexicons[v2];
      if (v5)
      {
        CFRelease(v5);
        sLexicons[v2] = 0;
      }

      atomic_store(0, &sLexiconsLoaded[v2]);
      os_unfair_lock_unlock(&sLexiconLock);
    }

    ++v2;
  }

  while (v2 != 59);
  if ((v3 & 1) != 0 && (v6 = *MEMORY[0x277CBECE8], (v7 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"SILexiconCache: error loading locales")) != 0))
  {
    v8 = v7;
    v9 = *MEMORY[0x277CBEE30];
    userInfoValues = v7;
    userInfoKeys[0] = v9;
    v10 = CFErrorCreateWithUserInfoKeysAndValues(v6, @"SpotlightLinguisticsErrorDomain", 1, userInfoKeys, &userInfoValues, 1);
    CFRelease(v8);
  }

  else
  {
    v10 = 0;
  }

  (*(*(a1 + 32) + 16))();
  if (v10)
  {
    CFRelease(v10);
  }

  free(*(a1 + 40));
  free(*(a1 + 48));
  dispatch_release(*(a1 + 56));
}

BOOL SILexiconCacheIsAvailable(uint64_t a1, const __CFLocale *a2)
{
  LanguageID = SILanguagesGetLanguageID(a2);
  if (LanguageID - 59) >= 0xFFFFFFC7 && (v3 = atomic_load(&sLexiconsLoaded[LanguageID]), (v3) && sLexicons[LanguageID])
  {
    return sOVSLexicon != 0;
  }

  else
  {
    return 0;
  }
}

void SILexiconCacheRelease(void *a1)
{
  if (a1 && atomic_fetch_add(a1, 0xFFFFFFFF) == 1)
  {
    v2 = a1[1];
    if (v2)
    {
      SILocalizationRelease(v2);
    }

    free(a1);
  }
}

uint64_t SILexiconCacheContainsTokenIDInString(uint64_t a1, const __CFLocale *a2, CFStringRef theString, unsigned int *a4, unsigned int *a5, void *a6)
{
  v19[1] = *MEMORY[0x277D85DE8];
  if (!theString)
  {
    return 0;
  }

  Length = CFStringGetLength(theString);
  result = 0;
  v19[0] = Length;
  if (a1 && a2 && Length)
  {
    if (SILanguagesGetLanguageID(a2) - 59 < 0xFFFFFFC7)
    {
      return 0;
    }

    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v15 = MEMORY[0x28223BE20](MaximumSizeForEncoding);
    v17 = v19 - v16;
    bzero(v19 - v16, v15 + 1);
    v20.location = 0;
    v20.length = Length;
    CFStringGetBytes(theString, v20, 0x8000100u, 0x2Du, 0, v17, MaximumSizeForEncoding, v19);
    v18 = v19[0];
    v17[v19[0]] = 0;
    return SILexiconCacheContainsTokenID(a1, a2, v17, v18, a4, a5, a6);
  }

  return result;
}

uint64_t SILexiconCacheContainsTokenID(uint64_t a1, const __CFLocale *a2, void *a3, unsigned int a4, unsigned int *a5, unsigned int *a6, void *a7)
{
  result = 0;
  if (a3 && a1 && a2 && a4)
  {
    LanguageID = SILanguagesGetLanguageID(a2);
    if ((LanguageID - 59) < 0xFFFFFFC7)
    {
      return 0;
    }

    v15 = LanguageID;
    v33 = 0;
    v39 = 0;
    os_unfair_lock_lock(&sCacheLock);
    if (sCache)
    {
      std::to_string(&v35, v15);
      v16 = std::string::append(&v35, ":");
      v17 = *&v16->__r_.__value_.__l.__data_;
      v36.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
      *&v36.__r_.__value_.__l.__data_ = v17;
      v16->__r_.__value_.__l.__size_ = 0;
      v16->__r_.__value_.__r.__words[2] = 0;
      v16->__r_.__value_.__r.__words[0] = 0;
      std::string::basic_string[abi:ne200100](&__p, a3, a4);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      v20 = std::string::append(&v36, p_p, size);
      v21 = *&v20->__r_.__value_.__l.__data_;
      v38 = v20->__r_.__value_.__r.__words[2];
      *v37 = v21;
      v20->__r_.__value_.__l.__size_ = 0;
      v20->__r_.__value_.__r.__words[2] = 0;
      v20->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v36.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v35.__r_.__value_.__l.__data_);
      }

      if (v38 >= 0)
      {
        v22 = v37;
      }

      else
      {
        v22 = v37[0];
      }

      if (v38 >= 0)
      {
        v23 = HIBYTE(v38);
      }

      else
      {
        v23 = LODWORD(v37[1]);
      }

      SIGeneralTrieContainsKey(sCache, v22, v23, &v39, &v33);
      if (SHIBYTE(v38) < 0)
      {
        operator delete(v37[0]);
      }
    }

    os_unfair_lock_unlock(&sCacheLock);
    v24 = v39;
    if (v39)
    {
      v39 = 0;
      os_unfair_lock_lock(&sCacheLock);
      if (sTypes)
      {
        std::to_string(&v35, v24);
        v25 = std::string::append(&v35, ":");
        v26 = *&v25->__r_.__value_.__l.__data_;
        v36.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
        *&v36.__r_.__value_.__l.__data_ = v26;
        v25->__r_.__value_.__l.__size_ = 0;
        v25->__r_.__value_.__r.__words[2] = 0;
        v25->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&__p, v15);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v27 = &__p;
        }

        else
        {
          v27 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v28 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v28 = __p.__r_.__value_.__l.__size_;
        }

        v29 = std::string::append(&v36, v27, v28);
        v30 = *&v29->__r_.__value_.__l.__data_;
        v38 = v29->__r_.__value_.__r.__words[2];
        *v37 = v30;
        v29->__r_.__value_.__l.__size_ = 0;
        v29->__r_.__value_.__r.__words[2] = 0;
        v29->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v36.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v35.__r_.__value_.__l.__data_);
        }

        if (v38 >= 0)
        {
          v31 = v37;
        }

        else
        {
          v31 = v37[0];
        }

        if (v38 >= 0)
        {
          v32 = HIBYTE(v38);
        }

        else
        {
          v32 = LODWORD(v37[1]);
        }

        SIGeneralTrieContainsKey(sTypes, v31, v32, &v39, 0);
        if (SHIBYTE(v38) < 0)
        {
          operator delete(v37[0]);
        }
      }

      os_unfair_lock_unlock(&sCacheLock);
      if (a5)
      {
        *a5 = v24;
      }

      if (a6)
      {
        *a6 = v39;
      }

      if (a7)
      {
        *a7 = v33;
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_26B7C59A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SILexiconCacheSetTokenIDInString(CFIndex result, const __CFLocale *a2, CFStringRef theString, double a4, uint64_t a5, uint64_t a6)
{
  v19[1] = *MEMORY[0x277D85DE8];
  if (theString)
  {
    Length = CFStringGetLength(theString);
    v19[0] = Length;
    if (result)
    {
      if (a2)
      {
        v13 = Length;
        if (Length)
        {
          if (SILanguagesGetLanguageID(a2) - 59 >= 0xFFFFFFC7)
          {
            MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(v13, 0x8000100u);
            v15 = MEMORY[0x28223BE20](MaximumSizeForEncoding);
            v17 = v19 - v16;
            bzero(v19 - v16, v15 + 1);
            v20.location = 0;
            v20.length = v13;
            CFStringGetBytes(theString, v20, 0x8000100u, 0x2Du, 0, v17, MaximumSizeForEncoding, v19);
            v18 = v19[0];
            v17[v19[0]] = 0;
            SILexiconCacheSetTokenID(result, a2, v17, v18, a5, a6, a4);
          }
        }
      }
    }
  }
}

void SILexiconCacheSetTokenID(uint64_t a1, const __CFLocale *a2, void *a3, unsigned int a4, uint64_t a5, uint64_t a6, double a7)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          LanguageID = SILanguagesGetLanguageID(a2);
          if ((LanguageID - 59) >= 0xFFFFFFC7)
          {
            v13 = LanguageID;
            os_unfair_lock_lock(&sCacheLock);
            if (a5 && sCache)
            {
              std::to_string(&v31, v13);
              v14 = std::string::append(&v31, ":");
              v15 = *&v14->__r_.__value_.__l.__data_;
              v32.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
              *&v32.__r_.__value_.__l.__data_ = v15;
              v14->__r_.__value_.__l.__size_ = 0;
              v14->__r_.__value_.__r.__words[2] = 0;
              v14->__r_.__value_.__r.__words[0] = 0;
              std::string::basic_string[abi:ne200100](&__p, a3, a4);
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                p_p = &__p;
              }

              else
              {
                p_p = __p.__r_.__value_.__r.__words[0];
              }

              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
              }

              else
              {
                size = __p.__r_.__value_.__l.__size_;
              }

              v18 = std::string::append(&v32, p_p, size);
              v19 = *&v18->__r_.__value_.__l.__data_;
              v34 = v18->__r_.__value_.__r.__words[2];
              *v33 = v19;
              v18->__r_.__value_.__l.__size_ = 0;
              v18->__r_.__value_.__r.__words[2] = 0;
              v18->__r_.__value_.__r.__words[0] = 0;
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v32.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v31.__r_.__value_.__l.__data_);
              }

              if (v34 >= 0)
              {
                v20 = v33;
              }

              else
              {
                v20 = v33[0];
              }

              if (v34 >= 0)
              {
                v21 = HIBYTE(v34);
              }

              else
              {
                v21 = LODWORD(v33[1]);
              }

              v19.n128_f64[0] = a7;
              SIGeneralTrieSetKeyWithScore(sCache, v20, v21, a5, v19);
              if (SHIBYTE(v34) < 0)
              {
                operator delete(v33[0]);
              }
            }

            os_unfair_lock_unlock(&sCacheLock);
            os_unfair_lock_lock(&sCacheLock);
            if (a5 && a6 && sTypes)
            {
              std::to_string(&v31, a5);
              v22 = std::string::append(&v31, ":");
              v23 = *&v22->__r_.__value_.__l.__data_;
              v32.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
              *&v32.__r_.__value_.__l.__data_ = v23;
              v22->__r_.__value_.__l.__size_ = 0;
              v22->__r_.__value_.__r.__words[2] = 0;
              v22->__r_.__value_.__r.__words[0] = 0;
              std::to_string(&__p, v13);
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v24 = &__p;
              }

              else
              {
                v24 = __p.__r_.__value_.__r.__words[0];
              }

              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v25 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v25 = __p.__r_.__value_.__l.__size_;
              }

              v26 = std::string::append(&v32, v24, v25);
              v27 = *&v26->__r_.__value_.__l.__data_;
              v34 = v26->__r_.__value_.__r.__words[2];
              *v33 = v27;
              v26->__r_.__value_.__l.__size_ = 0;
              v26->__r_.__value_.__r.__words[2] = 0;
              v26->__r_.__value_.__r.__words[0] = 0;
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v32.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v31.__r_.__value_.__l.__data_);
              }

              if (v34 >= 0)
              {
                v28 = v33;
              }

              else
              {
                v28 = v33[0];
              }

              if (v34 >= 0)
              {
                v29 = HIBYTE(v34);
              }

              else
              {
                v29 = LODWORD(v33[1]);
              }

              SIGeneralTrieAddKey(sTypes, v28, v29, a6);
              if (SHIBYTE(v34) < 0)
              {
                operator delete(v33[0]);
              }
            }

            os_unfair_lock_unlock(&sCacheLock);
          }
        }
      }
    }
  }
}

void sub_26B7C5E24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SILexiconCacheEnumerateOVSAnnotationsInString(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a2)
  {
    return 0;
  }

  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  if (sOVSLexicon)
  {
    LXLexiconEnumerateEntriesForString();
    v7 = *(v10 + 24);
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v9, 8);
  return v7;
}

void sub_26B7C5F58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __SILexiconCacheEnumerateOVSAnnotationsInString_block_invoke(uint64_t a1, uint64_t a2)
{
  MetaFlags = LXEntryGetMetaFlags();
  result = LXEntryGetCategoryFlags();
  if ((MetaFlags & 0x3800000) != 0 || (result & 0x1F500) != 0 || (result & 0x40000) != 0)
  {
    result = (*(*(a1 + 32) + 16))();
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

uint64_t SILexiconCacheEnumerateAnyAnnotationsInString(uint64_t a1, const __CFLocale *a2, CFStringRef theString, uint64_t a4, uint64_t a5)
{
  Length = 0;
  v43 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (theString)
    {
      Length = CFStringGetLength(theString);
      if (Length)
      {
        LanguageID = SILanguagesGetLanguageID(a2);
        v11 = atomic_load(&sLexiconsLoaded[LanguageID]);
        if ((v11 & 1) != 0 && sLexicons[LanguageID])
        {
          v39 = 0;
          v40 = &v39;
          v41 = 0x2000000000;
          v42 = 0;
          MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
          v13 = MEMORY[0x28223BE20](MaximumSizeForEncoding);
          v14 = v30 - ((v13 + 16) & 0xFFFFFFFFFFFFFFF0);
          bzero(v14, v13 + 1);
          RootCursor = LXLexiconCreateRootCursor();
          if (RootCursor)
          {
            v31 = a5;
            v30[1] = v30;
            v38 = 0;
            if (Length >= 1)
            {
              v16 = 0;
              v32 = a4 + 16;
              v30[2] = v35;
              v17 = 1;
              v18 = -1;
              do
              {
                v19 = (*(a4 + 16))(a4, &v38);
                if (v19 == -1)
                {
                  break;
                }

                v21 = v16 + v18;
                v22 = v19 + v20 - (v16 + v18);
                v23 = v19 + v20 - v18;
                v24 = v18 == -1;
                if (v18 == -1)
                {
                  v18 = v19;
                }

                if (v24)
                {
                  v16 = v20;
                }

                else
                {
                  v16 = v23;
                }

                if (v24)
                {
                  v21 = v19;
                  v25.length = v20;
                }

                else
                {
                  v25.length = v22;
                }

                v37 = 0;
                v26 = MaximumSizeForEncoding;
                v25.location = v21;
                CFStringGetBytes(theString, v25, 0x8000100u, 0x2Du, 0, v14, MaximumSizeForEncoding + 1, &v37);
                v14[v37] = 0;
                v27 = RootCursor;
                v28 = LXCursorCreateByAdvancingWithUTF8();
                if (!v28)
                {
                  RootCursor = v27;
                  break;
                }

                v33 = MEMORY[0x277D85DD0];
                v34 = 0x40000000;
                v35[0] = __SILexiconCacheEnumerateAnyAnnotationsInString_block_invoke;
                v35[1] = &unk_279D02FD0;
                v35[4] = v18;
                v35[5] = v16;
                v35[2] = v31;
                v35[3] = &v39;
                v36 = v17;
                LXCursorEnumerateEntries();
                CFRelease(v28);
                v17 = 0;
                RootCursor = v27;
                MaximumSizeForEncoding = v26;
              }

              while (v16 < Length);
            }

            CFRelease(RootCursor);
          }

          Length = *(v40 + 24);
          _Block_object_dispose(&v39, 8);
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return Length;
}

uint64_t __SILexiconCacheEnumerateAnyAnnotationsInString_block_invoke(uint64_t a1, uint64_t a2)
{
  MetaFlags = LXEntryGetMetaFlags();
  result = LXEntryGetCategoryFlags();
  if ((MetaFlags & 0x3800000) != 0 || (result & 0x1F500) != 0 || (result & 0x40000) != 0 || *(a1 + 64) && ((MetaFlags & 0x20000000) != 0 || (MetaFlags & 0x200061) == 0))
  {
    result = (*(*(a1 + 32) + 16))();
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

CFIndex SILexiconCacheEnumerateAnnotationsInString(uint64_t a1, const __CFLocale *a2, CFStringRef theString, uint64_t a4)
{
  result = 0;
  v17[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (theString)
    {
      result = CFStringGetLength(theString);
      v17[0] = result;
      if (result)
      {
        LanguageID = SILanguagesGetLanguageID(a2);
        v10 = atomic_load(&sLexiconsLoaded[LanguageID]);
        if ((v10 & 1) != 0 && sLexicons[LanguageID])
        {
          v11 = v17[0];
          MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(v17[0], 0x8000100u);
          v13 = MEMORY[0x28223BE20](MaximumSizeForEncoding);
          v15 = v17 - v14;
          bzero(v17 - v14, v13 + 1);
          v18.location = 0;
          v18.length = v11;
          CFStringGetBytes(theString, v18, 0x8000100u, 0x2Du, 0, v15, MaximumSizeForEncoding, v17);
          v16 = v17[0];
          v15[v17[0]] = 0;
          return SILexiconCacheEnumerateAnnotations(a1, a2, v15, v16, a4);
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t SILexiconCacheEnumerateAnnotations(uint64_t a1, const __CFLocale *a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  if (a1 && a4)
  {
    LanguageID = SILanguagesGetLanguageID(a2);
    v7 = atomic_load(&sLexiconsLoaded[LanguageID]);
    if ((v7 & 1) != 0 && sLexicons[LanguageID])
    {
      v11 = 0;
      v12 = &v11;
      v13 = 0x2000000000;
      v14 = 0;
      RootCursor = LXLexiconCreateRootCursor();
      if (RootCursor)
      {
        v9 = LXCursorCreateByAdvancingWithUTF8();
        if (v9)
        {
          LXCursorEnumerateEntries();
          CFRelease(v9);
        }

        CFRelease(RootCursor);
      }

      v5 = *(v12 + 24);
      _Block_object_dispose(&v11, 8);
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

void sub_26B7C6670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __SILexiconCacheEnumerateAnnotations_block_invoke(uint64_t a1, uint64_t a2)
{
  MetaFlags = LXEntryGetMetaFlags();
  result = LXEntryGetCategoryFlags();
  if ((MetaFlags & 0x3800000) != 0 || (result & 0x1F500) != 0 || (result & 0x40000) != 0 || (MetaFlags & 0x20000000) != 0 || (MetaFlags & 0x200061) == 0)
  {
    result = (*(*(a1 + 32) + 16))();
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

uint64_t SILexiconCacheGetTokenIDInString(uint64_t a1, const __CFLocale *a2, CFStringRef theString)
{
  if (!theString)
  {
    return 0;
  }

  Length = CFStringGetLength(theString);
  v6 = 0;
  if (!a1 || !a2 || !Length)
  {
    return v6;
  }

  LanguageID = SILanguagesGetLanguageID(a2);
  if ((LanguageID - 59) < 0xFFFFFFC7)
  {
    return 0;
  }

  v8 = LanguageID;
  v9 = atomic_load(&sLexiconsLoaded[LanguageID]);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  os_unfair_lock_lock(&sLexiconLock);
  if (sDynamicLexicons[v8])
  {
    v6 = LXLexiconAdd();
  }

  else
  {
    v6 = 0;
  }

  os_unfair_lock_unlock(&sLexiconLock);
  return v6;
}