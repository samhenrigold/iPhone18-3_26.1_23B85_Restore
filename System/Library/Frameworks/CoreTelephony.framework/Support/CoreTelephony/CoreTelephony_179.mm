void sub_1015278E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, std::__shared_weak_count *a55)
{
  if (a47 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_101527A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315394;
    v16 = asString();
    v17 = 2080;
    v18 = asString();
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I OOS Module showing rats as %s and %s...", &v15, 0x16u);
    v6 = *(a1 + 40);
  }

  v8 = v3 != -1 && v3 != 11;
  v9 = *(a1 + 153);
  v10 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  v11 = v4 == 11 || v4 == -1;
  if (!v11 || v8)
  {
    if (v9)
    {
      if (v10)
      {
        LOWORD(v15) = 0;
        v13 = "#I Device still has service";
LABEL_27:
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v13, &v15, 2u);
      }
    }

    else if (v10)
    {
      LOWORD(v15) = 0;
      v13 = "#I Device has gained service";
      goto LABEL_27;
    }

    v14 = 1;
    goto LABEL_29;
  }

  if (v9)
  {
    if (v10)
    {
      LOWORD(v15) = 0;
      v12 = "#I Device has lost service";
LABEL_23:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v12, &v15, 2u);
    }
  }

  else if (v10)
  {
    LOWORD(v15) = 0;
    v12 = "#I Device still has no service";
    goto LABEL_23;
  }

  v14 = 0;
LABEL_29:
  *(a1 + 153) = v14;
  sub_10152667C(a1);
}

void sub_101527BC4(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (!a1[5])
      {
LABEL_25:
        sub_100004A34(v5);
        return;
      }

      v6 = *(v3 + 153);
      v7 = *(v3 + 40);
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      if (v6)
      {
        if (v8)
        {
          *v21 = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Device has regained service; cancelling delivery of any queued alerts...", v21, 2u);
        }

        goto LABEL_25;
      }

      if (v8)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I OOS countdown has hit zero; dispatching any queued alerts...", buf, 2u);
      }

      ServiceMap = Registry::getServiceMap(*(v3 + 96));
      v10 = ServiceMap;
      if ((v11 & 0x8000000000000000) != 0)
      {
        v12 = (v11 & 0x7FFFFFFFFFFFFFFFLL);
        v13 = 5381;
        do
        {
          v11 = v13;
          v14 = *v12++;
          v13 = (33 * v13) ^ v14;
        }

        while (v14);
      }

      std::mutex::lock(ServiceMap);
      v23 = v11;
      v15 = sub_100009510(&v10[1].__m_.__sig, &v23);
      if (v15)
      {
        v17 = v15[3];
        v16 = v15[4];
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v10);
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v16);
          v18 = 0;
          if (!v17)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        }
      }

      else
      {
        v17 = 0;
      }

      std::mutex::unlock(v10);
      v16 = 0;
      v18 = 1;
      if (!v17)
      {
LABEL_19:
        v19 = *(v3 + 136);
        *(v3 + 136) = 0;
        if (v19)
        {
          (*(*v19 + 8))(v19);
        }

        sub_101525C84(v3);
        v20 = *(v3 + 144);
        if (v20)
        {
          (*(*v20 + 16))(v20);
        }

        if ((v18 & 1) == 0)
        {
          sub_100004A34(v16);
        }

        goto LABEL_25;
      }

LABEL_18:
      (*(*v17 + 112))(v17);
      goto LABEL_19;
    }
  }
}

uint64_t sub_101527E04(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_101527E20(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_101527E30(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        v6 = v3[5];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v7 = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Clear OOS regions timer has hit zero; clearing all OOS geofences...", v7, 2u);
        }

        sub_101525C84(v3);
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_101527EE0(void *a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v8 = a4 * 0.0174532925;
  v9 = a3 * 0.0174532925;
  v10 = a2 * 0.0174532925;
  v33 = a3 * 0.0174532925;
  v11 = sin((a4 * 0.0174532925 - a2 * 0.0174532925) * 0.5);
  v12 = v11 * v11;
  v13 = cos(v8);
  v32 = cos(v10);
  v14 = sin((v9 - v9) * 0.5);
  v35 = v14 * v14;
  v15 = asin(sqrt(v12 + v32 * v13 * (v14 * v14)));
  v36 = (v15 + v15) * 6371.0 * 1000.0;
  v16 = a6 * 0.0174532925 - v9;
  v17 = sin((v10 - v10) * 0.5);
  v18 = v17 * v17;
  v19 = sin(v16 * 0.5);
  v20 = asin(sqrt(v18 + v32 * v32 * (v19 * v19)));
  v21 = (v20 + v20) * 6371.0 * 1000.0;
  v22 = sin((a5 * 0.0174532925 - v10) * 0.5);
  v23 = v22 * v22 + v32 * cos(a5 * 0.0174532925) * v35;
  v24 = asin(sqrt(v23));
  v25 = (v24 + v24) * 6371.0 * 1000.0;
  v26 = sin((a7 * 0.0174532925 - v33) * 0.5);
  v27 = asin(sqrt(v18 + v32 * v32 * (v26 * v26)));
  v28 = (v27 + v27) * 6371.0 * 1000.0;
  v29 = (v28 + v25 + v36 + v21) * 0.25;
  v30 = a1[5];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218752;
    v42 = v36 - v29;
    v43 = 2048;
    v44 = v21 - v29;
    v45 = 2048;
    v46 = v25 - v29;
    v47 = 2048;
    v48 = v28 - v29;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I OOS Module approximated WEA geofence polygon radius with accuracy: N(%f), E(%f), S(%f), W(%f)", buf, 0x2Au);
  }

  return (*(*a1 + 24))(a1, a2, a3, v29);
}

void sub_1015281A8(uint64_t a1, double a2, double a3, double a4)
{
  v8 = *(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    *v226 = a2;
    *&v226[8] = 2048;
    *&v226[10] = a3;
    *&v226[18] = 2048;
    *&v226[20] = a4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Attempting to load all OOS Geofences in proximity to WEA geofence point %f, %f, %f...", buf, 0x20u);
  }

  v207 = sub_10152702C(a1, a2, a3, a4, 37.103384, -119.63562, 3890.55709);
  v206 = sub_10152702C(a1, a2, a3, a4, 38.2079717, -118.657837, 2875.21697);
  v205 = sub_10152702C(a1, a2, a3, a4, 34.4748635, -118.712769, 2848.5006);
  v204 = sub_10152702C(a1, a2, a3, a4, 34.048108, -119.558716, 1838.35782);
  v203 = sub_10152702C(a1, a2, a3, a4, 41.9799108, -115.427856, 2828.41633);
  v202 = sub_10152702C(a1, a2, a3, a4, 32.8195947, -118.405151, 1479.5603);
  v201 = sub_10152702C(a1, a2, a3, a4, 36.3991782, -121.876831, 2781.82243);
  v200 = sub_10152702C(a1, a2, a3, a4, 40.3339831, -123.678589, 5012.10879);
  v199 = sub_10152702C(a1, a2, a3, a4, 41.2901898, -116.251831, 2296.24251);
  v198 = sub_10152702C(a1, a2, a3, a4, 41.8327349, -119.558716, 5475.6327);
  v197 = sub_10152702C(a1, a2, a3, a4, 32.6347489, -118.064575, 6270.3423);
  v196 = sub_10152702C(a1, a2, a3, a4, 36.6551994, -121.118774, 6209.28435);
  v195 = sub_10152702C(a1, a2, a3, a4, 40.9342651, -121.723022, 5532.31555);
  v194 = sub_10152702C(a1, a2, a3, a4, 41.5866882, -115.20813, 6402.18978);
  v193 = sub_10152702C(a1, a2, a3, a4, 37.6533831, -119.899292, 2736.66073);
  v192 = sub_10152702C(a1, a2, a3, a4, 40.2920966, -122.601929, 3850.49979);
  v191 = sub_10152702C(a1, a2, a3, a4, 41.2075889, -121.272583, 2764.29171);
  v190 = sub_10152702C(a1, a2, a3, a4, 41.86547, -116.010132, 5830.58718);
  v189 = sub_10152702C(a1, a2, a3, a4, 33.9752534, -119.624634, 3818.89925);
  v188 = sub_10152702C(a1, a2, a3, a4, 39.499802, -114.691772, 2667.77789);
  v187 = sub_10152702C(a1, a2, a3, a4, 35.2680468, -122.371216, 1000.0);
  v186 = sub_10152702C(a1, a2, a3, a4, 41.8736511, -115.427856, 3439.32709);
  v185 = sub_10152702C(a1, a2, a3, a4, 34.3298282, -118.119507, 6392.08253);
  v184 = sub_10152702C(a1, a2, a3, a4, 41.7344293, -123.986206, 3656.00197);
  v183 = sub_10152702C(a1, a2, a3, a4, 39.9981638, -123.931274, 4192.92669);
  v182 = sub_10152702C(a1, a2, a3, a4, 41.7917926, -123.755493, 10368.5502);
  v181 = sub_10152702C(a1, a2, a3, a4, 41.9962427, -120.723267, 2000.0);
  v180 = sub_10152702C(a1, a2, a3, a4, 36.0180036, -117.789917, 7130.23409);
  v179 = sub_10152702C(a1, a2, a3, a4, 40.7680616, -121.503296, 2771.47775);
  v178 = sub_10152702C(a1, a2, a3, a4, 38.6039931, -120.140991, 3440.07338);
  v177 = sub_10152702C(a1, a2, a3, a4, 40.8761413, -122.305298, 3330.72813);
  v176 = sub_10152702C(a1, a2, a3, a4, 38.6469081, -114.6698, 2699.94747);
  v175 = sub_10152702C(a1, a2, a3, a4, 33.1421507, -116.790161, 1000.0);
  v174 = sub_10152702C(a1, a2, a3, a4, 41.7754083, -123.041382, 11131.0791);
  v173 = sub_10152702C(a1, a2, a3, a4, 40.0822744, -119.745483, 5125.71665);
  v172 = sub_10152702C(a1, a2, a3, a4, 35.8222672, -114.702759, 1152.53366);
  v171 = sub_10152702C(a1, a2, a3, a4, 39.1598817, -123.64563, 2680.67089);
  v170 = sub_10152702C(a1, a2, a3, a4, 35.1693179, -120.426636, 2824.18759);
  v169 = sub_10152702C(a1, a2, a3, a4, 41.1745192, -120.151978, 5887.47949);
  v168 = sub_10152702C(a1, a2, a3, a4, 41.86547, -119.020386, 6558.09369);
  v167 = sub_10152702C(a1, a2, a3, a4, 35.5992522, -120.910034, 2973.90783);
  v166 = sub_10152702C(a1, a2, a3, a4, 40.1914629, -121.525269, 4750.91361);
  v165 = sub_10152702C(a1, a2, a3, a4, 33.224903, -117.581177, 1174.33696);
  v164 = sub_10152702C(a1, a2, a3, a4, 35.920196, -114.505005, 1409.27083);
  v163 = sub_10152702C(a1, a2, a3, a4, 36.1245646, -113.977661, 1928.06813);
  v162 = sub_10152702C(a1, a2, a3, a4, 41.257162, -123.612671, 2910.69928);
  v161 = sub_10152702C(a1, a2, a3, a4, 40.3423573, -117.614136, 1983.39301);
  v160 = sub_10152702C(a1, a2, a3, a4, 39.0063789, -120.525513, 3008.25182);
  v159 = sub_10152702C(a1, a2, a3, a4, 41.2323801, -122.65686, 5507.57456);
  v158 = sub_10152702C(a1, a2, a3, a4, 35.2590764, -120.50354, 3214.56888);
  v157 = sub_10152702C(a1, a2, a3, a4, 36.3637984, -116.724243, 9089.62536);
  v156 = sub_10152702C(a1, a2, a3, a4, 33.3534732, -118.427124, 3674.50302);
  v155 = sub_10152702C(a1, a2, a3, a4, 38.8268704, -123.217163, 2730.17151);
  v154 = sub_10152702C(a1, a2, a3, a4, 37.5489325, -122.426147, 2038.86896);
  v153 = sub_10152702C(a1, a2, a3, a4, 41.3149498, -120.042114, 2759.76835);
  v152 = sub_10152702C(a1, a2, a3, a4, 35.6439051, -120.206909, 7242.11046);
  v151 = sub_10152702C(a1, a2, a3, a4, 35.7866268, -115.933228, 2207.91229);
  v150 = sub_10152702C(a1, a2, a3, a4, 37.4007099, -115.53772, 2648.1002);
  v149 = sub_10152702C(a1, a2, a3, a4, 35.7152979, -118.064575, 5349.62303);
  v148 = sub_10152702C(a1, a2, a3, a4, 37.0770931, -121.470337, 3907.69299);
  v147 = sub_10152702C(a1, a2, a3, a4, 40.3004759, -124.30481, 3358.01115);
  v146 = sub_10152702C(a1, a2, a3, a4, 39.0234513, -122.338257, 3007.52925);
  v145 = sub_10152702C(a1, a2, a3, a4, 33.7745812, -118.55896, 1931.9518);
  v144 = sub_10152702C(a1, a2, a3, a4, 37.4792173, -121.536255, 3061.75551);
  v143 = sub_10152702C(a1, a2, a3, a4, 36.8224775, -118.910522, 6267.12604);
  v142 = sub_10152702C(a1, a2, a3, a4, 35.3039184, -118.427124, 5376.95079);
  v141 = sub_10152702C(a1, a2, a3, a4, 33.5459729, -117.394409, 1050.4742);
  v140 = sub_10152702C(a1, a2, a3, a4, 41.4962352, -116.098022, 3203.22894);
  v139 = sub_10152702C(a1, a2, a3, a4, 32.9487585, -117.328491, 1249.09616);
  v138 = sub_10152702C(a1, a2, a3, a4, 38.0264586, -114.197388, 4083.26082);
  v137 = sub_10152702C(a1, a2, a3, a4, 38.655488, -114.801636, 6023.7809);
  v136 = sub_10152702C(a1, a2, a3, a4, 37.4356123, -115.449829, 5045.81452);
  v135 = sub_10152702C(a1, a2, a3, a4, 41.7344293, -116.207886, 8163.15452);
  v134 = sub_10152702C(a1, a2, a3, a4, 38.8782049, -120.228882, 2691.28269);
  v133 = sub_10152702C(a1, a2, a3, a4, 38.7583668, -114.043579, 1089.77915);
  v132 = sub_10152702C(a1, a2, a3, a4, 38.2770008, -121.744995, 1000.0);
  v131 = sub_10152702C(a1, a2, a3, a4, 37.9571921, -114.230347, 2496.49588);
  v130 = sub_10152702C(a1, a2, a3, a4, 38.2511226, -115.724487, 4001.76095);
  v129 = sub_10152702C(a1, a2, a3, a4, 41.2323801, -120.393677, 3899.67676);
  v128 = sub_10152702C(a1, a2, a3, a4, 35.4472459, -120.811157, 2814.58556);
  v127 = sub_10152702C(a1, a2, a3, a4, 33.2432817, -119.470825, 5490.04615);
  v126 = sub_10152702C(a1, a2, a3, a4, 40.8927533, -121.085815, 6532.04983);
  v125 = sub_10152702C(a1, a2, a3, a4, 36.6287537, -120.514526, 2773.65546);
  v124 = sub_10152702C(a1, a2, a3, a4, 38.2597497, -120.415649, 3462.89199);
  v123 = sub_10152702C(a1, a2, a3, a4, 34.7280696, -119.207153, 7114.85239);
  v122 = sub_10152702C(a1, a2, a3, a4, 41.7426272, -122.140503, 5841.7059);
  v121 = sub_10152702C(a1, a2, a3, a4, 36.9279389, -116.636353, 1000.0);
  v120 = sub_10152702C(a1, a2, a3, a4, 41.4138954, -114.713745, 2755.59091);
  v119 = sub_10152702C(a1, a2, a3, a4, 40.5597212, -122.052612, 3939.23586);
  v118 = sub_10152702C(a1, a2, a3, a4, 36.3106987, -115.680542, 2784.95803);
  v117 = sub_10152702C(a1, a2, a3, a4, 40.7347709, -123.19519, 5404.78826);
  v116 = sub_10152702C(a1, a2, a3, a4, 38.3804215, -114.746704, 3310.43295);
  v115 = sub_10152702C(a1, a2, a3, a4, 37.3483259, -115.658569, 2893.60385);
  v114 = sub_10152702C(a1, a2, a3, a4, 38.9038582, -114.515991, 3939.13183);
  v113 = sub_10152702C(a1, a2, a3, a4, 39.3640322, -113.988647, 1124.41275);
  v112 = sub_10152702C(a1, a2, a3, a4, 33.6466354, -118.141479, 1945.12875);
  v111 = sub_10152702C(a1, a2, a3, a4, 33.9752534, -120.075073, 1766.18765);
  v110 = sub_10152702C(a1, a2, a3, a4, 36.3284026, -117.713013, 3117.87973);
  v109 = sub_10152702C(a1, a2, a3, a4, 37.514083, -114.252319, 1652.54055);
  v108 = sub_10152702C(a1, a2, a3, a4, 38.8696517, -117.493286, 2390.32147);
  v107 = sub_10152702C(a1, a2, a3, a4, 36.1334382, -120.602417, 3555.31653);
  v106 = sub_10152702C(a1, a2, a3, a4, 33.6923522, -118.591919, 2061.29748);
  v105 = sub_10152702C(a1, a2, a3, a4, 32.5977338, -117.350464, 1235.8409);
  v104 = sub_10152702C(a1, a2, a3, a4, 33.6466354, -118.086548, 1893.71217);
  v103 = sub_10152702C(a1, a2, a3, a4, 40.1998548, -119.185181, 1301.07311);
  v102 = sub_10152702C(a1, a2, a3, a4, 39.0405195, -114.647827, 3006.44523);
  v101 = sub_10152702C(a1, a2, a3, a4, 41.8163611, -115.010376, 4051.28587);
  v100 = sub_10152702C(a1, a2, a3, a4, 37.7490006, -122.843628, 3737.18804);
  v99 = sub_10152702C(a1, a2, a3, a4, 37.7490006, -123.019409, 2995.75174);
  v98 = sub_10152702C(a1, a2, a3, a4, 40.7181192, -115.08728, 2934.11401);
  v97 = sub_10152702C(a1, a2, a3, a4, 41.0254992, -120.042114, 4973.7915);
  v96 = sub_10152702C(a1, a2, a3, a4, 39.0831721, -119.415894, 1128.3857);
  v95 = sub_10152702C(a1, a2, a3, a4, 37.4617784, -118.712769, 5805.13049);
  v94 = sub_10152702C(a1, a2, a3, a4, 36.05354, -114.01062, 4065.51403);
  v213 = sub_10152702C(a1, a2, a3, a4, 38.2338653, -114.702759, 4801.81957);
  v93 = sub_10152702C(a1, a2, a3, a4, 41.7016272, -115.08728, 5195.4763);
  v92 = sub_10152702C(a1, a2, a3, a4, 38.96368, -117.57019, 3429.30875);
  v91 = sub_10152702C(a1, a2, a3, a4, 33.8384826, -120.009155, 1810.7869);
  v90 = sub_10152702C(a1, a2, a3, a4, 39.9813293, -122.799683, 6540.26303);
  v89 = sub_10152702C(a1, a2, a3, a4, 39.8970942, -114.87854, 6643.65794);
  v88 = sub_10152702C(a1, a2, a3, a4, 40.5012693, -120.756226, 4150.80966);
  v209 = sub_10152702C(a1, a2, a3, a4, 41.2323801, -116.032104, 6157.7353);
  v87 = sub_10152702C(a1, a2, a3, a4, 35.3128839, -115.109253, 2040.30802);
  v86 = sub_10152702C(a1, a2, a3, a4, 36.8664374, -115.9552, 1000.0);
  v211 = sub_10152702C(a1, a2, a3, a4, 37.5489325, -113.933716, 3426.72679);
  v85 = sub_10152702C(a1, a2, a3, a4, 40.6431355, -121.239624, 2937.40144);
  v84 = sub_10152702C(a1, a2, a3, a4, 40.834593, -114.867554, 2779.93099);
  v83 = sub_10152702C(a1, a2, a3, a4, 37.3483259, -113.988647, 1449.33625);
  v210 = sub_10152702C(a1, a2, a3, a4, 38.655488, -120.404663, 4855.5858);
  v82 = sub_10152702C(a1, a2, a3, a4, 34.5110831, -120.481567, 5122.99133);
  v81 = sub_10152702C(a1, a2, a3, a4, 38.2252351, -115.010376, 2874.5436);
  v80 = sub_10152702C(a1, a2, a3, a4, 38.7926268, -114.559937, 3007.78547);
  v79 = sub_10152702C(a1, a2, a3, a4, 41.9799108, -114.021606, 12860.8947);
  v78 = sub_10152702C(a1, a2, a3, a4, 38.4750942, -116.054077, 6061.56642);
  v77 = sub_10152702C(a1, a2, a3, a4, 34.9354819, -120.2948, 2998.03497);
  v76 = sub_10152702C(a1, a2, a3, a4, 37.2521936, -118.174438, 5821.16617);
  v75 = sub_10152702C(a1, a2, a3, a4, 39.219487, -113.999634, 1124.41275);
  v74 = sub_10152702C(a1, a2, a3, a4, 32.7364616, -117.537231, 1628.61336);
  v73 = sub_10152702C(a1, a2, a3, a4, 40.3256079, -116.724243, 1047.50463);
  v72 = sub_10152702C(a1, a2, a3, a4, 41.9717432, -122.195435, 5538.93425);
  v71 = sub_10152702C(a1, a2, a3, a4, 41.0172104, -120.844116, 7829.17805);
  v70 = sub_10152702C(a1, a2, a3, a4, 40.0906797, -120.020142, 2997.09914);
  v69 = sub_10152702C(a1, a2, a3, a4, 35.9468828, -115.669556, 4020.44214);
  v68 = sub_10152702C(a1, a2, a3, a4, 35.8935001, -117.383423, 4922.96735);
  v67 = sub_10152702C(a1, a2, a3, a4, 38.7754989, -114.823608, 7083.3572);
  v66 = sub_10152702C(a1, a2, a3, a4, 38.1647952, -114.724731, 4094.68056);
  v65 = sub_10152702C(a1, a2, a3, a4, 40.2250241, -118.306274, 2010.05963);
  v64 = sub_10152702C(a1, a2, a3, a4, 37.2521936, -122.217407, 3881.22242);
  v63 = sub_10152702C(a1, a2, a3, a4, 39.4064887, -122.997437, 5735.36059);
  v62 = sub_10152702C(a1, a2, a3, a4, 39.6183835, -120.591431, 5947.146);
  v61 = sub_10152702C(a1, a2, a3, a4, 41.6934241, -115.856323, 3658.6703);
  v219 = sub_10152702C(a1, a2, a3, a4, 39.2620313, -114.691772, 7643.58434);
  v60 = sub_10152702C(a1, a2, a3, a4, 33.6191936, -115.999146, 3255.85208);
  v59 = sub_10152702C(a1, a2, a3, a4, 37.5315098, -115.603638, 6436.01791);
  v58 = sub_10152702C(a1, a2, a3, a4, 35.3487356, -116.845093, 1000.0);
  v57 = sub_10152702C(a1, a2, a3, a4, 34.6015631, -119.767456, 4697.25793);
  v56 = sub_10152702C(a1, a2, a3, a4, 37.78374, -122.887573, 3690.46764);
  v55 = sub_10152702C(a1, a2, a3, a4, 42.0370542, -114.933472, 2568.57945);
  v54 = sub_10152702C(a1, a2, a3, a4, 35.0974397, -114.450073, 1000.0);
  v53 = sub_10152702C(a1, a2, a3, a4, 37.7142448, -123.052368, 2492.38831);
  v52 = sub_10152702C(a1, a2, a3, a4, 40.1494881, -114.34021, 1000.0);
  v51 = sub_10152702C(a1, a2, a3, a4, 36.1600529, -118.624878, 4074.67122);
  v50 = sub_10152702C(a1, a2, a3, a4, 36.1866585, -116.339722, 3123.51304);
  v49 = sub_10152702C(a1, a2, a3, a4, 32.7457024, -118.042603, 2969.91351);
  v48 = sub_10152702C(a1, a2, a3, a4, 38.0351123, -116.07605, 15179.5766);
  v47 = sub_10152702C(a1, a2, a3, a4, 33.2065203, -117.877808, 1072.12796);
  v214 = sub_10152702C(a1, a2, a3, a4, 35.8133586, -121.085815, 3138.2572);
  v220 = sub_10152702C(a1, a2, a3, a4, 38.6039931, -115.691528, 3677.16264);
  v46 = sub_10152702C(a1, a2, a3, a4, 41.5373659, -121.591187, 2587.87098);
  v45 = sub_10152702C(a1, a2, a3, a4, 33.9205714, -115.900269, 3198.74008);
  v44 = sub_10152702C(a1, a2, a3, a4, 40.6848035, -121.810913, 4150.70334);
  v43 = sub_10152702C(a1, a2, a3, a4, 38.1561568, -122.788696, 3851.62585);
  v42 = sub_10152702C(a1, a2, a3, a4, 37.7576869, -122.77771, 3505.04919);
  v41 = sub_10152702C(a1, a2, a3, a4, 38.5180862, -116.350708, 12420.8634);
  v40 = sub_10152702C(a1, a2, a3, a4, 33.9934729, -116.658325, 3045.14158);
  v221 = sub_10152702C(a1, a2, a3, a4, 40.3339831, -118.800659, 1147.07684);
  v39 = sub_10152702C(a1, a2, a3, a4, 38.5782318, -115.735474, 2850.07857);
  v38 = sub_10152702C(a1, a2, a3, a4, 40.8096515, -122.162476, 5235.07936);
  v37 = sub_10152702C(a1, a2, a3, a4, 35.9913408, -114.373169, 1546.27578);
  v222 = sub_10152702C(a1, a2, a3, a4, 35.8489871, -116.251831, 3125.44252);
  v36 = sub_10152702C(a1, a2, a3, a4, 38.2856248, -119.701538, 4798.01371);
  v212 = sub_10152702C(a1, a2, a3, a4, 33.6923522, -118.504028, 2529.10398);
  v216 = sub_10152702C(a1, a2, a3, a4, 39.8970942, -123.491821, 6285.21792);
  v35 = sub_10152702C(a1, a2, a3, a4, 32.7549423, -117.460327, 1446.35701);
  v34 = sub_10152702C(a1, a2, a3, a4, 37.7229353, -122.920532, 3096.08505);
  v33 = sub_10152702C(a1, a2, a3, a4, 41.3974149, -115.043335, 6496.5515);
  v32 = sub_10152702C(a1, a2, a3, a4, 36.3903347, -117.284546, 13031.8173);
  v31 = sub_10152702C(a1, a2, a3, a4, 38.0783655, -118.284302, 1511.26049);
  v30 = sub_10152702C(a1, a2, a3, a4, 40.9923378, -122.294312, 2773.33134);
  v29 = sub_10152702C(a1, a2, a3, a4, 40.1746761, -120.569458, 3857.62841);
  v28 = sub_10152702C(a1, a2, a3, a4, 40.4511271, -118.02063, 4659.8097);
  v27 = sub_10152702C(a1, a2, a3, a4, 40.5930994, -115.383911, 5859.16441);
  v224 = sub_10152702C(a1, a2, a3, a4, 35.3487356, -120.042114, 4226.76241);
  v218 = sub_10152702C(a1, a2, a3, a4, 34.211802, -113.999634, 10883.0231);
  v26 = sub_10152702C(a1, a2, a3, a4, 37.7924223, -123.118286, 4161.18314);
  v217 = sub_10152702C(a1, a2, a3, a4, 37.9051994, -114.043579, 2886.98391);
  v215 = sub_10152702C(a1, a2, a3, a4, 38.4578902, -114.724731, 4023.36168);
  v208 = sub_10152702C(a1, a2, a3, a4, 40.9176635, -118.394165, 1000.0);
  v24 = sub_10152702C(a1, a2, a3, a4, 38.7240903, -117.702026, 1704.35686);
  v25 = sub_10152702C(a1, a2, a3, a4, 41.6523928, -114.977417, 6025.96476);
  v23 = sub_10152702C(a1, a2, a3, a4, 40.9674557, -119.701538, 2918.4141);
  v22 = sub_10152702C(a1, a2, a3, a4, 37.5663511, -114.373169, 1747.19047);
  v21 = sub_10152702C(a1, a2, a3, a4, 36.0890603, -116.295776, 4061.89008);
  v20 = sub_10152702C(a1, a2, a3, a4, 37.9398653, -114.977417, 5198.30921);
  v223 = sub_10152702C(a1, a2, a3, a4, 40.9840448, -121.876831, 3914.34481);
  v9 = sub_10152702C(a1, a2, a3, a4, 41.3149498, -114.75769, 2597.33793);
  v10 = sub_10152702C(a1, a2, a3, a4, 39.9055224, -115.471802, 1445.43892);
  v11 = sub_10152702C(a1, a2, a3, a4, 40.0822744, -115.691528, 3708.78011);
  v12 = sub_10152702C(a1, a2, a3, a4, 33.9479168, -119.734497, 5079.6738);
  v13 = sub_10152702C(a1, a2, a3, a4, 35.0524836, -120.305786, 2993.81144);
  v14 = sub_10152702C(a1, a2, a3, a4, 36.3461025, -117.4823, 5997.90737);
  v15 = sub_10152702C(a1, a2, a3, a4, 40.5430259, -117.130737, 1347.45793);
  v16 = sub_10152702C(a1, a2, a3, a4, 35.7420537, -115.263062, 1086.61871);
  v17 = sub_10152702C(a1, a2, a3, a4, 37.7403132, -122.689819, 3069.43685);
  v18 = *(a1 + 40);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = v206 + v207 + v205 + v204 + v203 + v202 + v201 + v200 + v199 + v198 + v197 + v196 + v195 + v194 + v193 + v192 + v191 + v190 + v189 + v188 + v187 + v186 + v185 + v184 + v183 + v182 + v181 + v180 + v179 + v178 + v177 + v176 + v175 + v174 + v173 + v172 + v171 + v170 + v169 + v168 + v167 + v166 + v165 + v164 + v163 + v162 + v161 + v160 + v159 + v158 + v157 + v156 + v155 + v154 + v153 + v152 + v151 + v150 + v149 + v148 + v147 + v146 + v145 + v144 + v143 + v142 + v141 + v140 + v139 + v138 + v137 + v136 + v135 + v134 + v133 + v132 + v131 + v130 + v129 + v128 + v127 + v126 + v125 + v124 + v123 + v122 + v121 + v120 + v119 + v118 + v117 + v116 + v115 + v114 + v113 + v112 + v111 + v110 + v109 + v108 + v107 + v106 + v105 + v104 + v103 + v102 + v101 + v100 + v99 + v98 + v97 + v96 + v95 + v94 + v213 + v93 + v92 + v91 + v90 + v89 + v88;
    *buf = 67109888;
    *v226 = v19 + v209 + v87 + v86 + v211 + v85 + v84 + v83 + v210 + v82 + v81 + v80 + v79 + v78 + v77 + v76 + v75 + v74 + v73 + v72 + v71 + v70 + v69 + v68 + v67 + v66 + v65 + v64 + v63 + v62 + v61 + v219 + v60 + v59 + v58 + v57 + v56 + v55 + v54 + v53 + v52 + v51 + v50 + v49 + v48 + v47 + v214 + v220 + v46 + v45 + v44 + v43 + v42 + v41 + v40 + v221 + v39 + v38 + v37 + v222 + v36 + v212 + v216 + v35 + v34 + v33 + v32 + v31 + v30 + v29 + v28 + v27 + v224 + v218 + v26 + v217 + v215 + v208 + v24 + v25 + v23 + v22 + v21 + v20 + v223 + v9 + v10 + v11 + v12 + v13 + v14 + v15 + v16 + v17;
    *&v226[4] = 2048;
    *&v226[6] = a2;
    *&v226[14] = 2048;
    *&v226[16] = a3;
    *&v226[24] = 2048;
    *&v226[26] = a4;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Loaded %d new OOS Geofences in proximity to WEA geofence point %f, %f, %f.", buf, 0x26u);
  }
}

