double sub_100037850()
{
  if (qword_10012F4F8 != -1)
  {
    swift_once();
  }

  result = *&xmmword_10013A9F0;
  xmmword_100130FD0 = xmmword_10013A9F0;
  return result;
}

double sub_1000378A8()
{
  result = 0.0;
  xmmword_100130FE0 = xmmword_1000EF560;
  return result;
}

double sub_1000378BC()
{
  result = 0.0;
  xmmword_100130FF0 = xmmword_1000EF570;
  return result;
}

double sub_1000378D0()
{
  result = 0.000292968761;
  xmmword_100131000 = xmmword_1000EF580;
  return result;
}

double sub_1000378E4()
{
  if (qword_10012F558 != -1)
  {
    swift_once();
  }

  v403 = xmmword_100130FD0;
  if (qword_10012F568 != -1)
  {
    swift_once();
  }

  v402 = xmmword_100130FF0;
  sub_1000125FC(&qword_100131010, &qword_1000F1D68);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000EF590;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 9;
  if (qword_10012F6E8 != -1)
  {
    swift_once();
  }

  v1 = vmulq_f32(xmmword_10013DCA0, 0);
  v421 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v416 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v1), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v410 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v1, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v385 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBFB33333)), vdupq_n_s32(0x3FDC28F5u), *algn_10013DCB0), 0, xmmword_10013DCC0));
  sub_10001358C(v426, 1.9373, xmmword_1000EC910);
  v2 = sub_100013568(v426);
  v419 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v421, v2.n128_f32[0]), v416, v2.n128_u64[0], 1), v410, v2, 2), v385, v2, 3);
  v414 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v421, v3.f32[0]), v416, *v3.f32, 1), v410, v3, 2), v385, v3, 3);
  v404 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v421, v4.f32[0]), v416, *v4.f32, 1), v410, v4, 2), v385, v4, 3);
  v360 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v421, v5.f32[0]), v416, *v5.f32, 1), v410, v5, 2), v385, v5, 3);
  sub_10001358C(v427, -2.3911, xmmword_1000EC8E0);
  v6 = sub_100013568(v427);
  v7 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v419, v6.n128_f32[0]), v414, v6.n128_u64[0], 1), v404, v6, 2), v360, v6, 3);
  v411 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v419, v8.f32[0]), v414, *v8.f32, 1), v404, v8, 2), v360, v8, 3);
  v386 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v419, v9.f32[0]), v414, *v9.f32, 1), v404, v9, 2), v360, v9, 3);
  v415 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v419, v10.f32[0]), v414, *v10.f32, 1), v404, v10, 2), v360, v10, 3);
  v417 = v7;
  sub_10001358C(v428, 0.032114, xmmword_1000EC920);
  v11 = sub_100013568(v428);
  v471 = 1;
  *(v0 + 64) = 0x408666663F70A3D7;
  *(v0 + 72) = 1045220557;
  *(v0 + 76) = 1;
  *(v0 + 77) = v476;
  *(v0 + 79) = v477;
  *(v0 + 80) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v417, v11.n128_f32[0]), v411, v11.n128_u64[0], 1), v386, v11, 2), v415, v11, 3);
  *(v0 + 96) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v417, v12.f32[0]), v411, *v12.f32, 1), v386, v12, 2), v415, v12, 3);
  *(v0 + 112) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v417, v13.f32[0]), v411, *v13.f32, 1), v386, v13, 2), v415, v13, 3);
  *(v0 + 128) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v417, v14.f32[0]), v411, *v14.f32, 1), v386, v14, 2), v415, v14, 3);
  *(v0 + 144) = xmmword_1000EC900;
  *(v0 + 160) = 0;
  v15 = v474;
  *(v0 + 163) = v475;
  *(v0 + 161) = v15;
  *(v0 + 164) = 1112539136;
  *(v0 + 168) = 0;
  *(v0 + 169) = v472;
  *(v0 + 171) = v473;
  *(v0 + 172) = 1066192077;
  *(v0 + 192) = 0;
  *(v0 + 176) = 0u;
  *(v0 + 200) = v471;
  *(v0 + 201) = 0;
  *(v0 + 203) = 1;
  *(v0 + 208) = 0u;
  *(v0 + 224) = sub_10003A960;
  *(v0 + 232) = 0;
  *(v0 + 240) = 0x3F80000000000000;
  *(v0 + 256) = xmmword_1000EF5A0;
  *(v0 + 272) = 2;
  v16 = vmulq_f32(xmmword_10013DCA0, 0);
  v387 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v337 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v16), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v315 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v16, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v405 = vdupq_n_s32(0x3E999999u);
  v271 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBDF5C28F)), v405, *algn_10013DCB0), vdupq_n_s32(0x3EF5C28Fu), xmmword_10013DCC0));
  sub_10001358C(v429, 5.2883, xmmword_1000EC910);
  v17 = sub_100013568(v429);
  v412 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v387, v17.n128_f32[0]), v337, v17.n128_u64[0], 1), v315, v17, 2), v271, v17, 3);
  v361 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v387, v18.f32[0]), v337, *v18.f32, 1), v315, v18, 2), v271, v18, 3);
  v292 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v387, v19.f32[0]), v337, *v19.f32, 1), v315, v19, 2), v271, v19, 3);
  v272 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v387, v20.f32[0]), v337, *v20.f32, 1), v315, v20, 2), v271, v20, 3);
  sub_10001358C(v430, 0.7854, xmmword_1000EC8E0);
  v21 = sub_100013568(v430);
  v388 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v412, v21.n128_f32[0]), v361, v21.n128_u64[0], 1), v292, v21, 2), v272, v21, 3);
  v338 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v412, v22.f32[0]), v361, *v22.f32, 1), v292, v22, 2), v272, v22, 3);
  v316 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v412, v23.f32[0]), v361, *v23.f32, 1), v292, v23, 2), v272, v23, 3);
  v413 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v412, v24.f32[0]), v361, *v24.f32, 1), v292, v24, 2), v272, v24, 3);
  sub_10001358C(v431, -2.0071, xmmword_1000EC920);
  v25 = sub_100013568(v431);
  v478 = 1;
  *(v0 + 288) = 0x3F99999A4039999ALL;
  *(v0 + 296) = 1050253722;
  *(v0 + 300) = 1;
  *(v0 + 301) = v483;
  *(v0 + 303) = v484;
  *(v0 + 304) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v388, v25.n128_f32[0]), v338, v25.n128_u64[0], 1), v316, v25, 2), v413, v25, 3);
  *(v0 + 320) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v388, v26.f32[0]), v338, *v26.f32, 1), v316, v26, 2), v413, v26, 3);
  *(v0 + 336) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v388, v27.f32[0]), v338, *v27.f32, 1), v316, v27, 2), v413, v27, 3);
  *(v0 + 352) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v388, v28.f32[0]), v338, *v28.f32, 1), v316, v28, 2), v413, v28, 3);
  *(v0 + 368) = xmmword_1000EF5B0;
  *(v0 + 384) = 0;
  v29 = v481;
  *(v0 + 387) = v482;
  *(v0 + 385) = v29;
  *(v0 + 388) = 1088631603;
  *(v0 + 392) = 10;
  *(v0 + 393) = v479;
  *(v0 + 395) = v480;
  *(v0 + 396) = 1065353216;
  *(v0 + 416) = 0;
  *(v0 + 400) = 0u;
  *(v0 + 424) = v478;
  *(v0 + 425) = 0;
  *(v0 + 427) = 0;
  *(v0 + 432) = 0u;
  *(v0 + 448) = sub_10003A980;
  *(v0 + 456) = 0;
  *(v0 + 464) = 0x3F80000000000000;
  *(v0 + 480) = xmmword_1000EF5C0;
  *(v0 + 496) = 2;
  v30 = vmulq_f32(xmmword_10013DCA0, 0);
  v362 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v317 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v30), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v293 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v30, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v250 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBF547AE1)), vdupq_n_s32(0x3FE7AE14u), *algn_10013DCB0), vdupq_n_s32(0x3F147AE1u), xmmword_10013DCC0));
  sub_10001358C(v432, 4.7124, xmmword_1000EC910);
  v31 = sub_100013568(v432);
  v389 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v362, v31.n128_f32[0]), v317, v31.n128_u64[0], 1), v293, v31, 2), v250, v31, 3);
  v339 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v362, v32.f32[0]), v317, *v32.f32, 1), v293, v32, 2), v250, v32, 3);
  v273 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v362, v33.f32[0]), v317, *v33.f32, 1), v293, v33, 2), v250, v33, 3);
  v251 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v362, v34.f32[0]), v317, *v34.f32, 1), v293, v34, 2), v250, v34, 3);
  sub_10001358C(v433, 0.24435, xmmword_1000EC8E0);
  v35 = sub_100013568(v433);
  v318 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v389, v36.f32[0]), v339, *v36.f32, 1), v273, v36, 2), v251, v36, 3);
  v294 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v389, v37.f32[0]), v339, *v37.f32, 1), v273, v37, 2), v251, v37, 3);
  v363 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v389, v35.n128_f32[0]), v339, v35.n128_u64[0], 1), v273, v35, 2), v251, v35, 3);
  v390 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v389, v38.f32[0]), v339, *v38.f32, 1), v273, v38, 2), v251, v38, 3);
  sub_10001358C(v434, -1.5708, xmmword_1000EC920);
  v39 = sub_100013568(v434);
  v485 = 1;
  *(v0 + 512) = 0x3FA666663FD9999ALL;
  *(v0 + 520) = 1050253722;
  *(v0 + 524) = 1;
  *(v0 + 525) = v490;
  *(v0 + 527) = v491;
  *(v0 + 528) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v363, v39.n128_f32[0]), v318, v39.n128_u64[0], 1), v294, v39, 2), v390, v39, 3);
  *(v0 + 544) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v363, v40.f32[0]), v318, *v40.f32, 1), v294, v40, 2), v390, v40, 3);
  *(v0 + 560) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v363, v41.f32[0]), v318, *v41.f32, 1), v294, v41, 2), v390, v41, 3);
  *(v0 + 576) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v363, v42.f32[0]), v318, *v42.f32, 1), v294, v42, 2), v390, v42, 3);
  *(v0 + 592) = xmmword_1000EC900;
  *(v0 + 608) = 0;
  v43 = v488;
  *(v0 + 611) = v489;
  *(v0 + 609) = v43;
  *(v0 + 612) = 1087792742;
  *(v0 + 616) = 13;
  *(v0 + 617) = v486;
  *(v0 + 619) = v487;
  *(v0 + 620) = 1065353216;
  *(v0 + 640) = 0;
  *(v0 + 624) = 0u;
  *(v0 + 648) = v485;
  *(v0 + 649) = 0;
  *(v0 + 651) = 0;
  *(v0 + 656) = 0u;
  *(v0 + 672) = sub_10003AA28;
  *(v0 + 680) = 0;
  *(v0 + 688) = 0x3F80000000000000;
  *(v0 + 704) = xmmword_1000EF5A0;
  *(v0 + 720) = 1;
  v44 = vmulq_f32(xmmword_10013DCA0, 0);
  v364 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v319 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v44), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v295 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v44, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v252 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBF428F5C)), vdupq_n_s32(0x3F9851EBu), *algn_10013DCB0), vdupq_n_s32(0xBE947AE1), xmmword_10013DCC0));
  sub_10001358C(v435, 2.0944, xmmword_1000EC910);
  v45 = sub_100013568(v435);
  v391 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v364, v45.n128_f32[0]), v319, v45.n128_u64[0], 1), v295, v45, 2), v252, v45, 3);
  v340 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v364, v46.f32[0]), v319, *v46.f32, 1), v295, v46, 2), v252, v46, 3);
  v274 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v364, v47.f32[0]), v319, *v47.f32, 1), v295, v47, 2), v252, v47, 3);
  v253 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v364, v48.f32[0]), v319, *v48.f32, 1), v295, v48, 2), v252, v48, 3);
  sub_10001358C(v436, -2.618, xmmword_1000EC8E0);
  v49 = sub_100013568(v436);
  v320 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v391, v50.f32[0]), v340, *v50.f32, 1), v274, v50, 2), v253, v50, 3);
  v296 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v391, v51.f32[0]), v340, *v51.f32, 1), v274, v51, 2), v253, v51, 3);
  v365 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v391, v49.n128_f32[0]), v340, v49.n128_u64[0], 1), v274, v49, 2), v253, v49, 3);
  v392 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v391, v52.f32[0]), v340, *v52.f32, 1), v274, v52, 2), v253, v52, 3);
  sub_10001358C(v437, 0.087266, xmmword_1000EC920);
  v53 = sub_100013568(v437);
  v492 = 1;
  *(v0 + 736) = 0x4016B8523FDE353FLL;
  *(v0 + 744) = 1036831949;
  *(v0 + 748) = 1;
  *(v0 + 749) = v497;
  *(v0 + 751) = v498;
  *(v0 + 752) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v365, v53.n128_f32[0]), v320, v53.n128_u64[0], 1), v296, v53, 2), v392, v53, 3);
  *(v0 + 768) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v365, v54.f32[0]), v320, *v54.f32, 1), v296, v54, 2), v392, v54, 3);
  *(v0 + 784) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v365, v55.f32[0]), v320, *v55.f32, 1), v296, v55, 2), v392, v55, 3);
  *(v0 + 800) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v365, v56.f32[0]), v320, *v56.f32, 1), v296, v56, 2), v392, v56, 3);
  *(v0 + 816) = xmmword_1000EC900;
  *(v0 + 832) = 0;
  v57 = v495;
  *(v0 + 835) = v496;
  *(v0 + 833) = v57;
  *(v0 + 836) = 0x40000000;
  *(v0 + 840) = 13;
  *(v0 + 841) = v493;
  *(v0 + 843) = v494;
  *(v0 + 844) = 1065353216;
  *(v0 + 848) = 0;
  *(v0 + 856) = 0u;
  *(v0 + 872) = v492;
  *(v0 + 873) = 0;
  *(v0 + 875) = 0;
  *(v0 + 880) = 0u;
  *(v0 + 896) = sub_10003AA58;
  *(v0 + 904) = 0;
  *(v0 + 912) = 0x3F80000000000000;
  *(v0 + 928) = xmmword_1000EF5C0;
  *(v0 + 944) = 9;
  v58 = vmulq_f32(xmmword_10013DCA0, 0);
  v393 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v341 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v58), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v297 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v58, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v254 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBFECCCCC)), vdupq_n_s32(0x3FC7AE14u), *algn_10013DCB0), vdupq_n_s32(0xBFE51EB8), xmmword_10013DCC0));
  sub_10001358C(v438, 2.0071, xmmword_1000EC910);
  v59 = sub_100013568(v438);
  v366 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v393, v59.n128_f32[0]), v341, v59.n128_u64[0], 1), v297, v59, 2), v254, v59, 3);
  v321 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v393, v60.f32[0]), v341, *v60.f32, 1), v297, v60, 2), v254, v60, 3);
  v275 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v393, v61.f32[0]), v341, *v61.f32, 1), v297, v61, 2), v254, v61, 3);
  v255 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v393, v62.f32[0]), v341, *v62.f32, 1), v297, v62, 2), v254, v62, 3);
  sub_10001358C(v439, -2.3911, xmmword_1000EC8E0);
  v63 = sub_100013568(v439);
  v64 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v366, v63.n128_f32[0]), v321, v63.n128_u64[0], 1), v275, v63, 2), v255, v63, 3);
  v342 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v366, v65.f32[0]), v321, *v65.f32, 1), v275, v65, 2), v255, v65, 3);
  v298 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v366, v66.f32[0]), v321, *v66.f32, 1), v275, v66, 2), v255, v66, 3);
  v367 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v366, v67.f32[0]), v321, *v67.f32, 1), v275, v67, 2), v255, v67, 3);
  v394 = v64;
  sub_10001358C(v440, -3.1765, xmmword_1000EC920);
  v68 = sub_100013568(v440);
  v499 = 1;
  *(v0 + 960) = 0x4000000040800000;
  *(v0 + 968) = 1020054733;
  *(v0 + 972) = 1;
  *(v0 + 973) = v504;
  *(v0 + 975) = v505;
  *(v0 + 976) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v394, v68.n128_f32[0]), v342, v68.n128_u64[0], 1), v298, v68, 2), v367, v68, 3);
  *(v0 + 992) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v394, v69.f32[0]), v342, *v69.f32, 1), v298, v69, 2), v367, v69, 3);
  *(v0 + 1008) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v394, v70.f32[0]), v342, *v70.f32, 1), v298, v70, 2), v367, v70, 3);
  *(v0 + 1024) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v394, v71.f32[0]), v342, *v71.f32, 1), v298, v71, 2), v367, v71, 3);
  *(v0 + 1040) = xmmword_1000EC900;
  *(v0 + 1056) = 0;
  v72 = v502;
  *(v0 + 1059) = v503;
  *(v0 + 1057) = v72;
  *(v0 + 1060) = 1082130432;
  *(v0 + 1064) = 4;
  *(v0 + 1065) = v500;
  *(v0 + 1067) = v501;
  *(v0 + 1068) = 1065353216;
  *(v0 + 1072) = 0;
  *(v0 + 1080) = 0u;
  *(v0 + 1096) = v499;
  *(v0 + 1097) = 1;
  *(v0 + 1099) = 1;
  *(v0 + 1104) = 0u;
  *(v0 + 1120) = sub_10003AB10;
  *(v0 + 1128) = 0;
  *(v0 + 1136) = 0x3F80000000000000;
  *(v0 + 1152) = xmmword_1000EF5D0;
  *(v0 + 1168) = 9;
  v73 = vmulq_f32(xmmword_10013DCA0, 0);
  v368 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v322 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v73), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v299 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v73, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v256 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC050A3D7)), vdupq_n_s32(0x4038F5C2u), *algn_10013DCB0), vdupq_n_s32(0xC041EB85), xmmword_10013DCC0));
  sub_10001358C(v441, -0.62832, xmmword_1000EC910);
  v74 = sub_100013568(v441);
  v395 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v368, v74.n128_f32[0]), v322, v74.n128_u64[0], 1), v299, v74, 2), v256, v74, 3);
  v343 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v368, v75.f32[0]), v322, *v75.f32, 1), v299, v75, 2), v256, v75, 3);
  v276 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v368, v76.f32[0]), v322, *v76.f32, 1), v299, v76, 2), v256, v76, 3);
  v257 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v368, v77.f32[0]), v322, *v77.f32, 1), v299, v77, 2), v256, v77, 3);
  sub_10001358C(v442, -0.8203, xmmword_1000EC8E0);
  v78 = sub_100013568(v442);
  v323 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v395, v79.f32[0]), v343, *v79.f32, 1), v276, v79, 2), v257, v79, 3);
  v300 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v395, v80.f32[0]), v343, *v80.f32, 1), v276, v80, 2), v257, v80, 3);
  v369 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v395, v78.n128_f32[0]), v343, v78.n128_u64[0], 1), v276, v78, 2), v257, v78, 3);
  v396 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v395, v81.f32[0]), v343, *v81.f32, 1), v276, v81, 2), v257, v81, 3);
  sub_10001358C(v443, 1.6755, xmmword_1000EC920);
  v82 = sub_100013568(v443);
  v506 = 1;
  *(v0 + 1184) = 0x40A000004140CCCDLL;
  *(v0 + 1192) = 0;
  *(v0 + 1196) = 2;
  *(v0 + 1197) = v511;
  *(v0 + 1199) = v512;
  *(v0 + 1200) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v369, v82.n128_f32[0]), v323, v82.n128_u64[0], 1), v300, v82, 2), v396, v82, 3);
  *(v0 + 1216) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v369, v83.f32[0]), v323, *v83.f32, 1), v300, v83, 2), v396, v83, 3);
  *(v0 + 1232) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v369, v84.f32[0]), v323, *v84.f32, 1), v300, v84, 2), v396, v84, 3);
  *(v0 + 1248) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v369, v85.f32[0]), v323, *v85.f32, 1), v300, v85, 2), v396, v85, 3);
  *(v0 + 1264) = xmmword_1000EC900;
  *(v0 + 1280) = 0;
  v86 = v509;
  *(v0 + 1283) = v510;
  *(v0 + 1281) = v86;
  *(v0 + 1284) = 1112014848;
  *(v0 + 1288) = 7;
  *(v0 + 1289) = v507;
  *(v0 + 1291) = v508;
  *(v0 + 1292) = 1065353216;
  *(v0 + 1296) = 0;
  *(v0 + 1304) = 0u;
  *(v0 + 1320) = v506;
  *(v0 + 1321) = 1;
  *(v0 + 1323) = 1;
  *(v0 + 1328) = 0u;
  *(v0 + 1344) = sub_100081614;
  *(v0 + 1352) = 0;
  *(v0 + 1360) = 0x3F80000000000000;
  *(v0 + 1376) = xmmword_1000EF5A0;
  *(v0 + 1392) = 3;
  v87 = vmulq_f32(xmmword_10013DCA0, 0);
  v344 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v301 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v87), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v277 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v87, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v397 = vdupq_n_s32(0xC011EB85);
  v240 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC04F5C29)), vdupq_n_s32(0x40770A3Du), *algn_10013DCB0), v397, xmmword_10013DCC0));
  sub_10001358C(v444, -0.87266, xmmword_1000EC910);
  v88 = sub_100013568(v444);
  v370 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v344, v88.n128_f32[0]), v301, v88.n128_u64[0], 1), v277, v88, 2), v240, v88, 3);
  v324 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v344, v89.f32[0]), v301, *v89.f32, 1), v277, v89, 2), v240, v89, 3);
  v258 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v344, v90.f32[0]), v301, *v90.f32, 1), v277, v90, 2), v240, v90, 3);
  v241 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v344, v91.f32[0]), v301, *v91.f32, 1), v277, v91, 2), v240, v91, 3);
  sub_10001358C(v445, -0.76794, xmmword_1000EC8E0);
  v92 = sub_100013568(v445);
  v302 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v370, v93.f32[0]), v324, *v93.f32, 1), v258, v93, 2), v241, v93, 3);
  v278 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v370, v94.f32[0]), v324, *v94.f32, 1), v258, v94, 2), v241, v94, 3);
  v345 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v370, v92.n128_f32[0]), v324, v92.n128_u64[0], 1), v258, v92, 2), v241, v92, 3);
  v371 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v370, v95.f32[0]), v324, *v95.f32, 1), v258, v95, 2), v241, v95, 3);
  sub_10001358C(v446, 0.0, xmmword_1000EC920);
  v96 = sub_100013568(v446);
  v513 = 1;
  *(v0 + 1408) = 0x3FB0A3D73FAE147BLL;
  *(v0 + 1416) = 1036831949;
  *(v0 + 1420) = 1;
  *(v0 + 1421) = v518;
  *(v0 + 1423) = v519;
  *(v0 + 1424) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v345, v96.n128_f32[0]), v302, v96.n128_u64[0], 1), v278, v96, 2), v371, v96, 3);
  *(v0 + 1440) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v345, v97.f32[0]), v302, *v97.f32, 1), v278, v97, 2), v371, v97, 3);
  *(v0 + 1456) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v345, v98.f32[0]), v302, *v98.f32, 1), v278, v98, 2), v371, v98, 3);
  *(v0 + 1472) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v345, v99.f32[0]), v302, *v99.f32, 1), v278, v99, 2), v371, v99, 3);
  *(v0 + 1488) = xmmword_1000EC900;
  *(v0 + 1504) = 0;
  v100 = v516;
  *(v0 + 1507) = v517;
  *(v0 + 1505) = v100;
  *(v0 + 1508) = 1080033280;
  *(v0 + 1512) = 12;
  *(v0 + 1513) = v514;
  *(v0 + 1515) = v515;
  *(v0 + 1516) = 1065353216;
  *(v0 + 1520) = 0;
  *(v0 + 1528) = 0u;
  *(v0 + 1544) = v513;
  *(v0 + 1545) = 1;
  *(v0 + 1547) = 0;
  *(v0 + 1552) = 0u;
  *(v0 + 1568) = sub_10003ABBC;
  *(v0 + 1576) = 0;
  *(v0 + 1584) = 0x3F80000000000000;
  *(v0 + 1600) = xmmword_1000EF5C0;
  *(v0 + 1616) = 3;
  v101 = vmulq_f32(xmmword_10013DCA0, 0);
  v325 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v279 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v101), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v259 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v101, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v372 = vdupq_n_s32(0x3F199999u);
  v236 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC0819999)), v372, *algn_10013DCB0), vdupq_n_s32(0xC038F5C2), xmmword_10013DCC0));
  sub_10001358C(v447, -0.95993, xmmword_1000EC910);
  v102 = sub_100013568(v447);
  v346 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v325, v102.n128_f32[0]), v279, v102.n128_u64[0], 1), v259, v102, 2), v236, v102, 3);
  v303 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v325, v103.f32[0]), v279, *v103.f32, 1), v259, v103, 2), v236, v103, 3);
  v242 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v325, v104.f32[0]), v279, *v104.f32, 1), v259, v104, 2), v236, v104, 3);
  v237 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v325, v105.f32[0]), v279, *v105.f32, 1), v259, v105, 2), v236, v105, 3);
  sub_10001358C(v448, -0.2618, xmmword_1000EC8E0);
  v106 = sub_100013568(v448);
  v280 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v346, v107.f32[0]), v303, *v107.f32, 1), v242, v107, 2), v237, v107, 3);
  v260 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v346, v108.f32[0]), v303, *v108.f32, 1), v242, v108, 2), v237, v108, 3);
  v326 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v346, v106.n128_f32[0]), v303, v106.n128_u64[0], 1), v242, v106, 2), v237, v106, 3);
  v347 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v346, v109.f32[0]), v303, *v109.f32, 1), v242, v109, 2), v237, v109, 3);
  sub_10001358C(v449, 0.85521, xmmword_1000EC920);
  v110 = sub_100013568(v449);
  v520 = 1;
  *(v0 + 1632) = 0x3FB0A3D73FC66666;
  *(v0 + 1640) = 1025758986;
  *(v0 + 1644) = 1;
  *(v0 + 1645) = v525;
  *(v0 + 1647) = v526;
  *(v0 + 1648) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v326, v110.n128_f32[0]), v280, v110.n128_u64[0], 1), v260, v110, 2), v347, v110, 3);
  *(v0 + 1664) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v326, v111.f32[0]), v280, *v111.f32, 1), v260, v111, 2), v347, v111, 3);
  *(v0 + 1680) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v326, v112.f32[0]), v280, *v112.f32, 1), v260, v112, 2), v347, v112, 3);
  *(v0 + 1696) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v326, v113.f32[0]), v280, *v113.f32, 1), v260, v113, 2), v347, v113, 3);
  *(v0 + 1712) = xmmword_1000EF5E0;
  *(v0 + 1728) = 0;
  v114 = v523;
  *(v0 + 1731) = v524;
  *(v0 + 1729) = v114;
  *(v0 + 1732) = 1056964608;
  *(v0 + 1736) = 13;
  *(v0 + 1737) = v521;
  *(v0 + 1739) = v522;
  *(v0 + 1740) = 1065353216;
  *(v0 + 1744) = 0;
  *(v0 + 1752) = 0u;
  *(v0 + 1768) = v520;
  *(v0 + 1769) = 1;
  *(v0 + 1771) = 0;
  *(v0 + 1776) = 0u;
  *(v0 + 1792) = sub_100081614;
  *(v0 + 1800) = 0;
  *(v0 + 1808) = 0x3F80000000000000;
  *(v0 + 1824) = xmmword_1000EF5A0;
  *(v0 + 1840) = 4;
  v115 = vmulq_f32(xmmword_10013DCA0, 0);
  v327 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v304 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v115), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v261 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v115, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v373 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, v405), v372, *algn_10013DCB0), vdupq_n_s32(0xBE999999), xmmword_10013DCC0));
  sub_10001358C(v450, 1.5708, xmmword_1000EC910);
  v116 = sub_100013568(v450);
  v406 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v327, v116.n128_f32[0]), v304, v116.n128_u64[0], 1), v261, v116, 2), v373, v116, 3);
  v348 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v327, v117.f32[0]), v304, *v117.f32, 1), v261, v117, 2), v373, v117, 3);
  v281 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v327, v118.f32[0]), v304, *v118.f32, 1), v261, v118, 2), v373, v118, 3);
  v262 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v327, v119.f32[0]), v304, *v119.f32, 1), v261, v119, 2), v373, v119, 3);
  sub_10001358C(v451, -0.82903, xmmword_1000EC8E0);
  v120 = sub_100013568(v451);
  v374 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v406, v120.n128_f32[0]), v348, v120.n128_u64[0], 1), v281, v120, 2), v262, v120, 3);
  v328 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v406, v121.f32[0]), v348, *v121.f32, 1), v281, v121, 2), v262, v121, 3);
  v305 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v406, v122.f32[0]), v348, *v122.f32, 1), v281, v122, 2), v262, v122, 3);
  v407 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v406, v123.f32[0]), v348, *v123.f32, 1), v281, v123, 2), v262, v123, 3);
  sub_10001358C(v452, 1.5708, xmmword_1000EC920);
  v124 = sub_100013568(v452);
  v527 = 1;
  *(v0 + 1856) = 0x3FC000003FE66666;
  *(v0 + 1864) = 1056964608;
  *(v0 + 1868) = 1;
  *(v0 + 1869) = v532;
  *(v0 + 1871) = v533;
  *(v0 + 1872) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v374, v124.n128_f32[0]), v328, v124.n128_u64[0], 1), v305, v124, 2), v407, v124, 3);
  *(v0 + 1888) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v374, v125.f32[0]), v328, *v125.f32, 1), v305, v125, 2), v407, v125, 3);
  *(v0 + 1904) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v374, v126.f32[0]), v328, *v126.f32, 1), v305, v126, 2), v407, v126, 3);
  *(v0 + 1920) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v374, v127.f32[0]), v328, *v127.f32, 1), v305, v127, 2), v407, v127, 3);
  *(v0 + 1936) = xmmword_1000EF5F0;
  *(v0 + 1952) = 1;
  v128 = v530;
  *(v0 + 1955) = v531;
  *(v0 + 1953) = v128;
  *(v0 + 1956) = 1076258406;
  *(v0 + 1960) = 9;
  *(v0 + 1961) = v528;
  *(v0 + 1963) = v529;
  *(v0 + 1964) = 1065353216;
  *(v0 + 1968) = 0;
  *(v0 + 1976) = 0u;
  *(v0 + 1992) = v527;
  *(v0 + 1993) = 1;
  *(v0 + 1995) = 0;
  *(v0 + 2000) = 0u;
  *(v0 + 2016) = sub_10003ABEC;
  *(v0 + 2024) = 0;
  *(v0 + 2032) = 0x3F44EC4F00000000;
  *(v0 + 2048) = xmmword_1000EF600;
  *(v0 + 2064) = 9;
  v129 = vmulq_f32(xmmword_10013DCA0, 0);
  v349 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v306 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v129), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v282 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v129, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v243 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3CA3D70Au)), vdupq_n_s32(0x4041EB85u), *algn_10013DCB0), vdupq_n_s32(0xBFCA3D70), xmmword_10013DCC0));
  sub_10001358C(v453, -1.0472, xmmword_1000EC910);
  v130 = sub_100013568(v453);
  v375 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v349, v130.n128_f32[0]), v306, v130.n128_u64[0], 1), v282, v130, 2), v243, v130, 3);
  v329 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v349, v131.f32[0]), v306, *v131.f32, 1), v282, v131, 2), v243, v131, 3);
  v263 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v349, v132.f32[0]), v306, *v132.f32, 1), v282, v132, 2), v243, v132, 3);
  v244 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v349, v133.f32[0]), v306, *v133.f32, 1), v282, v133, 2), v243, v133, 3);
  sub_10001358C(v454, -0.83776, xmmword_1000EC8E0);
  v134 = sub_100013568(v454);
  v307 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v375, v135.f32[0]), v329, *v135.f32, 1), v263, v135, 2), v244, v135, 3);
  v283 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v375, v136.f32[0]), v329, *v136.f32, 1), v263, v136, 2), v244, v136, 3);
  v350 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v375, v134.n128_f32[0]), v329, v134.n128_u64[0], 1), v263, v134, 2), v244, v134, 3);
  v376 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v375, v137.f32[0]), v329, *v137.f32, 1), v263, v137, 2), v244, v137, 3);
  sub_10001358C(v455, -1.0647, xmmword_1000EC920);
  v138 = sub_100013568(v455);
  v534 = 1;
  *(v0 + 2080) = 0x3F0000003F239581;
  *(v0 + 2088) = 1045220557;
  *(v0 + 2092) = 0;
  *(v0 + 2093) = v539;
  *(v0 + 2095) = v540;
  *(v0 + 2096) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v350, v138.n128_f32[0]), v307, v138.n128_u64[0], 1), v283, v138, 2), v376, v138, 3);
  *(v0 + 2112) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v350, v139.f32[0]), v307, *v139.f32, 1), v283, v139, 2), v376, v139, 3);
  *(v0 + 2128) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v350, v140.f32[0]), v307, *v140.f32, 1), v283, v140, 2), v376, v140, 3);
  *(v0 + 2144) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v350, v141.f32[0]), v307, *v141.f32, 1), v283, v141, 2), v376, v141, 3);
  *(v0 + 2160) = xmmword_1000EC900;
  *(v0 + 2176) = 0;
  v142 = v537;
  *(v0 + 2179) = v538;
  *(v0 + 2177) = v142;
  *(v0 + 2180) = 1065353216;
  *(v0 + 2184) = 13;
  *(v0 + 2185) = v535;
  *(v0 + 2187) = v536;
  *(v0 + 2188) = 1065353216;
  *(v0 + 2192) = 0;
  *(v0 + 2200) = 0u;
  *(v0 + 2216) = v534;
  *(v0 + 2217) = 0;
  *(v0 + 2219) = 1;
  *(v0 + 2224) = 0u;
  *(v0 + 2240) = sub_100081614;
  *(v0 + 2248) = 0;
  *(v0 + 2256) = 0x3F80000000000000;
  *(v0 + 2272) = xmmword_1000EF5A0;
  *(v0 + 2288) = 6;
  v143 = vmulq_f32(xmmword_10013DCA0, 0);
  v330 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v284 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v143), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v264 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v143, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v377 = vdupq_n_s32(0xBF8E147B);
  v238 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3DA3D70Au)), vdupq_n_s32(0x3F547AE1u), *algn_10013DCB0), v377, xmmword_10013DCC0));
  sub_10001358C(v456, 1.5708, xmmword_1000EC910);
  v144 = sub_100013568(v456);
  v351 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v330, v144.n128_f32[0]), v284, v144.n128_u64[0], 1), v264, v144, 2), v238, v144, 3);
  v308 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v330, v145.f32[0]), v284, *v145.f32, 1), v264, v145, 2), v238, v145, 3);
  v245 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v330, v146.f32[0]), v284, *v146.f32, 1), v264, v146, 2), v238, v146, 3);
  v239 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v330, v147.f32[0]), v284, *v147.f32, 1), v264, v147, 2), v238, v147, 3);
  sub_10001358C(v457, -3.4034, xmmword_1000EC8E0);
  v148 = sub_100013568(v457);
  v285 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v351, v149.f32[0]), v308, *v149.f32, 1), v245, v149, 2), v239, v149, 3);
  v265 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v351, v150.f32[0]), v308, *v150.f32, 1), v245, v150, 2), v239, v150, 3);
  v331 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v351, v148.n128_f32[0]), v308, v148.n128_u64[0], 1), v245, v148, 2), v239, v148, 3);
  v352 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v351, v151.f32[0]), v308, *v151.f32, 1), v245, v151, 2), v239, v151, 3);
  sub_10001358C(v458, 1.5708, xmmword_1000EC920);
  v152 = sub_100013568(v458);
  v541 = 1;
  *(v0 + 2304) = 0x3F63D70A3F451EB8;
  *(v0 + 2312) = 1056964608;
  *(v0 + 2316) = 1;
  *(v0 + 2317) = v546;
  *(v0 + 2319) = v547;
  *(v0 + 2320) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v331, v152.n128_f32[0]), v285, v152.n128_u64[0], 1), v265, v152, 2), v352, v152, 3);
  *(v0 + 2336) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v331, v153.f32[0]), v285, *v153.f32, 1), v265, v153, 2), v352, v153, 3);
  *(v0 + 2352) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v331, v154.f32[0]), v285, *v154.f32, 1), v265, v154, 2), v352, v154, 3);
  *(v0 + 2368) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v331, v155.f32[0]), v285, *v155.f32, 1), v265, v155, 2), v352, v155, 3);
  *(v0 + 2384) = xmmword_1000EF610;
  *(v0 + 2400) = 0;
  v156 = v544;
  *(v0 + 2403) = v545;
  *(v0 + 2401) = v156;
  *(v0 + 2404) = 1056964608;
  *(v0 + 2408) = 9;
  *(v0 + 2409) = v542;
  *(v0 + 2411) = v543;
  *(v0 + 2412) = 1065353216;
  *(v0 + 2416) = 0;
  *(v0 + 2424) = 0u;
  *(v0 + 2440) = v541;
  *(v0 + 2441) = 2;
  *(v0 + 2443) = 1;
  *(v0 + 2448) = 0u;
  *(v0 + 2464) = sub_10003AC1C;
  *(v0 + 2472) = 0;
  *(v0 + 2480) = 0x3F80000000000000;
  *(v0 + 2496) = xmmword_1000EF5C0;
  *(v0 + 2512) = 6;
  v157 = vmulq_f32(xmmword_10013DCA0, 0);
  v353 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v309 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v157), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v266 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v157, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v246 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBEC28F5C)), vdupq_n_s32(0xBF2B851E), *algn_10013DCB0), v377, xmmword_10013DCC0));
  sub_10001358C(v459, 1.5708, xmmword_1000EC910);
  v158 = sub_100013568(v459);
  v378 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v353, v158.n128_f32[0]), v309, v158.n128_u64[0], 1), v266, v158, 2), v246, v158, 3);
  v332 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v353, v159.f32[0]), v309, *v159.f32, 1), v266, v159, 2), v246, v159, 3);
  v286 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v353, v160.f32[0]), v309, *v160.f32, 1), v266, v160, 2), v246, v160, 3);
  v247 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v353, v161.f32[0]), v309, *v161.f32, 1), v266, v161, 2), v246, v161, 3);
  sub_10001358C(v460, -2.2864, xmmword_1000EC8E0);
  v162 = sub_100013568(v460);
  v310 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v378, v163.f32[0]), v332, *v163.f32, 1), v286, v163, 2), v247, v163, 3);
  v267 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v378, v164.f32[0]), v332, *v164.f32, 1), v286, v164, 2), v247, v164, 3);
  v354 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v378, v162.n128_f32[0]), v332, v162.n128_u64[0], 1), v286, v162, 2), v247, v162, 3);
  v379 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v378, v165.f32[0]), v332, *v165.f32, 1), v286, v165, 2), v247, v165, 3);
  sub_10001358C(v461, 1.5708, xmmword_1000EC920);
  v166 = sub_100013568(v461);
  v548 = 1;
  *(v0 + 2528) = 0x3F8CCCCD3F570A3DLL;
  *(v0 + 2536) = 1065353216;
  *(v0 + 2540) = 1;
  *(v0 + 2541) = v553;
  *(v0 + 2543) = v554;
  *(v0 + 2544) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v354, v166.n128_f32[0]), v310, v166.n128_u64[0], 1), v267, v166, 2), v379, v166, 3);
  *(v0 + 2560) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v354, v167.f32[0]), v310, *v167.f32, 1), v267, v167, 2), v379, v167, 3);
  *(v0 + 2576) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v354, v168.f32[0]), v310, *v168.f32, 1), v267, v168, 2), v379, v168, 3);
  *(v0 + 2592) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v354, v169.f32[0]), v310, *v169.f32, 1), v267, v169, 2), v379, v169, 3);
  *(v0 + 2608) = xmmword_1000EF620;
  *(v0 + 2624) = 0;
  v170 = v551;
  *(v0 + 2627) = v552;
  *(v0 + 2625) = v170;
  *(v0 + 2628) = 1058977874;
  *(v0 + 2632) = 9;
  *(v0 + 2633) = v549;
  *(v0 + 2635) = v550;
  *(v0 + 2636) = 1065353216;
  *(v0 + 2640) = 0;
  *(v0 + 2648) = 0u;
  *(v0 + 2664) = v548;
  *(v0 + 2665) = 2;
  *(v0 + 2667) = 1;
  *(v0 + 2672) = 0u;
  *(v0 + 2688) = sub_10003AC4C;
  *(v0 + 2696) = 0;
  *(v0 + 2704) = 0x3F80000000000000;
  *(v0 + 2720) = xmmword_1000EF630;
  *(v0 + 2736) = 9;
  v171 = vmulq_f32(xmmword_10013DCA0, 0);
  v355 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v311 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v171), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v287 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v171, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v248 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC03C28F5)), vdupq_n_s32(0x4071EB85u), *algn_10013DCB0), vdupq_n_s32(0x405E147Bu), xmmword_10013DCC0));
  sub_10001358C(v462, -1.2217, xmmword_1000EC910);
  v172 = sub_100013568(v462);
  v380 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v355, v172.n128_f32[0]), v311, v172.n128_u64[0], 1), v287, v172, 2), v248, v172, 3);
  v333 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v355, v173.f32[0]), v311, *v173.f32, 1), v287, v173, 2), v248, v173, 3);
  v268 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v355, v174.f32[0]), v311, *v174.f32, 1), v287, v174, 2), v248, v174, 3);
  v249 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v355, v175.f32[0]), v311, *v175.f32, 1), v287, v175, 2), v248, v175, 3);
  sub_10001358C(v463, -0.68068, xmmword_1000EC8E0);
  v176 = sub_100013568(v463);
  v312 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v380, v177.f32[0]), v333, *v177.f32, 1), v268, v177, 2), v249, v177, 3);
  v288 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v380, v178.f32[0]), v333, *v178.f32, 1), v268, v178, 2), v249, v178, 3);
  v356 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v380, v176.n128_f32[0]), v333, v176.n128_u64[0], 1), v268, v176, 2), v249, v176, 3);
  v381 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v380, v179.f32[0]), v333, *v179.f32, 1), v268, v179, 2), v249, v179, 3);
  sub_10001358C(v464, -0.27925, xmmword_1000EC920);
  v180 = sub_100013568(v464);
  v555 = 1;
  *(v0 + 2752) = 0x404CCCCD3F28F5C3;
  *(v0 + 2760) = 1035758207;
  *(v0 + 2764) = 1;
  *(v0 + 2765) = v560;
  *(v0 + 2767) = v561;
  *(v0 + 2768) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v356, v180.n128_f32[0]), v312, v180.n128_u64[0], 1), v288, v180, 2), v381, v180, 3);
  *(v0 + 2784) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v356, v181.f32[0]), v312, *v181.f32, 1), v288, v181, 2), v381, v181, 3);
  *(v0 + 2800) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v356, v182.f32[0]), v312, *v182.f32, 1), v288, v182, 2), v381, v182, 3);
  *(v0 + 2816) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v356, v183.f32[0]), v312, *v183.f32, 1), v288, v183, 2), v381, v183, 3);
  *(v0 + 2832) = xmmword_1000EF5F0;
  *(v0 + 2848) = 1;
  v184 = v558;
  *(v0 + 2851) = v559;
  *(v0 + 2849) = v184;
  *(v0 + 2852) = 1088631603;
  *(v0 + 2856) = 8;
  *(v0 + 2857) = v556;
  *(v0 + 2859) = v557;
  *(v0 + 2860) = 1055622431;
  *(v0 + 2864) = 0;
  *(v0 + 2872) = 0u;
  *(v0 + 2888) = v555;
  *(v0 + 2889) = 3;
  *(v0 + 2891) = 1;
  *(v0 + 2896) = 0u;
  *(v0 + 2912) = sub_10003AD48;
  *(v0 + 2920) = 0;
  *(v0 + 2928) = 0x3F80000000000000;
  *(v0 + 2944) = xmmword_1000EF5A0;
  *(v0 + 2960) = 5;
  v185 = vmulq_f32(xmmword_10013DCA0, 0);
  v382 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v334 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v185), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v289 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v185, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v180.n128_u64[0] = 0x4000000040000000;
  v180.n128_u64[1] = 0x4000000040000000;
  v269 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3FD1EB85u)), v397, *algn_10013DCB0), v180, xmmword_10013DCC0));
  sub_10001358C(v465, 0.0, xmmword_1000EC910);
  v186 = sub_100013568(v465);
  v398 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v382, v186.n128_f32[0]), v334, v186.n128_u64[0], 1), v289, v186, 2), v269, v186, 3);
  v357 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v382, v187.f32[0]), v334, *v187.f32, 1), v289, v187, 2), v269, v187, 3);
  v313 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v382, v188.f32[0]), v334, *v188.f32, 1), v289, v188, 2), v269, v188, 3);
  v270 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v382, v189.f32[0]), v334, *v189.f32, 1), v289, v189, 2), v269, v189, 3);
  sub_10001358C(v466, 0.54105, xmmword_1000EC8E0);
  v190 = sub_100013568(v466);
  v335 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v398, v191.f32[0]), v357, *v191.f32, 1), v313, v191, 2), v270, v191, 3);
  v290 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v398, v192.f32[0]), v357, *v192.f32, 1), v313, v192, 2), v270, v192, 3);
  v383 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v398, v190.n128_f32[0]), v357, v190.n128_u64[0], 1), v313, v190, 2), v270, v190, 3);
  v399 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v398, v193.f32[0]), v357, *v193.f32, 1), v313, v193, 2), v270, v193, 3);
  sub_10001358C(v467, 0.0, xmmword_1000EC920);
  v194 = sub_100013568(v467);
  v562 = 1;
  *(v0 + 2976) = 0x4053851F3FF0A3D7;
  *(v0 + 2984) = 1053609165;
  *(v0 + 2988) = 1;
  *(v0 + 2989) = v567;
  *(v0 + 2991) = v568;
  *(v0 + 2992) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v383, v194.n128_f32[0]), v335, v194.n128_u64[0], 1), v290, v194, 2), v399, v194, 3);
  *(v0 + 3008) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v383, v195.f32[0]), v335, *v195.f32, 1), v290, v195, 2), v399, v195, 3);
  *(v0 + 3024) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v383, v196.f32[0]), v335, *v196.f32, 1), v290, v196, 2), v399, v196, 3);
  *(v0 + 3040) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v383, v197.f32[0]), v335, *v197.f32, 1), v290, v197, 2), v399, v197, 3);
  *(v0 + 3056) = xmmword_1000EF5F0;
  *(v0 + 3072) = 1;
  v198 = v565;
  *(v0 + 3075) = v566;
  *(v0 + 3073) = v198;
  *(v0 + 3076) = 1089260749;
  *(v0 + 3080) = 13;
  *(v0 + 3081) = v563;
  *(v0 + 3083) = v564;
  *(v0 + 3084) = 1065353216;
  *(v0 + 3088) = 0;
  *(v0 + 3096) = 0u;
  *(v0 + 3112) = v562;
  *(v0 + 3113) = 3;
  *(v0 + 3115) = 1;
  *(v0 + 3120) = 0u;
  *(v0 + 3136) = sub_10008160C;
  *(v0 + 3144) = 0;
  *(v0 + 3152) = 0x3F80000000000000;
  *(v0 + 3168) = xmmword_1000EF5C0;
  *(v0 + 3184) = 5;
  v199 = vmulq_f32(xmmword_10013DCA0, 0);
  v408 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v358 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v199), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v336 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v199, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v291 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBFC7AE14)), vdupq_n_s32(0x40233333u), *algn_10013DCB0), vdupq_n_s32(0x405D70A4u), xmmword_10013DCC0));
  sub_10001358C(v468, -0.69813, xmmword_1000EC910);
  v200 = sub_100013568(v468);
  v384 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v408, v201.f32[0]), v358, *v201.f32, 1), v336, v201, 2), v291, v201, 3);
  v400 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v408, v200.n128_f32[0]), v358, v200.n128_u64[0], 1), v336, v200, 2), v291, v200, 3);
  v314 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v408, v202.f32[0]), v358, *v202.f32, 1), v336, v202, 2), v291, v202, 3);
  v359 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v408, v203.f32[0]), v358, *v203.f32, 1), v336, v203, 2), v291, v203, 3);
  sub_10001358C(v469, 0.0, xmmword_1000EC8E0);
  v204 = sub_100013568(v469);
  v422 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v400, v205.f32[0]), v384, *v205.f32, 1), v314, v205, 2), v359, v205, 3);
  v424 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v400, v204.n128_f32[0]), v384, v204.n128_u64[0], 1), v314, v204, 2), v359, v204, 3);
  v409 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v400, v206.f32[0]), v384, *v206.f32, 1), v314, v206, 2), v359, v206, 3);
  v401 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v400, v207.f32[0]), v384, *v207.f32, 1), v314, v207, 2), v359, v207, 3);
  sub_10001358C(v470, 0.0, xmmword_1000EC920);
  v208 = sub_100013568(v470);
  v569 = 1;
  *(v0 + 3200) = 0x408CCCCD3FB33333;
  *(v0 + 3208) = 1056964608;
  *(v0 + 3212) = 1;
  *(v0 + 3213) = v574;
  *(v0 + 3215) = v575;
  *(v0 + 3216) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v424, v208.n128_f32[0]), v422, v208.n128_u64[0], 1), v409, v208, 2), v401, v208, 3);
  *(v0 + 3232) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v424, v209.f32[0]), v422, *v209.f32, 1), v409, v209, 2), v401, v209, 3);
  *(v0 + 3248) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v424, v210.f32[0]), v422, *v210.f32, 1), v409, v210, 2), v401, v210, 3);
  *(v0 + 3264) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v424, v211.f32[0]), v422, *v211.f32, 1), v409, v211, 2), v401, v211, 3);
  *(v0 + 3280) = xmmword_1000EC900;
  *(v0 + 3296) = 0;
  v212 = v572;
  *(v0 + 3299) = v573;
  *(v0 + 3297) = v212;
  *(v0 + 3300) = 1069547520;
  *(v0 + 3304) = 13;
  *(v0 + 3305) = v570;
  *(v0 + 3307) = v571;
  *(v0 + 3308) = 1065353216;
  *(v0 + 3312) = 0;
  *(v0 + 3320) = 0u;
  *(v0 + 3336) = v569;
  *(v0 + 3337) = 3;
  *(v0 + 3339) = 1;
  *(v0 + 3344) = 0u;
  *(v0 + 3360) = sub_10003AE2C;
  *(v0 + 3368) = 0;
  *(v0 + 3376) = 0x3F80000000000000;
  v213 = sub_1000A0774(v0);
  swift_setDeallocating();
  sub_1000125FC(&qword_100131018, &qword_1000F1D70);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1000125FC(&qword_100131020, &qword_1000F1D78);
  v214 = swift_allocObject();
  v214[1] = xmmword_1000ED250;
  v214[2] = xmmword_1000EF640;
  v214[3] = xmmword_1000EF650;
  v214[4] = xmmword_1000EF660;
  v215 = swift_allocObject();
  v215[1] = xmmword_1000EC880;
  v215[2] = xmmword_1000EF670;
  v215[3] = xmmword_1000EF680;
  v216 = swift_allocObject();
  v216[1] = xmmword_1000EC880;
  v216[2] = xmmword_1000EF690;
  v216[3] = xmmword_1000EF6A0;
  sub_1000125FC(&qword_100131028, &qword_1000F1D80);
  v217 = swift_allocObject();
  *(v217 + 16) = xmmword_1000EC880;
  *(v217 + 32) = swift_getKeyPath();
  *(v217 + 40) = 1066611507;
  *(v217 + 44) = 0;
  *(v217 + 48) = 1068960317;
  *(v217 + 52) = 0;
  *(v217 + 56) = 0;
  *(v217 + 60) = 1;
  *(v217 + 64) = swift_getKeyPath();
  *(v217 + 72) = -1077348925;
  *(v217 + 76) = 0;
  *(v217 + 80) = -1078020014;
  *(v217 + 84) = 0;
  *(v217 + 88) = 1049918177;
  *(v217 + 92) = 1;
  sub_1000125FC(&qword_100131030, &qword_1000F1DD8);
  v218 = swift_allocObject();
  *(v218 + 16) = xmmword_1000EC880;
  *(v218 + 32) = swift_getKeyPath();
  v219 = vnegq_f32(xmmword_100130FD0);
  v220 = vtrn2q_s32(xmmword_100130FD0, vtrn1q_s32(xmmword_100130FD0, v219));
  v425 = vdupq_n_s32(0x3D381240u);
  v221 = vdupq_n_s32(0xBD381240);
  v222 = vmlaq_f32(vmulq_f32(vextq_s8(xmmword_100130FD0, v219, 8uLL), v425), v221, vextq_s8(v220, v220, 8uLL));
  v223 = vrev64q_s32(xmmword_100130FD0);
  v223.i32[0] = v219.i32[1];
  v223.i32[3] = v219.i32[2];
  v420 = vdupq_n_s32(0x3F7F7B61u);
  v423 = v221;
  v418 = vdupq_n_s32(0xBB049EF1);
  *(v218 + 48) = vaddq_f32(vmlaq_f32(vmulq_f32(xmmword_100130FD0, v420), v418, v223), v222);
  *(v218 + 64) = swift_getKeyPath();
  v224 = vnegq_f32(xmmword_100130FF0);
  v225 = vtrn2q_s32(xmmword_100130FF0, vtrn1q_s32(xmmword_100130FF0, v224));
  v226 = vmlaq_f32(vmulq_f32(vextq_s8(xmmword_100130FF0, v224, 8uLL), v423), v425, vextq_s8(v225, v225, 8uLL));
  v227 = vrev64q_s32(xmmword_100130FF0);
  v227.i32[0] = v224.i32[1];
  v227.i32[3] = v224.i32[2];
  *(v218 + 80) = vaddq_f32(vmlaq_f32(vmulq_f32(xmmword_100130FF0, v420), v418, v227), v226);
  sub_1000125FC(&qword_100131038, &qword_1000F1E30);
  v228 = swift_allocObject();
  *(v228 + 16) = xmmword_1000EDAB0;
  *(v228 + 32) = 0;
  *(v228 + 40) = 0;
  *(v228 + 48) = 9;
  *(v228 + 52) = 0;
  *(v228 + 56) = 1;
  *(v228 + 60) = 0;
  *(v228 + 64) = 1;
  *(v228 + 68) = 1017370378;
  *(v228 + 72) = 1;
  *(v228 + 80) = xmmword_1000EF5C0;
  *(v228 + 96) = 9;
  *(v228 + 100) = 0;
  *(v228 + 104) = 1;
  *(v228 + 108) = 0;
  *(v228 + 112) = 1;
  *(v228 + 116) = 1058642330;
  *(v228 + 120) = 1;
  *(v228 + 128) = xmmword_1000EF5A0;
  *(v228 + 144) = 3;
  *(v228 + 148) = 0;
  *(v228 + 152) = 1;
  *(v228 + 156) = 0;
  *(v228 + 160) = 1;
  *(v228 + 164) = 1067198710;
  *(v228 + 168) = 1;
  *(v228 + 176) = xmmword_1000EF5A0;
  *(v228 + 192) = 4;
  *(v228 + 196) = 0;
  *(v228 + 200) = 1;
  *(v228 + 204) = 0;
  *(v228 + 208) = 1;
  *(v228 + 212) = 1056964608;
  *(v228 + 216) = 1;
  *(v228 + 224) = xmmword_1000EF5A0;
  *(v228 + 240) = 2;
  *(v228 + 244) = 0;
  *(v228 + 248) = 1;
  *(v228 + 252) = 0;
  *(v228 + 256) = 1;
  *(v228 + 260) = 1045220557;
  *(v228 + 264) = 1;
  v229 = sub_1000A092C(v228);
  swift_setDeallocating();
  sub_1000125FC(&qword_100131040, &qword_1000F1E38);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v230 = sub_1000A0A98(&off_10011EF90);
  sub_1000125FC(&qword_100131048, &qword_1000F1E40);
  swift_arrayDestroy();
  swift_bridgeObjectRetain_n();
  v232 = sub_1000C1928(v231, v213);

  sub_1000C53DC(v232, v578);
  v234 = sub_1000C199C(v233, v213);

  sub_1000C53DC(v234, v576);
  xmmword_10013AA50 = xmmword_1000EF6B0;
  unk_10013AA60 = v403;
  qword_10013AA70 = 0x3E8000003FC00000;
  dword_10013AA78 = 1008981770;
  xmmword_10013AA80 = xmmword_1000EF6C0;
  unk_10013AA90 = v402;
  qword_10013AAA0 = 0x3E99999A400CBC6ALL;
  dword_10013AAA8 = 1014350479;
  xmmword_10013AAB0 = xmmword_1000EF6D0;
  qword_10013AAC0 = 0x410A49BA40800000;
  xmmword_10013AAD0 = xmmword_1000EF6E0;
  *&qword_10013AAE0 = xmmword_1000EF6F0;
  dword_10013AAF0 = 1097712271;
  qword_10013AAF8 = 0;
  unk_10013AB00 = v213;
  unk_10013AB08 = v578[0];
  unk_10013AB18 = v578[1];
  qword_10013AB28 = v579;
  xmmword_10013AB30 = v576[0];
  unk_10013AB40 = v576[1];
  qword_10013AB50 = v577;
  qword_10013AB58 = sub_10003AED4;
  qword_10013AB60 = 0;
  xmmword_10013AB70 = xmmword_1000EF700;
  unk_10013AB80 = xmmword_1000EF710;
  qword_10013AB90 = v214;
  word_10013AB9C = 3;
  dword_10013AB98 = 0;
  xmmword_10013ABA0 = xmmword_1000EF720;
  qword_10013ABB0 = v215;
  xmmword_10013ABB8 = xmmword_1000EF730;
  xmmword_10013ABC8 = xmmword_1000EF740;
  qword_10013ABD8 = 1059366053;
  unk_10013ABE0 = v216;
  xmmword_10013ABE8 = xmmword_1000EF750;
  xmmword_10013ABF8 = xmmword_1000EF760;
  qword_10013AC08 = 1063774184;
  xmmword_10013AC10 = xmmword_1000EF770;
  qword_10013AC20 = v217;
  unk_10013AC28 = v218;
  qword_10013AC30 = v229;
  unk_10013AC38 = v230;
  qword_10013AC40 = _swiftEmptyArrayStorage;
  unk_10013AC48 = _swiftEmptyArrayStorage;
  result = 46976199.9;
  qword_10013AC50 = 4721573848678400000;
  return result;
}

float sub_10003A960(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -5.0) * a2) + 5.0;
  *(a1 + 100) = result;
  return result;
}

uint64_t sub_10003A980(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.5) * a2) + 0.5;
    *result = COERCE_UNSIGNED_INT(((*result + -3.5) * a2) + 3.5) | (COERCE_UNSIGNED_INT(((*(result + 4) + -0.78) * a2) + 0.78) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -1.6) * a2) + 1.6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

float sub_10003AA28(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -0.41) * a2) + 0.41;
  *(a1 + 100) = result;
  return result;
}

uint64_t sub_10003AA58(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.5) * a2) + 0.5;
    *result = COERCE_UNSIGNED_INT(((*result + -1.7) * a2) + 1.7) | (COERCE_UNSIGNED_INT(((*(result + 4) + -2.4) * a2) + 2.4) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -0.53) * a2) + 0.53;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10003AB10(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.5) * a2) + 0.5;
    *result = COERCE_UNSIGNED_INT(((*result + -4.0) * a2) + 4.0) | (COERCE_UNSIGNED_INT(((*(result + 4) + -2.0) * a2) + 2.0) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -1.2) * a2) + 1.2;
    *(result + 108) = ((*(result + 108) + -1.2) * a2) + 1.2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

float sub_10003ABBC(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -0.57) * a2) + 0.57;
  *(a1 + 100) = result;
  return result;
}

float sub_10003ABEC(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -1.3) * a2) + 1.3;
  *(a1 + 100) = result;
  return result;
}

float sub_10003AC1C(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -0.49) * a2) + 0.49;
  *(a1 + 100) = result;
  return result;
}

void sub_10003AC4C(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v3 = ((*(result + 8) + -1.0) * a2) + 1.0;
    *result = COERCE_UNSIGNED_INT(((*result + -1.2) * a2) + 1.2) | (COERCE_UNSIGNED_INT(((*(result + 4) + -1.1) * a2) + 1.1) << 32);
    *(result + 8) = v3;
    *(result + 100) = ((*(result + 100) + -0.38) * a2) + 0.38;
    sub_1000BA464(*(result + 80), *(result + 88), *(result + 96), 0x3F6AEAEB00000000, 1065353216, 0, a2);
    *(result + 80) = v4;
    *(result + 88) = v5;
    *(result + 96) = v6;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10003AD48(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.5) * a2) + 0.5;
    *result = COERCE_UNSIGNED_INT(((*result + -0.83) * a2) + 0.83) | (COERCE_UNSIGNED_INT(((*(result + 4) + -3.2) * a2) + 3.2) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -2.9) * a2) + 2.9;
    *(result + 108) = ((*(result + 108) + -0.49) * a2) + 0.49;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10003AE2C(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.5) * a2) + 0.5;
    *result = COERCE_UNSIGNED_INT(((*result + -3.0) * a2) + 3.0) | (COERCE_UNSIGNED_INT(((*(result + 4) + -4.4) * a2) + 4.4) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -0.36) * a2) + 0.36;
  }

  else
  {
    __break(1u);
  }

  return result;
}

float32x2_t sub_10003AED4(float a1)
{
  v1 = a1;
  if (a1 < 0.0)
  {
    a1 = 0.0;
  }

  v2 = a1 * 3.1416;
  if (v1 >= 1.0)
  {
    v2 = 3.1416;
  }

  return vmul_n_f32(vadd_f32(vmul_n_f32(0x3E99999A3EF0A3D8, fminf(v1 / 0.875, 1.0)), 0x3F3333333F07AE14), ((0.5 - (cosf(v2) * 0.5)) * 0.916) + 0.084);
}

double sub_10003AF90()
{
  if (qword_10012F578 != -1)
  {
    swift_once();
  }

  v437 = unk_10013AA60;
  v438 = xmmword_10013AA50;
  v436 = qword_10013AA70;
  v0 = dword_10013AA78;
  v434 = unk_10013AA90;
  v435 = xmmword_10013AA80;
  v1 = qword_10013AAA0;
  v2 = dword_10013AAA8;
  v3 = qword_10013AAC0;
  v432 = xmmword_10013AAD0;
  v433 = xmmword_10013AAB0;
  v430 = unk_10013AAE8;
  v431 = qword_10013AAE0;
  v429 = dword_10013AAF0;
  sub_1000125FC(&qword_100131010, &qword_1000F1D68);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000EF780;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 9;
  if (qword_10012F6E8 != -1)
  {
    swift_once();
  }

  v5 = vmulq_f32(xmmword_10013DCA0, 0);
  v491 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v485 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v5), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v458 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v5, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v423 = vdupq_n_s32(0x3FDC28F5u);
  v401 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBFB47AE1)), v423, *algn_10013DCB0), 0, xmmword_10013DCC0));
  sub_10001358C(v494, 1.9373, xmmword_1000EC910);
  v6 = sub_100013568(v494);
  v490 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v491, v6.n128_f32[0]), v485, v6.n128_u64[0], 1), v458, v6, 2), v401, v6, 3);
  v475 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v491, v7.f32[0]), v485, *v7.f32, 1), v458, v7, 2), v401, v7, 3);
  v439 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v491, v8.f32[0]), v485, *v8.f32, 1), v458, v8, 2), v401, v8, 3);
  v375 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v491, v9.f32[0]), v485, *v9.f32, 1), v458, v9, 2), v401, v9, 3);
  sub_10001358C(v495, -2.3911, xmmword_1000EC8E0);
  v10 = sub_100013568(v495);
  v11 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v490, v10.n128_f32[0]), v475, v10.n128_u64[0], 1), v439, v10, 2), v375, v10, 3);
  v459 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v490, v12.f32[0]), v475, *v12.f32, 1), v439, v12, 2), v375, v12, 3);
  v402 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v490, v13.f32[0]), v475, *v13.f32, 1), v439, v13, 2), v375, v13, 3);
  v476 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v490, v14.f32[0]), v475, *v14.f32, 1), v439, v14, 2), v375, v14, 3);
  v486 = v11;
  sub_10001358C(v496, 0.034907, xmmword_1000EC920);
  v15 = sub_100013568(v496);
  v546 = 1;
  *(v4 + 64) = 0x408666663F59999ALL;
  *(v4 + 72) = 1052266988;
  *(v4 + 76) = 1;
  *(v4 + 77) = v551;
  *(v4 + 79) = v552;
  *(v4 + 80) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v486, v15.n128_f32[0]), v459, v15.n128_u64[0], 1), v402, v15, 2), v476, v15, 3);
  *(v4 + 96) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v486, v16.f32[0]), v459, *v16.f32, 1), v402, v16, 2), v476, v16, 3);
  *(v4 + 112) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v486, v17.f32[0]), v459, *v17.f32, 1), v402, v17, 2), v476, v17, 3);
  *(v4 + 128) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v486, v18.f32[0]), v459, *v18.f32, 1), v402, v18, 2), v476, v18, 3);
  *(v4 + 144) = xmmword_1000EF790;
  *(v4 + 160) = 0;
  v19 = v549;
  *(v4 + 163) = v550;
  *(v4 + 161) = v19;
  *(v4 + 164) = 1108869120;
  *(v4 + 168) = 0;
  *(v4 + 169) = v547;
  *(v4 + 171) = v548;
  *(v4 + 172) = 1067869798;
  *(v4 + 192) = 0;
  *(v4 + 176) = 0u;
  *(v4 + 200) = v546;
  *(v4 + 201) = 0;
  *(v4 + 203) = 1;
  *(v4 + 208) = 0u;
  *(v4 + 224) = sub_10003E3EC;
  *(v4 + 232) = 0;
  *(v4 + 240) = 0x3F80000000000000;
  *(v4 + 256) = xmmword_1000EF5A0;
  *(v4 + 272) = 9;
  v20 = vmulq_f32(xmmword_10013DCA0, 0);
  v460 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v403 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v20), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v376 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v20, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v328 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBEDC28F5)), vdupq_n_s32(0xBEA3D70A), *algn_10013DCB0), vdupq_n_s32(0xBEF0A3D7), xmmword_10013DCC0));
  sub_10001358C(v497, 0.0, xmmword_1000EC910);
  v21 = sub_100013568(v497);
  v477 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v460, v21.n128_f32[0]), v403, v21.n128_u64[0], 1), v376, v21, 2), v328, v21, 3);
  v440 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v460, v22.f32[0]), v403, *v22.f32, 1), v376, v22, 2), v328, v22, 3);
  v354 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v460, v23.f32[0]), v403, *v23.f32, 1), v376, v23, 2), v328, v23, 3);
  v329 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v460, v24.f32[0]), v403, *v24.f32, 1), v376, v24, 2), v328, v24, 3);
  sub_10001358C(v498, 0.0, xmmword_1000EC8E0);
  v25 = sub_100013568(v498);
  v404 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v477, v26.f32[0]), v440, *v26.f32, 1), v354, v26, 2), v329, v26, 3);
  v377 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v477, v27.f32[0]), v440, *v27.f32, 1), v354, v27, 2), v329, v27, 3);
  v461 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v477, v25.n128_f32[0]), v440, v25.n128_u64[0], 1), v354, v25, 2), v329, v25, 3);
  v478 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v477, v28.f32[0]), v440, *v28.f32, 1), v354, v28, 2), v329, v28, 3);
  sub_10001358C(v499, 0.0, xmmword_1000EC920);
  v29 = sub_100013568(v499);
  v553 = 1;
  *(v4 + 288) = 0x403333334039999ALL;
  *(v4 + 296) = 1056964608;
  *(v4 + 300) = 1;
  *(v4 + 301) = v558;
  *(v4 + 303) = v559;
  *(v4 + 304) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v461, v29.n128_f32[0]), v404, v29.n128_u64[0], 1), v377, v29, 2), v478, v29, 3);
  *(v4 + 320) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v461, v30.f32[0]), v404, *v30.f32, 1), v377, v30, 2), v478, v30, 3);
  *(v4 + 336) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v461, v31.f32[0]), v404, *v31.f32, 1), v377, v31, 2), v478, v31, 3);
  *(v4 + 352) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v461, v32.f32[0]), v404, *v32.f32, 1), v377, v32, 2), v478, v32, 3);
  *(v4 + 368) = xmmword_1000EF7A0;
  *(v4 + 384) = 0;
  v33 = v556;
  *(v4 + 387) = v557;
  *(v4 + 385) = v33;
  *(v4 + 388) = 1077936128;
  *(v4 + 392) = 9;
  *(v4 + 393) = v554;
  *(v4 + 395) = v555;
  *(v4 + 396) = 1065353216;
  *(v4 + 416) = 0;
  *(v4 + 400) = 0u;
  *(v4 + 424) = v553;
  *(v4 + 425) = 0;
  *(v4 + 427) = 0;
  *(v4 + 432) = 0u;
  *(v4 + 448) = sub_10003E4C0;
  *(v4 + 456) = 0;
  *(v4 + 464) = 0x3F80000000000000;
  *(v4 + 480) = xmmword_1000EF5A0;
  *(v4 + 496) = 2;
  v34 = vmulq_f32(xmmword_10013DCA0, 0);
  v462 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v405 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v34), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v378 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v34, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v330 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBD4CCCCC)), vdupq_n_s32(0xBDB851EB), *algn_10013DCB0), vdupq_n_s32(0x3F199999u), xmmword_10013DCC0));
  sub_10001358C(v500, 4.7124, xmmword_1000EC910);
  v35 = sub_100013568(v500);
  v479 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v462, v35.n128_f32[0]), v405, v35.n128_u64[0], 1), v378, v35, 2), v330, v35, 3);
  v441 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v462, v36.f32[0]), v405, *v36.f32, 1), v378, v36, 2), v330, v36, 3);
  v355 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v462, v37.f32[0]), v405, *v37.f32, 1), v378, v37, 2), v330, v37, 3);
  v331 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v462, v38.f32[0]), v405, *v38.f32, 1), v378, v38, 2), v330, v38, 3);
  sub_10001358C(v501, 1.0036, xmmword_1000EC8E0);
  v39 = sub_100013568(v501);
  v406 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v479, v40.f32[0]), v441, *v40.f32, 1), v355, v40, 2), v331, v40, 3);
  v379 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v479, v41.f32[0]), v441, *v41.f32, 1), v355, v41, 2), v331, v41, 3);
  v463 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v479, v39.n128_f32[0]), v441, v39.n128_u64[0], 1), v355, v39, 2), v331, v39, 3);
  v480 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v479, v42.f32[0]), v441, *v42.f32, 1), v355, v42, 2), v331, v42, 3);
  sub_10001358C(v502, -1.5708, xmmword_1000EC920);
  v43 = sub_100013568(v502);
  v560 = 1;
  *(v4 + 512) = 0x3FA666663F570A3DLL;
  *(v4 + 520) = 1056964608;
  *(v4 + 524) = 1;
  *(v4 + 525) = v565;
  *(v4 + 527) = v566;
  *(v4 + 528) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v463, v43.n128_f32[0]), v406, v43.n128_u64[0], 1), v379, v43, 2), v480, v43, 3);
  *(v4 + 544) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v463, v44.f32[0]), v406, *v44.f32, 1), v379, v44, 2), v480, v44, 3);
  *(v4 + 560) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v463, v45.f32[0]), v406, *v45.f32, 1), v379, v45, 2), v480, v45, 3);
  *(v4 + 576) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v463, v46.f32[0]), v406, *v46.f32, 1), v379, v46, 2), v480, v46, 3);
  *(v4 + 592) = xmmword_1000EC900;
  *(v4 + 608) = 0;
  v47 = v563;
  *(v4 + 611) = v564;
  *(v4 + 609) = v47;
  *(v4 + 612) = 1088421888;
  *(v4 + 616) = 13;
  *(v4 + 617) = v561;
  *(v4 + 619) = v562;
  *(v4 + 620) = 1065353216;
  *(v4 + 640) = 0;
  *(v4 + 624) = 0u;
  *(v4 + 648) = v560;
  *(v4 + 649) = 0;
  *(v4 + 651) = 0;
  *(v4 + 656) = 0u;
  *(v4 + 672) = sub_10003E4F0;
  *(v4 + 680) = 0;
  *(v4 + 688) = 0x3E6A0EA100000000;
  *(v4 + 704) = xmmword_1000EF5A0;
  *(v4 + 720) = 1;
  v48 = vmulq_f32(xmmword_10013DCA0, 0);
  v442 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v380 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v48), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v356 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v48, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v309 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBF428F5C)), vdupq_n_s32(0x3F9851EBu), *algn_10013DCB0), vdupq_n_s32(0xBE947AE1), xmmword_10013DCC0));
  sub_10001358C(v503, 2.0944, xmmword_1000EC910);
  v49 = sub_100013568(v503);
  v481 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v442, v49.n128_f32[0]), v380, v49.n128_u64[0], 1), v356, v49, 2), v309, v49, 3);
  v407 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v442, v50.f32[0]), v380, *v50.f32, 1), v356, v50, 2), v309, v50, 3);
  v332 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v442, v51.f32[0]), v380, *v51.f32, 1), v356, v51, 2), v309, v51, 3);
  v310 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v442, v52.f32[0]), v380, *v52.f32, 1), v356, v52, 2), v309, v52, 3);
  sub_10001358C(v504, -2.618, xmmword_1000EC8E0);
  v53 = sub_100013568(v504);
  v443 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v481, v53.n128_f32[0]), v407, v53.n128_u64[0], 1), v332, v53, 2), v310, v53, 3);
  v381 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v481, v54.f32[0]), v407, *v54.f32, 1), v332, v54, 2), v310, v54, 3);
  v357 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v481, v55.f32[0]), v407, *v55.f32, 1), v332, v55, 2), v310, v55, 3);
  v482 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v481, v56.f32[0]), v407, *v56.f32, 1), v332, v56, 2), v310, v56, 3);
  sub_10001358C(v505, 0.087266, xmmword_1000EC920);
  v57 = sub_100013568(v505);
  v567 = 1;
  *(v4 + 736) = 0x402CCCCD40066666;
  *(v4 + 744) = 1056964608;
  *(v4 + 748) = 1;
  *(v4 + 749) = v572;
  *(v4 + 751) = v573;
  *(v4 + 752) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v443, v57.n128_f32[0]), v381, v57.n128_u64[0], 1), v357, v57, 2), v482, v57, 3);
  *(v4 + 768) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v443, v58.f32[0]), v381, *v58.f32, 1), v357, v58, 2), v482, v58, 3);
  *(v4 + 784) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v443, v59.f32[0]), v381, *v59.f32, 1), v357, v59, 2), v482, v59, 3);
  *(v4 + 800) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v443, v60.f32[0]), v381, *v60.f32, 1), v357, v60, 2), v482, v60, 3);
  *(v4 + 816) = xmmword_1000EC900;
  *(v4 + 832) = 0;
  v61 = v570;
  *(v4 + 835) = v571;
  *(v4 + 833) = v61;
  *(v4 + 836) = 1077936128;
  *(v4 + 840) = 13;
  *(v4 + 841) = v568;
  *(v4 + 843) = v569;
  *(v4 + 844) = 1065353216;
  *(v4 + 848) = 0;
  *(v4 + 856) = 0u;
  *(v4 + 872) = v567;
  *(v4 + 873) = 0;
  *(v4 + 875) = 0;
  *(v4 + 880) = 0u;
  *(v4 + 896) = sub_1000815F8;
  *(v4 + 904) = 0;
  *(v4 + 912) = 0x3F80000000000000;
  *(v4 + 928) = xmmword_1000EF5C0;
  *(v4 + 944) = 1;
  v62 = vmulq_f32(xmmword_10013DCA0, 0);
  v444 = vdupq_n_s32(0xBEEB851E);
  v382 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v333 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v62), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v311 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v62, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v282 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, v444), vdupq_n_s32(0x402851EBu), *algn_10013DCB0), vdupq_n_s32(0x3DCCCCCCu), xmmword_10013DCC0));
  sub_10001358C(v506, -0.71558, xmmword_1000EC910);
  v63 = sub_100013568(v506);
  v408 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v382, v63.n128_f32[0]), v333, v63.n128_u64[0], 1), v311, v63, 2), v282, v63, 3);
  v358 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v382, v64.f32[0]), v333, *v64.f32, 1), v311, v64, 2), v282, v64, 3);
  v295 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v382, v65.f32[0]), v333, *v65.f32, 1), v311, v65, 2), v282, v65, 3);
  v283 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v382, v66.f32[0]), v333, *v66.f32, 1), v311, v66, 2), v282, v66, 3);
  sub_10001358C(v507, -0.7854, xmmword_1000EC8E0);
  v67 = sub_100013568(v507);
  v334 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v408, v68.f32[0]), v358, *v68.f32, 1), v295, v68, 2), v283, v68, 3);
  v312 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v408, v69.f32[0]), v358, *v69.f32, 1), v295, v69, 2), v283, v69, 3);
  v383 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v408, v67.n128_f32[0]), v358, v67.n128_u64[0], 1), v295, v67, 2), v283, v67, 3);
  v409 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v408, v70.f32[0]), v358, *v70.f32, 1), v295, v70, 2), v283, v70, 3);
  sub_10001358C(v508, -1.5708, xmmword_1000EC920);
  v71 = sub_100013568(v508);
  v574 = 1;
  *(v4 + 960) = 0x3F56872B3F8147AELL;
  *(v4 + 968) = 1045220557;
  *(v4 + 972) = 1;
  *(v4 + 973) = v579;
  *(v4 + 975) = v580;
  *(v4 + 976) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v383, v71.n128_f32[0]), v334, v71.n128_u64[0], 1), v312, v71, 2), v409, v71, 3);
  *(v4 + 992) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v383, v72.f32[0]), v334, *v72.f32, 1), v312, v72, 2), v409, v72, 3);
  *(v4 + 1008) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v383, v73.f32[0]), v334, *v73.f32, 1), v312, v73, 2), v409, v73, 3);
  *(v4 + 1024) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v383, v74.f32[0]), v334, *v74.f32, 1), v312, v74, 2), v409, v74, 3);
  *(v4 + 1040) = xmmword_1000EF7B0;
  *(v4 + 1056) = 0;
  v75 = v577;
  *(v4 + 1059) = v578;
  *(v4 + 1057) = v75;
  *(v4 + 1060) = 1069547520;
  *(v4 + 1064) = 9;
  *(v4 + 1065) = v575;
  *(v4 + 1067) = v576;
  *(v4 + 1068) = 1065353216;
  *(v4 + 1072) = 0;
  *(v4 + 1080) = 0u;
  *(v4 + 1096) = v574;
  *(v4 + 1097) = 0;
  *(v4 + 1099) = 0;
  *(v4 + 1104) = 0u;
  *(v4 + 1120) = sub_10003E598;
  *(v4 + 1128) = 0;
  *(v4 + 1136) = 0x3F80000000000000;
  *(v4 + 1152) = xmmword_1000EF5C0;
  *(v4 + 1168) = 9;
  v76 = vmulq_f32(xmmword_10013DCA0, 0);
  v410 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v359 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v76), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v313 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v76, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v284 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBFCCCCCC)), vdupq_n_s32(0x3FCE147Bu), *algn_10013DCB0), vdupq_n_s32(0xBFC7AE14), xmmword_10013DCC0));
  sub_10001358C(v509, 2.0071, xmmword_1000EC910);
  v77 = sub_100013568(v509);
  v384 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v410, v77.n128_f32[0]), v359, v77.n128_u64[0], 1), v313, v77, 2), v284, v77, 3);
  v335 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v410, v78.f32[0]), v359, *v78.f32, 1), v313, v78, 2), v284, v78, 3);
  v296 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v410, v79.f32[0]), v359, *v79.f32, 1), v313, v79, 2), v284, v79, 3);
  v285 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v410, v80.f32[0]), v359, *v80.f32, 1), v313, v80, 2), v284, v80, 3);
  sub_10001358C(v510, -2.3911, xmmword_1000EC8E0);
  v81 = sub_100013568(v510);
  v82 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v384, v81.n128_f32[0]), v335, v81.n128_u64[0], 1), v296, v81, 2), v285, v81, 3);
  v360 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v384, v83.f32[0]), v335, *v83.f32, 1), v296, v83, 2), v285, v83, 3);
  v314 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v384, v84.f32[0]), v335, *v84.f32, 1), v296, v84, 2), v285, v84, 3);
  v385 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v384, v85.f32[0]), v335, *v85.f32, 1), v296, v85, 2), v285, v85, 3);
  v411 = v82;
  sub_10001358C(v511, -3.0194, xmmword_1000EC920);
  v86 = sub_100013568(v511);
  v581 = 1;
  *(v4 + 1184) = 0x404CCCCD40066666;
  *(v4 + 1192) = 1052602532;
  *(v4 + 1196) = 1;
  *(v4 + 1197) = v586;
  *(v4 + 1199) = v587;
  *(v4 + 1200) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v411, v86.n128_f32[0]), v360, v86.n128_u64[0], 1), v314, v86, 2), v385, v86, 3);
  *(v4 + 1216) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v411, v87.f32[0]), v360, *v87.f32, 1), v314, v87, 2), v385, v87, 3);
  *(v4 + 1232) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v411, v88.f32[0]), v360, *v88.f32, 1), v314, v88, 2), v385, v88, 3);
  *(v4 + 1248) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v411, v89.f32[0]), v360, *v89.f32, 1), v314, v89, 2), v385, v89, 3);
  *(v4 + 1264) = xmmword_1000EF7C0;
  *(v4 + 1280) = 0;
  v90 = v584;
  *(v4 + 1283) = v585;
  *(v4 + 1281) = v90;
  *(v4 + 1284) = 1057803469;
  *(v4 + 1288) = 5;
  *(v4 + 1289) = v582;
  *(v4 + 1291) = v583;
  *(v4 + 1292) = 1066192077;
  *(v4 + 1296) = 0;
  *(v4 + 1304) = 0u;
  *(v4 + 1320) = v581;
  *(v4 + 1321) = 1;
  *(v4 + 1323) = 1;
  *(v4 + 1328) = 0u;
  *(v4 + 1344) = sub_10003E640;
  *(v4 + 1352) = 0;
  *(v4 + 1360) = 0x3F80000000000000;
  *(v4 + 1376) = xmmword_1000EF7D0;
  *(v4 + 1392) = 9;
  v91 = vmulq_f32(xmmword_10013DCA0, 0);
  v412 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v361 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v91), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v315 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v91, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v286 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(v91, vdupq_n_s32(0x3E4CCCCCu), *algn_10013DCB0), vdupq_n_s32(0xC0247AE1), xmmword_10013DCC0));
  sub_10001358C(v512, 0.0, xmmword_1000EC910);
  v92 = sub_100013568(v512);
  v386 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v412, v92.n128_f32[0]), v361, v92.n128_u64[0], 1), v315, v92, 2), v286, v92, 3);
  v336 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v412, v93.f32[0]), v361, *v93.f32, 1), v315, v93, 2), v286, v93, 3);
  v297 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v412, v94.f32[0]), v361, *v94.f32, 1), v315, v94, 2), v286, v94, 3);
  v287 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v412, v95.f32[0]), v361, *v95.f32, 1), v315, v95, 2), v286, v95, 3);
  sub_10001358C(v513, 0.0, xmmword_1000EC8E0);
  v96 = sub_100013568(v513);
  v97 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v386, v96.n128_f32[0]), v336, v96.n128_u64[0], 1), v297, v96, 2), v287, v96, 3);
  v362 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v386, v98.f32[0]), v336, *v98.f32, 1), v297, v98, 2), v287, v98, 3);
  v316 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v386, v99.f32[0]), v336, *v99.f32, 1), v297, v99, 2), v287, v99, 3);
  v387 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v386, v100.f32[0]), v336, *v100.f32, 1), v297, v100, 2), v287, v100, 3);
  v413 = v97;
  sub_10001358C(v514, -0.87266, xmmword_1000EC920);
  v101 = sub_100013568(v514);
  v588 = 1;
  *(v4 + 1408) = 0x404000003FB33333;
  *(v4 + 1416) = 1051931443;
  *(v4 + 1420) = 0;
  *(v4 + 1421) = v593;
  *(v4 + 1423) = v594;
  *(v4 + 1424) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v413, v101.n128_f32[0]), v362, v101.n128_u64[0], 1), v316, v101, 2), v387, v101, 3);
  *(v4 + 1440) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v413, v102.f32[0]), v362, *v102.f32, 1), v316, v102, 2), v387, v102, 3);
  *(v4 + 1456) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v413, v103.f32[0]), v362, *v103.f32, 1), v316, v103, 2), v387, v103, 3);
  *(v4 + 1472) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v413, v104.f32[0]), v362, *v104.f32, 1), v316, v104, 2), v387, v104, 3);
  *(v4 + 1488) = xmmword_1000EF7E0;
  *(v4 + 1504) = 0;
  v105 = v591;
  *(v4 + 1507) = v592;
  *(v4 + 1505) = v105;
  *(v4 + 1508) = 1054280253;
  *(v4 + 1512) = 10;
  *(v4 + 1513) = v589;
  *(v4 + 1515) = v590;
  *(v4 + 1516) = 1065353216;
  *(v4 + 1520) = 0;
  *(v4 + 1528) = 0u;
  *(v4 + 1544) = v588;
  *(v4 + 1545) = 1;
  *(v4 + 1547) = 1;
  *(v4 + 1552) = 0u;
  *(v4 + 1568) = sub_10003E69C;
  *(v4 + 1576) = 0;
  *(v4 + 1584) = 0x3F80000000000000;
  *(v4 + 1600) = xmmword_1000EF5A0;
  *(v4 + 1616) = 3;
  v106 = vmulq_f32(xmmword_10013DCA0, 0);
  v388 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v337 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v106), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v317 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v106, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v288 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC086147B)), vdupq_n_s32(0x3FBEB852u), *algn_10013DCB0), vdupq_n_s32(0xC04147AE), xmmword_10013DCC0));
  sub_10001358C(v515, -0.95993, xmmword_1000EC910);
  v107 = sub_100013568(v515);
  v414 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v388, v107.n128_f32[0]), v337, v107.n128_u64[0], 1), v317, v107, 2), v288, v107, 3);
  v363 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v388, v108.f32[0]), v337, *v108.f32, 1), v317, v108, 2), v288, v108, 3);
  v298 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v388, v109.f32[0]), v337, *v109.f32, 1), v317, v109, 2), v288, v109, 3);
  v289 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v388, v110.f32[0]), v337, *v110.f32, 1), v317, v110, 2), v288, v110, 3);
  sub_10001358C(v516, -0.2618, xmmword_1000EC8E0);
  v111 = sub_100013568(v516);
  v338 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v414, v112.f32[0]), v363, *v112.f32, 1), v298, v112, 2), v289, v112, 3);
  v318 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v414, v113.f32[0]), v363, *v113.f32, 1), v298, v113, 2), v289, v113, 3);
  v389 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v414, v111.n128_f32[0]), v363, v111.n128_u64[0], 1), v298, v111, 2), v289, v111, 3);
  v415 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v414, v114.f32[0]), v363, *v114.f32, 1), v298, v114, 2), v289, v114, 3);
  sub_10001358C(v517, 0.83776, xmmword_1000EC920);
  v115 = sub_100013568(v517);
  v595 = 1;
  *(v4 + 1632) = 0x3FB333333FCCCCCDLL;
  *(v4 + 1640) = 1036831949;
  *(v4 + 1644) = 1;
  *(v4 + 1645) = v600;
  *(v4 + 1647) = v601;
  *(v4 + 1648) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v389, v115.n128_f32[0]), v338, v115.n128_u64[0], 1), v318, v115, 2), v415, v115, 3);
  *(v4 + 1664) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v389, v116.f32[0]), v338, *v116.f32, 1), v318, v116, 2), v415, v116, 3);
  *(v4 + 1680) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v389, v117.f32[0]), v338, *v117.f32, 1), v318, v117, 2), v415, v117, 3);
  *(v4 + 1696) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v389, v118.f32[0]), v338, *v118.f32, 1), v318, v118, 2), v415, v118, 3);
  *(v4 + 1712) = xmmword_1000EF7F0;
  *(v4 + 1728) = 0;
  v119 = v598;
  *(v4 + 1731) = v599;
  *(v4 + 1729) = v119;
  *(v4 + 1732) = 1067869798;
  *(v4 + 1736) = 13;
  *(v4 + 1737) = v596;
  *(v4 + 1739) = v597;
  *(v4 + 1740) = 1065353216;
  *(v4 + 1744) = 0;
  *(v4 + 1752) = 0u;
  *(v4 + 1768) = v595;
  *(v4 + 1769) = 1;
  *(v4 + 1771) = 0;
  *(v4 + 1776) = 0u;
  *(v4 + 1792) = sub_10003E6CC;
  *(v4 + 1800) = 0;
  *(v4 + 1808) = 0x3F295A9600000000;
  *(v4 + 1824) = xmmword_1000EF5C0;
  *(v4 + 1840) = 3;
  v390 = vdupq_n_s32(0x3E3851EBu);
  v120 = vmulq_f32(xmmword_10013DCA0, 0);
  v416 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v339 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v120), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v319 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v120, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v364 = vdupq_n_s32(0x3F2147AEu);
  v277 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, v390), v364, *algn_10013DCB0), v444, xmmword_10013DCC0));
  sub_10001358C(v518, 1.5708, xmmword_1000EC910);
  v121 = sub_100013568(v518);
  v290 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v416, v122.f32[0]), v339, *v122.f32, 1), v319, v122, 2), v277, v122, 3);
  v299 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v416, v121.n128_f32[0]), v339, v121.n128_u64[0], 1), v319, v121, 2), v277, v121, 3);
  v280 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v416, v123.f32[0]), v339, *v123.f32, 1), v319, v123, 2), v277, v123, 3);
  v278 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v416, v124.f32[0]), v339, *v124.f32, 1), v319, v124, 2), v277, v124, 3);
  sub_10001358C(v519, -0.89012, xmmword_1000EC8E0);
  v125 = sub_100013568(v519);
  v417 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v299, v125.n128_f32[0]), v290, v125.n128_u64[0], 1), v280, v125, 2), v278, v125, 3);
  v340 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v299, v126.f32[0]), v290, *v126.f32, 1), v280, v126, 2), v278, v126, 3);
  v320 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v299, v127.f32[0]), v290, *v127.f32, 1), v280, v127, 2), v278, v127, 3);
  v300 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v299, v128.f32[0]), v290, *v128.f32, 1), v280, v128, 2), v278, v128, 3);
  sub_10001358C(v520, 0.0, xmmword_1000EC920);
  v129 = sub_100013568(v520);
  v602 = 1;
  *(v4 + 1856) = 0x400CCCCD3E800000;
  *(v4 + 1864) = 1055622431;
  *(v4 + 1868) = 1;
  *(v4 + 1869) = v607;
  *(v4 + 1871) = v608;
  *(v4 + 1872) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v417, v129.n128_f32[0]), v340, v129.n128_u64[0], 1), v320, v129, 2), v300, v129, 3);
  *(v4 + 1888) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v417, v130.f32[0]), v340, *v130.f32, 1), v320, v130, 2), v300, v130, 3);
  *(v4 + 1904) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v417, v131.f32[0]), v340, *v131.f32, 1), v320, v131, 2), v300, v131, 3);
  *(v4 + 1920) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v417, v132.f32[0]), v340, *v132.f32, 1), v320, v132, 2), v300, v132, 3);
  *(v4 + 1936) = xmmword_1000EC900;
  *(v4 + 1952) = 0;
  v133 = v605;
  *(v4 + 1955) = v606;
  *(v4 + 1953) = v133;
  *(v4 + 1956) = 1082130432;
  *(v4 + 1960) = 9;
  *(v4 + 1961) = v603;
  *(v4 + 1963) = v604;
  *(v4 + 1964) = 1065353216;
  *(v4 + 1968) = 0;
  *(v4 + 1976) = 0u;
  *(v4 + 1992) = v602;
  *(v4 + 1993) = 1;
  *(v4 + 1995) = 0;
  *(v4 + 2000) = 0u;
  *(v4 + 2016) = sub_10003E794;
  *(v4 + 2024) = 0;
  *(v4 + 2032) = 0x3E0F5C2900000000;
  *(v4 + 2048) = xmmword_1000EF5D0;
  *(v4 + 2064) = 3;
  v134 = *algn_10013DCB0;
  v135 = xmmword_10013DCC0;
  v136 = xmmword_10013DCD0;
  v137 = vmulq_f32(xmmword_10013DCA0, 0);
  v138 = vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3D75C28Fu));
  v301 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v321 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v137), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v341 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v137, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v139 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBF51EB85)), vdupq_n_s32(0xC01D70A4), *algn_10013DCB0), vdupq_n_s32(0xBF65E354), xmmword_10013DCC0));
  v609 = 1;
  *(v4 + 2080) = 0x3FF3333340200000;
  *(v4 + 2088) = 0;
  *(v4 + 2092) = 0;
  *(v4 + 2095) = v615;
  *(v4 + 2093) = v614;
  *(v4 + 2096) = v301;
  *(v4 + 2112) = v321;
  *(v4 + 2128) = v341;
  *(v4 + 2144) = v139;
  *(v4 + 2160) = xmmword_1000EF800;
  *(v4 + 2176) = 0;
  v140 = v612;
  *(v4 + 2179) = v613;
  *(v4 + 2177) = v140;
  *(v4 + 2180) = 1075838976;
  *(v4 + 2184) = 9;
  v141 = v610;
  *(v4 + 2187) = v611;
  *(v4 + 2185) = v141;
  *(v4 + 2188) = 1065353216;
  *(v4 + 2208) = 0;
  *(v4 + 2200) = 0;
  *(v4 + 2192) = 0;
  *(v4 + 2216) = v609;
  *(v4 + 2217) = 1;
  *(v4 + 2219) = 0;
  *(v4 + 2224) = 0u;
  *(v4 + 2240) = sub_10003E7C4;
  *(v4 + 2248) = 0;
  *(v4 + 2256) = 0x3ECCCCCD3F051EB8;
  *(v4 + 2272) = xmmword_1000EF5A0;
  v275 = vaddq_f32(v136, vmlaq_f32(vmlaq_f32(v138, vdupq_n_s32(0x3EF0A3D7u), v134), vdupq_n_s32(0xBD75C28F), v135));
  *(v4 + 2288) = 4;
  sub_10001358C(v521, 1.5708, xmmword_1000EC910);
  v142 = sub_100013568(v521);
  v281 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v301, v143.f32[0]), v321, *v143.f32, 1), v341, v143, 2), v275, v143, 3);
  v291 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v301, v142.n128_f32[0]), v321, v142.n128_u64[0], 1), v341, v142, 2), v275, v142, 3);
  v279 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v301, v144.f32[0]), v321, *v144.f32, 1), v341, v144, 2), v275, v144, 3);
  v276 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v301, v145.f32[0]), v321, *v145.f32, 1), v341, v145, 2), v275, v145, 3);
  sub_10001358C(v522, -0.89012, xmmword_1000EC8E0);
  v146 = sub_100013568(v522);
  v322 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v291, v147.f32[0]), v281, *v147.f32, 1), v279, v147, 2), v276, v147, 3);
  v342 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v291, v146.n128_f32[0]), v281, v146.n128_u64[0], 1), v279, v146, 2), v276, v146, 3);
  v302 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v291, v148.f32[0]), v281, *v148.f32, 1), v279, v148, 2), v276, v148, 3);
  v292 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v291, v149.f32[0]), v281, *v149.f32, 1), v279, v149, 2), v276, v149, 3);
  sub_10001358C(v523, 0.0, xmmword_1000EC920);
  v150 = sub_100013568(v523);
  v616 = 1;
  *(v4 + 2304) = 0x4014FDF43F7020C5;
  *(v4 + 2312) = 1050253722;
  *(v4 + 2316) = 1;
  *(v4 + 2317) = v621;
  *(v4 + 2319) = v622;
  *(v4 + 2320) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v342, v150.n128_f32[0]), v322, v150.n128_u64[0], 1), v302, v150, 2), v292, v150, 3);
  *(v4 + 2336) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v342, v151.f32[0]), v322, *v151.f32, 1), v302, v151, 2), v292, v151, 3);
  *(v4 + 2352) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v342, v152.f32[0]), v322, *v152.f32, 1), v302, v152, 2), v292, v152, 3);
  *(v4 + 2368) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v342, v153.f32[0]), v322, *v153.f32, 1), v302, v153, 2), v292, v153, 3);
  *(v4 + 2384) = xmmword_1000EF810;
  *(v4 + 2400) = 0;
  v154 = v619;
  *(v4 + 2403) = v620;
  *(v4 + 2401) = v154;
  *(v4 + 2404) = 1056964608;
  *(v4 + 2408) = 9;
  *(v4 + 2409) = v617;
  *(v4 + 2411) = v618;
  *(v4 + 2412) = 1065353216;
  *(v4 + 2416) = 0;
  *(v4 + 2424) = 0u;
  *(v4 + 2440) = v616;
  *(v4 + 2441) = 1;
  *(v4 + 2443) = 0;
  *(v4 + 2448) = 0u;
  *(v4 + 2464) = sub_10003E7F4;
  *(v4 + 2472) = 0;
  *(v4 + 2480) = 0x3EAE147B00000000;
  *(v4 + 2496) = xmmword_1000EF5C0;
  *(v4 + 2512) = 4;
  v155 = vmulq_f32(xmmword_10013DCA0, 0);
  v156 = vmulq_f32(xmmword_10013DCA0, v390);
  v391 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v343 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v155), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v303 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v155, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v293 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(v156, v364, *algn_10013DCB0), v444, xmmword_10013DCC0));
  sub_10001358C(v524, 1.5708, xmmword_1000EC910);
  v157 = sub_100013568(v524);
  v445 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v391, v157.n128_f32[0]), v343, v157.n128_u64[0], 1), v303, v157, 2), v293, v157, 3);
  v365 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v391, v158.f32[0]), v343, *v158.f32, 1), v303, v158, 2), v293, v158, 3);
  v323 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v391, v159.f32[0]), v343, *v159.f32, 1), v303, v159, 2), v293, v159, 3);
  v294 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v391, v160.f32[0]), v343, *v160.f32, 1), v303, v160, 2), v293, v160, 3);
  sub_10001358C(v525, -0.89012, xmmword_1000EC8E0);
  v161 = sub_100013568(v525);
  v392 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v445, v161.n128_f32[0]), v365, v161.n128_u64[0], 1), v323, v161, 2), v294, v161, 3);
  v344 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v445, v162.f32[0]), v365, *v162.f32, 1), v323, v162, 2), v294, v162, 3);
  v304 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v445, v163.f32[0]), v365, *v163.f32, 1), v323, v163, 2), v294, v163, 3);
  v446 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v445, v164.f32[0]), v365, *v164.f32, 1), v323, v164, 2), v294, v164, 3);
  sub_10001358C(v526, 0.0, xmmword_1000EC920);
  v165 = sub_100013568(v526);
  v623 = 1;
  *(v4 + 2528) = 0x3F95C28F3F3020C5;
  *(v4 + 2536) = 1053609165;
  *(v4 + 2540) = 1;
  *(v4 + 2541) = v628;
  *(v4 + 2543) = v629;
  *(v4 + 2544) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v392, v165.n128_f32[0]), v344, v165.n128_u64[0], 1), v304, v165, 2), v446, v165, 3);
  *(v4 + 2560) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v392, v166.f32[0]), v344, *v166.f32, 1), v304, v166, 2), v446, v166, 3);
  *(v4 + 2576) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v392, v167.f32[0]), v344, *v167.f32, 1), v304, v167, 2), v446, v167, 3);
  *(v4 + 2592) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v392, v168.f32[0]), v344, *v168.f32, 1), v304, v168, 2), v446, v168, 3);
  *(v4 + 2608) = xmmword_1000EC900;
  *(v4 + 2624) = 0;
  v169 = v626;
  *(v4 + 2627) = v627;
  *(v4 + 2625) = v169;
  *(v4 + 2628) = 1071225242;
  *(v4 + 2632) = 9;
  *(v4 + 2633) = v624;
  *(v4 + 2635) = v625;
  *(v4 + 2636) = 1065353216;
  *(v4 + 2640) = 0;
  *(v4 + 2648) = 0u;
  *(v4 + 2664) = v623;
  *(v4 + 2665) = 1;
  *(v4 + 2667) = 0;
  *(v4 + 2672) = 0u;
  *(v4 + 2688) = sub_10003E890;
  *(v4 + 2696) = 0;
  *(v4 + 2704) = 0x3EF3F3F400000000;
  *(v4 + 2720) = xmmword_1000EF630;
  *(v4 + 2736) = 9;
  v170 = vmulq_f32(xmmword_10013DCA0, 0);
  v447 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v366 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v170), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v345 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v170, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v305 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC03C28F5)), vdupq_n_s32(0x4071EB85u), *algn_10013DCB0), vdupq_n_s32(0x405E147Bu), xmmword_10013DCC0));
  sub_10001358C(v527, -1.2217, xmmword_1000EC910);
  v171 = sub_100013568(v527);
  v464 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v447, v171.n128_f32[0]), v366, v171.n128_u64[0], 1), v345, v171, 2), v305, v171, 3);
  v393 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v447, v172.f32[0]), v366, *v172.f32, 1), v345, v172, 2), v305, v172, 3);
  v324 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v447, v173.f32[0]), v366, *v173.f32, 1), v345, v173, 2), v305, v173, 3);
  v306 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v447, v174.f32[0]), v366, *v174.f32, 1), v345, v174, 2), v305, v174, 3);
  sub_10001358C(v528, -0.68068, xmmword_1000EC8E0);
  v175 = sub_100013568(v528);
  v367 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v464, v176.f32[0]), v393, *v176.f32, 1), v324, v176, 2), v306, v176, 3);
  v346 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v464, v177.f32[0]), v393, *v177.f32, 1), v324, v177, 2), v306, v177, 3);
  v448 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v464, v175.n128_f32[0]), v393, v175.n128_u64[0], 1), v324, v175, 2), v306, v175, 3);
  v465 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v464, v178.f32[0]), v393, *v178.f32, 1), v324, v178, 2), v306, v178, 3);
  sub_10001358C(v529, -0.27925, xmmword_1000EC920);
  v179 = sub_100013568(v529);
  v630 = 1;
  *(v4 + 2752) = 0x4079999A3F7851ECLL;
  *(v4 + 2760) = 1054951342;
  *(v4 + 2764) = 1;
  *(v4 + 2765) = v635;
  *(v4 + 2767) = v636;
  *(v4 + 2768) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v448, v179.n128_f32[0]), v367, v179.n128_u64[0], 1), v346, v179, 2), v465, v179, 3);
  *(v4 + 2784) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v448, v180.f32[0]), v367, *v180.f32, 1), v346, v180, 2), v465, v180, 3);
  *(v4 + 2800) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v448, v181.f32[0]), v367, *v181.f32, 1), v346, v181, 2), v465, v181, 3);
  *(v4 + 2816) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v448, v182.f32[0]), v367, *v182.f32, 1), v346, v182, 2), v465, v182, 3);
  *(v4 + 2832) = xmmword_1000EF820;
  *(v4 + 2848) = 0;
  v183 = v633;
  *(v4 + 2851) = v634;
  *(v4 + 2849) = v183;
  *(v4 + 2852) = 1065353216;
  *(v4 + 2856) = 8;
  *(v4 + 2857) = v631;
  *(v4 + 2859) = v632;
  *(v4 + 2860) = 1059481190;
  *(v4 + 2864) = 0;
  *(v4 + 2872) = 0u;
  *(v4 + 2888) = v630;
  *(v4 + 2889) = 3;
  *(v4 + 2891) = 1;
  *(v4 + 2896) = 0u;
  *(v4 + 2912) = sub_100081608;
  *(v4 + 2920) = 0;
  *(v4 + 2928) = 0x3F80000000000000;
  *(v4 + 2944) = xmmword_1000EF5A0;
  *(v4 + 2960) = 5;
  v184 = vmulq_f32(xmmword_10013DCA0, 0);
  v449 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v368 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v184), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v347 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v184, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v307 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3FAB851Eu)), vdupq_n_s32(0xC0351EB8), *algn_10013DCB0), vdupq_n_s32(0x404AE147u), xmmword_10013DCC0));
  sub_10001358C(v530, 0.0, xmmword_1000EC910);
  v185 = sub_100013568(v530);
  v466 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v449, v185.n128_f32[0]), v368, v185.n128_u64[0], 1), v347, v185, 2), v307, v185, 3);
  v394 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v449, v186.f32[0]), v368, *v186.f32, 1), v347, v186, 2), v307, v186, 3);
  v325 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v449, v187.f32[0]), v368, *v187.f32, 1), v347, v187, 2), v307, v187, 3);
  v308 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v449, v188.f32[0]), v368, *v188.f32, 1), v347, v188, 2), v307, v188, 3);
  sub_10001358C(v531, 0.54105, xmmword_1000EC8E0);
  v189 = sub_100013568(v531);
  v369 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v466, v190.f32[0]), v394, *v190.f32, 1), v325, v190, 2), v308, v190, 3);
  v348 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v466, v191.f32[0]), v394, *v191.f32, 1), v325, v191, 2), v308, v191, 3);
  v450 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v466, v189.n128_f32[0]), v394, v189.n128_u64[0], 1), v325, v189, 2), v308, v189, 3);
  v467 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v466, v192.f32[0]), v394, *v192.f32, 1), v325, v192, 2), v308, v192, 3);
  sub_10001358C(v532, 0.0, xmmword_1000EC920);
  v193 = sub_100013568(v532);
  v637 = 1;
  *(v4 + 2976) = 0x4059999A3FD9999ALL;
  *(v4 + 2984) = 1053609165;
  *(v4 + 2988) = 1;
  *(v4 + 2989) = v642;
  *(v4 + 2991) = v643;
  *(v4 + 2992) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v450, v193.n128_f32[0]), v369, v193.n128_u64[0], 1), v348, v193, 2), v467, v193, 3);
  *(v4 + 3008) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v450, v194.f32[0]), v369, *v194.f32, 1), v348, v194, 2), v467, v194, 3);
  *(v4 + 3024) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v450, v195.f32[0]), v369, *v195.f32, 1), v348, v195, 2), v467, v195, 3);
  *(v4 + 3040) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v450, v196.f32[0]), v369, *v196.f32, 1), v348, v196, 2), v467, v196, 3);
  *(v4 + 3056) = xmmword_1000EF830;
  *(v4 + 3072) = 0;
  v197 = v640;
  *(v4 + 3075) = v641;
  *(v4 + 3073) = v197;
  *(v4 + 3076) = 1085905306;
  *(v4 + 3080) = 9;
  *(v4 + 3081) = v638;
  *(v4 + 3083) = v639;
  *(v4 + 3084) = 1065353216;
  *(v4 + 3088) = 0;
  *(v4 + 3096) = 0u;
  *(v4 + 3112) = v637;
  *(v4 + 3113) = 259;
  *(v4 + 3115) = 1;
  *(v4 + 3120) = 0u;
  *(v4 + 3136) = sub_1000815F8;
  *(v4 + 3144) = 0;
  *(v4 + 3152) = 0x3F80000000000000;
  *(v4 + 3168) = xmmword_1000EF5C0;
  *(v4 + 3184) = 5;
  v198 = vmulq_f32(xmmword_10013DCA0, 0);
  v451 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v395 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v198), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v370 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v198, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v326 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBFC147AE)), v423, *algn_10013DCB0), vdupq_n_s32(0x404147AEu), xmmword_10013DCC0));
  sub_10001358C(v533, -0.69813, xmmword_1000EC910);
  v199 = sub_100013568(v533);
  v468 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v451, v199.n128_f32[0]), v395, v199.n128_u64[0], 1), v370, v199, 2), v326, v199, 3);
  v424 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v451, v200.f32[0]), v395, *v200.f32, 1), v370, v200, 2), v326, v200, 3);
  v349 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v451, v201.f32[0]), v395, *v201.f32, 1), v370, v201, 2), v326, v201, 3);
  v327 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v451, v202.f32[0]), v395, *v202.f32, 1), v370, v202, 2), v326, v202, 3);
  sub_10001358C(v534, 0.0, xmmword_1000EC8E0);
  v203 = sub_100013568(v534);
  v396 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v468, v204.f32[0]), v424, *v204.f32, 1), v349, v204, 2), v327, v204, 3);
  v371 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v468, v205.f32[0]), v424, *v205.f32, 1), v349, v205, 2), v327, v205, 3);
  v452 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v468, v203.n128_f32[0]), v424, v203.n128_u64[0], 1), v349, v203, 2), v327, v203, 3);
  v469 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v468, v206.f32[0]), v424, *v206.f32, 1), v349, v206, 2), v327, v206, 3);
  sub_10001358C(v535, 0.0, xmmword_1000EC920);
  v207 = sub_100013568(v535);
  v644 = 1;
  *(v4 + 3200) = 0x408D1EB83FF851ECLL;
  *(v4 + 3208) = 1048576000;
  *(v4 + 3212) = 0;
  *(v4 + 3213) = v649;
  *(v4 + 3215) = v650;
  *(v4 + 3216) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v452, v207.n128_f32[0]), v396, v207.n128_u64[0], 1), v371, v207, 2), v469, v207, 3);
  *(v4 + 3232) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v452, v208.f32[0]), v396, *v208.f32, 1), v371, v208, 2), v469, v208, 3);
  *(v4 + 3248) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v452, v209.f32[0]), v396, *v209.f32, 1), v371, v209, 2), v469, v209, 3);
  *(v4 + 3264) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v452, v210.f32[0]), v396, *v210.f32, 1), v371, v210, 2), v469, v210, 3);
  *(v4 + 3280) = xmmword_1000EF840;
  *(v4 + 3296) = 0;
  v211 = v647;
  *(v4 + 3299) = v648;
  *(v4 + 3297) = v211;
  *(v4 + 3300) = 1057803469;
  *(v4 + 3304) = 9;
  *(v4 + 3305) = v645;
  *(v4 + 3307) = v646;
  *(v4 + 3308) = 1065353216;
  *(v4 + 3312) = 0;
  *(v4 + 3320) = 0u;
  *(v4 + 3336) = v644;
  *(v4 + 3337) = 3;
  *(v4 + 3339) = 1;
  *(v4 + 3344) = 0u;
  *(v4 + 3360) = sub_100081600;
  *(v4 + 3368) = 0;
  *(v4 + 3376) = 0x3F80000000000000;
  *(v4 + 3392) = xmmword_1000EF5D0;
  *(v4 + 3408) = 5;
  v212 = vmulq_f32(xmmword_10013DCA0, 0);
  v453 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v418 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v212), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v397 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v212, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v350 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3EC7AE14u)), vdupq_n_s32(0xBF63D70A), *algn_10013DCB0), vdupq_n_s32(0x403F5C29u), xmmword_10013DCC0));
  sub_10001358C(v536, 0.0, xmmword_1000EC910);
  v213 = sub_100013568(v536);
  v470 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v453, v213.n128_f32[0]), v418, v213.n128_u64[0], 1), v397, v213, 2), v350, v213, 3);
  v425 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v453, v214.f32[0]), v418, *v214.f32, 1), v397, v214, 2), v350, v214, 3);
  v372 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v453, v215.f32[0]), v418, *v215.f32, 1), v397, v215, 2), v350, v215, 3);
  v351 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v453, v216.f32[0]), v418, *v216.f32, 1), v397, v216, 2), v350, v216, 3);
  sub_10001358C(v537, 0.54105, xmmword_1000EC8E0);
  v217 = sub_100013568(v537);
  v419 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v470, v218.f32[0]), v425, *v218.f32, 1), v372, v218, 2), v351, v218, 3);
  v398 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v470, v219.f32[0]), v425, *v219.f32, 1), v372, v219, 2), v351, v219, 3);
  v454 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v470, v217.n128_f32[0]), v425, v217.n128_u64[0], 1), v372, v217, 2), v351, v217, 3);
  v471 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v470, v220.f32[0]), v425, *v220.f32, 1), v372, v220, 2), v351, v220, 3);
  sub_10001358C(v538, -1.5708, xmmword_1000EC920);
  v221 = sub_100013568(v538);
  v651 = 1;
  *(v4 + 3424) = 0x406CCCCD3F59999ALL;
  *(v4 + 3432) = 1056964608;
  *(v4 + 3436) = 0;
  *(v4 + 3437) = v656;
  *(v4 + 3439) = v657;
  *(v4 + 3440) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v454, v221.n128_f32[0]), v419, v221.n128_u64[0], 1), v398, v221, 2), v471, v221, 3);
  *(v4 + 3456) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v454, v222.f32[0]), v419, *v222.f32, 1), v398, v222, 2), v471, v222, 3);
  *(v4 + 3472) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v454, v223.f32[0]), v419, *v223.f32, 1), v398, v223, 2), v471, v223, 3);
  *(v4 + 3488) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v454, v224.f32[0]), v419, *v224.f32, 1), v398, v224, 2), v471, v224, 3);
  *(v4 + 3504) = xmmword_1000EF850;
  *(v4 + 3520) = 0;
  v225 = v654;
  *(v4 + 3523) = v655;
  *(v4 + 3521) = v225;
  *(v4 + 3524) = 1055286886;
  *(v4 + 3528) = 9;
  *(v4 + 3529) = v652;
  *(v4 + 3531) = v653;
  *(v4 + 3532) = 1065353216;
  *(v4 + 3536) = 0;
  *(v4 + 3544) = 0u;
  *(v4 + 3560) = v651;
  *(v4 + 3561) = 3;
  *(v4 + 3563) = 1;
  *(v4 + 3568) = 0u;
  *(v4 + 3584) = sub_10003E958;
  *(v4 + 3592) = 0;
  *(v4 + 3600) = 0x3F80000000000000;
  *(v4 + 3616) = xmmword_1000EF5A0;
  *(v4 + 3632) = 6;
  v226 = vmulq_f32(xmmword_10013DCA0, 0);
  v455 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v420 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v226), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v373 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v226, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v487 = vdupq_n_s32(0xBF8E147B);
  v352 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBE6B851E)), vdupq_n_s32(0x3F0CCCCDu), *algn_10013DCB0), v487, xmmword_10013DCC0));
  sub_10001358C(v539, 1.5708, xmmword_1000EC910);
  v227 = sub_100013568(v539);
  v472 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v455, v227.n128_f32[0]), v420, v227.n128_u64[0], 1), v373, v227, 2), v352, v227, 3);
  v426 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v455, v228.f32[0]), v420, *v228.f32, 1), v373, v228, 2), v352, v228, 3);
  v399 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v455, v229.f32[0]), v420, *v229.f32, 1), v373, v229, 2), v352, v229, 3);
  v353 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v455, v230.f32[0]), v420, *v230.f32, 1), v373, v230, 2), v352, v230, 3);
  sub_10001358C(v540, -3.4034, xmmword_1000EC8E0);
  v231 = sub_100013568(v540);
  v421 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v472, v232.f32[0]), v426, *v232.f32, 1), v399, v232, 2), v353, v232, 3);
  v374 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v472, v233.f32[0]), v426, *v233.f32, 1), v399, v233, 2), v353, v233, 3);
  v456 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v472, v231.n128_f32[0]), v426, v231.n128_u64[0], 1), v399, v231, 2), v353, v231, 3);
  v473 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v472, v234.f32[0]), v426, *v234.f32, 1), v399, v234, 2), v353, v234, 3);
  sub_10001358C(v541, 1.5708, xmmword_1000EC920);
  v235 = sub_100013568(v541);
  v658 = 1;
  *(v4 + 3648) = 0x3F99999A3F400000;
  *(v4 + 3656) = 1056964608;
  *(v4 + 3660) = 1;
  *(v4 + 3661) = v663;
  *(v4 + 3663) = v664;
  *(v4 + 3664) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v456, v235.n128_f32[0]), v421, v235.n128_u64[0], 1), v374, v235, 2), v473, v235, 3);
  *(v4 + 3680) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v456, v236.f32[0]), v421, *v236.f32, 1), v374, v236, 2), v473, v236, 3);
  *(v4 + 3696) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v456, v237.f32[0]), v421, *v237.f32, 1), v374, v237, 2), v473, v237, 3);
  *(v4 + 3712) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v456, v238.f32[0]), v421, *v238.f32, 1), v374, v238, 2), v473, v238, 3);
  *(v4 + 3728) = xmmword_1000EF860;
  *(v4 + 3744) = 0;
  v239 = v661;
  *(v4 + 3747) = v662;
  *(v4 + 3745) = v239;
  *(v4 + 3748) = 1052938076;
  *(v4 + 3752) = 9;
  *(v4 + 3753) = v659;
  *(v4 + 3755) = v660;
  *(v4 + 3756) = 1065353216;
  *(v4 + 3760) = 0;
  *(v4 + 3768) = 0u;
  *(v4 + 3784) = v658;
  *(v4 + 3785) = 2;
  *(v4 + 3787) = 1;
  *(v4 + 3792) = 0u;
  *(v4 + 3808) = sub_10003E988;
  *(v4 + 3816) = 0;
  *(v4 + 3824) = 0x3F80000000000000;
  *(v4 + 3840) = xmmword_1000EF5C0;
  *(v4 + 3856) = 6;
  v240 = vmulq_f32(xmmword_10013DCA0, 0);
  v427 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v422 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v240), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v400 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v240, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v488 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBF599999)), vdupq_n_s32(0xBF451EB8), *algn_10013DCB0), v487, xmmword_10013DCC0));
  sub_10001358C(v542, 1.5708, xmmword_1000EC910);
  v241 = sub_100013568(v542);
  v474 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v427, v242.f32[0]), v422, *v242.f32, 1), v400, v242, 2), v488, v242, 3);
  v483 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v427, v241.n128_f32[0]), v422, v241.n128_u64[0], 1), v400, v241, 2), v488, v241, 3);
  v457 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v427, v243.f32[0]), v422, *v243.f32, 1), v400, v243, 2), v488, v243, 3);
  v428 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v427, v244.f32[0]), v422, *v244.f32, 1), v400, v244, 2), v488, v244, 3);
  sub_10001358C(v543, -2.5307, xmmword_1000EC8E0);
  v245 = sub_100013568(v543);
  v492 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v483, v246.f32[0]), v474, *v246.f32, 1), v457, v246, 2), v428, v246, 3);
  v493 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v483, v245.n128_f32[0]), v474, v245.n128_u64[0], 1), v457, v245, 2), v428, v245, 3);
  v489 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v483, v247.f32[0]), v474, *v247.f32, 1), v457, v247, 2), v428, v247, 3);
  v484 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v483, v248.f32[0]), v474, *v248.f32, 1), v457, v248, 2), v428, v248, 3);
  sub_10001358C(v544, 1.5708, xmmword_1000EC920);
  v249 = sub_100013568(v544);
  v665 = 1;
  *(v4 + 3872) = 0x3F99999A3F8CCCCDLL;
  *(v4 + 3880) = 1056964608;
  *(v4 + 3884) = 1;
  *(v4 + 3885) = v670;
  *(v4 + 3887) = v671;
  *(v4 + 3888) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v493, v249.n128_f32[0]), v492, v249.n128_u64[0], 1), v489, v249, 2), v484, v249, 3);
  *(v4 + 3904) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v493, v250.f32[0]), v492, *v250.f32, 1), v489, v250, 2), v484, v250, 3);
  *(v4 + 3920) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v493, v251.f32[0]), v492, *v251.f32, 1), v489, v251, 2), v484, v251, 3);
  *(v4 + 3936) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v493, v252.f32[0]), v492, *v252.f32, 1), v489, v252, 2), v484, v252, 3);
  *(v4 + 3952) = xmmword_1000EF870;
  *(v4 + 3968) = 0;
  v253 = v668;
  *(v4 + 3971) = v669;
  *(v4 + 3969) = v253;
  *(v4 + 3972) = 1058642330;
  *(v4 + 3976) = 9;
  *(v4 + 3977) = v666;
  *(v4 + 3979) = v667;
  *(v4 + 3980) = 1065353216;
  *(v4 + 3984) = 0;
  *(v4 + 3992) = 0u;
  *(v4 + 4008) = v665;
  *(v4 + 4009) = 2;
  *(v4 + 4011) = 1;
  *(v4 + 4016) = 0u;
  *(v4 + 4032) = sub_10003EA40;
  *(v4 + 4040) = 0;
  *(v4 + 4048) = 0x3F80000000000000;
  v254 = sub_1000A0774(v4);
  swift_setDeallocating();
  sub_1000125FC(&qword_100131018, &qword_1000F1D70);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1000125FC(&qword_100131020, &qword_1000F1D78);
  v255 = swift_allocObject();
  v255[1] = xmmword_1000ED250;
  v255[2] = xmmword_1000EF880;
  v255[3] = xmmword_1000EF890;
  v255[4] = xmmword_1000EF8A0;
  v256 = swift_allocObject();
  v256[1] = xmmword_1000EC880;
  v256[2] = xmmword_1000EF8B0;
  v256[3] = xmmword_1000EF8C0;
  v257 = swift_allocObject();
  v257[1] = xmmword_1000EC880;
  v257[2] = xmmword_1000EF8D0;
  v257[3] = xmmword_1000EF8E0;
  v258 = qword_10013AC20;
  v259 = unk_10013AC28;
  v260 = qword_10013AC30;

  v261 = qword_10013AC50;
  v262 = sub_1000A0A98(_swiftEmptyArrayStorage);
  v672.i64[0] = v258;
  v672.i64[1] = v259;
  v673.i64[0] = v260;
  v673.i64[1] = v262;
  v674.i64[0] = _swiftEmptyArrayStorage;
  v674.i64[1] = _swiftEmptyArrayStorage;
  v675 = v261;
  v544[3] = v672;
  v544[4] = v673;
  v544[5] = v674;
  v545 = v261;
  v263 = sub_1000A0A98(&off_10011F090);
  sub_1000125FC(&qword_100131048, &qword_1000F1E40);
  swift_arrayDestroy();
  v264 = sub_1000A092C(_swiftEmptyArrayStorage);
  sub_1000BA704(v264, v263, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v676);

  sub_100081544(&v672);
  swift_bridgeObjectRetain_n();
  v266 = sub_1000C1928(v265, v254);

  sub_1000C53DC(v266, v680);
  v268 = sub_1000C199C(v267, v254);

  sub_1000C53DC(v268, v678);
  xmmword_10013AC60 = v438;
  *algn_10013AC70 = v437;
  qword_10013AC80 = v436;
  dword_10013AC88 = v0;
  xmmword_10013AC90 = v435;
  unk_10013ACA0 = v434;
  qword_10013ACB0 = v1;
  dword_10013ACB8 = v2;
  xmmword_10013ACC0 = v433;
  qword_10013ACD0 = v3;
  xmmword_10013ACE0 = v432;
  qword_10013ACF0 = v431;
  unk_10013ACF8 = v430;
  dword_10013AD00 = v429;
  qword_10013AD08 = 0;
  unk_10013AD10 = v254;
  qword_10013AD38 = v681;
  unk_10013AD28 = v680[1];
  unk_10013AD18 = v680[0];
  xmmword_10013AD40 = v678[0];
  unk_10013AD50 = v678[1];
  qword_10013AD60 = v679;
  unk_10013AD68 = variable initialization expression of ToriScene.tapTarget;
  qword_10013AD70 = 0;
  xmmword_10013AD80 = xmmword_1000EF8F0;
  unk_10013AD90 = xmmword_1000EF900;
  qword_10013ADA0 = v255;
  word_10013ADAC = 1;
  dword_10013ADA8 = 0;
  __asm { FMOV            V0.4S, #1.0 }

  xmmword_10013ADB0 = _Q0;
  qword_10013ADC0 = v256;
  xmmword_10013ADC8 = xmmword_1000EF910;
  xmmword_10013ADD8 = xmmword_1000EF920;
  qword_10013ADE8 = 1056635643;
  unk_10013ADF0 = v257;
  xmmword_10013ADF8 = xmmword_1000EF930;
  xmmword_10013AE08 = xmmword_1000EF940;
  qword_10013AE18 = 1062326738;
  result = 0.0000000231406324;
  qword_10013AE60 = v677;
  xmmword_10013AE40 = v676[1];
  unk_10013AE50 = v676[2];
  xmmword_10013AE20 = xmmword_1000EF950;
  unk_10013AE30 = v676[0];
  return result;
}

uint64_t sub_10003E3EC(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.5) * a2) + 0.5;
    *result = COERCE_UNSIGNED_INT(((*result + -0.92) * a2) + 0.92) | (COERCE_UNSIGNED_INT(((*(result + 4) + -4.2) * a2) + 4.2) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -5.0) * a2) + 5.0;
    *(result + 108) = ((*(result + 108) + -0.44) * a2) + 0.44;
  }

  else
  {
    __break(1u);
  }

  return result;
}

float sub_10003E4C0(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -0.89) * a2) + 0.89;
  *(a1 + 100) = result;
  return result;
}

uint64_t sub_10003E4F0(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.5) * a2) + 0.5;
    *result = COERCE_UNSIGNED_INT(((*result + -1.1) * a2) + 1.1) | (COERCE_UNSIGNED_INT(((*(result + 4) + -1.2) * a2) + 1.2) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -2.5) * a2) + 2.5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10003E598(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.2) * a2) + 0.2;
    *result = COERCE_UNSIGNED_INT(((*result + -1.7) * a2) + 1.7) | (COERCE_UNSIGNED_INT(((*(result + 4) + -0.84) * a2) + 0.84) << 32);
    *(result + 8) = v2;
    *(result + 100) = *(result + 100) * a2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

float sub_10003E640(uint64_t a1, float a2)
{
  *(a1 + 100) = ((*(a1 + 100) + -0.6) * a2) + 0.6;
  result = ((*(a1 + 108) + -0.8) * a2) + 0.8;
  *(a1 + 108) = result;
  return result;
}

float sub_10003E69C(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -0.086) * a2) + 0.086;
  *(a1 + 100) = result;
  return result;
}

uint64_t sub_10003E6CC(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.045) * a2) + 0.045;
    *result = COERCE_UNSIGNED_INT(((*result + -1.6) * a2) + 1.6) | (COERCE_UNSIGNED_INT(((*(result + 4) + -1.4) * a2) + 1.4) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -0.3) * a2) + 0.3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

float sub_10003E794(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -2.2) * a2) + 2.2;
  *(a1 + 100) = result;
  return result;
}

float sub_10003E7C4(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -0.73) * a2) + 0.73;
  *(a1 + 100) = result;
  return result;
}

uint64_t sub_10003E7F4(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    *&v2 = ((*result + -0.55) * a2) + 0.55;
    *&v3 = ((*(result + 4) + -1.1) * a2) + 1.1;
    v4 = ((*(result + 8) + -0.47) * a2) + 0.47;
    *result = v2 | (v3 << 32);
    *(result + 8) = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10003E890(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.4) * a2) + 0.4;
    *result = COERCE_UNSIGNED_INT(((*result + -1.1) * a2) + 1.1) | (COERCE_UNSIGNED_INT(((*(result + 4) + -2.3) * a2) + 2.3) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -0.36) * a2) + 0.36;
  }

  else
  {
    __break(1u);
  }

  return result;
}

float sub_10003E958(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -0.14) * a2) + 0.14;
  *(a1 + 100) = result;
  return result;
}

uint64_t sub_10003E988(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.5) * a2) + 0.5;
    *result = COERCE_UNSIGNED_INT(((*result + -0.48) * a2) + 0.48) | (COERCE_UNSIGNED_INT(((*(result + 4) + -1.2) * a2) + 1.2) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -0.85) * a2) + 0.85;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10003EA40(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v3 = ((*(result + 8) + -0.5) * a2) + 0.5;
    *result = COERCE_UNSIGNED_INT(((*result + -0.26) * a2) + 0.26) | (COERCE_UNSIGNED_INT(((*(result + 4) + -1.2) * a2) + 1.2) << 32);
    *(result + 8) = v3;
    *(result + 100) = ((*(result + 100) + -0.64) * a2) + 0.64;
    sub_1000BA464(*(result + 80), *(result + 88), *(result + 96), 0x3F66E6E700000000, 1059102881, 0, a2);
    *(result + 80) = v4;
    *(result + 88) = v5;
    *(result + 96) = v6;
  }

  else
  {
    __break(1u);
  }
}

double sub_10003EB40()
{
  if (qword_10012F578 != -1)
  {
    swift_once();
  }

  v399 = unk_10013AA60;
  v400 = xmmword_10013AA50;
  v398 = qword_10013AA70;
  v0 = dword_10013AA78;
  v396 = unk_10013AA90;
  v397 = xmmword_10013AA80;
  v1 = qword_10013AAA0;
  v2 = dword_10013AAA8;
  v3 = qword_10013AAC0;
  v394 = xmmword_10013AAD0;
  v395 = xmmword_10013AAB0;
  v392 = unk_10013AAE8;
  v393 = qword_10013AAE0;
  v391 = dword_10013AAF0;
  sub_1000125FC(&qword_100131010, &qword_1000F1D68);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000EF960;
  *(v4 + 32) = xmmword_1000EF5A0;
  *(v4 + 48) = 0;
  if (qword_10012F6E8 != -1)
  {
    swift_once();
  }

  v5 = vmulq_f32(xmmword_10013DCA0, 0);
  v450 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v434 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v5), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v401 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v5, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v338 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC08A8F5C)), vdupq_n_s32(0x40A1EB85u), *algn_10013DCB0), vdupq_n_s32(0xC025C28F), xmmword_10013DCC0));
  sub_10001358C(v453, 2.234, xmmword_1000EC910);
  v6 = sub_100013568(v453);
  v449 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v450, v6.n128_f32[0]), v434, v6.n128_u64[0], 1), v401, v6, 2), v338, v6, 3);
  v425 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v450, v7.f32[0]), v434, *v7.f32, 1), v401, v7, 2), v338, v7, 3);
  v361 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v450, v8.f32[0]), v434, *v8.f32, 1), v401, v8, 2), v338, v8, 3);
  v313 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v450, v9.f32[0]), v434, *v9.f32, 1), v401, v9, 2), v338, v9, 3);
  sub_10001358C(v454, -2.426, xmmword_1000EC8E0);
  v10 = sub_100013568(v454);
  v11 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v449, v10.n128_f32[0]), v425, v10.n128_u64[0], 1), v361, v10, 2), v313, v10, 3);
  v402 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v449, v12.f32[0]), v425, *v12.f32, 1), v361, v12, 2), v313, v12, 3);
  v339 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v449, v13.f32[0]), v425, *v13.f32, 1), v361, v13, 2), v313, v13, 3);
  v426 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v449, v14.f32[0]), v425, *v14.f32, 1), v361, v14, 2), v313, v14, 3);
  v435 = v11;
  sub_10001358C(v455, 0.15708, xmmword_1000EC920);
  v15 = sub_100013568(v455);
  v501 = 0;
  *(v4 + 64) = 0x40CAE148401C28F6;
  *(v4 + 72) = 1008981770;
  *(v4 + 76) = 1;
  *(v4 + 77) = v506;
  *(v4 + 79) = v507;
  *(v4 + 80) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v435, v15.n128_f32[0]), v402, v15.n128_u64[0], 1), v339, v15, 2), v426, v15, 3);
  *(v4 + 96) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v435, v16.f32[0]), v402, *v16.f32, 1), v339, v16, 2), v426, v16, 3);
  *(v4 + 112) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v435, v17.f32[0]), v402, *v17.f32, 1), v339, v17, 2), v426, v17, 3);
  *(v4 + 128) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v435, v18.f32[0]), v402, *v18.f32, 1), v339, v18, 2), v426, v18, 3);
  *(v4 + 144) = xmmword_1000EF970;
  *(v4 + 160) = 0;
  v19 = v504;
  *(v4 + 163) = v505;
  *(v4 + 161) = v19;
  *(v4 + 164) = 1092616192;
  *(v4 + 168) = 1;
  *(v4 + 169) = v502;
  *(v4 + 171) = v503;
  *(v4 + 172) = 1060320051;
  *(v4 + 176) = xmmword_1000EF980;
  *(v4 + 192) = 0x3F0F5C2900000000;
  *(v4 + 200) = v501;
  *(v4 + 201) = 0;
  *(v4 + 203) = 1;
  *(v4 + 208) = 0u;
  *(v4 + 224) = sub_100081614;
  *(v4 + 232) = 0;
  *(v4 + 240) = 0x3F80000000000000;
  *(v4 + 256) = 0u;
  *(v4 + 272) = 9;
  v20 = vmulq_f32(xmmword_10013DCA0, 0);
  v427 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v362 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v20), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v340 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v20, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v287 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC0833333)), vdupq_n_s32(0x40AAE147u), *algn_10013DCB0), vdupq_n_s32(0xC01F5C29), xmmword_10013DCC0));
  sub_10001358C(v456, 2.234, xmmword_1000EC910);
  v21 = sub_100013568(v456);
  v436 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v427, v21.n128_f32[0]), v362, v21.n128_u64[0], 1), v340, v21, 2), v287, v21, 3);
  v403 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v427, v22.f32[0]), v362, *v22.f32, 1), v340, v22, 2), v287, v22, 3);
  v314 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v427, v23.f32[0]), v362, *v23.f32, 1), v340, v23, 2), v287, v23, 3);
  v288 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v427, v24.f32[0]), v362, *v24.f32, 1), v340, v24, 2), v287, v24, 3);
  sub_10001358C(v457, -2.426, xmmword_1000EC8E0);
  v25 = sub_100013568(v457);
  v363 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v436, v26.f32[0]), v403, *v26.f32, 1), v314, v26, 2), v288, v26, 3);
  v341 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v436, v27.f32[0]), v403, *v27.f32, 1), v314, v27, 2), v288, v27, 3);
  v428 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v436, v25.n128_f32[0]), v403, v25.n128_u64[0], 1), v314, v25, 2), v288, v25, 3);
  v437 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v436, v28.f32[0]), v403, *v28.f32, 1), v314, v28, 2), v288, v28, 3);
  sub_10001358C(v458, 0.15708, xmmword_1000EC920);
  v29 = sub_100013568(v458);
  v508 = 0;
  *(v4 + 288) = 0x408CCCCD40200000;
  *(v4 + 296) = 1008981770;
  *(v4 + 300) = 1;
  *(v4 + 301) = v513;
  *(v4 + 303) = v514;
  *(v4 + 304) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v428, v29.n128_f32[0]), v363, v29.n128_u64[0], 1), v341, v29, 2), v437, v29, 3);
  *(v4 + 320) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v428, v30.f32[0]), v363, *v30.f32, 1), v341, v30, 2), v437, v30, 3);
  *(v4 + 336) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v428, v31.f32[0]), v363, *v31.f32, 1), v341, v31, 2), v437, v31, 3);
  *(v4 + 352) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v428, v32.f32[0]), v363, *v32.f32, 1), v341, v32, 2), v437, v32, 3);
  *(v4 + 368) = xmmword_1000EF990;
  *(v4 + 384) = 2;
  v33 = v511;
  *(v4 + 387) = v512;
  *(v4 + 385) = v33;
  *(v4 + 388) = 1102577664;
  *(v4 + 392) = 1;
  *(v4 + 393) = v509;
  *(v4 + 395) = v510;
  *(v4 + 396) = 1052938076;
  *(v4 + 400) = xmmword_1000EF9A0;
  *(v4 + 416) = 0x3F0F5C2900000000;
  *(v4 + 424) = v508;
  *(v4 + 425) = 0;
  *(v4 + 427) = 1;
  *(v4 + 432) = 0u;
  *(v4 + 448) = sub_100041BA4;
  *(v4 + 456) = 0;
  *(v4 + 464) = 0x3F80000000000000;
  *(v4 + 480) = xmmword_1000EF5A0;
  *(v4 + 496) = 1;
  v34 = vmulq_f32(xmmword_10013DCA0, 0);
  v429 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v364 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v34), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v342 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v34, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v289 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBF90A3D7)), vdupq_n_s32(0x3FBEB852u), *algn_10013DCB0), vdupq_n_s32(0x3E051EB8u), xmmword_10013DCC0));
  sub_10001358C(v459, 1.7628, xmmword_1000EC910);
  v35 = sub_100013568(v459);
  v438 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v429, v35.n128_f32[0]), v364, v35.n128_u64[0], 1), v342, v35, 2), v289, v35, 3);
  v404 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v429, v36.f32[0]), v364, *v36.f32, 1), v342, v36, 2), v289, v36, 3);
  v315 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v429, v37.f32[0]), v364, *v37.f32, 1), v342, v37, 2), v289, v37, 3);
  v290 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v429, v38.f32[0]), v364, *v38.f32, 1), v342, v38, 2), v289, v38, 3);
  sub_10001358C(v460, -2.5133, xmmword_1000EC8E0);
  v39 = sub_100013568(v460);
  v365 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v438, v40.f32[0]), v404, *v40.f32, 1), v315, v40, 2), v290, v40, 3);
  v343 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v438, v41.f32[0]), v404, *v41.f32, 1), v315, v41, 2), v290, v41, 3);
  v430 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v438, v39.n128_f32[0]), v404, v39.n128_u64[0], 1), v315, v39, 2), v290, v39, 3);
  v439 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v438, v42.f32[0]), v404, *v42.f32, 1), v315, v42, 2), v290, v42, 3);
  sub_10001358C(v461, -0.12217, xmmword_1000EC920);
  v43 = sub_100013568(v461);
  v515 = 1;
  *(v4 + 512) = 0x3F1C28F63F666666;
  *(v4 + 520) = 1045220557;
  *(v4 + 524) = 1;
  *(v4 + 525) = v520;
  *(v4 + 527) = v521;
  *(v4 + 528) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v430, v43.n128_f32[0]), v365, v43.n128_u64[0], 1), v343, v43, 2), v439, v43, 3);
  *(v4 + 544) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v430, v44.f32[0]), v365, *v44.f32, 1), v343, v44, 2), v439, v44, 3);
  *(v4 + 560) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v430, v45.f32[0]), v365, *v45.f32, 1), v343, v45, 2), v439, v45, 3);
  *(v4 + 576) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v430, v46.f32[0]), v365, *v46.f32, 1), v343, v46, 2), v439, v46, 3);
  *(v4 + 592) = xmmword_1000EF9B0;
  *(v4 + 608) = 0;
  v47 = v518;
  *(v4 + 611) = v519;
  *(v4 + 609) = v47;
  *(v4 + 612) = 1101004800;
  *(v4 + 616) = 11;
  *(v4 + 617) = v516;
  *(v4 + 619) = v517;
  *(v4 + 620) = 1065353216;
  *(v4 + 640) = 0;
  *(v4 + 624) = 0u;
  *(v4 + 648) = v515;
  *(v4 + 649) = 0;
  *(v4 + 651) = 1;
  *(v4 + 656) = 0u;
  *(v4 + 672) = sub_100041C68;
  *(v4 + 680) = 0;
  *(v4 + 688) = 0x3F80000000000000;
  *(v4 + 704) = xmmword_1000EF5C0;
  *(v4 + 720) = 1;
  v48 = vmulq_f32(xmmword_10013DCA0, 0);
  v366 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v316 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v48), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v291 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v48, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v405 = vdupq_n_s32(0xBEB851EB);
  v251 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBF570A3D)), vdupq_n_s32(0x3FB33333u), *algn_10013DCB0), v405, xmmword_10013DCC0));
  sub_10001358C(v462, 2.7402, xmmword_1000EC910);
  v49 = sub_100013568(v462);
  v431 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v366, v49.n128_f32[0]), v316, v49.n128_u64[0], 1), v291, v49, 2), v251, v49, 3);
  v344 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v366, v50.f32[0]), v316, *v50.f32, 1), v291, v50, 2), v251, v50, 3);
  v272 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v366, v51.f32[0]), v316, *v51.f32, 1), v291, v51, 2), v251, v51, 3);
  v252 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v366, v52.f32[0]), v316, *v52.f32, 1), v291, v52, 2), v251, v52, 3);
  sub_10001358C(v463, -3.0718, xmmword_1000EC8E0);
  v53 = sub_100013568(v463);
  v367 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v431, v53.n128_f32[0]), v344, v53.n128_u64[0], 1), v272, v53, 2), v252, v53, 3);
  v317 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v431, v54.f32[0]), v344, *v54.f32, 1), v272, v54, 2), v252, v54, 3);
  v292 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v431, v55.f32[0]), v344, *v55.f32, 1), v272, v55, 2), v252, v55, 3);
  v432 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v431, v56.f32[0]), v344, *v56.f32, 1), v272, v56, 2), v252, v56, 3);
  sub_10001358C(v464, 0.034907, xmmword_1000EC920);
  v57 = sub_100013568(v464);
  v522 = 1;
  *(v4 + 736) = 0x402666663FB5C28FLL;
  *(v4 + 744) = 1036831949;
  *(v4 + 748) = 1;
  *(v4 + 749) = v527;
  *(v4 + 751) = v528;
  *(v4 + 752) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v367, v57.n128_f32[0]), v317, v57.n128_u64[0], 1), v292, v57, 2), v432, v57, 3);
  *(v4 + 768) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v367, v58.f32[0]), v317, *v58.f32, 1), v292, v58, 2), v432, v58, 3);
  *(v4 + 784) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v367, v59.f32[0]), v317, *v59.f32, 1), v292, v59, 2), v432, v59, 3);
  *(v4 + 800) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v367, v60.f32[0]), v317, *v60.f32, 1), v292, v60, 2), v432, v60, 3);
  *(v4 + 816) = xmmword_1000EF9C0;
  *(v4 + 832) = 0;
  v61 = v525;
  *(v4 + 835) = v526;
  *(v4 + 833) = v61;
  *(v4 + 836) = 1076677837;
  *(v4 + 840) = 9;
  *(v4 + 841) = v523;
  *(v4 + 843) = v524;
  *(v4 + 844) = 1065353216;
  *(v4 + 848) = 0;
  *(v4 + 856) = 0u;
  *(v4 + 872) = v522;
  *(v4 + 873) = 0;
  *(v4 + 875) = 0;
  *(v4 + 880) = 0u;
  *(v4 + 896) = sub_100041D20;
  *(v4 + 904) = 0;
  *(v4 + 912) = 0x3F80000000000000;
  *(v4 + 928) = xmmword_1000EF5D0;
  *(v4 + 944) = 1;
  v62 = vmulq_f32(xmmword_10013DCA0, 0);
  v368 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v318 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v62), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v293 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v62, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v253 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBF666666)), vdupq_n_s32(0x3F570A3Du), *algn_10013DCB0), v405, xmmword_10013DCC0));
  sub_10001358C(v465, 2.6354, xmmword_1000EC910);
  v63 = sub_100013568(v465);
  v406 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v368, v63.n128_f32[0]), v318, v63.n128_u64[0], 1), v293, v63, 2), v253, v63, 3);
  v345 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v368, v64.f32[0]), v318, *v64.f32, 1), v293, v64, 2), v253, v64, 3);
  v273 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v368, v65.f32[0]), v318, *v65.f32, 1), v293, v65, 2), v253, v65, 3);
  v254 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v368, v66.f32[0]), v318, *v66.f32, 1), v293, v66, 2), v253, v66, 3);
  sub_10001358C(v466, -2.9147, xmmword_1000EC8E0);
  v67 = sub_100013568(v466);
  v369 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v406, v67.n128_f32[0]), v345, v67.n128_u64[0], 1), v273, v67, 2), v254, v67, 3);
  v319 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v406, v68.f32[0]), v345, *v68.f32, 1), v273, v68, 2), v254, v68, 3);
  v294 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v406, v69.f32[0]), v345, *v69.f32, 1), v273, v69, 2), v254, v69, 3);
  v407 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v406, v70.f32[0]), v345, *v70.f32, 1), v273, v70, 2), v254, v70, 3);
  sub_10001358C(v467, 0.64577, xmmword_1000EC920);
  v71 = sub_100013568(v467);
  v529 = 1;
  *(v4 + 960) = 0x3F8CCCCD40600000;
  *(v4 + 968) = 1036831949;
  *(v4 + 972) = 1;
  *(v4 + 973) = v534;
  *(v4 + 975) = v535;
  *(v4 + 976) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v369, v71.n128_f32[0]), v319, v71.n128_u64[0], 1), v294, v71, 2), v407, v71, 3);
  *(v4 + 992) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v369, v72.f32[0]), v319, *v72.f32, 1), v294, v72, 2), v407, v72, 3);
  *(v4 + 1008) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v369, v73.f32[0]), v319, *v73.f32, 1), v294, v73, 2), v407, v73, 3);
  *(v4 + 1024) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v369, v74.f32[0]), v319, *v74.f32, 1), v294, v74, 2), v407, v74, 3);
  *(v4 + 1040) = xmmword_1000EF9D0;
  *(v4 + 1056) = 0;
  v75 = v532;
  *(v4 + 1059) = v533;
  *(v4 + 1057) = v75;
  *(v4 + 1060) = 1100480512;
  *(v4 + 1064) = 9;
  *(v4 + 1065) = v530;
  *(v4 + 1067) = v531;
  *(v4 + 1068) = 1065353216;
  *(v4 + 1072) = 0;
  *(v4 + 1080) = 0u;
  *(v4 + 1096) = v529;
  *(v4 + 1097) = 0;
  *(v4 + 1099) = 1;
  *(v4 + 1104) = 0u;
  *(v4 + 1120) = sub_100041DD0;
  *(v4 + 1128) = 0;
  *(v4 + 1136) = 0x3F80000000000000;
  *(v4 + 1152) = xmmword_1000EF5A0;
  *(v4 + 1168) = 2;
  v76 = vmulq_f32(xmmword_10013DCA0, 0);
  v370 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v320 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v76), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v295 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v76, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v255 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBF051EB8)), vdupq_n_s32(0x3F91EB85u), *algn_10013DCB0), vdupq_n_s32(0x3F199999u), xmmword_10013DCC0));
  sub_10001358C(v468, 4.7124, xmmword_1000EC910);
  v77 = sub_100013568(v468);
  v408 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v370, v77.n128_f32[0]), v320, v77.n128_u64[0], 1), v295, v77, 2), v255, v77, 3);
  v346 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v370, v78.f32[0]), v320, *v78.f32, 1), v295, v78, 2), v255, v78, 3);
  v274 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v370, v79.f32[0]), v320, *v79.f32, 1), v295, v79, 2), v255, v79, 3);
  v256 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v370, v80.f32[0]), v320, *v80.f32, 1), v295, v80, 2), v255, v80, 3);
  sub_10001358C(v469, -0.0090757, xmmword_1000EC8E0);
  v81 = sub_100013568(v469);
  v371 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v408, v81.n128_f32[0]), v346, v81.n128_u64[0], 1), v274, v81, 2), v256, v81, 3);
  v321 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v408, v82.f32[0]), v346, *v82.f32, 1), v274, v82, 2), v256, v82, 3);
  v296 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v408, v83.f32[0]), v346, *v83.f32, 1), v274, v83, 2), v256, v83, 3);
  v409 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v408, v84.f32[0]), v346, *v84.f32, 1), v274, v84, 2), v256, v84, 3);
  sub_10001358C(v470, -1.5708, xmmword_1000EC920);
  v85 = sub_100013568(v470);
  v536 = 1;
  *(v4 + 1184) = 0x3EFAE1483FE66666;
  *(v4 + 1192) = 1050253722;
  *(v4 + 1196) = 1;
  *(v4 + 1197) = v541;
  *(v4 + 1199) = v542;
  *(v4 + 1200) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v371, v85.n128_f32[0]), v321, v85.n128_u64[0], 1), v296, v85, 2), v409, v85, 3);
  *(v4 + 1216) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v371, v86.f32[0]), v321, *v86.f32, 1), v296, v86, 2), v409, v86, 3);
  *(v4 + 1232) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v371, v87.f32[0]), v321, *v87.f32, 1), v296, v87, 2), v409, v87, 3);
  *(v4 + 1248) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v371, v88.f32[0]), v321, *v88.f32, 1), v296, v88, 2), v409, v88, 3);
  *(v4 + 1264) = xmmword_1000EF9E0;
  *(v4 + 1280) = 0;
  v89 = v539;
  *(v4 + 1283) = v540;
  *(v4 + 1281) = v89;
  *(v4 + 1284) = 1101004800;
  *(v4 + 1288) = 13;
  *(v4 + 1289) = v537;
  *(v4 + 1291) = v538;
  *(v4 + 1292) = 1065353216;
  *(v4 + 1296) = 0;
  *(v4 + 1304) = 0u;
  *(v4 + 1320) = v536;
  *(v4 + 1321) = 0;
  *(v4 + 1323) = 0;
  *(v4 + 1328) = 0u;
  *(v4 + 1344) = sub_100041E98;
  *(v4 + 1352) = 0;
  *(v4 + 1360) = 0x3F80000000000000;
  *(v4 + 1376) = xmmword_1000EF5C0;
  *(v4 + 1392) = 9;
  v90 = vmulq_f32(xmmword_10013DCA0, 0);
  v410 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v347 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v90), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v297 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v90, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v257 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC0D19999)), vdupq_n_s32(0x40B23D70u), *algn_10013DCB0), vdupq_n_s32(0xC09E147B), xmmword_10013DCC0));
  sub_10001358C(v471, 2.234, xmmword_1000EC910);
  v91 = sub_100013568(v471);
  v372 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v410, v91.n128_f32[0]), v347, v91.n128_u64[0], 1), v297, v91, 2), v257, v91, 3);
  v322 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v410, v92.f32[0]), v347, *v92.f32, 1), v297, v92, 2), v257, v92, 3);
  v275 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v410, v93.f32[0]), v347, *v93.f32, 1), v297, v93, 2), v257, v93, 3);
  v258 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v410, v94.f32[0]), v347, *v94.f32, 1), v297, v94, 2), v257, v94, 3);
  sub_10001358C(v472, -2.426, xmmword_1000EC8E0);
  v95 = sub_100013568(v472);
  v411 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v372, v95.n128_f32[0]), v322, v95.n128_u64[0], 1), v275, v95, 2), v258, v95, 3);
  v348 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v372, v96.f32[0]), v322, *v96.f32, 1), v275, v96, 2), v258, v96, 3);
  v298 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v372, v97.f32[0]), v322, *v97.f32, 1), v275, v97, 2), v258, v97, 3);
  v373 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v372, v98.f32[0]), v322, *v98.f32, 1), v275, v98, 2), v258, v98, 3);
  sub_10001358C(v473, 0.14835, xmmword_1000EC920);
  v99 = sub_100013568(v473);
  v543 = 0;
  *(v4 + 1408) = 0x40A1EB8540128F5CLL;
  *(v4 + 1416) = 1008981770;
  *(v4 + 1420) = 1;
  *(v4 + 1421) = v548;
  *(v4 + 1423) = v549;
  *(v4 + 1424) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v411, v99.n128_f32[0]), v348, v99.n128_u64[0], 1), v298, v99, 2), v373, v99, 3);
  *(v4 + 1440) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v411, v100.f32[0]), v348, *v100.f32, 1), v298, v100, 2), v373, v100, 3);
  *(v4 + 1456) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v411, v101.f32[0]), v348, *v101.f32, 1), v298, v101, 2), v373, v101, 3);
  *(v4 + 1472) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v411, v102.f32[0]), v348, *v102.f32, 1), v298, v102, 2), v373, v102, 3);
  *(v4 + 1488) = xmmword_1000EF9F0;
  *(v4 + 1504) = 2;
  v103 = v546;
  *(v4 + 1507) = v547;
  *(v4 + 1505) = v103;
  *(v4 + 1508) = 1085485875;
  *(v4 + 1512) = 1;
  *(v4 + 1513) = v544;
  *(v4 + 1515) = v545;
  *(v4 + 1516) = 1061158912;
  *(v4 + 1520) = xmmword_1000EFA00;
  *(v4 + 1536) = 0x3F28F5C33DB851ECLL;
  *(v4 + 1544) = v543;
  *(v4 + 1545) = 1;
  *(v4 + 1547) = 1;
  *(v4 + 1552) = 0u;
  *(v4 + 1568) = sub_100041EC8;
  *(v4 + 1576) = 0;
  *(v4 + 1584) = 0x3F80000000000000;
  *(v4 + 1600) = xmmword_1000EF5D0;
  *(v4 + 1616) = 9;
  v104 = vmulq_f32(xmmword_10013DCA0, 0);
  v374 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v323 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v104), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v299 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v104, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v259 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC0D75C29)), vdupq_n_s32(0x409E6666u), *algn_10013DCB0), vdupq_n_s32(0xC0AFAE14), xmmword_10013DCC0));
  sub_10001358C(v474, -0.8203, xmmword_1000EC910);
  v105 = sub_100013568(v474);
  v412 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v374, v105.n128_f32[0]), v323, v105.n128_u64[0], 1), v299, v105, 2), v259, v105, 3);
  v349 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v374, v106.f32[0]), v323, *v106.f32, 1), v299, v106, 2), v259, v106, 3);
  v276 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v374, v107.f32[0]), v323, *v107.f32, 1), v299, v107, 2), v259, v107, 3);
  v260 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v374, v108.f32[0]), v323, *v108.f32, 1), v299, v108, 2), v259, v108, 3);
  sub_10001358C(v475, -0.73304, xmmword_1000EC8E0);
  v109 = sub_100013568(v475);
  v375 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v412, v109.n128_f32[0]), v349, v109.n128_u64[0], 1), v276, v109, 2), v260, v109, 3);
  v324 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v412, v110.f32[0]), v349, *v110.f32, 1), v276, v110, 2), v260, v110, 3);
  v300 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v412, v111.f32[0]), v349, *v111.f32, 1), v276, v111, 2), v260, v111, 3);
  v413 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v412, v112.f32[0]), v349, *v112.f32, 1), v276, v112, 2), v260, v112, 3);
  sub_10001358C(v476, -2.9322, xmmword_1000EC920);
  v113 = sub_100013568(v476);
  v550 = 0;
  *(v4 + 1632) = 0x4120000040400000;
  *(v4 + 1640) = 1008981770;
  *(v4 + 1644) = 1;
  *(v4 + 1645) = v555;
  *(v4 + 1647) = v556;
  *(v4 + 1648) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v375, v113.n128_f32[0]), v324, v113.n128_u64[0], 1), v300, v113, 2), v413, v113, 3);
  *(v4 + 1664) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v375, v114.f32[0]), v324, *v114.f32, 1), v300, v114, 2), v413, v114, 3);
  *(v4 + 1680) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v375, v115.f32[0]), v324, *v115.f32, 1), v300, v115, 2), v413, v115, 3);
  *(v4 + 1696) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v375, v116.f32[0]), v324, *v116.f32, 1), v300, v116, 2), v413, v116, 3);
  *(v4 + 1712) = xmmword_1000EFA10;
  *(v4 + 1728) = 2;
  v117 = v553;
  *(v4 + 1731) = v554;
  *(v4 + 1729) = v117;
  *(v4 + 1732) = 1086324736;
  *(v4 + 1736) = 1;
  *(v4 + 1737) = v551;
  *(v4 + 1739) = v552;
  *(v4 + 1740) = 1061158912;
  *(v4 + 1744) = xmmword_1000EFA20;
  *(v4 + 1760) = 0x3EBD70A400000000;
  *(v4 + 1768) = v550;
  *(v4 + 1769) = 1;
  *(v4 + 1771) = 1;
  *(v4 + 1776) = 0u;
  *(v4 + 1792) = sub_100042024;
  *(v4 + 1800) = 0;
  *(v4 + 1808) = 0x3F80000000000000;
  *(v4 + 1824) = xmmword_1000EF5A0;
  *(v4 + 1840) = 4;
  v118 = vmulq_f32(xmmword_10013DCA0, 0);
  v376 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v325 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v118), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v301 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v118, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v261 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3DF5C28Fu)), vdupq_n_s32(0x3EDC28F5u), *algn_10013DCB0), vdupq_n_s32(0xBE851EB8), xmmword_10013DCC0));
  sub_10001358C(v477, 1.5708, xmmword_1000EC910);
  v119 = sub_100013568(v477);
  v414 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v376, v119.n128_f32[0]), v325, v119.n128_u64[0], 1), v301, v119, 2), v261, v119, 3);
  v350 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v376, v120.f32[0]), v325, *v120.f32, 1), v301, v120, 2), v261, v120, 3);
  v277 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v376, v121.f32[0]), v325, *v121.f32, 1), v301, v121, 2), v261, v121, 3);
  v262 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v376, v122.f32[0]), v325, *v122.f32, 1), v301, v122, 2), v261, v122, 3);
  sub_10001358C(v478, -0.82903, xmmword_1000EC8E0);
  v123 = sub_100013568(v478);
  v377 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v414, v123.n128_f32[0]), v350, v123.n128_u64[0], 1), v277, v123, 2), v262, v123, 3);
  v326 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v414, v124.f32[0]), v350, *v124.f32, 1), v277, v124, 2), v262, v124, 3);
  v302 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v414, v125.f32[0]), v350, *v125.f32, 1), v277, v125, 2), v262, v125, 3);
  v415 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v414, v126.f32[0]), v350, *v126.f32, 1), v277, v126, 2), v262, v126, 3);
  sub_10001358C(v479, 1.5708, xmmword_1000EC920);
  v127 = sub_100013568(v479);
  v557 = 1;
  *(v4 + 1856) = 0x3F35C28F3FE66666;
  *(v4 + 1864) = 1045220557;
  *(v4 + 1868) = 1;
  *(v4 + 1869) = v562;
  *(v4 + 1871) = v563;
  *(v4 + 1872) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v377, v127.n128_f32[0]), v326, v127.n128_u64[0], 1), v302, v127, 2), v415, v127, 3);
  *(v4 + 1888) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v377, v128.f32[0]), v326, *v128.f32, 1), v302, v128, 2), v415, v128, 3);
  *(v4 + 1904) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v377, v129.f32[0]), v326, *v129.f32, 1), v302, v129, 2), v415, v129, 3);
  *(v4 + 1920) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v377, v130.f32[0]), v326, *v130.f32, 1), v302, v130, 2), v415, v130, 3);
  *(v4 + 1936) = xmmword_1000EFA30;
  *(v4 + 1952) = 0;
  v131 = v560;
  *(v4 + 1955) = v561;
  *(v4 + 1953) = v131;
  *(v4 + 1956) = 1088002458;
  *(v4 + 1960) = 9;
  *(v4 + 1961) = v558;
  *(v4 + 1963) = v559;
  *(v4 + 1964) = 1065353216;
  *(v4 + 1968) = 0;
  *(v4 + 1976) = 0u;
  *(v4 + 1992) = v557;
  *(v4 + 1993) = 1;
  *(v4 + 1995) = 0;
  *(v4 + 2000) = 0u;
  *(v4 + 2016) = sub_1000420E8;
  *(v4 + 2024) = 0;
  *(v4 + 2032) = 0x3F28F5C300000000;
  *(v4 + 2048) = xmmword_1000EF5A0;
  *(v4 + 2064) = 3;
  v132 = vmulq_f32(xmmword_10013DCA0, 0);
  v378 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v327 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v132), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v303 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v132, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v263 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3E4CCCCCu)), vdupq_n_s32(0x3F970A3Du), *algn_10013DCB0), vdupq_n_s32(0xBFAF5C29), xmmword_10013DCC0));
  sub_10001358C(v480, 3.2987, xmmword_1000EC910);
  v133 = sub_100013568(v480);
  v416 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v378, v133.n128_f32[0]), v327, v133.n128_u64[0], 1), v303, v133, 2), v263, v133, 3);
  v351 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v378, v134.f32[0]), v327, *v134.f32, 1), v303, v134, 2), v263, v134, 3);
  v278 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v378, v135.f32[0]), v327, *v135.f32, 1), v303, v135, 2), v263, v135, 3);
  v264 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v378, v136.f32[0]), v327, *v136.f32, 1), v303, v136, 2), v263, v136, 3);
  sub_10001358C(v481, -2.4086, xmmword_1000EC8E0);
  v137 = sub_100013568(v481);
  v379 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v416, v137.n128_f32[0]), v351, v137.n128_u64[0], 1), v278, v137, 2), v264, v137, 3);
  v328 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v416, v138.f32[0]), v351, *v138.f32, 1), v278, v138, 2), v264, v138, 3);
  v304 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v416, v139.f32[0]), v351, *v139.f32, 1), v278, v139, 2), v264, v139, 3);
  v417 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v416, v140.f32[0]), v351, *v140.f32, 1), v278, v140, 2), v264, v140, 3);
  sub_10001358C(v482, 0.64577, xmmword_1000EC920);
  v141 = sub_100013568(v482);
  v564 = 1;
  *(v4 + 2080) = 0x3F851EB84070A3D7;
  *(v4 + 2088) = 1036831949;
  *(v4 + 2092) = 1;
  *(v4 + 2093) = v569;
  *(v4 + 2095) = v570;
  *(v4 + 2096) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v379, v141.n128_f32[0]), v328, v141.n128_u64[0], 1), v304, v141, 2), v417, v141, 3);
  *(v4 + 2112) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v379, v142.f32[0]), v328, *v142.f32, 1), v304, v142, 2), v417, v142, 3);
  *(v4 + 2128) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v379, v143.f32[0]), v328, *v143.f32, 1), v304, v143, 2), v417, v143, 3);
  *(v4 + 2144) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v379, v144.f32[0]), v328, *v144.f32, 1), v304, v144, 2), v417, v144, 3);
  *(v4 + 2160) = xmmword_1000EFA40;
  *(v4 + 2176) = 0;
  v145 = v567;
  *(v4 + 2179) = v568;
  *(v4 + 2177) = v145;
  *(v4 + 2180) = 1066192077;
  *(v4 + 2184) = 9;
  *(v4 + 2185) = v565;
  *(v4 + 2187) = v566;
  *(v4 + 2188) = 1065353216;
  *(v4 + 2192) = 0;
  *(v4 + 2200) = 0u;
  *(v4 + 2216) = v564;
  *(v4 + 2217) = 1;
  *(v4 + 2219) = 0;
  *(v4 + 2224) = 0u;
  *(v4 + 2240) = sub_100042188;
  *(v4 + 2248) = 0;
  *(v4 + 2256) = 0x3F80000000000000;
  *(v4 + 2272) = xmmword_1000EF5C0;
  *(v4 + 2288) = 3;
  v146 = vmulq_f32(xmmword_10013DCA0, 0);
  v380 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v329 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v146), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v305 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v146, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v265 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC0047AE1)), vdupq_n_s32(0xBEAE147B), *algn_10013DCB0), vdupq_n_s32(0xC05F5C29), xmmword_10013DCC0));
  sub_10001358C(v483, -0.76794, xmmword_1000EC910);
  v147 = sub_100013568(v483);
  v418 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v380, v147.n128_f32[0]), v329, v147.n128_u64[0], 1), v305, v147, 2), v265, v147, 3);
  v352 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v380, v148.f32[0]), v329, *v148.f32, 1), v305, v148, 2), v265, v148, 3);
  v279 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v380, v149.f32[0]), v329, *v149.f32, 1), v305, v149, 2), v265, v149, 3);
  v266 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v380, v150.f32[0]), v329, *v150.f32, 1), v305, v150, 2), v265, v150, 3);
  sub_10001358C(v484, -0.034907, xmmword_1000EC8E0);
  v151 = sub_100013568(v484);
  v381 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v418, v151.n128_f32[0]), v352, v151.n128_u64[0], 1), v279, v151, 2), v266, v151, 3);
  v330 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v418, v152.f32[0]), v352, *v152.f32, 1), v279, v152, 2), v266, v152, 3);
  v306 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v418, v153.f32[0]), v352, *v153.f32, 1), v279, v153, 2), v266, v153, 3);
  v419 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v418, v154.f32[0]), v352, *v154.f32, 1), v279, v154, 2), v266, v154, 3);
  sub_10001358C(v485, 0.36652, xmmword_1000EC920);
  v155 = sub_100013568(v485);
  v571 = 1;
  *(v4 + 2304) = 0x3FEB851F3F90A3D7;
  *(v4 + 2312) = 1034147594;
  *(v4 + 2316) = 1;
  *(v4 + 2317) = v576;
  *(v4 + 2319) = v577;
  *(v4 + 2320) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v381, v155.n128_f32[0]), v330, v155.n128_u64[0], 1), v306, v155, 2), v419, v155, 3);
  *(v4 + 2336) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v381, v156.f32[0]), v330, *v156.f32, 1), v306, v156, 2), v419, v156, 3);
  *(v4 + 2352) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v381, v157.f32[0]), v330, *v157.f32, 1), v306, v157, 2), v419, v157, 3);
  *(v4 + 2368) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v381, v158.f32[0]), v330, *v158.f32, 1), v306, v158, 2), v419, v158, 3);
  *(v4 + 2384) = xmmword_1000EFA50;
  *(v4 + 2400) = 0;
  v159 = v574;
  *(v4 + 2403) = v575;
  *(v4 + 2401) = v159;
  *(v4 + 2404) = 1059313418;
  *(v4 + 2408) = 13;
  *(v4 + 2409) = v572;
  *(v4 + 2411) = v573;
  *(v4 + 2412) = 1065353216;
  *(v4 + 2416) = 0;
  *(v4 + 2424) = 0u;
  *(v4 + 2440) = v571;
  *(v4 + 2441) = 1;
  *(v4 + 2443) = 0;
  *(v4 + 2448) = 0u;
  *(v4 + 2464) = sub_100042240;
  *(v4 + 2472) = 0;
  *(v4 + 2480) = 0x3F80000000000000;
  *(v4 + 2496) = xmmword_1000EF630;
  *(v4 + 2512) = 9;
  v160 = vmulq_f32(xmmword_10013DCA0, 0);
  __asm { FMOV            V5.4S, #-3.5 }

  v420 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v353 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v160), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v307 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v160, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v267 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, _Q5), vdupq_n_s32(0x40847AE1u), *algn_10013DCB0), vdupq_n_s32(0x4063D70Au), xmmword_10013DCC0));
  sub_10001358C(v486, -1.2392, xmmword_1000EC910);
  v166 = sub_100013568(v486);
  v382 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v420, v166.n128_f32[0]), v353, v166.n128_u64[0], 1), v307, v166, 2), v267, v166, 3);
  v331 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v420, v167.f32[0]), v353, *v167.f32, 1), v307, v167, 2), v267, v167, 3);
  v280 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v420, v168.f32[0]), v353, *v168.f32, 1), v307, v168, 2), v267, v168, 3);
  v268 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v420, v169.f32[0]), v353, *v169.f32, 1), v307, v169, 2), v267, v169, 3);
  sub_10001358C(v487, -0.73304, xmmword_1000EC8E0);
  v170 = sub_100013568(v487);
  v421 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v382, v170.n128_f32[0]), v331, v170.n128_u64[0], 1), v280, v170, 2), v268, v170, 3);
  v354 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v382, v171.f32[0]), v331, *v171.f32, 1), v280, v171, 2), v268, v171, 3);
  v308 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v382, v172.f32[0]), v331, *v172.f32, 1), v280, v172, 2), v268, v172, 3);
  v383 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v382, v173.f32[0]), v331, *v173.f32, 1), v280, v173, 2), v268, v173, 3);
  sub_10001358C(v488, -0.17453, xmmword_1000EC920);
  v174 = sub_100013568(v488);
  v578 = 1;
  *(v4 + 2528) = 0x4040000040400000;
  *(v4 + 2536) = 1048576000;
  *(v4 + 2540) = 1;
  *(v4 + 2541) = v583;
  *(v4 + 2543) = v584;
  *(v4 + 2544) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v421, v174.n128_f32[0]), v354, v174.n128_u64[0], 1), v308, v174, 2), v383, v174, 3);
  *(v4 + 2560) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v421, v175.f32[0]), v354, *v175.f32, 1), v308, v175, 2), v383, v175, 3);
  *(v4 + 2576) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v421, v176.f32[0]), v354, *v176.f32, 1), v308, v176, 2), v383, v176, 3);
  *(v4 + 2592) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v421, v177.f32[0]), v354, *v177.f32, 1), v308, v177, 2), v383, v177, 3);
  *(v4 + 2608) = xmmword_1000EC900;
  *(v4 + 2624) = 0;
  v178 = v581;
  *(v4 + 2627) = v582;
  *(v4 + 2625) = v178;
  *(v4 + 2628) = 1077516698;
  *(v4 + 2632) = 1;
  *(v4 + 2633) = v579;
  *(v4 + 2635) = v580;
  *(v4 + 2636) = 1053944709;
  *(v4 + 2640) = 0;
  *(v4 + 2648) = 0u;
  *(v4 + 2664) = v578;
  *(v4 + 2665) = 3;
  *(v4 + 2667) = 1;
  *(v4 + 2672) = 0u;
  *(v4 + 2688) = sub_100042270;
  *(v4 + 2696) = 0;
  *(v4 + 2704) = 0x3F80000000000000;
  *(v4 + 2720) = xmmword_1000EF5A0;
  *(v4 + 2736) = 5;
  v179 = vmulq_f32(xmmword_10013DCA0, 0);
  v355 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v309 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v179), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v281 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v179, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v249 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBFCCCCCC)), vdupq_n_s32(0x40233333u), *algn_10013DCB0), vdupq_n_s32(0x4041EB85u), xmmword_10013DCC0));
  sub_10001358C(v489, -0.69813, xmmword_1000EC910);
  v180 = sub_100013568(v489);
  v384 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v355, v180.n128_f32[0]), v309, v180.n128_u64[0], 1), v281, v180, 2), v249, v180, 3);
  v332 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v355, v181.f32[0]), v309, *v181.f32, 1), v281, v181, 2), v249, v181, 3);
  v269 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v355, v182.f32[0]), v309, *v182.f32, 1), v281, v182, 2), v249, v182, 3);
  v250 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v355, v183.f32[0]), v309, *v183.f32, 1), v281, v183, 2), v249, v183, 3);
  sub_10001358C(v490, 0.0, xmmword_1000EC8E0);
  v184 = sub_100013568(v490);
  v310 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v384, v185.f32[0]), v332, *v185.f32, 1), v269, v185, 2), v250, v185, 3);
  v282 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v384, v186.f32[0]), v332, *v186.f32, 1), v269, v186, 2), v250, v186, 3);
  v356 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v384, v184.n128_f32[0]), v332, v184.n128_u64[0], 1), v269, v184, 2), v250, v184, 3);
  v385 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v384, v187.f32[0]), v332, *v187.f32, 1), v269, v187, 2), v250, v187, 3);
  sub_10001358C(v491, 0.0, xmmword_1000EC920);
  v188 = sub_100013568(v491);
  v585 = 1;
  *(v4 + 2752) = 0x408D1EB83FF0A3D7;
  *(v4 + 2760) = 1048576000;
  *(v4 + 2764) = 1;
  *(v4 + 2765) = v590;
  *(v4 + 2767) = v591;
  *(v4 + 2768) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v356, v188.n128_f32[0]), v310, v188.n128_u64[0], 1), v282, v188, 2), v385, v188, 3);
  *(v4 + 2784) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v356, v189.f32[0]), v310, *v189.f32, 1), v282, v189, 2), v385, v189, 3);
  *(v4 + 2800) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v356, v190.f32[0]), v310, *v190.f32, 1), v282, v190, 2), v385, v190, 3);
  *(v4 + 2816) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v356, v191.f32[0]), v310, *v191.f32, 1), v282, v191, 2), v385, v191, 3);
  *(v4 + 2832) = xmmword_1000EC900;
  *(v4 + 2848) = 0;
  v192 = v588;
  *(v4 + 2851) = v589;
  *(v4 + 2849) = v192;
  *(v4 + 2852) = 1068708659;
  *(v4 + 2856) = 9;
  *(v4 + 2857) = v586;
  *(v4 + 2859) = v587;
  *(v4 + 2860) = 1065353216;
  *(v4 + 2864) = 0;
  *(v4 + 2872) = 0u;
  *(v4 + 2888) = v585;
  *(v4 + 2889) = 3;
  *(v4 + 2891) = 1;
  *(v4 + 2896) = 0u;
  *(v4 + 2912) = sub_1000815FC;
  *(v4 + 2920) = 0;
  *(v4 + 2928) = 0x3F80000000000000;
  *(v4 + 2944) = xmmword_1000EF5C0;
  *(v4 + 2960) = 5;
  v193 = vmulq_f32(xmmword_10013DCA0, 0);
  v386 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v333 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v193), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v283 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v193, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v270 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3FD1EB85u)), vdupq_n_s32(0xC00EB852), *algn_10013DCB0), vdupq_n_s32(0x40047AE1u), xmmword_10013DCC0));
  sub_10001358C(v492, 0.0, xmmword_1000EC910);
  v194 = sub_100013568(v492);
  v440 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v386, v194.n128_f32[0]), v333, v194.n128_u64[0], 1), v283, v194, 2), v270, v194, 3);
  v357 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v386, v195.f32[0]), v333, *v195.f32, 1), v283, v195, 2), v270, v195, 3);
  v311 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v386, v196.f32[0]), v333, *v196.f32, 1), v283, v196, 2), v270, v196, 3);
  v271 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v386, v197.f32[0]), v333, *v197.f32, 1), v283, v197, 2), v270, v197, 3);
  sub_10001358C(v493, 0.54105, xmmword_1000EC8E0);
  v198 = sub_100013568(v493);
  v387 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v440, v198.n128_f32[0]), v357, v198.n128_u64[0], 1), v311, v198, 2), v271, v198, 3);
  v334 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v440, v199.f32[0]), v357, *v199.f32, 1), v311, v199, 2), v271, v199, 3);
  v284 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v440, v200.f32[0]), v357, *v200.f32, 1), v311, v200, 2), v271, v200, 3);
  v441 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v440, v201.f32[0]), v357, *v201.f32, 1), v311, v201, 2), v271, v201, 3);
  sub_10001358C(v494, 0.0, xmmword_1000EC920);
  v202 = sub_100013568(v494);
  v592 = 1;
  *(v4 + 2976) = 0x4053D70A3FF0A3D7;
  *(v4 + 2984) = 1053609165;
  *(v4 + 2988) = 1;
  *(v4 + 2989) = v597;
  *(v4 + 2991) = v598;
  *(v4 + 2992) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v387, v202.n128_f32[0]), v334, v202.n128_u64[0], 1), v284, v202, 2), v441, v202, 3);
  *(v4 + 3008) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v387, v203.f32[0]), v334, *v203.f32, 1), v284, v203, 2), v441, v203, 3);
  *(v4 + 3024) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v387, v204.f32[0]), v334, *v204.f32, 1), v284, v204, 2), v441, v204, 3);
  *(v4 + 3040) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v387, v205.f32[0]), v334, *v205.f32, 1), v284, v205, 2), v441, v205, 3);
  *(v4 + 3056) = xmmword_1000EC900;
  *(v4 + 3072) = 0;
  v206 = v595;
  *(v4 + 3075) = v596;
  *(v4 + 3073) = v206;
  *(v4 + 3076) = 1094713344;
  *(v4 + 3080) = 9;
  *(v4 + 3081) = v593;
  *(v4 + 3083) = v594;
  *(v4 + 3084) = 1065353216;
  *(v4 + 3088) = 0;
  *(v4 + 3096) = 0u;
  *(v4 + 3112) = v592;
  *(v4 + 3113) = 3;
  *(v4 + 3115) = 1;
  *(v4 + 3120) = 0u;
  *(v4 + 3136) = sub_10004232C;
  *(v4 + 3144) = 0;
  *(v4 + 3152) = 0x3F80000000000000;
  *(v4 + 3168) = xmmword_1000EF5A0;
  *(v4 + 3184) = 6;
  v207 = vmulq_f32(xmmword_10013DCA0, 0);
  v422 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v358 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v207), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v335 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v207, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v446 = vdupq_n_s32(0xBF8E147B);
  v285 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBECCCCCC)), vdupq_n_s32(0x3F9851EBu), *algn_10013DCB0), v446, xmmword_10013DCC0));
  sub_10001358C(v495, 1.5708, xmmword_1000EC910);
  v208 = sub_100013568(v495);
  v442 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v422, v208.n128_f32[0]), v358, v208.n128_u64[0], 1), v335, v208, 2), v285, v208, 3);
  v388 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v422, v209.f32[0]), v358, *v209.f32, 1), v335, v209, 2), v285, v209, 3);
  v312 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v422, v210.f32[0]), v358, *v210.f32, 1), v335, v210, 2), v285, v210, 3);
  v286 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v422, v211.f32[0]), v358, *v211.f32, 1), v335, v211, 2), v285, v211, 3);
  sub_10001358C(v496, -3.4034, xmmword_1000EC8E0);
  v212 = sub_100013568(v496);
  v423 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v442, v212.n128_f32[0]), v388, v212.n128_u64[0], 1), v312, v212, 2), v286, v212, 3);
  v359 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v442, v213.f32[0]), v388, *v213.f32, 1), v312, v213, 2), v286, v213, 3);
  v336 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v442, v214.f32[0]), v388, *v214.f32, 1), v312, v214, 2), v286, v214, 3);
  v443 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v442, v215.f32[0]), v388, *v215.f32, 1), v312, v215, 2), v286, v215, 3);
  sub_10001358C(v497, 1.5708, xmmword_1000EC920);
  v216 = sub_100013568(v497);
  v599 = 1;
  *(v4 + 3200) = 0x3F99999A3F800000;
  *(v4 + 3208) = 1056964608;
  *(v4 + 3212) = 1;
  *(v4 + 3213) = v604;
  *(v4 + 3215) = v605;
  *(v4 + 3216) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v423, v216.n128_f32[0]), v359, v216.n128_u64[0], 1), v336, v216, 2), v443, v216, 3);
  *(v4 + 3232) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v423, v217.f32[0]), v359, *v217.f32, 1), v336, v217, 2), v443, v217, 3);
  *(v4 + 3248) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v423, v218.f32[0]), v359, *v218.f32, 1), v336, v218, 2), v443, v218, 3);
  *(v4 + 3264) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v423, v219.f32[0]), v359, *v219.f32, 1), v336, v219, 2), v443, v219, 3);
  *(v4 + 3280) = xmmword_1000EFA60;
  *(v4 + 3296) = 0;
  v220 = v602;
  *(v4 + 3299) = v603;
  *(v4 + 3297) = v220;
  *(v4 + 3300) = 1056964608;
  *(v4 + 3304) = 9;
  *(v4 + 3305) = v600;
  *(v4 + 3307) = v601;
  *(v4 + 3308) = 1065353216;
  *(v4 + 3312) = 0;
  *(v4 + 3320) = 0u;
  *(v4 + 3336) = v599;
  *(v4 + 3337) = 2;
  *(v4 + 3339) = 1;
  *(v4 + 3344) = 0u;
  *(v4 + 3360) = sub_10004235C;
  *(v4 + 3368) = 0;
  *(v4 + 3376) = 0x3F80000000000000;
  *(v4 + 3392) = xmmword_1000EF5D0;
  *(v4 + 3408) = 6;
  v221 = vmulq_f32(xmmword_10013DCA0, 0);
  v389 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v360 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v221), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v337 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v221, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v447 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBF6147AE)), vdupq_n_s32(0xBF9D70A4), *algn_10013DCB0), v446, xmmword_10013DCC0));
  sub_10001358C(v498, 1.5708, xmmword_1000EC910);
  v222 = sub_100013568(v498);
  v433 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v389, v223.f32[0]), v360, *v223.f32, 1), v337, v223, 2), v447, v223, 3);
  v444 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v389, v222.n128_f32[0]), v360, v222.n128_u64[0], 1), v337, v222, 2), v447, v222, 3);
  v424 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v389, v224.f32[0]), v360, *v224.f32, 1), v337, v224, 2), v447, v224, 3);
  v390 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v389, v225.f32[0]), v360, *v225.f32, 1), v337, v225, 2), v447, v225, 3);
  sub_10001358C(v499, -2.2864, xmmword_1000EC8E0);
  v226 = sub_100013568(v499);
  v451 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v444, v227.f32[0]), v433, *v227.f32, 1), v424, v227, 2), v390, v227, 3);
  v452 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v444, v226.n128_f32[0]), v433, v226.n128_u64[0], 1), v424, v226, 2), v390, v226, 3);
  v448 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v444, v228.f32[0]), v433, *v228.f32, 1), v424, v228, 2), v390, v228, 3);
  v445 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v444, v229.f32[0]), v433, *v229.f32, 1), v424, v229, 2), v390, v229, 3);
  sub_10001358C(v500, 1.5708, xmmword_1000EC920);
  v230 = sub_100013568(v500);
  v606 = 1;
  *(v4 + 3424) = 0x3F8CCCCD3F4A3D71;
  *(v4 + 3432) = 1056964608;
  *(v4 + 3436) = 1;
  *(v4 + 3437) = v611;
  *(v4 + 3439) = v612;
  *(v4 + 3440) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v452, v230.n128_f32[0]), v451, v230.n128_u64[0], 1), v448, v230, 2), v445, v230, 3);
  *(v4 + 3456) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v452, v231.f32[0]), v451, *v231.f32, 1), v448, v231, 2), v445, v231, 3);
  *(v4 + 3472) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v452, v232.f32[0]), v451, *v232.f32, 1), v448, v232, 2), v445, v232, 3);
  *(v4 + 3488) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v452, v233.f32[0]), v451, *v233.f32, 1), v448, v233, 2), v445, v233, 3);
  *(v4 + 3504) = xmmword_1000EFA70;
  *(v4 + 3520) = 0;
  v234 = v609;
  *(v4 + 3523) = v610;
  *(v4 + 3521) = v234;
  *(v4 + 3524) = 1060152279;
  *(v4 + 3528) = 9;
  *(v4 + 3529) = v607;
  *(v4 + 3531) = v608;
  *(v4 + 3532) = 1065353216;
  *(v4 + 3536) = 0;
  *(v4 + 3544) = 0u;
  *(v4 + 3560) = v606;
  *(v4 + 3561) = 2;
  *(v4 + 3563) = 1;
  *(v4 + 3568) = 0u;
  *(v4 + 3584) = sub_100042414;
  *(v4 + 3592) = 0;
  *(v4 + 3600) = 0x3F80000000000000;
  v235 = sub_1000A0774(v4);
  swift_setDeallocating();
  sub_1000125FC(&qword_100131018, &qword_1000F1D70);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1000125FC(&qword_100131020, &qword_1000F1D78);
  v236 = swift_allocObject();
  v236[1] = xmmword_1000EC880;
  v236[2] = xmmword_1000EFA80;
  v236[3] = xmmword_1000EFA90;
  v237 = swift_allocObject();
  v237[1] = xmmword_1000EC880;
  v237[2] = xmmword_1000EFAA0;
  v237[3] = xmmword_1000EFAB0;
  v238 = swift_allocObject();
  v238[1] = xmmword_1000ED250;
  v238[2] = xmmword_1000EFAC0;
  v238[3] = xmmword_1000EFAD0;
  v238[4] = xmmword_1000EFAE0;
  v239 = qword_10013AC20;
  v240 = unk_10013AC28;
  v241 = qword_10013AC30;

  v242 = qword_10013AC50;
  v243 = sub_1000A0A98(_swiftEmptyArrayStorage);
  swift_bridgeObjectRetain_n();
  v245 = sub_1000C1928(v244, v235);

  sub_1000C53DC(v245, v615);
  v247 = sub_1000C199C(v246, v235);

  sub_1000C53DC(v247, v613);
  xmmword_10013AE70 = v400;
  unk_10013AE80 = v399;
  qword_10013AE90 = v398;
  dword_10013AE98 = v0;
  xmmword_10013AEA0 = v397;
  unk_10013AEB0 = v396;
  qword_10013AEC0 = v1;
  dword_10013AEC8 = v2;
  xmmword_10013AED0 = v395;
  qword_10013AEE0 = v3;
  xmmword_10013AEF0 = v394;
  qword_10013AF00 = v393;
  unk_10013AF08 = v392;
  dword_10013AF10 = v391;
  qword_10013AF18 = 0;
  unk_10013AF20 = v235;
  qword_10013AF48 = v616;
  unk_10013AF38 = v615[1];
  unk_10013AF28 = v615[0];
  xmmword_10013AF50 = v613[0];
  unk_10013AF60 = v613[1];
  qword_10013AF70 = v614;
  qword_10013AF78 = sub_1000424EC;
  qword_10013AF80 = 0;
  xmmword_10013AF90 = xmmword_1000EFAF0;
  unk_10013AFA0 = xmmword_1000EFB00;
  qword_10013AFB0 = v236;
  word_10013AFBC = 5;
  dword_10013AFB8 = 0;
  xmmword_10013AFC0 = xmmword_1000EFB10;
  qword_10013AFD0 = v237;
  xmmword_10013AFD8 = xmmword_1000EFB20;
  xmmword_10013AFE8 = xmmword_1000EFB30;
  qword_10013AFF8 = 1060550327;
  unk_10013B000 = v238;
  xmmword_10013B008 = xmmword_1000EFB40;
  xmmword_10013B018 = xmmword_1000EFB50;
  qword_10013B028 = 1063182047;
  result = 0.000218769215;
  xmmword_10013B030 = xmmword_1000EFB60;
  qword_10013B040 = v239;
  unk_10013B048 = v240;
  qword_10013B050 = v241;
  unk_10013B058 = v243;
  qword_10013B060 = _swiftEmptyArrayStorage;
  unk_10013B068 = _swiftEmptyArrayStorage;
  qword_10013B070 = v242;
  return result;
}

double sub_100041BA4(uint64_t a1, float a2)
{
  *(a1 + 100) = ((*(a1 + 100) + -6.4) * a2) + 6.4;
  *(a1 + 108) = ((*(a1 + 108) + -0.15) * a2) + 0.15;
  v7 = xmmword_1000EFB70;
  v8 = 0x3F0F5C2900000000;
  sub_1000BAC84(*(a1 + 112), *(a1 + 120), *(a1 + 128), *(a1 + 136), &v5, a2);
  v3 = v6;
  result = *&v5;
  *(a1 + 112) = v5;
  *(a1 + 128) = v3;
  *(a1 + 136) = 0;
  return result;
}

uint64_t sub_100041C68(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.13) * a2) + 0.13;
    *result = COERCE_UNSIGNED_INT(((*result + -1.0) * a2) + 1.0) | (COERCE_UNSIGNED_INT(((*(result + 4) + -0.61) * a2) + 0.61) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -5.2) * a2) + 5.2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100041D20(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.1) * a2) + 0.1;
    *result = COERCE_UNSIGNED_INT(((*result + -2.6) * a2) + 2.6) | (COERCE_UNSIGNED_INT(((*(result + 4) + -2.6) * a2) + 2.6) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -0.021) * a2) + 0.021;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100041DD0(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.053) * a2) + 0.053;
    *result = COERCE_UNSIGNED_INT(((*result + -3.6) * a2) + 3.6) | (COERCE_UNSIGNED_INT(((*(result + 4) + -0.56) * a2) + 0.56) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -2.1) * a2) + 2.1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

float sub_100041E98(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -3.9) * a2) + 3.9;
  *(a1 + 100) = result;
  return result;
}

void sub_100041EC8(float *result, float a2)
{
  if (*(result + 12) == 1)
  {
    v11 = v2;
    v12 = v3;
    v5 = ((result[2] + -0.11) * a2) + 0.11;
    *result = COERCE_UNSIGNED_INT(((*result + -2.3) * a2) + 2.3) | (COERCE_UNSIGNED_INT(((result[1] + -5.1) * a2) + 5.1) << 32);
    result[2] = v5;
    result[25] = ((result[25] + -0.78) * a2) + 0.78;
    result[27] = ((result[27] + -0.19) * a2) + 0.19;
    v9 = xmmword_1000EFB80;
    v10 = 0x3F80000000000000;
    sub_1000BAC84(*(result + 14), *(result + 15), *(result + 16), *(result + 136), &v7, a2);
    v6 = v8;
    *(result + 7) = v7;
    *(result + 16) = v6;
    *(result + 136) = 0;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100042024(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.5) * a2) + 0.5;
    *result = COERCE_UNSIGNED_INT(((*result + -5.0) * a2) + 5.0) | (COERCE_UNSIGNED_INT(((*(result + 4) + -10.0) * a2) + 10.0) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -0.2) * a2) + 0.2;
    *(result + 108) = ((*(result + 108) + -0.8) * a2) + 0.8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000420E8(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.5) * a2) + 0.5;
    *result = COERCE_UNSIGNED_INT(((*result + -1.8) * a2) + 1.8) | (COERCE_UNSIGNED_INT(((*(result + 4) + -0.71) * a2) + 0.71) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -1.8) * a2) + 1.8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100042188(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.1) * a2) + 0.1;
    *result = COERCE_UNSIGNED_INT(((*result + -3.8) * a2) + 3.8) | (COERCE_UNSIGNED_INT(((*(result + 4) + -5.0) * a2) + 5.0) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -0.18) * a2) + 0.18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

float sub_100042240(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -0.045) * a2) + 0.045;
  *(a1 + 100) = result;
  return result;
}

uint64_t sub_100042270(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.5) * a2) + 0.5;
    *result = COERCE_UNSIGNED_INT(((*result + -3.0) * a2) + 3.0) | (COERCE_UNSIGNED_INT(((*(result + 4) + -3.0) * a2) + 3.0) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -0.22) * a2) + 0.22;
    *(result + 108) = ((*(result + 108) + -0.28) * a2) + 0.28;
  }

  else
  {
    __break(1u);
  }

  return result;
}

float sub_10004232C(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -0.43) * a2) + 0.43;
  *(a1 + 100) = result;
  return result;
}

uint64_t sub_10004235C(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.5) * a2) + 0.5;
    *result = COERCE_UNSIGNED_INT(((*result + -1.3) * a2) + 1.3) | (COERCE_UNSIGNED_INT(((*(result + 4) + -1.2) * a2) + 1.2) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -0.66) * a2) + 0.66;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100042414(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v3 = ((*(result + 8) + -0.5) * a2) + 0.5;
    *result = COERCE_UNSIGNED_INT(((*result + -2.7) * a2) + 2.7) | (COERCE_UNSIGNED_INT(((*(result + 4) + -1.1) * a2) + 1.1) << 32);
    *(result + 8) = v3;
    sub_1000BA464(*(result + 80), *(result + 88), *(result + 96), 0x3EF4F4F53F800000, 1051240617, 0, a2);
    *(result + 80) = v4;
    *(result + 88) = v5;
    *(result + 96) = v6;
  }

  else
  {
    __break(1u);
  }
}

float32x2_t sub_1000424EC(float a1)
{
  v1 = a1;
  if (a1 < 0.0)
  {
    a1 = 0.0;
  }

  v2 = a1 * 3.1416;
  if (v1 >= 1.0)
  {
    v2 = 3.1416;
  }

  return vmul_n_f32(vadd_f32(vmul_n_f32(0x3E99999A3EF0A3D8, fminf(v1 / 0.875, 1.0)), 0x3F3333333F07AE14), ((0.5 - (cosf(v2) * 0.5)) * 0.984) + 0.016);
}

double sub_1000425A8()
{
  if (qword_10012F578 != -1)
  {
    swift_once();
  }

  v482 = unk_10013AA60;
  v483 = xmmword_10013AA50;
  v481 = qword_10013AA70;
  v0 = dword_10013AA78;
  v479 = unk_10013AA90;
  v480 = xmmword_10013AA80;
  v1 = qword_10013AAA0;
  v2 = dword_10013AAA8;
  v478 = xmmword_10013AAB0;
  v477 = qword_10013AAC0;
  v476 = xmmword_10013AAD0;
  v474 = unk_10013AAE8;
  v475 = qword_10013AAE0;
  v473 = dword_10013AAF0;
  sub_1000125FC(&qword_100131010, &qword_1000F1D68);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000EF780;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 9;
  if (qword_10012F6E8 != -1)
  {
    swift_once();
  }

  v4 = vmulq_f32(xmmword_10013DCA0, 0);
  v512 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v503 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v4), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v484 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v4, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v440 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC0BF0A3D)), vdupq_n_s32(0x40CEB852u), *algn_10013DCB0), vdupq_n_s32(0xC053D70A), xmmword_10013DCC0));
  sub_10001358C(v515, -0.90757, xmmword_1000EC910);
  v5 = sub_100013568(v515);
  v511 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v512, v5.n128_f32[0]), v503, v5.n128_u64[0], 1), v484, v5, 2), v440, v5, 3);
  v491 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v512, v6.f32[0]), v503, *v6.f32, 1), v484, v6, 2), v440, v6, 3);
  v460 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v512, v7.f32[0]), v503, *v7.f32, 1), v484, v7, 2), v440, v7, 3);
  v408 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v512, v8.f32[0]), v503, *v8.f32, 1), v484, v8, 2), v440, v8, 3);
  sub_10001358C(v516, -0.75049, xmmword_1000EC8E0);
  v9 = sub_100013568(v516);
  v10 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v511, v9.n128_f32[0]), v491, v9.n128_u64[0], 1), v460, v9, 2), v408, v9, 3);
  v485 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v511, v11.f32[0]), v491, *v11.f32, 1), v460, v11, 2), v408, v11, 3);
  v441 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v511, v12.f32[0]), v491, *v12.f32, 1), v460, v12, 2), v408, v12, 3);
  v492 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v511, v13.f32[0]), v491, *v13.f32, 1), v460, v13, 2), v408, v13, 3);
  v504 = v10;
  sub_10001358C(v517, -2.9845, xmmword_1000EC920);
  v14 = sub_100013568(v517);
  v570 = 0;
  *(v3 + 64) = 0x406CCCCD4039999ALL;
  *(v3 + 72) = 1034684465;
  *(v3 + 76) = 1;
  *(v3 + 77) = v575;
  *(v3 + 79) = v576;
  *(v3 + 80) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v504, v14.n128_f32[0]), v485, v14.n128_u64[0], 1), v441, v14, 2), v492, v14, 3);
  *(v3 + 96) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v504, v15.f32[0]), v485, *v15.f32, 1), v441, v15, 2), v492, v15, 3);
  *(v3 + 112) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v504, v16.f32[0]), v485, *v16.f32, 1), v441, v16, 2), v492, v16, 3);
  *(v3 + 128) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v504, v17.f32[0]), v485, *v17.f32, 1), v441, v17, 2), v492, v17, 3);
  *(v3 + 144) = xmmword_1000EFB90;
  *(v3 + 160) = 2;
  v18 = v573;
  *(v3 + 163) = v574;
  *(v3 + 161) = v18;
  *(v3 + 164) = 1107558400;
  *(v3 + 168) = 0;
  *(v3 + 169) = v571;
  *(v3 + 171) = v572;
  *(v3 + 172) = 1060320051;
  *(v3 + 176) = xmmword_1000EFBA0;
  *(v3 + 192) = 0x3F0000003F800000;
  *(v3 + 200) = v570;
  *(v3 + 201) = 0;
  *(v3 + 203) = 1;
  *(v3 + 208) = 0u;
  *(v3 + 224) = sub_100045CAC;
  *(v3 + 232) = 0;
  *(v3 + 240) = 0x3F80000000000000;
  *(v3 + 256) = xmmword_1000EF5A0;
  *(v3 + 272) = 1;
  v19 = vmulq_f32(xmmword_10013DCA0, 0);
  v486 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v442 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v19), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v409 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v19, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v358 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC0A4CCCD)), vdupq_n_s32(0xBDE147AE), *algn_10013DCB0), vdupq_n_s32(0xC0299999), xmmword_10013DCC0));
  sub_10001358C(v518, -0.97738, xmmword_1000EC910);
  v20 = sub_100013568(v518);
  v493 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v486, v20.n128_f32[0]), v442, v20.n128_u64[0], 1), v409, v20, 2), v358, v20, 3);
  v461 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v486, v21.f32[0]), v442, *v21.f32, 1), v409, v21, 2), v358, v21, 3);
  v384 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v486, v22.f32[0]), v442, *v22.f32, 1), v409, v22, 2), v358, v22, 3);
  v359 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v486, v23.f32[0]), v442, *v23.f32, 1), v409, v23, 2), v358, v23, 3);
  sub_10001358C(v519, 0.15708, xmmword_1000EC8E0);
  v24 = sub_100013568(v519);
  v443 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v493, v25.f32[0]), v461, *v25.f32, 1), v384, v25, 2), v359, v25, 3);
  v410 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v493, v26.f32[0]), v461, *v26.f32, 1), v384, v26, 2), v359, v26, 3);
  v487 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v493, v24.n128_f32[0]), v461, v24.n128_u64[0], 1), v384, v24, 2), v359, v24, 3);
  v494 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v493, v27.f32[0]), v461, *v27.f32, 1), v384, v27, 2), v359, v27, 3);
  sub_10001358C(v520, 0.2618, xmmword_1000EC920);
  v28 = sub_100013568(v520);
  v577 = 1;
  *(v3 + 288) = 0x40A0000040600000;
  *(v3 + 296) = 1045220557;
  *(v3 + 300) = 1;
  *(v3 + 301) = v582;
  *(v3 + 303) = v583;
  *(v3 + 304) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v487, v28.n128_f32[0]), v443, v28.n128_u64[0], 1), v410, v28, 2), v494, v28, 3);
  *(v3 + 320) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v487, v29.f32[0]), v443, *v29.f32, 1), v410, v29, 2), v494, v29, 3);
  *(v3 + 336) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v487, v30.f32[0]), v443, *v30.f32, 1), v410, v30, 2), v494, v30, 3);
  *(v3 + 352) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v487, v31.f32[0]), v443, *v31.f32, 1), v410, v31, 2), v494, v31, 3);
  *(v3 + 368) = xmmword_1000EC900;
  *(v3 + 384) = 0;
  v32 = v580;
  *(v3 + 387) = v581;
  *(v3 + 385) = v32;
  *(v3 + 388) = 1082759578;
  *(v3 + 392) = 10;
  *(v3 + 393) = v578;
  *(v3 + 395) = v579;
  *(v3 + 396) = 1065353216;
  *(v3 + 416) = 0;
  *(v3 + 400) = 0u;
  *(v3 + 424) = v577;
  *(v3 + 425) = 0;
  *(v3 + 427) = 0;
  *(v3 + 432) = 0u;
  *(v3 + 448) = sub_100045DA0;
  *(v3 + 456) = 0;
  *(v3 + 464) = 0x3F80000000000000;
  *(v3 + 480) = xmmword_1000EF5D0;
  *(v3 + 496) = 1;
  v33 = vmulq_f32(xmmword_10013DCA0, 0);
  v462 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v385 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v33), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v360 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v33, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v314 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3F1C28F6u)), vdupq_n_s32(0xBE947AE1), *algn_10013DCB0), vdupq_n_s32(0x3E3851EBu), xmmword_10013DCC0));
  sub_10001358C(v521, -0.22689, xmmword_1000EC910);
  v34 = sub_100013568(v521);
  v488 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v462, v34.n128_f32[0]), v385, v34.n128_u64[0], 1), v360, v34, 2), v314, v34, 3);
  v411 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v462, v35.f32[0]), v385, *v35.f32, 1), v360, v35, 2), v314, v35, 3);
  v334 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v462, v36.f32[0]), v385, *v36.f32, 1), v360, v36, 2), v314, v36, 3);
  v315 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v462, v37.f32[0]), v385, *v37.f32, 1), v360, v37, 2), v314, v37, 3);
  sub_10001358C(v522, 0.48869, xmmword_1000EC8E0);
  v38 = sub_100013568(v522);
  v463 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v488, v38.n128_f32[0]), v411, v38.n128_u64[0], 1), v334, v38, 2), v315, v38, 3);
  v386 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v488, v39.f32[0]), v411, *v39.f32, 1), v334, v39, 2), v315, v39, 3);
  v361 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v488, v40.f32[0]), v411, *v40.f32, 1), v334, v40, 2), v315, v40, 3);
  v489 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v488, v41.f32[0]), v411, *v41.f32, 1), v334, v41, 2), v315, v41, 3);
  sub_10001358C(v523, 0.48869, xmmword_1000EC920);
  v42 = sub_100013568(v523);
  v584 = 1;
  *(v3 + 512) = 0x3F2666664039999ALL;
  *(v3 + 520) = 1056964608;
  *(v3 + 524) = 1;
  *(v3 + 525) = v589;
  *(v3 + 527) = v590;
  *(v3 + 528) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v463, v42.n128_f32[0]), v386, v42.n128_u64[0], 1), v361, v42, 2), v489, v42, 3);
  *(v3 + 544) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v463, v43.f32[0]), v386, *v43.f32, 1), v361, v43, 2), v489, v43, 3);
  *(v3 + 560) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v463, v44.f32[0]), v386, *v44.f32, 1), v361, v44, 2), v489, v44, 3);
  *(v3 + 576) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v463, v45.f32[0]), v386, *v45.f32, 1), v361, v45, 2), v489, v45, 3);
  *(v3 + 592) = xmmword_1000EFBB0;
  *(v3 + 608) = 0;
  v46 = v587;
  *(v3 + 611) = v588;
  *(v3 + 609) = v46;
  *(v3 + 612) = 1099956224;
  *(v3 + 616) = 10;
  *(v3 + 617) = v585;
  *(v3 + 619) = v586;
  *(v3 + 620) = 1065353216;
  *(v3 + 640) = 0;
  *(v3 + 624) = 0u;
  *(v3 + 648) = v584;
  *(v3 + 649) = 0;
  *(v3 + 651) = 1;
  *(v3 + 656) = 0u;
  *(v3 + 672) = sub_100045DD0;
  *(v3 + 680) = 0;
  *(v3 + 688) = 0x3F80000000000000;
  *(v3 + 704) = xmmword_1000EF7D0;
  *(v3 + 720) = 1;
  v47 = vmulq_f32(xmmword_10013DCA0, 0);
  v464 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v387 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v47), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v335 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v47, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v295 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBF0CCCCD)), vdupq_n_s32(0x3F70A3D7u), *algn_10013DCB0), vdupq_n_s32(0xBEC7AE14), xmmword_10013DCC0));
  sub_10001358C(v524, -0.43633, xmmword_1000EC910);
  v48 = sub_100013568(v524);
  v412 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v464, v48.n128_f32[0]), v387, v48.n128_u64[0], 1), v335, v48, 2), v295, v48, 3);
  v362 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v464, v49.f32[0]), v387, *v49.f32, 1), v335, v49, 2), v295, v49, 3);
  v316 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v464, v50.f32[0]), v387, *v50.f32, 1), v335, v50, 2), v295, v50, 3);
  v296 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v464, v51.f32[0]), v387, *v51.f32, 1), v335, v51, 2), v295, v51, 3);
  sub_10001358C(v525, 0.15708, xmmword_1000EC8E0);
  v52 = sub_100013568(v525);
  v465 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v412, v52.n128_f32[0]), v362, v52.n128_u64[0], 1), v316, v52, 2), v296, v52, 3);
  v388 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v412, v53.f32[0]), v362, *v53.f32, 1), v316, v53, 2), v296, v53, 3);
  v336 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v412, v54.f32[0]), v362, *v54.f32, 1), v316, v54, 2), v296, v54, 3);
  v413 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v412, v55.f32[0]), v362, *v55.f32, 1), v316, v55, 2), v296, v55, 3);
  sub_10001358C(v526, 0.76794, xmmword_1000EC920);
  v56 = sub_100013568(v526);
  v591 = 1;
  *(v3 + 736) = 0x4020000040200000;
  *(v3 + 744) = 990057071;
  *(v3 + 748) = 1;
  *(v3 + 749) = v596;
  *(v3 + 751) = v597;
  *(v3 + 752) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v465, v56.n128_f32[0]), v388, v56.n128_u64[0], 1), v336, v56, 2), v413, v56, 3);
  *(v3 + 768) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v465, v57.f32[0]), v388, *v57.f32, 1), v336, v57, 2), v413, v57, 3);
  *(v3 + 784) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v465, v58.f32[0]), v388, *v58.f32, 1), v336, v58, 2), v413, v58, 3);
  *(v3 + 800) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v465, v59.f32[0]), v388, *v59.f32, 1), v336, v59, 2), v413, v59, 3);
  *(v3 + 816) = xmmword_1000EC900;
  *(v3 + 832) = 0;
  v60 = v594;
  *(v3 + 835) = v595;
  *(v3 + 833) = v60;
  *(v3 + 836) = 1053273620;
  *(v3 + 840) = 10;
  *(v3 + 841) = v592;
  *(v3 + 843) = v593;
  *(v3 + 844) = 1065353216;
  *(v3 + 848) = 0;
  *(v3 + 856) = 0u;
  *(v3 + 872) = v591;
  *(v3 + 873) = 0;
  *(v3 + 875) = 0;
  *(v3 + 880) = 0u;
  *(v3 + 896) = sub_100081614;
  *(v3 + 904) = 0;
  *(v3 + 912) = 0x3F80000000000000;
  *(v3 + 928) = xmmword_1000EF630;
  *(v3 + 944) = 1;
  v61 = vmulq_f32(xmmword_10013DCA0, 0);
  v414 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v363 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v61), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v337 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v61, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v297 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3CA3D70Au)), vdupq_n_s32(0x4041EB85u), *algn_10013DCB0), vdupq_n_s32(0xBD8F5C29), xmmword_10013DCC0));
  sub_10001358C(v527, -1.0472, xmmword_1000EC910);
  v62 = sub_100013568(v527);
  v495 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v414, v62.n128_f32[0]), v363, v62.n128_u64[0], 1), v337, v62, 2), v297, v62, 3);
  v389 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v414, v63.f32[0]), v363, *v63.f32, 1), v337, v63, 2), v297, v63, 3);
  v317 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v414, v64.f32[0]), v363, *v64.f32, 1), v337, v64, 2), v297, v64, 3);
  v298 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v414, v65.f32[0]), v363, *v65.f32, 1), v337, v65, 2), v297, v65, 3);
  sub_10001358C(v528, -0.83776, xmmword_1000EC8E0);
  v66 = sub_100013568(v528);
  v415 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v495, v66.n128_f32[0]), v389, v66.n128_u64[0], 1), v317, v66, 2), v298, v66, 3);
  v364 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v495, v67.f32[0]), v389, *v67.f32, 1), v317, v67, 2), v298, v67, 3);
  v338 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v495, v68.f32[0]), v389, *v68.f32, 1), v317, v68, 2), v298, v68, 3);
  v496 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v495, v69.f32[0]), v389, *v69.f32, 1), v317, v69, 2), v298, v69, 3);
  sub_10001358C(v529, -1.0647, xmmword_1000EC920);
  v70 = sub_100013568(v529);
  v598 = 1;
  *(v3 + 960) = 0x402666663F800000;
  *(v3 + 968) = 1044549468;
  *(v3 + 972) = 0;
  *(v3 + 973) = v603;
  *(v3 + 975) = v604;
  *(v3 + 976) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v415, v70.n128_f32[0]), v364, v70.n128_u64[0], 1), v338, v70, 2), v496, v70, 3);
  *(v3 + 992) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v415, v71.f32[0]), v364, *v71.f32, 1), v338, v71, 2), v496, v71, 3);
  *(v3 + 1008) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v415, v72.f32[0]), v364, *v72.f32, 1), v338, v72, 2), v496, v72, 3);
  *(v3 + 1024) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v415, v73.f32[0]), v364, *v73.f32, 1), v338, v73, 2), v496, v73, 3);
  *(v3 + 1040) = xmmword_1000EFBC0;
  *(v3 + 1056) = 0;
  v74 = v601;
  *(v3 + 1059) = v602;
  *(v3 + 1057) = v74;
  *(v3 + 1060) = 1070386381;
  *(v3 + 1064) = 9;
  *(v3 + 1065) = v599;
  *(v3 + 1067) = v600;
  *(v3 + 1068) = 1065353216;
  *(v3 + 1072) = 0;
  *(v3 + 1080) = 0u;
  *(v3 + 1096) = v598;
  *(v3 + 1097) = 0;
  *(v3 + 1099) = 0;
  *(v3 + 1104) = 0u;
  *(v3 + 1120) = sub_100081610;
  *(v3 + 1128) = 0;
  *(v3 + 1136) = 0x3F80000000000000;
  *(v3 + 1152) = xmmword_1000EF5A0;
  *(v3 + 1168) = 2;
  v75 = vmulq_f32(xmmword_10013DCA0, 0);
  v416 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v365 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v75), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v339 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v75, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v299 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBEFAE147)), vdupq_n_s32(0x3E4CCCCCu), *algn_10013DCB0), vdupq_n_s32(0x3EFAE147u), xmmword_10013DCC0));
  sub_10001358C(v530, 4.7124, xmmword_1000EC910);
  v76 = sub_100013568(v530);
  v497 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v416, v76.n128_f32[0]), v365, v76.n128_u64[0], 1), v339, v76, 2), v299, v76, 3);
  v390 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v416, v77.f32[0]), v365, *v77.f32, 1), v339, v77, 2), v299, v77, 3);
  v318 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v416, v78.f32[0]), v365, *v78.f32, 1), v339, v78, 2), v299, v78, 3);
  v300 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v416, v79.f32[0]), v365, *v79.f32, 1), v339, v79, 2), v299, v79, 3);
  sub_10001358C(v531, 1.0123, xmmword_1000EC8E0);
  v80 = sub_100013568(v531);
  v417 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v497, v80.n128_f32[0]), v390, v80.n128_u64[0], 1), v318, v80, 2), v300, v80, 3);
  v366 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v497, v81.f32[0]), v390, *v81.f32, 1), v318, v81, 2), v300, v81, 3);
  v340 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v497, v82.f32[0]), v390, *v82.f32, 1), v318, v82, 2), v300, v82, 3);
  v498 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v497, v83.f32[0]), v390, *v83.f32, 1), v318, v83, 2), v300, v83, 3);
  sub_10001358C(v532, 1.5708, xmmword_1000EC920);
  v84 = sub_100013568(v532);
  v605 = 1;
  *(v3 + 1184) = 0x3EBD70A440400000;
  *(v3 + 1192) = 1051260355;
  *(v3 + 1196) = 1;
  *(v3 + 1197) = v610;
  *(v3 + 1199) = v611;
  *(v3 + 1200) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v417, v84.n128_f32[0]), v366, v84.n128_u64[0], 1), v340, v84, 2), v498, v84, 3);
  *(v3 + 1216) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v417, v85.f32[0]), v366, *v85.f32, 1), v340, v85, 2), v498, v85, 3);
  *(v3 + 1232) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v417, v86.f32[0]), v366, *v86.f32, 1), v340, v86, 2), v498, v86, 3);
  *(v3 + 1248) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v417, v87.f32[0]), v366, *v87.f32, 1), v340, v87, 2), v498, v87, 3);
  *(v3 + 1264) = xmmword_1000EFBD0;
  *(v3 + 1280) = 0;
  v88 = v608;
  *(v3 + 1283) = v609;
  *(v3 + 1281) = v88;
  *(v3 + 1284) = 1104150528;
  *(v3 + 1288) = 13;
  *(v3 + 1289) = v606;
  *(v3 + 1291) = v607;
  *(v3 + 1292) = 1065353216;
  *(v3 + 1296) = 0;
  *(v3 + 1304) = 0u;
  *(v3 + 1320) = v605;
  *(v3 + 1321) = 0;
  *(v3 + 1323) = 0;
  *(v3 + 1328) = 0u;
  *(v3 + 1344) = sub_100045E78;
  *(v3 + 1352) = 0;
  *(v3 + 1360) = 0x3F80000000000000;
  *(v3 + 1376) = xmmword_1000EF5C0;
  *(v3 + 1392) = 9;
  v89 = vmulq_f32(xmmword_10013DCA0, 0);
  v391 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v341 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v89), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v319 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v89, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v287 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC0F1EB85)), vdupq_n_s32(0x40BE147Bu), *algn_10013DCB0), vdupq_n_s32(0xC05851EB), xmmword_10013DCC0));
  sub_10001358C(v533, -1.0821, xmmword_1000EC910);
  v90 = sub_100013568(v533);
  v418 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v391, v90.n128_f32[0]), v341, v90.n128_u64[0], 1), v319, v90, 2), v287, v90, 3);
  v367 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v391, v91.f32[0]), v341, *v91.f32, 1), v319, v91, 2), v287, v91, 3);
  v301 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v391, v92.f32[0]), v341, *v92.f32, 1), v319, v92, 2), v287, v92, 3);
  v288 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v391, v93.f32[0]), v341, *v93.f32, 1), v319, v93, 2), v287, v93, 3);
  sub_10001358C(v534, -0.76794, xmmword_1000EC8E0);
  v94 = sub_100013568(v534);
  v342 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v418, v95.f32[0]), v367, *v95.f32, 1), v301, v95, 2), v288, v95, 3);
  v320 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v418, v96.f32[0]), v367, *v96.f32, 1), v301, v96, 2), v288, v96, 3);
  v392 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v418, v94.n128_f32[0]), v367, v94.n128_u64[0], 1), v301, v94, 2), v288, v94, 3);
  v419 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v418, v97.f32[0]), v367, *v97.f32, 1), v301, v97, 2), v288, v97, 3);
  sub_10001358C(v535, -3.1241, xmmword_1000EC920);
  v98 = sub_100013568(v535);
  v612 = 0;
  *(v3 + 1408) = 0x4098A3D7403C28F6;
  *(v3 + 1416) = 1008981770;
  *(v3 + 1420) = 1;
  *(v3 + 1421) = v617;
  *(v3 + 1423) = v618;
  *(v3 + 1424) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v392, v98.n128_f32[0]), v342, v98.n128_u64[0], 1), v320, v98, 2), v419, v98, 3);
  *(v3 + 1440) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v392, v99.f32[0]), v342, *v99.f32, 1), v320, v99, 2), v419, v99, 3);
  *(v3 + 1456) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v392, v100.f32[0]), v342, *v100.f32, 1), v320, v100, 2), v419, v100, 3);
  *(v3 + 1472) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v392, v101.f32[0]), v342, *v101.f32, 1), v320, v101, 2), v419, v101, 3);
  *(v3 + 1488) = xmmword_1000EFBE0;
  *(v3 + 1504) = 2;
  v102 = v615;
  *(v3 + 1507) = v616;
  *(v3 + 1505) = v102;
  *(v3 + 1508) = 1070386381;
  *(v3 + 1512) = 1;
  *(v3 + 1513) = v613;
  *(v3 + 1515) = v614;
  *(v3 + 1516) = 1051931443;
  *(v3 + 1520) = xmmword_1000EFBF0;
  *(v3 + 1536) = 0x3F8000003F800000;
  *(v3 + 1544) = v612;
  *(v3 + 1545) = 1;
  *(v3 + 1547) = 1;
  *(v3 + 1552) = 0u;
  *(v3 + 1568) = sub_100045F20;
  *(v3 + 1576) = 0;
  *(v3 + 1584) = 0x3F80000000000000;
  *(v3 + 1600) = xmmword_1000EF5A0;
  *(v3 + 1616) = 3;
  v103 = vmulq_f32(xmmword_10013DCA0, 0);
  v393 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v343 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v103), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v321 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v103, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v289 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC018F5C2)), vdupq_n_s32(0xBF68F5C2), *algn_10013DCB0), vdupq_n_s32(0xC0B50E55), xmmword_10013DCC0));
  sub_10001358C(v536, -0.43633, xmmword_1000EC910);
  v104 = sub_100013568(v536);
  v420 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v393, v104.n128_f32[0]), v343, v104.n128_u64[0], 1), v321, v104, 2), v289, v104, 3);
  v368 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v393, v105.f32[0]), v343, *v105.f32, 1), v321, v105, 2), v289, v105, 3);
  v302 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v393, v106.f32[0]), v343, *v106.f32, 1), v321, v106, 2), v289, v106, 3);
  v290 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v393, v107.f32[0]), v343, *v107.f32, 1), v321, v107, 2), v289, v107, 3);
  sub_10001358C(v537, 0.15708, xmmword_1000EC8E0);
  v108 = sub_100013568(v537);
  v344 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v420, v109.f32[0]), v368, *v109.f32, 1), v302, v109, 2), v290, v109, 3);
  v322 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v420, v110.f32[0]), v368, *v110.f32, 1), v302, v110, 2), v290, v110, 3);
  v394 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v420, v108.n128_f32[0]), v368, v108.n128_u64[0], 1), v302, v108, 2), v290, v108, 3);
  v421 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v420, v111.f32[0]), v368, *v111.f32, 1), v302, v111, 2), v290, v111, 3);
  sub_10001358C(v538, 0.76794, xmmword_1000EC920);
  v112 = sub_100013568(v538);
  v619 = 1;
  *(v3 + 1632) = 0x4013333340600000;
  *(v3 + 1640) = 0;
  *(v3 + 1644) = 1;
  *(v3 + 1645) = v624;
  *(v3 + 1647) = v625;
  *(v3 + 1648) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v394, v112.n128_f32[0]), v344, v112.n128_u64[0], 1), v322, v112, 2), v421, v112, 3);
  *(v3 + 1664) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v394, v113.f32[0]), v344, *v113.f32, 1), v322, v113, 2), v421, v113, 3);
  *(v3 + 1680) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v394, v114.f32[0]), v344, *v114.f32, 1), v322, v114, 2), v421, v114, 3);
  *(v3 + 1696) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v394, v115.f32[0]), v344, *v115.f32, 1), v322, v115, 2), v421, v115, 3);
  *(v3 + 1712) = xmmword_1000EFC00;
  *(v3 + 1728) = 0;
  v116 = v622;
  *(v3 + 1731) = v623;
  *(v3 + 1729) = v116;
  *(v3 + 1732) = 1066192077;
  *(v3 + 1736) = 10;
  *(v3 + 1737) = v620;
  *(v3 + 1739) = v621;
  *(v3 + 1740) = 1065353216;
  *(v3 + 1744) = 0;
  *(v3 + 1752) = 0u;
  *(v3 + 1768) = v619;
  *(v3 + 1769) = 1;
  *(v3 + 1771) = 1;
  *(v3 + 1776) = 0u;
  *(v3 + 1792) = sub_1000815FC;
  *(v3 + 1800) = 0;
  *(v3 + 1808) = 0x3F80000000000000;
  *(v3 + 1824) = xmmword_1000EF5C0;
  *(v3 + 1840) = 3;
  v117 = vmulq_f32(xmmword_10013DCA0, 0);
  v395 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v345 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v117), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v323 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v117, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v291 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3F147AE1u)), vdupq_n_s32(0x3CF5C28Fu), *algn_10013DCB0), vdupq_n_s32(0xBF547AE1), xmmword_10013DCC0));
  sub_10001358C(v539, 0.38397, xmmword_1000EC910);
  v118 = sub_100013568(v539);
  v422 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v395, v118.n128_f32[0]), v345, v118.n128_u64[0], 1), v323, v118, 2), v291, v118, 3);
  v369 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v395, v119.f32[0]), v345, *v119.f32, 1), v323, v119, 2), v291, v119, 3);
  v303 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v395, v120.f32[0]), v345, *v120.f32, 1), v323, v120, 2), v291, v120, 3);
  v292 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v395, v121.f32[0]), v345, *v121.f32, 1), v323, v121, 2), v291, v121, 3);
  sub_10001358C(v540, -0.50615, xmmword_1000EC8E0);
  v122 = sub_100013568(v540);
  v346 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v422, v123.f32[0]), v369, *v123.f32, 1), v303, v123, 2), v292, v123, 3);
  v324 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v422, v124.f32[0]), v369, *v124.f32, 1), v303, v124, 2), v292, v124, 3);
  v396 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v422, v122.n128_f32[0]), v369, v122.n128_u64[0], 1), v303, v122, 2), v292, v122, 3);
  v423 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v422, v125.f32[0]), v369, *v125.f32, 1), v303, v125, 2), v292, v125, 3);
  sub_10001358C(v541, 0.90757, xmmword_1000EC920);
  v126 = sub_100013568(v541);
  v626 = 1;
  *(v3 + 1856) = 0x3F47AE14400CCCCDLL;
  *(v3 + 1864) = 1056964608;
  *(v3 + 1868) = 1;
  *(v3 + 1869) = v631;
  *(v3 + 1871) = v632;
  *(v3 + 1872) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v396, v126.n128_f32[0]), v346, v126.n128_u64[0], 1), v324, v126, 2), v423, v126, 3);
  *(v3 + 1888) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v396, v127.f32[0]), v346, *v127.f32, 1), v324, v127, 2), v423, v127, 3);
  *(v3 + 1904) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v396, v128.f32[0]), v346, *v128.f32, 1), v324, v128, 2), v423, v128, 3);
  *(v3 + 1920) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v396, v129.f32[0]), v346, *v129.f32, 1), v324, v129, 2), v423, v129, 3);
  *(v3 + 1936) = xmmword_1000EFC10;
  *(v3 + 1952) = 0;
  v130 = v629;
  *(v3 + 1955) = v630;
  *(v3 + 1953) = v130;
  *(v3 + 1956) = 1072902963;
  *(v3 + 1960) = 10;
  *(v3 + 1961) = v627;
  *(v3 + 1963) = v628;
  *(v3 + 1964) = 1065353216;
  *(v3 + 1968) = 0;
  *(v3 + 1976) = 0u;
  *(v3 + 1992) = v626;
  *(v3 + 1993) = 1;
  *(v3 + 1995) = 1;
  *(v3 + 2000) = 0u;
  *(v3 + 2016) = sub_100046014;
  *(v3 + 2024) = 0;
  *(v3 + 2032) = 0x3F80000000000000;
  *(v3 + 2048) = xmmword_1000EF5D0;
  *(v3 + 2064) = 3;
  v131 = vmulq_f32(xmmword_10013DCA0, 0);
  v424 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v370 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v131), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v325 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v131, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v304 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC031EB85)), vdupq_n_s32(0xBF3AE147), *algn_10013DCB0), vdupq_n_s32(0xC0899999), xmmword_10013DCC0));
  sub_10001358C(v542, -0.43633, xmmword_1000EC910);
  v132 = sub_100013568(v542);
  v444 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v424, v132.n128_f32[0]), v370, v132.n128_u64[0], 1), v325, v132, 2), v304, v132, 3);
  v397 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v424, v133.f32[0]), v370, *v133.f32, 1), v325, v133, 2), v304, v133, 3);
  v347 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v424, v134.f32[0]), v370, *v134.f32, 1), v325, v134, 2), v304, v134, 3);
  v305 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v424, v135.f32[0]), v370, *v135.f32, 1), v325, v135, 2), v304, v135, 3);
  sub_10001358C(v543, 0.15359, xmmword_1000EC8E0);
  v136 = sub_100013568(v543);
  v371 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v444, v137.f32[0]), v397, *v137.f32, 1), v347, v137, 2), v305, v137, 3);
  v326 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v444, v138.f32[0]), v397, *v138.f32, 1), v347, v138, 2), v305, v138, 3);
  v425 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v444, v136.n128_f32[0]), v397, v136.n128_u64[0], 1), v347, v136, 2), v305, v136, 3);
  v445 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v444, v139.f32[0]), v397, *v139.f32, 1), v347, v139, 2), v305, v139, 3);
  sub_10001358C(v544, 0.76794, xmmword_1000EC920);
  v140 = sub_100013568(v544);
  v633 = 1;
  *(v3 + 2080) = 0x3FA7EF9E4037BE77;
  *(v3 + 2088) = 1025758986;
  *(v3 + 2092) = 1;
  *(v3 + 2093) = v638;
  *(v3 + 2095) = v639;
  *(v3 + 2096) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v425, v140.n128_f32[0]), v371, v140.n128_u64[0], 1), v326, v140, 2), v445, v140, 3);
  *(v3 + 2112) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v425, v141.f32[0]), v371, *v141.f32, 1), v326, v141, 2), v445, v141, 3);
  *(v3 + 2128) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v425, v142.f32[0]), v371, *v142.f32, 1), v326, v142, 2), v445, v142, 3);
  *(v3 + 2144) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v425, v143.f32[0]), v371, *v143.f32, 1), v326, v143, 2), v445, v143, 3);
  *(v3 + 2160) = xmmword_1000EFC20;
  *(v3 + 2176) = 0;
  v144 = v636;
  *(v3 + 2179) = v637;
  *(v3 + 2177) = v144;
  *(v3 + 2180) = 1051260355;
  *(v3 + 2184) = 10;
  *(v3 + 2185) = v634;
  *(v3 + 2187) = v635;
  *(v3 + 2188) = 1065353216;
  *(v3 + 2192) = 0;
  *(v3 + 2200) = 0u;
  *(v3 + 2216) = v633;
  *(v3 + 2217) = 1;
  *(v3 + 2219) = 0;
  *(v3 + 2224) = 0u;
  *(v3 + 2240) = sub_100081614;
  *(v3 + 2248) = 0;
  *(v3 + 2256) = 0x3F80000000000000;
  *(v3 + 2272) = xmmword_1000EF7D0;
  *(v3 + 2288) = 3;
  v145 = vmulq_f32(xmmword_10013DCA0, 0);
  v426 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v372 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v145), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v348 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v145, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v306 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBFD1EB85)), vdupq_n_s32(0xBFF99999), *algn_10013DCB0), vdupq_n_s32(0xC0933333), xmmword_10013DCC0));
  sub_10001358C(v545, -0.50615, xmmword_1000EC910);
  v146 = sub_100013568(v545);
  v446 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v426, v146.n128_f32[0]), v372, v146.n128_u64[0], 1), v348, v146, 2), v306, v146, 3);
  v398 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v426, v147.f32[0]), v372, *v147.f32, 1), v348, v147, 2), v306, v147, 3);
  v327 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v426, v148.f32[0]), v372, *v148.f32, 1), v348, v148, 2), v306, v148, 3);
  v307 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v426, v149.f32[0]), v372, *v149.f32, 1), v348, v149, 2), v306, v149, 3);
  sub_10001358C(v546, -0.13265, xmmword_1000EC8E0);
  v150 = sub_100013568(v546);
  v373 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v446, v151.f32[0]), v398, *v151.f32, 1), v327, v151, 2), v307, v151, 3);
  v349 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v446, v152.f32[0]), v398, *v152.f32, 1), v327, v152, 2), v307, v152, 3);
  v427 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v446, v150.n128_f32[0]), v398, v150.n128_u64[0], 1), v327, v150, 2), v307, v150, 3);
  v447 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v446, v153.f32[0]), v398, *v153.f32, 1), v327, v153, 2), v307, v153, 3);
  sub_10001358C(v547, 0.16406, xmmword_1000EC920);
  v154 = sub_100013568(v547);
  v640 = 1;
  *(v3 + 2304) = 0x4090000040466666;
  *(v3 + 2312) = 1040522936;
  *(v3 + 2316) = 1;
  *(v3 + 2317) = v645;
  *(v3 + 2319) = v646;
  *(v3 + 2320) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v427, v154.n128_f32[0]), v373, v154.n128_u64[0], 1), v349, v154, 2), v447, v154, 3);
  *(v3 + 2336) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v427, v155.f32[0]), v373, *v155.f32, 1), v349, v155, 2), v447, v155, 3);
  *(v3 + 2352) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v427, v156.f32[0]), v373, *v156.f32, 1), v349, v156, 2), v447, v156, 3);
  *(v3 + 2368) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v427, v157.f32[0]), v373, *v157.f32, 1), v349, v157, 2), v447, v157, 3);
  *(v3 + 2384) = xmmword_1000EFC30;
  *(v3 + 2400) = 0;
  v158 = v643;
  *(v3 + 2403) = v644;
  *(v3 + 2401) = v158;
  *(v3 + 2404) = 1080452710;
  *(v3 + 2408) = 10;
  *(v3 + 2409) = v641;
  *(v3 + 2411) = v642;
  *(v3 + 2412) = 1065353216;
  *(v3 + 2416) = 0;
  *(v3 + 2424) = 0u;
  *(v3 + 2440) = v640;
  *(v3 + 2441) = 257;
  *(v3 + 2443) = 0;
  *(v3 + 2448) = 0u;
  *(v3 + 2464) = sub_1000460BC;
  *(v3 + 2472) = 0;
  *(v3 + 2480) = 0x3F80000000000000;
  *(v3 + 2496) = xmmword_1000EF5A0;
  *(v3 + 2512) = 4;
  v159 = vmulq_f32(xmmword_10013DCA0, 0);
  v428 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v374 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v159), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v350 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v159, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v308 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3E8A3D70u)), vdupq_n_s32(0x3F0A3D70u), *algn_10013DCB0), vdupq_n_s32(0xBE199999), xmmword_10013DCC0));
  sub_10001358C(v548, 1.5708, xmmword_1000EC910);
  v160 = sub_100013568(v548);
  v448 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v428, v160.n128_f32[0]), v374, v160.n128_u64[0], 1), v350, v160, 2), v308, v160, 3);
  v399 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v428, v161.f32[0]), v374, *v161.f32, 1), v350, v161, 2), v308, v161, 3);
  v328 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v428, v162.f32[0]), v374, *v162.f32, 1), v350, v162, 2), v308, v162, 3);
  v309 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v428, v163.f32[0]), v374, *v163.f32, 1), v350, v163, 2), v308, v163, 3);
  sub_10001358C(v549, -0.82903, xmmword_1000EC8E0);
  v164 = sub_100013568(v549);
  v375 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v448, v165.f32[0]), v399, *v165.f32, 1), v328, v165, 2), v309, v165, 3);
  v351 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v448, v166.f32[0]), v399, *v166.f32, 1), v328, v166, 2), v309, v166, 3);
  v429 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v448, v164.n128_f32[0]), v399, v164.n128_u64[0], 1), v328, v164, 2), v309, v164, 3);
  v449 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v448, v167.f32[0]), v399, *v167.f32, 1), v328, v167, 2), v309, v167, 3);
  sub_10001358C(v550, 1.5708, xmmword_1000EC920);
  v168 = sub_100013568(v550);
  v647 = 1;
  *(v3 + 2528) = 0x400000003FB33333;
  *(v3 + 2536) = 1055622431;
  *(v3 + 2540) = 1;
  *(v3 + 2541) = v652;
  *(v3 + 2543) = v653;
  *(v3 + 2544) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v429, v168.n128_f32[0]), v375, v168.n128_u64[0], 1), v351, v168, 2), v449, v168, 3);
  *(v3 + 2560) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v429, v169.f32[0]), v375, *v169.f32, 1), v351, v169, 2), v449, v169, 3);
  *(v3 + 2576) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v429, v170.f32[0]), v375, *v170.f32, 1), v351, v170, 2), v449, v170, 3);
  *(v3 + 2592) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v429, v171.f32[0]), v375, *v171.f32, 1), v351, v171, 2), v449, v171, 3);
  *(v3 + 2608) = xmmword_1000EFC40;
  *(v3 + 2624) = 0;
  v172 = v650;
  *(v3 + 2627) = v651;
  *(v3 + 2625) = v172;
  *(v3 + 2628) = 1079194419;
  *(v3 + 2632) = 9;
  *(v3 + 2633) = v648;
  *(v3 + 2635) = v649;
  *(v3 + 2636) = 1065353216;
  *(v3 + 2640) = 0;
  *(v3 + 2648) = 0u;
  *(v3 + 2664) = v647;
  *(v3 + 2665) = 1;
  *(v3 + 2667) = 1;
  *(v3 + 2672) = 0u;
  *(v3 + 2688) = sub_1000460EC;
  *(v3 + 2696) = 0;
  *(v3 + 2704) = 0x3F68BA2F00000000;
  *(v3 + 2720) = xmmword_1000EF5A0;
  *(v3 + 2736) = 6;
  v173 = vmulq_f32(xmmword_10013DCA0, 0);
  v400 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v352 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v173), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v310 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v173, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v450 = vdupq_n_s32(0xBF8E147B);
  v293 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBE6B851E)), vdupq_n_s32(0x3F0CCCCDu), *algn_10013DCB0), v450, xmmword_10013DCC0));
  sub_10001358C(v551, 1.5708, xmmword_1000EC910);
  v174 = sub_100013568(v551);
  v430 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v400, v174.n128_f32[0]), v352, v174.n128_u64[0], 1), v310, v174, 2), v293, v174, 3);
  v376 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v400, v175.f32[0]), v352, *v175.f32, 1), v310, v175, 2), v293, v175, 3);
  v329 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v400, v176.f32[0]), v352, *v176.f32, 1), v310, v176, 2), v293, v176, 3);
  v294 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v400, v177.f32[0]), v352, *v177.f32, 1), v310, v177, 2), v293, v177, 3);
  sub_10001358C(v552, -3.4034, xmmword_1000EC8E0);
  v178 = sub_100013568(v552);
  v353 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v430, v179.f32[0]), v376, *v179.f32, 1), v329, v179, 2), v294, v179, 3);
  v311 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v430, v180.f32[0]), v376, *v180.f32, 1), v329, v180, 2), v294, v180, 3);
  v401 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v430, v178.n128_f32[0]), v376, v178.n128_u64[0], 1), v329, v178, 2), v294, v178, 3);
  v431 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v430, v181.f32[0]), v376, *v181.f32, 1), v329, v181, 2), v294, v181, 3);
  sub_10001358C(v553, 1.5708, xmmword_1000EC920);
  v182 = sub_100013568(v553);
  v654 = 1;
  *(v3 + 2752) = 0x3F59999A3F5C28F6;
  *(v3 + 2760) = 1056964608;
  *(v3 + 2764) = 1;
  *(v3 + 2765) = v659;
  *(v3 + 2767) = v660;
  *(v3 + 2768) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v401, v182.n128_f32[0]), v353, v182.n128_u64[0], 1), v311, v182, 2), v431, v182, 3);
  *(v3 + 2784) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v401, v183.f32[0]), v353, *v183.f32, 1), v311, v183, 2), v431, v183, 3);
  *(v3 + 2800) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v401, v184.f32[0]), v353, *v184.f32, 1), v311, v184, 2), v431, v184, 3);
  *(v3 + 2816) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v401, v185.f32[0]), v353, *v185.f32, 1), v311, v185, 2), v431, v185, 3);
  *(v3 + 2832) = xmmword_1000EFC50;
  *(v3 + 2848) = 0;
  v186 = v657;
  *(v3 + 2851) = v658;
  *(v3 + 2849) = v186;
  *(v3 + 2852) = 1056629064;
  *(v3 + 2856) = 9;
  *(v3 + 2857) = v655;
  *(v3 + 2859) = v656;
  *(v3 + 2860) = 1065353216;
  *(v3 + 2864) = 0;
  *(v3 + 2872) = 0u;
  *(v3 + 2888) = v654;
  *(v3 + 2889) = 2;
  *(v3 + 2891) = 1;
  *(v3 + 2928) = 0;
  *(v3 + 2912) = 0u;
  *(v3 + 2896) = 0u;
  *(v3 + 2932) = 1065353216;
  *(v3 + 2944) = xmmword_1000EF5C0;
  v187 = *algn_10013DCB0;
  v188 = vmulq_f32(xmmword_10013DCA0, 0);
  v189 = xmmword_10013DCC0;
  v190 = xmmword_10013DCD0;
  v191 = vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBE570A3D));
  v432 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v3 + 2960) = 6;
  v377 = vmlaq_f32(vmlaq_f32(vaddq_f32(v187, v188), 0, v189), 0, v190);
  v330 = vmlaq_f32(vaddq_f32(v189, vmlaq_f32(v188, 0, v187)), 0, v190);
  v312 = vaddq_f32(v190, vmlaq_f32(vmlaq_f32(v191, vdupq_n_s32(0xBF11EB85), v187), v450, v189));
  sub_10001358C(v554, 1.5708, xmmword_1000EC910);
  v192 = sub_100013568(v554);
  v451 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v432, v192.n128_f32[0]), v377, v192.n128_u64[0], 1), v330, v192, 2), v312, v192, 3);
  v402 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v432, v193.f32[0]), v377, *v193.f32, 1), v330, v193, 2), v312, v193, 3);
  v354 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v432, v194.f32[0]), v377, *v194.f32, 1), v330, v194, 2), v312, v194, 3);
  v313 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v432, v195.f32[0]), v377, *v195.f32, 1), v330, v195, 2), v312, v195, 3);
  sub_10001358C(v555, -2.4609, xmmword_1000EC8E0);
  v196 = sub_100013568(v555);
  v378 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v451, v197.f32[0]), v402, *v197.f32, 1), v354, v197, 2), v313, v197, 3);
  v331 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v451, v198.f32[0]), v402, *v198.f32, 1), v354, v198, 2), v313, v198, 3);
  v433 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v451, v196.n128_f32[0]), v402, v196.n128_u64[0], 1), v354, v196, 2), v313, v196, 3);
  v452 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v451, v199.f32[0]), v402, *v199.f32, 1), v354, v199, 2), v313, v199, 3);
  sub_10001358C(v556, 1.5708, xmmword_1000EC920);
  v200 = sub_100013568(v556);
  v661 = 1;
  *(v3 + 2976) = 0x3F2B851F3FF33333;
  *(v3 + 2984) = 1056964608;
  *(v3 + 2988) = 1;
  *(v3 + 2989) = v666;
  *(v3 + 2991) = v667;
  *(v3 + 2992) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v433, v200.n128_f32[0]), v378, v200.n128_u64[0], 1), v331, v200, 2), v452, v200, 3);
  *(v3 + 3008) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v433, v201.f32[0]), v378, *v201.f32, 1), v331, v201, 2), v452, v201, 3);
  *(v3 + 3024) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v433, v202.f32[0]), v378, *v202.f32, 1), v331, v202, 2), v452, v202, 3);
  *(v3 + 3040) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v433, v203.f32[0]), v378, *v203.f32, 1), v331, v203, 2), v452, v203, 3);
  *(v3 + 3056) = xmmword_1000EFC60;
  *(v3 + 3072) = 0;
  v204 = v664;
  *(v3 + 3075) = v665;
  *(v3 + 3073) = v204;
  *(v3 + 3076) = 1060487823;
  *(v3 + 3080) = 9;
  *(v3 + 3081) = v662;
  *(v3 + 3083) = v663;
  *(v3 + 3084) = 1065353216;
  *(v3 + 3088) = 0;
  *(v3 + 3096) = 0u;
  *(v3 + 3112) = v661;
  *(v3 + 3113) = 2;
  *(v3 + 3115) = 1;
  v205 = *algn_10013DCB0;
  v206 = vmulq_f32(xmmword_10013DCA0, 0);
  __asm { FMOV            V3.4S, #-4.0 }

  v212 = vmulq_f32(xmmword_10013DCA0, _Q3);
  v213 = xmmword_10013DCC0;
  v214 = xmmword_10013DCD0;
  v453 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v3 + 3152) = 0;
  *(v3 + 3136) = 0u;
  v434 = vmlaq_f32(vmlaq_f32(vaddq_f32(v205, v206), 0, v213), 0, v214);
  *(v3 + 3120) = 0u;
  *(v3 + 3156) = 1061158912;
  v379 = vmlaq_f32(vaddq_f32(v213, vmlaq_f32(v206, 0, v205)), 0, v214);
  *(v3 + 3168) = xmmword_1000EF630;
  v332 = vaddq_f32(v214, vmlaq_f32(vmlaq_f32(v212, vdupq_n_s32(0x409851EBu), v205), vdupq_n_s32(0x40566666u), v213));
  *(v3 + 3184) = 9;
  sub_10001358C(v557, -1.2392, xmmword_1000EC910);
  v215 = sub_100013568(v557);
  v466 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v453, v215.n128_f32[0]), v434, v215.n128_u64[0], 1), v379, v215, 2), v332, v215, 3);
  v403 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v453, v216.f32[0]), v434, *v216.f32, 1), v379, v216, 2), v332, v216, 3);
  v355 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v453, v217.f32[0]), v434, *v217.f32, 1), v379, v217, 2), v332, v217, 3);
  v333 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v453, v218.f32[0]), v434, *v218.f32, 1), v379, v218, 2), v332, v218, 3);
  sub_10001358C(v558, -0.73304, xmmword_1000EC8E0);
  v219 = sub_100013568(v558);
  v435 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v466, v220.f32[0]), v403, *v220.f32, 1), v355, v220, 2), v333, v220, 3);
  v454 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v466, v219.n128_f32[0]), v403, v219.n128_u64[0], 1), v355, v219, 2), v333, v219, 3);
  v380 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v466, v221.f32[0]), v403, *v221.f32, 1), v355, v221, 2), v333, v221, 3);
  v467 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v466, v222.f32[0]), v403, *v222.f32, 1), v355, v222, 2), v333, v222, 3);
  sub_10001358C(v559, -0.17453, xmmword_1000EC920);
  v223 = sub_100013568(v559);
  v668 = 0;
  *(v3 + 3200) = 0x4060000040333333;
  *(v3 + 3208) = 1048911544;
  *(v3 + 3212) = 1;
  *(v3 + 3213) = v673;
  *(v3 + 3215) = v674;
  *(v3 + 3216) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v454, v223.n128_f32[0]), v435, v223.n128_u64[0], 1), v380, v223, 2), v467, v223, 3);
  *(v3 + 3232) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v454, v224.f32[0]), v435, *v224.f32, 1), v380, v224, 2), v467, v224, 3);
  *(v3 + 3248) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v454, v225.f32[0]), v435, *v225.f32, 1), v380, v225, 2), v467, v225, 3);
  *(v3 + 3264) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v454, v226.f32[0]), v435, *v226.f32, 1), v380, v226, 2), v467, v226, 3);
  *(v3 + 3280) = xmmword_1000EFC70;
  *(v3 + 3296) = 1;
  v227 = v671;
  *(v3 + 3299) = v672;
  *(v3 + 3297) = v227;
  *(v3 + 3300) = 1061830001;
  *(v3 + 3304) = 1;
  *(v3 + 3305) = v669;
  *(v3 + 3307) = v670;
  *(v3 + 3308) = 1058139013;
  *(v3 + 3312) = xmmword_1000EFC80;
  *(v3 + 3328) = 0x3F51EB8500000000;
  *(v3 + 3336) = v668;
  *(v3 + 3337) = 3;
  *(v3 + 3339) = 1;
  *(v3 + 3344) = 0u;
  *(v3 + 3360) = sub_100046194;
  *(v3 + 3368) = 0;
  *(v3 + 3376) = 0x3F80000000000000;
  *(v3 + 3392) = xmmword_1000EF5A0;
  *(v3 + 3408) = 5;
  v228 = vmulq_f32(xmmword_10013DCA0, 0);
  v505 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v455 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v228), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v404 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v228, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v356 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3FC51EB8u)), vdupq_n_s32(0xBF6B851E), *algn_10013DCB0), vdupq_n_s32(0x4008F5C2u), xmmword_10013DCC0));
  sub_10001358C(v560, 6.2308, xmmword_1000EC910);
  v229 = sub_100013568(v560);
  v468 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v505, v229.n128_f32[0]), v455, v229.n128_u64[0], 1), v404, v229, 2), v356, v229, 3);
  v436 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v505, v230.f32[0]), v455, *v230.f32, 1), v404, v230, 2), v356, v230, 3);
  v381 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v505, v231.f32[0]), v455, *v231.f32, 1), v404, v231, 2), v356, v231, 3);
  v357 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v505, v232.f32[0]), v455, *v232.f32, 1), v404, v232, 2), v356, v232, 3);
  sub_10001358C(v561, 0.0, xmmword_1000EC8E0);
  v233 = sub_100013568(v561);
  v506 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v468, v233.n128_f32[0]), v436, v233.n128_u64[0], 1), v381, v233, 2), v357, v233, 3);
  v456 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v468, v234.f32[0]), v436, *v234.f32, 1), v381, v234, 2), v357, v234, 3);
  v405 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v468, v235.f32[0]), v436, *v235.f32, 1), v381, v235, 2), v357, v235, 3);
  v469 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v468, v236.f32[0]), v436, *v236.f32, 1), v381, v236, 2), v357, v236, 3);
  sub_10001358C(v562, -0.92502, xmmword_1000EC920);
  v237 = sub_100013568(v562);
  v675 = 1;
  *(v3 + 3424) = 0x4046666640066666;
  *(v3 + 3432) = 1050253722;
  *(v3 + 3436) = 0;
  *(v3 + 3437) = v680;
  *(v3 + 3439) = v681;
  *(v3 + 3440) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v506, v237.n128_f32[0]), v456, v237.n128_u64[0], 1), v405, v237, 2), v469, v237, 3);
  *(v3 + 3456) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v506, v238.f32[0]), v456, *v238.f32, 1), v405, v238, 2), v469, v238, 3);
  *(v3 + 3472) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v506, v239.f32[0]), v456, *v239.f32, 1), v405, v239, 2), v469, v239, 3);
  *(v3 + 3488) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v506, v240.f32[0]), v456, *v240.f32, 1), v405, v240, 2), v469, v240, 3);
  *(v3 + 3504) = xmmword_1000EFC90;
  *(v3 + 3520) = 0;
  v241 = v678;
  *(v3 + 3523) = v679;
  *(v3 + 3521) = v241;
  *(v3 + 3524) = 1069547520;
  *(v3 + 3528) = 9;
  *(v3 + 3529) = v676;
  *(v3 + 3531) = v677;
  *(v3 + 3532) = 1065353216;
  *(v3 + 3536) = 0;
  *(v3 + 3544) = 0u;
  *(v3 + 3560) = v675;
  *(v3 + 3561) = 3;
  *(v3 + 3563) = 1;
  *(v3 + 3568) = 0u;
  *(v3 + 3584) = sub_1000461C4;
  *(v3 + 3592) = 0;
  *(v3 + 3600) = 0x3F80000000000000;
  *(v3 + 3616) = xmmword_1000EF5C0;
  *(v3 + 3632) = 5;
  v242 = vmulq_f32(xmmword_10013DCA0, 0);
  v499 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v457 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v242), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v437 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v242, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v382 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC008F5C2)), vdupq_n_s32(0x3F07AE14u), *algn_10013DCB0), vdupq_n_s32(0x400B851Fu), xmmword_10013DCC0));
  sub_10001358C(v563, -0.69813, xmmword_1000EC910);
  v243 = sub_100013568(v563);
  v507 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v499, v243.n128_f32[0]), v457, v243.n128_u64[0], 1), v437, v243, 2), v382, v243, 3);
  v470 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v499, v244.f32[0]), v457, *v244.f32, 1), v437, v244, 2), v382, v244, 3);
  v406 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v499, v245.f32[0]), v457, *v245.f32, 1), v437, v245, 2), v382, v245, 3);
  v383 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v499, v246.f32[0]), v457, *v246.f32, 1), v437, v246, 2), v382, v246, 3);
  sub_10001358C(v564, 0.0, xmmword_1000EC8E0);
  v247 = sub_100013568(v564);
  v458 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v507, v248.f32[0]), v470, *v248.f32, 1), v406, v248, 2), v383, v248, 3);
  v438 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v507, v249.f32[0]), v470, *v249.f32, 1), v406, v249, 2), v383, v249, 3);
  v500 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v507, v247.n128_f32[0]), v470, v247.n128_u64[0], 1), v406, v247, 2), v383, v247, 3);
  v508 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v507, v250.f32[0]), v470, *v250.f32, 1), v406, v250, 2), v383, v250, 3);
  sub_10001358C(v565, 0.0, xmmword_1000EC920);
  v251 = sub_100013568(v565);
  v682 = 1;
  *(v3 + 3648) = 0x406147AE3FBD70A4;
  *(v3 + 3656) = 1048576000;
  *(v3 + 3660) = 0;
  *(v3 + 3661) = v687;
  *(v3 + 3663) = v688;
  *(v3 + 3664) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v500, v251.n128_f32[0]), v458, v251.n128_u64[0], 1), v438, v251, 2), v508, v251, 3);
  *(v3 + 3680) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v500, v252.f32[0]), v458, *v252.f32, 1), v438, v252, 2), v508, v252, 3);
  *(v3 + 3696) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v500, v253.f32[0]), v458, *v253.f32, 1), v438, v253, 2), v508, v253, 3);
  *(v3 + 3712) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v500, v254.f32[0]), v458, *v254.f32, 1), v438, v254, 2), v508, v254, 3);
  *(v3 + 3728) = xmmword_1000EFCA0;
  *(v3 + 3744) = 0;
  v255 = v685;
  *(v3 + 3747) = v686;
  *(v3 + 3745) = v255;
  *(v3 + 3748) = 1061830001;
  *(v3 + 3752) = 9;
  *(v3 + 3753) = v683;
  *(v3 + 3755) = v684;
  *(v3 + 3756) = 1065353216;
  *(v3 + 3760) = 0;
  *(v3 + 3768) = 0u;
  *(v3 + 3784) = v682;
  *(v3 + 3785) = 3;
  *(v3 + 3787) = 1;
  *(v3 + 3792) = 0u;
  *(v3 + 3808) = sub_1000461F4;
  *(v3 + 3816) = 0;
  *(v3 + 3824) = 0x3F80000000000000;
  *(v3 + 3840) = xmmword_1000EF7D0;
  *(v3 + 3856) = 5;
  v256 = vmulq_f32(xmmword_10013DCA0, 0);
  v509 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v471 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v256), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v459 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v256, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v407 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3FD1EB85u)), vdupq_n_s32(0xC048F5C2), *algn_10013DCB0), vdupq_n_s32(0x3FBD70A4u), xmmword_10013DCC0));
  sub_10001358C(v566, 0.0, xmmword_1000EC910);
  v257 = sub_100013568(v566);
  v490 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v509, v258.f32[0]), v471, *v258.f32, 1), v459, v258, 2), v407, v258, 3);
  v501 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v509, v257.n128_f32[0]), v471, v257.n128_u64[0], 1), v459, v257, 2), v407, v257, 3);
  v439 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v509, v259.f32[0]), v471, *v259.f32, 1), v459, v259, 2), v407, v259, 3);
  v472 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v509, v260.f32[0]), v471, *v260.f32, 1), v459, v260, 2), v407, v260, 3);
  sub_10001358C(v567, -0.016581, xmmword_1000EC8E0);
  v261 = sub_100013568(v567);
  v513 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v501, v262.f32[0]), v490, *v262.f32, 1), v439, v262, 2), v472, v262, 3);
  v514 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v501, v261.n128_f32[0]), v490, v261.n128_u64[0], 1), v439, v261, 2), v472, v261, 3);
  v510 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v501, v263.f32[0]), v490, *v263.f32, 1), v439, v263, 2), v472, v263, 3);
  v502 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v501, v264.f32[0]), v490, *v264.f32, 1), v439, v264, 2), v472, v264, 3);
  sub_10001358C(v568, 0.0, xmmword_1000EC920);
  v265 = sub_100013568(v568);
  v689 = 1;
  *(v3 + 3872) = 0x40A00000402CCCCDLL;
  *(v3 + 3880) = 1056964608;
  *(v3 + 3884) = 1;
  *(v3 + 3885) = v694;
  *(v3 + 3887) = v695;
  *(v3 + 3888) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v514, v265.n128_f32[0]), v513, v265.n128_u64[0], 1), v510, v265, 2), v502, v265, 3);
  *(v3 + 3904) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v514, v266.f32[0]), v513, *v266.f32, 1), v510, v266, 2), v502, v266, 3);
  *(v3 + 3920) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v514, v267.f32[0]), v513, *v267.f32, 1), v510, v267, 2), v502, v267, 3);
  *(v3 + 3936) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v514, v268.f32[0]), v513, *v268.f32, 1), v510, v268, 2), v502, v268, 3);
  *(v3 + 3952) = xmmword_1000EFCB0;
  *(v3 + 3968) = 0;
  v269 = v692;
  *(v3 + 3971) = v693;
  *(v3 + 3969) = v269;
  *(v3 + 3972) = 1086744166;
  *(v3 + 3976) = 9;
  *(v3 + 3977) = v690;
  *(v3 + 3979) = v691;
  *(v3 + 3980) = 1065353216;
  *(v3 + 3984) = 0;
  *(v3 + 3992) = 0u;
  *(v3 + 4008) = v689;
  *(v3 + 4009) = 259;
  *(v3 + 4011) = 1;
  *(v3 + 4016) = 0u;
  *(v3 + 4032) = sub_100046224;
  *(v3 + 4040) = 0;
  *(v3 + 4048) = 0x3F80000000000000;
  v270 = sub_1000A0774(v3);
  swift_setDeallocating();
  sub_1000125FC(&qword_100131018, &qword_1000F1D70);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1000125FC(&qword_100131020, &qword_1000F1D78);
  v271 = swift_allocObject();
  v271[1] = xmmword_1000EDAB0;
  v271[2] = xmmword_1000EFCC0;
  v271[3] = xmmword_1000EFCD0;
  v271[4] = xmmword_1000EFCE0;
  v271[5] = xmmword_1000EFCF0;
  v271[6] = xmmword_1000EFD00;
  v272 = swift_allocObject();
  v272[1] = xmmword_1000EC880;
  v272[2] = xmmword_1000EFD10;
  v272[3] = xmmword_1000EFD20;
  v273 = swift_allocObject();
  v273[1] = xmmword_1000EC880;
  v273[2] = xmmword_1000EFD30;
  v273[3] = xmmword_1000EFD40;
  v274 = qword_10013AC20;
  v275 = unk_10013AC28;
  v276 = qword_10013AC30;

  v277 = qword_10013AC50;
  v278 = sub_1000A0A98(_swiftEmptyArrayStorage);
  v696.i64[0] = v274;
  v696.i64[1] = v275;
  v697.i64[0] = v276;
  v697.i64[1] = v278;
  v698.i64[0] = _swiftEmptyArrayStorage;
  v698.i64[1] = _swiftEmptyArrayStorage;
  v699 = v277;
  v568[3] = v696;
  v568[4] = v697;
  v568[5] = v698;
  v569 = v277;
  v279 = sub_1000A0A98(&off_10011F298);
  sub_1000047C4(&unk_10011F2B8, &qword_100131048, &qword_1000F1E40);
  sub_1000125FC(&qword_100131050, &qword_1000F1E48);
  v280 = swift_allocObject();
  *(v280 + 16) = xmmword_1000EC880;
  *(v280 + 32) = swift_getKeyPath();
  *(v280 + 40) = 1051766961;
  *(v280 + 48) = swift_getKeyPath();
  *(v280 + 56) = 1057458056;
  v281 = sub_1000A092C(_swiftEmptyArrayStorage);
  sub_1000BA704(v281, v279, _swiftEmptyArrayStorage, v280, v700);

  sub_100081544(&v696);
  swift_bridgeObjectRetain_n();
  v283 = sub_1000C1928(v282, v270);

  sub_1000C53DC(v283, v704);
  v285 = sub_1000C199C(v284, v270);

  sub_1000C53DC(v285, v702);
  xmmword_10013B080 = v483;
  *algn_10013B090 = v482;
  qword_10013B0A0 = v481;
  dword_10013B0A8 = v0;
  xmmword_10013B0B0 = v480;
  unk_10013B0C0 = v479;
  qword_10013B0D0 = v1;
  dword_10013B0D8 = v2;
  xmmword_10013B0E0 = v478;
  qword_10013B0F0 = v477;
  xmmword_10013B100 = v476;
  qword_10013B110 = v475;
  unk_10013B118 = v474;
  dword_10013B120 = v473;
  qword_10013B128 = 0;
  unk_10013B130 = v270;
  qword_10013B158 = v705;
  unk_10013B148 = v704[1];
  unk_10013B138 = v704[0];
  xmmword_10013B160 = v702[0];
  unk_10013B170 = v702[1];
  qword_10013B180 = v703;
  qword_10013B188 = sub_1000462DC;
  qword_10013B190 = 0;
  xmmword_10013B1A0 = xmmword_1000EFD50;
  unk_10013B1B0 = xmmword_1000EFD60;
  qword_10013B1C0 = v271;
  word_10013B1CC = 6;
  dword_10013B1C8 = 1018814174;
  xmmword_10013B1D0 = xmmword_1000EFD70;
  qword_10013B1E0 = v272;
  xmmword_10013B1E8 = xmmword_1000EFD80;
  xmmword_10013B1F8 = xmmword_1000EFD90;
  qword_10013B208 = 1063313633;
  unk_10013B210 = v273;
  xmmword_10013B218 = xmmword_1000EFDA0;
  xmmword_10013B228 = xmmword_1000EFDB0;
  qword_10013B238 = 1059300260;
  result = 5.592503e-12;
  qword_10013B280 = v701;
  xmmword_10013B260 = v700[1];
  unk_10013B270 = v700[2];
  xmmword_10013B240 = xmmword_1000EFDC0;
  unk_10013B250 = v700[0];
  return result;
}

uint64_t sub_100045CAC(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.12) * a2) + 0.12;
    *result = COERCE_UNSIGNED_INT(((*result + -2.9) * a2) + 2.9) | (COERCE_UNSIGNED_INT(((*(result + 4) + -3.7) * a2) + 3.7) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -7.1) * a2) + 7.1;
    *(result + 108) = ((*(result + 108) + -0.16) * a2) + 0.16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

float sub_100045DA0(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -0.15) * a2) + 0.15;
  *(a1 + 100) = result;
  return result;
}

uint64_t sub_100045DD0(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.5) * a2) + 0.5;
    *result = COERCE_UNSIGNED_INT(((*result + -5.0) * a2) + 5.0) | (COERCE_UNSIGNED_INT(((*(result + 4) + -0.6) * a2) + 0.6) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -1.3) * a2) + 1.3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100045E78(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.5) * a2) + 0.5;
    *result = COERCE_UNSIGNED_INT(((*result + -1.8) * a2) + 1.8) | (COERCE_UNSIGNED_INT(((*(result + 4) + -0.37) * a2) + 0.37) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -12.0) * a2) + 12.0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100045F20(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.15) * a2) + 0.15;
    *result = COERCE_UNSIGNED_INT(((*result + -2.9) * a2) + 2.9) | (COERCE_UNSIGNED_INT(((*(result + 4) + -4.8) * a2) + 4.8) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -0.4) * a2) + 0.4;
    *(result + 108) = ((*(result + 108) + -0.32) * a2) + 0.32;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100046014(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.5) * a2) + 0.5;
    *result = COERCE_UNSIGNED_INT(((*result + -5.0) * a2) + 5.0) | (COERCE_UNSIGNED_INT(((*(result + 4) + -0.55) * a2) + 0.55) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -0.16) * a2) + 0.16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

float sub_1000460BC(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -1.8) * a2) + 1.8;
  *(a1 + 100) = result;
  return result;
}

uint64_t sub_1000460EC(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.5) * a2) + 0.5;
    *result = COERCE_UNSIGNED_INT(((*result + -1.1) * a2) + 1.1) | (COERCE_UNSIGNED_INT(((*(result + 4) + -2.0) * a2) + 2.0) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -1.7) * a2) + 1.7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

float sub_100046194(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -0.39) * a2) + 0.39;
  *(a1 + 100) = result;
  return result;
}

float sub_1000461C4(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -0.095) * a2) + 0.095;
  *(a1 + 100) = result;
  return result;
}

float sub_1000461F4(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -0.4) * a2) + 0.4;
  *(a1 + 100) = result;
  return result;
}

uint64_t sub_100046224(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.5) * a2) + 0.5;
    *result = COERCE_UNSIGNED_INT(((*result + -2.8) * a2) + 2.8) | (COERCE_UNSIGNED_INT(((*(result + 4) + -3.2) * a2) + 3.2) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -0.73) * a2) + 0.73;
  }

  else
  {
    __break(1u);
  }

  return result;
}

float32x2_t sub_1000462DC(float a1)
{
  v1 = a1;
  if (a1 < 0.0)
  {
    a1 = 0.0;
  }

  v2 = a1 * 3.1416;
  if (v1 >= 1.0)
  {
    v2 = 3.1416;
  }

  return vmul_n_f32(vadd_f32(vmul_n_f32(0x3E99999A3EF0A3D8, fminf(v1 / 0.95833, 1.0)), 0x3F3333333F07AE14), ((0.5 - (cosf(v2) * 0.5)) * 0.06) + 0.06);
}

double sub_100046394@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if ((*(a1 + 24) & 0x8000000000000000) != 0)
  {
    *&v2 = 0x3F8000003F800000;
    *a2 = xmmword_1000EC900;
  }

  else
  {
    v2 = *(a1 + 32);
    *a2 = v2;
  }

  return *&v2;
}

uint64_t *sub_1000463C0(uint64_t *result, void *a2)
{
  if ((a2[3] & 0x8000000000000000) == 0)
  {
    v3 = *result;
    v2 = result[1];
    a2[2] = *(a2 + 4);
    a2[3] = 0;
    a2[4] = v3;
    a2[5] = v2;
  }

  return result;
}

double sub_1000463DC()
{
  if (qword_10012F578 != -1)
  {
    swift_once();
  }

  v545 = unk_10013AA60;
  v546 = xmmword_10013AA50;
  v544 = qword_10013AA70;
  v0 = dword_10013AA78;
  v542 = unk_10013AA90;
  v543 = xmmword_10013AA80;
  v1 = qword_10013AAA0;
  v541 = dword_10013AAA8;
  v540 = xmmword_10013AAB0;
  v539 = qword_10013AAC0;
  v538 = xmmword_10013AAD0;
  v536 = unk_10013AAE8;
  v537 = qword_10013AAE0;
  v535 = dword_10013AAF0;
  sub_1000125FC(&qword_100131010, &qword_1000F1D68);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000EFDD0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 9;
  if (qword_10012F6E8 != -1)
  {
    swift_once();
  }

  v3 = vmulq_f32(xmmword_10013DCA0, 0);
  v580 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v573 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v3), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v556 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v3, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v523 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC0AA3D70)), vdupq_n_s32(0x40B7AE14u), *algn_10013DCB0), vdupq_n_s32(0xC06A3D70), xmmword_10013DCC0));
  sub_10001358C(v583, 2.234, xmmword_1000EC910);
  v4 = sub_100013568(v583);
  v579 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v580, v4.n128_f32[0]), v573, v4.n128_u64[0], 1), v556, v4, 2), v523, v4, 3);
  v564 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v580, v5.f32[0]), v573, *v5.f32, 1), v556, v5, 2), v523, v5, 3);
  v547 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v580, v6.f32[0]), v573, *v6.f32, 1), v556, v6, 2), v523, v6, 3);
  v514 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v580, v7.f32[0]), v573, *v7.f32, 1), v556, v7, 2), v523, v7, 3);
  sub_10001358C(v584, -2.426, xmmword_1000EC8E0);
  v8 = sub_100013568(v584);
  v9 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v579, v8.n128_f32[0]), v564, v8.n128_u64[0], 1), v547, v8, 2), v514, v8, 3);
  v557 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v579, v10.f32[0]), v564, *v10.f32, 1), v547, v10, 2), v514, v10, 3);
  v524 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v579, v11.f32[0]), v564, *v11.f32, 1), v547, v11, 2), v514, v11, 3);
  v565 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v579, v12.f32[0]), v564, *v12.f32, 1), v547, v12, 2), v514, v12, 3);
  v574 = v9;
  sub_10001358C(v585, 0.15708, xmmword_1000EC920);
  v13 = sub_100013568(v585);
  v644 = 0;
  *(v2 + 64) = 0x4080000040266666;
  *(v2 + 72) = 1008981770;
  *(v2 + 76) = 1;
  *(v2 + 77) = v649;
  *(v2 + 79) = v650;
  *(v2 + 80) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v574, v13.n128_f32[0]), v557, v13.n128_u64[0], 1), v524, v13, 2), v565, v13, 3);
  *(v2 + 96) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v574, v14.f32[0]), v557, *v14.f32, 1), v524, v14, 2), v565, v14, 3);
  *(v2 + 112) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v574, v15.f32[0]), v557, *v15.f32, 1), v524, v15, 2), v565, v15, 3);
  *(v2 + 128) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v574, v16.f32[0]), v557, *v16.f32, 1), v524, v16, 2), v565, v16, 3);
  *(v2 + 144) = xmmword_1000EFDE0;
  *(v2 + 160) = 2;
  v17 = v647;
  *(v2 + 163) = v648;
  *(v2 + 161) = v17;
  *(v2 + 164) = 1085066445;
  *(v2 + 168) = 1;
  *(v2 + 169) = v645;
  *(v2 + 171) = v646;
  *(v2 + 172) = 1051931443;
  *(v2 + 176) = xmmword_1000EFDF0;
  *(v2 + 192) = 0x3F0000003DCCCCCDLL;
  *(v2 + 200) = v644;
  *(v2 + 201) = 0;
  *(v2 + 203) = 1;
  *(v2 + 208) = 0u;
  *(v2 + 224) = sub_100049FFC;
  *(v2 + 232) = 0;
  *(v2 + 240) = 0x3F80000000000000;
  *(v2 + 256) = xmmword_1000EF5A0;
  *(v2 + 272) = 1;
  v18 = vmulq_f32(xmmword_10013DCA0, 0);
  v496 = vdupq_n_s32(0x3CA3D70Au);
  v558 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v515 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v18), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v505 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v18, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v525 = vdupq_n_s32(0x4041EB85u);
  v453 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, v496), v525, *algn_10013DCB0), vdupq_n_s32(0xBD8F5C29), xmmword_10013DCC0));
  sub_10001358C(v586, -1.0472, xmmword_1000EC910);
  v19 = sub_100013568(v586);
  v575 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v558, v19.n128_f32[0]), v515, v19.n128_u64[0], 1), v505, v19, 2), v453, v19, 3);
  v548 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v558, v20.f32[0]), v515, *v20.f32, 1), v505, v20, 2), v453, v20, 3);
  v483 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v558, v21.f32[0]), v515, *v21.f32, 1), v505, v21, 2), v453, v21, 3);
  v454 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v558, v22.f32[0]), v515, *v22.f32, 1), v505, v22, 2), v453, v22, 3);
  sub_10001358C(v587, -0.83776, xmmword_1000EC8E0);
  v23 = sub_100013568(v587);
  v559 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v575, v23.n128_f32[0]), v548, v23.n128_u64[0], 1), v483, v23, 2), v454, v23, 3);
  v516 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v575, v24.f32[0]), v548, *v24.f32, 1), v483, v24, 2), v454, v24, 3);
  v506 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v575, v25.f32[0]), v548, *v25.f32, 1), v483, v25, 2), v454, v25, 3);
  v576 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v575, v26.f32[0]), v548, *v26.f32, 1), v483, v26, 2), v454, v26, 3);
  sub_10001358C(v588, -1.0647, xmmword_1000EC920);
  v27 = sub_100013568(v588);
  v651 = 1;
  *(v2 + 288) = 0x3FF333333F6B851FLL;
  *(v2 + 296) = 1045220557;
  *(v2 + 300) = 0;
  *(v2 + 301) = v656;
  *(v2 + 303) = v657;
  *(v2 + 304) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v559, v27.n128_f32[0]), v516, v27.n128_u64[0], 1), v506, v27, 2), v576, v27, 3);
  *(v2 + 320) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v559, v28.f32[0]), v516, *v28.f32, 1), v506, v28, 2), v576, v28, 3);
  *(v2 + 336) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v559, v29.f32[0]), v516, *v29.f32, 1), v506, v29, 2), v576, v29, 3);
  *(v2 + 352) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v559, v30.f32[0]), v516, *v30.f32, 1), v506, v30, 2), v576, v30, 3);
  *(v2 + 368) = xmmword_1000EC900;
  *(v2 + 384) = 0;
  v31 = v654;
  *(v2 + 387) = v655;
  *(v2 + 385) = v31;
  *(v2 + 388) = 1052266988;
  *(v2 + 392) = 9;
  *(v2 + 393) = v652;
  *(v2 + 395) = v653;
  *(v2 + 396) = 1065353216;
  *(v2 + 416) = 0;
  *(v2 + 400) = 0u;
  *(v2 + 424) = v651;
  *(v2 + 425) = 0;
  *(v2 + 427) = 0;
  *(v2 + 432) = 0u;
  *(v2 + 448) = sub_10004A0E0;
  *(v2 + 456) = 0;
  *(v2 + 464) = 0x3F80000000000000;
  *(v2 + 480) = xmmword_1000EF5C0;
  *(v2 + 496) = 1;
  v32 = vmulq_f32(xmmword_10013DCA0, 0);
  v549 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v484 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v32), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v424 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v32, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v376 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC0A5C28F)), vdupq_n_s32(0xBFB33333), *algn_10013DCB0), vdupq_n_s32(0xC013D70A), xmmword_10013DCC0));
  sub_10001358C(v589, -0.97738, xmmword_1000EC910);
  v33 = sub_100013568(v589);
  v517 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v549, v33.n128_f32[0]), v484, v33.n128_u64[0], 1), v424, v33, 2), v376, v33, 3);
  v455 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v549, v34.f32[0]), v484, *v34.f32, 1), v424, v34, 2), v376, v34, 3);
  v400 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v549, v35.f32[0]), v484, *v35.f32, 1), v424, v35, 2), v376, v35, 3);
  v377 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v549, v36.f32[0]), v484, *v36.f32, 1), v424, v36, 2), v376, v36, 3);
  sub_10001358C(v590, 0.15708, xmmword_1000EC8E0);
  v37 = sub_100013568(v590);
  v550 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v517, v37.n128_f32[0]), v455, v37.n128_u64[0], 1), v400, v37, 2), v377, v37, 3);
  v485 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v517, v38.f32[0]), v455, *v38.f32, 1), v400, v38, 2), v377, v38, 3);
  v425 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v517, v39.f32[0]), v455, *v39.f32, 1), v400, v39, 2), v377, v39, 3);
  v518 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v517, v40.f32[0]), v455, *v40.f32, 1), v400, v40, 2), v377, v40, 3);
  sub_10001358C(v591, 0.2618, xmmword_1000EC920);
  v41 = sub_100013568(v591);
  v658 = 1;
  *(v2 + 512) = 0x408000004023D70ALL;
  *(v2 + 520) = 1036831949;
  *(v2 + 524) = 1;
  *(v2 + 525) = v663;
  *(v2 + 527) = v664;
  *(v2 + 528) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v550, v41.n128_f32[0]), v485, v41.n128_u64[0], 1), v425, v41, 2), v518, v41, 3);
  *(v2 + 544) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v550, v42.f32[0]), v485, *v42.f32, 1), v425, v42, 2), v518, v42, 3);
  *(v2 + 560) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v550, v43.f32[0]), v485, *v43.f32, 1), v425, v43, 2), v518, v43, 3);
  *(v2 + 576) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v550, v44.f32[0]), v485, *v44.f32, 1), v425, v44, 2), v518, v44, 3);
  *(v2 + 592) = xmmword_1000EFE00;
  *(v2 + 608) = 0;
  v45 = v661;
  *(v2 + 611) = v662;
  *(v2 + 609) = v45;
  *(v2 + 612) = 0x40000000;
  *(v2 + 616) = 9;
  *(v2 + 617) = v659;
  *(v2 + 619) = v660;
  *(v2 + 620) = 1065353216;
  *(v2 + 640) = 0;
  *(v2 + 624) = 0u;
  *(v2 + 648) = v658;
  *(v2 + 649) = 0;
  *(v2 + 651) = 0;
  *(v2 + 656) = 0u;
  *(v2 + 672) = sub_10004A110;
  *(v2 + 680) = 0;
  *(v2 + 688) = 0x3F80000000000000;
  *(v2 + 704) = xmmword_1000EF5D0;
  *(v2 + 720) = 1;
  v46 = vmulq_f32(xmmword_10013DCA0, 0);
  v486 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v426 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v46), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v378 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v46, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v354 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3F7851EBu)), vdupq_n_s32(0xBEDC28F5), *algn_10013DCB0), vdupq_n_s32(0x3E2E147Bu), xmmword_10013DCC0));
  sub_10001358C(v592, 0.0, xmmword_1000EC910);
  v47 = sub_100013568(v592);
  v519 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v486, v47.n128_f32[0]), v426, v47.n128_u64[0], 1), v378, v47, 2), v354, v47, 3);
  v456 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v486, v48.f32[0]), v426, *v48.f32, 1), v378, v48, 2), v354, v48, 3);
  v401 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v486, v49.f32[0]), v426, *v49.f32, 1), v378, v49, 2), v354, v49, 3);
  v355 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v486, v50.f32[0]), v426, *v50.f32, 1), v378, v50, 2), v354, v50, 3);
  sub_10001358C(v593, 0.61087, xmmword_1000EC8E0);
  v51 = sub_100013568(v593);
  v487 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v519, v51.n128_f32[0]), v456, v51.n128_u64[0], 1), v401, v51, 2), v355, v51, 3);
  v427 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v519, v52.f32[0]), v456, *v52.f32, 1), v401, v52, 2), v355, v52, 3);
  v379 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v519, v53.f32[0]), v456, *v53.f32, 1), v401, v53, 2), v355, v53, 3);
  v520 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v519, v54.f32[0]), v456, *v54.f32, 1), v401, v54, 2), v355, v54, 3);
  sub_10001358C(v594, 0.0, xmmword_1000EC920);
  v55 = sub_100013568(v594);
  v665 = 1;
  *(v2 + 736) = 0x3FB3333340A00000;
  *(v2 + 744) = 1056964608;
  *(v2 + 748) = 1;
  *(v2 + 749) = v670;
  *(v2 + 751) = v671;
  *(v2 + 752) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v487, v55.n128_f32[0]), v427, v55.n128_u64[0], 1), v379, v55, 2), v520, v55, 3);
  *(v2 + 768) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v487, v56.f32[0]), v427, *v56.f32, 1), v379, v56, 2), v520, v56, 3);
  *(v2 + 784) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v487, v57.f32[0]), v427, *v57.f32, 1), v379, v57, 2), v520, v57, 3);
  *(v2 + 800) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v487, v58.f32[0]), v427, *v58.f32, 1), v379, v58, 2), v520, v58, 3);
  *(v2 + 816) = xmmword_1000EFE10;
  *(v2 + 832) = 0;
  v59 = v668;
  *(v2 + 835) = v669;
  *(v2 + 833) = v59;
  *(v2 + 836) = 1067869798;
  *(v2 + 840) = 9;
  *(v2 + 841) = v666;
  *(v2 + 843) = v667;
  *(v2 + 844) = 1065353216;
  *(v2 + 848) = 0;
  *(v2 + 856) = 0u;
  *(v2 + 872) = v665;
  *(v2 + 873) = 0;
  *(v2 + 875) = 0;
  *(v2 + 880) = 0u;
  *(v2 + 896) = sub_10004A1C8;
  *(v2 + 904) = 0;
  *(v2 + 912) = 0x3F80000000000000;
  *(v2 + 928) = xmmword_1000EF7D0;
  *(v2 + 944) = 1;
  v60 = vmulq_f32(xmmword_10013DCA0, 0);
  v457 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v402 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v60), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v380 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v60, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v61 = vmlaq_f32(vmulq_f32(xmmword_10013DCA0, v496), vdupq_n_s32(0xBCF5C28F), *algn_10013DCB0);
  v497 = vdupq_n_s32(0x3ECCCCCCu);
  v337 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(v61, v497, xmmword_10013DCC0));
  sub_10001358C(v595, -0.61087, xmmword_1000EC910);
  v62 = sub_100013568(v595);
  v488 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v457, v62.n128_f32[0]), v402, v62.n128_u64[0], 1), v380, v62, 2), v337, v62, 3);
  v428 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v457, v63.f32[0]), v402, *v63.f32, 1), v380, v63, 2), v337, v63, 3);
  v356 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v457, v64.f32[0]), v402, *v64.f32, 1), v380, v64, 2), v337, v64, 3);
  v338 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v457, v65.f32[0]), v402, *v65.f32, 1), v380, v65, 2), v337, v65, 3);
  sub_10001358C(v596, 0.24435, xmmword_1000EC8E0);
  v66 = sub_100013568(v596);
  v403 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v488, v67.f32[0]), v428, *v67.f32, 1), v356, v67, 2), v338, v67, 3);
  v381 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v488, v68.f32[0]), v428, *v68.f32, 1), v356, v68, 2), v338, v68, 3);
  v458 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v488, v66.n128_f32[0]), v428, v66.n128_u64[0], 1), v356, v66, 2), v338, v66, 3);
  v489 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v488, v69.f32[0]), v428, *v69.f32, 1), v356, v69, 2), v338, v69, 3);
  sub_10001358C(v597, 0.54105, xmmword_1000EC920);
  v70 = sub_100013568(v597);
  v672 = 1;
  *(v2 + 960) = 0x3F7851EC406147AELL;
  *(v2 + 968) = 1036831949;
  *(v2 + 972) = 1;
  *(v2 + 973) = v677;
  *(v2 + 975) = v678;
  *(v2 + 976) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v458, v70.n128_f32[0]), v403, v70.n128_u64[0], 1), v381, v70, 2), v489, v70, 3);
  *(v2 + 992) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v458, v71.f32[0]), v403, *v71.f32, 1), v381, v71, 2), v489, v71, 3);
  *(v2 + 1008) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v458, v72.f32[0]), v403, *v72.f32, 1), v381, v72, 2), v489, v72, 3);
  *(v2 + 1024) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v458, v73.f32[0]), v403, *v73.f32, 1), v381, v73, 2), v489, v73, 3);
  *(v2 + 1040) = xmmword_1000EC900;
  *(v2 + 1056) = 0;
  v74 = v675;
  *(v2 + 1059) = v676;
  *(v2 + 1057) = v74;
  *(v2 + 1060) = 1062836634;
  *(v2 + 1064) = 9;
  *(v2 + 1065) = v673;
  *(v2 + 1067) = v674;
  *(v2 + 1068) = 1065353216;
  *(v2 + 1072) = 0;
  *(v2 + 1080) = 0u;
  *(v2 + 1096) = v672;
  *(v2 + 1097) = 0;
  *(v2 + 1099) = 1;
  *(v2 + 1104) = 0u;
  *(v2 + 1120) = sub_10004A280;
  *(v2 + 1128) = 0;
  *(v2 + 1136) = 0x3F80000000000000;
  *(v2 + 1152) = xmmword_1000EF5A0;
  *(v2 + 1168) = 2;
  v75 = vmulq_f32(xmmword_10013DCA0, 0);
  v404 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v357 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v75), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v339 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v75, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v490 = vdupq_n_s32(0x3EF5C28Fu);
  v459 = vdupq_n_s32(0x3F30A3D7u);
  v322 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBEF0A3D7)), v490, *algn_10013DCB0), v459, xmmword_10013DCC0));
  sub_10001358C(v598, 4.7124, xmmword_1000EC910);
  v76 = sub_100013568(v598);
  v429 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v404, v76.n128_f32[0]), v357, v76.n128_u64[0], 1), v339, v76, 2), v322, v76, 3);
  v382 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v404, v77.f32[0]), v357, *v77.f32, 1), v339, v77, 2), v322, v77, 3);
  v324 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v404, v78.f32[0]), v357, *v78.f32, 1), v339, v78, 2), v322, v78, 3);
  v323 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v404, v79.f32[0]), v357, *v79.f32, 1), v339, v79, 2), v322, v79, 3);
  sub_10001358C(v599, 0.27925, xmmword_1000EC8E0);
  v80 = sub_100013568(v599);
  v358 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v429, v81.f32[0]), v382, *v81.f32, 1), v324, v81, 2), v323, v81, 3);
  v340 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v429, v82.f32[0]), v382, *v82.f32, 1), v324, v82, 2), v323, v82, 3);
  v405 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v429, v80.n128_f32[0]), v382, v80.n128_u64[0], 1), v324, v80, 2), v323, v80, 3);
  v430 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v429, v83.f32[0]), v382, *v83.f32, 1), v324, v83, 2), v323, v83, 3);
  sub_10001358C(v600, -1.5708, xmmword_1000EC920);
  v84 = sub_100013568(v600);
  v679 = 1;
  *(v2 + 1184) = 0x3FA666663FB33333;
  *(v2 + 1192) = 1053609165;
  *(v2 + 1196) = 1;
  *(v2 + 1197) = v684;
  *(v2 + 1199) = v685;
  *(v2 + 1200) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v405, v84.n128_f32[0]), v358, v84.n128_u64[0], 1), v340, v84, 2), v430, v84, 3);
  *(v2 + 1216) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v405, v85.f32[0]), v358, *v85.f32, 1), v340, v85, 2), v430, v85, 3);
  *(v2 + 1232) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v405, v86.f32[0]), v358, *v86.f32, 1), v340, v86, 2), v430, v86, 3);
  *(v2 + 1248) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v405, v87.f32[0]), v358, *v87.f32, 1), v340, v87, 2), v430, v87, 3);
  *(v2 + 1264) = xmmword_1000EFE20;
  *(v2 + 1280) = 0;
  v88 = v682;
  *(v2 + 1283) = v683;
  *(v2 + 1281) = v88;
  *(v2 + 1284) = 1084647014;
  *(v2 + 1288) = 13;
  *(v2 + 1289) = v680;
  *(v2 + 1291) = v681;
  *(v2 + 1292) = 1065353216;
  *(v2 + 1296) = 0;
  *(v2 + 1304) = 0u;
  *(v2 + 1320) = v679;
  *(v2 + 1321) = 0;
  *(v2 + 1323) = 0;
  *(v2 + 1360) = 0;
  *(v2 + 1344) = 0u;
  *(v2 + 1328) = 0u;
  *(v2 + 1364) = 1067611688;
  *(v2 + 1376) = xmmword_1000EF5C0;
  v89 = *algn_10013DCB0;
  v90 = vmulq_f32(xmmword_10013DCA0, 0);
  v91 = xmmword_10013DCC0;
  v92 = xmmword_10013DCD0;
  v93 = vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3F51EB85u));
  v431 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v2 + 1392) = 2;
  v383 = vmlaq_f32(vmlaq_f32(vaddq_f32(v89, v90), 0, v91), 0, v92);
  v341 = vmlaq_f32(vaddq_f32(v91, vmlaq_f32(v90, 0, v89)), 0, v92);
  v325 = vaddq_f32(v92, vmlaq_f32(vmlaq_f32(v93, vdupq_n_s32(0xBE8F5C29), v89), v459, v91));
  sub_10001358C(v601, 4.7124, xmmword_1000EC910);
  v94 = sub_100013568(v601);
  v460 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v431, v94.n128_f32[0]), v383, v94.n128_u64[0], 1), v341, v94, 2), v325, v94, 3);
  v406 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v431, v95.f32[0]), v383, *v95.f32, 1), v341, v95, 2), v325, v95, 3);
  v359 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v431, v96.f32[0]), v383, *v96.f32, 1), v341, v96, 2), v325, v96, 3);
  v326 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v431, v97.f32[0]), v383, *v97.f32, 1), v341, v97, 2), v325, v97, 3);
  sub_10001358C(v602, 1.4486, xmmword_1000EC8E0);
  v98 = sub_100013568(v602);
  v384 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v460, v99.f32[0]), v406, *v99.f32, 1), v359, v99, 2), v326, v99, 3);
  v342 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v460, v100.f32[0]), v406, *v100.f32, 1), v359, v100, 2), v326, v100, 3);
  v432 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v460, v98.n128_f32[0]), v406, v98.n128_u64[0], 1), v359, v98, 2), v326, v98, 3);
  v461 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v460, v101.f32[0]), v406, *v101.f32, 1), v359, v101, 2), v326, v101, 3);
  sub_10001358C(v603, -1.5708, xmmword_1000EC920);
  v102 = sub_100013568(v603);
  v686 = 1;
  *(v2 + 1408) = 0x3F170A3D3FB33333;
  *(v2 + 1416) = 1053609165;
  *(v2 + 1420) = 1;
  *(v2 + 1421) = v691;
  *(v2 + 1423) = v692;
  *(v2 + 1424) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v432, v102.n128_f32[0]), v384, v102.n128_u64[0], 1), v342, v102, 2), v461, v102, 3);
  *(v2 + 1440) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v432, v103.f32[0]), v384, *v103.f32, 1), v342, v103, 2), v461, v103, 3);
  *(v2 + 1456) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v432, v104.f32[0]), v384, *v104.f32, 1), v342, v104, 2), v461, v104, 3);
  *(v2 + 1472) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v432, v105.f32[0]), v384, *v105.f32, 1), v342, v105, 2), v461, v105, 3);
  *(v2 + 1488) = xmmword_1000EFE30;
  *(v2 + 1504) = 0;
  v106 = v689;
  *(v2 + 1507) = v690;
  *(v2 + 1505) = v106;
  *(v2 + 1508) = 1091567616;
  *(v2 + 1512) = 13;
  *(v2 + 1513) = v687;
  *(v2 + 1515) = v688;
  *(v2 + 1516) = 1065353216;
  *(v2 + 1520) = 0;
  *(v2 + 1528) = 0u;
  *(v2 + 1544) = v686;
  *(v2 + 1545) = 0;
  *(v2 + 1547) = 0;
  *(v2 + 1552) = 0u;
  *(v2 + 1568) = sub_10004A2B0;
  *(v2 + 1576) = 0;
  *(v2 + 1584) = 0x3EE38E3900000000;
  *(v2 + 1600) = xmmword_1000EF5C0;
  *(v2 + 1616) = 9;
  v107 = vmulq_f32(xmmword_10013DCA0, 0);
  v462 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v407 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v107), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v360 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v107, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v327 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC0E47AE1)), vdupq_n_s32(0x40D1EB85u), *algn_10013DCB0), vdupq_n_s32(0xC09DC28F), xmmword_10013DCC0));
  sub_10001358C(v604, 2.234, xmmword_1000EC910);
  v108 = sub_100013568(v604);
  v433 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v462, v108.n128_f32[0]), v407, v108.n128_u64[0], 1), v360, v108, 2), v327, v108, 3);
  v385 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v462, v109.f32[0]), v407, *v109.f32, 1), v360, v109, 2), v327, v109, 3);
  v343 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v462, v110.f32[0]), v407, *v110.f32, 1), v360, v110, 2), v327, v110, 3);
  v328 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v462, v111.f32[0]), v407, *v111.f32, 1), v360, v111, 2), v327, v111, 3);
  sub_10001358C(v605, -2.426, xmmword_1000EC8E0);
  v112 = sub_100013568(v605);
  v113 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v433, v112.n128_f32[0]), v385, v112.n128_u64[0], 1), v343, v112, 2), v328, v112, 3);
  v408 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v433, v114.f32[0]), v385, *v114.f32, 1), v343, v114, 2), v328, v114, 3);
  v361 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v433, v115.f32[0]), v385, *v115.f32, 1), v343, v115, 2), v328, v115, 3);
  v434 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v433, v116.f32[0]), v385, *v116.f32, 1), v343, v116, 2), v328, v116, 3);
  v463 = v113;
  sub_10001358C(v606, 0.14835, xmmword_1000EC920);
  v117 = sub_100013568(v606);
  v693 = 0;
  *(v2 + 1632) = 0x4059999A40233333;
  *(v2 + 1640) = 1004888130;
  *(v2 + 1644) = 1;
  *(v2 + 1645) = v698;
  *(v2 + 1647) = v699;
  *(v2 + 1648) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v463, v117.n128_f32[0]), v408, v117.n128_u64[0], 1), v361, v117, 2), v434, v117, 3);
  *(v2 + 1664) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v463, v118.f32[0]), v408, *v118.f32, 1), v361, v118, 2), v434, v118, 3);
  *(v2 + 1680) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v463, v119.f32[0]), v408, *v119.f32, 1), v361, v119, 2), v434, v119, 3);
  *(v2 + 1696) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v463, v120.f32[0]), v408, *v120.f32, 1), v361, v120, 2), v434, v120, 3);
  *(v2 + 1712) = xmmword_1000EFBE0;
  *(v2 + 1728) = 2;
  v121 = v696;
  *(v2 + 1731) = v697;
  *(v2 + 1729) = v121;
  *(v2 + 1732) = 1075838976;
  *(v2 + 1736) = 1;
  *(v2 + 1737) = v694;
  *(v2 + 1739) = v695;
  *(v2 + 1740) = 1061158912;
  *(v2 + 1744) = xmmword_1000EFE40;
  *(v2 + 1760) = 0x3F8000003F000000;
  *(v2 + 1768) = v693;
  *(v2 + 1769) = 1;
  *(v2 + 1771) = 1;
  *(v2 + 1776) = 0u;
  *(v2 + 1792) = sub_10004A368;
  *(v2 + 1800) = 0;
  *(v2 + 1808) = 0x3F80000000000000;
  *(v2 + 1824) = xmmword_1000EF5A0;
  *(v2 + 1840) = 3;
  v122 = vmulq_f32(xmmword_10013DCA0, 0);
  v435 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v386 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v122), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v362 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v122, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v329 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3F147AE1u)), vdupq_n_s32(0xBE8A3D70), *algn_10013DCB0), vdupq_n_s32(0xBF733333), xmmword_10013DCC0));
  sub_10001358C(v607, 0.10472, xmmword_1000EC910);
  v123 = sub_100013568(v607);
  v464 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v435, v123.n128_f32[0]), v386, v123.n128_u64[0], 1), v362, v123, 2), v329, v123, 3);
  v409 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v435, v124.f32[0]), v386, *v124.f32, 1), v362, v124, 2), v329, v124, 3);
  v344 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v435, v125.f32[0]), v386, *v125.f32, 1), v362, v125, 2), v329, v125, 3);
  v330 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v435, v126.f32[0]), v386, *v126.f32, 1), v362, v126, 2), v329, v126, 3);
  sub_10001358C(v608, -0.27925, xmmword_1000EC8E0);
  v127 = sub_100013568(v608);
  v387 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v464, v128.f32[0]), v409, *v128.f32, 1), v344, v128, 2), v330, v128, 3);
  v363 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v464, v129.f32[0]), v409, *v129.f32, 1), v344, v129, 2), v330, v129, 3);
  v436 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v464, v127.n128_f32[0]), v409, v127.n128_u64[0], 1), v344, v127, 2), v330, v127, 3);
  v465 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v464, v130.f32[0]), v409, *v130.f32, 1), v344, v130, 2), v330, v130, 3);
  sub_10001358C(v609, 0.80285, xmmword_1000EC920);
  v131 = sub_100013568(v609);
  v700 = 1;
  *(v2 + 1856) = 0x3F7851EC40133333;
  *(v2 + 1864) = 1045220557;
  *(v2 + 1868) = 1;
  *(v2 + 1869) = v705;
  *(v2 + 1871) = v706;
  *(v2 + 1872) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v436, v131.n128_f32[0]), v387, v131.n128_u64[0], 1), v363, v131, 2), v465, v131, 3);
  *(v2 + 1888) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v436, v132.f32[0]), v387, *v132.f32, 1), v363, v132, 2), v465, v132, 3);
  *(v2 + 1904) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v436, v133.f32[0]), v387, *v133.f32, 1), v363, v133, 2), v465, v133, 3);
  *(v2 + 1920) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v436, v134.f32[0]), v387, *v134.f32, 1), v363, v134, 2), v465, v134, 3);
  *(v2 + 1936) = xmmword_1000EFE50;
  *(v2 + 1952) = 0;
  v135 = v703;
  *(v2 + 1955) = v704;
  *(v2 + 1953) = v135;
  *(v2 + 1956) = 1068708659;
  *(v2 + 1960) = 10;
  *(v2 + 1961) = v701;
  *(v2 + 1963) = v702;
  *(v2 + 1964) = 1065353216;
  *(v2 + 1968) = 0;
  *(v2 + 1976) = 0u;
  *(v2 + 1992) = v700;
  *(v2 + 1993) = 1;
  *(v2 + 1995) = 1;
  *(v2 + 2000) = 0u;
  *(v2 + 2016) = sub_10004A44C;
  *(v2 + 2024) = 0;
  *(v2 + 2032) = 0x3F80000000000000;
  *(v2 + 2048) = xmmword_1000EF5C0;
  *(v2 + 2064) = 3;
  v136 = vmulq_f32(xmmword_10013DCA0, 0);
  __asm { FMOV            V5.4S, #-3.25 }

  v437 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v388 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v136), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v364 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v136, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v331 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, _Q5), vdupq_n_s32(0xBFACCCCD), *algn_10013DCB0), vdupq_n_s32(0xC0AE147B), xmmword_10013DCC0));
  sub_10001358C(v610, -0.64577, xmmword_1000EC910);
  v142 = sub_100013568(v610);
  v466 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v437, v142.n128_f32[0]), v388, v142.n128_u64[0], 1), v364, v142, 2), v331, v142, 3);
  v410 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v437, v143.f32[0]), v388, *v143.f32, 1), v364, v143, 2), v331, v143, 3);
  v345 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v437, v144.f32[0]), v388, *v144.f32, 1), v364, v144, 2), v331, v144, 3);
  v332 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v437, v145.f32[0]), v388, *v145.f32, 1), v364, v145, 2), v331, v145, 3);
  sub_10001358C(v611, -0.069813, xmmword_1000EC8E0);
  v146 = sub_100013568(v611);
  v389 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v466, v147.f32[0]), v410, *v147.f32, 1), v345, v147, 2), v332, v147, 3);
  v365 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v466, v148.f32[0]), v410, *v148.f32, 1), v345, v148, 2), v332, v148, 3);
  v438 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v466, v146.n128_f32[0]), v410, v146.n128_u64[0], 1), v345, v146, 2), v332, v146, 3);
  v467 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v466, v149.f32[0]), v410, *v149.f32, 1), v345, v149, 2), v332, v149, 3);
  sub_10001358C(v612, 1.0123, xmmword_1000EC920);
  v150 = sub_100013568(v612);
  v707 = 1;
  *(v2 + 2080) = 0x4053D70A408428F6;
  *(v2 + 2088) = 1036831949;
  *(v2 + 2092) = 1;
  *(v2 + 2093) = v712;
  *(v2 + 2095) = v713;
  *(v2 + 2096) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v438, v150.n128_f32[0]), v389, v150.n128_u64[0], 1), v365, v150, 2), v467, v150, 3);
  *(v2 + 2112) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v438, v151.f32[0]), v389, *v151.f32, 1), v365, v151, 2), v467, v151, 3);
  *(v2 + 2128) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v438, v152.f32[0]), v389, *v152.f32, 1), v365, v152, 2), v467, v152, 3);
  *(v2 + 2144) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v438, v153.f32[0]), v389, *v153.f32, 1), v365, v153, 2), v467, v153, 3);
  *(v2 + 2160) = xmmword_1000EC900;
  *(v2 + 2176) = 0;
  v154 = v710;
  *(v2 + 2179) = v711;
  *(v2 + 2177) = v154;
  *(v2 + 2180) = 1061158912;
  *(v2 + 2184) = 13;
  *(v2 + 2185) = v708;
  *(v2 + 2187) = v709;
  *(v2 + 2188) = 1065353216;
  *(v2 + 2192) = 0;
  *(v2 + 2200) = 0u;
  *(v2 + 2216) = v707;
  *(v2 + 2217) = 1;
  *(v2 + 2219) = 0;
  *(v2 + 2224) = 0u;
  *(v2 + 2240) = sub_10004A47C;
  *(v2 + 2248) = 0;
  *(v2 + 2256) = 0x3F80000000000000;
  *(v2 + 2272) = xmmword_1000EF5D0;
  *(v2 + 2288) = 3;
  v155 = vmulq_f32(xmmword_10013DCA0, 0);
  v439 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v390 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v155), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v366 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v155, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v498 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3F6E147Bu)), v497, *algn_10013DCB0), vdupq_n_s32(0xC0A8F5C2), xmmword_10013DCC0));
  sub_10001358C(v613, 0.0, xmmword_1000EC910);
  v156 = sub_100013568(v613);
  v468 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v439, v156.n128_f32[0]), v390, v156.n128_u64[0], 1), v366, v156, 2), v498, v156, 3);
  v411 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v439, v157.f32[0]), v390, *v157.f32, 1), v366, v157, 2), v498, v157, 3);
  v346 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v439, v158.f32[0]), v390, *v158.f32, 1), v366, v158, 2), v498, v158, 3);
  v367 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v439, v159.f32[0]), v390, *v159.f32, 1), v366, v159, 2), v498, v159, 3);
  sub_10001358C(v614, 0.0, xmmword_1000EC8E0);
  v160 = sub_100013568(v614);
  v499 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v468, v160.n128_f32[0]), v411, v160.n128_u64[0], 1), v346, v160, 2), v367, v160, 3);
  v440 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v468, v161.f32[0]), v411, *v161.f32, 1), v346, v161, 2), v367, v161, 3);
  v391 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v468, v162.f32[0]), v411, *v162.f32, 1), v346, v162, 2), v367, v162, 3);
  v469 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v468, v163.f32[0]), v411, *v163.f32, 1), v346, v163, 2), v367, v163, 3);
  sub_10001358C(v615, -0.50615, xmmword_1000EC920);
  v164 = sub_100013568(v615);
  v714 = 1;
  *(v2 + 2304) = 0x3FF47AE1408428F6;
  *(v2 + 2312) = 1036831949;
  *(v2 + 2316) = 1;
  *(v2 + 2317) = v719;
  *(v2 + 2319) = v720;
  *(v2 + 2320) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v499, v164.n128_f32[0]), v440, v164.n128_u64[0], 1), v391, v164, 2), v469, v164, 3);
  *(v2 + 2336) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v499, v165.f32[0]), v440, *v165.f32, 1), v391, v165, 2), v469, v165, 3);
  *(v2 + 2352) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v499, v166.f32[0]), v440, *v166.f32, 1), v391, v166, 2), v469, v166, 3);
  *(v2 + 2368) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v499, v167.f32[0]), v440, *v167.f32, 1), v391, v167, 2), v469, v167, 3);
  *(v2 + 2384) = xmmword_1000EC900;
  *(v2 + 2400) = 0;
  v168 = v717;
  *(v2 + 2403) = v718;
  *(v2 + 2401) = v168;
  *(v2 + 2404) = 1057300152;
  *(v2 + 2408) = 9;
  *(v2 + 2409) = v715;
  *(v2 + 2411) = v716;
  *(v2 + 2412) = 1065353216;
  *(v2 + 2416) = 0;
  *(v2 + 2424) = 0u;
  *(v2 + 2440) = v714;
  *(v2 + 2441) = 1;
  *(v2 + 2443) = 0;
  *(v2 + 2448) = 0u;
  *(v2 + 2464) = sub_10004A4AC;
  *(v2 + 2472) = 0;
  *(v2 + 2480) = 0x3F80000000000000;
  *(v2 + 2496) = xmmword_1000EF5A0;
  *(v2 + 2512) = 4;
  v169 = vmulq_f32(xmmword_10013DCA0, 0);
  v470 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v412 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v169), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v392 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v169, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v500 = vdupq_n_s32(0x3EB33333u);
  v347 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, v490), v500, *algn_10013DCB0), vdupq_n_s32(0xBE851EB8), xmmword_10013DCC0));
  sub_10001358C(v616, 1.5708, xmmword_1000EC910);
  v170 = sub_100013568(v616);
  v491 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v470, v170.n128_f32[0]), v412, v170.n128_u64[0], 1), v392, v170, 2), v347, v170, 3);
  v441 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v470, v171.f32[0]), v412, *v171.f32, 1), v392, v171, 2), v347, v171, 3);
  v368 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v470, v172.f32[0]), v412, *v172.f32, 1), v392, v172, 2), v347, v172, 3);
  v348 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v470, v173.f32[0]), v412, *v173.f32, 1), v392, v173, 2), v347, v173, 3);
  sub_10001358C(v617, -0.82903, xmmword_1000EC8E0);
  v174 = sub_100013568(v617);
  v413 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v491, v175.f32[0]), v441, *v175.f32, 1), v368, v175, 2), v348, v175, 3);
  v393 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v491, v176.f32[0]), v441, *v176.f32, 1), v368, v176, 2), v348, v176, 3);
  v471 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v491, v174.n128_f32[0]), v441, v174.n128_u64[0], 1), v368, v174, 2), v348, v174, 3);
  v492 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v491, v177.f32[0]), v441, *v177.f32, 1), v368, v177, 2), v348, v177, 3);
  sub_10001358C(v618, 1.5708, xmmword_1000EC920);
  v178 = sub_100013568(v618);
  v721 = 1;
  *(v2 + 2528) = 0x3F4CCCCD40133333;
  *(v2 + 2536) = 1045220557;
  *(v2 + 2540) = 1;
  *(v2 + 2541) = v726;
  *(v2 + 2543) = v727;
  *(v2 + 2544) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v471, v178.n128_f32[0]), v413, v178.n128_u64[0], 1), v393, v178, 2), v492, v178, 3);
  *(v2 + 2560) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v471, v179.f32[0]), v413, *v179.f32, 1), v393, v179, 2), v492, v179, 3);
  *(v2 + 2576) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v471, v180.f32[0]), v413, *v180.f32, 1), v393, v180, 2), v492, v180, 3);
  *(v2 + 2592) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v471, v181.f32[0]), v413, *v181.f32, 1), v393, v181, 2), v492, v181, 3);
  *(v2 + 2608) = xmmword_1000EFE60;
  *(v2 + 2624) = 0;
  v182 = v724;
  *(v2 + 2627) = v725;
  *(v2 + 2625) = v182;
  *(v2 + 2628) = 1083808154;
  *(v2 + 2632) = 9;
  *(v2 + 2633) = v722;
  *(v2 + 2635) = v723;
  *(v2 + 2636) = 1065353216;
  *(v2 + 2640) = 0;
  *(v2 + 2648) = 0u;
  *(v2 + 2664) = v721;
  *(v2 + 2665) = 1;
  *(v2 + 2667) = 0;
  *(v2 + 2672) = 0u;
  *(v2 + 2688) = sub_10004A4DC;
  *(v2 + 2696) = 0;
  *(v2 + 2704) = 0x3FC0000000000000;
  *(v2 + 2720) = xmmword_1000EF5A0;
  *(v2 + 2736) = 6;
  v183 = vmulq_f32(xmmword_10013DCA0, 0);
  v442 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v394 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v183), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v349 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v183, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v493 = vdupq_n_s32(0xBF8E147B);
  v333 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBE6B851E)), vdupq_n_s32(0x3F0CCCCDu), *algn_10013DCB0), v493, xmmword_10013DCC0));
  sub_10001358C(v619, 1.5708, xmmword_1000EC910);
  v184 = sub_100013568(v619);
  v472 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v442, v184.n128_f32[0]), v394, v184.n128_u64[0], 1), v349, v184, 2), v333, v184, 3);
  v414 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v442, v185.f32[0]), v394, *v185.f32, 1), v349, v185, 2), v333, v185, 3);
  v369 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v442, v186.f32[0]), v394, *v186.f32, 1), v349, v186, 2), v333, v186, 3);
  v334 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v442, v187.f32[0]), v394, *v187.f32, 1), v349, v187, 2), v333, v187, 3);
  sub_10001358C(v620, -3.4034, xmmword_1000EC8E0);
  v188 = sub_100013568(v620);
  v395 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v472, v189.f32[0]), v414, *v189.f32, 1), v369, v189, 2), v334, v189, 3);
  v350 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v472, v190.f32[0]), v414, *v190.f32, 1), v369, v190, 2), v334, v190, 3);
  v443 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v472, v188.n128_f32[0]), v414, v188.n128_u64[0], 1), v369, v188, 2), v334, v188, 3);
  v473 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v472, v191.f32[0]), v414, *v191.f32, 1), v369, v191, 2), v334, v191, 3);
  sub_10001358C(v621, 1.5708, xmmword_1000EC920);
  v192 = sub_100013568(v621);
  v728 = 1;
  *(v2 + 2752) = 0x3F8000003F2B851FLL;
  *(v2 + 2760) = 1056964608;
  *(v2 + 2764) = 1;
  *(v2 + 2765) = v733;
  *(v2 + 2767) = v734;
  *(v2 + 2768) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v443, v192.n128_f32[0]), v395, v192.n128_u64[0], 1), v350, v192, 2), v473, v192, 3);
  *(v2 + 2784) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v443, v193.f32[0]), v395, *v193.f32, 1), v350, v193, 2), v473, v193, 3);
  *(v2 + 2800) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v443, v194.f32[0]), v395, *v194.f32, 1), v350, v194, 2), v473, v194, 3);
  *(v2 + 2816) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v443, v195.f32[0]), v395, *v195.f32, 1), v350, v195, 2), v473, v195, 3);
  *(v2 + 2832) = xmmword_1000EFE70;
  *(v2 + 2848) = 0;
  v196 = v731;
  *(v2 + 2851) = v732;
  *(v2 + 2849) = v196;
  *(v2 + 2852) = 1060320051;
  *(v2 + 2856) = 9;
  *(v2 + 2857) = v729;
  *(v2 + 2859) = v730;
  *(v2 + 2860) = 1065353216;
  *(v2 + 2864) = 0;
  *(v2 + 2872) = 0u;
  *(v2 + 2888) = v728;
  *(v2 + 2889) = 2;
  *(v2 + 2891) = 1;
  *(v2 + 2928) = 0;
  *(v2 + 2912) = 0u;
  *(v2 + 2896) = 0u;
  *(v2 + 2932) = 1065353216;
  *(v2 + 2944) = xmmword_1000EF5C0;
  v197 = *algn_10013DCB0;
  v198 = vmulq_f32(xmmword_10013DCA0, 0);
  v199 = xmmword_10013DCC0;
  v200 = xmmword_10013DCD0;
  v201 = vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBE570A3D));
  v474 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v2 + 2960) = 6;
  v415 = vmlaq_f32(vmlaq_f32(vaddq_f32(v197, v198), 0, v199), 0, v200);
  v370 = vmlaq_f32(vaddq_f32(v199, vmlaq_f32(v198, 0, v197)), 0, v200);
  v351 = vaddq_f32(v200, vmlaq_f32(vmlaq_f32(v201, vdupq_n_s32(0xBF11EB85), v197), v493, v199));
  sub_10001358C(v622, 1.5708, xmmword_1000EC910);
  v202 = sub_100013568(v622);
  v494 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v474, v202.n128_f32[0]), v415, v202.n128_u64[0], 1), v370, v202, 2), v351, v202, 3);
  v444 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v474, v203.f32[0]), v415, *v203.f32, 1), v370, v203, 2), v351, v203, 3);
  v396 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v474, v204.f32[0]), v415, *v204.f32, 1), v370, v204, 2), v351, v204, 3);
  v352 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v474, v205.f32[0]), v415, *v205.f32, 1), v370, v205, 2), v351, v205, 3);
  sub_10001358C(v623, -2.4609, xmmword_1000EC8E0);
  v206 = sub_100013568(v623);
  v416 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v494, v207.f32[0]), v444, *v207.f32, 1), v396, v207, 2), v352, v207, 3);
  v371 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v494, v208.f32[0]), v444, *v208.f32, 1), v396, v208, 2), v352, v208, 3);
  v475 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v494, v206.n128_f32[0]), v444, v206.n128_u64[0], 1), v396, v206, 2), v352, v206, 3);
  v495 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v494, v209.f32[0]), v444, *v209.f32, 1), v396, v209, 2), v352, v209, 3);
  sub_10001358C(v624, 1.5708, xmmword_1000EC920);
  v210 = sub_100013568(v624);
  v735 = 1;
  *(v2 + 2976) = 0x3F4CCCCD3FD851ECLL;
  *(v2 + 2984) = 1065353216;
  *(v2 + 2988) = 1;
  *(v2 + 2989) = v740;
  *(v2 + 2991) = v741;
  *(v2 + 2992) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v475, v210.n128_f32[0]), v416, v210.n128_u64[0], 1), v371, v210, 2), v495, v210, 3);
  *(v2 + 3008) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v475, v211.f32[0]), v416, *v211.f32, 1), v371, v211, 2), v495, v211, 3);
  *(v2 + 3024) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v475, v212.f32[0]), v416, *v212.f32, 1), v371, v212, 2), v495, v212, 3);
  *(v2 + 3040) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v475, v213.f32[0]), v416, *v213.f32, 1), v371, v213, 2), v495, v213, 3);
  *(v2 + 3056) = xmmword_1000EFE80;
  *(v2 + 3072) = 0;
  v214 = v738;
  *(v2 + 3075) = v739;
  *(v2 + 3073) = v214;
  *(v2 + 3076) = 1052938076;
  *(v2 + 3080) = 9;
  *(v2 + 3081) = v736;
  *(v2 + 3083) = v737;
  *(v2 + 3084) = 1065353216;
  *(v2 + 3088) = 0;
  *(v2 + 3096) = 0u;
  *(v2 + 3112) = v735;
  *(v2 + 3113) = 2;
  *(v2 + 3115) = 1;
  v215 = xmmword_10013DCA0;
  v216 = *algn_10013DCB0;
  v217 = vmulq_f32(xmmword_10013DCA0, 0);
  *(v2 + 3152) = 0;
  __asm { FMOV            V3.4S, #-4.0 }

  v219 = vmulq_f32(v215, _Q3);
  v220 = vmlaq_f32(v215, 0, v216);
  v221 = xmmword_10013DCC0;
  v222 = xmmword_10013DCD0;
  v445 = vmlaq_f32(vmlaq_f32(v220, 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v2 + 3136) = 0u;
  *(v2 + 3120) = 0u;
  v417 = vmlaq_f32(vmlaq_f32(vaddq_f32(v216, v217), 0, v221), 0, v222);
  *(v2 + 3156) = 1065353216;
  v372 = vmlaq_f32(vaddq_f32(v221, vmlaq_f32(v217, 0, v216)), 0, v222);
  *(v2 + 3168) = xmmword_1000EF630;
  v335 = vaddq_f32(v222, vmlaq_f32(vmlaq_f32(v219, vdupq_n_s32(0x409851EBu), v216), vdupq_n_s32(0x40566666u), v221));
  *(v2 + 3184) = 9;
  sub_10001358C(v625, -1.2392, xmmword_1000EC910);
  v223 = sub_100013568(v625);
  v476 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v445, v223.n128_f32[0]), v417, v223.n128_u64[0], 1), v372, v223, 2), v335, v223, 3);
  v397 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v445, v224.f32[0]), v417, *v224.f32, 1), v372, v224, 2), v335, v224, 3);
  v353 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v445, v225.f32[0]), v417, *v225.f32, 1), v372, v225, 2), v335, v225, 3);
  v336 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v445, v226.f32[0]), v417, *v226.f32, 1), v372, v226, 2), v335, v226, 3);
  sub_10001358C(v626, -0.73304, xmmword_1000EC8E0);
  v227 = sub_100013568(v626);
  v418 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v476, v228.f32[0]), v397, *v228.f32, 1), v353, v228, 2), v336, v228, 3);
  v446 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v476, v227.n128_f32[0]), v397, v227.n128_u64[0], 1), v353, v227, 2), v336, v227, 3);
  v373 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v476, v229.f32[0]), v397, *v229.f32, 1), v353, v229, 2), v336, v229, 3);
  v477 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v476, v230.f32[0]), v397, *v230.f32, 1), v353, v230, 2), v336, v230, 3);
  sub_10001358C(v627, -0.17453, xmmword_1000EC920);
  v231 = sub_100013568(v627);
  v742 = 0;
  *(v2 + 3200) = 0x4040000040400000;
  *(v2 + 3208) = 1045220557;
  *(v2 + 3212) = 1;
  *(v2 + 3213) = v747;
  *(v2 + 3215) = v748;
  *(v2 + 3216) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v446, v231.n128_f32[0]), v418, v231.n128_u64[0], 1), v373, v231, 2), v477, v231, 3);
  *(v2 + 3232) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v446, v232.f32[0]), v418, *v232.f32, 1), v373, v232, 2), v477, v232, 3);
  *(v2 + 3248) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v446, v233.f32[0]), v418, *v233.f32, 1), v373, v233, 2), v477, v233, 3);
  *(v2 + 3264) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v446, v234.f32[0]), v418, *v234.f32, 1), v373, v234, 2), v477, v234, 3);
  *(v2 + 3280) = xmmword_1000EFE90;
  *(v2 + 3296) = 2;
  v235 = v745;
  *(v2 + 3299) = v746;
  *(v2 + 3297) = v235;
  *(v2 + 3300) = 1072064102;
  *(v2 + 3304) = 1;
  *(v2 + 3305) = v743;
  *(v2 + 3307) = v744;
  *(v2 + 3308) = 1050589266;
  *(v2 + 3312) = xmmword_1000EFEA0;
  *(v2 + 3328) = 0x3F66666600000000;
  *(v2 + 3336) = v742;
  *(v2 + 3337) = 3;
  *(v2 + 3339) = 1;
  *(v2 + 3344) = 0u;
  *(v2 + 3360) = sub_10004A57C;
  *(v2 + 3368) = 0;
  *(v2 + 3376) = 0x3F80000000000000;
  *(v2 + 3392) = xmmword_1000EF5A0;
  *(v2 + 3408) = 5;
  v236 = vmulq_f32(xmmword_10013DCA0, 0);
  v478 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v447 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v236), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v419 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v236, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v526 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBFCCCCCC)), vdupq_n_s32(0x40233333u), *algn_10013DCB0), v525, xmmword_10013DCC0));
  sub_10001358C(v628, -0.69813, xmmword_1000EC910);
  v237 = sub_100013568(v628);
  v566 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v478, v237.n128_f32[0]), v447, v237.n128_u64[0], 1), v419, v237, 2), v526, v237, 3);
  v507 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v478, v238.f32[0]), v447, *v238.f32, 1), v419, v238, 2), v526, v238, 3);
  v398 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v478, v239.f32[0]), v447, *v239.f32, 1), v419, v239, 2), v526, v239, 3);
  v420 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v478, v240.f32[0]), v447, *v240.f32, 1), v419, v240, 2), v526, v240, 3);
  sub_10001358C(v629, 0.0, xmmword_1000EC8E0);
  v241 = sub_100013568(v629);
  v527 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v566, v241.n128_f32[0]), v507, v241.n128_u64[0], 1), v398, v241, 2), v420, v241, 3);
  v479 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v566, v242.f32[0]), v507, *v242.f32, 1), v398, v242, 2), v420, v242, 3);
  v448 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v566, v243.f32[0]), v507, *v243.f32, 1), v398, v243, 2), v420, v243, 3);
  v567 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v566, v244.f32[0]), v507, *v244.f32, 1), v398, v244, 2), v420, v244, 3);
  sub_10001358C(v630, 0.0, xmmword_1000EC920);
  v245 = sub_100013568(v630);
  v749 = 1;
  *(v2 + 3424) = 0x408CCCCD3FF33333;
  *(v2 + 3432) = 1047904911;
  *(v2 + 3436) = 1;
  *(v2 + 3437) = v754;
  *(v2 + 3439) = v755;
  *(v2 + 3440) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v527, v245.n128_f32[0]), v479, v245.n128_u64[0], 1), v448, v245, 2), v567, v245, 3);
  *(v2 + 3456) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v527, v246.f32[0]), v479, *v246.f32, 1), v448, v246, 2), v567, v246, 3);
  *(v2 + 3472) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v527, v247.f32[0]), v479, *v247.f32, 1), v448, v247, 2), v567, v247, 3);
  *(v2 + 3488) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v527, v248.f32[0]), v479, *v248.f32, 1), v448, v248, 2), v567, v248, 3);
  *(v2 + 3504) = xmmword_1000EC900;
  *(v2 + 3520) = 0;
  v249 = v752;
  *(v2 + 3523) = v753;
  *(v2 + 3521) = v249;
  *(v2 + 3524) = 1052602532;
  *(v2 + 3528) = 9;
  *(v2 + 3529) = v750;
  *(v2 + 3531) = v751;
  *(v2 + 3532) = 1065353216;
  *(v2 + 3536) = 0;
  *(v2 + 3544) = 0u;
  *(v2 + 3560) = v749;
  *(v2 + 3561) = 3;
  *(v2 + 3563) = 1;
  *(v2 + 3568) = 0u;
  *(v2 + 3584) = sub_100081600;
  *(v2 + 3592) = 0;
  *(v2 + 3600) = 0x3F80000000000000;
  *(v2 + 3616) = xmmword_1000EF5C0;
  *(v2 + 3632) = 5;
  v250 = vmulq_f32(xmmword_10013DCA0, 0);
  v568 = vdupq_n_s32(0x3FD1EB85u);
  v508 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v449 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v250), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v421 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v250, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v560 = vdupq_n_s32(0x40047AE1u);
  v374 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, v568), vdupq_n_s32(0xC00EB852), *algn_10013DCB0), v560, xmmword_10013DCC0));
  sub_10001358C(v631, 0.0, xmmword_1000EC910);
  v251 = sub_100013568(v631);
  v528 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v508, v251.n128_f32[0]), v449, v251.n128_u64[0], 1), v421, v251, 2), v374, v251, 3);
  v480 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v508, v252.f32[0]), v449, *v252.f32, 1), v421, v252, 2), v374, v252, 3);
  v399 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v508, v253.f32[0]), v449, *v253.f32, 1), v421, v253, 2), v374, v253, 3);
  v375 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v508, v254.f32[0]), v449, *v254.f32, 1), v421, v254, 2), v374, v254, 3);
  sub_10001358C(v632, 0.54105, xmmword_1000EC8E0);
  v255 = sub_100013568(v632);
  v509 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v528, v255.n128_f32[0]), v480, v255.n128_u64[0], 1), v399, v255, 2), v375, v255, 3);
  v450 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v528, v256.f32[0]), v480, *v256.f32, 1), v399, v256, 2), v375, v256, 3);
  v422 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v528, v257.f32[0]), v480, *v257.f32, 1), v399, v257, 2), v375, v257, 3);
  v529 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v528, v258.f32[0]), v480, *v258.f32, 1), v399, v258, 2), v375, v258, 3);
  sub_10001358C(v633, 0.0, xmmword_1000EC920);
  v259 = sub_100013568(v633);
  v756 = 1;
  *(v2 + 3648) = 0x409333334039999ALL;
  *(v2 + 3656) = 1056964608;
  *(v2 + 3660) = 1;
  *(v2 + 3661) = v761;
  *(v2 + 3663) = v762;
  *(v2 + 3664) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v509, v259.n128_f32[0]), v450, v259.n128_u64[0], 1), v422, v259, 2), v529, v259, 3);
  *(v2 + 3680) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v509, v260.f32[0]), v450, *v260.f32, 1), v422, v260, 2), v529, v260, 3);
  *(v2 + 3696) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v509, v261.f32[0]), v450, *v261.f32, 1), v422, v261, 2), v529, v261, 3);
  *(v2 + 3712) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v509, v262.f32[0]), v450, *v262.f32, 1), v422, v262, 2), v529, v262, 3);
  *(v2 + 3728) = xmmword_1000EFEB0;
  *(v2 + 3744) = 0;
  v263 = v759;
  *(v2 + 3747) = v760;
  *(v2 + 3745) = v263;
  *(v2 + 3748) = 1091777331;
  *(v2 + 3752) = 9;
  *(v2 + 3753) = v757;
  *(v2 + 3755) = v758;
  *(v2 + 3756) = 1065353216;
  *(v2 + 3760) = 0;
  *(v2 + 3768) = 0u;
  *(v2 + 3784) = v756;
  *(v2 + 3785) = 3;
  *(v2 + 3787) = 1;
  *(v2 + 3792) = 0u;
  *(v2 + 3808) = sub_10004A638;
  *(v2 + 3816) = 0;
  *(v2 + 3824) = 0x3F80000000000000;
  *(v2 + 3840) = xmmword_1000EF5D0;
  *(v2 + 3856) = 5;
  v264 = vmulq_f32(xmmword_10013DCA0, 0);
  v530 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v481 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v264), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v451 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v264, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v501 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC008F5C2)), v500, *algn_10013DCB0), vdupq_n_s32(0x400B851Fu), xmmword_10013DCC0));
  sub_10001358C(v634, -0.69813, xmmword_1000EC910);
  v265 = sub_100013568(v634);
  v551 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v530, v265.n128_f32[0]), v481, v265.n128_u64[0], 1), v451, v265, 2), v501, v265, 3);
  v510 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v530, v266.f32[0]), v481, *v266.f32, 1), v451, v266, 2), v501, v266, 3);
  v423 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v530, v267.f32[0]), v481, *v267.f32, 1), v451, v267, 2), v501, v267, 3);
  v452 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v530, v268.f32[0]), v481, *v268.f32, 1), v451, v268, 2), v501, v268, 3);
  sub_10001358C(v635, 0.0, xmmword_1000EC8E0);
  v269 = sub_100013568(v635);
  v531 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v551, v269.n128_f32[0]), v510, v269.n128_u64[0], 1), v423, v269, 2), v452, v269, 3);
  v502 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v551, v270.f32[0]), v510, *v270.f32, 1), v423, v270, 2), v452, v270, 3);
  v482 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v551, v271.f32[0]), v510, *v271.f32, 1), v423, v271, 2), v452, v271, 3);
  v552 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v551, v272.f32[0]), v510, *v272.f32, 1), v423, v272, 2), v452, v272, 3);
  sub_10001358C(v636, 0.0, xmmword_1000EC920);
  v273 = sub_100013568(v636);
  v763 = 1;
  *(v2 + 3872) = 0x4020000040000000;
  *(v2 + 3880) = 1050253722;
  *(v2 + 3884) = 1;
  *(v2 + 3885) = v768;
  *(v2 + 3887) = v769;
  *(v2 + 3888) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v531, v273.n128_f32[0]), v502, v273.n128_u64[0], 1), v482, v273, 2), v552, v273, 3);
  *(v2 + 3904) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v531, v274.f32[0]), v502, *v274.f32, 1), v482, v274, 2), v552, v274, 3);
  *(v2 + 3920) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v531, v275.f32[0]), v502, *v275.f32, 1), v482, v275, 2), v552, v275, 3);
  *(v2 + 3936) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v531, v276.f32[0]), v502, *v276.f32, 1), v482, v276, 2), v552, v276, 3);
  *(v2 + 3952) = xmmword_1000EFEC0;
  *(v2 + 3968) = 0;
  v277 = v766;
  *(v2 + 3971) = v767;
  *(v2 + 3969) = v277;
  *(v2 + 3972) = 1091253043;
  *(v2 + 3976) = 9;
  *(v2 + 3977) = v764;
  *(v2 + 3979) = v765;
  *(v2 + 3980) = 1065353216;
  *(v2 + 3984) = 0;
  *(v2 + 3992) = 0u;
  *(v2 + 4008) = v763;
  *(v2 + 4009) = 3;
  *(v2 + 4011) = 1;
  *(v2 + 4016) = 0u;
  *(v2 + 4032) = sub_100081604;
  *(v2 + 4040) = 0;
  *(v2 + 4048) = 0x3F80000000000000;
  *(v2 + 4064) = xmmword_1000EF7D0;
  *(v2 + 4080) = 5;
  v278 = vmulq_f32(xmmword_10013DCA0, 0);
  v532 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v511 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v278), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v503 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v278, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v561 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, v568), vdupq_n_s32(0xC0366666), *algn_10013DCB0), v560, xmmword_10013DCC0));
  sub_10001358C(v637, 0.0, xmmword_1000EC910);
  v279 = sub_100013568(v637);
  v569 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v532, v279.n128_f32[0]), v511, v279.n128_u64[0], 1), v503, v279, 2), v561, v279, 3);
  v553 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v532, v280.f32[0]), v511, *v280.f32, 1), v503, v280, 2), v561, v280, 3);
  v521 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v532, v281.f32[0]), v511, *v281.f32, 1), v503, v281, 2), v561, v281, 3);
  v504 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v532, v282.f32[0]), v511, *v282.f32, 1), v503, v282, 2), v561, v282, 3);
  sub_10001358C(v638, 0.50615, xmmword_1000EC8E0);
  v283 = sub_100013568(v638);
  v533 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v569, v284.f32[0]), v553, *v284.f32, 1), v521, v284, 2), v504, v284, 3);
  v512 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v569, v285.f32[0]), v553, *v285.f32, 1), v521, v285, 2), v504, v285, 3);
  v562 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v569, v283.n128_f32[0]), v553, v283.n128_u64[0], 1), v521, v283, 2), v504, v283, 3);
  v570 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v569, v286.f32[0]), v553, *v286.f32, 1), v521, v286, 2), v504, v286, 3);
  sub_10001358C(v639, -0.5236, xmmword_1000EC920);
  v287 = sub_100013568(v639);
  v770 = 1;
  *(v2 + 4096) = 0x40A0000040A00000;
  *(v2 + 4104) = 1056964608;
  *(v2 + 4108) = 1;
  *(v2 + 4109) = v775;
  *(v2 + 4111) = v776;
  *(v2 + 4112) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v562, v287.n128_f32[0]), v533, v287.n128_u64[0], 1), v512, v287, 2), v570, v287, 3);
  *(v2 + 4128) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v562, v288.f32[0]), v533, *v288.f32, 1), v512, v288, 2), v570, v288, 3);
  *(v2 + 4144) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v562, v289.f32[0]), v533, *v289.f32, 1), v512, v289, 2), v570, v289, 3);
  *(v2 + 4160) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v562, v290.f32[0]), v533, *v290.f32, 1), v512, v290, 2), v570, v290, 3);
  *(v2 + 4176) = xmmword_1000EC900;
  *(v2 + 4192) = 0;
  v291 = v773;
  *(v2 + 4195) = v774;
  *(v2 + 4193) = v291;
  *(v2 + 4196) = 1093664768;
  *(v2 + 4200) = 10;
  *(v2 + 4201) = v771;
  *(v2 + 4203) = v772;
  *(v2 + 4216) = 0u;
  *(v2 + 4204) = 1065353216;
  *(v2 + 4208) = 0;
  *(v2 + 4232) = v770;
  *(v2 + 4233) = 3;
  *(v2 + 4235) = 1;
  *(v2 + 4240) = 0u;
  *(v2 + 4256) = sub_100081614;
  *(v2 + 4264) = 0;
  *(v2 + 4272) = 0x3F80000000000000;
  *(v2 + 4288) = xmmword_1000EF630;
  *(v2 + 4304) = 5;
  v292 = vmulq_f32(xmmword_10013DCA0, 0);
  v571 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v554 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v292), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v534 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v292, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v513 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3F599999u)), vdupq_n_s32(0xBFA51EB8), *algn_10013DCB0), vdupq_n_s32(0x4010A3D7u), xmmword_10013DCC0));
  sub_10001358C(v640, -0.27925, xmmword_1000EC910);
  v293 = sub_100013568(v640);
  v577 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v571, v293.n128_f32[0]), v554, v293.n128_u64[0], 1), v534, v293, 2), v513, v293, 3);
  v563 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v571, v294.f32[0]), v554, *v294.f32, 1), v534, v294, 2), v513, v294, 3);
  v522 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v571, v295.f32[0]), v554, *v295.f32, 1), v534, v295, 2), v513, v295, 3);
  v555 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v571, v296.f32[0]), v554, *v296.f32, 1), v534, v296, 2), v513, v296, 3);
  sub_10001358C(v641, 0.47124, xmmword_1000EC8E0);
  v297 = sub_100013568(v641);
  v581 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v577, v298.f32[0]), v563, *v298.f32, 1), v522, v298, 2), v555, v298, 3);
  v582 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v577, v297.n128_f32[0]), v563, v297.n128_u64[0], 1), v522, v297, 2), v555, v297, 3);
  v572 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v577, v299.f32[0]), v563, *v299.f32, 1), v522, v299, 2), v555, v299, 3);
  v578 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v577, v300.f32[0]), v563, *v300.f32, 1), v522, v300, 2), v555, v300, 3);
  sub_10001358C(v642, 0.55851, xmmword_1000EC920);
  v301 = sub_100013568(v642);
  v777 = 1;
  *(v2 + 4320) = 0x3FA666663FC00000;
  *(v2 + 4328) = 1053273620;
  *(v2 + 4332) = 1;
  *(v2 + 4333) = v782;
  *(v2 + 4335) = v783;
  *(v2 + 4336) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v582, v301.n128_f32[0]), v581, v301.n128_u64[0], 1), v572, v301, 2), v578, v301, 3);
  *(v2 + 4352) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v582, v302.f32[0]), v581, *v302.f32, 1), v572, v302, 2), v578, v302, 3);
  *(v2 + 4368) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v582, v303.f32[0]), v581, *v303.f32, 1), v572, v303, 2), v578, v303, 3);
  *(v2 + 4384) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v582, v304.f32[0]), v581, *v304.f32, 1), v572, v304, 2), v578, v304, 3);
  *(v2 + 4400) = xmmword_1000EFED0;
  *(v2 + 4416) = 0;
  v305 = v780;
  *(v2 + 4419) = v781;
  *(v2 + 4417) = v305;
  *(v2 + 4420) = 1101004800;
  *(v2 + 4424) = 9;
  *(v2 + 4425) = v778;
  *(v2 + 4427) = v779;
  *(v2 + 4428) = 1065353216;
  *(v2 + 4440) = 0u;
  *(v2 + 4432) = 0;
  *(v2 + 4456) = v777;
  *(v2 + 4457) = 3;
  *(v2 + 4459) = 1;
  *(v2 + 4464) = 0u;
  *(v2 + 4480) = sub_100081614;
  *(v2 + 4488) = 0;
  *(v2 + 4496) = 0x3F80000000000000;
  v306 = sub_1000A0774(v2);
  swift_setDeallocating();
  sub_1000125FC(&qword_100131018, &qword_1000F1D70);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1000125FC(&qword_100131020, &qword_1000F1D78);
  v307 = swift_allocObject();
  v307[1] = xmmword_1000EC880;
  v307[2] = xmmword_1000EFEE0;
  v307[3] = xmmword_1000EFEF0;
  v308 = swift_allocObject();
  v308[1] = xmmword_1000ED250;
  v308[2] = xmmword_1000EFF00;
  v308[3] = xmmword_1000EFF10;
  v308[4] = xmmword_1000EFF20;
  v309 = swift_allocObject();
  v309[1] = xmmword_1000EC880;
  v309[2] = xmmword_1000EFF30;
  v309[3] = xmmword_1000EFF40;
  v310 = qword_10013AC20;
  v311 = unk_10013AC28;
  v312 = qword_10013AC30;

  v313 = qword_10013AC50;
  v314 = sub_1000A0A98(_swiftEmptyArrayStorage);
  v784.i64[0] = v310;
  v784.i64[1] = v311;
  v785.i64[0] = v312;
  v785.i64[1] = v314;
  v786.i64[0] = _swiftEmptyArrayStorage;
  v786.i64[1] = _swiftEmptyArrayStorage;
  v787 = v313;
  v642[3] = v784;
  v642[4] = v785;
  v642[5] = v786;
  v643 = v313;
  v315 = sub_1000A0A98(&off_10011F2E0);
  sub_1000047C4(&unk_10011F300, &qword_100131048, &qword_1000F1E40);
  v316 = sub_1000A092C(_swiftEmptyArrayStorage);
  sub_1000BA704(v316, v315, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v788);

  sub_100081544(&v784);
  swift_bridgeObjectRetain_n();
  v318 = sub_1000C1928(v317, v306);

  sub_1000C53DC(v318, v792);
  v320 = sub_1000C199C(v319, v306);

  sub_1000C53DC(v320, v790);
  xmmword_10013B290 = v546;
  unk_10013B2A0 = v545;
  qword_10013B2B0 = v544;
  dword_10013B2B8 = v0;
  xmmword_10013B2C0 = v543;
  unk_10013B2D0 = v542;
  qword_10013B2E0 = v1;
  dword_10013B2E8 = v541;
  xmmword_10013B2F0 = v540;
  qword_10013B300 = v539;
  xmmword_10013B310 = v538;
  qword_10013B320 = v537;
  unk_10013B328 = v536;
  dword_10013B330 = v535;
  qword_10013B338 = 0;
  unk_10013B340 = v306;
  qword_10013B368 = v793;
  unk_10013B358 = v792[1];
  unk_10013B348 = v792[0];
  xmmword_10013B370 = v790[0];
  unk_10013B380 = v790[1];
  qword_10013B390 = v791;
  qword_10013B398 = sub_10004A658;
  qword_10013B3A0 = 0;
  xmmword_10013B3B0 = xmmword_1000EFF50;
  unk_10013B3C0 = xmmword_1000EFF60;
  qword_10013B3D0 = v307;
  word_10013B3DC = 7;
  dword_10013B3D8 = 0;
  xmmword_10013B3E0 = xmmword_1000EFF70;
  qword_10013B3F0 = v308;
  xmmword_10013B3F8 = xmmword_1000EFF80;
  xmmword_10013B408 = xmmword_1000EFF90;
  qword_10013B418 = 1054267095;
  unk_10013B420 = v309;
  xmmword_10013B428 = xmmword_1000EFFA0;
  xmmword_10013B438 = xmmword_1000EFFB0;
  qword_10013B448 = 1062721496;
  result = 0.00000000119793708;
  qword_10013B490 = v789;
  xmmword_10013B470 = v788[1];
  unk_10013B480 = v788[2];
  xmmword_10013B450 = xmmword_1000EFFC0;
  unk_10013B460 = v788[0];
  return result;
}

uint64_t sub_100049FFC(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.15) * a2) + 0.15;
    *result = COERCE_UNSIGNED_INT(((*result + -2.6) * a2) + 2.6) | (COERCE_UNSIGNED_INT(((*(result + 4) + -4.0) * a2) + 4.0) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -2.8) * a2) + 2.8;
    *(result + 108) = ((*(result + 108) + -0.2) * a2) + 0.2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

float sub_10004A0E0(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -0.17) * a2) + 0.17;
  *(a1 + 100) = result;
  return result;
}

uint64_t sub_10004A110(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.1) * a2) + 0.1;
    *result = COERCE_UNSIGNED_INT(((*result + -2.9) * a2) + 2.9) | (COERCE_UNSIGNED_INT(((*(result + 4) + -5.0) * a2) + 5.0) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -0.63) * a2) + 0.63;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10004A1C8(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.2) * a2) + 0.2;
    *result = COERCE_UNSIGNED_INT(((*result + -5.0) * a2) + 5.0) | (COERCE_UNSIGNED_INT(((*(result + 4) + -0.45) * a2) + 0.45) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -0.27) * a2) + 0.27;
  }

  else
  {
    __break(1u);
  }

  return result;
}

float sub_10004A280(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -0.38) * a2) + 0.38;
  *(a1 + 100) = result;
  return result;
}

uint64_t sub_10004A2B0(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.5) * a2) + 0.5;
    *result = COERCE_UNSIGNED_INT(((*result + -0.86) * a2) + 0.86) | (COERCE_UNSIGNED_INT(((*(result + 4) + -0.37) * a2) + 0.37) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -0.44) * a2) + 0.44;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10004A368(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.12) * a2) + 0.12;
    *result = COERCE_UNSIGNED_INT(((*result + -2.5) * a2) + 2.5) | (COERCE_UNSIGNED_INT(((*(result + 4) + -3.4) * a2) + 3.4) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -1.7) * a2) + 1.7;
    *(result + 108) = ((*(result + 108) + -0.66) * a2) + 0.66;
  }

  else
  {
    __break(1u);
  }

  return result;
}

float sub_10004A44C(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -0.33) * a2) + 0.33;
  *(a1 + 100) = result;
  return result;
}

float sub_10004A47C(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -0.21) * a2) + 0.21;
  *(a1 + 100) = result;
  return result;
}

float sub_10004A4AC(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -0.052) * a2) + 0.052;
  *(a1 + 100) = result;
  return result;
}

uint64_t sub_10004A4DC(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.5) * a2) + 0.5;
    *result = COERCE_UNSIGNED_INT(((*result + -2.1) * a2) + 2.1) | (COERCE_UNSIGNED_INT(((*(result + 4) + -0.8) * a2) + 0.8) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -2.1) * a2) + 2.1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10004A57C(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.37) * a2) + 0.37;
    *result = COERCE_UNSIGNED_INT(((*result + -3.0) * a2) + 3.0) | (COERCE_UNSIGNED_INT(((*(result + 4) + -3.0) * a2) + 3.0) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -1.0) * a2) + 1.0;
    *(result + 108) = ((*(result + 108) + -0.3) * a2) + 0.3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

float sub_10004A638(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -3.0) * a2) + 3.0;
  *(a1 + 100) = result;
  return result;
}

float32x2_t sub_10004A658(float a1)
{
  v1 = a1;
  if (a1 < 0.0)
  {
    a1 = 0.0;
  }

  v2 = a1 * 3.1416;
  if (v1 >= 1.0)
  {
    v2 = 3.1416;
  }

  return vmul_n_f32(vadd_f32(vmul_n_f32(0x3E99999A3EF0A3D8, fminf(v1 / 0.95833, 1.0)), 0x3F3333333F07AE14), ((0.5 - (cosf(v2) * 0.5)) * 0.122) + 0.028);
}

double sub_10004A71C()
{
  if (qword_10012F578 != -1)
  {
    swift_once();
  }

  v433 = unk_10013AA60;
  v434 = xmmword_10013AA50;
  v432 = qword_10013AA70;
  v0 = dword_10013AA78;
  v430 = unk_10013AA90;
  v431 = xmmword_10013AA80;
  v1 = qword_10013AAA0;
  v2 = dword_10013AAA8;
  v3 = qword_10013AAC0;
  v428 = xmmword_10013AAD0;
  v429 = xmmword_10013AAB0;
  v4 = qword_10013AAE0;
  v427 = unk_10013AAE8;
  v426 = dword_10013AAF0;
  sub_1000125FC(&qword_100131010, &qword_1000F1D68);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000EFFD0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  *(v5 + 48) = 9;
  if (qword_10012F6E8 != -1)
  {
    swift_once();
  }

  v6 = vmulq_f32(xmmword_10013DCA0, 0);
  v474 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v460 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v6), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v449 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v6, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v418 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBFA66666)), vdupq_n_s32(0x401CCCCDu), *algn_10013DCB0), vdupq_n_s32(0xBCA3D70A), xmmword_10013DCC0));
  sub_10001358C(v477, 1.9024, xmmword_1000EC910);
  v7 = sub_100013568(v477);
  v473 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v474, v7.n128_f32[0]), v460, v7.n128_u64[0], 1), v449, v7, 2), v418, v7, 3);
  v454 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v474, v8.f32[0]), v460, *v8.f32, 1), v449, v8, 2), v418, v8, 3);
  v435 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v474, v9.f32[0]), v460, *v9.f32, 1), v449, v9, 2), v418, v9, 3);
  v400 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v474, v10.f32[0]), v460, *v10.f32, 1), v449, v10, 2), v418, v10, 3);
  sub_10001358C(v478, -2.3911, xmmword_1000EC8E0);
  v11 = sub_100013568(v478);
  v12 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v473, v11.n128_f32[0]), v454, v11.n128_u64[0], 1), v435, v11, 2), v400, v11, 3);
  v450 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v473, v13.f32[0]), v454, *v13.f32, 1), v435, v13, 2), v400, v13, 3);
  v419 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v473, v14.f32[0]), v454, *v14.f32, 1), v435, v14, 2), v400, v14, 3);
  v455 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v473, v15.f32[0]), v454, *v15.f32, 1), v435, v15, 2), v400, v15, 3);
  v461 = v12;
  sub_10001358C(v479, 0.0, xmmword_1000EC920);
  v16 = sub_100013568(v479);
  v528 = 0;
  *(v5 + 64) = 0x405333333F666666;
  *(v5 + 72) = 0;
  *(v5 + 76) = 1;
  *(v5 + 77) = v533;
  *(v5 + 79) = v534;
  *(v5 + 80) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v461, v16.n128_f32[0]), v450, v16.n128_u64[0], 1), v419, v16, 2), v455, v16, 3);
  *(v5 + 96) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v461, v17.f32[0]), v450, *v17.f32, 1), v419, v17, 2), v455, v17, 3);
  *(v5 + 112) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v461, v18.f32[0]), v450, *v18.f32, 1), v419, v18, 2), v455, v18, 3);
  *(v5 + 128) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v461, v19.f32[0]), v450, *v19.f32, 1), v419, v19, 2), v455, v19, 3);
  *(v5 + 144) = xmmword_1000EC900;
  *(v5 + 160) = 0;
  v20 = v531;
  *(v5 + 163) = v532;
  *(v5 + 161) = v20;
  *(v5 + 164) = 1114636288;
  *(v5 + 168) = 2;
  *(v5 + 169) = v529;
  *(v5 + 171) = v530;
  *(v5 + 172) = 1060320051;
  *(v5 + 176) = xmmword_1000EFFE0;
  *(v5 + 192) = 0x3F2B851F3D5D2F1BLL;
  *(v5 + 200) = v528;
  *(v5 + 201) = 0;
  *(v5 + 203) = 1;
  *(v5 + 208) = 0u;
  *(v5 + 224) = sub_10004DA30;
  *(v5 + 232) = 0;
  *(v5 + 240) = 0x3F80000000000000;
  *(v5 + 256) = xmmword_1000EF5A0;
  *(v5 + 272) = 1;
  v21 = vmulq_f32(xmmword_10013DCA0, 0);
  v436 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v401 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v21), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v381 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v21, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v333 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBF2147AE)), vdupq_n_s32(0x3F933333u), *algn_10013DCB0), vdupq_n_s32(0x3EB851EBu), xmmword_10013DCC0));
  sub_10001358C(v480, 2.042, xmmword_1000EC910);
  v22 = sub_100013568(v480);
  v451 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v436, v22.n128_f32[0]), v401, v22.n128_u64[0], 1), v381, v22, 2), v333, v22, 3);
  v420 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v436, v23.f32[0]), v401, *v23.f32, 1), v381, v23, 2), v333, v23, 3);
  v355 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v436, v24.f32[0]), v401, *v24.f32, 1), v381, v24, 2), v333, v24, 3);
  v334 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v436, v25.f32[0]), v401, *v25.f32, 1), v381, v25, 2), v333, v25, 3);
  sub_10001358C(v481, -2.7053, xmmword_1000EC8E0);
  v26 = sub_100013568(v481);
  v402 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v451, v27.f32[0]), v420, *v27.f32, 1), v355, v27, 2), v334, v27, 3);
  v382 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v451, v28.f32[0]), v420, *v28.f32, 1), v355, v28, 2), v334, v28, 3);
  v437 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v451, v26.n128_f32[0]), v420, v26.n128_u64[0], 1), v355, v26, 2), v334, v26, 3);
  v452 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v451, v29.f32[0]), v420, *v29.f32, 1), v355, v29, 2), v334, v29, 3);
  sub_10001358C(v482, -0.10472, xmmword_1000EC920);
  v30 = sub_100013568(v482);
  v535 = 1;
  *(v5 + 288) = 0x407CCCCD3FA00000;
  *(v5 + 296) = 1036831949;
  *(v5 + 300) = 1;
  *(v5 + 301) = v540;
  *(v5 + 303) = v541;
  *(v5 + 304) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v437, v30.n128_f32[0]), v402, v30.n128_u64[0], 1), v382, v30, 2), v452, v30, 3);
  *(v5 + 320) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v437, v31.f32[0]), v402, *v31.f32, 1), v382, v31, 2), v452, v31, 3);
  *(v5 + 336) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v437, v32.f32[0]), v402, *v32.f32, 1), v382, v32, 2), v452, v32, 3);
  *(v5 + 352) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v437, v33.f32[0]), v402, *v33.f32, 1), v382, v33, 2), v452, v33, 3);
  *(v5 + 368) = xmmword_1000EC900;
  *(v5 + 384) = 0;
  v34 = v538;
  *(v5 + 387) = v539;
  *(v5 + 385) = v34;
  *(v5 + 388) = 1075838976;
  *(v5 + 392) = 10;
  *(v5 + 393) = v536;
  *(v5 + 395) = v537;
  *(v5 + 396) = 1065353216;
  *(v5 + 416) = 0;
  *(v5 + 400) = 0u;
  *(v5 + 424) = v535;
  *(v5 + 425) = 0;
  *(v5 + 427) = 0;
  *(v5 + 432) = 0u;
  *(v5 + 448) = sub_100081614;
  *(v5 + 456) = 0;
  *(v5 + 464) = 0x3F80000000000000;
  *(v5 + 480) = xmmword_1000EF5C0;
  *(v5 + 496) = 1;
  v35 = vmulq_f32(xmmword_10013DCA0, 0);
  v421 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v383 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v35), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v356 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v35, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v308 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBEC28F5C)), vdupq_n_s32(0x3FC28F5Cu), *algn_10013DCB0), vdupq_n_s32(0x3E0F5C29u), xmmword_10013DCC0));
  sub_10001358C(v483, 2.9322, xmmword_1000EC910);
  v36 = sub_100013568(v483);
  v438 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v421, v36.n128_f32[0]), v383, v36.n128_u64[0], 1), v356, v36, 2), v308, v36, 3);
  v403 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v421, v37.f32[0]), v383, *v37.f32, 1), v356, v37, 2), v308, v37, 3);
  v335 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v421, v38.f32[0]), v383, *v38.f32, 1), v356, v38, 2), v308, v38, 3);
  v309 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v421, v39.f32[0]), v383, *v39.f32, 1), v356, v39, 2), v308, v39, 3);
  sub_10001358C(v484, -2.8274, xmmword_1000EC8E0);
  v40 = sub_100013568(v484);
  v422 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v438, v40.n128_f32[0]), v403, v40.n128_u64[0], 1), v335, v40, 2), v309, v40, 3);
  v384 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v438, v41.f32[0]), v403, *v41.f32, 1), v335, v41, 2), v309, v41, 3);
  v357 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v438, v42.f32[0]), v403, *v42.f32, 1), v335, v42, 2), v309, v42, 3);
  v439 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v438, v43.f32[0]), v403, *v43.f32, 1), v335, v43, 2), v309, v43, 3);
  sub_10001358C(v485, 0.45379, xmmword_1000EC920);
  v44 = sub_100013568(v485);
  v542 = 1;
  *(v5 + 512) = 0x406666663FF33333;
  *(v5 + 520) = 1047904911;
  *(v5 + 524) = 1;
  *(v5 + 525) = v547;
  *(v5 + 527) = v548;
  *(v5 + 528) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v422, v44.n128_f32[0]), v384, v44.n128_u64[0], 1), v357, v44, 2), v439, v44, 3);
  *(v5 + 544) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v422, v45.f32[0]), v384, *v45.f32, 1), v357, v45, 2), v439, v45, 3);
  *(v5 + 560) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v422, v46.f32[0]), v384, *v46.f32, 1), v357, v46, 2), v439, v46, 3);
  *(v5 + 576) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v422, v47.f32[0]), v384, *v47.f32, 1), v357, v47, 2), v439, v47, 3);
  *(v5 + 592) = xmmword_1000EC900;
  *(v5 + 608) = 0;
  v48 = v545;
  *(v5 + 611) = v546;
  *(v5 + 609) = v48;
  *(v5 + 612) = 1082130432;
  *(v5 + 616) = 10;
  *(v5 + 617) = v543;
  *(v5 + 619) = v544;
  *(v5 + 620) = 1065353216;
  *(v5 + 640) = 0;
  *(v5 + 624) = 0u;
  *(v5 + 648) = v542;
  *(v5 + 649) = 0;
  *(v5 + 651) = 0;
  *(v5 + 656) = 0u;
  *(v5 + 672) = sub_100081614;
  *(v5 + 680) = 0;
  *(v5 + 688) = 0x3F80000000000000;
  *(v5 + 704) = xmmword_1000EF5D0;
  *(v5 + 720) = 1;
  v49 = vmulq_f32(xmmword_10013DCA0, 0);
  v423 = vdupq_n_s32(0xBEAE147B);
  v404 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v358 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v49), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v310 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v49, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v275 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, v423), vdupq_n_s32(0x3F1EB852u), *algn_10013DCB0), vdupq_n_s32(0xBE2E147B), xmmword_10013DCC0));
  sub_10001358C(v486, 2.9322, xmmword_1000EC910);
  v50 = sub_100013568(v486);
  v385 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v404, v50.n128_f32[0]), v358, v50.n128_u64[0], 1), v310, v50, 2), v275, v50, 3);
  v336 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v404, v51.f32[0]), v358, *v51.f32, 1), v310, v51, 2), v275, v51, 3);
  v289 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v404, v52.f32[0]), v358, *v52.f32, 1), v310, v52, 2), v275, v52, 3);
  v276 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v404, v53.f32[0]), v358, *v53.f32, 1), v310, v53, 2), v275, v53, 3);
  sub_10001358C(v487, -2.8274, xmmword_1000EC8E0);
  v54 = sub_100013568(v487);
  v55 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v385, v54.n128_f32[0]), v336, v54.n128_u64[0], 1), v289, v54, 2), v276, v54, 3);
  v359 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v385, v56.f32[0]), v336, *v56.f32, 1), v289, v56, 2), v276, v56, 3);
  v311 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v385, v57.f32[0]), v336, *v57.f32, 1), v289, v57, 2), v276, v57, 3);
  v386 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v385, v58.f32[0]), v336, *v58.f32, 1), v289, v58, 2), v276, v58, 3);
  v405 = v55;
  sub_10001358C(v488, -0.33161, xmmword_1000EC920);
  v59 = sub_100013568(v488);
  v549 = 1;
  *(v5 + 736) = 0x4037AE144005C28FLL;
  *(v5 + 744) = 1036831949;
  *(v5 + 748) = 1;
  *(v5 + 749) = v554;
  *(v5 + 751) = v555;
  *(v5 + 752) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v405, v59.n128_f32[0]), v359, v59.n128_u64[0], 1), v311, v59, 2), v386, v59, 3);
  *(v5 + 768) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v405, v60.f32[0]), v359, *v60.f32, 1), v311, v60, 2), v386, v60, 3);
  *(v5 + 784) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v405, v61.f32[0]), v359, *v61.f32, 1), v311, v61, 2), v386, v61, 3);
  *(v5 + 800) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v405, v62.f32[0]), v359, *v62.f32, 1), v311, v62, 2), v386, v62, 3);
  *(v5 + 816) = xmmword_1000EC900;
  *(v5 + 832) = 0;
  v63 = v552;
  *(v5 + 835) = v553;
  *(v5 + 833) = v63;
  *(v5 + 836) = 1082549862;
  *(v5 + 840) = 10;
  *(v5 + 841) = v550;
  *(v5 + 843) = v551;
  *(v5 + 844) = 1065353216;
  *(v5 + 848) = 0;
  *(v5 + 856) = 0u;
  *(v5 + 872) = v549;
  *(v5 + 873) = 0;
  *(v5 + 875) = 1;
  *(v5 + 880) = 0u;
  *(v5 + 896) = sub_10004DAE4;
  *(v5 + 904) = 0;
  *(v5 + 912) = 0x3F80000000000000;
  *(v5 + 928) = xmmword_1000EF5A0;
  *(v5 + 944) = 2;
  v64 = vmulq_f32(xmmword_10013DCA0, 0);
  v387 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v337 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v64), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v312 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v64, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v277 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBEF0A3D7)), vdupq_n_s32(0x3F4F5C29u), *algn_10013DCB0), vdupq_n_s32(0x3F599999u), xmmword_10013DCC0));
  sub_10001358C(v489, 4.7124, xmmword_1000EC910);
  v65 = sub_100013568(v489);
  v406 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v387, v65.n128_f32[0]), v337, v65.n128_u64[0], 1), v312, v65, 2), v277, v65, 3);
  v360 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v387, v66.f32[0]), v337, *v66.f32, 1), v312, v66, 2), v277, v66, 3);
  v290 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v387, v67.f32[0]), v337, *v67.f32, 1), v312, v67, 2), v277, v67, 3);
  v278 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v387, v68.f32[0]), v337, *v68.f32, 1), v312, v68, 2), v277, v68, 3);
  sub_10001358C(v490, 0.24435, xmmword_1000EC8E0);
  v69 = sub_100013568(v490);
  v338 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v406, v70.f32[0]), v360, *v70.f32, 1), v290, v70, 2), v278, v70, 3);
  v313 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v406, v71.f32[0]), v360, *v71.f32, 1), v290, v71, 2), v278, v71, 3);
  v388 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v406, v69.n128_f32[0]), v360, v69.n128_u64[0], 1), v290, v69, 2), v278, v69, 3);
  v407 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v406, v72.f32[0]), v360, *v72.f32, 1), v290, v72, 2), v278, v72, 3);
  sub_10001358C(v491, -1.5708, xmmword_1000EC920);
  v73 = sub_100013568(v491);
  v556 = 1;
  *(v5 + 960) = 0x3F4000003FCB851FLL;
  *(v5 + 968) = 1050253722;
  *(v5 + 972) = 1;
  *(v5 + 973) = v561;
  *(v5 + 975) = v562;
  *(v5 + 976) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v388, v73.n128_f32[0]), v338, v73.n128_u64[0], 1), v313, v73, 2), v407, v73, 3);
  *(v5 + 992) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v388, v74.f32[0]), v338, *v74.f32, 1), v313, v74, 2), v407, v74, 3);
  *(v5 + 1008) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v388, v75.f32[0]), v338, *v75.f32, 1), v313, v75, 2), v407, v75, 3);
  *(v5 + 1024) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v388, v76.f32[0]), v338, *v76.f32, 1), v313, v76, 2), v407, v76, 3);
  *(v5 + 1040) = xmmword_1000EC900;
  *(v5 + 1056) = 0;
  v77 = v559;
  *(v5 + 1059) = v560;
  *(v5 + 1057) = v77;
  *(v5 + 1060) = 1097859072;
  *(v5 + 1064) = 13;
  *(v5 + 1065) = v557;
  *(v5 + 1067) = v558;
  *(v5 + 1068) = 1065353216;
  *(v5 + 1072) = 0;
  *(v5 + 1080) = 0u;
  *(v5 + 1096) = v556;
  *(v5 + 1097) = 0;
  *(v5 + 1099) = 0;
  *(v5 + 1104) = 0u;
  *(v5 + 1120) = sub_10004DB9C;
  *(v5 + 1128) = 0;
  *(v5 + 1136) = 0x3F3BBBBC00000000;
  *(v5 + 1152) = xmmword_1000EF5C0;
  *(v5 + 1168) = 9;
  v78 = vmulq_f32(xmmword_10013DCA0, 0);
  v389 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v339 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v78), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v314 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v78, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v279 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC0DC7AE1)), vdupq_n_s32(0x40B6147Bu), *algn_10013DCB0), vdupq_n_s32(0xC0A947AE), xmmword_10013DCC0));
  sub_10001358C(v492, 2.234, xmmword_1000EC910);
  v79 = sub_100013568(v492);
  v408 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v389, v79.n128_f32[0]), v339, v79.n128_u64[0], 1), v314, v79, 2), v279, v79, 3);
  v361 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v389, v80.f32[0]), v339, *v80.f32, 1), v314, v80, 2), v279, v80, 3);
  v291 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v389, v81.f32[0]), v339, *v81.f32, 1), v314, v81, 2), v279, v81, 3);
  v280 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v389, v82.f32[0]), v339, *v82.f32, 1), v314, v82, 2), v279, v82, 3);
  sub_10001358C(v493, -2.426, xmmword_1000EC8E0);
  v83 = sub_100013568(v493);
  v340 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v408, v84.f32[0]), v361, *v84.f32, 1), v291, v84, 2), v280, v84, 3);
  v315 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v408, v85.f32[0]), v361, *v85.f32, 1), v291, v85, 2), v280, v85, 3);
  v390 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v408, v83.n128_f32[0]), v361, v83.n128_u64[0], 1), v291, v83, 2), v280, v83, 3);
  v409 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v408, v86.f32[0]), v361, *v86.f32, 1), v291, v86, 2), v280, v86, 3);
  sub_10001358C(v494, 0.15708, xmmword_1000EC920);
  v87 = sub_100013568(v494);
  v563 = 0;
  *(v5 + 1184) = 0x408333333FCCCCCDLL;
  *(v5 + 1192) = 1007908028;
  *(v5 + 1196) = 1;
  *(v5 + 1197) = v568;
  *(v5 + 1199) = v569;
  *(v5 + 1200) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v390, v87.n128_f32[0]), v340, v87.n128_u64[0], 1), v315, v87, 2), v409, v87, 3);
  *(v5 + 1216) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v390, v88.f32[0]), v340, *v88.f32, 1), v315, v88, 2), v409, v88, 3);
  *(v5 + 1232) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v390, v89.f32[0]), v340, *v89.f32, 1), v315, v89, 2), v409, v89, 3);
  *(v5 + 1248) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v390, v90.f32[0]), v340, *v90.f32, 1), v315, v90, 2), v409, v90, 3);
  *(v5 + 1264) = xmmword_1000EFFF0;
  *(v5 + 1280) = 1;
  v91 = v566;
  *(v5 + 1283) = v567;
  *(v5 + 1281) = v91;
  *(v5 + 1284) = 1092616192;
  *(v5 + 1288) = 2;
  *(v5 + 1289) = v564;
  *(v5 + 1291) = v565;
  *(v5 + 1292) = 1049247089;
  *(v5 + 1296) = xmmword_1000F0000;
  *(v5 + 1312) = 0x3EE666663DAC0831;
  *(v5 + 1320) = v563;
  *(v5 + 1321) = 1;
  *(v5 + 1323) = 1;
  *(v5 + 1328) = 0u;
  *(v5 + 1344) = sub_10004DC34;
  *(v5 + 1352) = 0;
  *(v5 + 1360) = 0x3F451EB8BE4CCCCDLL;
  *(v5 + 1376) = xmmword_1000EF5A0;
  *(v5 + 1392) = 3;
  v92 = vmulq_f32(xmmword_10013DCA0, 0);
  v362 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v316 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v92), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v292 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v92, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v410 = vdupq_n_s32(0xC011EB85);
  v265 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC04F5C29)), vdupq_n_s32(0x40770A3Du), *algn_10013DCB0), v410, xmmword_10013DCC0));
  sub_10001358C(v495, -0.87266, xmmword_1000EC910);
  v93 = sub_100013568(v495);
  v391 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v362, v93.n128_f32[0]), v316, v93.n128_u64[0], 1), v292, v93, 2), v265, v93, 3);
  v341 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v362, v94.f32[0]), v316, *v94.f32, 1), v292, v94, 2), v265, v94, 3);
  v281 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v362, v95.f32[0]), v316, *v95.f32, 1), v292, v95, 2), v265, v95, 3);
  v266 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v362, v96.f32[0]), v316, *v96.f32, 1), v292, v96, 2), v265, v96, 3);
  sub_10001358C(v496, -0.76794, xmmword_1000EC8E0);
  v97 = sub_100013568(v496);
  v317 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v391, v98.f32[0]), v341, *v98.f32, 1), v281, v98, 2), v266, v98, 3);
  v293 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v391, v99.f32[0]), v341, *v99.f32, 1), v281, v99, 2), v266, v99, 3);
  v363 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v391, v97.n128_f32[0]), v341, v97.n128_u64[0], 1), v281, v97, 2), v266, v97, 3);
  v392 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v391, v100.f32[0]), v341, *v100.f32, 1), v281, v100, 2), v266, v100, 3);
  sub_10001358C(v497, 0.0, xmmword_1000EC920);
  v101 = sub_100013568(v497);
  v570 = 1;
  *(v5 + 1408) = 0x3FB333333FCCCCCDLL;
  *(v5 + 1416) = 1034147594;
  *(v5 + 1420) = 1;
  *(v5 + 1421) = v575;
  *(v5 + 1423) = v576;
  *(v5 + 1424) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v363, v101.n128_f32[0]), v317, v101.n128_u64[0], 1), v293, v101, 2), v392, v101, 3);
  *(v5 + 1440) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v363, v102.f32[0]), v317, *v102.f32, 1), v293, v102, 2), v392, v102, 3);
  *(v5 + 1456) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v363, v103.f32[0]), v317, *v103.f32, 1), v293, v103, 2), v392, v103, 3);
  *(v5 + 1472) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v363, v104.f32[0]), v317, *v104.f32, 1), v293, v104, 2), v392, v104, 3);
  *(v5 + 1488) = xmmword_1000F0010;
  *(v5 + 1504) = 0;
  v105 = v573;
  *(v5 + 1507) = v574;
  *(v5 + 1505) = v105;
  *(v5 + 1508) = 1101004800;
  *(v5 + 1512) = 12;
  *(v5 + 1513) = v571;
  *(v5 + 1515) = v572;
  *(v5 + 1516) = 1065353216;
  *(v5 + 1520) = 0;
  *(v5 + 1528) = 0u;
  *(v5 + 1544) = v570;
  *(v5 + 1545) = 1;
  *(v5 + 1547) = 1;
  *(v5 + 1552) = 0u;
  *(v5 + 1568) = sub_10004DDB8;
  *(v5 + 1576) = 0;
  *(v5 + 1584) = 0x3EE147AE3E4CCCCDLL;
  *(v5 + 1600) = xmmword_1000EF5D0;
  *(v5 + 1616) = 3;
  v106 = vmulq_f32(xmmword_10013DCA0, 0);
  v364 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v318 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v106), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v294 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v106, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v267 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC078F5C2)), vdupq_n_s32(0xBD23D70A), *algn_10013DCB0), vdupq_n_s32(0xC05AE147), xmmword_10013DCC0));
  sub_10001358C(v498, -0.95993, xmmword_1000EC910);
  v107 = sub_100013568(v498);
  v393 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v364, v107.n128_f32[0]), v318, v107.n128_u64[0], 1), v294, v107, 2), v267, v107, 3);
  v342 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v364, v108.f32[0]), v318, *v108.f32, 1), v294, v108, 2), v267, v108, 3);
  v282 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v364, v109.f32[0]), v318, *v109.f32, 1), v294, v109, 2), v267, v109, 3);
  v268 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v364, v110.f32[0]), v318, *v110.f32, 1), v294, v110, 2), v267, v110, 3);
  sub_10001358C(v499, -0.2618, xmmword_1000EC8E0);
  v111 = sub_100013568(v499);
  v319 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v393, v112.f32[0]), v342, *v112.f32, 1), v282, v112, 2), v268, v112, 3);
  v295 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v393, v113.f32[0]), v342, *v113.f32, 1), v282, v113, 2), v268, v113, 3);
  v365 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v393, v111.n128_f32[0]), v342, v111.n128_u64[0], 1), v282, v111, 2), v268, v111, 3);
  v394 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v393, v114.f32[0]), v342, *v114.f32, 1), v282, v114, 2), v268, v114, 3);
  sub_10001358C(v500, 0.85521, xmmword_1000EC920);
  v115 = sub_100013568(v500);
  v577 = 1;
  *(v5 + 1632) = 0x3F2666663F8B851FLL;
  *(v5 + 1640) = 1025758986;
  *(v5 + 1644) = 1;
  *(v5 + 1645) = v582;
  *(v5 + 1647) = v583;
  *(v5 + 1648) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v365, v115.n128_f32[0]), v319, v115.n128_u64[0], 1), v295, v115, 2), v394, v115, 3);
  *(v5 + 1664) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v365, v116.f32[0]), v319, *v116.f32, 1), v295, v116, 2), v394, v116, 3);
  *(v5 + 1680) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v365, v117.f32[0]), v319, *v117.f32, 1), v295, v117, 2), v394, v117, 3);
  *(v5 + 1696) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v365, v118.f32[0]), v319, *v118.f32, 1), v295, v118, 2), v394, v118, 3);
  *(v5 + 1712) = xmmword_1000EC900;
  *(v5 + 1728) = 0;
  v119 = v580;
  *(v5 + 1731) = v581;
  *(v5 + 1729) = v119;
  *(v5 + 1732) = 1067869798;
  *(v5 + 1736) = 13;
  *(v5 + 1737) = v578;
  *(v5 + 1739) = v579;
  *(v5 + 1740) = 1065353216;
  *(v5 + 1744) = 0;
  *(v5 + 1752) = 0u;
  *(v5 + 1768) = v577;
  *(v5 + 1769) = 1;
  *(v5 + 1771) = 0;
  *(v5 + 1776) = 0u;
  *(v5 + 1792) = sub_100081614;
  *(v5 + 1800) = 0;
  *(v5 + 1808) = 0x3F80000000000000;
  *(v5 + 1824) = xmmword_1000EF7D0;
  *(v5 + 1840) = 3;
  v120 = vmulq_f32(xmmword_10013DCA0, 0);
  v343 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v296 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v120), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v283 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v120, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v261 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC06A3D70)), vdupq_n_s32(0x3FBD70A4u), *algn_10013DCB0), vdupq_n_s32(0xBFE147AE), xmmword_10013DCC0));
  sub_10001358C(v501, -1.2217, xmmword_1000EC910);
  v121 = sub_100013568(v501);
  v366 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v343, v121.n128_f32[0]), v296, v121.n128_u64[0], 1), v283, v121, 2), v261, v121, 3);
  v320 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v343, v122.f32[0]), v296, *v122.f32, 1), v283, v122, 2), v261, v122, 3);
  v269 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v343, v123.f32[0]), v296, *v123.f32, 1), v283, v123, 2), v261, v123, 3);
  v262 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v343, v124.f32[0]), v296, *v124.f32, 1), v283, v124, 2), v261, v124, 3);
  sub_10001358C(v502, -0.69813, xmmword_1000EC8E0);
  v125 = sub_100013568(v502);
  v297 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v366, v126.f32[0]), v320, *v126.f32, 1), v269, v126, 2), v262, v126, 3);
  v284 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v366, v127.f32[0]), v320, *v127.f32, 1), v269, v127, 2), v262, v127, 3);
  v344 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v366, v125.n128_f32[0]), v320, v125.n128_u64[0], 1), v269, v125, 2), v262, v125, 3);
  v367 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v366, v128.f32[0]), v320, *v128.f32, 1), v269, v128, 2), v262, v128, 3);
  sub_10001358C(v503, 1.309, xmmword_1000EC920);
  v129 = sub_100013568(v503);
  v584 = 1;
  *(v5 + 1856) = 0x3F3D70A43F35C28FLL;
  *(v5 + 1864) = 0;
  *(v5 + 1868) = 1;
  *(v5 + 1869) = v589;
  *(v5 + 1871) = v590;
  *(v5 + 1872) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v344, v129.n128_f32[0]), v297, v129.n128_u64[0], 1), v284, v129, 2), v367, v129, 3);
  *(v5 + 1888) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v344, v130.f32[0]), v297, *v130.f32, 1), v284, v130, 2), v367, v130, 3);
  *(v5 + 1904) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v344, v131.f32[0]), v297, *v131.f32, 1), v284, v131, 2), v367, v131, 3);
  *(v5 + 1920) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v344, v132.f32[0]), v297, *v132.f32, 1), v284, v132, 2), v367, v132, 3);
  *(v5 + 1936) = xmmword_1000EC900;
  *(v5 + 1952) = 0;
  v133 = v587;
  *(v5 + 1955) = v588;
  *(v5 + 1953) = v133;
  *(v5 + 1956) = 0x40000000;
  *(v5 + 1960) = 10;
  *(v5 + 1961) = v585;
  *(v5 + 1963) = v586;
  *(v5 + 1964) = 1065353216;
  *(v5 + 1968) = 0;
  *(v5 + 1976) = 0u;
  *(v5 + 1992) = v584;
  *(v5 + 1993) = 1;
  *(v5 + 1995) = 0;
  *(v5 + 2000) = 0u;
  *(v5 + 2016) = sub_100081614;
  *(v5 + 2024) = 0;
  *(v5 + 2032) = 0x3F80000000000000;
  *(v5 + 2048) = xmmword_1000EF5A0;
  *(v5 + 2064) = 4;
  v134 = vmulq_f32(xmmword_10013DCA0, 0);
  v368 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v321 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v134), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v298 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v134, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v270 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3F028F5Cu)), vdupq_n_s32(0x3E4CCCCCu), *algn_10013DCB0), vdupq_n_s32(0xBF028F5C), xmmword_10013DCC0));
  sub_10001358C(v504, 1.5708, xmmword_1000EC910);
  v135 = sub_100013568(v504);
  v462 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v368, v135.n128_f32[0]), v321, v135.n128_u64[0], 1), v298, v135, 2), v270, v135, 3);
  v345 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v368, v136.f32[0]), v321, *v136.f32, 1), v298, v136, 2), v270, v136, 3);
  v285 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v368, v137.f32[0]), v321, *v137.f32, 1), v298, v137, 2), v270, v137, 3);
  v271 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v368, v138.f32[0]), v321, *v138.f32, 1), v298, v138, 2), v270, v138, 3);
  sub_10001358C(v505, -0.83776, xmmword_1000EC8E0);
  v139 = sub_100013568(v505);
  v369 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v462, v139.n128_f32[0]), v345, v139.n128_u64[0], 1), v285, v139, 2), v271, v139, 3);
  v322 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v462, v140.f32[0]), v345, *v140.f32, 1), v285, v140, 2), v271, v140, 3);
  v299 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v462, v141.f32[0]), v345, *v141.f32, 1), v285, v141, 2), v271, v141, 3);
  v463 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v462, v142.f32[0]), v345, *v142.f32, 1), v285, v142, 2), v271, v142, 3);
  sub_10001358C(v506, 1.5708, xmmword_1000EC920);
  v143 = sub_100013568(v506);
  v591 = 1;
  *(v5 + 2080) = 0x3F80000040133333;
  *(v5 + 2088) = 1056964608;
  *(v5 + 2092) = 1;
  *(v5 + 2093) = v596;
  *(v5 + 2095) = v597;
  *(v5 + 2096) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v369, v143.n128_f32[0]), v322, v143.n128_u64[0], 1), v299, v143, 2), v463, v143, 3);
  *(v5 + 2112) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v369, v144.f32[0]), v322, *v144.f32, 1), v299, v144, 2), v463, v144, 3);
  *(v5 + 2128) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v369, v145.f32[0]), v322, *v145.f32, 1), v299, v145, 2), v463, v145, 3);
  *(v5 + 2144) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v369, v146.f32[0]), v322, *v146.f32, 1), v299, v146, 2), v463, v146, 3);
  *(v5 + 2160) = xmmword_1000F0020;
  *(v5 + 2176) = 0;
  v147 = v594;
  *(v5 + 2179) = v595;
  *(v5 + 2177) = v147;
  *(v5 + 2180) = 1093664768;
  *(v5 + 2184) = 9;
  *(v5 + 2185) = v592;
  *(v5 + 2187) = v593;
  *(v5 + 2188) = 1065353216;
  *(v5 + 2192) = 0;
  *(v5 + 2200) = 0u;
  *(v5 + 2216) = v591;
  *(v5 + 2217) = 1;
  *(v5 + 2219) = 0;
  *(v5 + 2224) = 0u;
  *(v5 + 2240) = sub_10004DE80;
  *(v5 + 2248) = 0;
  *(v5 + 2256) = 0x3EEB851FBE3851ECLL;
  *(v5 + 2272) = xmmword_1000EF5A0;
  *(v5 + 2288) = 5;
  v148 = vmulq_f32(xmmword_10013DCA0, 0);
  v370 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v323 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v148), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v300 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v148, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v272 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBFA8F5C2)), vdupq_n_s32(0x40233333u), *algn_10013DCB0), vdupq_n_s32(0x405D70A4u), xmmword_10013DCC0));
  sub_10001358C(v507, -0.50615, xmmword_1000EC910);
  v149 = sub_100013568(v507);
  v464 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v370, v149.n128_f32[0]), v323, v149.n128_u64[0], 1), v300, v149, 2), v272, v149, 3);
  v346 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v370, v150.f32[0]), v323, *v150.f32, 1), v300, v150, 2), v272, v150, 3);
  v286 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v370, v151.f32[0]), v323, *v151.f32, 1), v300, v151, 2), v272, v151, 3);
  v273 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v370, v152.f32[0]), v323, *v152.f32, 1), v300, v152, 2), v272, v152, 3);
  sub_10001358C(v508, 0.0, xmmword_1000EC8E0);
  v153 = sub_100013568(v508);
  v371 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v464, v153.n128_f32[0]), v346, v153.n128_u64[0], 1), v286, v153, 2), v273, v153, 3);
  v324 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v464, v154.f32[0]), v346, *v154.f32, 1), v286, v154, 2), v273, v154, 3);
  v301 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v464, v155.f32[0]), v346, *v155.f32, 1), v286, v155, 2), v273, v155, 3);
  v465 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v464, v156.f32[0]), v346, *v156.f32, 1), v286, v156, 2), v273, v156, 3);
  sub_10001358C(v509, 0.0, xmmword_1000EC920);
  v157 = sub_100013568(v509);
  v598 = 1;
  *(v5 + 2304) = 0x408CCCCD3FB33333;
  *(v5 + 2312) = 1053273620;
  *(v5 + 2316) = 0;
  *(v5 + 2317) = v603;
  *(v5 + 2319) = v604;
  *(v5 + 2320) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v371, v157.n128_f32[0]), v324, v157.n128_u64[0], 1), v301, v157, 2), v465, v157, 3);
  *(v5 + 2336) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v371, v158.f32[0]), v324, *v158.f32, 1), v301, v158, 2), v465, v158, 3);
  *(v5 + 2352) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v371, v159.f32[0]), v324, *v159.f32, 1), v301, v159, 2), v465, v159, 3);
  *(v5 + 2368) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v371, v160.f32[0]), v324, *v160.f32, 1), v301, v160, 2), v465, v160, 3);
  *(v5 + 2384) = xmmword_1000F0030;
  *(v5 + 2400) = 2;
  v161 = v601;
  *(v5 + 2403) = v602;
  *(v5 + 2401) = v161;
  *(v5 + 2404) = 1066192077;
  *(v5 + 2408) = 9;
  *(v5 + 2409) = v599;
  *(v5 + 2411) = v600;
  *(v5 + 2412) = 1065353216;
  *(v5 + 2416) = 0;
  *(v5 + 2424) = 0u;
  *(v5 + 2440) = v598;
  *(v5 + 2441) = 3;
  *(v5 + 2443) = 1;
  *(v5 + 2448) = 0u;
  *(v5 + 2464) = sub_10004DF28;
  *(v5 + 2472) = 0;
  *(v5 + 2480) = 0x3F80000000000000;
  *(v5 + 2496) = xmmword_1000EF5C0;
  *(v5 + 2512) = 5;
  v162 = vmulq_f32(xmmword_10013DCA0, 0);
  v347 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v302 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v162), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v287 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v162, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v263 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBF7D70A3)), vdupq_n_s32(0x3FB5C28Fu), *algn_10013DCB0), vdupq_n_s32(0x4030A3D7u), xmmword_10013DCC0));
  sub_10001358C(v510, 0.0, xmmword_1000EC910);
  v163 = sub_100013568(v510);
  v372 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v347, v163.n128_f32[0]), v302, v163.n128_u64[0], 1), v287, v163, 2), v263, v163, 3);
  v325 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v347, v164.f32[0]), v302, *v164.f32, 1), v287, v164, 2), v263, v164, 3);
  v274 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v347, v165.f32[0]), v302, *v165.f32, 1), v287, v165, 2), v263, v165, 3);
  v264 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v347, v166.f32[0]), v302, *v166.f32, 1), v287, v166, 2), v263, v166, 3);
  sub_10001358C(v511, 0.069813, xmmword_1000EC8E0);
  v167 = sub_100013568(v511);
  v303 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v372, v168.f32[0]), v325, *v168.f32, 1), v274, v168, 2), v264, v168, 3);
  v288 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v372, v169.f32[0]), v325, *v169.f32, 1), v274, v169, 2), v264, v169, 3);
  v348 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v372, v167.n128_f32[0]), v325, v167.n128_u64[0], 1), v274, v167, 2), v264, v167, 3);
  v373 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v372, v170.f32[0]), v325, *v170.f32, 1), v274, v170, 2), v264, v170, 3);
  sub_10001358C(v512, 0.62832, xmmword_1000EC920);
  v171 = sub_100013568(v512);
  v605 = 1;
  *(v5 + 2528) = 0x3F75C28F4017AE14;
  *(v5 + 2536) = 1032805417;
  *(v5 + 2540) = 0;
  *(v5 + 2541) = v610;
  *(v5 + 2543) = v611;
  *(v5 + 2544) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v348, v171.n128_f32[0]), v303, v171.n128_u64[0], 1), v288, v171, 2), v373, v171, 3);
  *(v5 + 2560) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v348, v172.f32[0]), v303, *v172.f32, 1), v288, v172, 2), v373, v172, 3);
  *(v5 + 2576) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v348, v173.f32[0]), v303, *v173.f32, 1), v288, v173, 2), v373, v173, 3);
  *(v5 + 2592) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v348, v174.f32[0]), v303, *v174.f32, 1), v288, v174, 2), v373, v174, 3);
  *(v5 + 2608) = xmmword_1000F0030;
  *(v5 + 2624) = 2;
  v175 = v608;
  *(v5 + 2627) = v609;
  *(v5 + 2625) = v175;
  *(v5 + 2628) = 1067030938;
  *(v5 + 2632) = 9;
  *(v5 + 2633) = v606;
  *(v5 + 2635) = v607;
  *(v5 + 2636) = 1065353216;
  *(v5 + 2640) = 0;
  *(v5 + 2648) = 0u;
  *(v5 + 2664) = v605;
  *(v5 + 2665) = 3;
  *(v5 + 2667) = 1;
  *(v5 + 2672) = 0u;
  *(v5 + 2688) = sub_10004DF58;
  *(v5 + 2696) = 0;
  *(v5 + 2704) = 0x3F80000000000000;
  *(v5 + 2720) = xmmword_1000EF5D0;
  *(v5 + 2736) = 5;
  v176 = vmulq_f32(xmmword_10013DCA0, 0);
  v440 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v374 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v176), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v326 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v176, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v171.n128_u64[0] = 0x4000000040000000;
  v171.n128_u64[1] = 0x4000000040000000;
  v304 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3FD1EB85u)), v410, *algn_10013DCB0), v171, xmmword_10013DCC0));
  sub_10001358C(v513, 0.0, xmmword_1000EC910);
  v177 = sub_100013568(v513);
  v466 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v440, v177.n128_f32[0]), v374, v177.n128_u64[0], 1), v326, v177, 2), v304, v177, 3);
  v411 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v440, v178.f32[0]), v374, *v178.f32, 1), v326, v178, 2), v304, v178, 3);
  v349 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v440, v179.f32[0]), v374, *v179.f32, 1), v326, v179, 2), v304, v179, 3);
  v305 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v440, v180.f32[0]), v374, *v180.f32, 1), v326, v180, 2), v304, v180, 3);
  sub_10001358C(v514, 0.54105, xmmword_1000EC8E0);
  v181 = sub_100013568(v514);
  v441 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v466, v181.n128_f32[0]), v411, v181.n128_u64[0], 1), v349, v181, 2), v305, v181, 3);
  v375 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v466, v182.f32[0]), v411, *v182.f32, 1), v349, v182, 2), v305, v182, 3);
  v327 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v466, v183.f32[0]), v411, *v183.f32, 1), v349, v183, 2), v305, v183, 3);
  v467 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v466, v184.f32[0]), v411, *v184.f32, 1), v349, v184, 2), v305, v184, 3);
  sub_10001358C(v515, 0.0, xmmword_1000EC920);
  v185 = sub_100013568(v515);
  v612 = 1;
  *(v5 + 2752) = 0x4026666640600000;
  *(v5 + 2760) = 1043878380;
  *(v5 + 2764) = 1;
  *(v5 + 2765) = v617;
  *(v5 + 2767) = v618;
  *(v5 + 2768) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v441, v185.n128_f32[0]), v375, v185.n128_u64[0], 1), v327, v185, 2), v467, v185, 3);
  *(v5 + 2784) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v441, v186.f32[0]), v375, *v186.f32, 1), v327, v186, 2), v467, v186, 3);
  *(v5 + 2800) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v441, v187.f32[0]), v375, *v187.f32, 1), v327, v187, 2), v467, v187, 3);
  *(v5 + 2816) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v441, v188.f32[0]), v375, *v188.f32, 1), v327, v188, 2), v467, v188, 3);
  *(v5 + 2832) = xmmword_1000F0040;
  *(v5 + 2848) = 1;
  v189 = v615;
  *(v5 + 2851) = v616;
  *(v5 + 2849) = v189;
  *(v5 + 2852) = 1088631603;
  *(v5 + 2856) = 9;
  *(v5 + 2857) = v613;
  *(v5 + 2859) = v614;
  *(v5 + 2860) = 1065353216;
  *(v5 + 2864) = 0;
  *(v5 + 2872) = 0u;
  *(v5 + 2888) = v612;
  *(v5 + 2889) = 3;
  *(v5 + 2891) = 1;
  *(v5 + 2896) = 0u;
  *(v5 + 2912) = sub_10004E01C;
  *(v5 + 2920) = 0;
  *(v5 + 2928) = 0x3F80000000000000;
  *(v5 + 2944) = xmmword_1000EF7D0;
  *(v5 + 2960) = 5;
  v190 = vmulq_f32(xmmword_10013DCA0, 0);
  v468 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v412 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v190), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v376 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v190, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v328 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC001EB85)), vdupq_n_s32(0x4073D70Au), *algn_10013DCB0), vdupq_n_s32(0x405E147Bu), xmmword_10013DCC0));
  sub_10001358C(v516, -0.90757, xmmword_1000EC910);
  v191 = sub_100013568(v516);
  v442 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v468, v191.n128_f32[0]), v412, v191.n128_u64[0], 1), v376, v191, 2), v328, v191, 3);
  v395 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v468, v192.f32[0]), v412, *v192.f32, 1), v376, v192, 2), v328, v192, 3);
  v350 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v468, v193.f32[0]), v412, *v193.f32, 1), v376, v193, 2), v328, v193, 3);
  v329 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v468, v194.f32[0]), v412, *v194.f32, 1), v376, v194, 2), v328, v194, 3);
  sub_10001358C(v517, -0.76794, xmmword_1000EC8E0);
  v195 = sub_100013568(v517);
  v469 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v442, v195.n128_f32[0]), v395, v195.n128_u64[0], 1), v350, v195, 2), v329, v195, 3);
  v413 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v442, v196.f32[0]), v395, *v196.f32, 1), v350, v196, 2), v329, v196, 3);
  v377 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v442, v197.f32[0]), v395, *v197.f32, 1), v350, v197, 2), v329, v197, 3);
  v443 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v442, v198.f32[0]), v395, *v198.f32, 1), v350, v198, 2), v329, v198, 3);
  sub_10001358C(v518, 0.087266, xmmword_1000EC920);
  v199 = sub_100013568(v518);
  v619 = 1;
  *(v5 + 2976) = 0x3E428F5C3FF33333;
  *(v5 + 2984) = 1030322389;
  *(v5 + 2988) = 1;
  *(v5 + 2989) = v624;
  *(v5 + 2991) = v625;
  *(v5 + 2992) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v469, v199.n128_f32[0]), v413, v199.n128_u64[0], 1), v377, v199, 2), v443, v199, 3);
  *(v5 + 3008) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v469, v200.f32[0]), v413, *v200.f32, 1), v377, v200, 2), v443, v200, 3);
  *(v5 + 3024) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v469, v201.f32[0]), v413, *v201.f32, 1), v377, v201, 2), v443, v201, 3);
  *(v5 + 3040) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v469, v202.f32[0]), v413, *v202.f32, 1), v377, v202, 2), v443, v202, 3);
  *(v5 + 3056) = xmmword_1000F0050;
  *(v5 + 3072) = 1;
  v203 = v622;
  *(v5 + 3075) = v623;
  *(v5 + 3073) = v203;
  *(v5 + 3076) = 1078355558;
  *(v5 + 3080) = 13;
  *(v5 + 3081) = v620;
  *(v5 + 3083) = v621;
  *(v5 + 3084) = 1065353216;
  *(v5 + 3088) = 0;
  *(v5 + 3096) = 0u;
  *(v5 + 3112) = v619;
  *(v5 + 3113) = 3;
  *(v5 + 3115) = 1;
  *(v5 + 3120) = 0u;
  *(v5 + 3136) = sub_10004E0D4;
  *(v5 + 3144) = 0;
  *(v5 + 3152) = 0x3F80000000000000;
  *(v5 + 3168) = xmmword_1000EF630;
  *(v5 + 3184) = 5;
  v204 = vmulq_f32(xmmword_10013DCA0, 0);
  v414 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v378 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v204), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v351 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v204, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v306 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC02AE147)), vdupq_n_s32(0x40733333u), *algn_10013DCB0), vdupq_n_s32(0x40547AE1u), xmmword_10013DCC0));
  sub_10001358C(v519, -0.92502, xmmword_1000EC910);
  v205 = sub_100013568(v519);
  v444 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v414, v205.n128_f32[0]), v378, v205.n128_u64[0], 1), v351, v205, 2), v306, v205, 3);
  v396 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v414, v206.f32[0]), v378, *v206.f32, 1), v351, v206, 2), v306, v206, 3);
  v330 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v414, v207.f32[0]), v378, *v207.f32, 1), v351, v207, 2), v306, v207, 3);
  v307 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v414, v208.f32[0]), v378, *v208.f32, 1), v351, v208, 2), v306, v208, 3);
  sub_10001358C(v520, -0.71558, xmmword_1000EC8E0);
  v209 = sub_100013568(v520);
  v415 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v444, v209.n128_f32[0]), v396, v209.n128_u64[0], 1), v330, v209, 2), v307, v209, 3);
  v379 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v444, v210.f32[0]), v396, *v210.f32, 1), v330, v210, 2), v307, v210, 3);
  v352 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v444, v211.f32[0]), v396, *v211.f32, 1), v330, v211, 2), v307, v211, 3);
  v445 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v444, v212.f32[0]), v396, *v212.f32, 1), v330, v212, 2), v307, v212, 3);
  sub_10001358C(v521, 0.19199, xmmword_1000EC920);
  v213 = sub_100013568(v521);
  v626 = 1;
  *(v5 + 3200) = 0x3E6147AE40266666;
  *(v5 + 3208) = 1026564293;
  *(v5 + 3212) = 1;
  *(v5 + 3213) = v631;
  *(v5 + 3215) = v632;
  *(v5 + 3216) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v415, v213.n128_f32[0]), v379, v213.n128_u64[0], 1), v352, v213, 2), v445, v213, 3);
  *(v5 + 3232) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v415, v214.f32[0]), v379, *v214.f32, 1), v352, v214, 2), v445, v214, 3);
  *(v5 + 3248) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v415, v215.f32[0]), v379, *v215.f32, 1), v352, v215, 2), v445, v215, 3);
  *(v5 + 3264) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v415, v216.f32[0]), v379, *v216.f32, 1), v352, v216, 2), v445, v216, 3);
  *(v5 + 3280) = xmmword_1000F0050;
  *(v5 + 3296) = 1;
  v217 = v629;
  *(v5 + 3299) = v630;
  *(v5 + 3297) = v217;
  *(v5 + 3300) = 1083179008;
  *(v5 + 3304) = 13;
  *(v5 + 3305) = v627;
  *(v5 + 3307) = v628;
  *(v5 + 3308) = 1065353216;
  *(v5 + 3312) = 0;
  *(v5 + 3320) = 0u;
  *(v5 + 3336) = v626;
  *(v5 + 3337) = 3;
  *(v5 + 3339) = 1;
  *(v5 + 3344) = 0u;
  *(v5 + 3360) = sub_10004E17C;
  *(v5 + 3368) = 0;
  *(v5 + 3376) = 0x3F80000000000000;
  *(v5 + 3392) = xmmword_1000EF5A0;
  *(v5 + 3408) = 6;
  v218 = vmulq_f32(xmmword_10013DCA0, 0);
  v446 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v397 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v218), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v353 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v218, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v470 = vdupq_n_s32(0xBF8E147B);
  v331 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBD4CCCCC)), vdupq_n_s32(0x3DB851EBu), *algn_10013DCB0), v470, xmmword_10013DCC0));
  sub_10001358C(v522, 1.5708, xmmword_1000EC910);
  v219 = sub_100013568(v522);
  v456 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v446, v219.n128_f32[0]), v397, v219.n128_u64[0], 1), v353, v219, 2), v331, v219, 3);
  v416 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v446, v220.f32[0]), v397, *v220.f32, 1), v353, v220, 2), v331, v220, 3);
  v380 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v446, v221.f32[0]), v397, *v221.f32, 1), v353, v221, 2), v331, v221, 3);
  v332 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v446, v222.f32[0]), v397, *v222.f32, 1), v353, v222, 2), v331, v222, 3);
  sub_10001358C(v523, -2.9671, xmmword_1000EC8E0);
  v223 = sub_100013568(v523);
  v447 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v456, v223.n128_f32[0]), v416, v223.n128_u64[0], 1), v380, v223, 2), v332, v223, 3);
  v398 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v456, v224.f32[0]), v416, *v224.f32, 1), v380, v224, 2), v332, v224, 3);
  v354 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v456, v225.f32[0]), v416, *v225.f32, 1), v380, v225, 2), v332, v225, 3);
  v457 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v456, v226.f32[0]), v416, *v226.f32, 1), v380, v226, 2), v332, v226, 3);
  sub_10001358C(v524, 1.5708, xmmword_1000EC920);
  v227 = sub_100013568(v524);
  v633 = 1;
  *(v5 + 3424) = 0x3F99999A400CCCCDLL;
  *(v5 + 3432) = 1056964608;
  *(v5 + 3436) = 1;
  *(v5 + 3437) = v638;
  *(v5 + 3439) = v639;
  *(v5 + 3440) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v447, v227.n128_f32[0]), v398, v227.n128_u64[0], 1), v354, v227, 2), v457, v227, 3);
  *(v5 + 3456) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v447, v228.f32[0]), v398, *v228.f32, 1), v354, v228, 2), v457, v228, 3);
  *(v5 + 3472) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v447, v229.f32[0]), v398, *v229.f32, 1), v354, v229, 2), v457, v229, 3);
  *(v5 + 3488) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v447, v230.f32[0]), v398, *v230.f32, 1), v354, v230, 2), v457, v230, 3);
  *(v5 + 3504) = xmmword_1000F0060;
  *(v5 + 3520) = 0;
  v231 = v636;
  *(v5 + 3523) = v637;
  *(v5 + 3521) = v231;
  *(v5 + 3524) = 1052938076;
  *(v5 + 3528) = 9;
  *(v5 + 3529) = v634;
  *(v5 + 3531) = v635;
  *(v5 + 3532) = 1065353216;
  *(v5 + 3536) = 0;
  *(v5 + 3544) = 0u;
  *(v5 + 3560) = v633;
  *(v5 + 3561) = 2;
  *(v5 + 3563) = 1;
  *(v5 + 3568) = 0u;
  *(v5 + 3584) = sub_10004E244;
  *(v5 + 3592) = 0;
  *(v5 + 3600) = 0x3F80000000000000;
  *(v5 + 3616) = xmmword_1000EF5C0;
  *(v5 + 3632) = 6;
  v232 = vmulq_f32(xmmword_10013DCA0, 0);
  v233 = vmulq_f32(xmmword_10013DCA0, v423);
  v424 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v417 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v232), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v399 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v232, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v471 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(v233, vdupq_n_s32(0xBF2E147B), *algn_10013DCB0), v470, xmmword_10013DCC0));
  sub_10001358C(v525, 1.5708, xmmword_1000EC910);
  v234 = sub_100013568(v525);
  v453 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v424, v235.f32[0]), v417, *v235.f32, 1), v399, v235, 2), v471, v235, 3);
  v458 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v424, v234.n128_f32[0]), v417, v234.n128_u64[0], 1), v399, v234, 2), v471, v234, 3);
  v448 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v424, v236.f32[0]), v417, *v236.f32, 1), v399, v236, 2), v471, v236, 3);
  v425 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v424, v237.f32[0]), v417, *v237.f32, 1), v399, v237, 2), v471, v237, 3);
  sub_10001358C(v526, -2.3736, xmmword_1000EC8E0);
  v238 = sub_100013568(v526);
  v475 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v458, v239.f32[0]), v453, *v239.f32, 1), v448, v239, 2), v425, v239, 3);
  v476 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v458, v238.n128_f32[0]), v453, v238.n128_u64[0], 1), v448, v238, 2), v425, v238, 3);
  v472 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v458, v240.f32[0]), v453, *v240.f32, 1), v448, v240, 2), v425, v240, 3);
  v459 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v458, v241.f32[0]), v453, *v241.f32, 1), v448, v241, 2), v425, v241, 3);
  sub_10001358C(v527, 1.5708, xmmword_1000EC920);
  v242 = sub_100013568(v527);
  v640 = 1;
  *(v5 + 3648) = 0x3F99999A3F99999ALL;
  *(v5 + 3656) = 1056964608;
  *(v5 + 3660) = 1;
  *(v5 + 3661) = v645;
  *(v5 + 3663) = v646;
  *(v5 + 3664) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v476, v242.n128_f32[0]), v475, v242.n128_u64[0], 1), v472, v242, 2), v459, v242, 3);
  *(v5 + 3680) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v476, v243.f32[0]), v475, *v243.f32, 1), v472, v243, 2), v459, v243, 3);
  *(v5 + 3696) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v476, v244.f32[0]), v475, *v244.f32, 1), v472, v244, 2), v459, v244, 3);
  *(v5 + 3712) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v476, v245.f32[0]), v475, *v245.f32, 1), v472, v245, 2), v459, v245, 3);
  *(v5 + 3728) = xmmword_1000F0070;
  *(v5 + 3744) = 0;
  v246 = v643;
  *(v5 + 3747) = v644;
  *(v5 + 3745) = v246;
  *(v5 + 3748) = 1056964608;
  *(v5 + 3752) = 9;
  *(v5 + 3753) = v641;
  *(v5 + 3755) = v642;
  *(v5 + 3756) = 1065353216;
  *(v5 + 3760) = 0;
  *(v5 + 3768) = 0u;
  *(v5 + 3784) = v640;
  *(v5 + 3785) = 2;
  *(v5 + 3787) = 1;
  *(v5 + 3792) = 0u;
  *(v5 + 3808) = sub_100081604;
  *(v5 + 3816) = 0;
  *(v5 + 3824) = 0x3F80000000000000;
  v247 = sub_1000A0774(v5);
  swift_setDeallocating();
  sub_1000125FC(&qword_100131018, &qword_1000F1D70);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1000125FC(&qword_100131020, &qword_1000F1D78);
  v248 = swift_allocObject();
  v248[1] = xmmword_1000EC880;
  v248[2] = xmmword_1000F0080;
  v248[3] = xmmword_1000F0090;
  v249 = swift_allocObject();
  v249[1] = xmmword_1000EC880;
  v249[2] = xmmword_1000F00A0;
  v249[3] = xmmword_1000F00B0;
  v250 = swift_allocObject();
  v250[1] = xmmword_1000EC880;
  v250[2] = xmmword_1000F00C0;
  v250[3] = xmmword_1000F00D0;
  v251 = qword_10013AC20;
  v252 = unk_10013AC28;
  v253 = qword_10013AC30;

  v254 = qword_10013AC50;
  v255 = sub_1000A0A98(_swiftEmptyArrayStorage);
  swift_bridgeObjectRetain_n();
  v257 = sub_1000C1928(v256, v247);

  sub_1000C53DC(v257, v649);
  v259 = sub_1000C199C(v258, v247);

  sub_1000C53DC(v259, v647);
  xmmword_10013B4A0 = v434;
  *algn_10013B4B0 = v433;
  qword_10013B4C0 = v432;
  dword_10013B4C8 = v0;
  xmmword_10013B4D0 = v431;
  unk_10013B4E0 = v430;
  qword_10013B4F0 = v1;
  dword_10013B4F8 = v2;
  xmmword_10013B500 = v429;
  qword_10013B510 = v3;
  xmmword_10013B520 = v428;
  qword_10013B530 = v4;
  unk_10013B538 = v427;
  dword_10013B540 = v426;
  qword_10013B548 = 0;
  unk_10013B550 = v247;
  qword_10013B578 = v650;
  unk_10013B568 = v649[1];
  unk_10013B558 = v649[0];
  xmmword_10013B580 = v647[0];
  unk_10013B590 = v647[1];
  qword_10013B5A0 = v648;
  qword_10013B5A8 = sub_10004E2D0;
  qword_10013B5B0 = 0;
  xmmword_10013B5C0 = xmmword_1000F00E0;
  unk_10013B5D0 = xmmword_1000F00F0;
  qword_10013B5E0 = v248;
  word_10013B5EC = 4;
  dword_10013B5E8 = 0;
  xmmword_10013B5F0 = xmmword_1000F0100;
  qword_10013B600 = v249;
  xmmword_10013B608 = xmmword_1000F0110;
  xmmword_10013B618 = xmmword_1000F0120;
  qword_10013B628 = 1061931980;
  unk_10013B630 = v250;
  xmmword_10013B638 = xmmword_1000F0130;
  xmmword_10013B648 = xmmword_1000F0140;
  qword_10013B658 = 1063511012;
  result = 0.000000336591084;
  xmmword_10013B660 = xmmword_1000F0150;
  qword_10013B670 = v251;
  unk_10013B678 = v252;
  qword_10013B680 = v253;
  unk_10013B688 = v255;
  qword_10013B690 = _swiftEmptyArrayStorage;
  unk_10013B698 = _swiftEmptyArrayStorage;
  qword_10013B6A0 = v254;
  return result;
}

double sub_10004DA30(uint64_t a1, float a2)
{
  *(a1 + 100) = ((*(a1 + 100) + -2.0) * a2) + 2.0;
  *(a1 + 108) = ((*(a1 + 108) + -0.21) * a2) + 0.21;
  v7 = xmmword_1000F0160;
  v8 = 0x3F8000003F1C28F6;
  sub_1000BAC84(*(a1 + 112), *(a1 + 120), *(a1 + 128), *(a1 + 136), &v5, a2);
  v3 = v6;
  result = *&v5;
  *(a1 + 112) = v5;
  *(a1 + 128) = v3;
  *(a1 + 136) = 0;
  return result;
}

uint64_t sub_10004DAE4(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.5) * a2) + 0.5;
    *result = COERCE_UNSIGNED_INT(((*result + -1.6) * a2) + 1.6) | (COERCE_UNSIGNED_INT(((*(result + 4) + -2.3) * a2) + 2.3) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -0.54) * a2) + 0.54;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10004DB9C(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.5) * a2) + 0.5;
    *result = COERCE_UNSIGNED_INT(((*result + -1.6) * a2) + 1.6) | (COERCE_UNSIGNED_INT(((*(result + 4) + -0.75) * a2) + 0.75) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -6.0) * a2) + 6.0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10004DC34(float *result, float a2)
{
  if (*(result + 12) == 1)
  {
    v17 = v5;
    v18 = v4;
    v19 = v2;
    v20 = v3;
    v7 = ((result[2] + -0.09) * a2) + 0.09;
    *result = COERCE_UNSIGNED_INT(((*result + -2.3) * a2) + 2.3) | (COERCE_UNSIGNED_INT(((result[1] + -4.1) * a2) + 4.1) << 32);
    result[2] = v7;
    result[25] = ((result[25] + -2.0) * a2) + 2.0;
    result[27] = ((result[27] + -0.14) * a2) + 0.14;
    sub_1000BA464(*(result + 10), *(result + 11), *(result + 96), 1163575296, 0, 1, a2);
    *(result + 10) = v9;
    *(result + 11) = v10;
    *(result + 96) = v11;
    v15 = xmmword_1000F0170;
    v16 = 0x3EE666663E75C28FLL;
    sub_1000BAC84(*(result + 14), *(result + 15), *(result + 16), *(result + 136), &v13, a2);
    v12 = v14;
    *(result + 7) = v13;
    *(result + 16) = v12;
    *(result + 136) = 0;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10004DDB8(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.08) * a2) + 0.08;
    *result = COERCE_UNSIGNED_INT(((*result + -3.9) * a2) + 3.9) | (COERCE_UNSIGNED_INT(((*(result + 4) + -0.68) * a2) + 0.68) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -1.8) * a2) + 1.8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10004DE80(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.5) * a2) + 0.5;
    *result = COERCE_UNSIGNED_INT(((*result + -3.8) * a2) + 3.8) | (COERCE_UNSIGNED_INT(((*(result + 4) + -1.0) * a2) + 1.0) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -2.2) * a2) + 2.2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

float sub_10004DF28(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -0.36) * a2) + 0.36;
  *(a1 + 100) = result;
  return result;
}

uint64_t sub_10004DF58(uint64_t result, float a2)
{
  if (*(result + 12))
  {
    __break(1u);
  }

  else
  {
    v2 = ((*(result + 8) + -0.14) * a2) + 0.14;
    *result = COERCE_UNSIGNED_INT(((*result + -2.4) * a2) + 2.4) | (COERCE_UNSIGNED_INT(((*(result + 4) + -0.96) * a2) + 0.96) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -0.4) * a2) + 0.4;
  }

  return result;
}

uint64_t sub_10004E01C(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.37) * a2) + 0.37;
    *result = COERCE_UNSIGNED_INT(((*result + -3.5) * a2) + 3.5) | (COERCE_UNSIGNED_INT(((*(result + 4) + -2.6) * a2) + 2.6) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -1.3) * a2) + 1.3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10004E0D4(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.5) * a2) + 0.5;
    *result = COERCE_UNSIGNED_INT(((*result + -1.9) * a2) + 1.9) | (COERCE_UNSIGNED_INT(((*(result + 4) + -0.19) * a2) + 0.19) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -2.0) * a2) + 2.0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10004E17C(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.094) * a2) + 0.094;
    *result = COERCE_UNSIGNED_INT(((*result + -2.7) * a2) + 2.7) | (COERCE_UNSIGNED_INT(((*(result + 4) + -0.22) * a2) + 0.22) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -1.3) * a2) + 1.3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10004E244(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    *&v2 = ((*result + -1.1) * a2) + 1.1;
    *&v3 = ((*(result + 4) + -1.2) * a2) + 1.2;
    v4 = ((*(result + 8) + -0.5) * a2) + 0.5;
    *result = v2 | (v3 << 32);
    *(result + 8) = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_10004E2D0()
{
  if (qword_10012F578 != -1)
  {
    swift_once();
  }

  *v0.i64 = qword_10013AB58();
  *&result = vmulq_f32(v0, vdupq_n_s32(0x3FA66666u)).u64[0];
  return result;
}

double sub_10004E364()
{
  if (qword_10012F578 != -1)
  {
    swift_once();
  }

  v499 = unk_10013AA60;
  v500 = xmmword_10013AA50;
  v498 = qword_10013AA70;
  v0 = dword_10013AA78;
  v496 = unk_10013AA90;
  v497 = xmmword_10013AA80;
  v1 = qword_10013AAA0;
  v2 = dword_10013AAA8;
  v495 = xmmword_10013AAB0;
  v494 = qword_10013AAC0;
  v493 = xmmword_10013AAD0;
  v491 = unk_10013AAE8;
  v492 = qword_10013AAE0;
  v490 = dword_10013AAF0;
  sub_1000125FC(&qword_100131010, &qword_1000F1D68);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000F0180;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 9;
  if (qword_10012F6E8 != -1)
  {
    swift_once();
  }

  v4 = vmulq_f32(xmmword_10013DCA0, 0);
  __asm { FMOV            V5.4S, #-6.25 }

  v536 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v527 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v4), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v501 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v4, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v473 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, _Q5), vdupq_n_s32(0x40CF0A3Du), *algn_10013DCB0), vdupq_n_s32(0xC05EB852), xmmword_10013DCC0));
  sub_10001358C(v539, 2.234, xmmword_1000EC910);
  v10 = sub_100013568(v539);
  v535 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v536, v10.n128_f32[0]), v527, v10.n128_u64[0], 1), v501, v10, 2), v473, v10, 3);
  v522 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v536, v11.f32[0]), v527, *v11.f32, 1), v501, v11, 2), v473, v11, 3);
  v483 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v536, v12.f32[0]), v527, *v12.f32, 1), v501, v12, 2), v473, v12, 3);
  v464 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v536, v13.f32[0]), v527, *v13.f32, 1), v501, v13, 2), v473, v13, 3);
  sub_10001358C(v540, -2.426, xmmword_1000EC8E0);
  v14 = sub_100013568(v540);
  v15 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v535, v14.n128_f32[0]), v522, v14.n128_u64[0], 1), v483, v14, 2), v464, v14, 3);
  v502 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v535, v16.f32[0]), v522, *v16.f32, 1), v483, v16, 2), v464, v16, 3);
  v474 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v535, v17.f32[0]), v522, *v17.f32, 1), v483, v17, 2), v464, v17, 3);
  v523 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v535, v18.f32[0]), v522, *v18.f32, 1), v483, v18, 2), v464, v18, 3);
  v528 = v15;
  sub_10001358C(v541, 0.15708, xmmword_1000EC920);
  v19 = sub_100013568(v541);
  v597 = 0;
  *(v3 + 64) = 0x4089999A40733333;
  *(v3 + 72) = 1047233823;
  *(v3 + 76) = 1;
  *(v3 + 77) = v602;
  *(v3 + 79) = v603;
  *(v3 + 80) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v528, v19.n128_f32[0]), v502, v19.n128_u64[0], 1), v474, v19, 2), v523, v19, 3);
  *(v3 + 96) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v528, v20.f32[0]), v502, *v20.f32, 1), v474, v20, 2), v523, v20, 3);
  *(v3 + 112) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v528, v21.f32[0]), v502, *v21.f32, 1), v474, v21, 2), v523, v21, 3);
  *(v3 + 128) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v528, v22.f32[0]), v502, *v22.f32, 1), v474, v22, 2), v523, v22, 3);
  *(v3 + 144) = xmmword_1000F0190;
  *(v3 + 160) = 1;
  v23 = v600;
  *(v3 + 163) = v601;
  *(v3 + 161) = v23;
  *(v3 + 164) = 1100480512;
  *(v3 + 168) = 1;
  *(v3 + 169) = v598;
  *(v3 + 171) = v599;
  *(v3 + 172) = 1050589266;
  *(v3 + 176) = xmmword_1000F01A0;
  *(v3 + 192) = 0x3F47AE143E19999ALL;
  *(v3 + 200) = v597;
  *(v3 + 201) = 0;
  *(v3 + 203) = 1;
  *(v3 + 208) = 0u;
  *(v3 + 224) = sub_100051D58;
  *(v3 + 232) = 0;
  *(v3 + 240) = 0x3F80000000000000;
  *(v3 + 256) = xmmword_1000EF5A0;
  *(v3 + 272) = 0;
  v24 = vmulq_f32(xmmword_10013DCA0, 0);
  v503 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v475 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v24), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v465 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v24, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v415 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC0C9EB85)), vdupq_n_s32(0x40CC7AE1u), *algn_10013DCB0), vdupq_n_s32(0xC060A3D7), xmmword_10013DCC0));
  sub_10001358C(v542, 2.234, xmmword_1000EC910);
  v25 = sub_100013568(v542);
  v529 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v503, v25.n128_f32[0]), v475, v25.n128_u64[0], 1), v465, v25, 2), v415, v25, 3);
  v484 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v503, v26.f32[0]), v475, *v26.f32, 1), v465, v26, 2), v415, v26, 3);
  v443 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v503, v27.f32[0]), v475, *v27.f32, 1), v465, v27, 2), v415, v27, 3);
  v416 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v503, v28.f32[0]), v475, *v28.f32, 1), v465, v28, 2), v415, v28, 3);
  sub_10001358C(v543, -2.426, xmmword_1000EC8E0);
  v29 = sub_100013568(v543);
  v504 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v529, v29.n128_f32[0]), v484, v29.n128_u64[0], 1), v443, v29, 2), v416, v29, 3);
  v476 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v529, v30.f32[0]), v484, *v30.f32, 1), v443, v30, 2), v416, v30, 3);
  v466 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v529, v31.f32[0]), v484, *v31.f32, 1), v443, v31, 2), v416, v31, 3);
  v530 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v529, v32.f32[0]), v484, *v32.f32, 1), v443, v32, 2), v416, v32, 3);
  sub_10001358C(v544, 0.15708, xmmword_1000EC920);
  v33 = sub_100013568(v544);
  v604 = 0;
  *(v3 + 288) = 0x4079999A3F800000;
  *(v3 + 296) = 1028174905;
  *(v3 + 300) = 1;
  *(v3 + 301) = v609;
  *(v3 + 303) = v610;
  *(v3 + 304) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v504, v33.n128_f32[0]), v476, v33.n128_u64[0], 1), v466, v33, 2), v530, v33, 3);
  *(v3 + 320) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v504, v34.f32[0]), v476, *v34.f32, 1), v466, v34, 2), v530, v34, 3);
  *(v3 + 336) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v504, v35.f32[0]), v476, *v35.f32, 1), v466, v35, 2), v530, v35, 3);
  *(v3 + 352) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v504, v36.f32[0]), v476, *v36.f32, 1), v466, v36, 2), v530, v36, 3);
  *(v3 + 368) = xmmword_1000F01B0;
  *(v3 + 384) = 1;
  v37 = v607;
  *(v3 + 387) = v608;
  *(v3 + 385) = v37;
  *(v3 + 388) = 1080452710;
  *(v3 + 392) = 1;
  *(v3 + 393) = v605;
  *(v3 + 395) = v606;
  *(v3 + 396) = 1053609165;
  *(v3 + 400) = xmmword_1000F01C0;
  *(v3 + 416) = 0x3F2E147B3DB851ECLL;
  *(v3 + 424) = v604;
  *(v3 + 425) = 0;
  *(v3 + 427) = 1;
  *(v3 + 432) = 0u;
  *(v3 + 448) = sub_100081608;
  *(v3 + 456) = 0;
  *(v3 + 464) = 0x3F80000000000000;
  *(v3 + 480) = xmmword_1000EF5A0;
  *(v3 + 496) = 1;
  v38 = vmulq_f32(xmmword_10013DCA0, 0);
  v505 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v467 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v38), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v444 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v38, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v388 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBF30A3D7)), vdupq_n_s32(0x3F147AE1u), *algn_10013DCB0), vdupq_n_s32(0xBF0CCCCD), xmmword_10013DCC0));
  sub_10001358C(v545, 2.6354, xmmword_1000EC910);
  v39 = sub_100013568(v545);
  v531 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v505, v39.n128_f32[0]), v467, v39.n128_u64[0], 1), v444, v39, 2), v388, v39, 3);
  v477 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v505, v40.f32[0]), v467, *v40.f32, 1), v444, v40, 2), v388, v40, 3);
  v417 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v505, v41.f32[0]), v467, *v41.f32, 1), v444, v41, 2), v388, v41, 3);
  v389 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v505, v42.f32[0]), v467, *v42.f32, 1), v444, v42, 2), v388, v42, 3);
  sub_10001358C(v546, -2.8972, xmmword_1000EC8E0);
  v43 = sub_100013568(v546);
  v506 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v531, v43.n128_f32[0]), v477, v43.n128_u64[0], 1), v417, v43, 2), v389, v43, 3);
  v468 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v531, v44.f32[0]), v477, *v44.f32, 1), v417, v44, 2), v389, v44, 3);
  v445 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v531, v45.f32[0]), v477, *v45.f32, 1), v417, v45, 2), v389, v45, 3);
  v532 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v531, v46.f32[0]), v477, *v46.f32, 1), v417, v46, 2), v389, v46, 3);
  sub_10001358C(v547, 0.64577, xmmword_1000EC920);
  v47 = sub_100013568(v547);
  v611 = 1;
  *(v3 + 512) = 0x3F1C28F640200000;
  *(v3 + 520) = 1054280253;
  *(v3 + 524) = 1;
  *(v3 + 525) = v616;
  *(v3 + 527) = v617;
  *(v3 + 528) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v506, v47.n128_f32[0]), v468, v47.n128_u64[0], 1), v445, v47, 2), v532, v47, 3);
  *(v3 + 544) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v506, v48.f32[0]), v468, *v48.f32, 1), v445, v48, 2), v532, v48, 3);
  *(v3 + 560) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v506, v49.f32[0]), v468, *v49.f32, 1), v445, v49, 2), v532, v49, 3);
  *(v3 + 576) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v506, v50.f32[0]), v468, *v50.f32, 1), v445, v50, 2), v532, v50, 3);
  *(v3 + 592) = xmmword_1000F01D0;
  *(v3 + 608) = 0;
  v51 = v614;
  *(v3 + 611) = v615;
  *(v3 + 609) = v51;
  *(v3 + 612) = 1100480512;
  *(v3 + 616) = 9;
  *(v3 + 617) = v612;
  *(v3 + 619) = v613;
  *(v3 + 620) = 1065353216;
  *(v3 + 640) = 0;
  *(v3 + 624) = 0u;
  *(v3 + 648) = v611;
  *(v3 + 649) = 0;
  *(v3 + 651) = 0;
  *(v3 + 656) = 0u;
  *(v3 + 672) = sub_100051DB4;
  *(v3 + 680) = 0;
  *(v3 + 688) = 0x3F80000000000000;
  *(v3 + 704) = xmmword_1000EF5C0;
  *(v3 + 720) = 1;
  v52 = vmulq_f32(xmmword_10013DCA0, 0);
  v478 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v446 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v52), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v418 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v52, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v363 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBE0F5C29)), vdupq_n_s32(0x3E851EB8u), *algn_10013DCB0), vdupq_n_s32(0x3F028F5Cu), xmmword_10013DCC0));
  sub_10001358C(v548, 2.2689, xmmword_1000EC910);
  v53 = sub_100013568(v548);
  v507 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v478, v53.n128_f32[0]), v446, v53.n128_u64[0], 1), v418, v53, 2), v363, v53, 3);
  v469 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v478, v54.f32[0]), v446, *v54.f32, 1), v418, v54, 2), v363, v54, 3);
  v390 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v478, v55.f32[0]), v446, *v55.f32, 1), v418, v55, 2), v363, v55, 3);
  v364 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v478, v56.f32[0]), v446, *v56.f32, 1), v418, v56, 2), v363, v56, 3);
  sub_10001358C(v549, -3.5081, xmmword_1000EC8E0);
  v57 = sub_100013568(v549);
  v479 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v507, v57.n128_f32[0]), v469, v57.n128_u64[0], 1), v390, v57, 2), v364, v57, 3);
  v447 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v507, v58.f32[0]), v469, *v58.f32, 1), v390, v58, 2), v364, v58, 3);
  v419 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v507, v59.f32[0]), v469, *v59.f32, 1), v390, v59, 2), v364, v59, 3);
  v508 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v507, v60.f32[0]), v469, *v60.f32, 1), v390, v60, 2), v364, v60, 3);
  sub_10001358C(v550, 0.99484, xmmword_1000EC920);
  v61 = sub_100013568(v550);
  v618 = 1;
  *(v3 + 736) = 0x3EF5C28F3FF33333;
  *(v3 + 744) = 1053609165;
  *(v3 + 748) = 1;
  *(v3 + 749) = v623;
  *(v3 + 751) = v624;
  *(v3 + 752) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v479, v61.n128_f32[0]), v447, v61.n128_u64[0], 1), v419, v61, 2), v508, v61, 3);
  *(v3 + 768) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v479, v62.f32[0]), v447, *v62.f32, 1), v419, v62, 2), v508, v62, 3);
  *(v3 + 784) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v479, v63.f32[0]), v447, *v63.f32, 1), v419, v63, 2), v508, v63, 3);
  *(v3 + 800) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v479, v64.f32[0]), v447, *v64.f32, 1), v419, v64, 2), v508, v64, 3);
  *(v3 + 816) = xmmword_1000F01E0;
  *(v3 + 832) = 0;
  v65 = v621;
  *(v3 + 835) = v622;
  *(v3 + 833) = v65;
  *(v3 + 836) = 1084856730;
  *(v3 + 840) = 9;
  *(v3 + 841) = v619;
  *(v3 + 843) = v620;
  *(v3 + 844) = 1065353216;
  *(v3 + 848) = 0;
  *(v3 + 856) = 0u;
  *(v3 + 872) = v618;
  *(v3 + 873) = 0;
  *(v3 + 875) = 1;
  *(v3 + 880) = 0u;
  *(v3 + 896) = sub_100051DE4;
  *(v3 + 904) = 0;
  *(v3 + 912) = 0x3F170A3D3E800000;
  *(v3 + 928) = xmmword_1000EF5A0;
  *(v3 + 944) = 2;
  v66 = vmulq_f32(xmmword_10013DCA0, 0);
  v448 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v391 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v66), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v365 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v66, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v480 = vdupq_n_s32(0xBDB851EB);
  v470 = vdupq_n_s32(0x3F199999u);
  v321 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBD4CCCCC)), v480, *algn_10013DCB0), v470, xmmword_10013DCC0));
  sub_10001358C(v551, 4.7124, xmmword_1000EC910);
  v67 = sub_100013568(v551);
  v509 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v448, v67.n128_f32[0]), v391, v67.n128_u64[0], 1), v365, v67, 2), v321, v67, 3);
  v420 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v448, v68.f32[0]), v391, *v68.f32, 1), v365, v68, 2), v321, v68, 3);
  v341 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v448, v69.f32[0]), v391, *v69.f32, 1), v365, v69, 2), v321, v69, 3);
  v322 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v448, v70.f32[0]), v391, *v70.f32, 1), v365, v70, 2), v321, v70, 3);
  sub_10001358C(v552, 1.0123, xmmword_1000EC8E0);
  v71 = sub_100013568(v552);
  v449 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v509, v71.n128_f32[0]), v420, v71.n128_u64[0], 1), v341, v71, 2), v322, v71, 3);
  v392 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v509, v72.f32[0]), v420, *v72.f32, 1), v341, v72, 2), v322, v72, 3);
  v366 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v509, v73.f32[0]), v420, *v73.f32, 1), v341, v73, 2), v322, v73, 3);
  v510 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v509, v74.f32[0]), v420, *v74.f32, 1), v341, v74, 2), v322, v74, 3);
  sub_10001358C(v553, -1.5708, xmmword_1000EC920);
  v75 = sub_100013568(v553);
  v625 = 1;
  *(v3 + 960) = 0x3F2666663FD9999ALL;
  *(v3 + 968) = 1056293519;
  *(v3 + 972) = 1;
  *(v3 + 973) = v630;
  *(v3 + 975) = v631;
  *(v3 + 976) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v449, v75.n128_f32[0]), v392, v75.n128_u64[0], 1), v366, v75, 2), v510, v75, 3);
  *(v3 + 992) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v449, v76.f32[0]), v392, *v76.f32, 1), v366, v76, 2), v510, v76, 3);
  *(v3 + 1008) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v449, v77.f32[0]), v392, *v77.f32, 1), v366, v77, 2), v510, v77, 3);
  *(v3 + 1024) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v449, v78.f32[0]), v392, *v78.f32, 1), v366, v78, 2), v510, v78, 3);
  *(v3 + 1040) = xmmword_1000F01F0;
  *(v3 + 1056) = 0;
  v79 = v628;
  *(v3 + 1059) = v629;
  *(v3 + 1057) = v79;
  *(v3 + 1060) = 1093664768;
  *(v3 + 1064) = 13;
  *(v3 + 1065) = v626;
  *(v3 + 1067) = v627;
  *(v3 + 1068) = 1065353216;
  *(v3 + 1072) = 0;
  *(v3 + 1080) = 0u;
  *(v3 + 1096) = v625;
  *(v3 + 1097) = 0;
  *(v3 + 1099) = 0;
  *(v3 + 1104) = 0u;
  *(v3 + 1120) = sub_100051E14;
  *(v3 + 1128) = 0;
  *(v3 + 1136) = 0x3F80000000000000;
  *(v3 + 1152) = xmmword_1000EF5C0;
  *(v3 + 1168) = 2;
  v80 = vmulq_f32(xmmword_10013DCA0, 0);
  v450 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v393 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v80), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v367 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v80, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  __asm { FMOV            V0.4S, #-0.25 }

  v323 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3EF5C28Fu)), _Q0, *algn_10013DCB0), vdupq_n_s32(0x3EA8F5C2u), xmmword_10013DCC0));
  sub_10001358C(v554, -0.33161, xmmword_1000EC910);
  v82 = sub_100013568(v554);
  v511 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v450, v82.n128_f32[0]), v393, v82.n128_u64[0], 1), v367, v82, 2), v323, v82, 3);
  v421 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v450, v83.f32[0]), v393, *v83.f32, 1), v367, v83, 2), v323, v83, 3);
  v342 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v450, v84.f32[0]), v393, *v84.f32, 1), v367, v84, 2), v323, v84, 3);
  v324 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v450, v85.f32[0]), v393, *v85.f32, 1), v367, v85, 2), v323, v85, 3);
  sub_10001358C(v555, 0.54105, xmmword_1000EC8E0);
  v86 = sub_100013568(v555);
  v451 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v511, v86.n128_f32[0]), v421, v86.n128_u64[0], 1), v342, v86, 2), v324, v86, 3);
  v394 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v511, v87.f32[0]), v421, *v87.f32, 1), v342, v87, 2), v324, v87, 3);
  v368 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v511, v88.f32[0]), v421, *v88.f32, 1), v342, v88, 2), v324, v88, 3);
  v512 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v511, v89.f32[0]), v421, *v89.f32, 1), v342, v89, 2), v324, v89, 3);
  sub_10001358C(v556, 0.62832, xmmword_1000EC920);
  v90 = sub_100013568(v556);
  v632 = 1;
  *(v3 + 1184) = 0x3F051EB840133333;
  *(v3 + 1192) = 1036831949;
  *(v3 + 1196) = 1;
  *(v3 + 1197) = v637;
  *(v3 + 1199) = v638;
  *(v3 + 1200) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v451, v90.n128_f32[0]), v394, v90.n128_u64[0], 1), v368, v90, 2), v512, v90, 3);
  *(v3 + 1216) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v451, v91.f32[0]), v394, *v91.f32, 1), v368, v91, 2), v512, v91, 3);
  *(v3 + 1232) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v451, v92.f32[0]), v394, *v92.f32, 1), v368, v92, 2), v512, v92, 3);
  *(v3 + 1248) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v451, v93.f32[0]), v394, *v93.f32, 1), v368, v93, 2), v512, v93, 3);
  *(v3 + 1264) = xmmword_1000F0200;
  *(v3 + 1280) = 0;
  v94 = v635;
  *(v3 + 1283) = v636;
  *(v3 + 1281) = v94;
  *(v3 + 1284) = 1091777331;
  *(v3 + 1288) = 10;
  *(v3 + 1289) = v633;
  *(v3 + 1291) = v634;
  *(v3 + 1292) = 1065353216;
  *(v3 + 1296) = 0;
  *(v3 + 1304) = 0u;
  *(v3 + 1320) = v632;
  *(v3 + 1321) = 0;
  *(v3 + 1323) = 1;
  *(v3 + 1328) = 0u;
  *(v3 + 1344) = sub_10008160C;
  *(v3 + 1352) = 0;
  *(v3 + 1360) = 0x3F80000000000000;
  *(v3 + 1376) = xmmword_1000EF5C0;
  *(v3 + 1392) = 9;
  v95 = vmulq_f32(xmmword_10013DCA0, 0);
  v452 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v395 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v95), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v369 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v95, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v325 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC0CBD70A)), vdupq_n_s32(0x40CA3D70u), *algn_10013DCB0), vdupq_n_s32(0xC0A19999), xmmword_10013DCC0));
  sub_10001358C(v557, 2.234, xmmword_1000EC910);
  v96 = sub_100013568(v557);
  v513 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v452, v96.n128_f32[0]), v395, v96.n128_u64[0], 1), v369, v96, 2), v325, v96, 3);
  v422 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v452, v97.f32[0]), v395, *v97.f32, 1), v369, v97, 2), v325, v97, 3);
  v343 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v452, v98.f32[0]), v395, *v98.f32, 1), v369, v98, 2), v325, v98, 3);
  v326 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v452, v99.f32[0]), v395, *v99.f32, 1), v369, v99, 2), v325, v99, 3);
  sub_10001358C(v558, -2.426, xmmword_1000EC8E0);
  v100 = sub_100013568(v558);
  v453 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v513, v100.n128_f32[0]), v422, v100.n128_u64[0], 1), v343, v100, 2), v326, v100, 3);
  v396 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v513, v101.f32[0]), v422, *v101.f32, 1), v343, v101, 2), v326, v101, 3);
  v370 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v513, v102.f32[0]), v422, *v102.f32, 1), v343, v102, 2), v326, v102, 3);
  v514 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v513, v103.f32[0]), v422, *v103.f32, 1), v343, v103, 2), v326, v103, 3);
  sub_10001358C(v559, 0.15708, xmmword_1000EC920);
  v104 = sub_100013568(v559);
  v639 = 0;
  *(v3 + 1408) = 0x408000004019999ALL;
  *(v3 + 1416) = 1028711776;
  *(v3 + 1420) = 1;
  *(v3 + 1421) = v644;
  *(v3 + 1423) = v645;
  *(v3 + 1424) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v453, v104.n128_f32[0]), v396, v104.n128_u64[0], 1), v370, v104, 2), v514, v104, 3);
  *(v3 + 1440) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v453, v105.f32[0]), v396, *v105.f32, 1), v370, v105, 2), v514, v105, 3);
  *(v3 + 1456) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v453, v106.f32[0]), v396, *v106.f32, 1), v370, v106, 2), v514, v106, 3);
  *(v3 + 1472) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v453, v107.f32[0]), v396, *v107.f32, 1), v370, v107, 2), v514, v107, 3);
  *(v3 + 1488) = xmmword_1000F0210;
  *(v3 + 1504) = 1;
  v108 = v642;
  *(v3 + 1507) = v643;
  *(v3 + 1505) = v108;
  *(v3 + 1508) = 1074161254;
  *(v3 + 1512) = 1;
  *(v3 + 1513) = v640;
  *(v3 + 1515) = v641;
  *(v3 + 1516) = 1058474557;
  *(v3 + 1520) = xmmword_1000F0220;
  *(v3 + 1536) = 0x3F2E147B3DB851ECLL;
  *(v3 + 1544) = v639;
  *(v3 + 1545) = 1;
  *(v3 + 1547) = 1;
  *(v3 + 1552) = 0u;
  *(v3 + 1568) = sub_100051E44;
  *(v3 + 1576) = 0;
  *(v3 + 1584) = 0x3F80000000000000;
  *(v3 + 1600) = xmmword_1000EF5D0;
  *(v3 + 1616) = 9;
  v109 = vmulq_f32(xmmword_10013DCA0, 0);
  v423 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v371 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v109), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v344 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v109, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v307 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC0DCCCCC)), vdupq_n_s32(0x40B7AE14u), *algn_10013DCB0), vdupq_n_s32(0xC0A5C28F), xmmword_10013DCC0));
  sub_10001358C(v560, 2.234, xmmword_1000EC910);
  v110 = sub_100013568(v560);
  v454 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v423, v110.n128_f32[0]), v371, v110.n128_u64[0], 1), v344, v110, 2), v307, v110, 3);
  v397 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v423, v111.f32[0]), v371, *v111.f32, 1), v344, v111, 2), v307, v111, 3);
  v327 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v423, v112.f32[0]), v371, *v112.f32, 1), v344, v112, 2), v307, v112, 3);
  v308 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v423, v113.f32[0]), v371, *v113.f32, 1), v344, v113, 2), v307, v113, 3);
  sub_10001358C(v561, -2.426, xmmword_1000EC8E0);
  v114 = sub_100013568(v561);
  v372 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v454, v115.f32[0]), v397, *v115.f32, 1), v327, v115, 2), v308, v115, 3);
  v345 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v454, v116.f32[0]), v397, *v116.f32, 1), v327, v116, 2), v308, v116, 3);
  v424 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v454, v114.n128_f32[0]), v397, v114.n128_u64[0], 1), v327, v114, 2), v308, v114, 3);
  v455 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v454, v117.f32[0]), v397, *v117.f32, 1), v327, v117, 2), v308, v117, 3);
  sub_10001358C(v562, 0.15708, xmmword_1000EC920);
  v118 = sub_100013568(v562);
  v646 = 1;
  *(v3 + 1632) = 0x3F7333333FE66666;
  *(v3 + 1640) = 1028443341;
  *(v3 + 1644) = 1;
  *(v3 + 1645) = v651;
  *(v3 + 1647) = v652;
  *(v3 + 1648) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v424, v118.n128_f32[0]), v372, v118.n128_u64[0], 1), v345, v118, 2), v455, v118, 3);
  *(v3 + 1664) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v424, v119.f32[0]), v372, *v119.f32, 1), v345, v119, 2), v455, v119, 3);
  *(v3 + 1680) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v424, v120.f32[0]), v372, *v120.f32, 1), v345, v120, 2), v455, v120, 3);
  *(v3 + 1696) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v424, v121.f32[0]), v372, *v121.f32, 1), v345, v121, 2), v455, v121, 3);
  *(v3 + 1712) = xmmword_1000F0230;
  *(v3 + 1728) = 1;
  v122 = v649;
  *(v3 + 1731) = v650;
  *(v3 + 1729) = v122;
  *(v3 + 1732) = 1045220557;
  *(v3 + 1736) = 10;
  *(v3 + 1737) = v647;
  *(v3 + 1739) = v648;
  *(v3 + 1740) = 1065353216;
  *(v3 + 1744) = 0;
  *(v3 + 1752) = 0u;
  *(v3 + 1768) = v646;
  *(v3 + 1769) = 1;
  *(v3 + 1771) = 0;
  *(v3 + 1776) = 0u;
  *(v3 + 1792) = sub_100051FAC;
  *(v3 + 1800) = 0;
  *(v3 + 1808) = 0x3F80000000000000;
  *(v3 + 1824) = xmmword_1000EF5C0;
  *(v3 + 1840) = 3;
  v123 = vmulq_f32(xmmword_10013DCA0, 0);
  v425 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v373 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v123), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v346 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v123, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v309 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3F2B851Eu)), vdupq_n_s32(0x3E3851EBu), *algn_10013DCB0), vdupq_n_s32(0xBF6B851E), xmmword_10013DCC0));
  sub_10001358C(v563, 3.735, xmmword_1000EC910);
  v124 = sub_100013568(v563);
  v456 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v425, v124.n128_f32[0]), v373, v124.n128_u64[0], 1), v346, v124, 2), v309, v124, 3);
  v398 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v425, v125.f32[0]), v373, *v125.f32, 1), v346, v125, 2), v309, v125, 3);
  v328 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v425, v126.f32[0]), v373, *v126.f32, 1), v346, v126, 2), v309, v126, 3);
  v310 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v425, v127.f32[0]), v373, *v127.f32, 1), v346, v127, 2), v309, v127, 3);
  sub_10001358C(v564, -2.8449, xmmword_1000EC8E0);
  v128 = sub_100013568(v564);
  v374 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v456, v129.f32[0]), v398, *v129.f32, 1), v328, v129, 2), v310, v129, 3);
  v347 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v456, v130.f32[0]), v398, *v130.f32, 1), v328, v130, 2), v310, v130, 3);
  v426 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v456, v128.n128_f32[0]), v398, v128.n128_u64[0], 1), v328, v128, 2), v310, v128, 3);
  v457 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v456, v131.f32[0]), v398, *v131.f32, 1), v328, v131, 2), v310, v131, 3);
  sub_10001358C(v565, 0.97738, xmmword_1000EC920);
  v132 = sub_100013568(v565);
  v653 = 1;
  *(v3 + 1856) = 0x3EFAE14840A00000;
  *(v3 + 1864) = 1041865114;
  *(v3 + 1868) = 1;
  *(v3 + 1869) = v658;
  *(v3 + 1871) = v659;
  *(v3 + 1872) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v426, v132.n128_f32[0]), v374, v132.n128_u64[0], 1), v347, v132, 2), v457, v132, 3);
  *(v3 + 1888) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v426, v133.f32[0]), v374, *v133.f32, 1), v347, v133, 2), v457, v133, 3);
  *(v3 + 1904) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v426, v134.f32[0]), v374, *v134.f32, 1), v347, v134, 2), v457, v134, 3);
  *(v3 + 1920) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v426, v135.f32[0]), v374, *v135.f32, 1), v347, v135, 2), v457, v135, 3);
  *(v3 + 1936) = xmmword_1000F0240;
  *(v3 + 1952) = 0;
  v136 = v656;
  *(v3 + 1955) = v657;
  *(v3 + 1953) = v136;
  *(v3 + 1956) = 1077097267;
  *(v3 + 1960) = 9;
  *(v3 + 1961) = v654;
  *(v3 + 1963) = v655;
  *(v3 + 1964) = 1065353216;
  *(v3 + 1968) = 0;
  *(v3 + 1976) = 0u;
  *(v3 + 1992) = v653;
  *(v3 + 1993) = 1;
  *(v3 + 1995) = 1;
  *(v3 + 2000) = 0u;
  *(v3 + 2016) = sub_100051FDC;
  *(v3 + 2024) = 0;
  *(v3 + 2032) = 0x3F80000000000000;
  *(v3 + 2048) = xmmword_1000EF5D0;
  *(v3 + 2064) = 3;
  v137 = vmulq_f32(xmmword_10013DCA0, 0);
  v427 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v375 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v137), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v348 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v137, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v311 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBEA3D70A)), vdupq_n_s32(0x3FC3D70Au), *algn_10013DCB0), vdupq_n_s32(0xBF91EB85), xmmword_10013DCC0));
  sub_10001358C(v566, 3.2987, xmmword_1000EC910);
  v138 = sub_100013568(v566);
  v458 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v427, v138.n128_f32[0]), v375, v138.n128_u64[0], 1), v348, v138, 2), v311, v138, 3);
  v399 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v427, v139.f32[0]), v375, *v139.f32, 1), v348, v139, 2), v311, v139, 3);
  v329 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v427, v140.f32[0]), v375, *v140.f32, 1), v348, v140, 2), v311, v140, 3);
  v312 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v427, v141.f32[0]), v375, *v141.f32, 1), v348, v141, 2), v311, v141, 3);
  sub_10001358C(v567, -2.4086, xmmword_1000EC8E0);
  v142 = sub_100013568(v567);
  v376 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v458, v143.f32[0]), v399, *v143.f32, 1), v329, v143, 2), v312, v143, 3);
  v349 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v458, v144.f32[0]), v399, *v144.f32, 1), v329, v144, 2), v312, v144, 3);
  v428 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v458, v142.n128_f32[0]), v399, v142.n128_u64[0], 1), v329, v142, 2), v312, v142, 3);
  v459 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v458, v145.f32[0]), v399, *v145.f32, 1), v329, v145, 2), v312, v145, 3);
  sub_10001358C(v568, 0.64577, xmmword_1000EC920);
  v146 = sub_100013568(v568);
  v660 = 1;
  *(v3 + 2080) = 0x3F8CCCCD3FE66666;
  *(v3 + 2088) = 1041865114;
  *(v3 + 2092) = 1;
  *(v3 + 2093) = v665;
  *(v3 + 2095) = v666;
  *(v3 + 2096) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v428, v146.n128_f32[0]), v376, v146.n128_u64[0], 1), v349, v146, 2), v459, v146, 3);
  *(v3 + 2112) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v428, v147.f32[0]), v376, *v147.f32, 1), v349, v147, 2), v459, v147, 3);
  *(v3 + 2128) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v428, v148.f32[0]), v376, *v148.f32, 1), v349, v148, 2), v459, v148, 3);
  *(v3 + 2144) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v428, v149.f32[0]), v376, *v149.f32, 1), v349, v149, 2), v459, v149, 3);
  *(v3 + 2160) = xmmword_1000F0250;
  *(v3 + 2176) = 0;
  v150 = v663;
  *(v3 + 2179) = v664;
  *(v3 + 2177) = v150;
  *(v3 + 2180) = 1057467924;
  *(v3 + 2184) = 9;
  *(v3 + 2185) = v661;
  *(v3 + 2187) = v662;
  *(v3 + 2188) = 1065353216;
  *(v3 + 2192) = 0;
  *(v3 + 2200) = 0u;
  *(v3 + 2216) = v660;
  *(v3 + 2217) = 1;
  *(v3 + 2219) = 1;
  *(v3 + 2224) = 0u;
  *(v3 + 2240) = sub_10005200C;
  *(v3 + 2248) = 0;
  *(v3 + 2256) = 0x3F80000000000000;
  *(v3 + 2272) = xmmword_1000EF7D0;
  *(v3 + 2288) = 3;
  v151 = vmulq_f32(xmmword_10013DCA0, 0);
  v400 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v350 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v151), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v330 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v151, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v298 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3E6B851Eu)), vdupq_n_s32(0xBF4A3D70), *algn_10013DCB0), vdupq_n_s32(0xBFFAE147), xmmword_10013DCC0));
  sub_10001358C(v569, 3.0718, xmmword_1000EC910);
  v152 = sub_100013568(v569);
  v429 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v400, v152.n128_f32[0]), v350, v152.n128_u64[0], 1), v330, v152, 2), v298, v152, 3);
  v377 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v400, v153.f32[0]), v350, *v153.f32, 1), v330, v153, 2), v298, v153, 3);
  v313 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v400, v154.f32[0]), v350, *v154.f32, 1), v330, v154, 2), v298, v154, 3);
  v299 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v400, v155.f32[0]), v350, *v155.f32, 1), v330, v155, 2), v298, v155, 3);
  sub_10001358C(v570, 3.1067, xmmword_1000EC8E0);
  v156 = sub_100013568(v570);
  v351 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v429, v157.f32[0]), v377, *v157.f32, 1), v313, v157, 2), v299, v157, 3);
  v331 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v429, v158.f32[0]), v377, *v158.f32, 1), v313, v158, 2), v299, v158, 3);
  v401 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v429, v156.n128_f32[0]), v377, v156.n128_u64[0], 1), v313, v156, 2), v299, v156, 3);
  v430 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v429, v159.f32[0]), v377, *v159.f32, 1), v313, v159, 2), v299, v159, 3);
  sub_10001358C(v571, -0.7854, xmmword_1000EC920);
  v160 = sub_100013568(v571);
  v667 = 1;
  *(v3 + 2304) = 0x3FC000003F2147AELL;
  *(v3 + 2312) = 1041865114;
  *(v3 + 2316) = 1;
  *(v3 + 2317) = v672;
  *(v3 + 2319) = v673;
  *(v3 + 2320) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v401, v160.n128_f32[0]), v351, v160.n128_u64[0], 1), v331, v160, 2), v430, v160, 3);
  *(v3 + 2336) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v401, v161.f32[0]), v351, *v161.f32, 1), v331, v161, 2), v430, v161, 3);
  *(v3 + 2352) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v401, v162.f32[0]), v351, *v162.f32, 1), v331, v162, 2), v430, v162, 3);
  *(v3 + 2368) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v401, v163.f32[0]), v351, *v163.f32, 1), v331, v163, 2), v430, v163, 3);
  *(v3 + 2384) = xmmword_1000F0260;
  *(v3 + 2400) = 0;
  v164 = v670;
  *(v3 + 2403) = v671;
  *(v3 + 2401) = v164;
  *(v3 + 2404) = 1061830001;
  *(v3 + 2408) = 9;
  *(v3 + 2409) = v668;
  *(v3 + 2411) = v669;
  *(v3 + 2412) = 1065353216;
  *(v3 + 2416) = 0;
  *(v3 + 2424) = 0u;
  *(v3 + 2440) = v667;
  *(v3 + 2441) = 1;
  *(v3 + 2443) = 0;
  *(v3 + 2448) = 0u;
  *(v3 + 2464) = sub_10005203C;
  *(v3 + 2472) = 0;
  *(v3 + 2480) = 0x3F80000000000000;
  *(v3 + 2496) = xmmword_1000EF5A0;
  *(v3 + 2512) = 4;
  v165 = vmulq_f32(xmmword_10013DCA0, 0);
  v402 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v352 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v165), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v332 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v165, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v300 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3E2E147Bu)), vdupq_n_s32(0x3F3851EBu), *algn_10013DCB0), vdupq_n_s32(0xBE999999), xmmword_10013DCC0));
  sub_10001358C(v572, 1.5708, xmmword_1000EC910);
  v166 = sub_100013568(v572);
  v431 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v402, v166.n128_f32[0]), v352, v166.n128_u64[0], 1), v332, v166, 2), v300, v166, 3);
  v378 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v402, v167.f32[0]), v352, *v167.f32, 1), v332, v167, 2), v300, v167, 3);
  v314 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v402, v168.f32[0]), v352, *v168.f32, 1), v332, v168, 2), v300, v168, 3);
  v301 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v402, v169.f32[0]), v352, *v169.f32, 1), v332, v169, 2), v300, v169, 3);
  sub_10001358C(v573, -0.82903, xmmword_1000EC8E0);
  v170 = sub_100013568(v573);
  v353 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v431, v171.f32[0]), v378, *v171.f32, 1), v314, v171, 2), v301, v171, 3);
  v333 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v431, v172.f32[0]), v378, *v172.f32, 1), v314, v172, 2), v301, v172, 3);
  v403 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v431, v170.n128_f32[0]), v378, v170.n128_u64[0], 1), v314, v170, 2), v301, v170, 3);
  v432 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v431, v173.f32[0]), v378, *v173.f32, 1), v314, v173, 2), v301, v173, 3);
  sub_10001358C(v574, 1.5708, xmmword_1000EC920);
  v174 = sub_100013568(v574);
  v674 = 1;
  *(v3 + 2528) = 0x3F3D70A43FF33333;
  *(v3 + 2536) = 1050253722;
  *(v3 + 2540) = 1;
  *(v3 + 2541) = v679;
  *(v3 + 2543) = v680;
  *(v3 + 2544) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v403, v174.n128_f32[0]), v353, v174.n128_u64[0], 1), v333, v174, 2), v432, v174, 3);
  *(v3 + 2560) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v403, v175.f32[0]), v353, *v175.f32, 1), v333, v175, 2), v432, v175, 3);
  *(v3 + 2576) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v403, v176.f32[0]), v353, *v176.f32, 1), v333, v176, 2), v432, v176, 3);
  *(v3 + 2592) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v403, v177.f32[0]), v353, *v177.f32, 1), v333, v177, 2), v432, v177, 3);
  *(v3 + 2608) = xmmword_1000F0270;
  *(v3 + 2624) = 0;
  v178 = v677;
  *(v3 + 2627) = v678;
  *(v3 + 2625) = v178;
  *(v3 + 2628) = 1082969293;
  *(v3 + 2632) = 13;
  *(v3 + 2633) = v675;
  *(v3 + 2635) = v676;
  *(v3 + 2636) = 1065353216;
  *(v3 + 2640) = 0;
  *(v3 + 2648) = 0u;
  *(v3 + 2664) = v674;
  *(v3 + 2665) = 1;
  *(v3 + 2667) = 0;
  *(v3 + 2672) = 0u;
  *(v3 + 2688) = sub_100052154;
  *(v3 + 2696) = 0;
  *(v3 + 2704) = 0x3F80000000000000;
  *(v3 + 2720) = xmmword_1000EF5C0;
  *(v3 + 2736) = 4;
  v179 = vmulq_f32(xmmword_10013DCA0, 0);
  v404 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v354 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v179), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v334 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v179, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v302 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3F87AE14u)), vdupq_n_s32(0xC0270A3D), *algn_10013DCB0), vdupq_n_s32(0xBF199999), xmmword_10013DCC0));
  sub_10001358C(v575, 3.9619, xmmword_1000EC910);
  v180 = sub_100013568(v575);
  v433 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v404, v180.n128_f32[0]), v354, v180.n128_u64[0], 1), v334, v180, 2), v302, v180, 3);
  v379 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v404, v181.f32[0]), v354, *v181.f32, 1), v334, v181, 2), v302, v181, 3);
  v315 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v404, v182.f32[0]), v354, *v182.f32, 1), v334, v182, 2), v302, v182, 3);
  v303 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v404, v183.f32[0]), v354, *v183.f32, 1), v334, v183, 2), v302, v183, 3);
  sub_10001358C(v576, -3.3859, xmmword_1000EC8E0);
  v184 = sub_100013568(v576);
  v355 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v433, v185.f32[0]), v379, *v185.f32, 1), v315, v185, 2), v303, v185, 3);
  v335 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v433, v186.f32[0]), v379, *v186.f32, 1), v315, v186, 2), v303, v186, 3);
  v405 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v433, v184.n128_f32[0]), v379, v184.n128_u64[0], 1), v315, v184, 2), v303, v184, 3);
  v434 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v433, v187.f32[0]), v379, *v187.f32, 1), v315, v187, 2), v303, v187, 3);
  sub_10001358C(v577, 1.5708, xmmword_1000EC920);
  v188 = sub_100013568(v577);
  v681 = 1;
  *(v3 + 2752) = 0x3F70A3D740200000;
  *(v3 + 2760) = 1045220557;
  *(v3 + 2764) = 1;
  *(v3 + 2765) = v686;
  *(v3 + 2767) = v687;
  *(v3 + 2768) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v405, v188.n128_f32[0]), v355, v188.n128_u64[0], 1), v335, v188, 2), v434, v188, 3);
  *(v3 + 2784) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v405, v189.f32[0]), v355, *v189.f32, 1), v335, v189, 2), v434, v189, 3);
  *(v3 + 2800) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v405, v190.f32[0]), v355, *v190.f32, 1), v335, v190, 2), v434, v190, 3);
  *(v3 + 2816) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v405, v191.f32[0]), v355, *v191.f32, 1), v335, v191, 2), v434, v191, 3);
  *(v3 + 2832) = xmmword_1000F0280;
  *(v3 + 2848) = 0;
  v192 = v684;
  *(v3 + 2851) = v685;
  *(v3 + 2849) = v192;
  *(v3 + 2852) = 1078774989;
  *(v3 + 2856) = 9;
  *(v3 + 2857) = v682;
  *(v3 + 2859) = v683;
  *(v3 + 2860) = 1065353216;
  *(v3 + 2864) = 0;
  *(v3 + 2872) = 0u;
  *(v3 + 2888) = v681;
  *(v3 + 2889) = 1;
  *(v3 + 2891) = 0;
  *(v3 + 2896) = 0u;
  *(v3 + 2912) = sub_100052184;
  *(v3 + 2920) = 0;
  *(v3 + 2928) = 0x3F80000000000000;
  *(v3 + 2944) = xmmword_1000EF5A0;
  *(v3 + 2960) = 5;
  v193 = vmulq_f32(xmmword_10013DCA0, 0);
  v406 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v356 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v193), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v336 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v193, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v304 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3FD1EB85u)), vdupq_n_s32(0xC00EB852), *algn_10013DCB0), vdupq_n_s32(0x40047AE1u), xmmword_10013DCC0));
  sub_10001358C(v578, -0.017453, xmmword_1000EC910);
  v194 = sub_100013568(v578);
  v435 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v406, v194.n128_f32[0]), v356, v194.n128_u64[0], 1), v336, v194, 2), v304, v194, 3);
  v380 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v406, v195.f32[0]), v356, *v195.f32, 1), v336, v195, 2), v304, v195, 3);
  v316 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v406, v196.f32[0]), v356, *v196.f32, 1), v336, v196, 2), v304, v196, 3);
  v305 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v406, v197.f32[0]), v356, *v197.f32, 1), v336, v197, 2), v304, v197, 3);
  sub_10001358C(v579, 0.24435, xmmword_1000EC8E0);
  v198 = sub_100013568(v579);
  v357 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v435, v199.f32[0]), v380, *v199.f32, 1), v316, v199, 2), v305, v199, 3);
  v337 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v435, v200.f32[0]), v380, *v200.f32, 1), v316, v200, 2), v305, v200, 3);
  v407 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v435, v198.n128_f32[0]), v380, v198.n128_u64[0], 1), v316, v198, 2), v305, v198, 3);
  v436 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v435, v201.f32[0]), v380, *v201.f32, 1), v316, v201, 2), v305, v201, 3);
  sub_10001358C(v580, -0.087266, xmmword_1000EC920);
  v202 = sub_100013568(v580);
  v688 = 1;
  *(v3 + 2976) = 0x4053D70A400CCCCDLL;
  *(v3 + 2984) = 1053609165;
  *(v3 + 2988) = 1;
  *(v3 + 2989) = v693;
  *(v3 + 2991) = v694;
  *(v3 + 2992) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v407, v202.n128_f32[0]), v357, v202.n128_u64[0], 1), v337, v202, 2), v436, v202, 3);
  *(v3 + 3008) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v407, v203.f32[0]), v357, *v203.f32, 1), v337, v203, 2), v436, v203, 3);
  *(v3 + 3024) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v407, v204.f32[0]), v357, *v204.f32, 1), v337, v204, 2), v436, v204, 3);
  *(v3 + 3040) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v407, v205.f32[0]), v357, *v205.f32, 1), v337, v205, 2), v436, v205, 3);
  *(v3 + 3056) = xmmword_1000F0290;
  *(v3 + 3072) = 0;
  v206 = v691;
  *(v3 + 3075) = v692;
  *(v3 + 3073) = v206;
  *(v3 + 3076) = 1080033280;
  *(v3 + 3080) = 13;
  *(v3 + 3081) = v689;
  *(v3 + 3083) = v690;
  *(v3 + 3084) = 1065353216;
  *(v3 + 3088) = 0;
  *(v3 + 3096) = 0u;
  *(v3 + 3112) = v688;
  *(v3 + 3113) = 3;
  *(v3 + 3115) = 1;
  *(v3 + 3120) = 0u;
  *(v3 + 3136) = sub_1000521B4;
  *(v3 + 3144) = 0;
  *(v3 + 3152) = 0x3F80000000000000;
  *(v3 + 3168) = xmmword_1000EF5C0;
  *(v3 + 3184) = 5;
  v207 = vmulq_f32(xmmword_10013DCA0, 0);
  v437 = vdupq_n_s32(0xBFEF5C29);
  v381 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v338 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v207), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v317 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v207, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v296 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, v437), vdupq_n_s32(0x4068F5C2u), *algn_10013DCB0), vdupq_n_s32(0x401AE147u), xmmword_10013DCC0));
  sub_10001358C(v581, -0.92502, xmmword_1000EC910);
  v208 = sub_100013568(v581);
  v408 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v381, v208.n128_f32[0]), v338, v208.n128_u64[0], 1), v317, v208, 2), v296, v208, 3);
  v358 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v381, v209.f32[0]), v338, *v209.f32, 1), v317, v209, 2), v296, v209, 3);
  v306 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v381, v210.f32[0]), v338, *v210.f32, 1), v317, v210, 2), v296, v210, 3);
  v297 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v381, v211.f32[0]), v338, *v211.f32, 1), v317, v211, 2), v296, v211, 3);
  sub_10001358C(v582, -0.71558, xmmword_1000EC8E0);
  v212 = sub_100013568(v582);
  v339 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v408, v213.f32[0]), v358, *v213.f32, 1), v306, v213, 2), v297, v213, 3);
  v318 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v408, v214.f32[0]), v358, *v214.f32, 1), v306, v214, 2), v297, v214, 3);
  v382 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v408, v212.n128_f32[0]), v358, v212.n128_u64[0], 1), v306, v212, 2), v297, v212, 3);
  v409 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v408, v215.f32[0]), v358, *v215.f32, 1), v306, v215, 2), v297, v215, 3);
  sub_10001358C(v583, 0.19199, xmmword_1000EC920);
  v216 = sub_100013568(v583);
  v695 = 1;
  *(v3 + 3200) = 0x3E570A3D40333333;
  *(v3 + 3208) = 1036831949;
  *(v3 + 3212) = 1;
  *(v3 + 3213) = v700;
  *(v3 + 3215) = v701;
  *(v3 + 3216) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v382, v216.n128_f32[0]), v339, v216.n128_u64[0], 1), v318, v216, 2), v409, v216, 3);
  *(v3 + 3232) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v382, v217.f32[0]), v339, *v217.f32, 1), v318, v217, 2), v409, v217, 3);
  *(v3 + 3248) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v382, v218.f32[0]), v339, *v218.f32, 1), v318, v218, 2), v409, v218, 3);
  *(v3 + 3264) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v382, v219.f32[0]), v339, *v219.f32, 1), v318, v219, 2), v409, v219, 3);
  *(v3 + 3280) = xmmword_1000F02A0;
  *(v3 + 3296) = 1;
  v220 = v698;
  *(v3 + 3299) = v699;
  *(v3 + 3297) = v220;
  *(v3 + 3300) = 1074580685;
  *(v3 + 3304) = 13;
  *(v3 + 3305) = v696;
  *(v3 + 3307) = v697;
  *(v3 + 3308) = 1065353216;
  *(v3 + 3312) = 0;
  *(v3 + 3320) = 0u;
  *(v3 + 3336) = v695;
  *(v3 + 3337) = 3;
  *(v3 + 3339) = 1;
  *(v3 + 3344) = 0u;
  *(v3 + 3360) = sub_100052254;
  *(v3 + 3368) = 0;
  *(v3 + 3376) = 0x3F80000000000000;
  *(v3 + 3392) = xmmword_1000EF5D0;
  *(v3 + 3408) = 5;
  v221 = vmulq_f32(xmmword_10013DCA0, 0);
  v222 = vmulq_f32(xmmword_10013DCA0, v437);
  v438 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v383 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v221), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v359 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v221, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v319 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(v222, vdupq_n_s32(0x405D70A4u), *algn_10013DCB0), vdupq_n_s32(0x402F5C29u), xmmword_10013DCC0));
  sub_10001358C(v584, -0.89012, xmmword_1000EC910);
  v223 = sub_100013568(v584);
  v515 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v438, v223.n128_f32[0]), v383, v223.n128_u64[0], 1), v359, v223, 2), v319, v223, 3);
  v410 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v438, v224.f32[0]), v383, *v224.f32, 1), v359, v224, 2), v319, v224, 3);
  v340 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v438, v225.f32[0]), v383, *v225.f32, 1), v359, v225, 2), v319, v225, 3);
  v320 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v438, v226.f32[0]), v383, *v226.f32, 1), v359, v226, 2), v319, v226, 3);
  sub_10001358C(v585, -0.87266, xmmword_1000EC8E0);
  v227 = sub_100013568(v585);
  v439 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v515, v227.n128_f32[0]), v410, v227.n128_u64[0], 1), v340, v227, 2), v320, v227, 3);
  v384 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v515, v228.f32[0]), v410, *v228.f32, 1), v340, v228, 2), v320, v228, 3);
  v360 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v515, v229.f32[0]), v410, *v229.f32, 1), v340, v229, 2), v320, v229, 3);
  v516 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v515, v230.f32[0]), v410, *v230.f32, 1), v340, v230, 2), v320, v230, 3);
  sub_10001358C(v586, 0.087266, xmmword_1000EC920);
  v231 = sub_100013568(v586);
  v702 = 1;
  *(v3 + 3424) = 0x3E570A3D40333333;
  *(v3 + 3432) = 1022202216;
  *(v3 + 3436) = 1;
  *(v3 + 3437) = v707;
  *(v3 + 3439) = v708;
  *(v3 + 3440) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v439, v231.n128_f32[0]), v384, v231.n128_u64[0], 1), v360, v231, 2), v516, v231, 3);
  *(v3 + 3456) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v439, v232.f32[0]), v384, *v232.f32, 1), v360, v232, 2), v516, v232, 3);
  *(v3 + 3472) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v439, v233.f32[0]), v384, *v233.f32, 1), v360, v233, 2), v516, v233, 3);
  *(v3 + 3488) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v439, v234.f32[0]), v384, *v234.f32, 1), v360, v234, 2), v516, v234, 3);
  *(v3 + 3504) = xmmword_1000F01B0;
  *(v3 + 3520) = 1;
  v235 = v705;
  *(v3 + 3523) = v706;
  *(v3 + 3521) = v235;
  *(v3 + 3524) = 1063675494;
  *(v3 + 3528) = 13;
  *(v3 + 3529) = v703;
  *(v3 + 3531) = v704;
  *(v3 + 3532) = 1065353216;
  *(v3 + 3536) = 0;
  *(v3 + 3544) = 0u;
  *(v3 + 3560) = v702;
  *(v3 + 3561) = 3;
  *(v3 + 3563) = 1;
  *(v3 + 3568) = 0u;
  *(v3 + 3584) = sub_10005231C;
  *(v3 + 3592) = 0;
  *(v3 + 3600) = 0x3F80000000000000;
  *(v3 + 3616) = xmmword_1000EF7D0;
  *(v3 + 3632) = 5;
  v236 = vmulq_f32(xmmword_10013DCA0, 0);
  v485 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v440 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v236), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v411 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v236, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v361 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC0499999)), vdupq_n_s32(0x404E147Bu), *algn_10013DCB0), vdupq_n_s32(0x4040A3D7u), xmmword_10013DCC0));
  sub_10001358C(v587, -1.2217, xmmword_1000EC910);
  v237 = sub_100013568(v587);
  v517 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v485, v237.n128_f32[0]), v440, v237.n128_u64[0], 1), v411, v237, 2), v361, v237, 3);
  v460 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v485, v238.f32[0]), v440, *v238.f32, 1), v411, v238, 2), v361, v238, 3);
  v385 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v485, v239.f32[0]), v440, *v239.f32, 1), v411, v239, 2), v361, v239, 3);
  v362 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v485, v240.f32[0]), v440, *v240.f32, 1), v411, v240, 2), v361, v240, 3);
  sub_10001358C(v588, -0.69813, xmmword_1000EC8E0);
  v241 = sub_100013568(v588);
  v486 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v517, v241.n128_f32[0]), v460, v241.n128_u64[0], 1), v385, v241, 2), v362, v241, 3);
  v441 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v517, v242.f32[0]), v460, *v242.f32, 1), v385, v242, 2), v362, v242, 3);
  v412 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v517, v243.f32[0]), v460, *v243.f32, 1), v385, v243, 2), v362, v243, 3);
  v518 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v517, v244.f32[0]), v460, *v244.f32, 1), v385, v244, 2), v362, v244, 3);
  sub_10001358C(v589, -0.20944, xmmword_1000EC920);
  v245 = sub_100013568(v589);
  v709 = 1;
  *(v3 + 3648) = 0x3E851EB83FD9999ALL;
  *(v3 + 3656) = 1024148374;
  *(v3 + 3660) = 1;
  *(v3 + 3661) = v714;
  *(v3 + 3663) = v715;
  *(v3 + 3664) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v486, v245.n128_f32[0]), v441, v245.n128_u64[0], 1), v412, v245, 2), v518, v245, 3);
  *(v3 + 3680) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v486, v246.f32[0]), v441, *v246.f32, 1), v412, v246, 2), v518, v246, 3);
  *(v3 + 3696) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v486, v247.f32[0]), v441, *v247.f32, 1), v412, v247, 2), v518, v247, 3);
  *(v3 + 3712) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v486, v248.f32[0]), v441, *v248.f32, 1), v412, v248, 2), v518, v248, 3);
  *(v3 + 3728) = xmmword_1000F02B0;
  *(v3 + 3744) = 1;
  v249 = v712;
  *(v3 + 3747) = v713;
  *(v3 + 3745) = v249;
  *(v3 + 3748) = 1074580685;
  *(v3 + 3752) = 13;
  *(v3 + 3753) = v710;
  *(v3 + 3755) = v711;
  *(v3 + 3756) = 1065353216;
  *(v3 + 3760) = 0;
  *(v3 + 3768) = 0u;
  *(v3 + 3784) = v709;
  *(v3 + 3785) = 3;
  *(v3 + 3787) = 1;
  *(v3 + 3792) = 0u;
  *(v3 + 3808) = sub_1000523D4;
  *(v3 + 3816) = 0;
  *(v3 + 3824) = 0x3F80000000000000;
  *(v3 + 3840) = xmmword_1000EF5A0;
  *(v3 + 3856) = 6;
  v250 = vmulq_f32(xmmword_10013DCA0, 0);
  v487 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v461 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v250), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v413 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v250, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v524 = vdupq_n_s32(0xBF8E147B);
  v386 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBED70A3D)), v470, *algn_10013DCB0), v524, xmmword_10013DCC0));
  sub_10001358C(v590, 1.5708, xmmword_1000EC910);
  v251 = sub_100013568(v590);
  v519 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v487, v251.n128_f32[0]), v461, v251.n128_u64[0], 1), v413, v251, 2), v386, v251, 3);
  v471 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v487, v252.f32[0]), v461, *v252.f32, 1), v413, v252, 2), v386, v252, 3);
  v442 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v487, v253.f32[0]), v461, *v253.f32, 1), v413, v253, 2), v386, v253, 3);
  v387 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v487, v254.f32[0]), v461, *v254.f32, 1), v413, v254, 2), v386, v254, 3);
  sub_10001358C(v591, -2.8798, xmmword_1000EC8E0);
  v255 = sub_100013568(v591);
  v488 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v519, v255.n128_f32[0]), v471, v255.n128_u64[0], 1), v442, v255, 2), v387, v255, 3);
  v462 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v519, v256.f32[0]), v471, *v256.f32, 1), v442, v256, 2), v387, v256, 3);
  v414 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v519, v257.f32[0]), v471, *v257.f32, 1), v442, v257, 2), v387, v257, 3);
  v520 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v519, v258.f32[0]), v471, *v258.f32, 1), v442, v258, 2), v387, v258, 3);
  sub_10001358C(v592, 1.5708, xmmword_1000EC920);
  v259 = sub_100013568(v592);
  v716 = 1;
  *(v3 + 3872) = 0x3F99999A3E8A3D71;
  *(v3 + 3880) = 1056964608;
  *(v3 + 3884) = 1;
  *(v3 + 3885) = v721;
  *(v3 + 3887) = v722;
  *(v3 + 3888) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v488, v259.n128_f32[0]), v462, v259.n128_u64[0], 1), v414, v259, 2), v520, v259, 3);
  *(v3 + 3904) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v488, v260.f32[0]), v462, *v260.f32, 1), v414, v260, 2), v520, v260, 3);
  *(v3 + 3920) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v488, v261.f32[0]), v462, *v261.f32, 1), v414, v261, 2), v520, v261, 3);
  *(v3 + 3936) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v488, v262.f32[0]), v462, *v262.f32, 1), v414, v262, 2), v520, v262, 3);
  *(v3 + 3952) = xmmword_1000F02C0;
  *(v3 + 3968) = 0;
  v263 = v719;
  *(v3 + 3971) = v720;
  *(v3 + 3969) = v263;
  *(v3 + 3972) = 1060487823;
  *(v3 + 3976) = 13;
  *(v3 + 3977) = v717;
  *(v3 + 3979) = v718;
  *(v3 + 3980) = 1065353216;
  *(v3 + 3984) = 0;
  *(v3 + 3992) = 0u;
  *(v3 + 4008) = v716;
  *(v3 + 4009) = 2;
  *(v3 + 4011) = 1;
  *(v3 + 4016) = 0u;
  *(v3 + 4032) = _MTLPackedFloat3.init(_:_:_:);
  *(v3 + 4040) = 0;
  *(v3 + 4048) = 0x3F80000000000000;
  *(v3 + 4064) = xmmword_1000EF5C0;
  *(v3 + 4080) = 6;
  v264 = vmulq_f32(xmmword_10013DCA0, 0);
  v265 = vmulq_f32(xmmword_10013DCA0, v480);
  v533 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v481 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v264), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v472 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v264, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v463 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(v265, vdupq_n_s32(0xBF2E147B), *algn_10013DCB0), v524, xmmword_10013DCC0));
  sub_10001358C(v593, 1.5708, xmmword_1000EC910);
  v266 = sub_100013568(v593);
  v521 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v533, v267.f32[0]), v481, *v267.f32, 1), v472, v267, 2), v463, v267, 3);
  v525 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v533, v266.n128_f32[0]), v481, v266.n128_u64[0], 1), v472, v266, 2), v463, v266, 3);
  v489 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v533, v268.f32[0]), v481, *v268.f32, 1), v472, v268, 2), v463, v268, 3);
  v482 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v533, v269.f32[0]), v481, *v269.f32, 1), v472, v269, 2), v463, v269, 3);
  sub_10001358C(v594, -2.3562, xmmword_1000EC8E0);
  v270 = sub_100013568(v594);
  v537 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v525, v271.f32[0]), v521, *v271.f32, 1), v489, v271, 2), v482, v271, 3);
  v538 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v525, v270.n128_f32[0]), v521, v270.n128_u64[0], 1), v489, v270, 2), v482, v270, 3);
  v534 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v525, v272.f32[0]), v521, *v272.f32, 1), v489, v272, 2), v482, v272, 3);
  v526 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v525, v273.f32[0]), v521, *v273.f32, 1), v489, v273, 2), v482, v273, 3);
  sub_10001358C(v595, 1.5708, xmmword_1000EC920);
  v274 = sub_100013568(v595);
  v723 = 1;
  *(v3 + 4096) = 0x3F99999A3FD9999ALL;
  *(v3 + 4104) = 1056964608;
  *(v3 + 4108) = 1;
  *(v3 + 4109) = v728;
  *(v3 + 4111) = v729;
  *(v3 + 4112) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v538, v274.n128_f32[0]), v537, v274.n128_u64[0], 1), v534, v274, 2), v526, v274, 3);
  *(v3 + 4128) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v538, v275.f32[0]), v537, *v275.f32, 1), v534, v275, 2), v526, v275, 3);
  *(v3 + 4144) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v538, v276.f32[0]), v537, *v276.f32, 1), v534, v276, 2), v526, v276, 3);
  *(v3 + 4160) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v538, v277.f32[0]), v537, *v277.f32, 1), v534, v277, 2), v526, v277, 3);
  *(v3 + 4176) = xmmword_1000F02D0;
  *(v3 + 4192) = 0;
  v278 = v726;
  *(v3 + 4195) = v727;
  *(v3 + 4193) = v278;
  *(v3 + 4196) = 1051595899;
  *(v3 + 4200) = 9;
  *(v3 + 4201) = v724;
  *(v3 + 4203) = v725;
  *(v3 + 4216) = 0u;
  *(v3 + 4204) = 1065353216;
  *(v3 + 4208) = 0;
  *(v3 + 4232) = v723;
  *(v3 + 4233) = 2;
  *(v3 + 4235) = 1;
  *(v3 + 4240) = 0u;
  *(v3 + 4256) = sub_10005248C;
  *(v3 + 4264) = 0;
  *(v3 + 4272) = 0x3F80000000000000;
  v279 = sub_1000A0774(v3);
  swift_setDeallocating();
  sub_1000125FC(&qword_100131018, &qword_1000F1D70);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1000125FC(&qword_100131020, &qword_1000F1D78);
  v280 = swift_allocObject();
  v280[1] = xmmword_1000EDAA0;
  v280[2] = xmmword_1000F02E0;
  v280[3] = xmmword_1000F02F0;
  v280[4] = xmmword_1000F0300;
  v280[5] = xmmword_1000F0310;
  v281 = swift_allocObject();
  v281[1] = xmmword_1000EC880;
  v281[2] = xmmword_1000F0320;
  v281[3] = xmmword_1000F0330;
  v282 = swift_allocObject();
  v282[1] = xmmword_1000EC880;
  v282[2] = xmmword_1000F0340;
  v282[3] = xmmword_1000F0350;
  v283 = qword_10013AC20;
  v284 = unk_10013AC28;
  v285 = qword_10013AC30;

  v286 = qword_10013AC50;
  v287 = sub_1000A0A98(_swiftEmptyArrayStorage);
  v730.i64[0] = v283;
  v730.i64[1] = v284;
  v731.i64[0] = v285;
  v731.i64[1] = v287;
  v732.i64[0] = _swiftEmptyArrayStorage;
  v732.i64[1] = _swiftEmptyArrayStorage;
  v733 = v286;
  v595[3] = v730;
  v595[4] = v731;
  v595[5] = v732;
  v596 = v286;
  sub_1000125FC(&qword_100131050, &qword_1000F1E48);
  v288 = swift_allocObject();
  *(v288 + 16) = xmmword_1000EC870;
  *(v288 + 32) = swift_getKeyPath();
  *(v288 + 40) = 1053609165;
  v289 = sub_1000A092C(_swiftEmptyArrayStorage);
  v290 = sub_1000A0A98(_swiftEmptyArrayStorage);
  sub_1000BA704(v289, v290, _swiftEmptyArrayStorage, v288, v734);

  sub_100081544(&v730);
  swift_bridgeObjectRetain_n();
  v292 = sub_1000C1928(v291, v279);

  sub_1000C53DC(v292, v738);
  v294 = sub_1000C199C(v293, v279);

  sub_1000C53DC(v294, v736);
  xmmword_10013B6B0 = v500;
  unk_10013B6C0 = v499;
  qword_10013B6D0 = v498;
  dword_10013B6D8 = v0;
  xmmword_10013B6E0 = v497;
  unk_10013B6F0 = v496;
  qword_10013B700 = v1;
  dword_10013B708 = v2;
  xmmword_10013B710 = v495;
  qword_10013B720 = v494;
  xmmword_10013B730 = v493;
  qword_10013B740 = v492;
  unk_10013B748 = v491;
  dword_10013B750 = v490;
  qword_10013B758 = 0;
  unk_10013B760 = v279;
  qword_10013B788 = v739;
  unk_10013B778 = v738[1];
  unk_10013B768 = v738[0];
  xmmword_10013B790 = v736[0];
  unk_10013B7A0 = v736[1];
  qword_10013B7B0 = v737;
  qword_10013B7B8 = sub_1000525DC;
  qword_10013B7C0 = 0;
  xmmword_10013B7D0 = xmmword_1000F0360;
  unk_10013B7E0 = xmmword_1000F0370;
  qword_10013B7F0 = v280;
  word_10013B7FC = 2;
  dword_10013B7F8 = -1116064292;
  xmmword_10013B800 = xmmword_1000F0380;
  qword_10013B810 = v281;
  xmmword_10013B818 = xmmword_1000F0390;
  xmmword_10013B828 = xmmword_1000F03A0;
  qword_10013B838 = 1064103149;
  unk_10013B840 = v282;
  xmmword_10013B848 = xmmword_1000F03B0;
  xmmword_10013B858 = xmmword_1000F03C0;
  qword_10013B868 = 1056372471;
  result = 0.0000000631108174;
  qword_10013B8B0 = v735;
  xmmword_10013B890 = v734[1];
  unk_10013B8A0 = v734[2];
  xmmword_10013B870 = xmmword_1000F03D0;
  unk_10013B880 = v734[0];
  return result;
}

float sub_100051D58(uint64_t a1, float a2)
{
  *(a1 + 100) = ((*(a1 + 100) + -6.2) * a2) + 6.2;
  result = ((*(a1 + 108) + -0.1) * a2) + 0.1;
  *(a1 + 108) = result;
  return result;
}

float sub_100051DB4(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -0.52) * a2) + 0.52;
  *(a1 + 100) = result;
  return result;
}

float sub_100051DE4(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -0.99) * a2) + 0.99;
  *(a1 + 100) = result;
  return result;
}

float sub_100051E14(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -4.2) * a2) + 4.2;
  *(a1 + 100) = result;
  return result;
}

void sub_100051E44(float *result, float a2)
{
  if (*(result + 12) == 1)
  {
    v17 = v5;
    v18 = v4;
    v19 = v2;
    v20 = v3;
    v7 = ((result[2] + -0.086) * a2) + 0.086;
    *result = COERCE_UNSIGNED_INT(((*result + -1.8) * a2) + 1.8) | (COERCE_UNSIGNED_INT(((result[1] + -3.7) * a2) + 3.7) << 32);
    result[2] = v7;
    result[25] = ((result[25] + -0.2) * a2) + 0.2;
    sub_1000BA464(*(result + 10), *(result + 11), *(result + 96), 1169915904, 0, 1, a2);
    *(result + 10) = v9;
    *(result + 11) = v10;
    *(result + 96) = v11;
    v15 = xmmword_1000F03E0;
    v16 = 0x3F2E147B3F800000;
    sub_1000BAC84(*(result + 14), *(result + 15), *(result + 16), *(result + 136), &v13, a2);
    v12 = v14;
    *(result + 7) = v13;
    *(result + 16) = v12;
    *(result + 136) = 0;
  }

  else
  {
    __break(1u);
  }
}

float sub_100051FAC(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -0.6) * a2) + 0.6;
  *(a1 + 100) = result;
  return result;
}

float sub_100051FDC(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -0.26) * a2) + 0.26;
  *(a1 + 100) = result;
  return result;
}

float sub_10005200C(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -0.062) * a2) + 0.062;
  *(a1 + 100) = result;
  return result;
}

void sub_10005203C(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v3 = ((*(result + 8) + -0.29) * a2) + 0.29;
    *result = COERCE_UNSIGNED_INT(((*result + -2.7) * a2) + 2.7) | (COERCE_UNSIGNED_INT(((*(result + 4) + -4.8) * a2) + 4.8) << 32);
    *(result + 8) = v3;
    *(result + 100) = ((*(result + 100) + -0.19) * a2) + 0.19;
    sub_1000BA464(*(result + 80), *(result + 88), *(result + 96), 0x3EAAAAAB3EC0C0C1, 1049003655, 0, a2);
    *(result + 80) = v4;
    *(result + 88) = v5;
    *(result + 96) = v6;
  }

  else
  {
    __break(1u);
  }
}

float sub_100052154(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -0.92) * a2) + 0.92;
  *(a1 + 100) = result;
  return result;
}

float sub_100052184(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -0.93) * a2) + 0.93;
  *(a1 + 100) = result;
  return result;
}

uint64_t sub_1000521B4(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.35) * a2) + 0.35;
    *result = COERCE_UNSIGNED_INT(((*result + -5.0) * a2) + 5.0) | (COERCE_UNSIGNED_INT(((*(result + 4) + -5.0) * a2) + 5.0) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -0.87) * a2) + 0.87;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100052254(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.19) * a2) + 0.19;
    *result = COERCE_UNSIGNED_INT(((*result + -3.2) * a2) + 3.2) | (COERCE_UNSIGNED_INT(((*(result + 4) + -0.55) * a2) + 0.55) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -1.3) * a2) + 1.3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10005231C(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.5) * a2) + 0.5;
    *result = COERCE_UNSIGNED_INT(((*result + -2.8) * a2) + 2.8) | (COERCE_UNSIGNED_INT(((*(result + 4) + -0.21) * a2) + 0.21) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -0.36) * a2) + 0.36;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000523D4(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.5) * a2) + 0.5;
    *result = COERCE_UNSIGNED_INT(((*result + -1.7) * a2) + 1.7) | (COERCE_UNSIGNED_INT(((*(result + 4) + -0.39) * a2) + 0.39) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -0.8) * a2) + 0.8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

int64x2_t *sub_10005248C(int64x2_t *result, float a2)
{
  v2 = result[5];
  v3 = result[6].u8[0];
  v4.i32[0] = v2.i32[0];
  if (result[6].i8[0])
  {
    if (v3 == 1)
    {
      v5 = vadd_f32(vmul_n_f32(0x3EEEEEEE3F5BDBDCLL, a2), 0x3F0888893E109091);
      v6.i32[0] = vdup_lane_s32(0x3F0888893DE8E8E8, 0).u32[0];
      v6.f32[1] = v4.f32[0] + -6500.0;
      v7 = vmul_n_f32(v6, a2);
    }

    else
    {
      v10 = vshrn_n_s64(v2, 0x20uLL);
      v4.i32[1] = result[5].i64[1];
      v5 = vadd_f32(vmul_n_f32(vadd_f32(v4, 0xBF088889BE109091), a2), 0x3F0888893E109091);
      v7 = vmul_n_f32(vadd_f32(v10, 0xC5CB2000BF62E2E3), a2);
    }

    v11.i64[0] = v5.u32[0];
    v11.i64[1] = v5.u32[1];
    v9 = vorrq_s8(vshll_n_s32(vadd_f32(v7, 0x45CB20003F62E2E3), 0x20uLL), v11);
    LOBYTE(v3) = 2;
  }

  else
  {
    *&v8 = ((*&v2.i32[2] + -0.53333) * a2) + 0.53333;
    v9.i64[0] = COERCE_UNSIGNED_INT(((v4.f32[0] + -0.14118) * a2) + 0.14118) | (COERCE_UNSIGNED_INT(((COERCE_FLOAT(HIDWORD(result[5].i64[0])) + -0.88627) * a2) + 0.88627) << 32);
    v9.i64[1] = v8;
  }

  result[5] = v9;
  result[6].i8[0] = v3;
  return result;
}

float32x2_t sub_1000525DC(float a1)
{
  v1 = a1;
  if (a1 < 0.0)
  {
    a1 = 0.0;
  }

  v2 = a1 * 3.1416;
  if (v1 >= 1.0)
  {
    v2 = 3.1416;
  }

  return vmul_n_f32(vadd_f32(vmul_n_f32(0x3E99999A3EF0A3D8, fminf(v1 / 0.875, 1.0)), 0x3F3333333F07AE14), ((0.5 - (cosf(v2) * 0.5)) * 0.467) + 0.033);
}

double sub_100052698()
{
  if (qword_10012F578 != -1)
  {
    swift_once();
  }

  v382 = unk_10013AA60;
  v383 = xmmword_10013AA50;
  v381 = qword_10013AA70;
  v0 = dword_10013AA78;
  v379 = unk_10013AA90;
  v380 = xmmword_10013AA80;
  v1 = qword_10013AAA0;
  v2 = dword_10013AAA8;
  v3 = qword_10013AAC0;
  v377 = xmmword_10013AAD0;
  v378 = xmmword_10013AAB0;
  v375 = unk_10013AAE8;
  v376 = qword_10013AAE0;
  v374 = dword_10013AAF0;
  sub_1000125FC(&qword_100131010, &qword_1000F1D68);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000EF590;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 9;
  if (qword_10012F6E8 != -1)
  {
    swift_once();
  }

  v5 = vmulq_f32(xmmword_10013DCA0, 0);
  v429 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v423 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v5), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v408 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v5, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v353 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBFA7AE14)), vdupq_n_s32(0x3FB5C28Fu), *algn_10013DCB0), vdupq_n_s32(0x3E9EB852u), xmmword_10013DCC0));
  sub_10001358C(v432, 1.7104, xmmword_1000EC910);
  v6 = sub_100013568(v432);
  v428 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v429, v6.n128_f32[0]), v423, v6.n128_u64[0], 1), v408, v6, 2), v353, v6, 3);
  v417 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v429, v7.f32[0]), v423, *v7.f32, 1), v408, v7, 2), v353, v7, 3);
  v384 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v429, v8.f32[0]), v423, *v8.f32, 1), v408, v8, 2), v353, v8, 3);
  v330 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v429, v9.f32[0]), v423, *v9.f32, 1), v408, v9, 2), v353, v9, 3);
  sub_10001358C(v433, -2.3911, xmmword_1000EC8E0);
  v10 = sub_100013568(v433);
  v11 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v428, v10.n128_f32[0]), v417, v10.n128_u64[0], 1), v384, v10, 2), v330, v10, 3);
  v409 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v428, v12.f32[0]), v417, *v12.f32, 1), v384, v12, 2), v330, v12, 3);
  v354 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v428, v13.f32[0]), v417, *v13.f32, 1), v384, v13, 2), v330, v13, 3);
  v418 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v428, v14.f32[0]), v417, *v14.f32, 1), v384, v14, 2), v330, v14, 3);
  v424 = v11;
  sub_10001358C(v434, -0.069813, xmmword_1000EC920);
  v15 = sub_100013568(v434);
  v477 = 0;
  *(v4 + 64) = 0x4079999A3F35C28FLL;
  *(v4 + 72) = 1040522936;
  *(v4 + 76) = 1;
  *(v4 + 77) = v482;
  *(v4 + 79) = v483;
  *(v4 + 80) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v424, v15.n128_f32[0]), v409, v15.n128_u64[0], 1), v354, v15, 2), v418, v15, 3);
  *(v4 + 96) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v424, v16.f32[0]), v409, *v16.f32, 1), v354, v16, 2), v418, v16, 3);
  *(v4 + 112) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v424, v17.f32[0]), v409, *v17.f32, 1), v354, v17, 2), v418, v17, 3);
  *(v4 + 128) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v424, v18.f32[0]), v409, *v18.f32, 1), v354, v18, 2), v418, v18, 3);
  *(v4 + 144) = xmmword_1000EC900;
  *(v4 + 160) = 0;
  v19 = v480;
  *(v4 + 163) = v481;
  *(v4 + 161) = v19;
  *(v4 + 164) = 1097859072;
  *(v4 + 168) = 0;
  *(v4 + 169) = v478;
  *(v4 + 171) = v479;
  *(v4 + 172) = 1045220557;
  *(v4 + 176) = xmmword_1000F03F0;
  *(v4 + 192) = 0x3F8000003F800000;
  *(v4 + 200) = v477;
  *(v4 + 201) = 0;
  *(v4 + 203) = 1;
  *(v4 + 208) = 0u;
  *(v4 + 224) = sub_100055388;
  *(v4 + 232) = 0;
  *(v4 + 240) = 0x3F80000000000000;
  *(v4 + 256) = xmmword_1000EF5A0;
  *(v4 + 272) = 0;
  v20 = vmulq_f32(xmmword_10013DCA0, 0);
  v385 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v331 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v20), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v308 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v20, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v264 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC0028F5C)), vdupq_n_s32(0x3F333333u), *algn_10013DCB0), vdupq_n_s32(0x3F23D70Au), xmmword_10013DCC0));
  sub_10001358C(v435, 1.7104, xmmword_1000EC910);
  v21 = sub_100013568(v435);
  v410 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v385, v21.n128_f32[0]), v331, v21.n128_u64[0], 1), v308, v21, 2), v264, v21, 3);
  v355 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v385, v22.f32[0]), v331, *v22.f32, 1), v308, v22, 2), v264, v22, 3);
  v285 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v385, v23.f32[0]), v331, *v23.f32, 1), v308, v23, 2), v264, v23, 3);
  v265 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v385, v24.f32[0]), v331, *v24.f32, 1), v308, v24, 2), v264, v24, 3);
  sub_10001358C(v436, -2.3911, xmmword_1000EC8E0);
  v25 = sub_100013568(v436);
  v332 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v410, v26.f32[0]), v355, *v26.f32, 1), v285, v26, 2), v265, v26, 3);
  v309 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v410, v27.f32[0]), v355, *v27.f32, 1), v285, v27, 2), v265, v27, 3);
  v386 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v410, v25.n128_f32[0]), v355, v25.n128_u64[0], 1), v285, v25, 2), v265, v25, 3);
  v411 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v410, v28.f32[0]), v355, *v28.f32, 1), v285, v28, 2), v265, v28, 3);
  sub_10001358C(v437, -0.069813, xmmword_1000EC920);
  v29 = sub_100013568(v437);
  v484 = 1;
  *(v4 + 288) = 0x407333333FC00000;
  *(v4 + 296) = 1024416809;
  *(v4 + 300) = 1;
  *(v4 + 301) = v489;
  *(v4 + 303) = v490;
  *(v4 + 304) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v386, v29.n128_f32[0]), v332, v29.n128_u64[0], 1), v309, v29, 2), v411, v29, 3);
  *(v4 + 320) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v386, v30.f32[0]), v332, *v30.f32, 1), v309, v30, 2), v411, v30, 3);
  *(v4 + 336) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v386, v31.f32[0]), v332, *v31.f32, 1), v309, v31, 2), v411, v31, 3);
  *(v4 + 352) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v386, v32.f32[0]), v332, *v32.f32, 1), v309, v32, 2), v411, v32, 3);
  *(v4 + 368) = xmmword_1000EC900;
  *(v4 + 384) = 0;
  v33 = v487;
  *(v4 + 387) = v488;
  *(v4 + 385) = v33;
  *(v4 + 388) = 1098907648;
  *(v4 + 392) = 0;
  *(v4 + 393) = v485;
  *(v4 + 395) = v486;
  *(v4 + 396) = 1060320051;
  *(v4 + 416) = 0;
  *(v4 + 400) = 0u;
  *(v4 + 424) = v484;
  *(v4 + 425) = 0;
  *(v4 + 427) = 1;
  *(v4 + 432) = 0u;
  *(v4 + 448) = sub_10005546C;
  *(v4 + 456) = 0;
  *(v4 + 464) = 0x3F80000000000000;
  *(v4 + 480) = xmmword_1000EF5A0;
  *(v4 + 496) = 1;
  v34 = vmulq_f32(xmmword_10013DCA0, 0);
  v387 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v333 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v34), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v310 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v34, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v266 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBD4CCCCC)), vdupq_n_s32(0x3DF5C28Fu), *algn_10013DCB0), vdupq_n_s32(0x3F11EB85u), xmmword_10013DCC0));
  sub_10001358C(v438, 4.9218, xmmword_1000EC910);
  v35 = sub_100013568(v438);
  v412 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v387, v35.n128_f32[0]), v333, v35.n128_u64[0], 1), v310, v35, 2), v266, v35, 3);
  v356 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v387, v36.f32[0]), v333, *v36.f32, 1), v310, v36, 2), v266, v36, 3);
  v286 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v387, v37.f32[0]), v333, *v37.f32, 1), v310, v37, 2), v266, v37, 3);
  v267 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v387, v38.f32[0]), v333, *v38.f32, 1), v310, v38, 2), v266, v38, 3);
  sub_10001358C(v439, 0.83776, xmmword_1000EC8E0);
  v39 = sub_100013568(v439);
  v334 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v412, v40.f32[0]), v356, *v40.f32, 1), v286, v40, 2), v267, v40, 3);
  v311 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v412, v41.f32[0]), v356, *v41.f32, 1), v286, v41, 2), v267, v41, 3);
  v388 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v412, v39.n128_f32[0]), v356, v39.n128_u64[0], 1), v286, v39, 2), v267, v39, 3);
  v413 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v412, v42.f32[0]), v356, *v42.f32, 1), v286, v42, 2), v267, v42, 3);
  sub_10001358C(v440, -1.7279, xmmword_1000EC920);
  v43 = sub_100013568(v440);
  v491 = 1;
  *(v4 + 512) = 0x4033333340333333;
  *(v4 + 520) = 1050253722;
  *(v4 + 524) = 1;
  *(v4 + 525) = v496;
  *(v4 + 527) = v497;
  *(v4 + 528) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v388, v43.n128_f32[0]), v334, v43.n128_u64[0], 1), v311, v43, 2), v413, v43, 3);
  *(v4 + 544) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v388, v44.f32[0]), v334, *v44.f32, 1), v311, v44, 2), v413, v44, 3);
  *(v4 + 560) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v388, v45.f32[0]), v334, *v45.f32, 1), v311, v45, 2), v413, v45, 3);
  *(v4 + 576) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v388, v46.f32[0]), v334, *v46.f32, 1), v311, v46, 2), v413, v46, 3);
  *(v4 + 592) = xmmword_1000EC900;
  *(v4 + 608) = 0;
  v47 = v494;
  *(v4 + 611) = v495;
  *(v4 + 609) = v47;
  *(v4 + 612) = 0x40000000;
  *(v4 + 616) = 13;
  *(v4 + 617) = v492;
  *(v4 + 619) = v493;
  *(v4 + 620) = 1065353216;
  *(v4 + 640) = 0;
  *(v4 + 624) = 0u;
  *(v4 + 648) = v491;
  *(v4 + 649) = 0;
  *(v4 + 651) = 0;
  *(v4 + 656) = 0u;
  *(v4 + 672) = sub_10005549C;
  *(v4 + 680) = 0;
  *(v4 + 688) = 0x3E4CCCCD00000000;
  *(v4 + 704) = xmmword_1000EF5A0;
  *(v4 + 720) = 2;
  v48 = vmulq_f32(xmmword_10013DCA0, 0);
  v389 = vdupq_n_s32(0x3DCCCCCCu);
  v414 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v335 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v48), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v287 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v48, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v248 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, v389), vdupq_n_s32(0x3E947AE1u), *algn_10013DCB0), vdupq_n_s32(0xBF87AE14), xmmword_10013DCC0));
  sub_10001358C(v441, 0.0, xmmword_1000EC910);
  v49 = sub_100013568(v441);
  v357 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v414, v49.n128_f32[0]), v335, v49.n128_u64[0], 1), v287, v49, 2), v248, v49, 3);
  v312 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v414, v50.f32[0]), v335, *v50.f32, 1), v287, v50, 2), v248, v50, 3);
  v268 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v414, v51.f32[0]), v335, *v51.f32, 1), v287, v51, 2), v248, v51, 3);
  v249 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v414, v52.f32[0]), v335, *v52.f32, 1), v287, v52, 2), v248, v52, 3);
  sub_10001358C(v442, 0.0, xmmword_1000EC8E0);
  v53 = sub_100013568(v442);
  v415 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v357, v53.n128_f32[0]), v312, v53.n128_u64[0], 1), v268, v53, 2), v249, v53, 3);
  v336 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v357, v54.f32[0]), v312, *v54.f32, 1), v268, v54, 2), v249, v54, 3);
  v288 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v357, v55.f32[0]), v312, *v55.f32, 1), v268, v55, 2), v249, v55, 3);
  v358 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v357, v56.f32[0]), v312, *v56.f32, 1), v268, v56, 2), v249, v56, 3);
  sub_10001358C(v443, 0.68068, xmmword_1000EC920);
  v57 = sub_100013568(v443);
  v498 = 1;
  *(v4 + 736) = 0x3F35C28F40400000;
  *(v4 + 744) = 1056964608;
  *(v4 + 748) = 1;
  *(v4 + 749) = v503;
  *(v4 + 751) = v504;
  *(v4 + 752) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v415, v57.n128_f32[0]), v336, v57.n128_u64[0], 1), v288, v57, 2), v358, v57, 3);
  *(v4 + 768) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v415, v58.f32[0]), v336, *v58.f32, 1), v288, v58, 2), v358, v58, 3);
  *(v4 + 784) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v415, v59.f32[0]), v336, *v59.f32, 1), v288, v59, 2), v358, v59, 3);
  *(v4 + 800) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v415, v60.f32[0]), v336, *v60.f32, 1), v288, v60, 2), v358, v60, 3);
  *(v4 + 816) = xmmword_1000EC900;
  *(v4 + 832) = 0;
  v61 = v501;
  *(v4 + 835) = v502;
  *(v4 + 833) = v61;
  *(v4 + 836) = 1072902963;
  *(v4 + 840) = 10;
  *(v4 + 841) = v499;
  *(v4 + 843) = v500;
  *(v4 + 844) = 1065353216;
  *(v4 + 848) = 0;
  *(v4 + 856) = 0u;
  *(v4 + 872) = v498;
  *(v4 + 873) = 0;
  *(v4 + 875) = 1;
  *(v4 + 880) = 0u;
  *(v4 + 896) = sub_100055564;
  *(v4 + 904) = 0;
  *(v4 + 912) = 0x4000000000000000;
  *(v4 + 928) = xmmword_1000EF5C0;
  *(v4 + 944) = 9;
  v62 = vmulq_f32(xmmword_10013DCA0, 0);
  v337 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v289 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v62), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v269 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v62, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v241 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC0D1EB85)), vdupq_n_s32(0x40C147AEu), *algn_10013DCB0), vdupq_n_s32(0xC0A428F6), xmmword_10013DCC0));
  sub_10001358C(v444, 2.234, xmmword_1000EC910);
  v63 = sub_100013568(v444);
  v359 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v337, v63.n128_f32[0]), v289, v63.n128_u64[0], 1), v269, v63, 2), v241, v63, 3);
  v313 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v337, v64.f32[0]), v289, *v64.f32, 1), v269, v64, 2), v241, v64, 3);
  v250 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v337, v65.f32[0]), v289, *v65.f32, 1), v269, v65, 2), v241, v65, 3);
  v242 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v337, v66.f32[0]), v289, *v66.f32, 1), v269, v66, 2), v241, v66, 3);
  sub_10001358C(v445, -2.426, xmmword_1000EC8E0);
  v67 = sub_100013568(v445);
  v290 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v359, v68.f32[0]), v313, *v68.f32, 1), v250, v68, 2), v242, v68, 3);
  v270 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v359, v69.f32[0]), v313, *v69.f32, 1), v250, v69, 2), v242, v69, 3);
  v338 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v359, v67.n128_f32[0]), v313, v67.n128_u64[0], 1), v250, v67, 2), v242, v67, 3);
  v360 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v359, v70.f32[0]), v313, *v70.f32, 1), v250, v70, 2), v242, v70, 3);
  sub_10001358C(v446, 0.15708, xmmword_1000EC920);
  v71 = sub_100013568(v446);
  v505 = 0;
  *(v4 + 960) = 0x4059999A40A00000;
  *(v4 + 968) = 1015759766;
  *(v4 + 972) = 1;
  *(v4 + 973) = v510;
  *(v4 + 975) = v511;
  *(v4 + 976) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v338, v71.n128_f32[0]), v290, v71.n128_u64[0], 1), v270, v71, 2), v360, v71, 3);
  *(v4 + 992) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v338, v72.f32[0]), v290, *v72.f32, 1), v270, v72, 2), v360, v72, 3);
  *(v4 + 1008) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v338, v73.f32[0]), v290, *v73.f32, 1), v270, v73, 2), v360, v73, 3);
  *(v4 + 1024) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v338, v74.f32[0]), v290, *v74.f32, 1), v270, v74, 2), v360, v74, 3);
  *(v4 + 1040) = xmmword_1000EC900;
  *(v4 + 1056) = 0;
  v75 = v508;
  *(v4 + 1059) = v509;
  *(v4 + 1057) = v75;
  *(v4 + 1060) = 1077936128;
  *(v4 + 1064) = 1;
  *(v4 + 1065) = v506;
  *(v4 + 1067) = v507;
  *(v4 + 1068) = 1038174126;
  *(v4 + 1072) = xmmword_1000F0400;
  *(v4 + 1088) = 0x3F547AE100000000;
  *(v4 + 1096) = v505;
  *(v4 + 1097) = 1;
  *(v4 + 1099) = 1;
  *(v4 + 1104) = 0u;
  *(v4 + 1120) = sub_100055594;
  *(v4 + 1128) = 0;
  *(v4 + 1136) = 0x3F80000000000000;
  *(v4 + 1152) = xmmword_1000EF7D0;
  *(v4 + 1168) = 9;
  v76 = vmulq_f32(xmmword_10013DCA0, 0);
  v314 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v271 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v76), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v251 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v76, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v361 = vdupq_n_s32(0xC0247AE1);
  v239 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, v389), vdupq_n_s32(0x3E75C28Fu), *algn_10013DCB0), v361, xmmword_10013DCC0));
  sub_10001358C(v447, 0.0, xmmword_1000EC910);
  v77 = sub_100013568(v447);
  v339 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v314, v77.n128_f32[0]), v271, v77.n128_u64[0], 1), v251, v77, 2), v239, v77, 3);
  v291 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v314, v78.f32[0]), v271, *v78.f32, 1), v251, v78, 2), v239, v78, 3);
  v243 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v314, v79.f32[0]), v271, *v79.f32, 1), v251, v79, 2), v239, v79, 3);
  v240 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v314, v80.f32[0]), v271, *v80.f32, 1), v251, v80, 2), v239, v80, 3);
  sub_10001358C(v448, 0.0, xmmword_1000EC8E0);
  v81 = sub_100013568(v448);
  v272 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v339, v82.f32[0]), v291, *v82.f32, 1), v243, v82, 2), v240, v82, 3);
  v252 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v339, v83.f32[0]), v291, *v83.f32, 1), v243, v83, 2), v240, v83, 3);
  v315 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v339, v81.n128_f32[0]), v291, v81.n128_u64[0], 1), v243, v81, 2), v240, v81, 3);
  v340 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v339, v84.f32[0]), v291, *v84.f32, 1), v243, v84, 2), v240, v84, 3);
  sub_10001358C(v449, 0.68068, xmmword_1000EC920);
  v85 = sub_100013568(v449);
  v512 = 1;
  *(v4 + 1184) = 0x3F8CCCCD400CCCCDLL;
  *(v4 + 1192) = 1046562734;
  *(v4 + 1196) = 1;
  *(v4 + 1197) = v517;
  *(v4 + 1199) = v518;
  *(v4 + 1200) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v315, v85.n128_f32[0]), v272, v85.n128_u64[0], 1), v252, v85, 2), v340, v85, 3);
  *(v4 + 1216) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v315, v86.f32[0]), v272, *v86.f32, 1), v252, v86, 2), v340, v86, 3);
  *(v4 + 1232) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v315, v87.f32[0]), v272, *v87.f32, 1), v252, v87, 2), v340, v87, 3);
  *(v4 + 1248) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v315, v88.f32[0]), v272, *v88.f32, 1), v252, v88, 2), v340, v88, 3);
  *(v4 + 1264) = xmmword_1000F0410;
  *(v4 + 1280) = 0;
  v89 = v515;
  *(v4 + 1283) = v516;
  *(v4 + 1281) = v89;
  *(v4 + 1284) = 1068708659;
  *(v4 + 1288) = 10;
  *(v4 + 1289) = v513;
  *(v4 + 1291) = v514;
  *(v4 + 1292) = 1065353216;
  *(v4 + 1296) = 0;
  *(v4 + 1304) = 0u;
  *(v4 + 1320) = v512;
  *(v4 + 1321) = 1;
  *(v4 + 1323) = 1;
  *(v4 + 1328) = 0u;
  *(v4 + 1344) = sub_100081610;
  *(v4 + 1352) = 0;
  *(v4 + 1360) = 0x3F80000000000000;
  *(v4 + 1376) = xmmword_1000EF5A0;
  *(v4 + 1392) = 4;
  v90 = vmulq_f32(xmmword_10013DCA0, 0);
  v341 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v292 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v90), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v273 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v90, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v244 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, v389), vdupq_n_s32(0x3ECCCCCCu), *algn_10013DCB0), vdupq_n_s32(0xBD75C28F), xmmword_10013DCC0));
  sub_10001358C(v450, 1.5708, xmmword_1000EC910);
  v91 = sub_100013568(v450);
  v390 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v341, v91.n128_f32[0]), v292, v91.n128_u64[0], 1), v273, v91, 2), v244, v91, 3);
  v316 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v341, v92.f32[0]), v292, *v92.f32, 1), v273, v92, 2), v244, v92, 3);
  v253 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v341, v93.f32[0]), v292, *v93.f32, 1), v273, v93, 2), v244, v93, 3);
  v245 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v341, v94.f32[0]), v292, *v94.f32, 1), v273, v94, 2), v244, v94, 3);
  sub_10001358C(v451, -0.99484, xmmword_1000EC8E0);
  v95 = sub_100013568(v451);
  v342 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v390, v95.n128_f32[0]), v316, v95.n128_u64[0], 1), v253, v95, 2), v245, v95, 3);
  v293 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v390, v96.f32[0]), v316, *v96.f32, 1), v253, v96, 2), v245, v96, 3);
  v274 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v390, v97.f32[0]), v316, *v97.f32, 1), v253, v97, 2), v245, v97, 3);
  v391 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v390, v98.f32[0]), v316, *v98.f32, 1), v253, v98, 2), v245, v98, 3);
  sub_10001358C(v452, 0.0, xmmword_1000EC920);
  v99 = sub_100013568(v452);
  v519 = 1;
  *(v4 + 1408) = 0x4021EB853F70A3D7;
  *(v4 + 1416) = 1050253722;
  *(v4 + 1420) = 1;
  *(v4 + 1421) = v524;
  *(v4 + 1423) = v525;
  *(v4 + 1424) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v342, v99.n128_f32[0]), v293, v99.n128_u64[0], 1), v274, v99, 2), v391, v99, 3);
  *(v4 + 1440) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v342, v100.f32[0]), v293, *v100.f32, 1), v274, v100, 2), v391, v100, 3);
  *(v4 + 1456) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v342, v101.f32[0]), v293, *v101.f32, 1), v274, v101, 2), v391, v101, 3);
  *(v4 + 1472) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v342, v102.f32[0]), v293, *v102.f32, 1), v274, v102, 2), v391, v102, 3);
  *(v4 + 1488) = xmmword_1000F0420;
  *(v4 + 1504) = 0;
  v103 = v522;
  *(v4 + 1507) = v523;
  *(v4 + 1505) = v103;
  *(v4 + 1508) = 1086324736;
  *(v4 + 1512) = 9;
  *(v4 + 1513) = v520;
  *(v4 + 1515) = v521;
  *(v4 + 1516) = 1065353216;
  *(v4 + 1520) = 0;
  *(v4 + 1528) = 0u;
  *(v4 + 1544) = v519;
  *(v4 + 1545) = 1;
  *(v4 + 1547) = 0;
  *(v4 + 1552) = 0u;
  *(v4 + 1568) = sub_1000555F0;
  *(v4 + 1576) = 0;
  *(v4 + 1584) = 0x3EAE147B00000000;
  *(v4 + 1600) = xmmword_1000EF5C0;
  *(v4 + 1616) = 4;
  v104 = vmulq_f32(xmmword_10013DCA0, 0);
  v343 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v294 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v104), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v275 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v104, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v246 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3D8F5C29u)), vdupq_n_s32(0x3EB851EBu), *algn_10013DCB0), vdupq_n_s32(0xBF1EB852), xmmword_10013DCC0));
  sub_10001358C(v453, 1.5708, xmmword_1000EC910);
  v105 = sub_100013568(v453);
  v392 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v343, v105.n128_f32[0]), v294, v105.n128_u64[0], 1), v275, v105, 2), v246, v105, 3);
  v317 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v343, v106.f32[0]), v294, *v106.f32, 1), v275, v106, 2), v246, v106, 3);
  v254 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v343, v107.f32[0]), v294, *v107.f32, 1), v275, v107, 2), v246, v107, 3);
  v247 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v343, v108.f32[0]), v294, *v108.f32, 1), v275, v108, 2), v246, v108, 3);
  sub_10001358C(v454, -0.97738, xmmword_1000EC8E0);
  v109 = sub_100013568(v454);
  v344 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v392, v109.n128_f32[0]), v317, v109.n128_u64[0], 1), v254, v109, 2), v247, v109, 3);
  v295 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v392, v110.f32[0]), v317, *v110.f32, 1), v254, v110, 2), v247, v110, 3);
  v276 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v392, v111.f32[0]), v317, *v111.f32, 1), v254, v111, 2), v247, v111, 3);
  v393 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v392, v112.f32[0]), v317, *v112.f32, 1), v254, v112, 2), v247, v112, 3);
  sub_10001358C(v455, 0.0, xmmword_1000EC920);
  v113 = sub_100013568(v455);
  v526 = 1;
  *(v4 + 1632) = 0x3F8000003F800000;
  *(v4 + 1640) = 1053609165;
  *(v4 + 1644) = 1;
  *(v4 + 1645) = v531;
  *(v4 + 1647) = v532;
  *(v4 + 1648) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v344, v113.n128_f32[0]), v295, v113.n128_u64[0], 1), v276, v113, 2), v393, v113, 3);
  *(v4 + 1664) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v344, v114.f32[0]), v295, *v114.f32, 1), v276, v114, 2), v393, v114, 3);
  *(v4 + 1680) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v344, v115.f32[0]), v295, *v115.f32, 1), v276, v115, 2), v393, v115, 3);
  *(v4 + 1696) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v344, v116.f32[0]), v295, *v116.f32, 1), v276, v116, 2), v393, v116, 3);
  *(v4 + 1712) = xmmword_1000EC900;
  *(v4 + 1728) = 0;
  v117 = v529;
  *(v4 + 1731) = v530;
  *(v4 + 1729) = v117;
  *(v4 + 1732) = 1090623898;
  *(v4 + 1736) = 9;
  *(v4 + 1737) = v527;
  *(v4 + 1739) = v528;
  *(v4 + 1740) = 1065353216;
  *(v4 + 1744) = 0;
  *(v4 + 1752) = 0u;
  *(v4 + 1768) = v526;
  *(v4 + 1769) = 1;
  *(v4 + 1771) = 0;
  *(v4 + 1776) = 0u;
  *(v4 + 1792) = sub_100055620;
  *(v4 + 1800) = 0;
  *(v4 + 1808) = 0x3F1C28F600000000;
  *(v4 + 1824) = xmmword_1000EF5A0;
  *(v4 + 1840) = 3;
  v118 = vmulq_f32(xmmword_10013DCA0, 0);
  v318 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v296 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v118), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v277 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v118, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v362 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC01D70A4)), vdupq_n_s32(0x4008F5C2u), *algn_10013DCB0), v361, xmmword_10013DCC0));
  sub_10001358C(v456, -0.83776, xmmword_1000EC910);
  v119 = sub_100013568(v456);
  v394 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v318, v119.n128_f32[0]), v296, v119.n128_u64[0], 1), v277, v119, 2), v362, v119, 3);
  v345 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v318, v120.f32[0]), v296, *v120.f32, 1), v277, v120, 2), v362, v120, 3);
  v255 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v318, v121.f32[0]), v296, *v121.f32, 1), v277, v121, 2), v362, v121, 3);
  v278 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v318, v122.f32[0]), v296, *v122.f32, 1), v277, v122, 2), v362, v122, 3);
  sub_10001358C(v457, -0.55851, xmmword_1000EC8E0);
  v123 = sub_100013568(v457);
  v363 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v394, v123.n128_f32[0]), v345, v123.n128_u64[0], 1), v255, v123, 2), v278, v123, 3);
  v319 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v394, v124.f32[0]), v345, *v124.f32, 1), v255, v124, 2), v278, v124, 3);
  v297 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v394, v125.f32[0]), v345, *v125.f32, 1), v255, v125, 2), v278, v125, 3);
  v395 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v394, v126.f32[0]), v345, *v126.f32, 1), v255, v126, 2), v278, v126, 3);
  sub_10001358C(v458, 0.0, xmmword_1000EC920);
  v127 = sub_100013568(v458);
  v533 = 1;
  *(v4 + 1856) = 0x400666663FCCCCCDLL;
  *(v4 + 1864) = 1045891645;
  *(v4 + 1868) = 1;
  *(v4 + 1869) = v538;
  *(v4 + 1871) = v539;
  *(v4 + 1872) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v363, v127.n128_f32[0]), v319, v127.n128_u64[0], 1), v297, v127, 2), v395, v127, 3);
  *(v4 + 1888) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v363, v128.f32[0]), v319, *v128.f32, 1), v297, v128, 2), v395, v128, 3);
  *(v4 + 1904) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v363, v129.f32[0]), v319, *v129.f32, 1), v297, v129, 2), v395, v129, 3);
  *(v4 + 1920) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v363, v130.f32[0]), v319, *v130.f32, 1), v297, v130, 2), v395, v130, 3);
  *(v4 + 1936) = xmmword_1000F0430;
  *(v4 + 1952) = 0;
  v131 = v536;
  *(v4 + 1955) = v537;
  *(v4 + 1953) = v131;
  *(v4 + 1956) = 1091043328;
  *(v4 + 1960) = 10;
  *(v4 + 1961) = v534;
  *(v4 + 1963) = v535;
  *(v4 + 1964) = 1065353216;
  *(v4 + 1968) = 0;
  *(v4 + 1976) = 0u;
  *(v4 + 1992) = v533;
  *(v4 + 1993) = 1;
  *(v4 + 1995) = 1;
  *(v4 + 2000) = 0u;
  *(v4 + 2016) = sub_100055650;
  *(v4 + 2024) = 0;
  *(v4 + 2032) = 0x3F80000000000000;
  *(v4 + 2048) = xmmword_1000EF630;
  *(v4 + 2064) = 9;
  v132 = vmulq_f32(xmmword_10013DCA0, 0);
  v364 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v320 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v132), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v298 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v132, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v256 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC02C28F6)), vdupq_n_s32(0x4082E147u), *algn_10013DCB0), vdupq_n_s32(0x40799999u), xmmword_10013DCC0));
  sub_10001358C(v459, -1.501, xmmword_1000EC910);
  v133 = sub_100013568(v459);
  v396 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v364, v133.n128_f32[0]), v320, v133.n128_u64[0], 1), v298, v133, 2), v256, v133, 3);
  v346 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v364, v134.f32[0]), v320, *v134.f32, 1), v298, v134, 2), v256, v134, 3);
  v279 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v364, v135.f32[0]), v320, *v135.f32, 1), v298, v135, 2), v256, v135, 3);
  v257 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v364, v136.f32[0]), v320, *v136.f32, 1), v298, v136, 2), v256, v136, 3);
  sub_10001358C(v460, -0.73304, xmmword_1000EC8E0);
  v137 = sub_100013568(v460);
  v365 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v396, v137.n128_f32[0]), v346, v137.n128_u64[0], 1), v279, v137, 2), v257, v137, 3);
  v321 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v396, v138.f32[0]), v346, *v138.f32, 1), v279, v138, 2), v257, v138, 3);
  v299 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v396, v139.f32[0]), v346, *v139.f32, 1), v279, v139, 2), v257, v139, 3);
  v397 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v396, v140.f32[0]), v346, *v140.f32, 1), v279, v140, 2), v257, v140, 3);
  sub_10001358C(v461, 0.0, xmmword_1000EC920);
  v141 = sub_100013568(v461);
  v540 = 1;
  *(v4 + 2080) = 0x4073333340333333;
  *(v4 + 2088) = 1023611503;
  *(v4 + 2092) = 1;
  *(v4 + 2093) = v545;
  *(v4 + 2095) = v546;
  *(v4 + 2096) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v365, v141.n128_f32[0]), v321, v141.n128_u64[0], 1), v299, v141, 2), v397, v141, 3);
  *(v4 + 2112) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v365, v142.f32[0]), v321, *v142.f32, 1), v299, v142, 2), v397, v142, 3);
  *(v4 + 2128) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v365, v143.f32[0]), v321, *v143.f32, 1), v299, v143, 2), v397, v143, 3);
  *(v4 + 2144) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v365, v144.f32[0]), v321, *v144.f32, 1), v299, v144, 2), v397, v144, 3);
  *(v4 + 2160) = xmmword_1000F0440;
  *(v4 + 2176) = 0;
  v145 = v543;
  *(v4 + 2179) = v544;
  *(v4 + 2177) = v145;
  strcpy((v4 + 2180), "333?");
  *(v4 + 2185) = v541;
  *(v4 + 2187) = v542;
  *(v4 + 2188) = 1057635697;
  *(v4 + 2192) = 0;
  *(v4 + 2200) = 0u;
  *(v4 + 2216) = v540;
  *(v4 + 2217) = 3;
  *(v4 + 2219) = 1;
  *(v4 + 2224) = 0u;
  *(v4 + 2240) = sub_100055680;
  *(v4 + 2248) = 0;
  *(v4 + 2256) = 0x3F80000000000000;
  *(v4 + 2272) = xmmword_1000EF5A0;
  *(v4 + 2288) = 5;
  v146 = vmulq_f32(xmmword_10013DCA0, 0);
  v366 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v322 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v146), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v300 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v146, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v258 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC008F5C2)), vdupq_n_s32(0x402F5C29u), *algn_10013DCB0), vdupq_n_s32(0x3F8F5C29u), xmmword_10013DCC0));
  sub_10001358C(v462, 0.0, xmmword_1000EC910);
  v147 = sub_100013568(v462);
  v398 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v366, v147.n128_f32[0]), v322, v147.n128_u64[0], 1), v300, v147, 2), v258, v147, 3);
  v347 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v366, v148.f32[0]), v322, *v148.f32, 1), v300, v148, 2), v258, v148, 3);
  v280 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v366, v149.f32[0]), v322, *v149.f32, 1), v300, v149, 2), v258, v149, 3);
  v259 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v366, v150.f32[0]), v322, *v150.f32, 1), v300, v150, 2), v258, v150, 3);
  sub_10001358C(v463, 0.0, xmmword_1000EC8E0);
  v151 = sub_100013568(v463);
  v367 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v398, v151.n128_f32[0]), v347, v151.n128_u64[0], 1), v280, v151, 2), v259, v151, 3);
  v323 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v398, v152.f32[0]), v347, *v152.f32, 1), v280, v152, 2), v259, v152, 3);
  v301 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v398, v153.f32[0]), v347, *v153.f32, 1), v280, v153, 2), v259, v153, 3);
  v399 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v398, v154.f32[0]), v347, *v154.f32, 1), v280, v154, 2), v259, v154, 3);
  sub_10001358C(v464, 0.0, xmmword_1000EC920);
  v155 = sub_100013568(v464);
  v547 = 1;
  *(v4 + 2304) = 0x409CCCCD4080A3D7;
  *(v4 + 2312) = 1053609165;
  *(v4 + 2316) = 1;
  *(v4 + 2317) = v552;
  *(v4 + 2319) = v553;
  *(v4 + 2320) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v367, v155.n128_f32[0]), v323, v155.n128_u64[0], 1), v301, v155, 2), v399, v155, 3);
  *(v4 + 2336) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v367, v156.f32[0]), v323, *v156.f32, 1), v301, v156, 2), v399, v156, 3);
  *(v4 + 2352) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v367, v157.f32[0]), v323, *v157.f32, 1), v301, v157, 2), v399, v157, 3);
  *(v4 + 2368) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v367, v158.f32[0]), v323, *v158.f32, 1), v301, v158, 2), v399, v158, 3);
  *(v4 + 2384) = xmmword_1000F0450;
  *(v4 + 2400) = 0;
  v159 = v550;
  *(v4 + 2403) = v551;
  *(v4 + 2401) = v159;
  *(v4 + 2404) = 1050253722;
  *(v4 + 2408) = 9;
  *(v4 + 2409) = v548;
  *(v4 + 2411) = v549;
  *(v4 + 2412) = 1065353216;
  *(v4 + 2416) = 0;
  *(v4 + 2424) = 0u;
  *(v4 + 2440) = v547;
  *(v4 + 2441) = 3;
  *(v4 + 2443) = 1;
  *(v4 + 2448) = 0u;
  *(v4 + 2464) = _MTLPackedFloat3.init(_:_:_:);
  *(v4 + 2472) = 0;
  *(v4 + 2480) = 0x3F80000000000000;
  *(v4 + 2496) = xmmword_1000EF5C0;
  *(v4 + 2512) = 5;
  v160 = vmulq_f32(xmmword_10013DCA0, 0);
  v368 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v324 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v160), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v302 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v160, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v260 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x40233333u)), vdupq_n_s32(0xBFF99999), *algn_10013DCB0), vdupq_n_s32(0x40028F5Cu), xmmword_10013DCC0));
  sub_10001358C(v465, 0.0, xmmword_1000EC910);
  v161 = sub_100013568(v465);
  v400 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v368, v161.n128_f32[0]), v324, v161.n128_u64[0], 1), v302, v161, 2), v260, v161, 3);
  v348 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v368, v162.f32[0]), v324, *v162.f32, 1), v302, v162, 2), v260, v162, 3);
  v281 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v368, v163.f32[0]), v324, *v163.f32, 1), v302, v163, 2), v260, v163, 3);
  v261 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v368, v164.f32[0]), v324, *v164.f32, 1), v302, v164, 2), v260, v164, 3);
  sub_10001358C(v466, 0.0, xmmword_1000EC8E0);
  v165 = sub_100013568(v466);
  v369 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v400, v165.n128_f32[0]), v348, v165.n128_u64[0], 1), v281, v165, 2), v261, v165, 3);
  v325 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v400, v166.f32[0]), v348, *v166.f32, 1), v281, v166, 2), v261, v166, 3);
  v303 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v400, v167.f32[0]), v348, *v167.f32, 1), v281, v167, 2), v261, v167, 3);
  v401 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v400, v168.f32[0]), v348, *v168.f32, 1), v281, v168, 2), v261, v168, 3);
  sub_10001358C(v467, 0.0, xmmword_1000EC920);
  v169 = sub_100013568(v467);
  v554 = 1;
  *(v4 + 2528) = 0x406CCCCD40666666;
  *(v4 + 2536) = 1053609165;
  *(v4 + 2540) = 1;
  *(v4 + 2541) = v559;
  *(v4 + 2543) = v560;
  *(v4 + 2544) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v369, v169.n128_f32[0]), v325, v169.n128_u64[0], 1), v303, v169, 2), v401, v169, 3);
  *(v4 + 2560) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v369, v170.f32[0]), v325, *v170.f32, 1), v303, v170, 2), v401, v170, 3);
  *(v4 + 2576) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v369, v171.f32[0]), v325, *v171.f32, 1), v303, v171, 2), v401, v171, 3);
  *(v4 + 2592) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v369, v172.f32[0]), v325, *v172.f32, 1), v303, v172, 2), v401, v172, 3);
  *(v4 + 2608) = xmmword_1000F0460;
  *(v4 + 2624) = 0;
  v173 = v557;
  *(v4 + 2627) = v558;
  *(v4 + 2625) = v173;
  *(v4 + 2628) = 1079613850;
  *(v4 + 2632) = 9;
  *(v4 + 2633) = v555;
  *(v4 + 2635) = v556;
  *(v4 + 2636) = 1065353216;
  *(v4 + 2640) = 0;
  *(v4 + 2648) = 0u;
  *(v4 + 2664) = v554;
  *(v4 + 2665) = 3;
  *(v4 + 2667) = 1;
  *(v4 + 2672) = 0u;
  *(v4 + 2688) = sub_1000556B0;
  *(v4 + 2696) = 0;
  *(v4 + 2704) = 0x3F80000000000000;
  *(v4 + 2720) = xmmword_1000EF5D0;
  *(v4 + 2736) = 5;
  v174 = vmulq_f32(xmmword_10013DCA0, 0);
  v370 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v326 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v174), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v304 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v174, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  __asm { FMOV            V0.4S, #-3.5 }

  v262 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3F7851EBu)), _Q0, *algn_10013DCB0), vdupq_n_s32(0x40428F5Cu), xmmword_10013DCC0));
  sub_10001358C(v468, 0.0, xmmword_1000EC910);
  v180 = sub_100013568(v468);
  v402 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v370, v180.n128_f32[0]), v326, v180.n128_u64[0], 1), v304, v180, 2), v262, v180, 3);
  v349 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v370, v181.f32[0]), v326, *v181.f32, 1), v304, v181, 2), v262, v181, 3);
  v282 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v370, v182.f32[0]), v326, *v182.f32, 1), v304, v182, 2), v262, v182, 3);
  v263 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v370, v183.f32[0]), v326, *v183.f32, 1), v304, v183, 2), v262, v183, 3);
  sub_10001358C(v469, 0.0, xmmword_1000EC8E0);
  v184 = sub_100013568(v469);
  v371 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v402, v184.n128_f32[0]), v349, v184.n128_u64[0], 1), v282, v184, 2), v263, v184, 3);
  v327 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v402, v185.f32[0]), v349, *v185.f32, 1), v282, v185, 2), v263, v185, 3);
  v305 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v402, v186.f32[0]), v349, *v186.f32, 1), v282, v186, 2), v263, v186, 3);
  v403 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v402, v187.f32[0]), v349, *v187.f32, 1), v282, v187, 2), v263, v187, 3);
  sub_10001358C(v470, 0.0, xmmword_1000EC920);
  v188 = sub_100013568(v470);
  v561 = 1;
  *(v4 + 2752) = 0x4089999A40400000;
  *(v4 + 2760) = 1053609165;
  *(v4 + 2764) = 1;
  *(v4 + 2765) = v566;
  *(v4 + 2767) = v567;
  *(v4 + 2768) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v371, v188.n128_f32[0]), v327, v188.n128_u64[0], 1), v305, v188, 2), v403, v188, 3);
  *(v4 + 2784) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v371, v189.f32[0]), v327, *v189.f32, 1), v305, v189, 2), v403, v189, 3);
  *(v4 + 2800) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v371, v190.f32[0]), v327, *v190.f32, 1), v305, v190, 2), v403, v190, 3);
  *(v4 + 2816) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v371, v191.f32[0]), v327, *v191.f32, 1), v305, v191, 2), v403, v191, 3);
  *(v4 + 2832) = xmmword_1000EC900;
  *(v4 + 2848) = 0;
  v192 = v564;
  *(v4 + 2851) = v565;
  *(v4 + 2849) = v192;
  *(v4 + 2852) = 1066192077;
  *(v4 + 2856) = 9;
  *(v4 + 2857) = v562;
  *(v4 + 2859) = v563;
  *(v4 + 2860) = 1065353216;
  *(v4 + 2864) = 0;
  *(v4 + 2872) = 0u;
  *(v4 + 2888) = v561;
  *(v4 + 2889) = 3;
  *(v4 + 2891) = 1;
  *(v4 + 2896) = 0u;
  *(v4 + 2912) = sub_1000556E0;
  *(v4 + 2920) = 0;
  *(v4 + 2928) = 0x3F80000000000000;
  *(v4 + 2944) = xmmword_1000EF5A0;
  *(v4 + 2960) = 6;
  v193 = vmulq_f32(xmmword_10013DCA0, 0);
  v404 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v350 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v193), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v306 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v193, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v425 = vdupq_n_s32(0xBF8E147B);
  v283 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBE23D70A)), vdupq_n_s32(0x3E999999u), *algn_10013DCB0), v425, xmmword_10013DCC0));
  sub_10001358C(v471, 1.5708, xmmword_1000EC910);
  v194 = sub_100013568(v471);
  v419 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v404, v194.n128_f32[0]), v350, v194.n128_u64[0], 1), v306, v194, 2), v283, v194, 3);
  v372 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v404, v195.f32[0]), v350, *v195.f32, 1), v306, v195, 2), v283, v195, 3);
  v328 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v404, v196.f32[0]), v350, *v196.f32, 1), v306, v196, 2), v283, v196, 3);
  v284 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v404, v197.f32[0]), v350, *v197.f32, 1), v306, v197, 2), v283, v197, 3);
  sub_10001358C(v472, -3.4034, xmmword_1000EC8E0);
  v198 = sub_100013568(v472);
  v405 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v419, v198.n128_f32[0]), v372, v198.n128_u64[0], 1), v328, v198, 2), v284, v198, 3);
  v351 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v419, v199.f32[0]), v372, *v199.f32, 1), v328, v199, 2), v284, v199, 3);
  v307 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v419, v200.f32[0]), v372, *v200.f32, 1), v328, v200, 2), v284, v200, 3);
  v420 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v419, v201.f32[0]), v372, *v201.f32, 1), v328, v201, 2), v284, v201, 3);
  sub_10001358C(v473, 1.5708, xmmword_1000EC920);
  v202 = sub_100013568(v473);
  v568 = 1;
  *(v4 + 2976) = 0x3FB333333F800000;
  *(v4 + 2984) = 1056964608;
  *(v4 + 2988) = 1;
  *(v4 + 2989) = v573;
  *(v4 + 2991) = v574;
  *(v4 + 2992) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v405, v202.n128_f32[0]), v351, v202.n128_u64[0], 1), v307, v202, 2), v420, v202, 3);
  *(v4 + 3008) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v405, v203.f32[0]), v351, *v203.f32, 1), v307, v203, 2), v420, v203, 3);
  *(v4 + 3024) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v405, v204.f32[0]), v351, *v204.f32, 1), v307, v204, 2), v420, v204, 3);
  *(v4 + 3040) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v405, v205.f32[0]), v351, *v205.f32, 1), v307, v205, 2), v420, v205, 3);
  *(v4 + 3056) = xmmword_1000F0470;
  *(v4 + 3072) = 0;
  v206 = v571;
  *(v4 + 3075) = v572;
  *(v4 + 3073) = v206;
  *(v4 + 3076) = 1055957975;
  *(v4 + 3080) = 9;
  *(v4 + 3081) = v569;
  *(v4 + 3083) = v570;
  *(v4 + 3084) = 1065353216;
  *(v4 + 3088) = 0;
  *(v4 + 3096) = 0u;
  *(v4 + 3112) = v568;
  *(v4 + 3113) = 2;
  *(v4 + 3115) = 1;
  *(v4 + 3152) = 0;
  *(v4 + 3136) = 0u;
  *(v4 + 3120) = 0u;
  *(v4 + 3156) = 1065353216;
  *(v4 + 3168) = xmmword_1000EF5C0;
  v207 = *algn_10013DCB0;
  v208 = vmulq_f32(xmmword_10013DCA0, 0);
  v209 = xmmword_10013DCC0;
  v210 = xmmword_10013DCD0;
  v211 = vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBF147AE1));
  v406 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v4 + 3184) = 6;
  v352 = vmlaq_f32(vmlaq_f32(vaddq_f32(v207, v208), 0, v209), 0, v210);
  v329 = vmlaq_f32(vaddq_f32(v209, vmlaq_f32(v208, 0, v207)), 0, v210);
  v426 = vaddq_f32(v210, vmlaq_f32(vmlaq_f32(v211, vdupq_n_s32(0xBF266666), v207), v425, v209));
  sub_10001358C(v474, 1.5708, xmmword_1000EC910);
  v212 = sub_100013568(v474);
  v416 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v406, v213.f32[0]), v352, *v213.f32, 1), v329, v213, 2), v426, v213, 3);
  v421 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v406, v212.n128_f32[0]), v352, v212.n128_u64[0], 1), v329, v212, 2), v426, v212, 3);
  v373 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v406, v214.f32[0]), v352, *v214.f32, 1), v329, v214, 2), v426, v214, 3);
  v407 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v406, v215.f32[0]), v352, *v215.f32, 1), v329, v215, 2), v426, v215, 3);
  sub_10001358C(v475, -2.5307, xmmword_1000EC8E0);
  v216 = sub_100013568(v475);
  v430 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v421, v217.f32[0]), v416, *v217.f32, 1), v373, v217, 2), v407, v217, 3);
  v431 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v421, v216.n128_f32[0]), v416, v216.n128_u64[0], 1), v373, v216, 2), v407, v216, 3);
  v427 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v421, v218.f32[0]), v416, *v218.f32, 1), v373, v218, 2), v407, v218, 3);
  v422 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v421, v219.f32[0]), v416, *v219.f32, 1), v373, v219, 2), v407, v219, 3);
  sub_10001358C(v476, 1.5708, xmmword_1000EC920);
  v220 = sub_100013568(v476);
  v575 = 1;
  *(v4 + 3200) = 0x3FC000003F8CCCCDLL;
  *(v4 + 3208) = 1056964608;
  *(v4 + 3212) = 1;
  *(v4 + 3213) = v580;
  *(v4 + 3215) = v581;
  *(v4 + 3216) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v431, v220.n128_f32[0]), v430, v220.n128_u64[0], 1), v427, v220, 2), v422, v220, 3);
  *(v4 + 3232) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v431, v221.f32[0]), v430, *v221.f32, 1), v427, v221, 2), v422, v221, 3);
  *(v4 + 3248) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v431, v222.f32[0]), v430, *v222.f32, 1), v427, v222, 2), v422, v222, 3);
  *(v4 + 3264) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v431, v223.f32[0]), v430, *v223.f32, 1), v427, v223, 2), v422, v223, 3);
  *(v4 + 3280) = xmmword_1000F0480;
  *(v4 + 3296) = 0;
  v224 = v578;
  *(v4 + 3299) = v579;
  *(v4 + 3297) = v224;
  *(v4 + 3300) = 1049918177;
  *(v4 + 3304) = 9;
  *(v4 + 3305) = v576;
  *(v4 + 3307) = v577;
  *(v4 + 3308) = 1065353216;
  *(v4 + 3312) = 0;
  *(v4 + 3320) = 0u;
  *(v4 + 3336) = v575;
  *(v4 + 3337) = 2;
  *(v4 + 3339) = 1;
  *(v4 + 3376) = 0;
  *(v4 + 3360) = 0u;
  *(v4 + 3344) = 0u;
  *(v4 + 3380) = 1065353216;
  v225 = sub_1000A0774(v4);
  swift_setDeallocating();
  sub_1000125FC(&qword_100131018, &qword_1000F1D70);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1000125FC(&qword_100131020, &qword_1000F1D78);
  v226 = swift_allocObject();
  v226[1] = xmmword_1000EC880;
  v226[2] = xmmword_1000F0490;
  v226[3] = xmmword_1000F04A0;
  v227 = swift_allocObject();
  v227[1] = xmmword_1000EC880;
  v227[2] = xmmword_1000F04B0;
  v227[3] = xmmword_1000F04C0;
  v228 = swift_allocObject();
  v228[1] = xmmword_1000EC880;
  v228[2] = xmmword_1000F04D0;
  v228[3] = xmmword_1000F04E0;
  v229 = qword_10013AC20;
  v230 = unk_10013AC28;
  v231 = qword_10013AC30;

  v232 = qword_10013AC50;
  v233 = sub_1000A0A98(_swiftEmptyArrayStorage);
  swift_bridgeObjectRetain_n();
  v235 = sub_1000C1928(v234, v225);

  sub_1000C53DC(v235, v584);
  v237 = sub_1000C199C(v236, v225);

  sub_1000C53DC(v237, v582);
  xmmword_10013B8C0 = v383;
  *algn_10013B8D0 = v382;
  qword_10013B8E0 = v381;
  dword_10013B8E8 = v0;
  xmmword_10013B8F0 = v380;
  unk_10013B900 = v379;
  qword_10013B910 = v1;
  dword_10013B918 = v2;
  xmmword_10013B920 = v378;
  qword_10013B930 = v3;
  xmmword_10013B940 = v377;
  qword_10013B950 = v376;
  unk_10013B958 = v375;
  dword_10013B960 = v374;
  qword_10013B968 = 0;
  unk_10013B970 = v225;
  qword_10013B998 = v585;
  unk_10013B988 = v584[1];
  unk_10013B978 = v584[0];
  xmmword_10013B9A0 = v582[0];
  unk_10013B9B0 = v582[1];
  qword_10013B9C0 = v583;
  qword_10013B9C8 = variable initialization expression of ToriScene.tapTarget;
  qword_10013B9D0 = 0;
  xmmword_10013B9E0 = xmmword_1000F04F0;
  unk_10013B9F0 = xmmword_1000F0500;
  qword_10013BA00 = v226;
  word_10013BA0C = 0;
  dword_10013BA08 = 0;
  xmmword_10013BA10 = xmmword_1000F0510;
  qword_10013BA20 = v227;
  xmmword_10013BA28 = xmmword_1000F0520;
  xmmword_10013BA38 = xmmword_1000F0530;
  qword_10013BA48 = 1060681913;
  unk_10013BA50 = v228;
  xmmword_10013BA58 = xmmword_1000F0540;
  xmmword_10013BA68 = xmmword_1000F0550;
  qword_10013BA78 = 1061866187;
  result = 0.000254672311;
  xmmword_10013BA80 = xmmword_1000F0560;
  qword_10013BA90 = v229;
  unk_10013BA98 = v230;
  qword_10013BAA0 = v231;
  unk_10013BAA8 = v233;
  qword_10013BAB0 = _swiftEmptyArrayStorage;
  unk_10013BAB8 = _swiftEmptyArrayStorage;
  qword_10013BAC0 = v232;
  return result;
}

uint64_t sub_100055388(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.17) * a2) + 0.17;
    *result = COERCE_UNSIGNED_INT(((*result + -0.71) * a2) + 0.71) | (COERCE_UNSIGNED_INT(((*(result + 4) + -3.9) * a2) + 3.9) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -5.0) * a2) + 5.0;
    *(result + 108) = ((*(result + 108) + -0.09) * a2) + 0.09;
  }

  else
  {
    __break(1u);
  }

  return result;
}

float sub_10005546C(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -2.6) * a2) + 2.6;
  *(a1 + 100) = result;
  return result;
}

uint64_t sub_10005549C(uint64_t result, float a2)
{
  if (*(result + 12) == 1)
  {
    v2 = ((*(result + 8) + -0.3) * a2) + 0.3;
    *result = COERCE_UNSIGNED_INT(((*result + -1.8) * a2) + 1.8) | (COERCE_UNSIGNED_INT(((*(result + 4) + -0.36) * a2) + 0.36) << 32);
    *(result + 8) = v2;
    *(result + 100) = ((*(result + 100) + -1.2) * a2) + 1.2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

float sub_100055564(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -1.9) * a2) + 1.9;
  *(a1 + 100) = result;
  return result;
}

float sub_100055594(uint64_t a1, float a2)
{
  *(a1 + 100) = ((*(a1 + 100) + -0.99) * a2) + 0.99;
  result = ((*(a1 + 108) + -0.12) * a2) + 0.12;
  *(a1 + 108) = result;
  return result;
}

float sub_1000555F0(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -4.7) * a2) + 4.7;
  *(a1 + 100) = result;
  return result;
}

float sub_100055620(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -3.2) * a2) + 3.2;
  *(a1 + 100) = result;
  return result;
}

float sub_100055650(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -0.59) * a2) + 0.59;
  *(a1 + 100) = result;
  return result;
}

float sub_100055680(uint64_t a1, float a2)
{
  result = ((*(a1 + 108) + -0.39) * a2) + 0.39;
  *(a1 + 108) = result;
  return result;
}

float sub_1000556B0(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -1.2) * a2) + 1.2;
  *(a1 + 100) = result;
  return result;
}

float sub_1000556E0(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -0.56) * a2) + 0.56;
  *(a1 + 100) = result;
  return result;
}

double sub_100055710()
{
  if (qword_10012F560 != -1)
  {
    swift_once();
  }

  v358 = xmmword_100130FE0;
  if (qword_10012F568 != -1)
  {
    swift_once();
  }

  v357 = xmmword_100130FF0;
  if (qword_10012F578 != -1)
  {
    swift_once();
  }

  v356 = xmmword_10013AAB0;
  v0 = qword_10013AAC0;
  v1 = dword_10013AAEC;
  sub_1000125FC(&qword_100131010, &qword_1000F1D68);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000EEC30;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 9;
  if (qword_10012F6E8 != -1)
  {
    swift_once();
  }

  v3 = vmulq_f32(xmmword_10013DCA0, 0);
  v385 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v381 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v3), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v359 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v3, 0, *algn_10013DCB0)), 0, xmmword_10013DCD0);
  v315 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3FBD0E56u)), vdupq_n_s32(0x3FBDF3B6u), *algn_10013DCB0), vdupq_n_s32(0x3DDD2F20u), xmmword_10013DCC0));
  sub_10001358C(v389, 1.2043, xmmword_1000EC910);
  v4 = sub_100013568(v389);
  v383 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v385, v4.n128_f32[0]), v381, v4.n128_u64[0], 1), v359, v4, 2), v315, v4, 3);
  v367 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v385, v5.f32[0]), v381, *v5.f32, 1), v359, v5, 2), v315, v5, 3);
  v335 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v385, v6.f32[0]), v381, *v6.f32, 1), v359, v6, 2), v315, v6, 3);
  v296 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v385, v7.f32[0]), v381, *v7.f32, 1), v359, v7, 2), v315, v7, 3);
  sub_10001358C(v390, -0.75049, xmmword_1000EC8E0);
  v8 = sub_100013568(v390);
  v9 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v383, v8.n128_f32[0]), v367, v8.n128_u64[0], 1), v335, v8, 2), v296, v8, 3);
  v360 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v383, v10.f32[0]), v367, *v10.f32, 1), v335, v10, 2), v296, v10, 3);
  v316 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v383, v11.f32[0]), v367, *v11.f32, 1), v335, v11, 2), v296, v11, 3);
  v368 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v383, v12.f32[0]), v367, *v12.f32, 1), v335, v12, 2), v296, v12, 3);
  v382 = v9;
  sub_10001358C(v391, 3.1067, xmmword_1000EC920);
  v13 = sub_100013568(v391);
  v423 = 1;
  *(v2 + 64) = 0x406000003FA66666;
  *(v2 + 72) = 0;
  *(v2 + 76) = 1;
  *(v2 + 77) = v428;
  *(v2 + 79) = v429;
  *(v2 + 80) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v382, v13.n128_f32[0]), v360, v13.n128_u64[0], 1), v316, v13, 2), v368, v13, 3);
  *(v2 + 96) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v382, v14.f32[0]), v360, *v14.f32, 1), v316, v14, 2), v368, v14, 3);
  *(v2 + 112) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v382, v15.f32[0]), v360, *v15.f32, 1), v316, v15, 2), v368, v15, 3);
  *(v2 + 128) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v382, v16.f32[0]), v360, *v16.f32, 1), v316, v16, 2), v368, v16, 3);
  *(v2 + 144) = xmmword_1000F0570;
  *(v2 + 160) = 0;
  v17 = v426;
  *(v2 + 163) = v427;
  *(v2 + 161) = v17;
  *(v2 + 164) = 1114636288;
  *(v2 + 168) = 3;
  *(v2 + 169) = v424;
  *(v2 + 171) = v425;
  *(v2 + 172) = 1067869798;
  *(v2 + 192) = 0;
  *(v2 + 176) = 0u;
  *(v2 + 200) = v423;
  *(v2 + 201) = 0;
  *(v2 + 203) = 1;
  *(v2 + 208) = 0u;
  *(v2 + 224) = 0u;
  v18 = xmmword_10013DCA0;
  v19 = *algn_10013DCB0;
  v20 = vmulq_f32(xmmword_10013DCA0, 0);
  *(v2 + 240) = 0;
  *(v2 + 244) = 1065353216;
  v21 = vmulq_f32(v18, vdupq_n_s32(0x3FA7AE14u));
  v22 = v18;
  v23 = xmmword_10013DCC0;
  v24 = xmmword_10013DCD0;
  v361 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v22, 0, v19), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v2 + 256) = xmmword_1000EF5A0;
  *(v2 + 272) = 0;
  v297 = vmlaq_f32(vaddq_f32(v23, vmlaq_f32(v20, 0, v19)), 0, v24);
  v317 = vmlaq_f32(vmlaq_f32(vaddq_f32(v19, v20), 0, v23), 0, v24);
  __asm { FMOV            V2.4S, #0.75 }

  v265 = vaddq_f32(v24, vmlaq_f32(vmlaq_f32(v21, _Q2, v19), vdupq_n_s32(0x3E428F5Cu), v23));
  sub_10001358C(v392, -1.9373, xmmword_1000EC910);
  v30 = sub_100013568(v392);
  v369 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v361, v30.n128_f32[0]), v317, v30.n128_u64[0], 1), v297, v30, 2), v265, v30, 3);
  v336 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v361, v31.f32[0]), v317, *v31.f32, 1), v297, v31, 2), v265, v31, 3);
  v279 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v361, v32.f32[0]), v317, *v32.f32, 1), v297, v32, 2), v265, v32, 3);
  v266 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v361, v33.f32[0]), v317, *v33.f32, 1), v297, v33, 2), v265, v33, 3);
  sub_10001358C(v393, -2.3911, xmmword_1000EC8E0);
  v34 = sub_100013568(v393);
  v318 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v369, v35.f32[0]), v336, *v35.f32, 1), v279, v35, 2), v266, v35, 3);
  v298 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v369, v36.f32[0]), v336, *v36.f32, 1), v279, v36, 2), v266, v36, 3);
  v362 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v369, v34.n128_f32[0]), v336, v34.n128_u64[0], 1), v279, v34, 2), v266, v34, 3);
  v370 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v369, v37.f32[0]), v336, *v37.f32, 1), v279, v37, 2), v266, v37, 3);
  sub_10001358C(v394, -0.034907, xmmword_1000EC920);
  v38 = sub_100013568(v394);
  v430 = 1;
  *(v2 + 288) = 0x3F63D70A3F3D70A4;
  *(v2 + 296) = 1008981770;
  *(v2 + 300) = 1;
  *(v2 + 301) = v435;
  *(v2 + 303) = v436;
  *(v2 + 304) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v362, v38.n128_f32[0]), v318, v38.n128_u64[0], 1), v298, v38, 2), v370, v38, 3);
  *(v2 + 320) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v362, v39.f32[0]), v318, *v39.f32, 1), v298, v39, 2), v370, v39, 3);
  *(v2 + 336) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v362, v40.f32[0]), v318, *v40.f32, 1), v298, v40, 2), v370, v40, 3);
  *(v2 + 352) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v362, v41.f32[0]), v318, *v41.f32, 1), v298, v41, 2), v370, v41, 3);
  *(v2 + 368) = xmmword_1000F0580;
  *(v2 + 384) = 1;
  v42 = v433;
  *(v2 + 387) = v434;
  *(v2 + 385) = v42;
  *(v2 + 388) = 1075419546;
  *(v2 + 392) = 11;
  *(v2 + 393) = v431;
  *(v2 + 395) = v432;
  *(v2 + 396) = 1065353216;
  *(v2 + 416) = 0;
  *(v2 + 400) = 0u;
  *(v2 + 424) = v430;
  *(v2 + 425) = 0;
  *(v2 + 427) = 1;
  *(v2 + 432) = 0u;
  *(v2 + 448) = 0u;
  *(v2 + 464) = 0;
  *(v2 + 468) = 1065353216;
  *(v2 + 480) = xmmword_1000EF5A0;
  v43 = *algn_10013DCB0;
  v44 = vmulq_f32(xmmword_10013DCA0, 0);
  v45 = xmmword_10013DCC0;
  v46 = xmmword_10013DCD0;
  v47 = vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBE3D70A4));
  v363 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v2 + 496) = 2;
  v319 = vmlaq_f32(vmlaq_f32(vaddq_f32(v43, v44), 0, v45), 0, v46);
  v280 = vmlaq_f32(vaddq_f32(v45, vmlaq_f32(v44, 0, v43)), 0, v46);
  v267 = vaddq_f32(v46, vmlaq_f32(vmlaq_f32(v47, 0, v43), vdupq_n_s32(0x3EF8D4FCu), v45));
  sub_10001358C(v395, 4.7124, xmmword_1000EC910);
  v48 = sub_100013568(v395);
  v371 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v363, v48.n128_f32[0]), v319, v48.n128_u64[0], 1), v280, v48, 2), v267, v48, 3);
  v337 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v363, v49.f32[0]), v319, *v49.f32, 1), v280, v49, 2), v267, v49, 3);
  v299 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v363, v50.f32[0]), v319, *v50.f32, 1), v280, v50, 2), v267, v50, 3);
  v268 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v363, v51.f32[0]), v319, *v51.f32, 1), v280, v51, 2), v267, v51, 3);
  sub_10001358C(v396, 1.0036, xmmword_1000EC8E0);
  v52 = sub_100013568(v396);
  v320 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v371, v53.f32[0]), v337, *v53.f32, 1), v299, v53, 2), v268, v53, 3);
  v281 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v371, v54.f32[0]), v337, *v54.f32, 1), v299, v54, 2), v268, v54, 3);
  v364 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v371, v52.n128_f32[0]), v337, v52.n128_u64[0], 1), v299, v52, 2), v268, v52, 3);
  v372 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v371, v55.f32[0]), v337, *v55.f32, 1), v299, v55, 2), v268, v55, 3);
  sub_10001358C(v397, -1.5708, xmmword_1000EC920);
  v56 = sub_100013568(v397);
  v437 = 1;
  *(v2 + 512) = 0x3F8CCCCD3FF33333;
  *(v2 + 520) = 1050253722;
  *(v2 + 524) = 1;
  *(v2 + 525) = v442;
  *(v2 + 527) = v443;
  *(v2 + 528) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v364, v56.n128_f32[0]), v320, v56.n128_u64[0], 1), v281, v56, 2), v372, v56, 3);
  *(v2 + 544) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v364, v57.f32[0]), v320, *v57.f32, 1), v281, v57, 2), v372, v57, 3);
  *(v2 + 560) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v364, v58.f32[0]), v320, *v58.f32, 1), v281, v58, 2), v372, v58, 3);
  *(v2 + 576) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v364, v59.f32[0]), v320, *v59.f32, 1), v281, v59, 2), v372, v59, 3);
  *(v2 + 592) = xmmword_1000EC900;
  *(v2 + 608) = 0;
  v60 = v440;
  *(v2 + 611) = v441;
  *(v2 + 609) = v60;
  *(v2 + 612) = 1075000115;
  *(v2 + 616) = 13;
  *(v2 + 617) = v438;
  *(v2 + 619) = v439;
  *(v2 + 620) = 1065353216;
  *(v2 + 640) = 0;
  *(v2 + 624) = 0u;
  *(v2 + 648) = v437;
  *(v2 + 649) = 0;
  *(v2 + 651) = 0;
  *(v2 + 656) = 0u;
  *(v2 + 672) = 0u;
  *(v2 + 688) = 0x4001EB85BE570A3DLL;
  *(v2 + 704) = xmmword_1000EF5A0;
  v61 = *algn_10013DCB0;
  v62 = vmulq_f32(xmmword_10013DCA0, 0);
  v63 = vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3DC49BA6u));
  v64 = xmmword_10013DCC0;
  v65 = xmmword_10013DCD0;
  v338 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v66 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v62), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v2 + 720) = 1;
  v282 = vmlaq_f32(vaddq_f32(v64, vmlaq_f32(v62, 0, v61)), 0, v65);
  v300 = v66;
  v254 = vaddq_f32(v65, vmlaq_f32(vmlaq_f32(v63, vdupq_n_s32(0x3FA74BC7u), v61), vdupq_n_s32(0xBE2E1478), v64));
  sub_10001358C(v398, 4.0143, xmmword_1000EC910);
  v67 = sub_100013568(v398);
  v365 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v338, v67.n128_f32[0]), v300, v67.n128_u64[0], 1), v282, v67, 2), v254, v67, 3);
  v321 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v338, v68.f32[0]), v300, *v68.f32, 1), v282, v68, 2), v254, v68, 3);
  v269 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v338, v69.f32[0]), v300, *v69.f32, 1), v282, v69, 2), v254, v69, 3);
  v255 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v338, v70.f32[0]), v300, *v70.f32, 1), v282, v70, 2), v254, v70, 3);
  sub_10001358C(v399, -2.3387, xmmword_1000EC8E0);
  v71 = sub_100013568(v399);
  v339 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v365, v71.n128_f32[0]), v321, v71.n128_u64[0], 1), v269, v71, 2), v255, v71, 3);
  v301 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v365, v72.f32[0]), v321, *v72.f32, 1), v269, v72, 2), v255, v72, 3);
  v283 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v365, v73.f32[0]), v321, *v73.f32, 1), v269, v73, 2), v255, v73, 3);
  v366 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v365, v74.f32[0]), v321, *v74.f32, 1), v269, v74, 2), v255, v74, 3);
  sub_10001358C(v400, 0.9704, xmmword_1000EC920);
  v75 = sub_100013568(v400);
  v444 = 1;
  *(v2 + 736) = 0x3FAD70A43FDE353FLL;
  *(v2 + 744) = 1036831949;
  *(v2 + 748) = 1;
  *(v2 + 749) = v449;
  *(v2 + 751) = v450;
  *(v2 + 752) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v339, v75.n128_f32[0]), v301, v75.n128_u64[0], 1), v283, v75, 2), v366, v75, 3);
  *(v2 + 768) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v339, v76.f32[0]), v301, *v76.f32, 1), v283, v76, 2), v366, v76, 3);
  *(v2 + 784) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v339, v77.f32[0]), v301, *v77.f32, 1), v283, v77, 2), v366, v77, 3);
  *(v2 + 800) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v339, v78.f32[0]), v301, *v78.f32, 1), v283, v78, 2), v366, v78, 3);
  *(v2 + 816) = xmmword_1000EC900;
  *(v2 + 832) = 0;
  v79 = v447;
  *(v2 + 835) = v448;
  *(v2 + 833) = v79;
  *(v2 + 836) = 1062501089;
  *(v2 + 840) = 13;
  *(v2 + 841) = v445;
  *(v2 + 843) = v446;
  *(v2 + 844) = 1065353216;
  *(v2 + 848) = 0;
  *(v2 + 856) = 0u;
  *(v2 + 872) = v444;
  *(v2 + 873) = 0;
  *(v2 + 875) = 0;
  *(v2 + 912) = 0;
  *(v2 + 880) = 0u;
  *(v2 + 896) = 0u;
  *(v2 + 916) = 1065353216;
  *(v2 + 928) = xmmword_1000EF5C0;
  v80 = *algn_10013DCB0;
  v81 = vmulq_f32(xmmword_10013DCA0, 0);
  v82 = vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC04EB852));
  v83 = xmmword_10013DCC0;
  v84 = xmmword_10013DCD0;
  v302 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v85 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v81), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v2 + 944) = 1;
  v270 = vmlaq_f32(vaddq_f32(v83, vmlaq_f32(v81, 0, v80)), 0, v84);
  v284 = v85;
  v245 = vaddq_f32(v84, vmlaq_f32(vmlaq_f32(v82, vdupq_n_s32(0x4076F9DBu), v80), vdupq_n_s32(0xC0121CAC), v83));
  sub_10001358C(v401, -0.87965, xmmword_1000EC910);
  v86 = sub_100013568(v401);
  v322 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v302, v87.f32[0]), v284, *v87.f32, 1), v270, v87, 2), v245, v87, 3);
  v340 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v302, v86.n128_f32[0]), v284, v86.n128_u64[0], 1), v270, v86, 2), v245, v86, 3);
  v256 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v302, v88.f32[0]), v284, *v88.f32, 1), v270, v88, 2), v245, v88, 3);
  v303 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v302, v89.f32[0]), v284, *v89.f32, 1), v270, v89, 2), v245, v89, 3);
  sub_10001358C(v402, -0.76445, xmmword_1000EC8E0);
  v90 = sub_100013568(v402);
  v451 = 1;
  *(v2 + 960) = 0x3FAF5C293FAE147BLL;
  *(v2 + 968) = 1036831949;
  *(v2 + 972) = 1;
  *(v2 + 973) = v456;
  *(v2 + 975) = v457;
  *(v2 + 976) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v340, v90.n128_f32[0]), v322, v90.n128_u64[0], 1), v256, v90, 2), v303, v90, 3);
  *(v2 + 992) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v340, v91.f32[0]), v322, *v91.f32, 1), v256, v91, 2), v303, v91, 3);
  *(v2 + 1008) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v340, v92.f32[0]), v322, *v92.f32, 1), v256, v92, 2), v303, v92, 3);
  *(v2 + 1024) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v340, v93.f32[0]), v322, *v93.f32, 1), v256, v93, 2), v303, v93, 3);
  *(v2 + 1040) = xmmword_1000EC900;
  *(v2 + 1056) = 0;
  v94 = v454;
  *(v2 + 1059) = v455;
  *(v2 + 1057) = v94;
  *(v2 + 1060) = 1094713344;
  *(v2 + 1064) = 12;
  *(v2 + 1065) = v452;
  *(v2 + 1067) = v453;
  *(v2 + 1068) = 1065353216;
  *(v2 + 1072) = 0;
  *(v2 + 1080) = 0u;
  *(v2 + 1096) = v451;
  *(v2 + 1097) = 0;
  *(v2 + 1099) = 0;
  *(v2 + 1136) = 0;
  *(v2 + 1120) = 0u;
  *(v2 + 1104) = 0u;
  *(v2 + 1140) = 1065353216;
  *(v2 + 1152) = xmmword_1000EF5C0;
  v95 = xmmword_10013DCA0;
  v96 = *algn_10013DCB0;
  v97 = vmulq_f32(xmmword_10013DCA0, 0);
  *(v2 + 1168) = 9;
  v323 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v95, 0, v96), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v271 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v97, 0, v96)), 0, xmmword_10013DCD0);
  v285 = vmlaq_f32(vmlaq_f32(vaddq_f32(v96, v97), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v246 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(v95, vdupq_n_s32(0x3FBC28F5u)), vdupq_n_s32(0x4008F5C2u), v96), vdupq_n_s32(0xBFA147AE), xmmword_10013DCC0));
  sub_10001358C(v403, 1.3265, xmmword_1000EC910);
  v98 = sub_100013568(v403);
  v341 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v323, v98.n128_f32[0]), v285, v98.n128_u64[0], 1), v271, v98, 2), v246, v98, 3);
  v304 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v323, v99.f32[0]), v285, *v99.f32, 1), v271, v99, 2), v246, v99, 3);
  v257 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v323, v100.f32[0]), v285, *v100.f32, 1), v271, v100, 2), v246, v100, 3);
  v247 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v323, v101.f32[0]), v285, *v101.f32, 1), v271, v101, 2), v246, v101, 3);
  sub_10001358C(v404, -0.83776, xmmword_1000EC8E0);
  v102 = sub_100013568(v404);
  v286 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v341, v103.f32[0]), v304, *v103.f32, 1), v257, v103, 2), v247, v103, 3);
  v272 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v341, v104.f32[0]), v304, *v104.f32, 1), v257, v104, 2), v247, v104, 3);
  v324 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v341, v102.n128_f32[0]), v304, v102.n128_u64[0], 1), v257, v102, 2), v247, v102, 3);
  v342 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v341, v105.f32[0]), v304, *v105.f32, 1), v257, v105, 2), v247, v105, 3);
  sub_10001358C(v405, 1.6755, xmmword_1000EC920);
  v106 = sub_100013568(v405);
  v458 = 1;
  *(v2 + 1184) = 0x4019999A40800000;
  *(v2 + 1192) = 1045220557;
  *(v2 + 1196) = 1;
  *(v2 + 1197) = v463;
  *(v2 + 1199) = v464;
  *(v2 + 1200) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v324, v106.n128_f32[0]), v286, v106.n128_u64[0], 1), v272, v106, 2), v342, v106, 3);
  *(v2 + 1216) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v324, v107.f32[0]), v286, *v107.f32, 1), v272, v107, 2), v342, v107, 3);
  *(v2 + 1232) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v324, v108.f32[0]), v286, *v108.f32, 1), v272, v108, 2), v342, v108, 3);
  *(v2 + 1248) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v324, v109.f32[0]), v286, *v109.f32, 1), v272, v109, 2), v342, v109, 3);
  *(v2 + 1264) = xmmword_1000EC900;
  *(v2 + 1280) = 0;
  v110 = v461;
  *(v2 + 1283) = v462;
  *(v2 + 1281) = v110;
  *(v2 + 1284) = 1092616192;
  *(v2 + 1288) = 6;
  *(v2 + 1289) = v459;
  *(v2 + 1291) = v460;
  *(v2 + 1292) = 1065353216;
  *(v2 + 1296) = 0;
  *(v2 + 1304) = 0u;
  *(v2 + 1320) = v458;
  *(v2 + 1321) = 1;
  *(v2 + 1323) = 1;
  *(v2 + 1360) = 0;
  v111 = *algn_10013DCB0;
  v112 = vmulq_f32(xmmword_10013DCA0, 0);
  __asm { FMOV            V3.4S, #-2.5 }

  v114 = vmulq_f32(xmmword_10013DCA0, _Q3);
  v115 = xmmword_10013DCC0;
  v116 = xmmword_10013DCD0;
  v343 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v2 + 1344) = 0u;
  *(v2 + 1328) = 0u;
  v305 = vmlaq_f32(vmlaq_f32(vaddq_f32(v111, v112), 0, v115), 0, v116);
  *(v2 + 1364) = 1065353216;
  *(v2 + 1376) = xmmword_1000EF5A0;
  v287 = vmlaq_f32(vaddq_f32(v115, vmlaq_f32(v112, 0, v111)), 0, v116);
  v248 = vaddq_f32(v116, vmlaq_f32(vmlaq_f32(v114, vdupq_n_s32(0x40354FE0u), v111), vdupq_n_s32(0xC06147AE), v115));
  *(v2 + 1392) = 3;
  sub_10001358C(v406, -0.8587, xmmword_1000EC910);
  v117 = sub_100013568(v406);
  v325 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v343, v117.n128_f32[0]), v305, v117.n128_u64[0], 1), v287, v117, 2), v248, v117, 3);
  v273 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v343, v118.f32[0]), v305, *v118.f32, 1), v287, v118, 2), v248, v118, 3);
  v258 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v343, v119.f32[0]), v305, *v119.f32, 1), v287, v119, 2), v248, v119, 3);
  v249 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v343, v120.f32[0]), v305, *v120.f32, 1), v287, v120, 2), v248, v120, 3);
  sub_10001358C(v407, -0.76445, xmmword_1000EC8E0);
  v121 = sub_100013568(v407);
  v122 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v325, v121.n128_f32[0]), v273, v121.n128_u64[0], 1), v258, v121, 2), v249, v121, 3);
  v306 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v325, v123.f32[0]), v273, *v123.f32, 1), v258, v123, 2), v249, v123, 3);
  v288 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v325, v124.f32[0]), v273, *v124.f32, 1), v258, v124, 2), v249, v124, 3);
  v326 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v325, v125.f32[0]), v273, *v125.f32, 1), v258, v125, 2), v249, v125, 3);
  v344 = v122;
  sub_10001358C(v408, 0.015184, xmmword_1000EC920);
  v126 = sub_100013568(v408);
  v465 = 1;
  *(v2 + 1408) = 0x3F8000003FD9999ALL;
  *(v2 + 1416) = 1039516303;
  *(v2 + 1420) = 1;
  *(v2 + 1421) = v470;
  *(v2 + 1423) = v471;
  *(v2 + 1424) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v344, v126.n128_f32[0]), v306, v126.n128_u64[0], 1), v288, v126, 2), v326, v126, 3);
  *(v2 + 1440) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v344, v127.f32[0]), v306, *v127.f32, 1), v288, v127, 2), v326, v127, 3);
  *(v2 + 1456) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v344, v128.f32[0]), v306, *v128.f32, 1), v288, v128, 2), v326, v128, 3);
  *(v2 + 1472) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v344, v129.f32[0]), v306, *v129.f32, 1), v288, v129, 2), v326, v129, 3);
  *(v2 + 1488) = xmmword_1000EC900;
  *(v2 + 1504) = 0;
  v130 = v468;
  *(v2 + 1507) = v469;
  *(v2 + 1505) = v130;
  *(v2 + 1508) = 1092616192;
  *(v2 + 1512) = 12;
  *(v2 + 1513) = v466;
  *(v2 + 1515) = v467;
  *(v2 + 1516) = 1065353216;
  *(v2 + 1520) = 0;
  *(v2 + 1528) = 0u;
  *(v2 + 1544) = v465;
  *(v2 + 1545) = 1;
  *(v2 + 1547) = 0;
  *(v2 + 1584) = 0;
  *(v2 + 1568) = 0u;
  *(v2 + 1552) = 0u;
  *(v2 + 1588) = 1065353216;
  *(v2 + 1600) = xmmword_1000EF5A0;
  v131 = xmmword_10013DCA0;
  v132 = *algn_10013DCB0;
  v133 = vmulq_f32(xmmword_10013DCA0, 0);
  *(v2 + 1616) = 4;
  v327 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v131, 0, v132), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v274 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v133, 0, v132)), 0, xmmword_10013DCD0);
  v289 = vmlaq_f32(vmlaq_f32(vaddq_f32(v132, v133), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v250 = vaddq_f32(xmmword_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(v131, vdupq_n_s32(0x3E2B020Cu)), vdupq_n_s32(0x3F378D50u), v132), vdupq_n_s32(0xBE99999A), xmmword_10013DCC0));
  sub_10001358C(v409, 1.5708, xmmword_1000EC910);
  v134 = sub_100013568(v409);
  v345 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v327, v134.n128_f32[0]), v289, v134.n128_u64[0], 1), v274, v134, 2), v250, v134, 3);
  v307 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v327, v135.f32[0]), v289, *v135.f32, 1), v274, v135, 2), v250, v135, 3);
  v259 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v327, v136.f32[0]), v289, *v136.f32, 1), v274, v136, 2), v250, v136, 3);
  v251 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v327, v137.f32[0]), v289, *v137.f32, 1), v274, v137, 2), v250, v137, 3);
  sub_10001358C(v410, -0.82903, xmmword_1000EC8E0);
  v138 = sub_100013568(v410);
  v290 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v345, v139.f32[0]), v307, *v139.f32, 1), v259, v139, 2), v251, v139, 3);
  v275 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v345, v140.f32[0]), v307, *v140.f32, 1), v259, v140, 2), v251, v140, 3);
  v328 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v345, v138.n128_f32[0]), v307, v138.n128_u64[0], 1), v259, v138, 2), v251, v138, 3);
  v346 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v345, v141.f32[0]), v307, *v141.f32, 1), v259, v141, 2), v251, v141, 3);
  sub_10001358C(v411, 1.5708, xmmword_1000EC920);
  v142 = sub_100013568(v411);
  v472 = 1;
  *(v2 + 1632) = 0x40A0000040A00000;
  *(v2 + 1640) = 1045220557;
  *(v2 + 1644) = 1;
  *(v2 + 1645) = v477;
  *(v2 + 1647) = v478;
  *(v2 + 1648) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v328, v142.n128_f32[0]), v290, v142.n128_u64[0], 1), v275, v142, 2), v346, v142, 3);
  *(v2 + 1664) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v328, v143.f32[0]), v290, *v143.f32, 1), v275, v143, 2), v346, v143, 3);
  *(v2 + 1680) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v328, v144.f32[0]), v290, *v144.f32, 1), v275, v144, 2), v346, v144, 3);
  *(v2 + 1696) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v328, v145.f32[0]), v290, *v145.f32, 1), v275, v145, 2), v346, v145, 3);
  *(v2 + 1712) = xmmword_1000EC900;
  *(v2 + 1728) = 0;
  v146 = v475;
  *(v2 + 1731) = v476;
  *(v2 + 1729) = v146;
  *(v2 + 1732) = 1065353216;
  *(v2 + 1736) = 9;
  *(v2 + 1737) = v473;
  *(v2 + 1739) = v474;
  *(v2 + 1740) = 1065353216;
  *(v2 + 1744) = 0;
  *(v2 + 1752) = 0u;
  *(v2 + 1768) = v472;
  *(v2 + 1769) = 1;
  *(v2 + 1771) = 0;
  *(v2 + 1792) = 0u;
  *(v2 + 1776) = 0u;
  *(v2 + 1808) = 0x403B13B2BE051EB8;
  *(v2 + 1824) = xmmword_1000EF630;
  v147 = *algn_10013DCB0;
  v148 = vmulq_f32(xmmword_10013DCA0, 0);
  v149 = vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC03C28F5));
  v150 = xmmword_10013DCC0;
  v151 = xmmword_10013DCD0;
  v347 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v152 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v148), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v2 + 1840) = 9;
  v291 = vmlaq_f32(vaddq_f32(v150, vmlaq_f32(v148, 0, v147)), 0, v151);
  v308 = v152;
  v260 = vaddq_f32(v151, vmlaq_f32(vmlaq_f32(v149, vdupq_n_s32(0x4071EB85u), v147), vdupq_n_s32(0x405E147Bu), v150));
  sub_10001358C(v412, -1.2217, xmmword_1000EC910);
  v153 = sub_100013568(v412);
  v373 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v347, v153.n128_f32[0]), v308, v153.n128_u64[0], 1), v291, v153, 2), v260, v153, 3);
  v329 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v347, v154.f32[0]), v308, *v154.f32, 1), v291, v154, 2), v260, v154, 3);
  v276 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v347, v155.f32[0]), v308, *v155.f32, 1), v291, v155, 2), v260, v155, 3);
  v261 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v347, v156.f32[0]), v308, *v156.f32, 1), v291, v156, 2), v260, v156, 3);
  sub_10001358C(v413, -0.68068, xmmword_1000EC8E0);
  v157 = sub_100013568(v413);
  v348 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v373, v157.n128_f32[0]), v329, v157.n128_u64[0], 1), v276, v157, 2), v261, v157, 3);
  v309 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v373, v158.f32[0]), v329, *v158.f32, 1), v276, v158, 2), v261, v158, 3);
  v292 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v373, v159.f32[0]), v329, *v159.f32, 1), v276, v159, 2), v261, v159, 3);
  v374 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v373, v160.f32[0]), v329, *v160.f32, 1), v276, v160, 2), v261, v160, 3);
  sub_10001358C(v414, -0.27925, xmmword_1000EC920);
  v161 = sub_100013568(v414);
  v479 = 1;
  *(v2 + 1856) = 0x4070A3D73F28F5C3;
  *(v2 + 1864) = 1014350479;
  *(v2 + 1868) = 1;
  *(v2 + 1869) = v484;
  *(v2 + 1871) = v485;
  *(v2 + 1872) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v348, v161.n128_f32[0]), v309, v161.n128_u64[0], 1), v292, v161, 2), v374, v161, 3);
  *(v2 + 1888) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v348, v162.f32[0]), v309, *v162.f32, 1), v292, v162, 2), v374, v162, 3);
  *(v2 + 1904) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v348, v163.f32[0]), v309, *v163.f32, 1), v292, v163, 2), v374, v163, 3);
  *(v2 + 1920) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v348, v164.f32[0]), v309, *v164.f32, 1), v292, v164, 2), v374, v164, 3);
  *(v2 + 1936) = xmmword_1000F0590;
  *(v2 + 1952) = 1;
  v165 = v482;
  *(v2 + 1955) = v483;
  *(v2 + 1953) = v165;
  *(v2 + 1956) = 1082130432;
  *(v2 + 1960) = 8;
  *(v2 + 1961) = v480;
  *(v2 + 1963) = v481;
  *(v2 + 1964) = 1067030938;
  *(v2 + 1968) = 0;
  *(v2 + 1976) = 0u;
  *(v2 + 1992) = v479;
  *(v2 + 1993) = 3;
  *(v2 + 1995) = 1;
  *(v2 + 2032) = 0;
  *(v2 + 2016) = 0u;
  *(v2 + 2000) = 0u;
  *(v2 + 2036) = 1065353216;
  *(v2 + 2048) = xmmword_1000EF5A0;
  v166 = *algn_10013DCB0;
  v167 = vmulq_f32(xmmword_10013DCA0, 0);
  v168 = vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3FD1EB85u));
  v169 = xmmword_10013DCC0;
  v170 = xmmword_10013DCD0;
  v375 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v171 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v167), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v2 + 2064) = 5;
  v330 = vmlaq_f32(vaddq_f32(v169, vmlaq_f32(v167, 0, v166)), 0, v170);
  v349 = v171;
  v310 = vaddq_f32(v170, vmlaq_f32(vmlaq_f32(v168, vdupq_n_s32(0xC00EB852), v166), vdupq_n_s32(0x40047AE1u), v169));
  sub_10001358C(v415, 0.53407, xmmword_1000EC8E0);
  v172 = sub_100013568(v415);
  v486 = 1;
  *(v2 + 2080) = 0x405333334019999ALL;
  *(v2 + 2088) = 1053609165;
  *(v2 + 2092) = 1;
  *(v2 + 2093) = v491;
  *(v2 + 2095) = v492;
  *(v2 + 2096) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v375, v172.n128_f32[0]), v349, v172.n128_u64[0], 1), v330, v172, 2), v310, v172, 3);
  *(v2 + 2112) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v375, v173.f32[0]), v349, *v173.f32, 1), v330, v173, 2), v310, v173, 3);
  *(v2 + 2128) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v375, v174.f32[0]), v349, *v174.f32, 1), v330, v174, 2), v310, v174, 3);
  *(v2 + 2144) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v375, v175.f32[0]), v349, *v175.f32, 1), v330, v175, 2), v310, v175, 3);
  *(v2 + 2160) = xmmword_1000F05A0;
  *(v2 + 2176) = 1;
  v176 = v489;
  *(v2 + 2179) = v490;
  *(v2 + 2177) = v176;
  *(v2 + 2180) = 1097859072;
  *(v2 + 2184) = 9;
  *(v2 + 2185) = v487;
  *(v2 + 2187) = v488;
  *(v2 + 2188) = 1065353216;
  *(v2 + 2192) = 0;
  *(v2 + 2200) = 0u;
  *(v2 + 2216) = v486;
  *(v2 + 2217) = 3;
  *(v2 + 2219) = 1;
  *(v2 + 2256) = 0;
  *(v2 + 2240) = 0u;
  *(v2 + 2224) = 0u;
  *(v2 + 2260) = 1065353216;
  *(v2 + 2272) = xmmword_1000EF5C0;
  v177 = *algn_10013DCB0;
  v178 = vmulq_f32(xmmword_10013DCA0, 0);
  v179 = vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBFC74BC7));
  v180 = xmmword_10013DCC0;
  v181 = xmmword_10013DCD0;
  v376 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v182 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v178), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v2 + 2288) = 5;
  v331 = vmlaq_f32(vaddq_f32(v180, vmlaq_f32(v178, 0, v177)), 0, v181);
  v350 = v182;
  v311 = vaddq_f32(v181, vmlaq_f32(vmlaq_f32(v179, vdupq_n_s32(0x402353F8u), v177), vdupq_n_s32(0x405D4FDFu), v180));
  sub_10001358C(v416, -0.69813, xmmword_1000EC910);
  v183 = sub_100013568(v416);
  v493 = 1;
  *(v2 + 2304) = 0x409CCCCD3FD9999ALL;
  *(v2 + 2312) = 1048576000;
  *(v2 + 2316) = 0;
  *(v2 + 2317) = v498;
  *(v2 + 2319) = v499;
  *(v2 + 2320) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v376, v183.n128_f32[0]), v350, v183.n128_u64[0], 1), v331, v183, 2), v311, v183, 3);
  *(v2 + 2336) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v376, v184.f32[0]), v350, *v184.f32, 1), v331, v184, 2), v311, v184, 3);
  *(v2 + 2352) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v376, v185.f32[0]), v350, *v185.f32, 1), v331, v185, 2), v311, v185, 3);
  *(v2 + 2368) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v376, v186.f32[0]), v350, *v186.f32, 1), v331, v186, 2), v311, v186, 3);
  *(v2 + 2384) = xmmword_1000F05B0;
  *(v2 + 2400) = 1;
  v187 = v496;
  *(v2 + 2403) = v497;
  *(v2 + 2401) = v187;
  *(v2 + 2404) = 1100480512;
  *(v2 + 2408) = 9;
  *(v2 + 2409) = v494;
  *(v2 + 2411) = v495;
  *(v2 + 2412) = 1065353216;
  *(v2 + 2416) = 0;
  *(v2 + 2424) = 0u;
  *(v2 + 2440) = v493;
  *(v2 + 2441) = 3;
  *(v2 + 2443) = 1;
  *(v2 + 2480) = 0;
  *(v2 + 2464) = 0u;
  *(v2 + 2448) = 0u;
  *(v2 + 2484) = 1065353216;
  *(v2 + 2496) = xmmword_1000EF5A0;
  v188 = *algn_10013DCB0;
  v189 = vmulq_f32(xmmword_10013DCA0, 0);
  v190 = vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBE6B851E));
  v191 = xmmword_10013DCC0;
  v192 = xmmword_10013DCD0;
  v332 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  v293 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v189), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v2 + 2512) = 6;
  v262 = vmlaq_f32(vaddq_f32(v191, vmlaq_f32(v189, 0, v188)), 0, v192);
  v377 = vdupq_n_s32(0xBF8E147B);
  v252 = vaddq_f32(v192, vmlaq_f32(vmlaq_f32(v190, vdupq_n_s32(0x3F0CCCCDu), v188), v377, v191));
  sub_10001358C(v417, 1.5708, xmmword_1000EC910);
  v193 = sub_100013568(v417);
  v351 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v332, v193.n128_f32[0]), v293, v193.n128_u64[0], 1), v262, v193, 2), v252, v193, 3);
  v312 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v332, v194.f32[0]), v293, *v194.f32, 1), v262, v194, 2), v252, v194, 3);
  v277 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v332, v195.f32[0]), v293, *v195.f32, 1), v262, v195, 2), v252, v195, 3);
  v253 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v332, v196.f32[0]), v293, *v196.f32, 1), v262, v196, 2), v252, v196, 3);
  sub_10001358C(v418, -3.4034, xmmword_1000EC8E0);
  v197 = sub_100013568(v418);
  v294 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v351, v198.f32[0]), v312, *v198.f32, 1), v277, v198, 2), v253, v198, 3);
  v263 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v351, v199.f32[0]), v312, *v199.f32, 1), v277, v199, 2), v253, v199, 3);
  v333 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v351, v197.n128_f32[0]), v312, v197.n128_u64[0], 1), v277, v197, 2), v253, v197, 3);
  v352 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v351, v200.f32[0]), v312, *v200.f32, 1), v277, v200, 2), v253, v200, 3);
  sub_10001358C(v419, 1.5708, xmmword_1000EC920);
  v201 = sub_100013568(v419);
  v500 = 1;
  *(v2 + 2528) = 0x3FD9999A3FCCCCCDLL;
  *(v2 + 2536) = 1056964608;
  *(v2 + 2540) = 1;
  *(v2 + 2541) = v505;
  *(v2 + 2543) = v506;
  *(v2 + 2544) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v333, v201.n128_f32[0]), v294, v201.n128_u64[0], 1), v263, v201, 2), v352, v201, 3);
  *(v2 + 2560) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v333, v202.f32[0]), v294, *v202.f32, 1), v263, v202, 2), v352, v202, 3);
  *(v2 + 2576) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v333, v203.f32[0]), v294, *v203.f32, 1), v263, v203, 2), v352, v203, 3);
  *(v2 + 2592) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v333, v204.f32[0]), v294, *v204.f32, 1), v263, v204, 2), v352, v204, 3);
  *(v2 + 2608) = xmmword_1000F02C0;
  *(v2 + 2624) = 0;
  v205 = v503;
  *(v2 + 2627) = v504;
  *(v2 + 2625) = v205;
  *(v2 + 2628) = 1049582633;
  *(v2 + 2632) = 9;
  *(v2 + 2633) = v501;
  *(v2 + 2635) = v502;
  *(v2 + 2636) = 1065353216;
  *(v2 + 2640) = 0;
  *(v2 + 2648) = 0u;
  *(v2 + 2664) = v500;
  *(v2 + 2665) = 2;
  *(v2 + 2667) = 1;
  *(v2 + 2704) = 0;
  *(v2 + 2688) = 0u;
  *(v2 + 2672) = 0u;
  *(v2 + 2708) = 1065353216;
  *(v2 + 2720) = xmmword_1000EF5C0;
  v206 = *algn_10013DCB0;
  v207 = vmulq_f32(xmmword_10013DCA0, 0);
  v208 = xmmword_10013DCC0;
  v209 = xmmword_10013DCD0;
  v210 = vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBECCCCCC));
  v313 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, xmmword_10013DCD0);
  *(v2 + 2736) = 6;
  v278 = vmlaq_f32(vmlaq_f32(vaddq_f32(v206, v207), 0, v208), 0, v209);
  v264 = vmlaq_f32(vaddq_f32(v208, vmlaq_f32(v207, 0, v206)), 0, v209);
  v378 = vaddq_f32(v209, vmlaq_f32(vmlaq_f32(v210, vdupq_n_s32(0xBF51EB85), v206), v377, v208));
  sub_10001358C(v420, 1.5708, xmmword_1000EC910);
  v211 = sub_100013568(v420);
  v334 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v313, v212.f32[0]), v278, *v212.f32, 1), v264, v212, 2), v378, v212, 3);
  v353 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v313, v211.n128_f32[0]), v278, v211.n128_u64[0], 1), v264, v211, 2), v378, v211, 3);
  v295 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v313, v213.f32[0]), v278, *v213.f32, 1), v264, v213, 2), v378, v213, 3);
  v314 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v313, v214.f32[0]), v278, *v214.f32, 1), v264, v214, 2), v378, v214, 3);
  sub_10001358C(v421, -2.2864, xmmword_1000EC8E0);
  v215 = sub_100013568(v421);
  v386 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v353, v216.f32[0]), v334, *v216.f32, 1), v295, v216, 2), v314, v216, 3);
  v387 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v353, v215.n128_f32[0]), v334, v215.n128_u64[0], 1), v295, v215, 2), v314, v215, 3);
  v379 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v353, v217.f32[0]), v334, *v217.f32, 1), v295, v217, 2), v314, v217, 3);
  v354 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v353, v218.f32[0]), v334, *v218.f32, 1), v295, v218, 2), v314, v218, 3);
  sub_10001358C(v422, 1.5708, xmmword_1000EC920);
  v219 = sub_100013568(v422);
  v507 = 1;
  *(v2 + 2752) = 0x3F4CCCCD3FEA3D71;
  *(v2 + 2760) = 1065353216;
  *(v2 + 2764) = 1;
  *(v2 + 2765) = v512;
  *(v2 + 2767) = v513;
  *(v2 + 2768) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v387, v219.n128_f32[0]), v386, v219.n128_u64[0], 1), v379, v219, 2), v354, v219, 3);
  *(v2 + 2784) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v387, v220.f32[0]), v386, *v220.f32, 1), v379, v220, 2), v354, v220, 3);
  *(v2 + 2800) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v387, v221.f32[0]), v386, *v221.f32, 1), v379, v221, 2), v354, v221, 3);
  *(v2 + 2816) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v387, v222.f32[0]), v386, *v222.f32, 1), v379, v222, 2), v354, v222, 3);
  *(v2 + 2832) = xmmword_1000F05C0;
  *(v2 + 2848) = 0;
  v223 = v510;
  *(v2 + 2851) = v511;
  *(v2 + 2849) = v223;
  *(v2 + 2852) = 1050253722;
  *(v2 + 2856) = 9;
  *(v2 + 2857) = v508;
  *(v2 + 2859) = v509;
  *(v2 + 2860) = 1065353216;
  *(v2 + 2864) = 0;
  *(v2 + 2872) = 0u;
  *(v2 + 2888) = v507;
  *(v2 + 2889) = 2;
  *(v2 + 2891) = 1;
  *(v2 + 2928) = 0;
  *(v2 + 2912) = 0u;
  *(v2 + 2896) = 0u;
  *(v2 + 2932) = 1065353216;
  v224 = sub_1000A0774(v2);
  swift_setDeallocating();
  sub_1000125FC(&qword_100131018, &qword_1000F1D70);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1000125FC(&qword_100131020, &qword_1000F1D78);
  v225 = swift_allocObject();
  v225[1] = xmmword_1000ED250;
  v225[2] = xmmword_1000F05D0;
  v225[3] = xmmword_1000F05E0;
  v225[4] = xmmword_1000F05F0;
  v226 = swift_allocObject();
  v226[1] = xmmword_1000EC880;
  v226[2] = xmmword_1000F0600;
  v226[3] = xmmword_1000F0610;
  v227 = swift_allocObject();
  v227[1] = xmmword_1000EC880;
  v227[2] = xmmword_1000F0620;
  v227[3] = xmmword_1000F0630;
  sub_1000125FC(&qword_100131028, &qword_1000F1D80);
  v228 = swift_allocObject();
  *(v228 + 16) = xmmword_1000EC880;
  *(v228 + 32) = swift_getKeyPath();
  *(v228 + 40) = 1066695393;
  *(v228 + 44) = 0;
  *(v228 + 48) = 1068960317;
  *(v228 + 52) = 0;
  *(v228 + 56) = 0;
  *(v228 + 60) = 1;
  *(v228 + 64) = swift_getKeyPath();
  strcpy((v228 + 72), "ffƿ");
  *(v228 + 80) = -1078439444;
  *(v228 + 84) = 0;
  *(v228 + 88) = 1050253722;
  *(v228 + 92) = 1;
  sub_1000125FC(&qword_100131030, &qword_1000F1DD8);
  v229 = swift_allocObject();
  *(v229 + 16) = xmmword_1000EC880;
  *(v229 + 32) = swift_getKeyPath();
  v230 = vnegq_f32(xmmword_100130FE0);
  v231 = vtrn2q_s32(xmmword_100130FE0, vtrn1q_s32(xmmword_100130FE0, v230));
  v388 = vdupq_n_s32(0x3CA3CBDBu);
  v384 = vdupq_n_s32(0xBCA3CBDB);
  v232 = vmlaq_f32(vmulq_f32(vextq_s8(xmmword_100130FE0, v230, 8uLL), v388), v384, vextq_s8(v231, v231, 8uLL));
  v233 = vrev64q_s32(xmmword_100130FE0);
  v233.i32[0] = v230.i32[1];
  v233.i32[3] = v230.i32[2];
  v380 = vdupq_n_s32(0x3F7FE5CBu);
  v355 = vdupq_n_s32(0xB9D1AFEE);
  *(v229 + 48) = vaddq_f32(vmlaq_f32(vmulq_f32(xmmword_100130FE0, v380), v355, v233), v232);
  *(v229 + 64) = swift_getKeyPath();
  v234 = vnegq_f32(xmmword_100130FF0);
  v235 = vtrn2q_s32(xmmword_100130FF0, vtrn1q_s32(xmmword_100130FF0, v234));
  v236 = vmlaq_f32(vmulq_f32(vextq_s8(xmmword_100130FF0, v234, 8uLL), v384), v388, vextq_s8(v235, v235, 8uLL));
  v237 = vrev64q_s32(xmmword_100130FF0);
  v237.i32[0] = v234.i32[1];
  v237.i32[3] = v234.i32[2];
  *(v229 + 80) = vaddq_f32(vmlaq_f32(vmulq_f32(xmmword_100130FF0, v380), v355, v237), v236);
  sub_1000125FC(&qword_100131038, &qword_1000F1E30);
  v238 = swift_allocObject();
  *(v238 + 16) = xmmword_1000ED250;
  *(v238 + 40) = 0;
  *(v238 + 32) = 0;
  *(v238 + 48) = 9;
  *(v238 + 52) = 0;
  *(v238 + 56) = 1;
  *(v238 + 60) = 0;
  *(v238 + 64) = 1;
  *(v238 + 68) = 1036831949;
  *(v238 + 72) = 1;
  *(v238 + 80) = xmmword_1000EF5A0;
  *(v238 + 96) = 0;
  *(v238 + 100) = 0;
  *(v238 + 104) = 1;
  *(v238 + 108) = 0;
  *(v238 + 112) = 1;
  *(v238 + 116) = 1036831949;
  *(v238 + 120) = 1;
  *(v238 + 128) = xmmword_1000EF5C0;
  *(v238 + 144) = 9;
  *(v238 + 148) = 0;
  *(v238 + 152) = 1;
  *(v238 + 156) = 0;
  *(v238 + 160) = 1;
  *(v238 + 164) = 1053273620;
  *(v238 + 168) = 1;
  v388.i64[0] = sub_1000A092C(v238);
  swift_setDeallocating();
  sub_1000125FC(&qword_100131040, &qword_1000F1E38);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v239 = sub_1000A0A98(_swiftEmptyArrayStorage);
  swift_bridgeObjectRetain_n();
  v241 = sub_1000C1928(v240, v224);

  sub_1000C53DC(v241, v516);
  v243 = sub_1000C199C(v242, v224);

  sub_1000C53DC(v243, v514);
  xmmword_10013BAD0 = xmmword_1000F0640;
  unk_10013BAE0 = v358;
  qword_10013BAF0 = 0x3E27EF9E3FC33333;
  dword_10013BAF8 = 1004888130;
  xmmword_10013BB00 = xmmword_1000F0650;
  unk_10013BB10 = v357;
  qword_10013BB20 = 0x3E8624DD400CBC6ALL;
  dword_10013BB28 = 1004888130;
  xmmword_10013BB30 = v356;
  qword_10013BB40 = v0;
  xmmword_10013BB50 = xmmword_1000F0660;
  qword_10013BB60 = 0x3CA3D70A40266666;
  dword_10013BB68 = 1000593162;
  dword_10013BB6C = v1;
  dword_10013BB70 = 1092565546;
  qword_10013BB78 = 0x3E2E147BBC23D70ALL;
  qword_10013BB80 = v224;
  qword_10013BBA8 = v517;
  unk_10013BB98 = v516[1];
  unk_10013BB88 = v516[0];
  xmmword_10013BBB0 = v514[0];
  unk_10013BBC0 = v514[1];
  qword_10013BBD0 = v515;
  qword_10013BBD8 = sub_100057EAC;
  qword_10013BBE0 = 0;
  xmmword_10013BBF0 = xmmword_1000F0670;
  unk_10013BC00 = xmmword_1000F0680;
  qword_10013BC10 = v225;
  word_10013BC1C = 3;
  dword_10013BC18 = 0;
  xmmword_10013BC20 = xmmword_1000EFB10;
  qword_10013BC30 = v226;
  xmmword_10013BC38 = xmmword_1000F0690;
  xmmword_10013BC48 = xmmword_1000F06A0;
  qword_10013BC58 = 1062589910;
  unk_10013BC60 = v227;
  xmmword_10013BC68 = xmmword_1000F06B0;
  xmmword_10013BC78 = xmmword_1000F06C0;
  qword_10013BC88 = 1063774184;
  xmmword_10013BC90 = xmmword_1000F06D0;
  qword_10013BCA0 = v228;
  unk_10013BCA8 = v229;
  qword_10013BCB0 = v388.i64[0];
  unk_10013BCB8 = v239;
  qword_10013BCC0 = _swiftEmptyArrayStorage;
  unk_10013BCC8 = _swiftEmptyArrayStorage;
  result = 46976199.9;
  qword_10013BCD0 = 0x418666663F000000;
  return result;
}