__n128 sub_10152B1A0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F48F90;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10152B1D8(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = (a1[1] + (v2 >> 1));
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

uint64_t sub_10152B220(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10152B28C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F49010;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

id sub_10152B308(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_new();
  if (*(a1 + 16) == 1)
  {
    v4 = objc_opt_new();
    [v3 setModelVector:v4];

    v5 = objc_opt_new();
    v6 = [v3 modelVector];
    [v6 setDefaultVector:v5];

    if (*(a1 + 4) >= 1)
    {
      v7 = objc_opt_new();
      v8 = [v3 modelVector];
      v9 = [v8 defaultVector];
      [v9 setX:v7];

      v10 = [NSNumber numberWithDouble:*a1];
      v11 = [v3 modelVector];
      v12 = [v11 defaultVector];
      v13 = [v12 x];
      [v13 setOffset:v10];

      v14 = [NSNumber numberWithDouble:*(a1 + 4)];
      v15 = [v3 modelVector];
      v16 = [v15 defaultVector];
      v17 = [v16 x];
      [v17 setRange:v14];
    }

    if (*(a1 + 12) >= 1)
    {
      v18 = objc_opt_new();
      v19 = [v3 modelVector];
      v20 = [v19 defaultVector];
      [v20 setY:v18];

      v21 = [NSNumber numberWithDouble:*(a1 + 8)];
      v22 = [v3 modelVector];
      v23 = [v22 defaultVector];
      v24 = [v23 y];
      [v24 setOffset:v21];

      v25 = [NSNumber numberWithDouble:*(a1 + 12)];
      v26 = [v3 modelVector];
      v27 = [v26 defaultVector];
      v28 = [v27 y];
      [v28 setRange:v25];
    }
  }

  return v3;
}

id sub_10152B64C(uint64_t a1)
{
  v2 = objc_alloc_init(CTConnectionAssistantState);
  [v2 setVersion:*a1];
  v3 = [[CTStewieState alloc] initWithStewieState:a1 + 8];
  [v2 setStewieState:v3];

  v4 = (*(a1 + 380) - 1);
  if (v4 < 3)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = 0;
  }

  [v2 setInternetInterface:v5];
  if (*(a1 + 56) == 1)
  {
    v6 = objc_alloc_init(CTCATarget);
    [v2 setCurrentTarget:v6];

    v7 = [NSNumber numberWithUnsignedInteger:*(a1 + 32)];
    v8 = [v2 currentTarget];
    [v8 setTargetId:v7];

    v9 = [NSNumber numberWithDouble:*(a1 + 40)];
    v10 = [v2 currentTarget];
    [v10 setX:v9];

    v11 = [NSNumber numberWithDouble:*(a1 + 48)];
    v12 = [v2 currentTarget];
    [v12 setY:v11];
  }

  if (*(a1 + 128) == 1)
  {
    v13 = objc_alloc_init(CTCAServiceIntervals);
    [v2 setServiceIntervals:v13];

    if ((*(a1 + 128) & 1) == 0)
    {
      sub_1000D1644();
    }

    v14 = [NSDate dateWithTimeIntervalSince1970:(*(a1 + 80) / 1000000)];
    v15 = [v2 serviceIntervals];
    [v15 setStartsAt:v14];

    v16 = [NSDate dateWithTimeIntervalSince1970:(*(a1 + 88) / 1000000)];
    v17 = [v2 serviceIntervals];
    [v17 setEndsAt:v16];

    v18 = *(a1 + 96);
    v19 = [v2 serviceIntervals];
    [v19 setAtStart:v18];

    if (*(a1 + 104) != *(a1 + 112))
    {
      v20 = objc_opt_new();
      v21 = *(a1 + 104);
      v22 = *(a1 + 112);
      while (v21 != v22)
      {
        v23 = [NSDate dateWithTimeIntervalSince1970:(*v21 / 1000000)];
        [v20 addObject:v23];

        ++v21;
      }

      v24 = [NSArray arrayWithArray:v20];
      v25 = [v2 serviceIntervals];
      [v25 setChangesAt:v24];
    }
  }

  if (*(a1 + 152) == 1)
  {
    v26 = objc_opt_new();
    [v2 setSilenceInterval:v26];

    if ((*(a1 + 152) & 1) == 0)
    {
      sub_1000D1644();
    }

    v27 = [NSDate dateWithTimeIntervalSince1970:(*(a1 + 136) / 1000000)];
    v28 = [v2 silenceInterval];
    [v28 setStartsAt:v27];

    v29 = [NSDate dateWithTimeIntervalSince1970:(*(a1 + 144) / 1000000)];
    v30 = [v2 silenceInterval];
    [v30 setEndsAt:v29];
  }

  if (*(a1 + 68) == 1)
  {
    v31 = objc_alloc_init(CTCATargetVisibility);
    [v2 setTargetVisibility:v31];

    v32 = *(a1 + 64);
    v33 = [v2 targetVisibility];
    v34 = v33;
    v35 = (v32 - 1);
    if (v35 < 3)
    {
      v36 = v35 + 1;
    }

    else
    {
      v36 = 0;
    }

    [v33 setAggregateVisibility:v36];
  }

  if (*(a1 + 72) == 1)
  {
    v37 = objc_opt_new();
    [v2 setLocationState:v37];

    v38 = [v2 locationState];
    [v38 setLocationAcquisitionStatus:1];
  }

  if (*(a1 + 240) == 1)
  {
    v39 = objc_alloc_init(CTCAConnectionState);
    [v2 setConnectionState:v39];

    v40 = *(a1 + 160);
    v41 = [v2 connectionState];
    v42 = v41;
    v43 = (v40 - 1);
    if (v43 < 3)
    {
      v44 = v43 + 1;
    }

    else
    {
      v44 = 0;
    }

    [v41 setConnectionStatus:v44];

    v45 = *(a1 + 164);
    v46 = [v2 connectionState];
    v47 = v46;
    if (v45 == 2)
    {
      v48 = 2;
    }

    else
    {
      v48 = v45 == 1;
    }

    [v46 setSyncStatus:v48];

    v49 = *(a1 + 168);
    v50 = [v2 connectionState];
    v51 = v50;
    if (v49 == 2)
    {
      v52 = 2;
    }

    else
    {
      v52 = v49 == 1;
    }

    [v50 setRegistrationStatus:v52];

    if (*(a1 + 176) == 1)
    {
      v53 = *(a1 + 172);
      v54 = [v2 connectionState];
      v55 = v54;
      v56 = (v53 - 1);
      if (v56 < 4)
      {
        v57 = v56 + 1;
      }

      else
      {
        v57 = 0;
      }

      [v54 setCongestionStatus:v57];
    }

    else
    {
      v55 = [v2 connectionState];
      [v55 setCongestionStatus:0];
    }

    if (*(a1 + 184) == 1)
    {
      v58 = [NSNumber numberWithInteger:*(a1 + 180)];
      v59 = [v2 connectionState];
      [v59 setRssi:v58];
    }

    if (*(a1 + 232) == 1)
    {
      v60 = objc_alloc_init(CTCATransmissionProgress);
      v61 = [v2 connectionState];
      [v61 setCurrentTransmissionProgress:v60];

      v62 = *(a1 + 192);
      if (v62)
      {
        v63 = CFUUIDCreateString(kCFAllocatorDefault, v62);
        v64 = [v2 connectionState];
        v65 = [v64 currentTransmissionProgress];
        [v65 setMessageId:v63];
      }

      if (*(a1 + 208) == 1)
      {
        v66 = [NSDate dateWithTimeIntervalSince1970:(*(a1 + 200) / 1000000)];
        v67 = [v2 connectionState];
        v68 = [v67 currentTransmissionProgress];
        [v68 setStartedAt:v66];
      }

      if (*(a1 + 220) == 1)
      {
        v69 = [NSNumber numberWithUnsignedInteger:*(a1 + 216)];
        v70 = [v2 connectionState];
        v71 = [v70 currentTransmissionProgress];
        [v71 setEstimatedDurationSeconds:v69];
      }

      if (*(a1 + 225) == 1)
      {
        v72 = [NSNumber numberWithUnsignedInteger:*(a1 + 224)];
        v73 = [v2 connectionState];
        v74 = [v73 currentTransmissionProgress];
        [v74 setProgressPercents:v72];
      }

      v75 = (*(a1 + 228) - 1);
      if (v75 < 0xC)
      {
        v76 = v75 + 1;
      }

      else
      {
        v76 = 0;
      }

      v77 = [v2 connectionState];
      v78 = [v77 currentTransmissionProgress];
      [v78 setPayloadType:v76];
    }
  }

  if (*(a1 + 260) == 1)
  {
    v79 = objc_alloc_init(CTCAConversationState);
    [v2 setConversationState:v79];

    v80 = *(a1 + 248);
    v81 = [v2 conversationState];
    v82 = v81;
    v83 = (v80 - 1);
    if (v83 < 4)
    {
      v84 = v83 + 1;
    }

    else
    {
      v84 = 0;
    }

    [v81 setRequestReason:v84];

    v85 = [NSNumber numberWithInt:*(a1 + 252)];
    v86 = [v2 conversationState];
    [v86 setConversationId:v85];

    v87 = *(a1 + 253);
    v88 = [v2 conversationState];
    [v88 setCommitted:v87];

    v89 = *(a1 + 256);
    v90 = *(a1 + 254);
    v91 = [v2 conversationState];
    v92 = v91;
    if (v89)
    {
      v93 = v90;
    }

    else
    {
      v93 = 0;
    }

    [v91 setFromService:v93];
  }

  if (*(a1 + 296) == 1)
  {
    v94 = objc_opt_new();
    [v2 setRoadsideConversationState:v94];

    v95 = [NSNumber numberWithInt:*(a1 + 264)];
    v96 = [v2 roadsideConversationState];
    [v96 setConversationId:v95];

    v97 = *(a1 + 265);
    v98 = [v2 roadsideConversationState];
    [v98 setCommitted:v97];

    if (*(a1 + 280) == 1)
    {
      v99 = [NSNumber numberWithUnsignedLongLong:*(a1 + 272)];
      v100 = [v2 roadsideConversationState];
      [v100 setProviderId:v99];
    }

    v101 = *(a1 + 290);
    v102 = *(a1 + 288);
    v103 = [v2 roadsideConversationState];
    v104 = v103;
    if (v101)
    {
      v105 = v102;
    }

    else
    {
      v105 = 0;
    }

    [v103 setFromService:v105];
  }

  v106 = (a1 + 304);
  if (*(a1 + 327) < 0)
  {
    if (!*(a1 + 312))
    {
      goto LABEL_75;
    }

    v106 = *v106;
    goto LABEL_74;
  }

  if (*(a1 + 327))
  {
LABEL_74:
    v107 = [NSString stringWithUTF8String:v106];
    [v2 setIso3166Alpha3CountryCode:v107];
  }

LABEL_75:
  if (*(a1 + 328))
  {
    v108 = objc_opt_new();
    [v2 setServicePartners:v108];

    v109 = *(a1 + 328);
    if (*(v109 + 24) == 1)
    {
      v110 = objc_opt_new();
      v142 = a1;
      v144 = v2;
      v111 = *(a1 + 328);
      if ((*(v111 + 24) & 1) == 0)
      {
        sub_1000D1644();
      }

      v114 = *v111;
      v112 = (v111 + 8);
      v113 = v114;
      if (v114 != v112)
      {
        do
        {
          v115 = objc_opt_new();
          v116 = v113[5];
          v117 = v113[6];
          while (v116 != v117)
          {
            v118 = v116;
            if (*(v116 + 23) < 0)
            {
              v118 = *v116;
            }

            v119 = [NSString stringWithUTF8String:v118, v142];
            [v115 addObject:v119];

            v116 += 3;
          }

          v120 = [NSNumber numberWithUnsignedShort:*(v113 + 16)];
          [v110 setObject:v115 forKeyedSubscript:v120];

          v121 = v113[1];
          if (v121)
          {
            do
            {
              v122 = v121;
              v121 = *v121;
            }

            while (v121);
          }

          else
          {
            do
            {
              v122 = v113[2];
              v123 = *v122 == v113;
              v113 = v122;
            }

            while (!v123);
          }

          v113 = v122;
        }

        while (v122 != v112);
      }

      v2 = v144;
      v124 = [v144 servicePartners];
      [v124 setPartners:v110];
      a1 = v143;

      v109 = *(v143 + 328);
    }

    v125 = *(v109 + 32);
    if (v125)
    {
      v126 = [v2 servicePartners];
      [v126 setFootnotesToShowMask:v125 & 7];
    }
  }

  if (*(a1 + 368) == 1)
  {
    v127 = objc_opt_new();
    [v2 setConnectionClosedState:v127];

    v128 = *(a1 + 344) - 1;
    if (v128 > 0x10)
    {
      v129 = 0;
    }

    else
    {
      v129 = qword_101986530[v128];
    }

    v130 = [v2 connectionClosedState];
    [v130 setReason:v129];

    v131 = [NSDate dateWithTimeIntervalSince1970:(*(a1 + 352) / 1000000)];
    v132 = [v2 connectionClosedState];
    [v132 setClosedAt:v131];

    v133 = *(a1 + 360);
    v134 = [v2 connectionClosedState];
    [v134 setWasActiveServices:v133];
  }

  if (*(a1 + 377) == 1)
  {
    v135 = objc_opt_new();
    [v2 setTryOutState:v135];

    v136 = *(a1 + 376);
    v137 = [v2 tryOutState];
    [v137 setTryOutOfferPending:v136];
  }

  [v2 setIsEmergencyVoiceCallCapable:*(a1 + 378)];
  v138 = (a1 + 384);
  if ((*(a1 + 407) & 0x80000000) == 0)
  {
    if (!*(a1 + 407))
    {
      goto LABEL_106;
    }

    goto LABEL_105;
  }

  if (*(a1 + 392))
  {
    v138 = *v138;
LABEL_105:
    v139 = [NSString stringWithUTF8String:v138];
    [v2 setEmergencyOrRoadsideSessionInitiatedBy:v139];
  }

LABEL_106:
  v140 = v2;

  return v2;
}

id sub_10152C4C8(void *a1, uint64_t a2)
{
  v23 = objc_opt_new();
  v3 = objc_opt_new();
  v5 = a1[3];
  v4 = a1[4];
  if (v5 == v4)
  {
    goto LABEL_10;
  }

  v6 = 0;
  do
  {
    if (v6)
    {
      v7 = [NSDate dateWithTimeIntervalSince1970:(*v5 / 1000000)];
      v8 = [v6 at];

      if (v7 == v8)
      {
        goto LABEL_7;
      }

      v9 = [NSArray arrayWithArray:v3];
      [v6 setTargets:v9];

      [v23 addObject:v6];
    }

    v10 = objc_opt_new();
    v11 = [NSDate dateWithTimeIntervalSince1970:(*v5 / 1000000)];
    [v10 setAt:v11];

    v12 = objc_opt_new();
    v3 = v12;
    v6 = v10;
LABEL_7:
    v13 = objc_opt_new();
    v14 = [NSNumber numberWithUnsignedInteger:*(v5 + 8)];
    [v13 setTargetId:v14];

    v15 = [NSNumber numberWithDouble:*(v5 + 16)];
    [v13 setX:v15];

    v16 = [NSNumber numberWithDouble:*(v5 + 24)];
    [v13 setY:v16];

    [v3 addObject:v13];
    v5 += 32;
  }

  while (v5 != v4);
  if (v6)
  {
    v17 = [NSArray arrayWithArray:v3];
    [v6 setTargets:v17];

    [v23 addObject:v6];
  }

LABEL_10:
  v18 = objc_opt_new();
  v19 = [NSDate dateWithTimeIntervalSince1970:(a1[1] / 1000000)];
  [v18 setStartsAt:v19];

  v20 = [NSDate dateWithTimeIntervalSince1970:(a1[2] / 1000000)];
  [v18 setEndsAt:v20];

  v21 = [NSArray arrayWithArray:v23];
  [v18 setReadings:v21];

  return v18;
}

void sub_10152C878(capabilities::ct *a1@<X0>, void *a3@<X8>)
{
  v5 = capabilities::ct::supportsSubwayDetection(a1);
  if (v5 && (capabilities::ct::supportsP2PAsPhone(v5) & 1) != 0)
  {
    goto LABEL_13;
  }

  ServiceMap = Registry::getServiceMap(*a1);
  v7 = ServiceMap;
  if ((v8 & 0x8000000000000000) != 0)
  {
    v9 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
    v10 = 5381;
    do
    {
      v8 = v10;
      v11 = *v9++;
      v10 = (33 * v10) ^ v11;
    }

    while (v11);
  }

  std::mutex::lock(ServiceMap);
  v17 = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &v17);
  if (v12)
  {
    v14 = v12[3];
    v13 = v12[4];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v7);
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v13);
      goto LABEL_11;
    }
  }

  else
  {
    v14 = 0;
  }

  std::mutex::unlock(v7);
  v13 = 0;
LABEL_11:
  isWatch = GestaltUtilityInterface::isWatch(v14);
  v16 = isWatch;
  if (!v13)
  {
    if (!isWatch)
    {
      goto LABEL_15;
    }

LABEL_13:
    operator new();
  }

  sub_100004A34(v13);
  if (v16)
  {
    goto LABEL_13;
  }

LABEL_15:
  *a3 = 0;
  a3[1] = 0;
}

void sub_10152C9F8(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10152CA38(uint64_t a1, void *a2, NSObject **a3)
{
  v6 = (a1 + 8);
  ctu::OsLogContext::OsLogContext(&v17, kCtLoggingSystemName, "set.sync");
  *v6 = 0;
  v6[1] = 0;
  v7 = *a3;
  *(a1 + 24) = *a3;
  if (v7)
  {
    dispatch_retain(v7);
  }

  *(a1 + 32) = 0;
  ctu::OsLogLogger::OsLogLogger(v18, &v17);
  ctu::OsLogLogger::OsLogLogger((a1 + 40), v18);
  ctu::OsLogLogger::~OsLogLogger(v18);
  ctu::OsLogContext::~OsLogContext(&v17);
  *a1 = off_101F49080;
  v8 = a2[1];
  *(a1 + 48) = *a2;
  *(a1 + 56) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10000501C(&__p, "CompanionInMetroStatusSyncHandler");
  v9 = *a3;
  v14 = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  v13[1] = 0;
  ctu::RestModule::RestModule();
  if (v14)
  {
    dispatch_release(v14);
  }

  if (v16 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 80) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  v10 = *(a1 + 24);
  v13[0] = v10;
  if (v10)
  {
    dispatch_retain(v10);
  }

  v11.fObj.fObj = v13;
  NotifySubscription::NotifySubscription((a1 + 120), "com.apple.commcenter.CompanionInMetroStatusChangedNotification", v11);
  if (v13[0])
  {
    dispatch_release(v13[0]);
  }

  return a1;
}

void sub_10152CBC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, dispatch_object_t a11, dispatch_object_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (object)
  {
    dispatch_release(object);
  }

  v22 = v19[14];
  if (v22)
  {
    sub_100004A34(v22);
  }

  v23 = v19[12];
  if (v23)
  {
    sub_100004A34(v23);
  }

  v24 = v19[9];
  if (v24)
  {
    sub_100004A34(v24);
  }

  v25 = v19[7];
  if (v25)
  {
    sub_100004A34(v25);
  }

  ctu::OsLogLogger::~OsLogLogger((v19 + 5));
  sub_1000C0544(v20);
  CompanionInMetroStatusSyncInterface::~CompanionInMetroStatusSyncInterface(v19);
  _Unwind_Resume(a1);
}

void sub_10152CC8C(uint64_t a1)
{
  Registry::getMobileHelper(&handler, *(a1 + 48));
  v2 = handler;
  handler = 0uLL;
  v3 = *(a1 + 96);
  *(a1 + 88) = v2;
  if (v3)
  {
    sub_100004A34(v3);
    if (*(&handler + 1))
    {
      sub_100004A34(*(&handler + 1));
    }
  }

  Registry::createRestModuleOneTimeUseConnection(&v19, *(a1 + 48));
  ctu::RestModule::connect();
  if (v20)
  {
    sub_100004A34(v20);
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 48));
  v5 = ServiceMap;
  if (v6 < 0)
  {
    v7 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v8 = 5381;
    do
    {
      v6 = v8;
      v9 = *v7++;
      v8 = (33 * v8) ^ v9;
    }

    while (v9);
  }

  std::mutex::lock(ServiceMap);
  *&handler = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &handler);
  if (v10)
  {
    v12 = v10[3];
    v11 = v10[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v11);
      v13 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
LABEL_14:
  isWatch = GestaltUtilityInterface::isWatch(v12);
  v15 = isWatch;
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  if (v15)
  {
    sub_10000501C(&__p, "/cc/props/in_metro_status");
    operator new();
  }

  if (capabilities::ct::supportsP2PAsPhone(isWatch))
  {
    v16 = *(a1 + 16);
    if (v16)
    {
      v17 = std::__shared_weak_count::lock(v16);
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        p_shared_weak_owners = &v17->__shared_weak_owners_;
        atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v17);
        atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
        NotifySubscription::cancel((a1 + 120));
        operator new();
      }
    }

    sub_100013CC4();
  }
}

void sub_10152CFB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (a23)
  {
    sub_100004A34(a23);
  }

  sub_100004A34(v24);
  std::__shared_weak_count::__release_weak(v23);
  sub_100004A34(v23);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_10152D054(unsigned __int8 *result, int a2)
{
  if (result[80] != a2)
  {
    return (*(*result + 40))();
  }

  return result;
}

void sub_10152D08C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Companion InMetroStatus changed", buf, 2u);
  }

  v3 = *(a1 + 88);
  if (v3)
  {
    cf = 0;
    (*(*v3 + 16))(&cf);
    v4 = cf;
    if (cf)
    {
      v22 = 0;
      v5 = CFGetTypeID(cf);
      if (v5 == CFBooleanGetTypeID() && (ctu::cf::assign(&v22, v4, v6) & 1) != 0)
      {
        v7 = v22;
        sub_10000A1EC(&cf);
        ServiceMap = Registry::getServiceMap(*(a1 + 48));
        v9 = ServiceMap;
        if (v10 < 0)
        {
          v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
          v12 = 5381;
          do
          {
            v10 = v12;
            v13 = *v11++;
            v12 = (33 * v12) ^ v13;
          }

          while (v13);
        }

        std::mutex::lock(ServiceMap);
        *buf = v10;
        v14 = sub_100009510(&v9[1].__m_.__sig, buf);
        if (v14)
        {
          v16 = v14[3];
          v15 = v14[4];
          if (v15)
          {
            atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v9);
            atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v15);
            v17 = 0;
            goto LABEL_27;
          }
        }

        else
        {
          v16 = 0;
        }

        std::mutex::unlock(v9);
        v15 = 0;
        v17 = 1;
LABEL_27:
        (*(*v16 + 72))(v16, v7);
        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        return;
      }

      v18 = *(a1 + 40);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        memset(buf, 0, sizeof(buf));
        v27 = 0;
        ctu::cf::assign();
        *__p = *buf;
        v24 = v27;
        v19 = __p;
        if (v27 < 0)
        {
          v19 = *buf;
        }

        *v28 = 136315138;
        v29 = v19;
        v20 = "#N Could not assign key '%s' value to a CFType for copying";
LABEL_21:
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v20, v28, 0xCu);
        if (SHIBYTE(v24) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    else
    {
      v18 = *(a1 + 40);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        memset(buf, 0, sizeof(buf));
        v27 = 0;
        ctu::cf::assign();
        *__p = *buf;
        v24 = v27;
        v21 = __p;
        if (v27 < 0)
        {
          v21 = *buf;
        }

        *v28 = 136315138;
        v29 = v21;
        v20 = "#N Could not convert key '%s' value to a CFType for copying";
        goto LABEL_21;
      }
    }

    sub_10000A1EC(&cf);
  }
}

void sub_10152D398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if ((v20 & 1) == 0)
  {
    sub_100004A34(v21);
  }

  _Unwind_Resume(exception_object);
}

void sub_10152D3F4(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 48));
  v3 = ServiceMap;
  if (v4 < 0)
  {
    v5 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
    v6 = 5381;
    do
    {
      v4 = v6;
      v7 = *v5++;
      v6 = (33 * v6) ^ v7;
    }

    while (v7);
  }

  std::mutex::lock(ServiceMap);
  *&v14 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v14);
  if (v8)
  {
    v10 = v8[3];
    v9 = v8[4];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v3);
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v9);
      v11 = 0;
      if (!v10)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
  v11 = 1;
  if (!v10)
  {
    goto LABEL_13;
  }

LABEL_10:
  (*(*v10 + 16))(&v14, v10);
  v12 = v14;
  v14 = 0uLL;
  v13 = *(a1 + 112);
  *(a1 + 104) = v12;
  if (v13)
  {
    sub_100004A34(v13);
    if (*(&v14 + 1))
    {
      sub_100004A34(*(&v14 + 1));
    }
  }

LABEL_13:
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }
}

void sub_10152D528(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_10152D54C(uint64_t a1, int a2)
{
  v3 = &kCFBooleanTrue;
  if (!a2)
  {
    v3 = &kCFBooleanFalse;
  }

  v4 = *v3;
  *&v14 = 0;
  sub_100045C8C(&v14);
  v13 = v4;
  *&v14 = 0;
  sub_100045C8C(&v14);
  if (v4)
  {
    v5 = kCommCenterSharedSettingsBundleId;
    if ((*(**(a1 + 88) + 24))(*(a1 + 88), kCommCenterSharedSettingsBundleId, @"CompanionInMetroStatus", v4))
    {
      v6 = *(a1 + 104);
      if (v6)
      {
        v15 = 0;
        __p[0] = @"CompanionInMetroStatus";
        v14 = 0uLL;
        sub_10005B328(&v14, __p, &__p[1], 1uLL);
        (*(*v6 + 16))(v6, v5, &v14);
        v7 = v14;
        if (v14)
        {
          *(&v14 + 1) = v14;
LABEL_18:
          operator delete(v7);
          return sub_100045C8C(&v13);
        }
      }

      return sub_100045C8C(&v13);
    }

    v8 = *(a1 + 40);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      return sub_100045C8C(&v13);
    }

    v14 = 0uLL;
    v15 = 0;
    ctu::cf::assign();
    *__p = v14;
    v17 = v15;
    v11 = __p;
    if (v15 < 0)
    {
      v11 = v14;
    }

    *buf = 136315138;
    v19 = v11;
    v10 = "#N Could not save key '%s' value to shared settings";
  }

  else
  {
    v8 = *(a1 + 40);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      return sub_100045C8C(&v13);
    }

    v14 = 0uLL;
    v15 = 0;
    ctu::cf::assign();
    *__p = v14;
    v17 = v15;
    v9 = __p;
    if (v15 < 0)
    {
      v9 = v14;
    }

    *buf = 136315138;
    v19 = v9;
    v10 = "#N Could not convert key '%s' value to a CFType for saving";
  }

  _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v10, buf, 0xCu);
  if (SHIBYTE(v17) < 0)
  {
    v7 = __p[0];
    goto LABEL_18;
  }

  return sub_100045C8C(&v13);
}

void sub_10152D79C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_100045C8C(&a9);
  _Unwind_Resume(a1);
}

void sub_10152D7E4(void *a1)
{
  *a1 = off_101F49080;
  NotifySubscription::~NotifySubscription((a1 + 15));
  v2 = a1[14];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[12];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = a1[9];
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = a1[7];
  if (v5)
  {
    sub_100004A34(v5);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 5));
  sub_1000C0544(a1 + 1);

  CompanionInMetroStatusSyncInterface::~CompanionInMetroStatusSyncInterface(a1);
}

void sub_10152D878(void *a1)
{
  *a1 = off_101F49080;
  NotifySubscription::~NotifySubscription((a1 + 15));
  v2 = a1[14];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[12];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = a1[9];
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = a1[7];
  if (v5)
  {
    sub_100004A34(v5);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 5));
  sub_1000C0544(a1 + 1);
  CompanionInMetroStatusSyncInterface::~CompanionInMetroStatusSyncInterface(a1);

  operator delete();
}

void sub_10152D9EC(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_10152DAC0);
  __cxa_rethrow();
}

void sub_10152DA2C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10152DA80(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10152DAC0(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

__n128 sub_10152DB68(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F491C8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10152DBA0(void *a1, xpc *this, BOOL a3)
{
  v4 = a1[1];
  v5 = *v4;
  *v4 = xpc::dyn_cast_or_default(this, 0, a3);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  return v6(v8, v5);
}

uint64_t sub_10152DC38(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10152DC84(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[1];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      if (*v1)
      {
        v5 = v1[2];
        v6 = v1[3];
        v7 = (*v1 + (v6 >> 1));
        if (v6)
        {
          v5 = *(*v7 + v5);
        }

        v5(v7);
      }

      sub_100004A34(v4);
    }
  }
}

uint64_t sub_10152DD38(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10152DD54(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_10152DD84(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F49278;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10152DDD8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_10152DDEC(uint64_t result, int a2)
{
  if (*(result + 953) != 1 || *(result + 952) != a2)
  {
    *(result + 952) = a2 | 0x100;
  }

  return result;
}

uint64_t sub_10152DE10(uint64_t result, int a2)
{
  if (*(result + 905) != 1 || *(result + 904) != a2)
  {
    *(result + 904) = a2 | 0x100;
  }

  return result;
}

void sub_10152DE34()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_10152DFEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_100EE25BC(va);
  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(a1);
}

void sub_10152E04C(void *a1, void *a2, Registry **a3)
{
  ServiceMap = Registry::getServiceMap(*a3);
  v7 = ServiceMap;
  if ((v8 & 0x8000000000000000) != 0)
  {
    v9 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
    v10 = 5381;
    do
    {
      v8 = v10;
      v11 = *v9++;
      v10 = (33 * v10) ^ v11;
    }

    while (v11);
  }

  std::mutex::lock(ServiceMap);
  v27 = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &v27);
  if (!v12)
  {
    v14 = 0;
LABEL_9:
    std::mutex::unlock(v7);
    v13 = 0;
    v15 = 1;
    if (!v14)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v14 = v12[3];
  v13 = v12[4];
  if (!v13)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v7);
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v13);
  v15 = 0;
  if (!v14)
  {
LABEL_7:
    v16 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
LABEL_19:
    *a2 = v16;
    *a1 = 0;
    a1[1] = 0;
    goto LABEL_20;
  }

LABEL_10:
  if (((*(*v14 + 32))(v14) & 1) == 0)
  {
    v16 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:13 userInfo:0];
    goto LABEL_19;
  }

  v17 = Registry::getServiceMap(*a3);
  v18 = v17;
  if ((v19 & 0x8000000000000000) != 0)
  {
    v20 = (v19 & 0x7FFFFFFFFFFFFFFFLL);
    v21 = 5381;
    do
    {
      v19 = v21;
      v22 = *v20++;
      v21 = (33 * v21) ^ v22;
    }

    while (v22);
  }

  std::mutex::lock(v17);
  v27 = v19;
  v23 = sub_100009510(&v18[1].__m_.__sig, &v27);
  if (!v23)
  {
    std::mutex::unlock(v18);
LABEL_24:
    v24 = 0;
    v26 = 1;
    goto LABEL_28;
  }

  v25 = v23[3];
  v24 = v23[4];
  if (!v24)
  {
    std::mutex::unlock(v18);
    if (v25)
    {
      *a1 = v25;
      a1[1] = 0;
      goto LABEL_20;
    }

    goto LABEL_24;
  }

  atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v18);
  atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v24);
  if (!v25)
  {
    v26 = 0;
LABEL_28:
    *a2 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
    *a1 = 0;
    a1[1] = 0;
    if (v26)
    {
      goto LABEL_20;
    }

    goto LABEL_29;
  }

  *a1 = v25;
  a1[1] = v24;
  atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_29:
  sub_100004A34(v24);
LABEL_20:
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }
}

void sub_10152E2C8(_Unwind_Exception *exception_object)
{
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  if ((v4 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10152E514(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
{
  sub_100E6421C(v30 - 88);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a26)
  {
    sub_100004A34(a26);
  }

  _Unwind_Resume(a1);
}

void sub_10152E840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if ((v26 & 1) == 0)
  {
    sub_100004A34(v24);
  }

  if (a22)
  {
    sub_100004A34(a22);
  }

  _Unwind_Resume(a1);
}

void sub_10152E8D8(uint64_t a1, const char *a2)
{
  v3 = *a2;
  if (v3 != 1)
  {
    if (v3 != 2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
    }

    if (a2[8] == 19)
    {
      v4 = *(a1 + 32);
      if (v4)
      {
        objc_msgSend_getLogContext(v4);
        v5 = v25;
      }

      else
      {
        v5 = 0;
        *buf = 0;
        v25 = 0;
      }

      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "EOS Driver not ready", buf, 2u);
      }

      v18 = *(a1 + 40);
      v19 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:35 userInfo:0];
      (*(v18 + 16))(v18, 0, v19);
    }

    else
    {
      v14 = *(a1 + 32);
      if (v14)
      {
        objc_msgSend_getLogContext(v14);
        v15 = v25;
      }

      else
      {
        v15 = 0;
        *buf = 0;
        v25 = 0;
      }

      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Get Vinyl EOS FW Update Info error", buf, 2u);
      }

      v20 = *(a1 + 40);
      v19 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      (*(v20 + 16))(v20, 0, v19);
    }

LABEL_26:

    return;
  }

  v6 = *(a2 + 1);
  if (!v6)
  {
    v16 = *(a1 + 32);
    if (v16)
    {
      objc_msgSend_getLogContext(v16);
      v17 = v25;
    }

    else
    {
      v17 = 0;
      *buf = 0;
      v25 = 0;
    }

    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "No result", buf, 2u);
    }

    v21 = *(a1 + 40);
    v19 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
    (*(v21 + 16))(v21, 0, v19);
    goto LABEL_26;
  }

  v23 = v6;
  v7 = [CTEOSFirmwareInfo alloc];
  v8 = [NSString stringWithUTF8String:kVinylFwUpdateCurrentVersion];
  v9 = [v23 objectForKey:v8];
  [v7 setCurrentVersion:v9];

  v10 = [NSString stringWithUTF8String:kVinylFwUpdateUserProfiles];
  v11 = [v23 objectForKey:v10];
  [v7 setUserProfiles:v11];

  v12 = [NSString stringWithUTF8String:kVinylFwUpdateCsn];
  v13 = [v23 objectForKey:v12];
  [v7 setUpdateCsn:v13];

  (*(*(a1 + 40) + 16))();
}

void sub_10152ED34(uint64_t a1)
{

  operator delete();
}

id sub_10152EDE8(uint64_t a1, void *a2)
{
  *a2 = off_101F492C8;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_10152EE38(id *a1)
{

  operator delete(a1);
}

void sub_10152EE74(uint64_t a1, const void **a2)
{
  v10 = 0;
  cf = 0;
  v3 = *a2;
  if (v3 == 2)
  {
    LOBYTE(v10) = 2;
    LOBYTE(cf) = *(a2 + 8);
  }

  else if (v3 == 1)
  {
    sub_1001140B4(&v10, a2 + 1);
    if (v10 == 1)
    {
      v12 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      (*(*(a1 + 8) + 16))();
      sub_10001021C(&v12);
      goto LABEL_10;
    }
  }

  v4 = *(a1 + 8);
  v5 = [NSError alloc];
  if (v10 != 2)
  {
    if (v10 == 1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      v8 = &ctu::ResultIsNotError::~ResultIsNotError;
      ctu::ResultIsNotError::ResultIsNotError(exception);
    }

    else
    {
      exception = __cxa_allocate_exception(0x10uLL);
      v8 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
      ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
    }

    __cxa_throw(exception, v9, v8);
  }

  v6 = [v5 initWithDomain:NSPOSIXErrorDomain code:cf userInfo:0];
  (*(v4 + 16))(v4, 0, v6);

LABEL_10:
  if (v10 == 1)
  {
    sub_10001021C(&cf);
  }
}

void sub_10152EFE8(_Unwind_Exception *a1, uint64_t a2, char a3, uint64_t a4, char a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, const void *);
  sub_10001021C(va1);
  if (a5 == 1)
  {
    sub_10001021C(va);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10152F044(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F49338))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10152F0BC(uint64_t a1)
{

  operator delete();
}

id sub_10152F170(uint64_t a1, void *a2)
{
  *a2 = off_101F49358;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_10152F1C0(id *a1)
{

  operator delete(a1);
}

void sub_10152F1FC(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  if (v2 == 7)
  {
    v4 = *(v3 + 16);
    v5 = *(a1 + 8);

    v4(v5, 1, 0);
  }

  else
  {
    v6 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:v2 userInfo:0];
    (*(v3 + 16))(v3, 0);
  }
}

uint64_t sub_10152F2D0(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F493B8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10152F31C()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_10152F354(uint64_t a1, uint64_t a2, os_log_t *a3)
{
  v4 = *a3;
  if (os_log_type_enabled(*a3, OS_LOG_TYPE_ERROR))
  {
    v6 = sub_1011E88BC(*(a1 + 12));
    v7 = 136315138;
    v8 = v6;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[%s] Do not invoke this function. Decompression is NOT required for this message. message.", &v7, 0xCu);
  }

  return __TUAssertTrigger("false");
}

BOOL sub_10152F418(uint64_t a1, os_log_t *a2, uint64_t a3)
{
  v6 = *a2;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = sub_1011E88BC(*(a1 + 12));
    *buf = 136315138;
    v33 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [%s] Decoding", buf, 0xCu);
  }

  *(a1 + 32) = 0;
  *buf = 0;
  if (sub_100E69330(a3, buf, 0x10uLL) & 1) != 0 && (v31 = 0, (sub_100E69330(a3, &v31, 0x10uLL)) && (v8 = *buf, v9 = v31, *buf = 0, (sub_100E69330(a3, buf, 0x10uLL)) && (v31 = 0, (sub_100E69330(a3, &v31, 0x10uLL)))
  {
    v10 = 0;
    *(a1 + 32) |= (v8 << 48) | (v9 << 32) | v31 | (*buf << 16);
    v11 = *a3;
    v12 = *(a3 + 8) - *a3;
    v13 = *(a3 + 32);
    v14 = *(a3 + 40);
    v15 = 8;
    while (1)
    {
      if (!v14)
      {
        *(a3 + 32) = ++v13;
        *(a3 + 40) = 8;
        v14 = 8;
      }

      if (v13 >= v12)
      {
        break;
      }

      v16 = v15 - v14;
      if (v15 <= v14)
      {
        *(a3 + 40) = v14 - v15;
        v18 = *(v11 + v13) >> (v14 - v15);
        if (v15 < 8)
        {
          v19 = ~(-1 << v15);
        }

        else
        {
          v19 = -1;
        }

        v20 = v10 | v18 & v19;
        v21 = v20;
        if (v20 >= 2u)
        {
          v21 = 2;
        }

        *(a1 + 40) = v21;
        if (v20 < 2u)
        {
          return 1;
        }

        v22 = *a2;
        result = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
        if (result)
        {
          v23 = sub_1011E88BC(*(a1 + 12));
          *buf = 136315394;
          v33 = v23;
          v34 = 1024;
          v35 = v20;
          v24 = "[%s] Invalid errorCode: %hhu";
          v25 = v22;
          v26 = 18;
          goto LABEL_23;
        }

        return result;
      }

      v17 = *(v11 + v13) & ~(-1 << v14);
      *(a3 + 40) = 0;
      v10 |= v17 << v16;
      v15 = v16;
      v14 = 0;
      if (v16 - 9 < 0xFFFFFFFFFFFFFFF8)
      {
        __assert_rtn("read", "CTBitwise.h", 193, "N > 0 && N <= 8");
      }
    }

    *(a3 + 24) = 1;
    v28 = *a2;
    result = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v29 = sub_1011E88BC(*(a1 + 12));
    *buf = 136315138;
    v33 = v29;
    v24 = "[%s] Failed to read errorCode";
  }

  else
  {
    v28 = *a2;
    result = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v30 = sub_1011E88BC(*(a1 + 12));
    *buf = 136315138;
    v33 = v30;
    v24 = "[%s] Failed to read timestamp";
  }

  v25 = v28;
  v26 = 12;
LABEL_23:
  _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, v24, buf, v26);
  return 0;
}

void sub_10152F790(uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  operator new();
}

void sub_10152FDE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (*(v26 - 145) < 0)
  {
    operator delete(*(v26 - 168));
  }

  ctu::OsLogLogger::~OsLogLogger((v24 + 40));
  sub_1000C0544(v25);
  IsoMccCacheInterface::~IsoMccCacheInterface(v24);
  operator delete();
}

void sub_10152FF88(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  sub_1000087B4(&a16);
  if (a29 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x10152FF48);
}

void sub_10152FFB8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  sub_1000087B4(&a32);
  if (a42 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x10152FF58);
}

void sub_10152FFF0()
{
  ctu::OsLogLogger::~OsLogLogger((v1 - 208));
  sub_1000C0544(v0);
  ctu::OsLogContext::~OsLogContext((v1 - 144));
  JUMPOUT(0x10152FF70);
}

void sub_101530020(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 32);
  v23 = 0;
  v24 = 0;
  v25 = 0;
  sub_101531CDC(&v23, v5);
  v6 = HIBYTE(v25);
  if (v25 >= 0)
  {
    v7 = HIBYTE(v25);
  }

  else
  {
    v7 = v24;
  }

  if (!v7)
  {
    *a3 = 0;
    *(a3 + 24) = 0;
    if ((v6 & 0x80) == 0)
    {
      return;
    }

    goto LABEL_42;
  }

  v21[0] = 0;
  v21[1] = 0;
  v22 = 0;
  v8 = v21;
  sub_1000677C4(v21, v7 + 14);
  if (v22 < 0)
  {
    v8 = v21[0];
  }

  if (v25 >= 0)
  {
    v9 = &v23;
  }

  else
  {
    v9 = v23;
  }

  memmove(v8, v9, v7);
  strcpy(v8 + v7, "/MCC2ISO.plist");
  theDict = 0;
  sub_1009F7DEC((v5 + 40), (v5 + 464), v21, &theDict);
  *a3 = 0u;
  *(a3 + 16) = 0u;
  if (theDict)
  {
    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(v17, *a2, *(a2 + 8));
    }

    else
    {
      *v17 = *a2;
      v18 = *(a2 + 16);
    }

    if (SHIBYTE(v18) < 0)
    {
      sub_100005F2C(__p, v17[0], v17[1]);
    }

    else
    {
      *__p = *v17;
      v28 = v18;
    }

    v26 = 0;
    if (SHIBYTE(v28) < 0)
    {
      sub_100005F2C(buf, __p[0], __p[1]);
    }

    else
    {
      *buf = *__p;
      v32 = v28;
    }

    v29 = 0;
    if (ctu::cf::convert_copy())
    {
      v12 = v26;
      v26 = v29;
      v30 = v12;
      sub_100005978(&v30);
    }

    if (SHIBYTE(v32) < 0)
    {
      operator delete(*buf);
    }

    v13 = v26;
    v19 = v26;
    v26 = 0;
    sub_100005978(&v26);
    if (SHIBYTE(v28) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v18) < 0)
    {
      operator delete(v17[0]);
    }

    __p[0] = 0;
    *buf = CFDictionaryGetValue(theDict, v13);
    sub_100060DE8(__p, buf);
    if (__p[0])
    {
      memset(buf, 0, sizeof(buf));
      v32 = 0;
      ctu::cf::assign();
      v15 = *buf;
      v14 = *&buf[8];
      LODWORD(v30) = v32;
      *(&v30 + 3) = *(&v32 + 3);
      v16 = HIBYTE(v32);
      if (SHIBYTE(v32) < 0)
      {
        sub_100005F2C(a3, *buf, *&buf[8]);
        *(a3 + 24) = 1;
        operator delete(v15);
      }

      else
      {
        *a3 = *buf;
        *(a3 + 8) = v14;
        *(a3 + 16) = v30;
        *(a3 + 19) = *(&v30 + 3);
        *(a3 + 23) = v16;
        *(a3 + 24) = 1;
      }
    }

    sub_100005978(__p);
    sub_100005978(&v19);
  }

  else
  {
    v10 = *(v5 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v21;
      if (v22 < 0)
      {
        v11 = v21[0];
      }

      *buf = 136315138;
      *&buf[4] = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#N Could not load %s as dictionary", buf, 0xCu);
    }
  }

  sub_10001021C(&theDict);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21[0]);
  }

  if (v25 < 0)
  {
LABEL_42:
    operator delete(v23);
  }
}

void sub_10153038C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, const void *a15, const void *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  operator delete(v36);
  sub_100005978(&a30);
  sub_100005978(&a15);
  if ((*(v35 + 24) & 1) != 0 && *(v35 + 23) < 0)
  {
    operator delete(*v35);
  }

  sub_10001021C(&a16);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(a1);
}

const void **sub_101530478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *(a1 + 32);
  theArray = 0;
  sub_101531DE8(&theArray, v5, a2);
  *a3 = 0u;
  a3[1] = 0u;
  v6 = theArray;
  if (theArray)
  {
    v7 = 0;
    memset(v13, 0, sizeof(v13));
    while (CFArrayGetCount(v6) > v7)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v7);
      if (ValueAtIndex)
      {
        v9 = CFGetTypeID(ValueAtIndex);
        if (v9 == CFStringGetTypeID())
        {
          __p[0] = 0;
          __p[1] = 0;
          v12 = 0;
          v15 = 0uLL;
          v16 = 0;
          ctu::cf::assign();
          *__p = v15;
          v12 = v16;
          sub_100005308(v13, __p);
          if (SHIBYTE(v12) < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      ++v7;
      v6 = theArray;
    }

    sub_10153218C(a3, v13);
    *&v15 = v13;
    sub_1000087B4(&v15);
  }

  return sub_100010250(&theArray);
}

void sub_101530588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, const void *a15)
{
  a9 = &a12;
  sub_1000087B4(&a9);
  if (*(v15 + 24) == 1)
  {
    a12 = v15;
    sub_1000087B4(&a12);
  }

  sub_100010250(&a15);
  _Unwind_Resume(a1);
}

const void **sub_1015305FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = *(a1 + 32);
  theArray = 0;
  sub_101531DE8(&theArray, v5, a2);
  *a3 = 0u;
  *(a3 + 1) = 0u;
  v6 = theArray;
  if (theArray)
  {
    v7 = 0;
    __src = 0;
    v22 = 0;
    v23 = 0;
    while (CFArrayGetCount(v6) > v7)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v7);
      v9 = ValueAtIndex;
      if (ValueAtIndex)
      {
        v10 = CFGetTypeID(ValueAtIndex);
        if (v10 == CFStringGetTypeID())
        {
          IntValue = CFStringGetIntValue(v9);
          v12 = v22;
          if (v22 >= v23)
          {
            v14 = __src;
            v15 = v22 - __src;
            v16 = (v22 - __src) >> 1;
            if (v16 <= -2)
            {
              sub_1000CE3D4();
            }

            if (v23 - __src <= v16 + 1)
            {
              v17 = v16 + 1;
            }

            else
            {
              v17 = v23 - __src;
            }

            if (v23 - __src >= 0x7FFFFFFFFFFFFFFELL)
            {
              v18 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v18 = v17;
            }

            if (v18)
            {
              sub_1001B9700(&__src, v18);
            }

            *(2 * v16) = IntValue;
            v13 = (2 * v16 + 2);
            memcpy(0, v14, v15);
            v19 = __src;
            __src = 0;
            v22 = v13;
            v23 = 0;
            if (v19)
            {
              operator delete(v19);
            }
          }

          else
          {
            *v22 = IntValue;
            v13 = v12 + 1;
          }

          v22 = v13;
        }
      }

      ++v7;
      v6 = theArray;
    }

    *a3 = 0;
    *(a3 + 1) = 0;
    *(a3 + 2) = 0;
    sub_1001B964C(a3, __src, v22, (v22 - __src) >> 1);
    a3[24] = 1;
    if (__src)
    {
      v22 = __src;
      operator delete(__src);
    }
  }

  return sub_100010250(&theArray);
}

void sub_1015307A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, const void *a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (*(v12 + 24) == 1)
  {
    v14 = *v12;
    if (*v12)
    {
      *(v12 + 8) = v14;
      operator delete(v14);
    }
  }

  sub_100010250(&a12);
  _Unwind_Resume(a1);
}

const void **sub_1015307F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *(a1 + 32);
  theArray = 0;
  v34[0] = 0;
  v34[1] = 0;
  v35 = 0;
  sub_101531CDC(v34, v5);
  if (v35 >= 0)
  {
    v6 = HIBYTE(v35);
  }

  else
  {
    v6 = v34[1];
  }

  if (!v6)
  {
    v9 = 0;
    theArray = 0;
    if ((v35 & 0x8000000000000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

  v32[0] = 0;
  v32[1] = 0;
  v33 = 0;
  v7 = v32;
  sub_1000677C4(v32, v6 + 14);
  if (v33 < 0)
  {
    v7 = v32[0];
  }

  if (v35 >= 0)
  {
    v8 = v34;
  }

  else
  {
    v8 = v34[0];
  }

  memmove(v7, v8, v6);
  strcpy(v7 + v6, "/MNC2ISO.plist");
  theDict = 0;
  sub_1009F7DEC((v5 + 40), (v5 + 464), v32, &theDict);
  v30 = 0;
  if (!theDict)
  {
    v10 = *(v5 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v32;
      if (v33 < 0)
      {
        v11 = v32[0];
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#N Could not load %s as dictionary", &buf, 0xCu);
    }

    goto LABEL_55;
  }

  key = 0;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v28 = *(a2 + 16);
  }

  if (SHIBYTE(v28) < 0)
  {
    sub_100005F2C(&__dst, __p[0], __p[1]);
  }

  else
  {
    __dst = *__p;
    v38 = v28;
  }

  v39 = 0;
  if (SHIBYTE(v38) < 0)
  {
    sub_100005F2C(&buf, __dst, *(&__dst + 1));
  }

  else
  {
    buf = __dst;
    v42 = v38;
  }

  v40 = 0;
  if (ctu::cf::convert_copy())
  {
    v12 = v39;
    v39 = v40;
    v24[0] = v12;
    sub_100005978(v24);
  }

  if (SHIBYTE(v42) < 0)
  {
    operator delete(buf);
  }

  key = v39;
  v39 = 0;
  sub_100005978(&v39);
  if (SHIBYTE(v38) < 0)
  {
    operator delete(__dst);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C(v24, *(a2 + 24), *(a2 + 32));
  }

  else
  {
    *v24 = *(a2 + 24);
    v25 = *(a2 + 40);
  }

  if (SHIBYTE(v25) < 0)
  {
    sub_100005F2C(&__dst, v24[0], v24[1]);
  }

  else
  {
    __dst = *v24;
    v38 = v25;
  }

  v36 = 0;
  if (SHIBYTE(v38) < 0)
  {
    sub_100005F2C(&buf, __dst, *(&__dst + 1));
  }

  else
  {
    buf = __dst;
    v42 = v38;
  }

  v39 = 0;
  if (ctu::cf::convert_copy())
  {
    v13 = v36;
    v36 = v39;
    v40 = v13;
    sub_100005978(&v40);
  }

  if (SHIBYTE(v42) < 0)
  {
    operator delete(buf);
  }

  v26 = v36;
  v36 = 0;
  sub_100005978(&v36);
  if (SHIBYTE(v38) < 0)
  {
    operator delete(__dst);
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(v24[0]);
  }

  *&__dst = 0;
  Value = CFDictionaryGetValue(theDict, key);
  v15 = Value;
  if (Value && (v16 = CFGetTypeID(Value), v16 == CFDictionaryGetTypeID()))
  {
    *&__dst = v15;
    CFRetain(v15);
    if (__dst)
    {
      v40 = CFDictionaryGetValue(__dst, v26);
      *&buf = 0;
      v17 = sub_1001FA5E0(&buf, &v40);
      v18 = v30;
      v30 = buf;
      *&buf = v18;
      sub_100010250(v17);
      sub_10001021C(&__dst);
      sub_100005978(&v26);
      sub_100005978(&key);
LABEL_55:
      v9 = v30;
      theArray = v30;
      v30 = 0;
      goto LABEL_58;
    }
  }

  else
  {
    *&__dst = 0;
  }

  theArray = 0;
  sub_10001021C(&__dst);
  sub_100005978(&v26);
  sub_100005978(&key);
  v9 = 0;
LABEL_58:
  sub_100010250(&v30);
  sub_10001021C(&theDict);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32[0]);
  }

  if (v35 < 0)
  {
LABEL_61:
    operator delete(v34[0]);
  }

LABEL_62:
  *a3 = 0u;
  a3[1] = 0u;
  if (v9)
  {
    v19 = 0;
    __dst = 0uLL;
    v38 = 0;
    while (CFArrayGetCount(v9) > v19)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v19);
      if (ValueAtIndex)
      {
        v21 = CFGetTypeID(ValueAtIndex);
        if (v21 == CFStringGetTypeID())
        {
          v34[0] = 0;
          v34[1] = 0;
          v35 = 0;
          buf = 0uLL;
          v42 = 0;
          ctu::cf::assign();
          *v34 = buf;
          v35 = v42;
          sub_100005308(&__dst, v34);
          if (SHIBYTE(v35) < 0)
          {
            operator delete(v34[0]);
          }
        }
      }

      ++v19;
      v9 = theArray;
    }

    sub_10153218C(a3, &__dst);
    *&buf = &__dst;
    sub_1000087B4(&buf);
  }

  return sub_100010250(&theArray);
}

void sub_101530D50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, int a26, __int16 a27, char a28, char a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, char a46)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_101530EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *(a1 + 32);
  theArray = 0;
  v36[0] = 0;
  v36[1] = 0;
  v37 = 0;
  sub_101531CDC(v36, v5);
  if (v37 >= 0)
  {
    v6 = HIBYTE(v37);
  }

  else
  {
    v6 = v36[1];
  }

  if (!v6)
  {
    v9 = 0;
    theArray = 0;
    if ((v37 & 0x8000000000000000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

  v34[0] = 0;
  v34[1] = 0;
  v35 = 0;
  v7 = v34;
  sub_1000677C4(v34, v6 + 18);
  if (v35 < 0)
  {
    v7 = v34[0];
  }

  if (v37 >= 0)
  {
    v8 = v36;
  }

  else
  {
    v8 = v36[0];
  }

  memmove(v7, v8, v6);
  strcpy(v7 + v6, "/MCCMNC2ISO3.plist");
  theDict = 0;
  sub_1009F7DEC((v5 + 40), (v5 + 464), v34, &theDict);
  v32 = 0;
  if (!theDict)
  {
    v10 = *(v5 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v34;
      if (v35 < 0)
      {
        v11 = v34[0];
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#N Could not load %s as dictionary", &buf, 0xCu);
    }

    goto LABEL_59;
  }

  key = 0;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v30 = *(a2 + 16);
  }

  if (SHIBYTE(v30) < 0)
  {
    sub_100005F2C(&__dst, __p[0], __p[1]);
  }

  else
  {
    __dst = *__p;
    v40 = v30;
  }

  v41 = 0;
  if (SHIBYTE(v40) < 0)
  {
    sub_100005F2C(&buf, __dst, *(&__dst + 1));
  }

  else
  {
    buf = __dst;
    v44 = v40;
  }

  v42 = 0;
  if (ctu::cf::convert_copy())
  {
    v12 = v41;
    v41 = v42;
    v26[0] = v12;
    sub_100005978(v26);
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(buf);
  }

  key = v41;
  v41 = 0;
  sub_100005978(&v41);
  if (SHIBYTE(v40) < 0)
  {
    operator delete(__dst);
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p[0]);
  }

  v28 = 0;
  if (*(a2 + 47) < 0)
  {
    sub_100005F2C(v26, *(a2 + 24), *(a2 + 32));
  }

  else
  {
    *v26 = *(a2 + 24);
    v27 = *(a2 + 40);
  }

  if (SHIBYTE(v27) < 0)
  {
    sub_100005F2C(&__dst, v26[0], v26[1]);
  }

  else
  {
    __dst = *v26;
    v40 = v27;
  }

  v38 = 0;
  if (SHIBYTE(v40) < 0)
  {
    sub_100005F2C(&buf, __dst, *(&__dst + 1));
  }

  else
  {
    buf = __dst;
    v44 = v40;
  }

  v41 = 0;
  if (ctu::cf::convert_copy())
  {
    v13 = v38;
    v38 = v41;
    v42 = v13;
    sub_100005978(&v42);
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(buf);
  }

  v28 = v38;
  v38 = 0;
  sub_100005978(&v38);
  if (SHIBYTE(v40) < 0)
  {
    operator delete(__dst);
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26[0]);
  }

  *&__dst = 0;
  Value = CFDictionaryGetValue(theDict, key);
  v15 = Value;
  if (Value && (v16 = CFGetTypeID(Value), v16 == CFDictionaryGetTypeID()))
  {
    *&__dst = v15;
    CFRetain(v15);
    if (__dst)
    {
      if (v28)
      {
        v42 = CFDictionaryGetValue(__dst, v28);
        *&buf = 0;
        v17 = sub_1001FA5E0(&buf, &v42);
        v18 = v32;
        v32 = buf;
        *&buf = v18;
        sub_100010250(v17);
      }

      if (!v32)
      {
        v42 = CFDictionaryGetValue(__dst, @"FallbackToMCC");
        *&buf = 0;
        v19 = sub_1001FA5E0(&buf, &v42);
        v20 = v32;
        v32 = buf;
        *&buf = v20;
        sub_100010250(v19);
      }

      sub_10001021C(&__dst);
      sub_100005978(&v28);
      sub_100005978(&key);
LABEL_59:
      v9 = v32;
      theArray = v32;
      v32 = 0;
      goto LABEL_62;
    }
  }

  else
  {
    *&__dst = 0;
  }

  theArray = 0;
  sub_10001021C(&__dst);
  sub_100005978(&v28);
  sub_100005978(&key);
  v9 = 0;
LABEL_62:
  sub_100010250(&v32);
  sub_10001021C(&theDict);
  if (SHIBYTE(v35) < 0)
  {
    operator delete(v34[0]);
  }

  if (v37 < 0)
  {
LABEL_65:
    operator delete(v36[0]);
  }

LABEL_66:
  *a3 = 0u;
  a3[1] = 0u;
  if (v9)
  {
    v21 = 0;
    __dst = 0uLL;
    v40 = 0;
    while (CFArrayGetCount(v9) > v21)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v21);
      if (ValueAtIndex)
      {
        v23 = CFGetTypeID(ValueAtIndex);
        if (v23 == CFStringGetTypeID())
        {
          v36[0] = 0;
          v36[1] = 0;
          v37 = 0;
          buf = 0uLL;
          v44 = 0;
          ctu::cf::assign();
          *v36 = buf;
          v37 = v44;
          sub_100005308(&__dst, v36);
          if (SHIBYTE(v37) < 0)
          {
            operator delete(v36[0]);
          }
        }
      }

      ++v21;
      v9 = theArray;
    }

    sub_10153218C(a3, &__dst);
    *&buf = &__dst;
    sub_1000087B4(&buf);
  }

  return sub_100010250(&theArray);
}

void sub_101531494(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, const void *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, const void *a25, const void *a26, const void *a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, char a40)
{
  sub_10001021C((v40 - 144));
  sub_100005978(&a17);
  sub_100005978(&a25);
  sub_100010250(&a26);
  sub_10001021C(&a27);
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  _Unwind_Resume(a1);
}

const void **sub_10153163C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *(a1 + 32);
  theArray = 0;
  v26[0] = 0;
  v26[1] = 0;
  v27 = 0;
  sub_101531CDC(v26, v5);
  if (v27 >= 0)
  {
    v6 = HIBYTE(v27);
  }

  else
  {
    v6 = v26[1];
  }

  if (!v6)
  {
    theArray = 0;
    if ((v27 & 0x8000000000000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  v24[0] = 0;
  v24[1] = 0;
  v25 = 0;
  v7 = v24;
  sub_1000677C4(v24, v6 + 19);
  if (v25 < 0)
  {
    v7 = v24[0];
  }

  if (v27 >= 0)
  {
    v8 = v26;
  }

  else
  {
    v8 = v26[0];
  }

  memmove(v7, v8, v6);
  strcpy(v7 + v6, "/ISO3ToMCCMNC.plist");
  theDict = 0;
  sub_1009F7DEC((v5 + 40), (v5 + 464), v24, &theDict);
  theArray = 0;
  if (theDict)
  {
    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(__dst, *a2, *(a2 + 8));
    }

    else
    {
      *__dst = *a2;
      v21 = *(a2 + 16);
    }

    if (SHIBYTE(v21) < 0)
    {
      sub_100005F2C(__p, __dst[0], __dst[1]);
    }

    else
    {
      *__p = *__dst;
      v30 = v21;
    }

    v28 = 0;
    if (SHIBYTE(v30) < 0)
    {
      sub_100005F2C(&buf, __p[0], __p[1]);
    }

    else
    {
      buf = *__p;
      v34 = v30;
    }

    v31 = 0;
    if (ctu::cf::convert_copy())
    {
      v11 = v28;
      v28 = v31;
      v32 = v11;
      sub_100005978(&v32);
    }

    if (SHIBYTE(v34) < 0)
    {
      operator delete(buf);
    }

    v12 = v28;
    v22 = v28;
    v28 = 0;
    sub_100005978(&v28);
    if (SHIBYTE(v30) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v21) < 0)
    {
      operator delete(__dst[0]);
    }

    __p[0] = CFDictionaryGetValue(theDict, v12);
    *&buf = 0;
    v13 = sub_1001FA5E0(&buf, __p);
    theArray = buf;
    *&buf = 0;
    sub_100010250(v13);
    sub_100005978(&v22);
  }

  else
  {
    v9 = *(v5 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v24;
      if (v25 < 0)
      {
        v10 = v24[0];
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#N Could not load %s as dictionary", &buf, 0xCu);
    }
  }

  sub_10001021C(&theDict);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(v24[0]);
  }

  if (v27 < 0)
  {
LABEL_38:
    operator delete(v26[0]);
  }

LABEL_39:
  *a3 = 0u;
  a3[1] = 0u;
  v14 = theArray;
  if (theArray)
  {
    v15 = 0;
    __p[0] = 0;
    __p[1] = 0;
    v30 = 0;
    while (CFArrayGetCount(v14) > v15)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v15);
      if (ValueAtIndex)
      {
        v17 = CFGetTypeID(ValueAtIndex);
        if (v17 == CFStringGetTypeID())
        {
          v26[0] = 0;
          v26[1] = 0;
          v27 = 0;
          buf = 0uLL;
          v34 = 0;
          ctu::cf::assign();
          *v26 = buf;
          v27 = v34;
          sub_100005308(__p, v26);
          if (SHIBYTE(v27) < 0)
          {
            operator delete(v26[0]);
          }
        }
      }

      ++v15;
      v14 = theArray;
    }

    sub_10153218C(a3, __p);
    *&buf = __p;
    sub_1000087B4(&buf);
  }

  return sub_100010250(&theArray);
}

void sub_101531A10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, int a18, const void *a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, const void *a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  sub_100005978(&a32);
  if (a38 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  sub_100010250(&a10);
  sub_10001021C(&a19);
  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_101531B34(uint64_t a1)
{
  sub_101532E2C((a1 + 40));
  v2 = *(a1 + 32);
  if (v2)
  {
    _Block_release(v2);
  }

  v4 = (a1 + 8);
  sub_1000087B4(&v4);
  return a1;
}

uint64_t sub_101531B88(uint64_t a1)
{
  sub_101532EA0((a1 + 40));
  v2 = *(a1 + 32);
  if (v2)
  {
    _Block_release(v2);
  }

  v4 = (a1 + 8);
  sub_1000087B4(&v4);
  return a1;
}

void sub_101531BDC(void *a1, dispatch_object_t object)
{
  if (object)
  {
    dispatch_retain(object);
    dispatch_group_enter(object);
  }

  v4 = a1[2];
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101531CDC(void *a1, uint64_t a2)
{
  v3 = *(a2 + 488);
  if (v3)
  {
    v4 = *(*v3 + 152);

    v4();
  }

  else
  {
    v6 = *(a2 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "No CarrierBundleInterface, file a radar with the generated stackshot!", buf, 2u);
      v6 = *(a2 + 40);
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *v7 = 0;
      _os_log_fault_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "IsoMccCache missing CarrierBundleInterface", v7, 2u);
    }

    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_101531DE8(void *a1, uint64_t a2, uint64_t a3)
{
  v21 = 0;
  v22 = 0;
  v23 = 0;
  sub_101531CDC(&v21, a2);
  v6 = HIBYTE(v23);
  if (v23 >= 0)
  {
    v7 = HIBYTE(v23);
  }

  else
  {
    v7 = v22;
  }

  if (!v7)
  {
    *a1 = 0;
    if ((v6 & 0x80) == 0)
    {
      return;
    }

    goto LABEL_38;
  }

  v19[0] = 0;
  v19[1] = 0;
  v20 = 0;
  v8 = v19;
  sub_1000677C4(v19, v7 + 14);
  if (v20 < 0)
  {
    v8 = v19[0];
  }

  if (v23 >= 0)
  {
    v9 = &v21;
  }

  else
  {
    v9 = v21;
  }

  memmove(v8, v9, v7);
  strcpy(v8 + v7, "/ISO2MCC.plist");
  theDict = 0;
  sub_1009F7DEC((a2 + 40), (a2 + 464), v19, &theDict);
  *a1 = 0;
  if (theDict)
  {
    if (*(a3 + 23) < 0)
    {
      sub_100005F2C(v15, *a3, *(a3 + 8));
    }

    else
    {
      *v15 = *a3;
      v16 = *(a3 + 16);
    }

    if (SHIBYTE(v16) < 0)
    {
      sub_100005F2C(__p, v15[0], v15[1]);
    }

    else
    {
      *__p = *v15;
      v26 = v16;
    }

    v24 = 0;
    if (SHIBYTE(v26) < 0)
    {
      sub_100005F2C(buf, __p[0], __p[1]);
    }

    else
    {
      *buf = *__p;
      v30 = v26;
    }

    v27 = 0;
    if (ctu::cf::convert_copy())
    {
      v12 = v24;
      v24 = v27;
      v28 = v12;
      sub_100005978(&v28);
    }

    if (SHIBYTE(v30) < 0)
    {
      operator delete(*buf);
    }

    v13 = v24;
    v17 = v24;
    v24 = 0;
    sub_100005978(&v24);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v16) < 0)
    {
      operator delete(v15[0]);
    }

    __p[0] = CFDictionaryGetValue(theDict, v13);
    *buf = 0;
    v14 = sub_1001FA5E0(buf, __p);
    *a1 = *buf;
    *buf = 0;
    sub_100010250(v14);
    sub_100005978(&v17);
  }

  else
  {
    v10 = *(a2 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v19;
      if (v20 < 0)
      {
        v11 = v19[0];
      }

      *buf = 136315138;
      *&buf[4] = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#N Could not load %s as dictionary", buf, 0xCu);
    }
  }

  sub_10001021C(&theDict);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19[0]);
  }

  if (v23 < 0)
  {
LABEL_38:
    operator delete(v21);
  }
}

void sub_1015320D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, int a16, const void *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, const void *a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  sub_100005978(&a30);
  if (a36 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  sub_100010250(v36);
  sub_10001021C(&a17);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10153218C(uint64_t a1, __int128 **a2)
{
  if (*(a1 + 24) == 1)
  {
    v5 = a1;
    sub_1000087B4(&v5);
    *(a1 + 24) = 0;
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_10004EFD0(a1, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  *(a1 + 24) = 1;
  return a1;
}

void sub_101532208(uint64_t a1)
{
  v4 = 0uLL;
  v5 = 0;
  ctu::cf::assign();
  *__p = 0uLL;
  v3 = 0;
  (*(*a1 + 64))(a1, __p);
  if (SHIBYTE(v3) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_101532294(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015322C4(uint64_t a1)
{
  v4 = 0uLL;
  v5 = 0;
  ctu::cf::assign();
  *__p = 0uLL;
  v3 = 0;
  (*(*a1 + 72))(a1, __p);
  if (SHIBYTE(v3) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_101532350(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_101532380(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5[0] = a1;
  v5[1] = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_101533EC8;
  v6[3] = &unk_101F49A68;
  v6[4] = a1 + 8;
  v6[5] = v5;
  v7 = v6;
  v4 = a1 + 24;
  v3 = *(a1 + 24);
  if (*(v4 + 8))
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    block = _NSConcreteStackBlock;
    v9 = 0x40000000;
    v10 = sub_101534330;
    v11 = &unk_101F49AA8;
    v12 = a3;
    v13 = &v7;
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    block = _NSConcreteStackBlock;
    v9 = 0x40000000;
    v10 = sub_1015342C0;
    v11 = &unk_101F49A88;
    v12 = a3;
    v13 = &v7;
    dispatch_sync(v3, &block);
  }
}

void sub_1015324A8(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5[0] = a1;
  v5[1] = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_1015343A0;
  v6[3] = &unk_101F49AC8;
  v6[4] = a1 + 8;
  v6[5] = v5;
  v7 = v6;
  v4 = a1 + 24;
  v3 = *(a1 + 24);
  if (*(v4 + 8))
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    block = _NSConcreteStackBlock;
    v9 = 0x40000000;
    v10 = sub_1015347BC;
    v11 = &unk_101F49B08;
    v12 = a3;
    v13 = &v7;
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    block = _NSConcreteStackBlock;
    v9 = 0x40000000;
    v10 = sub_101534750;
    v11 = &unk_101F49AE8;
    v12 = a3;
    v13 = &v7;
    dispatch_sync(v3, &block);
  }
}

void sub_1015325D0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6[0] = a1;
  v6[1] = a2;
  v6[2] = a3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_101534828;
  v7[3] = &unk_101F49B28;
  v7[4] = a1 + 8;
  v7[5] = v6;
  v8 = v7;
  v5 = a1 + 24;
  v4 = *(a1 + 24);
  if (*(v5 + 8))
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_101534330;
    v12 = &unk_101F49AA8;
    v13 = a4;
    v14 = &v8;
    dispatch_async_and_wait(v4, &block);
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_1015342C0;
    v12 = &unk_101F49A88;
    v13 = a4;
    v14 = &v8;
    dispatch_sync(v4, &block);
  }
}

void sub_1015326F8(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2)
  {
    v6 = 0uLL;
    v7 = 0;
    ctu::cf::assign();
    *__p = 0uLL;
    v5 = 0;
    (*(*a1 + 24))(a1, __p);
    if (SHIBYTE(v5) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_101532794(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1015327C4(uint64_t a1, uint64_t a2)
{
  v5[0] = a1;
  v5[1] = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_101534D38;
  v6[3] = &unk_101F49BA8;
  v6[4] = a1 + 8;
  v6[5] = v5;
  v7 = v6;
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  if (*(v3 + 8))
  {
    v14 = 0;
    block = _NSConcreteStackBlock;
    v9 = 0x40000000;
    v10 = sub_10006A65C;
    v11 = &unk_101F49BE8;
    v12 = &v14;
    v13 = &v7;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    v14 = 0;
    block = _NSConcreteStackBlock;
    v9 = 0x40000000;
    v10 = sub_100059700;
    v11 = &unk_101F49BC8;
    v12 = &v14;
    v13 = &v7;
    dispatch_sync(v2, &block);
  }

  return v14 & 1;
}

void sub_1015328F4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6[0] = a1;
  v6[1] = a2;
  v6[2] = a3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_101535308;
  v7[3] = &unk_101F49C08;
  v7[4] = a1 + 8;
  v7[5] = v6;
  v8 = v7;
  v5 = a1 + 24;
  v4 = *(a1 + 24);
  if (*(v5 + 8))
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_101534330;
    v12 = &unk_101F49AA8;
    v13 = a4;
    v14 = &v8;
    dispatch_async_and_wait(v4, &block);
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_1015342C0;
    v12 = &unk_101F49A88;
    v13 = a4;
    v14 = &v8;
    dispatch_sync(v4, &block);
  }
}

void sub_101532A1C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5[0] = a1;
  v5[1] = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_101535388;
  v6[3] = &unk_101F49C28;
  v6[4] = a1 + 8;
  v6[5] = v5;
  v7 = v6;
  v4 = a1 + 24;
  v3 = *(a1 + 24);
  if (*(v4 + 8))
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    block = _NSConcreteStackBlock;
    v9 = 0x40000000;
    v10 = sub_101534330;
    v11 = &unk_101F49AA8;
    v12 = a3;
    v13 = &v7;
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    block = _NSConcreteStackBlock;
    v9 = 0x40000000;
    v10 = sub_1015342C0;
    v11 = &unk_101F49A88;
    v12 = a3;
    v13 = &v7;
    dispatch_sync(v3, &block);
  }
}

void sub_101532B44(uint64_t a1)
{
  if (*(a1 + 480))
  {
    sub_101533070((a1 + 88));
    sub_101532E2C((a1 + 152));
    sub_101532FB0((a1 + 216));
    sub_101532EA0((a1 + 280));
    sub_101532EA0((a1 + 344));
    sub_101532E2C((a1 + 408));
    v2 = *(a1 + 440);
    *(a1 + 432) = 0;
    *(a1 + 440) = 0;
    if (v2)
    {

      sub_100004A34(v2);
    }
  }
}

void sub_101532BBC(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 104);
    v7 = 136315394;
    v8 = "ISO for MCC";
    v9 = 2048;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s cache has %zu entries", &v7, 0x16u);
    v2 = *(a1 + 40);
  }

  sub_101532D38(a1 + 112, "String MCCs for ISO", v2);
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 232);
    v7 = 136315394;
    v8 = "Integer MCCs for ISO";
    v9 = 2048;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s cache has %zu entries", &v7, 0x16u);
    v4 = *(a1 + 40);
  }

  sub_101532D38(a1 + 240, "Subregion ISO for MCC + MNC", v4);
  sub_101532D38(a1 + 304, "ISO3s for MCC + MNC", *(a1 + 40));
  v6 = *(a1 + 40);

  sub_101532D38(a1 + 368, "String MCCMNCs for ISO3", v6);
}

void sub_101532D38(uint64_t a1, uint64_t a2, os_log_t oslog)
{
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 56);
    v7 = 136315394;
    v8 = a2;
    v9 = 2048;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "#I %s cache has %zu entries", &v7, 0x16u);
  }
}

void sub_101532DF4(uint64_t a1)
{
  sub_1015330E4(a1);

  operator delete();
}

void sub_101532E2C(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        sub_1003ECF44((v2 + 2));
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void *sub_101532EA0(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        sub_101532F04(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

void sub_101532F04(uint64_t a1)
{
  v2 = (a1 + 64);
  sub_1000087B4(&v2);
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete(a1);
}

void *sub_101532F64(void *a1)
{
  sub_101532FB0(a1 + 5);
  v2 = a1[4];
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_101532FB0(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        sub_1001E0640((v2 + 2));
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t sub_101533024(uint64_t a1)
{
  sub_101533070((a1 + 40));
  v2 = *(a1 + 32);
  if (v2)
  {
    _Block_release(v2);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_101533070(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        sub_1000DD108((v2 + 2));
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void sub_1015330E4(uint64_t a1)
{
  *a1 = off_101F49640;
  v2 = *(a1 + 496);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 472);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 456);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 440);
  if (v5)
  {
    sub_100004A34(v5);
  }

  sub_101532E2C((a1 + 408));
  v6 = *(a1 + 400);
  if (v6)
  {
    _Block_release(v6);
  }

  v13 = (a1 + 376);
  sub_1000087B4(&v13);
  sub_101532EA0((a1 + 344));
  v7 = *(a1 + 336);
  if (v7)
  {
    _Block_release(v7);
  }

  v13 = (a1 + 312);
  sub_1000087B4(&v13);
  sub_101532EA0((a1 + 280));
  v8 = *(a1 + 272);
  if (v8)
  {
    _Block_release(v8);
  }

  v13 = (a1 + 248);
  sub_1000087B4(&v13);
  sub_101532FB0((a1 + 216));
  v9 = *(a1 + 208);
  if (v9)
  {
    _Block_release(v9);
  }

  v10 = *(a1 + 184);
  if (v10)
  {
    *(a1 + 192) = v10;
    operator delete(v10);
  }

  sub_101532E2C((a1 + 152));
  v11 = *(a1 + 144);
  if (v11)
  {
    _Block_release(v11);
  }

  v13 = (a1 + 120);
  sub_1000087B4(&v13);
  sub_101533070((a1 + 88));
  v12 = *(a1 + 80);
  if (v12)
  {
    _Block_release(v12);
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  IsoMccCacheInterface::~IsoMccCacheInterface(a1);
}

void sub_101533264(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1015332B8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1015332F8(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_101533324(ServiceManager::Service *this)
{
  *this = off_101F49880;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_101533380(ServiceManager::Service *this)
{
  *this = off_101F49880;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t *sub_101533400@<X0>(uint64_t *a1@<X8>)
{
  v2 = 2;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_101533444(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
    sub_101531BDC(v2, v3);
  }

  v4 = *(a1 + 8);

  sub_101531BDC(v4, 0);
}

void sub_1015334E8(uint64_t a1, int a2, ServiceStage *this)
{
  v3 = *(a1 + 8);
  ServiceStage::holdOffStage(&group[1], this);
  v4 = *(v3 + 16);
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t sub_1015335FC(uint64_t a1, const void *a2, __int128 **a3)
{
  *a1 = 5;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  sub_10004EFD0((a1 + 8), *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  if (a2)
  {
    v5 = _Block_copy(a2);
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 32) = v5;
  *(a1 + 40) = a1 + 40;
  *(a1 + 48) = a1 + 40;
  *(a1 + 56) = 0;
  return a1;
}

uint64_t sub_101533674(uint64_t a1, const void *a2, __int128 **a3)
{
  *a1 = 5;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  sub_10004EFD0((a1 + 8), *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  if (a2)
  {
    v5 = _Block_copy(a2);
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 32) = v5;
  *(a1 + 40) = a1 + 40;
  *(a1 + 48) = a1 + 40;
  *(a1 + 56) = 0;
  return a1;
}

uint64_t *sub_1015336EC(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Shutting down", buf, 2u);
  }

  ctu::RestModule::disconnect((v2 + 448));
  sub_1000FF844(&v6);
  return sub_1000049E0(&v5);
}

void sub_101533770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_10153378C(uint64_t *a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  v2 = *(*v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Bootstrapping", &buf, 2u);
  }

  sub_10000501C(&__p, "/cc/props/default_bundle");
  operator new();
}

void sub_101533A18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_101533B04(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F49900;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101533B3C(void *a1, xpc_object_t *a2)
{
  v4 = a1[1];
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v13 = *v4;
    ctu::rest::detail::read_enum_string_value(&v13, a2, v6);
    *v4 = v13;
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    *v4 = xpc::dyn_cast_or_default(a2, 0, v6);
  }

  v9 = a1[3];
  v10 = a1[4];
  v11 = (a1[2] + (v10 >> 1));
  if (v10)
  {
    v9 = *(*v11 + v9);
  }

  return v9(v11);
}

uint64_t sub_101533C2C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101533CF4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F49980;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101533D2C(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = (a1[1] + (v2 >> 1));
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

uint64_t sub_101533D74(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void ***sub_101533DC0(void ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_1001754E8(v2);
    operator delete();
  }

  return a1;
}

void sub_101533E0C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void **sub_101533E44(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_1001754E8(result);

    operator delete();
  }

  return result;
}

uint64_t sub_101533E88(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_101533EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_10004EFD0(a1, *(a2 + 8), *(a2 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - *(a2 + 8)) >> 3));
  if (*a2)
  {
    v6 = *(a2 + 48);
    if (v6 == a2 + 40)
    {
LABEL_27:
      v19 = 0u;
      v20 = 0u;
      (*(*(a2 + 32) + 16))(&v19);
      if (&v19 != a1 && (BYTE8(v20) & 1) != 0)
      {
        sub_100008234(a1, v19, *(&v19 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v19 + 1) - v19) >> 3));
      }

      v15 = *(a2 + 56);
      if (v15 >= *a2)
      {
        if (!v15)
        {
          __TUAssertTrigger("size > 0");
          v15 = *(a2 + 56);
        }

        v16 = *(a2 + 40);
        v18 = *v16;
        v17 = v16[1];
        *(v18 + 8) = v17;
        *v17 = v18;
        *(a2 + 56) = v15 - 1;
        sub_1003ECF44((v16 + 2));
        operator delete(v16);
      }

      if (*(a3 + 23) < 0)
      {
        sub_100005F2C(__p, *a3, *(a3 + 8));
      }

      else
      {
        *__p = *a3;
        *&v22 = *(a3 + 16);
      }

      *(&v22 + 1) = 0;
      v23 = 0uLL;
      sub_10004EFD0(&v22 + 8, *a1, *(a1 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3));
      operator new();
    }

    v7 = 0;
    while (1)
    {
      v22 = 0u;
      v23 = 0u;
      *__p = 0u;
      if (*(v6 + 39) < 0)
      {
        sub_100005F2C(__p, *(v6 + 16), *(v6 + 24));
      }

      else
      {
        *__p = *(v6 + 16);
        *&v22 = *(v6 + 32);
      }

      v23 = 0uLL;
      *(&v22 + 1) = 0;
      sub_10004EFD0(&v22 + 8, *(v6 + 40), *(v6 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(v6 + 48) - *(v6 + 40)) >> 3));
      if ((SBYTE7(v22) & 0x80u) == 0)
      {
        v8 = BYTE7(v22);
      }

      else
      {
        v8 = __p[1];
      }

      v9 = *(a3 + 23);
      v10 = v9;
      if ((v9 & 0x80u) != 0)
      {
        v9 = *(a3 + 8);
      }

      if (v8 == v9)
      {
        if ((SBYTE7(v22) & 0x80u) == 0)
        {
          v11 = __p;
        }

        else
        {
          v11 = __p[0];
        }

        if (v10 >= 0)
        {
          v12 = a3;
        }

        else
        {
          v12 = *a3;
        }

        v13 = memcmp(v11, v12, v8);
        v14 = v13 == 0;
        v7 |= v13 == 0;
        if (!v13 && (&v22 + 8) != a1)
        {
          sub_100008234(a1, *(&v22 + 1), v23, 0xAAAAAAAAAAAAAAABLL * ((v23 - *(&v22 + 1)) >> 3));
          v14 = 1;
          v7 = 1;
        }
      }

      else
      {
        v14 = 0;
      }

      *&v19 = &v22 + 8;
      sub_1000087B4(&v19);
      if (SBYTE7(v22) < 0)
      {
        operator delete(__p[0]);
      }

      if (v14)
      {
        break;
      }

      v6 = *(v6 + 8);
      if (v6 == a2 + 40)
      {
        goto LABEL_27;
      }
    }

    if ((v7 & 1) == 0)
    {
      __p[0] = a1;
      sub_1000087B4(__p);
    }
  }
}

void sub_101534228(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a12 == 1)
  {
    __p = &a9;
    sub_1000087B4(&__p);
  }

  sub_1000087B4(&__p);
  _Unwind_Resume(a1);
}

void sub_1015342C0(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v3);
  v2 = *(a1 + 32);
  sub_100071A6C(v2);
  *v2 = v3;
  *(v2 + 16) = v4;
  v3 = 0uLL;
  v4 = 0;
  v5 = &v3;
  sub_1000087B4(&v5);
}

void sub_101534330(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v3);
  v2 = *(a1 + 32);
  sub_100071A6C(v2);
  *v2 = v3;
  *(v2 + 16) = v4;
  v3 = 0uLL;
  v4 = 0;
  v5 = &v3;
  sub_1000087B4(&v5);
}

void sub_1015343A0(uint64_t a1@<X0>, void **a2@<X8>)
{
  v3 = *(a1 + 40);
  v5 = *v3;
  v4 = v3[1];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  sub_1001B964C(a2, *(v5 + 184), *(v5 + 192), (*(v5 + 192) - *(v5 + 184)) >> 1);
  if (*(v5 + 176))
  {
    v6 = *(v5 + 224);
    if (v6 == v5 + 216)
    {
LABEL_29:
      *v21 = 0u;
      v22 = 0u;
      (*(*(v5 + 208) + 16))(v21);
      if (v21 != a2 && (BYTE8(v22) & 1) != 0)
      {
        sub_1001BA4EC(a2, v21[0], v21[1], (v21[1] - v21[0]) >> 1);
      }

      v15 = *(v5 + 232);
      if (v15 >= *(v5 + 176))
      {
        if (!v15)
        {
          __TUAssertTrigger("size > 0");
          v15 = *(v5 + 232);
        }

        v16 = *(v5 + 216);
        v18 = *v16;
        v17 = v16[1];
        *(v18 + 8) = v17;
        *v17 = v18;
        *(v5 + 232) = v15 - 1;
        sub_1001E0640((v16 + 2));
        operator delete(v16);
      }

      if (*(v4 + 23) < 0)
      {
        sub_100005F2C(__dst, *v4, *(v4 + 1));
      }

      else
      {
        v19 = *v4;
        __p[0] = *(v4 + 2);
        *__dst = v19;
      }

      __p[1] = 0;
      v25 = 0uLL;
      sub_1001B964C(&__p[1], *a2, a2[1], (a2[1] - *a2) >> 1);
      operator new();
    }

    v7 = 0;
    while (1)
    {
      *__p = 0u;
      v25 = 0u;
      *__dst = 0u;
      if (*(v6 + 39) < 0)
      {
        sub_100005F2C(__dst, *(v6 + 16), *(v6 + 24));
      }

      else
      {
        *__dst = *(v6 + 16);
        __p[0] = *(v6 + 32);
      }

      v25 = 0uLL;
      __p[1] = 0;
      sub_1001B964C(&__p[1], *(v6 + 40), *(v6 + 48), (*(v6 + 48) - *(v6 + 40)) >> 1);
      if (SHIBYTE(__p[0]) >= 0)
      {
        v8 = HIBYTE(__p[0]);
      }

      else
      {
        v8 = __dst[1];
      }

      v9 = *(v4 + 23);
      v10 = v9;
      if ((v9 & 0x80u) != 0)
      {
        v9 = *(v4 + 1);
      }

      if (v8 == v9)
      {
        if (SHIBYTE(__p[0]) >= 0)
        {
          v11 = __dst;
        }

        else
        {
          v11 = __dst[0];
        }

        if (v10 >= 0)
        {
          v12 = v4;
        }

        else
        {
          v12 = *v4;
        }

        v13 = memcmp(v11, v12, v8);
        v14 = v13 == 0;
        v7 |= v13 == 0;
        if (!v13 && &__p[1] != a2)
        {
          sub_1001BA4EC(a2, __p[1], v25, (v25 - __p[1]) >> 1);
          v14 = 1;
          v7 = 1;
        }
      }

      else
      {
        v14 = 0;
      }

      if (__p[1])
      {
        *&v25 = __p[1];
        operator delete(__p[1]);
      }

      if (SHIBYTE(__p[0]) < 0)
      {
        operator delete(__dst[0]);
      }

      if (v14)
      {
        break;
      }

      v6 = *(v6 + 8);
      if (v6 == v5 + 216)
      {
        goto LABEL_29;
      }
    }

    if ((v7 & 1) == 0)
    {
      v20 = *a2;
      if (*a2)
      {
        a2[1] = v20;
        operator delete(v20);
      }
    }
  }
}

void sub_1015346B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a12 == 1 && __p)
  {
    operator delete(__p);
  }

  v20 = *v18;
  if (*v18)
  {
    *(v18 + 8) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(exception_object);
}

double sub_101534750(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v5);
  v2 = *(a1 + 32);
  v3 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v3;
    operator delete(v3);
    *v2 = 0;
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
  }

  result = *&v5;
  *v2 = v5;
  *(v2 + 16) = v6;
  return result;
}

double sub_1015347BC(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v5);
  v2 = *(a1 + 32);
  v3 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v3;
    operator delete(v3);
    *v2 = 0;
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
  }

  result = *&v5;
  *v2 = v5;
  *(v2 + 16) = v6;
  return result;
}

void sub_101534828(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 40);
  v4 = *v3;
  sub_1001C77E4(v5, v3[1], v3[2]);
  sub_1015348A8(a2, v4 + 240, v5);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }
}

void sub_1015348A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_10004EFD0(a1, *(a2 + 8), *(a2 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - *(a2 + 8)) >> 3));
  if (*a2)
  {
    v6 = *(a2 + 48);
    if (v6 == a2 + 40)
    {
LABEL_39:
      v24 = 0u;
      v25 = 0u;
      (*(*(a2 + 32) + 16))(&v24);
      if (&v24 != a1 && (BYTE8(v25) & 1) != 0)
      {
        sub_100008234(a1, v24, *(&v24 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v24 + 1) - v24) >> 3));
      }

      v20 = *(a2 + 56);
      if (v20 >= *a2)
      {
        if (!v20)
        {
          __TUAssertTrigger("size > 0");
          v20 = *(a2 + 56);
        }

        v21 = *(a2 + 40);
        v23 = *v21;
        v22 = v21[1];
        *(v23 + 8) = v22;
        *v22 = v23;
        *(a2 + 56) = v20 - 1;
        sub_101532F04(v21);
      }

      sub_1001C7444(__dst, a3);
      v29 = 0uLL;
      v30 = 0;
      sub_10004EFD0(&v29, *a1, *(a1 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3));
      operator new();
    }

    v7 = 0;
    while (1)
    {
      v30 = 0;
      v28 = 0u;
      v29 = 0u;
      *__dst = 0u;
      *__p = 0u;
      sub_1001C7444(__dst, (v6 + 16));
      v30 = 0;
      v29 = 0uLL;
      sub_10004EFD0(&v29, *(v6 + 64), *(v6 + 72), 0xAAAAAAAAAAAAAAABLL * ((*(v6 + 72) - *(v6 + 64)) >> 3));
      if (SHIBYTE(__p[0]) >= 0)
      {
        v8 = HIBYTE(__p[0]);
      }

      else
      {
        v8 = __dst[1];
      }

      v9 = *(a3 + 23);
      v10 = v9;
      if ((v9 & 0x80u) != 0)
      {
        v9 = *(a3 + 8);
      }

      if (v8 != v9)
      {
        goto LABEL_32;
      }

      v11 = SHIBYTE(__p[0]) >= 0 ? __dst : __dst[0];
      v12 = v10 >= 0 ? a3 : *a3;
      if (memcmp(v11, v12, v8))
      {
        goto LABEL_32;
      }

      if (v28 >= 0)
      {
        v13 = HIBYTE(v28);
      }

      else
      {
        v13 = v28;
      }

      v14 = *(a3 + 47);
      v15 = v14;
      if ((v14 & 0x80u) != 0)
      {
        v14 = *(a3 + 32);
      }

      if (v13 == v14)
      {
        if (v28 >= 0)
        {
          v16 = &__p[1];
        }

        else
        {
          v16 = __p[1];
        }

        if (v15 >= 0)
        {
          v17 = (a3 + 24);
        }

        else
        {
          v17 = *(a3 + 24);
        }

        v18 = memcmp(v16, v17, v13);
        v19 = v18 == 0;
        v7 |= v18 == 0;
        if (!v18 && &v29 != a1)
        {
          sub_100008234(a1, v29, *(&v29 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v29 + 1) - v29) >> 3));
          v19 = 1;
          v7 = 1;
        }
      }

      else
      {
LABEL_32:
        v19 = 0;
      }

      *&v24 = &v29;
      sub_1000087B4(&v24);
      if (SHIBYTE(v28) < 0)
      {
        operator delete(__p[1]);
      }

      if (SHIBYTE(__p[0]) < 0)
      {
        operator delete(__dst[0]);
      }

      if (v19)
      {
        break;
      }

      v6 = *(v6 + 8);
      if (v6 == a2 + 40)
      {
        goto LABEL_39;
      }
    }

    if ((v7 & 1) == 0)
    {
      __dst[0] = a1;
      sub_1000087B4(__dst);
    }
  }
}

void sub_101534C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char a14, void **a15)
{
  if (a14 == 1)
  {
    a15 = &a11;
    sub_1000087B4(&a15);
  }

  sub_1000087B4(&a15);
  _Unwind_Resume(a1);
}

__n128 sub_101534CD4(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v4);
  v2 = *(a1 + 32);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  result = v4;
  *(v2 + 16) = v5;
  *v2 = result;
  return result;
}

BOOL sub_101534D38(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = (*v1)[54];
  if (!v2)
  {
    operator new();
  }

  return sub_10031B7D4(v2, v1[1]) != 0;
}

void sub_101535258(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, const void *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  sub_10001021C(&a17);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(a1);
}

void sub_101535308(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 40);
  v4 = *v3;
  sub_1001C77E4(v5, v3[1], v3[2]);
  sub_1015348A8(a2, v4 + 304, v5);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }
}

void sub_101535650(uint64_t a1)
{
  *a1 = off_101F49C58;
  v2 = *(a1 + 176);
  *(a1 + 176) = 0;

  v3 = *(a1 + 184);
  *(a1 + 184) = 0;

  sub_10006DCAC(a1 + 208, *(a1 + 216));
  v4 = *(a1 + 200);
  if (v4)
  {
    sub_100004A34(v4);
  }

  NetworkUsageStrategy::~NetworkUsageStrategy(a1);
}

void sub_1015356E4(uint64_t a1)
{
  sub_101535650(a1);

  operator delete();
}

void sub_10153571C(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[1];
    v4 = std::__shared_weak_count::lock(v2);
    v9 = v4;
    if (v4)
    {
      {
        v10[0] = v6;
        v10[1] = v5;
        v7 = &v8;
      }

      else
      {
        v7 = v10;
      }

      *v7 = 0;
      *(v7 + 1) = 0;
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1015358A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015358D8(NetworkUsageStrategy *a1)
{
  if (!*(a1 + 22))
  {
    v2 = *(a1 + 5);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I start collect", buf, 2u);
    }

    v3 = [[NWStatsManager alloc] initWithQueue:*(a1 + 3)];
    v4 = *(a1 + 22);
    *(a1 + 22) = v3;

    v5 = *(a1 + 22);
    if (v5)
    {
      [v5 setDelegate:*(a1 + 23)];
      v12[0] = kNWStatsSelectInterfaceCellular;
      v12[1] = kNWStatsParameterMappingAppStateMonitoring;
      *buf = &__kCFBooleanTrue;
      v14 = &__kCFBooleanFalse;
      v12[2] = kNWStatsParameterMappingUseNEHelper;
      v12[3] = kNWStatsParameterMappingAvoidCoalitions;
      v15 = &__kCFBooleanTrue;
      v16 = &__kCFBooleanTrue;
      v6 = [NSDictionary dictionaryWithObjects:buf forKeys:v12 count:4];
      v7 = [*(a1 + 22) configure:v6];
      if (v7)
      {
        v8 = *(a1 + 5);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v10 = 136446210;
          v11 = strerror(v7);
          _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "unable to configure monitoring, reason %{public}s", &v10, 0xCu);
        }
      }
    }

    else
    {
      v9 = *(a1 + 5);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Not starting collect. Unable to allocate resource.", buf, 2u);
      }
    }
  }

  if ((*(*a1 + 72))(a1))
  {

    NetworkUsageStrategy::setupThresholdMonitor_sync(a1);
  }
}

void sub_101535B54(uint64_t a1)
{
  [*(a1 + 176) setDelegate:0];
  (*(*a1 + 56))(a1);
  v2 = *(a1 + 128);
  if (v2 != (a1 + 136))
  {
    do
    {
      (*(*a1 + 64))(a1, v2 + 4);
      v3 = v2[1];
      if (v3)
      {
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3);
      }

      else
      {
        do
        {
          v4 = v2[2];
          v5 = *v4 == v2;
          v2 = v4;
        }

        while (!v5);
      }

      v2 = v4;
    }

    while (v4 != (a1 + 136));
  }

  v6 = *(a1 + 208);
  if (v6 != (a1 + 216))
  {
    do
    {
      sub_101535C7C(a1, *(v6 + 7), 0);
      v7 = v6[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v6[2];
          v5 = *v8 == v6;
          v6 = v8;
        }

        while (!v5);
      }

      v6 = v8;
    }

    while (v8 != (a1 + 216));
  }
}

void sub_101535C7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = *(a1 + 176);
  v21 = kNWStatsParameterThresholds;
  v7 = [NSNumber numberWithUnsignedInt:a2];
  v19 = v7;
  v8 = [NSNumber numberWithUnsignedLongLong:a3];
  v20 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v22 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v11 = [v6 configure:v10];

  v12 = *(a1 + 40);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134218498;
    v14 = a3;
    v15 = 1024;
    v16 = v4;
    v17 = 2082;
    v18 = strerror(v11);
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Threshold monitor was set to %llu for interface %d: %{public}s", &v13, 0x1Cu);
  }
}

void sub_101535E48(uint64_t a1)
{
  v1 = *(a1 + 128);
  v2 = (a1 + 136);
  if (v1 != (a1 + 136))
  {
    do
    {
      v4 = *(v1 + 10);
      if ((v4 & 0x80000000) == 0 && v4 != *(a1 + 120))
      {
        v5 = *(a1 + 40);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v10 = v4;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I creating tethering source on %d since it differs from internet source", buf, 8u);
          v4 = *(v1 + 10);
        }

        sub_101535C7C(a1, v4, 0x100000);
      }

      v6 = v1[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v1[2];
          v8 = *v7 == v1;
          v1 = v7;
        }

        while (!v8);
      }

      v1 = v7;
    }

    while (v7 != v2);
  }
}

void sub_101535F8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != *(a1 + 120))
  {
    v5 = *(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = v2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I stopping tethering source %d since it differs from internet source", v6, 8u);
      v2 = *(a2 + 8);
    }

    sub_101535C7C(a1, v2, 0);
  }
}

void sub_101536068(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 euuid];
  v5 = [v4 UUIDString];
  v6 = [[NSString alloc] initWithUTF8String:"67A03811-DB0A-594E-C2AE-8B0517EDF26F"];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    v8 = v3;
    if ([v8 snapshotReason] == 2)
    {
      *buf = [v8 interfaceIndex];
      if (sub_10012B6B8(a1 + 208, buf))
      {
        sub_101535C7C(a1, [v8 interfaceIndex], 0);
      }
    }

    else
    {
      *buf = [v8 interfaceIndex];
      sub_1000C4284(a1 + 208, buf, buf);
      if (v9)
      {
        v10 = *(a1 + 40);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = [v8 interfaceIndex];
          *buf = 67109120;
          *&buf[4] = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Monitoring ims interface index %d", buf, 8u);
        }

        sub_101535C7C(a1, [v8 interfaceIndex], 0x100000);
      }
    }
  }

  v86 = v3;
  if ([v86 failedConsistencyChecks])
  {
    v12 = *(a1 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v86 uuid];
      v14 = [v13 UUIDString];
      if (v14)
      {
        v6 = [v86 uuid];
        v7 = [v6 UUIDString];
        v15 = v7;
        v16 = [v7 UTF8String];
      }

      else
      {
        v16 = "unknown uuid";
      }

      v42 = [v86 interfaceIndex];
      *buf = 136446466;
      *&buf[4] = v16;
      *&buf[12] = 1024;
      *&buf[14] = v42;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#N Snapshot (%{public}s) for interface %d failed consistency checks", buf, 0x12u);
      if (v14)
      {
      }
    }

    goto LABEL_138;
  }

  if (![v86 deltaAccountingRxCellularBytes] && !objc_msgSend(v86, "deltaAccountingTxCellularBytes"))
  {
    goto LABEL_138;
  }

  if ([v86 interfaceIndex] != *(a1 + 120))
  {
    v17 = [v86 interfaceIndex];
    v18 = *(a1 + 128);
    v19 = (a1 + 136);
    if (v18 != (a1 + 136))
    {
      while (*(v18 + 10) != v17)
      {
        v20 = v18[1];
        if (v20)
        {
          do
          {
            v21 = v20;
            v20 = *v20;
          }

          while (v20);
        }

        else
        {
          do
          {
            v21 = v18[2];
            v74 = *v21 == v18;
            v18 = v21;
          }

          while (!v74);
        }

        v18 = v21;
        if (v21 == v19)
        {
          goto LABEL_28;
        }
      }
    }

    if (v18 != v19)
    {
      NetworkUsageStrategy::updateTetheringDataUsage_sync(a1, v18 + 4);
      goto LABEL_138;
    }
  }

LABEL_28:
  v95 = 0;
  v101 = 0u;
  memset(buf, 0, sizeof(buf));
  memset(v94, 0, sizeof(v94));
  v93 = 0xFFFFFFFFFFFFFFFFLL;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  *__p_8 = 0u;
  memset(v100, 0, sizeof(v100));
  *buf = [v86 deltaAccountingRxCellularBytes];
  *&buf[8] = [v86 deltaAccountingTxCellularBytes];
  BYTE1(v100[4]) = [v86 interfaceUltraConstrained];
  LODWORD(v93) = [v86 epid];
  DWORD1(v93) = [v86 processID];
  objc_opt_class();
  BYTE8(v93) = objc_opt_isKindOfClass() & 1;
  objc_opt_class();
  BYTE9(v93) = objc_opt_isKindOfClass() & 1;
  BYTE10(v93) = [v86 interfaceCellularViaAnyFallback];
  v22 = [v86 euuid];
  if (v22)
  {
    v23 = [v86 euuid];
    v24 = [v23 UUIDString];
    v25 = v24;
    v26 = [v24 UTF8String];
    v27 = strlen(v26);
    if (v27 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1000A2378();
    }

    v28 = v27;
    if (v27 >= 0x17)
    {
      operator new();
    }

    BYTE7(v89) = v27;
    if (v27)
    {
      memmove(&__dst, v26, v27);
    }

    *(&__dst + v28) = 0;
    v29 = *(a1 + 152);
    v91.__r_.__value_.__s.__data_[0] = 0;
    v30 = sub_100D5E7A8(v29, (a1 + 160), &__dst);
    if (SBYTE7(v89) < 0)
    {
      operator delete(__dst);
    }

    if ((a1 + 160) != v30)
    {
      LOBYTE(v100[4]) = 1;
    }
  }

  v31 = [v86 attributedEntity];
  v32 = v31 == 0;

  if (v32)
  {
    v37 = *(a1 + 40);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__dst) = 0;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#N attributed entity is not valid", &__dst, 2u);
    }

    v38 = [v86 processName];
    v39 = v38 == 0;

    if (v39)
    {
      v43 = *(a1 + 40);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__dst) = 0;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#N process name is not valid", &__dst, 2u);
      }
    }

    else
    {
      v40 = [v86 processName];
      v41 = v40;
      sub_100016890(v94, [v40 UTF8String]);
    }
  }

  else
  {
    v33 = [v86 attributedEntity];
    v34 = v33;
    sub_100016890(&v94[1], [v33 UTF8String]);

    v35 = [v86 processName];
    v36 = v35;
    sub_100016890(v94, [v35 UTF8String]);
  }

  LOBYTE(v95) = [v86 attributionReason] == 0;
  v44 = [v86 uuid];
  if (v44)
  {
  }

  else
  {
    v45 = [v86 euuid];
    v46 = v45 == 0;

    if (v46)
    {
      v47 = *(a1 + 40);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__dst) = 0;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "#N snapshot uuid & euuid are not valid", &__dst, 2u);
      }
    }
  }

  v48 = [v86 uuid];
  v49 = v48 == 0;

  if (!v49)
  {
    v50 = [v86 uuid];
    v51 = [v50 UUIDString];
    v52 = v51;
    sub_100016890(&v96, [v51 UTF8String]);
  }

  v53 = [v86 euuid];
  v54 = v53 == 0;

  if (!v54)
  {
    v55 = [v86 euuid];
    v56 = [v55 UUIDString];
    v57 = v56;
    sub_100016890((&v97 + 8), [v56 UTF8String]);
  }

  v58 = [v86 localAddress];
  v59 = v58 == 0;

  if (!v59)
  {
    v91.__r_.__value_.__r.__words[0] = 0;
    v60 = [v86 localAddress];
    v61 = v60;
    v91.__r_.__value_.__r.__words[0] = v60;
    if (v60)
    {
      CFRetain(v60);
    }

    sockaddrToString(&v91, &__dst);
    if (SHIBYTE(v100[0]) < 0)
    {
      operator delete(__p_8[0]);
    }

    *__p_8 = __dst;
    v100[0] = v89;
    sub_10002D760(&v91.__r_.__value_.__l.__data_);
  }

  v62 = [v86 remoteAddress];
  v63 = v62 == 0;

  if (!v63)
  {
    v91.__r_.__value_.__r.__words[0] = 0;
    v64 = [v86 remoteAddress];
    v65 = v64;
    v91.__r_.__value_.__r.__words[0] = v64;
    if (v64)
    {
      CFRetain(v64);
    }

    sockaddrToString(&v91, &__dst);
    if (SHIBYTE(v100[3]) < 0)
    {
      operator delete(v100[1]);
    }

    *&v100[1] = __dst;
    v100[3] = v89;
    sub_1005C11CC(&v101, &v91.__r_.__value_.__l.__data_);
    sub_10002D760(&v91.__r_.__value_.__l.__data_);
  }

  *(&v101 + 1) = [v86 sourceIdentifier];
  v66 = [v86 snapshotReason];
  memset(&v90, 0, sizeof(v90));
  if (SHIBYTE(v94[1].__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(&v90, v94[1].__r_.__value_.__l.__data_, v94[1].__r_.__value_.__l.__size_);
  }

  else
  {
    v90 = v94[1];
  }

  size = HIBYTE(v90.__r_.__value_.__r.__words[2]);
  if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v90.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    std::string::operator=(&v90, v94);
  }

  __dst = 0u;
  v89 = 0u;
  sub_1008064DC(&v90, &__dst);
  if (BYTE8(v89) == 1)
  {
    std::string::operator=(&v94[1], &__dst);
  }

  else
  {
    if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v68 = &v90;
    }

    else
    {
      v68 = v90.__r_.__value_.__r.__words[0];
    }

    v69 = sub_100806234(v68);
    if (*v69)
    {
      sub_100016890(&v94[1], v69);
    }
  }

  if (BYTE8(v89) == 1 && SBYTE7(v89) < 0)
  {
    operator delete(__dst);
  }

  sub_1015371CC(&__dst, buf);
  v70 = *(a1 + 56);
  if (v70)
  {
    v71 = std::__shared_weak_count::lock(v70);
    if (v71)
    {
      v72 = v71;
      v73 = *(a1 + 48);
      if (v73)
      {
        (*(*v73 + 16))(v73, &__dst, v66 == 2);
      }

      sub_100004A34(v72);
    }
  }

  sub_100DB8D40(&__dst);
  if (SHIBYTE(v94[1].__r_.__value_.__r.__words[2]) < 0 && v94[1].__r_.__value_.__l.__size_ == 26)
  {
    v74 = *v94[1].__r_.__value_.__l.__data_ == 0x6C7070612E6D6F63 && *(v94[1].__r_.__value_.__r.__words[0] + 8) == 0x7375617461642E65;
    v75 = v74 && *(v94[1].__r_.__value_.__r.__words[0] + 16) == 0x646469682E656761;
    if (v75 && *(v94[1].__r_.__value_.__r.__words[0] + 24) == 28261)
    {
      if ((SHIBYTE(v94[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        v87 = v94[0];
        goto LABEL_124;
      }

      v81 = v94[0].__r_.__value_.__l.__size_;
      v77 = v94[0].__r_.__value_.__r.__words[0];
LABEL_123:
      sub_100005F2C(&v87, v77, v81);
LABEL_124:
      v82 = *(a1 + 56);
      if (v82)
      {
        v83 = std::__shared_weak_count::lock(v82);
        if (v83)
        {
          v84 = v83;
          v85 = *(a1 + 48);
          if (v85)
          {
            if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
            {
              sub_100005F2C(&v91, v87.__r_.__value_.__l.__data_, v87.__r_.__value_.__l.__size_);
            }

            else
            {
              v91 = v87;
            }

            (*(*v85 + 32))(v85, &v91);
            if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v91.__r_.__value_.__l.__data_);
            }
          }

          sub_100004A34(v84);
        }
      }

      if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v87.__r_.__value_.__l.__data_);
      }

      goto LABEL_135;
    }
  }

  if (SHIBYTE(v94[0].__r_.__value_.__r.__words[2]) < 0 && v94[0].__r_.__value_.__l.__size_ == 26)
  {
    v77 = v94[0].__r_.__value_.__r.__words[0];
    v78 = *v94[0].__r_.__value_.__l.__data_ == 0x6C7070612E6D6F63 && *(v94[0].__r_.__value_.__r.__words[0] + 8) == 0x7375617461642E65;
    v79 = v78 && *(v94[0].__r_.__value_.__r.__words[0] + 16) == 0x646469682E656761;
    if (v79 && *(v94[0].__r_.__value_.__r.__words[0] + 24) == 28261)
    {
      v81 = 26;
      goto LABEL_123;
    }
  }

LABEL_135:
  if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v90.__r_.__value_.__l.__data_);
  }

  sub_100DB8D40(buf);
LABEL_138:
}

void sub_101536C24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, uint64_t a62, char a63)
{
  sub_100004A34(v64);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a54 < 0)
  {
    operator delete(a49);
  }

  sub_100DB8D40(&a63);

  _Unwind_Resume(a1);
}

void sub_101536E38(uint64_t a1, int a2)
{
  (*(*a1 + 80))(a1, 1);
  v4 = *(a1 + 120);
  if ((v4 & 0x80000000) == 0 && a2 == v4)
  {
    v5 = *(a1 + 128);
    if (v5 != (a1 + 136))
    {
      do
      {
        if (*(v5 + 10) == *(a1 + 120))
        {
          NetworkUsageStrategy::updateTetheringDataUsage_sync(a1, v5 + 4);
        }

        v6 = v5[1];
        if (v6)
        {
          do
          {
            v7 = v6;
            v6 = *v6;
          }

          while (v6);
        }

        else
        {
          do
          {
            v7 = v5[2];
            v8 = *v7 == v5;
            v5 = v7;
          }

          while (!v8);
        }

        v5 = v7;
      }

      while (v7 != (a1 + 136));
    }
  }
}

void sub_101536F04(uint64_t a1)
{
  v2 = [*(a1 + 176) refresh:0];
  if (v2)
  {
    v3 = v2;
    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5[0] = 67109120;
      v5[1] = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Refreshing flows failed %d", v5, 8u);
    }
  }
}

void sub_101536FC0(void *a1)
{
  v2 = *a1;
  v6 = v2;
  v3 = v2[2];
  v4 = v2[3];
  v5 = (*v2 + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  v3(v5, v2[4]);
  sub_101537068(&v6);
  sub_100EC0D3C(a1);
}

void sub_10153704C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_101537068(va);
  sub_100EC0D3C(v3);
}

uint64_t *sub_101537068(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {

    v2 = *(v1 + 8);
    if (v2)
    {
      sub_100004A34(v2);
    }

    operator delete();
  }

  return a1;
}

void sub_1015370C4(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 24);
  v5 = (**a1 + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  v3(v5, *(v2 + 32));
  sub_101537174(v2);

  sub_100EC0D3C(a1);
}

uint64_t sub_101537174(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 8);
    if (v1)
    {
      sub_100004A34(v1);
    }

    operator delete();
  }

  return result;
}

uint64_t sub_1015371CC(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  *(a1 + 27) = *(a2 + 27);
  *a1 = v4;
  *(a1 + 16) = v5;
  if (*(a2 + 71) < 0)
  {
    sub_100005F2C((a1 + 48), *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    *(a1 + 64) = *(a2 + 8);
    *(a1 + 48) = v6;
  }

  if (*(a2 + 95) < 0)
  {
    sub_100005F2C((a1 + 72), *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v7 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 11);
    *(a1 + 72) = v7;
  }

  *(a1 + 96) = *(a2 + 96);
  if (*(a2 + 127) < 0)
  {
    sub_100005F2C((a1 + 104), *(a2 + 13), *(a2 + 14));
  }

  else
  {
    v8 = *(a2 + 104);
    *(a1 + 120) = *(a2 + 15);
    *(a1 + 104) = v8;
  }

  if (*(a2 + 151) < 0)
  {
    sub_100005F2C((a1 + 128), *(a2 + 16), *(a2 + 17));
  }

  else
  {
    v9 = a2[8];
    *(a1 + 144) = *(a2 + 18);
    *(a1 + 128) = v9;
  }

  if (*(a2 + 175) < 0)
  {
    sub_100005F2C((a1 + 152), *(a2 + 19), *(a2 + 20));
  }

  else
  {
    v10 = *(a2 + 152);
    *(a1 + 168) = *(a2 + 21);
    *(a1 + 152) = v10;
  }

  if (*(a2 + 199) < 0)
  {
    sub_100005F2C((a1 + 176), *(a2 + 22), *(a2 + 23));
  }

  else
  {
    v11 = a2[11];
    *(a1 + 192) = *(a2 + 24);
    *(a1 + 176) = v11;
  }

  *(a1 + 200) = *(a2 + 100);
  sub_10002D728((a1 + 208), a2 + 26);
  *(a1 + 216) = *(a2 + 27);
  return a1;
}

void sub_101537318(_Unwind_Exception *exception_object)
{
  if (*(v1 + 175) < 0)
  {
    operator delete(*(v1 + 152));
  }

  if (*(v1 + 151) < 0)
  {
    operator delete(*(v1 + 128));
  }

  if (*(v1 + 127) < 0)
  {
    operator delete(*(v1 + 104));
  }

  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  _Unwind_Resume(exception_object);
}

void sub_1015373B4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F49CE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_101537408(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10153741C(uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  operator new();
}

void sub_10153776C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, dispatch_object_t object, uint64_t a10, uint64_t a11, dispatch_object_t a12, dispatch_object_t a13, void *__p, std::__shared_weak_count *a15, int a16, __int16 a17, char a18, char a19)
{
  if (a10)
  {
    (*(*a10 + 8))(a10, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a15)
  {
    sub_100004A34(a15);
  }

  sub_100004A34(v19);
  _Unwind_Resume(a1);
}

void sub_1015378D4(void *a1)
{
  *a1 = off_101F49D30;
  v2 = a1[11];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    sub_100004A34(v4);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 5));
  sub_1000C0544(a1 + 1);

  AudioRoutingInterface::~AudioRoutingInterface(a1);
}

void sub_10153795C(void *a1)
{
  sub_1015378D4(a1);

  operator delete();
}

void sub_101537994(void *a1, dispatch_object_t object)
{
  if (object)
  {
    dispatch_retain(object);
    dispatch_group_enter(object);
  }

  v4 = a1[2];
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101537A94(void *a1, int a2, int a3)
{
  v3 = a1[2];
  if (v3)
  {
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101537B88(void *a1, char a2)
{
  v2 = a1[2];
  if (v2)
  {
    if (std::__shared_weak_count::lock(v2))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101537C78(void *a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a1[2];
  if (v3)
  {
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101537D78(void *a1, char a2)
{
  v2 = a1[2];
  if (v2)
  {
    if (std::__shared_weak_count::lock(v2))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101537E68(void *a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a1[2];
  if (v3)
  {
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101537F68(void *a1, int a2, int a3)
{
  v3 = a1[2];
  if (v3)
  {
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10153805C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = CSIBOOLAsString(*(a1 + 97));
    v5 = 136315138;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Voice mute: %s", &v5, 0xCu);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = CSIBOOLAsString(*(a1 + 96));
    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I TTY enabled: %s", &v5, 0xCu);
  }
}

void sub_10153818C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1015381E0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101538220(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_10153824C(ServiceManager::Service *this)
{
  *this = off_101F49EF8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_1015382A8(ServiceManager::Service *this)
{
  *this = off_101F49EF8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t *sub_101538328@<X0>(uint64_t *a1@<X8>)
{
  v2 = 3;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_10153836C(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
    sub_101537994(v2, v3);
  }

  v4 = *(a1 + 8);

  sub_101537994(v4, 0);
}

void sub_10153840C(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1015384EC(uint64_t a1, int a2, ServiceStage *this)
{
  v3 = *(a1 + 8);
  ServiceStage::holdOffStage(&group[1], this);
  v4 = *(v3 + 16);
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t *sub_101538600(void **a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Shutting down", buf, 2u);
  }

  v4 = *(v2 + 80);
  v5 = v1[1];
  *buf = v5;
  if (v5)
  {
    dispatch_retain(v5);
    dispatch_group_enter(v5);
  }

  (*(*v4 + 24))(v4, buf);
  if (*buf)
  {
    dispatch_group_leave(*buf);
    if (*buf)
    {
      dispatch_release(*buf);
    }
  }

  ctu::RestModule::disconnect((v2 + 64));
  sub_1000FF844(&v8);
  return sub_1000049E0(&v7);
}

void sub_1015386F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_group_t group)
{
  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_10153872C(void **a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Bootstrapping", buf, 2u);
  }

  v4 = *(v2 + 16);
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1015389F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, dispatch_group_t group, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  sub_1000062D4(&a24);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v24);
  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_101538AD8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F49F78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_101538B54(AudioRoutingCommandDriverDelegateInterface *this)
{
  *this = off_101F4A020;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  AudioRoutingCommandDriverDelegateInterface::~AudioRoutingCommandDriverDelegateInterface(this);
}

void sub_101538BB0(AudioRoutingCommandDriverDelegateInterface *this)
{
  *this = off_101F4A020;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  AudioRoutingCommandDriverDelegateInterface::~AudioRoutingCommandDriverDelegateInterface(this);

  operator delete();
}

void sub_101538C20(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      if (v7)
      {
        v8 = *(v7 + 40);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = "is not";
          if (a2)
          {
            v9 = "is";
          }

          v10 = 136315138;
          v11 = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Driver %s ready", &v10, 0xCu);
        }
      }

      sub_100004A34(v6);
    }
  }
}

void sub_101538D3C(AudioRoutingCommandDriverDelegateInterface *this)
{
  *this = off_101F4A020;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  AudioRoutingCommandDriverDelegateInterface::~AudioRoutingCommandDriverDelegateInterface(this);
}

void sub_101538D98(AudioRoutingCommandDriverDelegateInterface *this)
{
  *this = off_101F4A020;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  AudioRoutingCommandDriverDelegateInterface::~AudioRoutingCommandDriverDelegateInterface(this);

  operator delete();
}

xpc_object_t *sub_101538E08(xpc_object_t *a1)
{
  xpc_release(a1[1]);
  a1[1] = 0;
  xpc_release(*a1);
  *a1 = 0;
  return a1;
}

__n128 sub_101538EC8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4A048;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101538F00(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = (a1[1] + (v2 >> 1));
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

uint64_t sub_101538F48(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101538F94(uint64_t **a1)
{
  v3 = a1;
  v1 = **a1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Starting", buf, 2u);
  }

  (*(**(v1 + 80) + 16))(*(v1 + 80));
  operator delete();
}

void sub_101539074(uint64_t a1)
{
  v1 = a1;
  (*(**(**a1 + 80) + 40))(*(**a1 + 80), *(*a1 + 8), *(*a1 + 12));
  operator delete();
}

void sub_10153911C(BOOL **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  *(v2 + 96) = **a1;
  (*(**(v2 + 80) + 48))(*(v2 + 80));
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = v3;
  if (v3)
  {
    v10 = v3;
  }

  else
  {
    v4 = xpc_null_create();
    v10 = v4;
    if (!v4)
    {
      v5 = xpc_null_create();
      v4 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v4) == &_xpc_type_dictionary)
  {
    xpc_retain(v4);
    goto LABEL_9;
  }

  v5 = xpc_null_create();
LABEL_8:
  v10 = v5;
LABEL_9:
  xpc_release(v4);
  object = xpc_BOOL_create(*v1);
  if (!object)
  {
    object = xpc_null_create();
  }

  v11 = 0uLL;
  v12 = 0;
  ctu::cf::assign();
  *__p = 0uLL;
  v7 = 0;
  v8[0] = &v10;
  v8[1] = __p;
  sub_10000F688(v8, &object, &v11);
  xpc_release(v11);
  *&v11 = 0;
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(object);
  object = 0;
  __p[0] = v10;
  if (v10)
  {
    xpc_retain(v10);
  }

  else
  {
    __p[0] = xpc_null_create();
  }

  v8[0] = xpc_null_create();
  sub_10002A37C(74, __p, v8);
  xpc_release(v8[0]);
  xpc_release(__p[0]);
  xpc_release(v10);
  operator delete();
}

void sub_101539314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, uint64_t a12, uint64_t a13, xpc_object_t object, uint64_t a15, uint64_t a16, xpc_object_t a17)
{
  xpc_release(object);
  xpc_release(a11);
  xpc_release(a17);
  operator delete();
}

void sub_1015393B4(uint64_t *a1)
{
  v3 = a1;
  v1 = *a1;
  object = xpc_BOOL_create(*(**a1 + 96));
  if (!object)
  {
    object = xpc_null_create();
  }

  v4[0] = *(v1 + 8);
  v4[1] = "kAudioBoolean";
  sub_10000F688(v4, &object, &v6);
  xpc_release(v6);
  v6 = 0;
  xpc_release(object);
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete();
}

void sub_10153946C(BOOL **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  *(v2 + 97) = **a1;
  (*(**(v2 + 80) + 64))(*(v2 + 80));
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = v3;
  if (v3)
  {
    v10 = v3;
  }

  else
  {
    v4 = xpc_null_create();
    v10 = v4;
    if (!v4)
    {
      v5 = xpc_null_create();
      v4 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v4) == &_xpc_type_dictionary)
  {
    xpc_retain(v4);
    goto LABEL_9;
  }

  v5 = xpc_null_create();
LABEL_8:
  v10 = v5;
LABEL_9:
  xpc_release(v4);
  object = xpc_BOOL_create(*v1);
  if (!object)
  {
    object = xpc_null_create();
  }

  v11 = 0uLL;
  v12 = 0;
  ctu::cf::assign();
  *__p = 0uLL;
  v7 = 0;
  v8[0] = &v10;
  v8[1] = __p;
  sub_10000F688(v8, &object, &v11);
  xpc_release(v11);
  *&v11 = 0;
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(object);
  object = 0;
  __p[0] = v10;
  if (v10)
  {
    xpc_retain(v10);
  }

  else
  {
    __p[0] = xpc_null_create();
  }

  v8[0] = xpc_null_create();
  sub_10002A37C(73, __p, v8);
  xpc_release(v8[0]);
  xpc_release(__p[0]);
  xpc_release(v10);
  operator delete();
}

void sub_101539664(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, uint64_t a12, uint64_t a13, xpc_object_t object, uint64_t a15, uint64_t a16, xpc_object_t a17)
{
  xpc_release(object);
  xpc_release(a11);
  xpc_release(a17);
  operator delete();
}

void sub_101539704(uint64_t *a1)
{
  v3 = a1;
  v1 = *a1;
  object = xpc_BOOL_create(*(**a1 + 97));
  if (!object)
  {
    object = xpc_null_create();
  }

  v4[0] = *(v1 + 8);
  v4[1] = "kAudioMuteState";
  sub_10000F688(v4, &object, &v6);
  xpc_release(v6);
  v6 = 0;
  xpc_release(object);
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete();
}

void sub_1015397BC(uint64_t a1)
{
  v1 = a1;
  (*(**(**a1 + 80) + 72))(*(**a1 + 80), *(*a1 + 8), *(*a1 + 12));
  operator delete();
}

void sub_101539980(_Unwind_Exception *a1)
{
  if (v2)
  {
    dispatch_release(v2);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

uint64_t sub_1015399A4(uint64_t a1)
{
  *a1 = off_101F4A0C8;
  sub_100359978(a1 + 168, *(a1 + 176));
  v2 = *(a1 + 160);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 144);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 120);
  *(a1 + 120) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  sub_10153C1DC((a1 + 112), 0);
  v5 = *(a1 + 96);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(a1 + 80);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(a1 + 64);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  CarrierSpaceAuthFlowManagerInterface::~CarrierSpaceAuthFlowManagerInterface(a1);
  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

void sub_101539AB4(uint64_t a1)
{
  sub_1015399A4(a1);

  operator delete();
}

uint64_t sub_101539AEC(uint64_t a1, Registry **a2, NSObject **a3)
{
  ctu::OsLogContext::OsLogContext(&v36, kCtLoggingSystemName, "carrier.space.auth");
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v6 = *a3;
  *(a1 + 24) = *a3;
  if (v6)
  {
    dispatch_retain(v6);
  }

  *(a1 + 32) = 0;
  ctu::OsLogLogger::OsLogLogger(v34, &v36);
  ctu::OsLogLogger::OsLogLogger((a1 + 40), v34);
  ctu::OsLogLogger::~OsLogLogger(v34);
  ctu::OsLogContext::~OsLogContext(&v36);
  v35[0] = off_101E2A828;
  v35[1] = sub_10153A130;
  v35[3] = v35;
  *(a1 + 48) = 0;
  if ((capabilities::ct::supportsGemini(v7) & 1) == 0)
  {
    operator new();
  }

  if (!*(a1 + 48))
  {
    operator new();
  }

  sub_1000A8744(v35);
  *a1 = off_101F4A0C8;
  v8 = *a2;
  *(a1 + 56) = *a2;
  v9 = a2[1];
  *(a1 + 64) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
    v8 = *(a1 + 56);
  }

  ServiceMap = Registry::getServiceMap(v8);
  v11 = ServiceMap;
  if (v12 < 0)
  {
    v13 = (v12 & 0x7FFFFFFFFFFFFFFFLL);
    v14 = 5381;
    do
    {
      v12 = v14;
      v15 = *v13++;
      v14 = (33 * v14) ^ v15;
    }

    while (v15);
  }

  std::mutex::lock(ServiceMap);
  v36.var0 = v12;
  v16 = sub_100009510(&v11[1].__m_.__sig, &v36);
  if (v16)
  {
    v18 = v16[3];
    v17 = v16[4];
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v18 = 0;
    v17 = 0;
  }

  std::mutex::unlock(v11);
  *(a1 + 72) = v18;
  *(a1 + 80) = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v17);
  }

  v19 = Registry::getServiceMap(*(a1 + 56));
  v20 = v19;
  if (v21 < 0)
  {
    v22 = (v21 & 0x7FFFFFFFFFFFFFFFLL);
    v23 = 5381;
    do
    {
      v21 = v23;
      v24 = *v22++;
      v23 = (33 * v23) ^ v24;
    }

    while (v24);
  }

  std::mutex::lock(v19);
  v36.var0 = v21;
  v25 = sub_100009510(&v20[1].__m_.__sig, &v36);
  if (v25)
  {
    v27 = v25[3];
    v26 = v25[4];
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v20);
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v26);
      v28 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    v27 = 0;
  }

  std::mutex::unlock(v20);
  v26 = 0;
  v28 = 1;
LABEL_26:
  sub_10000501C(&v36, "CarrierSpace");
  (*(*v27 + 16))(v27, &v36);
  if ((v37 & 0x80000000) == 0)
  {
    if (v28)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  operator delete(v36.var0);
  if ((v28 & 1) == 0)
  {
LABEL_28:
    sub_100004A34(v26);
  }

LABEL_29:
  *(a1 + 112) = 0;
  *(a1 + 104) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  sub_10000501C(&__p, "CarrierSpaceAuthFlowManager");
  v29 = *(a1 + 24);
  v31 = v29;
  if (v29)
  {
    dispatch_retain(v29);
  }

  ctu::RestModule::RestModule();
  if (v31)
  {
    dispatch_release(v31);
  }

  if (v33 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 184) = 0;
  *(a1 + 176) = 0;
  *(a1 + 168) = a1 + 176;
  return a1;
}

const char *sub_10153A130(int a1)
{
  v1 = "carrier.space.auth.?";
  if (a1 == 2)
  {
    v1 = "carrier.space.auth.2";
  }

  if (a1 == 1)
  {
    return "carrier.space.auth.1";
  }

  else
  {
    return v1;
  }
}

void sub_10153A15C(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I Starting", v2, 2u);
  }
}

void sub_10153A1BC(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Bootstrapping", buf, 2u);
  }

  Registry::createRestModuleOneTimeUseConnection(&v3, *(a1 + 56));
  ctu::RestModule::connect();
  if (v4)
  {
    sub_100004A34(v4);
  }

  sub_10081FB5C(a1 + 168, a1 + 152);
  sub_10000501C(&__p, "/cc/events/app_state_changed");
  operator new();
}

void sub_10153A300(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  sub_1000062D4(&a18);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10153A348(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Shutting down", v4, 2u);
  }

  return ctu::RestModule::disconnect((a1 + 152));
}

void sub_10153A3B4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Migrating", __p, 2u);
  }

  v3 = *(a1 + 88);
  if (v3)
  {
    __p[0] = 0;
    __p[1] = 0;
    v8[0] = 0;
    sub_10000501C(v11, "com.apple.carrierspace.token");
    (*(*v3 + 32))(__p, v3, v11);
    if (v12 < 0)
    {
      operator delete(v11[0]);
    }

    v4 = __p[0];
    v5 = __p[1];
    if (__p[0] == __p[1])
    {
      if (!__p[0])
      {
        return;
      }

      __p[1] = __p[0];
    }

    else
    {
      v6 = *(a1 + 88);
      if (v6)
      {
        sub_10000501C(__p, "com.apple.carrierspace.token");
        (*(*v6 + 24))(v6, __p);
        if (SHIBYTE(v8[0]) < 0)
        {
          operator delete(__p[0]);
        }
      }

      v9 = 0u;
      v10 = 0u;
      *__p = 0u;
      *v8 = 0u;
      sub_1001122C4(__p, v4, v5, v5 - v4);
      sub_10153A5A4(*(a1 + 88), __p);
      sub_1003EC530(&v10);
      if (v8[1])
      {
        *&v9 = v8[1];
        operator delete(v8[1]);
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (!v4)
      {
        return;
      }
    }

    operator delete(v4);
  }
}

void sub_10153A550(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v14)
  {
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_10153A5A4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    sub_10000501C(v5, "com.apple.carrierspace.authinfo");
    sub_101348F70(a2, __p);
    (*(*a1 + 16))(a1, v5, __p);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v6 < 0)
    {
      operator delete(v5[0]);
    }
  }
}

void sub_10153A640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_10153A674(void *a1)
{
  sub_10153AC24(a1, 1);
  v8 = 0;
  v6 = 0u;
  v7 = 0u;
  *v4 = 0u;
  *__p = 0u;
  sub_10153AD0C(v4, a1[11]);
  if (v8)
  {
    sub_10153B3A0(a1, v4);
  }

  else
  {
    v2 = a1[5];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#N Auth information could not be read from keychain", v3, 2u);
    }

    (*(*a1 + 64))(a1, 0);
  }

  if (v8 == 1)
  {
    sub_1003EC530(&v7);
    if (__p[1])
    {
      *&v6 = __p[1];
      operator delete(__p[1]);
    }

    if (v4[0])
    {
      v4[1] = v4[0];
      operator delete(v4[0]);
    }
  }
}

void sub_10153A778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100D1A3C4(va);
  _Unwind_Resume(a1);
}

void sub_10153A78C(uint64_t a1, _DWORD **a2)
{
  v3 = *a2;
  if (*a2)
  {
    *v3 = 1;
  }

  if (!*(a1 + 104))
  {
    if (*(a1 + 128) != 1)
    {
      sub_10153AC24(a1, 1);
      operator new();
    }

    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Cannot proceed with authentication because app is still running", buf, 2u);
      v3 = *a2;
    }

    if (v3)
    {
      *v3 = 2;
    }
  }
}

void sub_10153AC24(uint64_t a1, int a2)
{
  v2 = *(a1 + 104);
  if (v2 != a2)
  {
    v5 = *(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if (v2 > 4)
      {
        v6 = "???";
      }

      else
      {
        v6 = off_101F4A538[v2];
      }

      v7 = off_101F4A538[a2];
      v8 = 136315394;
      v9 = v6;
      v10 = 2080;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Transitioning from %s to %s", &v8, 0x16u);
    }

    *(a1 + 104) = a2;
  }
}

void sub_10153AD0C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    *a1 = 0;
    *(a1 + 64) = 0;
    return;
  }

  v15 = 0;
  v16 = 0;
  v17 = 0;
  sub_10000501C(__p, "com.apple.carrierspace.authinfo");
  (*(*a2 + 32))(&v15, a2, __p);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = v15;
  if (v15 == v16)
  {
    *a1 = 0;
    *(a1 + 64) = 0;
    if (!v4)
    {
      return;
    }

    goto LABEL_13;
  }

  sub_101349318(&v15, v7);
  *a1 = *v7;
  *(a1 + 16) = v8;
  v7[0] = 0;
  v7[1] = 0;
  *(a1 + 24) = *v9;
  v8 = 0;
  v9[0] = 0;
  v5 = v10;
  v6 = v11;
  v10 = 0;
  v11 = 0;
  v9[1] = 0;
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  *(a1 + 56) = v12;
  *(a1 + 64) = 1;
  sub_1003EC530(&v11);
  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }

  v4 = v15;
  if (v15)
  {
LABEL_13:
    v16 = v4;
    operator delete(v4);
  }
}

void sub_10153AE44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  v24 = *(v22 - 40);
  if (v24)
  {
    *(v22 - 32) = v24;
    operator delete(v24);
  }

  _Unwind_Resume(exception_object);
}

void sub_10153AE74(uint64_t a1, xpc_object_t *a2)
{
  v4 = a1 + 56;
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  v6 = ServiceMap;
  if (v7 < 0)
  {
    v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
    v9 = 5381;
    do
    {
      v7 = v9;
      v10 = *v8++;
      v9 = (33 * v9) ^ v10;
    }

    while (v10);
  }

  std::mutex::lock(ServiceMap);
  __p[0] = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, __p);
  if (v11)
  {
    v13 = v11[3];
    v12 = v11[4];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v6);
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v12);
      v14 = 0;
      if (!v13)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6);
  v12 = 0;
  v14 = 1;
  if (!v13)
  {
LABEL_11:
    (*(*a1 + 64))(a1, 0);
    goto LABEL_38;
  }

LABEL_10:
  if (xpc_get_type(*a2) != &_xpc_type_dictionary)
  {
    goto LABEL_11;
  }

  v15 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(*(a1 + 112) + 8));
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    xpc::object::to_string(__p, a2);
    v16 = v31 >= 0 ? __p : __p[0];
    *buf = 136315138;
    *&buf[4] = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Launching authentication alert with options: %s", buf, 0xCu);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v17 = xpc_null_create();
  v29 = 0;
  v18 = xpc_dictionary_create(0, 0, 0);
  v19 = v18;
  if (v18)
  {
    v29 = v18;
  }

  else
  {
    v19 = xpc_null_create();
    v29 = v19;
    if (!v19)
    {
      v20 = xpc_null_create();
      v19 = 0;
      goto LABEL_25;
    }
  }

  if (xpc_get_type(v19) != &_xpc_type_dictionary)
  {
    v20 = xpc_null_create();
LABEL_25:
    v29 = v20;
    goto LABEL_26;
  }

  xpc_retain(v19);
LABEL_26:
  xpc_release(v19);
  v27 = *a2;
  *a2 = xpc_null_create();
  __p[0] = 0;
  __p[1] = 0;
  v31 = 0;
  ctu::cf::assign();
  *buf = *__p;
  v34 = v31;
  v21 = __p[0];
  if (v31 >= 0)
  {
    v21 = buf;
  }

  v26[0] = &v29;
  v26[1] = v21;
  sub_100DAE90C(v26, &v27, &object);
  xpc_release(object);
  object = 0;
  if (SHIBYTE(v34) < 0)
  {
    operator delete(*buf);
  }

  xpc_release(v27);
  v27 = 0;
  v22 = v29;
  v29 = xpc_null_create();
  xpc_release(v17);
  memset(buf, 0, sizeof(buf));
  (*(*v13 + 16))(buf, v13, v4);
  v23 = *buf;
  sub_10000501C(__p, "carrierspaceauth://");
  v24[0] = 1;
  v25 = v22;
  if (v22)
  {
    xpc_retain(v22);
  }

  else
  {
    v25 = xpc_null_create();
  }

  v32[0] = off_101F4A3B8;
  v32[1] = a1;
  v32[3] = v32;
  (*(*v23 + 16))(v23, __p, v24, v32);
  sub_10000FF50(v32);
  xpc_release(v25);
  v25 = 0;
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p[0]);
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  xpc_release(v29);
  xpc_release(v22);
LABEL_38:
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }
}

void sub_10153B2A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, xpc_object_t a13, uint64_t a14, xpc_object_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10153B3A0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 112))
  {
    v7 = a1;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    sub_100034C50(&v8, *a2, *(a2 + 8), *(a2 + 8) - *a2);
    v11 = 0;
    v12 = 0;
    v13 = 0;
    sub_100034C50(&v11, *(a2 + 24), *(a2 + 32), *(a2 + 32) - *(a2 + 24));
    sub_100431B34(&cf, (a2 + 48));
    v15 = *(a2 + 56);
    v4 = *(a1 + 72);
    if (v4)
    {
      v27 = 0;
      v28 = 0;
      (*(*v4 + 16))(&v27);
      if (v27)
      {
        v5 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(*(a1 + 112) + 8));
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Prompting for biometric authentication", &buf, 2u);
        }

        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        buf = 0u;
        if (*(a1 + 24))
        {
          dispatch_retain(*(a1 + 24));
        }

        v16 = v7;
        memset(v17, 0, sizeof(v17));
        sub_100034C50(v17, v8, v9, v9 - v8);
        __p = 0;
        v19 = 0uLL;
        sub_100034C50(&__p, v11, v12, v12 - v11);
        v20 = cf;
        if (cf)
        {
          CFRetain(cf);
        }

        LOWORD(v21) = v15;
        v29 = 0;
        operator new();
      }

      sub_10153C868(&v7, 5);
      if (v28)
      {
        sub_100004A34(v28);
      }
    }

    else
    {
      sub_10153C868(&v7, 5);
    }

    sub_1003EC530(&cf);
    if (v11)
    {
      v12 = v11;
      operator delete(v11);
    }

    if (v8)
    {
      v9 = v8;
      operator delete(v8);
    }
  }

  else
  {
    v6 = *(*a1 + 64);

    v6();
  }
}

void sub_10153B8D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  v30 = *(v29 - 160);
  if (v30)
  {
    sub_100004A34(v30);
  }

  sub_10153C228(&a10);
  _Unwind_Resume(a1);
}

void sub_10153B9A0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  JUMPOUT(0x10153B998);
}

void sub_10153B9C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 104);
  if (v3 == 1 && (v4 = *(a1 + 112)) != 0)
  {
    v6 = *(v4 + 8);
    v7 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      ctu::hex();
      v8 = v21 >= 0 ? __p : *__p;
      *buf = 136315138;
      v23 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Received authentication token '%s'", buf, 0xCu);
      if (v21 < 0)
      {
        operator delete(*__p);
      }
    }

    sub_10153AC24(a1, 2);
    if (*(a2 + 57) == 1)
    {
      v9 = *(a1 + 88);
      if (*(a2 + 56) == 1)
      {
        sub_10153A5A4(v9, a2);
      }

      else
      {
        sub_10153BC9C(v9);
      }
    }

    v12 = *(a1 + 120);
    if (v12)
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      sub_100034C50(&v17, *a2, *(a2 + 8), *(a2 + 8) - *a2);
      v13 = *(a1 + 112);
      if (*(v13 + 39) < 0)
      {
        sub_100005F2C(v15, *(v13 + 16), *(v13 + 24));
      }

      else
      {
        *v15 = *(v13 + 16);
        v16 = *(v13 + 32);
      }

      (*(*v12 + 16))(v12, v6, &v17, v15);
      if (SHIBYTE(v16) < 0)
      {
        operator delete(v15[0]);
      }

      if (v17)
      {
        v18 = v17;
        operator delete(v17);
      }
    }

    v14 = **(a1 + 112);
    if (v14)
    {
      *v14 = 0;
    }

    (*(*a1 + 88))(a1);
  }

  else
  {
    v10 = *(a1 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      if (v3 > 4)
      {
        v11 = "???";
      }

      else
      {
        v11 = off_101F4A538[v3];
      }

      *__p = 136315138;
      *&__p[4] = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#N Received auth info in unexpected state: %s", __p, 0xCu);
    }
  }
}

void sub_10153BC60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10153BC9C(uint64_t a1)
{
  if (a1)
  {
    sub_10000501C(__p, "com.apple.carrierspace.authinfo");
    (*(*a1 + 24))(a1, __p);
    if (v3 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_10153BD14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10153BD30(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 104);
  v4 = v3 > 4 || ((1 << v3) & 0x1A) == 0;
  if (v4 || (v5 = *(a1 + 112)) == 0)
  {
    v11 = *(a1 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      if (v3 > 4)
      {
        v12 = "???";
      }

      else
      {
        v12 = off_101F4A538[v3];
      }

      v13 = 136315138;
      v14 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#N Ignoring auth failure received in unexpected state: %s", &v13, 0xCu);
    }
  }

  else
  {
    if ((a2 & &_mh_execute_header) != 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = 10;
    }

    v7 = *(v5 + 8);
    v8 = *(a1 + 120);
    if (v8)
    {
      (*(*v8 + 24))(v8, *(v5 + 8), v5 + 16, v6);
    }

    v9 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315138;
      v14 = asString(v6);
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Pending authentication failed with error: %s, resetting state", &v13, 0xCu);
    }

    v10 = **(a1 + 112);
    if (v10)
    {
      *v10 = v6;
    }

    (*(*a1 + 88))(a1);
  }
}

void sub_10153BF1C(uint64_t a1, int a2)
{
  v3 = *(a1 + 104);
  v4 = v3 > 4 || ((1 << v3) & 0x1A) == 0;
  if (v4 || (v5 = *(a1 + 112)) == 0)
  {
    v11 = *(a1 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      if (v3 > 4)
      {
        v12 = "???";
      }

      else
      {
        v12 = off_101F4A538[v3];
      }

      v13 = 136315138;
      v14 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#N Ignoring plan term confirmation received in unexpected state: %s", &v13, 0xCu);
    }
  }

  else
  {
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = "accepted";
      if (!a2)
      {
        v8 = "rejected";
      }

      v9 = (v5 + 40);
      if (*(v5 + 63) < 0)
      {
        v9 = *v9;
      }

      v13 = 136315394;
      v14 = v8;
      v15 = 2080;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I User has %s the terms for plan '%s'", &v13, 0x16u);
    }

    if (a2)
    {
      if (*(a1 + 104) == 3)
      {
        if (*(a1 + 128) == 1)
        {
          v10 = *(a1 + 40);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v13) = 0;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I App is still running, will wait for termination before displaying authentication alert", &v13, 2u);
          }

          sub_10153AC24(a1, 4);
        }

        else
        {
          sub_10153A674(a1);
        }
      }
    }

    else
    {
      (*(*a1 + 64))(a1, 0x10000000CLL);
    }
  }
}

void sub_10153C130(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Cached token has been invalidated, clearing...", v3, 2u);
  }

  sub_10153BC9C(*(a1 + 88));
}

uint64_t sub_10153C19C(uint64_t a1)
{
  sub_10153AC24(a1, 0);

  return sub_10153C1DC((a1 + 112), 0);
}

uint64_t sub_10153C1DC(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_100D1A460(result);

    operator delete();
  }

  return result;
}

uint64_t sub_10153C228(uint64_t a1)
{
  sub_1003EC530((a1 + 56));
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    *(a1 + 16) = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_10153C274(xpc_object_t *a1, uint64_t a2)
{
  v3 = *(a2 + 112);
  if (v3)
  {
    v5 = *(v3 + 8);
    object = 0;
    sub_1013480F0((a2 + 56), v5, &object);
    if (xpc_get_type(object) == &_xpc_type_dictionary)
    {
      v7 = *(a2 + 176);
      if (v7)
      {
        v8 = a2 + 176;
        do
        {
          if (*(v7 + 32) >= v5)
          {
            v8 = v7;
          }

          v7 = *(v7 + 8 * (*(v7 + 32) < v5));
        }

        while (v7);
        if (v8 != a2 + 176 && v5 >= *(v8 + 32))
        {
          sub_101347E9C((a2 + 56), v5, &object, v8 + 40);
        }
      }

      *a1 = object;
      v6 = xpc_null_create();
      object = v6;
    }

    else
    {
      *a1 = xpc_null_create();
      v6 = object;
    }

    xpc_release(v6);
  }

  else
  {
    *a1 = xpc_null_create();
  }
}

void sub_10153C38C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 104);
    if (v3 > 4)
    {
      v4 = "???";
    }

    else
    {
      v4 = off_101F4A538[v3];
    }

    v15 = 136315138;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I fState = %s", &v15, 0xCu);
  }

  v5 = *(a1 + 112);
  if (v5)
  {
    v6 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(v5 + 8));
    v7 = *(a1 + 112);
    v8 = *v6;
    if (!os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v9 = v7 + 16;
    if (v7[39] < 0)
    {
      v9 = *v9;
    }

    if (v7[88] == 1)
    {
      v10 = v7 + 64;
      if (v7[87] < 0)
      {
        v10 = *v10;
      }
    }

    else
    {
      v10 = "none";
    }

    v15 = 136315394;
    v16 = v9;
    v17 = 2080;
    v18 = v10;
    v12 = "#I fCurrentRequest = planID '%s', planTermsURL '%s'";
    v13 = v8;
    v14 = 22;
  }

  else
  {
    v11 = *(a1 + 40);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LOWORD(v15) = 0;
    v12 = "#I fCurrentRequest = null";
    v13 = v11;
    v14 = 2;
  }

  _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v12, &v15, v14);
}

void sub_10153C56C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F4A218;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10153C5EC(uint64_t a1)
{
  sub_1015399A4(a1);

  operator delete();
}

__n128 sub_10153C6C4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4A338;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10153C6FC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10153C7B8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F4A3B8;
  a2[1] = v2;
  return result;
}

uint64_t sub_10153C7E4(uint64_t result, _BYTE *a2)
{
  if ((*a2 & 1) == 0)
  {
    return (*(**(result + 8) + 64))(*(result + 8), 0);
  }

  return result;
}

uint64_t sub_10153C81C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10153C868(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a1;
  v5 = (*(**(*a1 + 48) + 16))(*(*a1 + 48), *(*(*a1 + 112) + 8));
  v6 = v5;
  if (v2)
  {
    v7 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = asString();
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Biometric authentication result: %s", &buf, 0xCu);
    }

    if (sub_101348F64(v2))
    {
      (*(*v4 + 80))(v4);
    }

    v8 = sub_101348F28(v2);
    v9 = *v6;
    v10 = os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v10)
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Biometric authentication failed, will ask user to authenticate with login credentials", &buf, 2u);
      }

      sub_10153C274(&object, v4);
      sub_10153AE74(v4, &object);
      xpc_release(object);
    }

    else
    {
      if (v10)
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Will not present fallback authentication", &buf, 2u);
      }

      (*(*v4 + 64))(v4, 0);
    }

    return;
  }

  if (*(a1 + 32) == *(a1 + 40) || !*(a1 + 56))
  {
    buf = 0uLL;
    v46 = 0;
    sub_100034C50(&buf, *(a1 + 8), *(a1 + 16), *(a1 + 16) - *(a1 + 8));
    __p = 0;
    v48 = 0;
    v49 = 0;
    sub_100034C50(&__p, *(a1 + 32), *(a1 + 40), *(a1 + 40) - *(a1 + 32));
    sub_100431B34(&v50, (a1 + 56));
    LOWORD(v51) = *(a1 + 64);
    (*(*v4 + 56))(v4, &buf);
    sub_1003EC530(&v50);
    if (__p)
    {
      v48 = __p;
      operator delete(__p);
    }

    if (buf)
    {
      *(&buf + 1) = buf;
      operator delete(buf);
    }

    return;
  }

  ServiceMap = Registry::getServiceMap(*(v4 + 56));
  v12 = ServiceMap;
  if (v13 < 0)
  {
    v14 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
    v15 = 5381;
    do
    {
      v13 = v15;
      v16 = *v14++;
      v15 = (33 * v15) ^ v16;
    }

    while (v16);
  }

  std::mutex::lock(ServiceMap);
  *&buf = v13;
  v17 = sub_100009510(&v12[1].__m_.__sig, &buf);
  if (!v17)
  {
    v19 = 0;
    goto LABEL_26;
  }

  v19 = v17[3];
  v18 = v17[4];
  if (!v18)
  {
LABEL_26:
    std::mutex::unlock(v12);
    v18 = 0;
    v20 = 1;
    goto LABEL_27;
  }

  atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v12);
  atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v18);
  v20 = 0;
LABEL_27:
  v21 = (*(*v19 + 96))(v19);
  if ((v20 & 1) == 0)
  {
    sub_100004A34(v18);
  }

  v41 = CFDateCreate(0, v21);
  v22 = CFDateCompare(v41, *(a1 + 56), 0);
  v23 = *(v4 + 40);
  v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
  if (v22 != kCFCompareLessThan)
  {
    if (v24)
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I Token has expired, attempting to refresh", &buf, 2u);
    }

    v25 = Registry::getServiceMap(*(v4 + 56));
    v26 = v25;
    if (v27 < 0)
    {
      v28 = (v27 & 0x7FFFFFFFFFFFFFFFLL);
      v29 = 5381;
      do
      {
        v27 = v29;
        v30 = *v28++;
        v29 = (33 * v29) ^ v30;
      }

      while (v30);
    }

    std::mutex::lock(v25);
    *&buf = v27;
    v31 = sub_100009510(&v26[1].__m_.__sig, &buf);
    if (v31)
    {
      v33 = v31[3];
      v32 = v31[4];
      if (v32)
      {
        atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v26);
        atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v32);
        goto LABEL_50;
      }
    }

    else
    {
      v33 = 0;
    }

    std::mutex::unlock(v26);
LABEL_50:
    (*(**(v4 + 48) + 16))(*(v4 + 48), *(*(v4 + 112) + 8));
    memset(v52, 0, sizeof(v52));
    v53 = 0;
    sub_1013495C0((v4 + 56), v52);
    if (SHIBYTE(v53) < 0)
    {
      sub_100005F2C(__dst, *v52, *&v52[8]);
    }

    else
    {
      *__dst = *v52;
      v43 = v53;
    }

    sub_1013499DC(&buf);
    (*(*v33 + 16))(v44, v33, 3, __dst, &buf);
    v35 = *v44;
    memset(v44, 0, sizeof(v44));
    v36 = *(v4 + 144);
    *(v4 + 136) = v35;
    if (v36)
    {
      sub_100004A34(v36);
      if (*&v44[8])
      {
        sub_100004A34(*&v44[8]);
      }
    }

    sub_1000DD0AC(&buf, *(&buf + 1));
    if (SHIBYTE(v43) < 0)
    {
      operator delete(__dst[0]);
    }

    (*(**(v4 + 136) + 136))(*(v4 + 136));
    v37 = *(v4 + 136);
    sub_101349718((v4 + 56), a1 + 8, &buf);
    (*(*v37 + 56))(v37, &buf);
    if (buf)
    {
      *(&buf + 1) = buf;
      operator delete(buf);
    }

    (*(**(v4 + 136) + 8))(*(v4 + 136), *(v4 + 24));
    v38 = *(v4 + 16);
    if (v38)
    {
      v39 = std::__shared_weak_count::lock(v38);
      if (v39)
      {
        atomic_fetch_add_explicit(&v39->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v39);
        operator new();
      }
    }

    sub_100013CC4();
  }

  if (v24)
  {
    sub_10134A030((a1 + 56), &buf);
    v34 = v46 >= 0 ? &buf : buf;
    *v52 = 136315138;
    *&v52[4] = v34;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I Cached token has not expired yet (expires on %s)", v52, 0xCu);
    if (SHIBYTE(v46) < 0)
    {
      operator delete(buf);
    }
  }

  buf = 0uLL;
  v46 = 0;
  sub_100034C50(&buf, *(a1 + 8), *(a1 + 16), *(a1 + 16) - *(a1 + 8));
  __p = 0;
  v48 = 0;
  v49 = 0;
  sub_100034C50(&__p, *(a1 + 32), *(a1 + 40), *(a1 + 40) - *(a1 + 32));
  sub_100431B34(&v50, (a1 + 56));
  LOWORD(v51) = *(a1 + 64);
  (*(*v4 + 56))(v4, &buf);
  sub_1003EC530(&v50);
  if (__p)
  {
    v48 = __p;
    operator delete(__p);
  }

  if (buf)
  {
    *(&buf + 1) = buf;
    operator delete(buf);
  }

  sub_1003EC530(&v41);
}

uint64_t sub_10153D324(uint64_t a1)
{
  sub_100005978((a1 + 72));
  sub_100005978((a1 + 64));
  sub_100005978((a1 + 48));
  sub_100005978((a1 + 40));
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  sub_10153D9DC(a1, 0);
  return a1;
}

void sub_10153D384(uint64_t a1, ctu::Http::HttpResponse **a2)
{
  v3 = *(a1 + 48);
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (!*(a1 + 40))
      {
LABEL_51:
        sub_100004A34(v7);
        return;
      }

      v8 = *a2;
      if (*a2)
      {
        v9 = 0;
      }

      else
      {
        v10 = **(a1 + 56);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          LOWORD(__p) = 0;
          _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Received null refresh token response!", &__p, 2u);
          v8 = *a2;
        }

        else
        {
          v8 = 0;
        }

        v9 = 10;
      }

      if ((*(*v8 + 16))(v8) != 1)
      {
        v11 = **(a1 + 56);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          ctu::Http::asString();
          v12 = v29 >= 0 ? &__p : __p;
          LODWORD(v23[0]) = 136315138;
          *(v23 + 4) = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#N Refresh token operation failed with error: %s", v23, 0xCu);
          if (SHIBYTE(v29) < 0)
          {
            operator delete(__p);
          }
        }

        v9 = 10;
      }

      v13 = (*(**a2 + 24))();
      if (v13 != 200)
      {
        v14 = **(a1 + 56);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(__p) = 67109120;
          HIDWORD(__p) = v13;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#N Refresh token operation failed with HTTP error code: %d", &__p, 8u);
        }

        v9 = 10;
      }

      v25 = 0u;
      *cf = 0u;
      *v23 = 0u;
      *v24 = 0u;
      ctu::Http::HttpResponse::getResponseData(&__p, *a2);
      sub_101349A98((v5 + 40), (v5 + 56), &__p, v23);
      if (__p)
      {
        v28 = __p;
        operator delete(__p);
      }

      v15 = v23[0];
      if (v23[0] == v23[1])
      {
        v17 = **(a1 + 56);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(__p) = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#N Failed to parse refresh token response", &__p, 2u);
          v15 = v23[0];
        }

        v34 = 0;
        if (v15)
        {
          v23[1] = v15;
          operator delete(v15);
        }

        v23[0] = 0;
        v23[1] = 0;
        v24[0] = 0;
        v28 = 0;
        v29 = 0;
        __p = 0;
        if (v24[1])
        {
          *&v25 = v24[1];
          operator delete(v24[1]);
        }

        v24[1] = 0;
        v25 = 0uLL;
        v31 = 0;
        v32 = 0;
        v30 = 0;
        *buf = cf[0];
        cf[0] = 0;
        v33 = 0;
        sub_1003EC530(buf);
        LOWORD(cf[1]) = 0;
        sub_1003EC530(&v33);
        if (v30)
        {
          v31 = v30;
          operator delete(v30);
        }

        if (__p)
        {
          v28 = __p;
          operator delete(__p);
        }

        v9 = 10;
      }

      else if (!v9)
      {
        sub_10153A5A4(*(v5 + 88), v23);
        v16 = **(a1 + 64);
        __p = 0;
        v28 = 0;
        v29 = 0;
        sub_100034C50(&__p, v23[0], v23[1], v23[1] - v23[0]);
        v30 = 0;
        v31 = 0;
        v32 = 0;
        sub_100034C50(&v30, v24[1], v25, v25 - v24[1]);
        v33 = cf[0];
        if (cf[0])
        {
          CFRetain(cf[0]);
        }

        v34 = cf[1];
        (*(*v16 + 56))(v16, &__p);
        sub_1003EC530(&v33);
        if (v30)
        {
          v31 = v30;
          operator delete(v30);
        }

        if (__p)
        {
          v28 = __p;
          operator delete(__p);
        }

LABEL_45:
        v22 = *(v5 + 144);
        *(v5 + 136) = 0;
        *(v5 + 144) = 0;
        if (v22)
        {
          sub_100004A34(v22);
        }

        sub_1003EC530(cf);
        if (v24[1])
        {
          *&v25 = v24[1];
          operator delete(v24[1]);
        }

        if (v23[0])
        {
          v23[1] = v23[0];
          operator delete(v23[0]);
        }

        goto LABEL_51;
      }

      v18 = *(a1 + 64);
      v19 = *v18;
      v20 = **(v18 + 8);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = asString(v9);
        *buf = 136315138;
        *&buf[4] = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#N Refresh token evaluation returned error: %s", buf, 0xCu);
      }

      sub_10153BC9C(v19[11]);
      (*(*v19 + 64))(v19, v9 | &_mh_execute_header);
      goto LABEL_45;
    }
  }
}