id framework_log(uint64_t a1)
{
  if (framework_log_onceToken[0] != -1)
  {
    framework_log_cold_1();
  }

  v2 = framework_log___logger;

  return v2;
}

uint64_t __framework_log_block_invoke()
{
  framework_log___logger = os_log_create("com.apple.ProductKit", "Framework");

  return MEMORY[0x2821F96F8]();
}

id PKAdjustmentFiltersForAssetTypeAndURL(int a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v3 error:0];

  if (v5)
  {
    if (a1 == 1 || a1 == 2)
    {
      CFDictionaryGetTypeID();
      v6 = CFDictionaryGetTypedValue();
    }

    else
    {
      v6 = 0;
    }

    v26 = 0;
    CFDictionaryGetDouble();
    v8 = v7;
    v9 = objc_alloc(MEMORY[0x277CD9EA0]);
    v10 = [v9 initWithType:*MEMORY[0x277CDA2C0]];
    v18 = v8;
    v19 = *(MEMORY[0x277CD9DA0] + 4);
    v20 = *(MEMORY[0x277CD9DA0] + 20);
    v21 = v8;
    v22 = *(MEMORY[0x277CD9DA0] + 28);
    v23 = *(MEMORY[0x277CD9DA0] + 44);
    v24 = v8;
    *v25 = *(MEMORY[0x277CD9DA0] + 52);
    *&v25[12] = *(MEMORY[0x277CD9DA0] + 64);
    v11 = [MEMORY[0x277CCAE60] valueWithCAColorMatrix:&v18];
    [v10 setValue:v11 forKey:@"inputColorMatrix"];

    [v4 addObject:v10];
    CFDictionaryGetDouble();
    if (!v26)
    {
      v13 = v12;
      v14 = objc_alloc(MEMORY[0x277CD9EA0]);
      v15 = [v14 initWithType:*MEMORY[0x277CDA270]];
      v16 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
      [v15 setValue:v16 forKey:@"inputAmount"];

      [v4 addObject:v15];
    }
  }

  return v4;
}

id PKPlaybackTimeRangesFromFeaturesTimeURL(void *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_new();
  [MEMORY[0x277CBEA60] arrayWithContentsOfURL:v1 error:0];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = v21 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v19 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v17 = 0;
      CFDictionaryGetDouble();
      if (v17)
      {
        break;
      }

      v9 = v8;
      CFDictionaryGetDouble();
      if (v17)
      {
        break;
      }

      v11 = v10;
      memset(&v16, 0, sizeof(v16));
      CMTimeMakeWithSeconds(&v14.start, v9, 1000);
      CMTimeMakeWithSeconds(&duration, v11, 1000);
      CMTimeRangeMake(&v16, &v14.start, &duration);
      v14 = v16;
      v12 = [MEMORY[0x277CCAE60] valueWithCMTimeRange:&v14];
      [v2 addObject:v12];

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return v2;
}

void sub_260E06968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id a25)
{
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a25);
  _Unwind_Resume(a1);
}

uint64_t iosmacHardware.Model.init(rawValue:)@<X0>(__int16 *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE53E80, &qword_260E6AB90);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_260E6AB80;
  *(v3 + 32) = "iMac13,1";
  *(v3 + 40) = 8;
  *(v3 + 48) = 2;
  *(v3 + 56) = "iMac13,2";
  *(v3 + 64) = 8;
  *(v3 + 72) = 2;
  *(v3 + 80) = "iMac13,3";
  *(v3 + 88) = 8;
  *(v3 + 96) = 2;
  *(v3 + 104) = "iMac14,1";
  *(v3 + 112) = 8;
  *(v3 + 120) = 2;
  *(v3 + 128) = "iMac14,2";
  *(v3 + 136) = 8;
  *(v3 + 144) = 2;
  *(v3 + 152) = "iMac14,3";
  *(v3 + 160) = 8;
  *(v3 + 168) = 2;
  *(v3 + 176) = "iMac14,4";
  *(v3 + 184) = 8;
  *(v3 + 192) = 2;
  *(v3 + 200) = "iMac15,1";
  *(v3 + 208) = 8;
  *(v3 + 216) = 2;
  *(v3 + 224) = "iMac16,1";
  *(v3 + 232) = 8;
  *(v3 + 240) = 2;
  *(v3 + 248) = "iMac16,2";
  *(v3 + 256) = 8;
  *(v3 + 264) = 2;
  *(v3 + 272) = "iMac17,1";
  *(v3 + 280) = 8;
  *(v3 + 288) = 2;
  *(v3 + 296) = "iMac18,1";
  *(v3 + 304) = 8;
  *(v3 + 312) = 2;
  *(v3 + 320) = "iMac18,2";
  *(v3 + 328) = 8;
  *(v3 + 336) = 2;
  *(v3 + 344) = "iMac18,3";
  *(v3 + 352) = 8;
  *(v3 + 360) = 2;
  *(v3 + 368) = "iMac19,1";
  *(v3 + 376) = 8;
  *(v3 + 384) = 2;
  *(v3 + 392) = "iMac19,2";
  *(v3 + 400) = 8;
  *(v3 + 408) = 2;
  *(v3 + 416) = "iMac20,1";
  *(v3 + 424) = 8;
  *(v3 + 432) = 2;
  *(v3 + 440) = "iMac20,2";
  *(v3 + 448) = 8;
  *(v3 + 456) = 2;
  *(v3 + 464) = "iMac21,1";
  *(v3 + 472) = 8;
  *(v3 + 480) = 2;
  *(v3 + 488) = "Mac15,4";
  *(v3 + 496) = 7;
  *(v3 + 504) = 2;
  *(v3 + 512) = "Mac15,5";
  *(v3 + 520) = 7;
  *(v3 + 528) = 2;
  *(v3 + 536) = "iMac21,2";
  *(v3 + 544) = 8;
  *(v3 + 552) = 2;
  *(v3 + 560) = "iMacPro1,1";
  *(v3 + 568) = 10;
  *(v3 + 576) = 2;
  *(v3 + 584) = "iPad1,1";
  *(v3 + 592) = 7;
  *(v3 + 600) = 2;
  *(v3 + 608) = "iPad2,1";
  *(v3 + 616) = 7;
  *(v3 + 624) = 2;
  *(v3 + 632) = "iPad2,2";
  *(v3 + 640) = 7;
  *(v3 + 648) = 2;
  *(v3 + 656) = "iPad2,3";
  *(v3 + 664) = 7;
  *(v3 + 672) = 2;
  *(v3 + 680) = "iPad2,4";
  *(v3 + 688) = 7;
  *(v3 + 696) = 2;
  *(v3 + 704) = "iPad2,5";
  *(v3 + 712) = 7;
  *(v3 + 720) = 2;
  *(v3 + 728) = "iPad2,6";
  *(v3 + 736) = 7;
  *(v3 + 744) = 2;
  *(v3 + 752) = "iPad2,7";
  *(v3 + 760) = 7;
  *(v3 + 768) = 2;
  *(v3 + 776) = "iPad3,1";
  *(v3 + 784) = 7;
  *(v3 + 792) = 2;
  *(v3 + 800) = "iPad3,2";
  *(v3 + 808) = 7;
  *(v3 + 816) = 2;
  *(v3 + 824) = "iPad3,3";
  *(v3 + 832) = 7;
  *(v3 + 840) = 2;
  *(v3 + 848) = "iPad3,4";
  *(v3 + 856) = 7;
  *(v3 + 864) = 2;
  *(v3 + 872) = "iPad3,5";
  *(v3 + 880) = 7;
  *(v3 + 888) = 2;
  *(v3 + 896) = "iPad3,6";
  *(v3 + 904) = 7;
  *(v3 + 912) = 2;
  *(v3 + 920) = "iPad4,1";
  *(v3 + 928) = 7;
  *(v3 + 936) = 2;
  *(v3 + 944) = "iPad4,2";
  *(v3 + 952) = 7;
  *(v3 + 960) = 2;
  *(v3 + 968) = "iPad4,3";
  *(v3 + 976) = 7;
  *(v3 + 984) = 2;
  *(v3 + 992) = "iPad4,4";
  *(v3 + 1000) = 7;
  *(v3 + 1008) = 2;
  *(v3 + 1016) = "iPad4,5";
  *(v3 + 1024) = 7;
  *(v3 + 1032) = 2;
  *(v3 + 1040) = "iPad4,6";
  *(v3 + 1048) = 7;
  *(v3 + 1056) = 2;
  *(v3 + 1064) = "iPad4,7";
  *(v3 + 1072) = 7;
  *(v3 + 1080) = 2;
  *(v3 + 1088) = "iPad4,8";
  *(v3 + 1096) = 7;
  *(v3 + 1104) = 2;
  *(v3 + 1112) = "iPad4,9";
  *(v3 + 1120) = 7;
  *(v3 + 1128) = 2;
  *(v3 + 1136) = "iPad5,1";
  *(v3 + 1144) = 7;
  *(v3 + 1152) = 2;
  *(v3 + 1160) = "iPad5,2";
  *(v3 + 1168) = 7;
  *(v3 + 1176) = 2;
  *(v3 + 1184) = "iPad5,3";
  *(v3 + 1192) = 7;
  *(v3 + 1200) = 2;
  *(v3 + 1208) = "iPad5,4";
  *(v3 + 1216) = 7;
  *(v3 + 1224) = 2;
  *(v3 + 1232) = "iPad6,3";
  *(v3 + 1240) = 7;
  *(v3 + 1248) = 2;
  *(v3 + 1256) = "iPad6,4";
  *(v3 + 1264) = 7;
  *(v3 + 1272) = 2;
  *(v3 + 1280) = "iPad6,7";
  *(v3 + 1288) = 7;
  *(v3 + 1296) = 2;
  *(v3 + 1304) = "iPad6,8";
  *(v3 + 1312) = 7;
  *(v3 + 1320) = 2;
  *(v3 + 1328) = "iPad6,11";
  *(v3 + 1336) = 8;
  *(v3 + 1344) = 2;
  *(v3 + 1352) = "iPad6,12";
  *(v3 + 1360) = 8;
  *(v3 + 1368) = 2;
  *(v3 + 1376) = "iPad7,1";
  *(v3 + 1384) = 7;
  *(v3 + 1392) = 2;
  *(v3 + 1400) = "iPad7,2";
  *(v3 + 1408) = 7;
  *(v3 + 1416) = 2;
  *(v3 + 1424) = "iPad7,3";
  *(v3 + 1432) = 7;
  *(v3 + 1440) = 2;
  *(v3 + 1448) = "iPad7,4";
  *(v3 + 1456) = 7;
  *(v3 + 1464) = 2;
  *(v3 + 1472) = "iPad7,5";
  *(v3 + 1480) = 7;
  *(v3 + 1488) = 2;
  *(v3 + 1496) = "iPad7,6";
  *(v3 + 1504) = 7;
  *(v3 + 1512) = 2;
  *(v3 + 1520) = "iPad7,11";
  *(v3 + 1528) = 8;
  *(v3 + 1536) = 2;
  *(v3 + 1544) = "iPad7,12";
  *(v3 + 1552) = 8;
  *(v3 + 1560) = 2;
  *(v3 + 1568) = "iPad8,1";
  *(v3 + 1576) = 7;
  *(v3 + 1584) = 2;
  *(v3 + 1592) = "iPad8,2";
  *(v3 + 1600) = 7;
  *(v3 + 1608) = 2;
  *(v3 + 1616) = "iPad8,3";
  *(v3 + 1624) = 7;
  *(v3 + 1632) = 2;
  *(v3 + 1640) = "iPad8,4";
  *(v3 + 1648) = 7;
  *(v3 + 1656) = 2;
  *(v3 + 1664) = "iPad8,5";
  *(v3 + 1672) = 7;
  *(v3 + 1680) = 2;
  *(v3 + 1688) = "iPad8,6";
  *(v3 + 1696) = 7;
  *(v3 + 1712) = "iPad8,7";
  *(v3 + 1736) = "iPad8,8";
  *(v3 + 1760) = "iPad8,9";
  *(v3 + 1784) = "iPad8,10";
  *(v3 + 1808) = "iPad8,11";
  *(v3 + 1832) = "iPad8,12";
  *(v3 + 1856) = "iPad11,1";
  *(v3 + 1880) = "iPad11,2";
  *(v3 + 1904) = "iPad11,3";
  *(v3 + 1928) = "iPad11,4";
  *(v3 + 1952) = "iPad11,6";
  *(v3 + 1976) = "iPad11,7";
  *(v3 + 2000) = "iPad12,1";
  *(v3 + 2024) = "iPad12,2";
  *(v3 + 2288) = "iPad13,16";
  *(v3 + 2384) = "iPad14,1";
  *(v3 + 2480) = "iPad14,5";
  *(v3 + 2576) = "iPad16,5";
  *(v3 + 2672) = "iPad14,10";
  *(v3 + 2768) = "iPad15,3";
  *(v3 + 2864) = "iPad15,7";
  *(v3 + 2960) = "iPhone2,1";
  *(v3 + 3056) = "iPhone4,1";
  *(v3 + 3152) = "iPhone5,4";
  *(v3 + 3248) = "iPhone7,2";
  *(v3 + 3344) = "iPhone9,1";
  *(v3 + 3584) = "iPhone11,2";
  *(v3 + 3680) = "iPhone12,1";
  *(v3 + 3776) = "iPhone13,1";
  *(v3 + 3872) = "iPhone14,2";
  *(v3 + 3968) = "iPhone14,6";
  *(v3 + 4064) = "iPhone15,3";
  *(v3 + 4160) = "iPhone16,2";
  *(v3 + 4256) = "iPhone17,2";
  *(v3 + 4352) = "iPod3,1";
  *(v3 + 4448) = "iPod9,1";
  *(v3 + 4544) = "Mac14,14";
  *(v3 + 4640) = "MacBook8,1";
  *(v3 + 4832) = "MacBookAir7,1";
  *(v3 + 4816) = 13;
  *(v3 + 4824) = 2;
  *(v3 + 1704) = 2;
  *(v3 + 4808) = "MacBookAir6,2";
  *(v3 + 4792) = 13;
  *(v3 + 4800) = 2;
  *(v3 + 4760) = "MacBookAir5,2";
  *(v3 + 4768) = 13;
  *(v3 + 4776) = 2;
  *(v3 + 4784) = "MacBookAir6,1";
  *(v3 + 4728) = 2;
  *(v3 + 4736) = "MacBookAir5,1";
  *(v3 + 4744) = 13;
  *(v3 + 4752) = 2;
  *(v3 + 4672) = 10;
  *(v3 + 4704) = 2;
  *(v3 + 4712) = "MacBookAir3,1";
  *(v3 + 4720) = 13;
  *(v3 + 4680) = 2;
  *(v3 + 4688) = "MacBook10,1";
  *(v3 + 4696) = 11;
  *(v3 + 1720) = 7;
  *(v3 + 4664) = "MacBook9,1";
  *(v3 + 4648) = 10;
  *(v3 + 4656) = 2;
  *(v3 + 4616) = "Mac14,15";
  *(v3 + 4608) = 2;
  *(v3 + 4624) = 8;
  *(v3 + 4632) = 2;
  *(v3 + 4592) = "Mac14,7";
  *(v3 + 4576) = 7;
  *(v3 + 4584) = 2;
  *(v3 + 4600) = 7;
  *(v3 + 1728) = 2;
  *(v3 + 4568) = "Mac14,2";
  *(v3 + 4552) = 8;
  *(v3 + 4560) = 2;
  *(v3 + 4520) = "Mac14,13";
  *(v3 + 4512) = 2;
  *(v3 + 4528) = 8;
  *(v3 + 4536) = 2;
  *(v3 + 4496) = "Mac13,2";
  *(v3 + 4480) = 7;
  *(v3 + 4488) = 2;
  *(v3 + 4504) = 7;
  *(v3 + 1744) = 7;
  *(v3 + 4472) = "Mac13,1";
  *(v3 + 4456) = 7;
  *(v3 + 4464) = 2;
  *(v3 + 4424) = "iPod7,1";
  *(v3 + 4416) = 2;
  *(v3 + 4432) = 7;
  *(v3 + 4440) = 2;
  *(v3 + 4400) = "iPod5,1";
  *(v3 + 4384) = 7;
  *(v3 + 4392) = 2;
  *(v3 + 4408) = 7;
  *(v3 + 1752) = 2;
  *(v3 + 4376) = "iPod4,1";
  *(v3 + 4360) = 7;
  *(v3 + 4368) = 2;
  *(v3 + 4328) = "iPod2,1";
  *(v3 + 4320) = 2;
  *(v3 + 4336) = 7;
  *(v3 + 4344) = 2;
  *(v3 + 4304) = "iPod1,1";
  *(v3 + 4288) = 10;
  *(v3 + 4296) = 2;
  *(v3 + 4312) = 7;
  *(v3 + 1768) = 7;
  *(v3 + 4280) = "iPhone17,5";
  *(v3 + 4264) = 10;
  *(v3 + 4272) = 2;
  *(v3 + 4232) = "iPhone17,1";
  *(v3 + 4224) = 2;
  *(v3 + 4240) = 10;
  *(v3 + 4248) = 2;
  *(v3 + 4208) = "iPhone17,4";
  *(v3 + 4192) = 10;
  *(v3 + 4200) = 2;
  *(v3 + 4216) = 10;
  *(v3 + 1776) = 2;
  *(v3 + 4184) = "iPhone17,3";
  *(v3 + 4168) = 10;
  *(v3 + 4176) = 2;
  *(v3 + 4136) = "iPhone16,1";
  *(v3 + 4128) = 2;
  *(v3 + 4144) = 10;
  *(v3 + 4152) = 2;
  *(v3 + 4112) = "iPhone15,5";
  *(v3 + 4096) = 10;
  *(v3 + 4104) = 2;
  *(v3 + 4120) = 10;
  *(v3 + 1792) = 8;
  *(v3 + 4088) = "iPhone15,4";
  *(v3 + 4072) = 10;
  *(v3 + 4080) = 2;
  *(v3 + 4040) = "iPhone15,2";
  *(v3 + 4032) = 2;
  *(v3 + 4048) = 10;
  *(v3 + 4056) = 2;
  *(v3 + 4016) = "iPhone14,8";
  *(v3 + 4000) = 10;
  *(v3 + 4008) = 2;
  *(v3 + 4024) = 10;
  *(v3 + 1800) = 2;
  *(v3 + 3992) = "iPhone14,7";
  *(v3 + 3976) = 10;
  *(v3 + 3984) = 2;
  *(v3 + 3944) = "iPhone14,5";
  *(v3 + 3936) = 2;
  *(v3 + 3952) = 10;
  *(v3 + 3960) = 2;
  *(v3 + 3920) = "iPhone14,4";
  *(v3 + 3904) = 10;
  *(v3 + 3912) = 2;
  *(v3 + 3928) = 10;
  *(v3 + 1816) = 8;
  *(v3 + 3896) = "iPhone14,3";
  *(v3 + 3880) = 10;
  *(v3 + 3888) = 2;
  *(v3 + 3848) = "iPhone13,4";
  *(v3 + 3840) = 2;
  *(v3 + 3856) = 10;
  *(v3 + 3864) = 2;
  *(v3 + 3824) = "iPhone13,3";
  *(v3 + 3808) = 10;
  *(v3 + 3816) = 2;
  *(v3 + 3832) = 10;
  *(v3 + 1824) = 2;
  *(v3 + 3800) = "iPhone13,2";
  *(v3 + 3784) = 10;
  *(v3 + 3792) = 2;
  *(v3 + 3752) = "iPhone12,8";
  *(v3 + 3744) = 2;
  *(v3 + 3760) = 10;
  *(v3 + 3768) = 2;
  *(v3 + 3728) = "iPhone12,5";
  *(v3 + 3712) = 10;
  *(v3 + 3720) = 2;
  *(v3 + 3736) = 10;
  *(v3 + 1840) = 8;
  *(v3 + 3704) = "iPhone12,3";
  *(v3 + 3688) = 10;
  *(v3 + 3696) = 2;
  *(v3 + 3656) = "iPhone11,8";
  *(v3 + 3648) = 2;
  *(v3 + 3664) = 10;
  *(v3 + 3672) = 2;
  *(v3 + 3632) = "iPhone11,6";
  *(v3 + 3616) = 10;
  *(v3 + 3624) = 2;
  *(v3 + 3640) = 10;
  *(v3 + 1848) = 2;
  *(v3 + 3608) = "iPhone11,4";
  *(v3 + 3592) = 10;
  *(v3 + 3600) = 2;
  *(v3 + 3560) = "iPhone10,6";
  *(v3 + 3552) = 2;
  *(v3 + 3568) = 10;
  *(v3 + 3576) = 2;
  *(v3 + 3536) = "iPhone10,5";
  *(v3 + 3520) = 10;
  *(v3 + 3528) = 2;
  *(v3 + 3544) = 10;
  *(v3 + 1864) = 8;
  *(v3 + 3512) = "iPhone10,4";
  *(v3 + 3496) = 10;
  *(v3 + 3504) = 2;
  *(v3 + 3464) = "iPhone10,2";
  *(v3 + 3472) = 10;
  *(v3 + 3480) = 2;
  *(v3 + 3488) = "iPhone10,3";
  *(v3 + 3440) = "iPhone10,1";
  *(v3 + 3448) = 10;
  *(v3 + 3456) = 2;
  *(v3 + 3416) = "iPhone9,4";
  *(v3 + 3408) = 2;
  *(v3 + 3424) = 9;
  *(v3 + 3432) = 2;
  *(v3 + 3392) = "iPhone9,3";
  *(v3 + 3376) = 9;
  *(v3 + 3384) = 2;
  *(v3 + 3400) = 9;
  *(v3 + 1872) = 2;
  *(v3 + 3368) = "iPhone9,2";
  *(v3 + 3352) = 9;
  *(v3 + 3360) = 2;
  *(v3 + 3320) = "iPhone8,4";
  *(v3 + 3312) = 2;
  *(v3 + 3328) = 9;
  *(v3 + 3336) = 2;
  *(v3 + 3296) = "iPhone8,2";
  *(v3 + 3280) = 9;
  *(v3 + 3288) = 2;
  *(v3 + 3304) = 9;
  *(v3 + 1888) = 8;
  *(v3 + 3272) = "iPhone8,1";
  *(v3 + 3256) = 9;
  *(v3 + 3264) = 2;
  *(v3 + 3224) = "iPhone7,1";
  *(v3 + 3216) = 2;
  *(v3 + 3232) = 9;
  *(v3 + 3240) = 2;
  *(v3 + 3200) = "iPhone6,2";
  *(v3 + 3184) = 9;
  *(v3 + 3192) = 2;
  *(v3 + 3208) = 9;
  *(v3 + 1896) = 2;
  *(v3 + 3176) = "iPhone6,1";
  *(v3 + 3160) = 9;
  *(v3 + 3168) = 2;
  *(v3 + 3128) = "iPhone5,3";
  *(v3 + 3120) = 2;
  *(v3 + 3136) = 9;
  *(v3 + 3144) = 2;
  *(v3 + 3104) = "iPhone5,2";
  *(v3 + 3088) = 9;
  *(v3 + 3096) = 2;
  *(v3 + 3112) = 9;
  *(v3 + 1912) = 8;
  *(v3 + 3080) = "iPhone5,1";
  *(v3 + 3064) = 9;
  *(v3 + 3072) = 2;
  *(v3 + 3032) = "iPhone3,3";
  *(v3 + 3024) = 2;
  *(v3 + 3040) = 9;
  *(v3 + 3048) = 2;
  *(v3 + 3008) = "iPhone3,2";
  *(v3 + 2992) = 9;
  *(v3 + 3000) = 2;
  *(v3 + 3016) = 9;
  *(v3 + 1920) = 2;
  *(v3 + 2984) = "iPhone3,1";
  *(v3 + 2968) = 9;
  *(v3 + 2976) = 2;
  *(v3 + 2936) = "iPhone1,2";
  *(v3 + 2928) = 2;
  *(v3 + 2944) = 9;
  *(v3 + 2952) = 2;
  *(v3 + 2912) = "iPhone1,1";
  *(v3 + 2896) = 8;
  *(v3 + 2904) = 2;
  *(v3 + 2920) = 9;
  *(v3 + 1936) = 8;
  *(v3 + 2888) = "iPad15,8";
  *(v3 + 2872) = 8;
  *(v3 + 2880) = 2;
  *(v3 + 2840) = "iPad15,6";
  *(v3 + 2832) = 2;
  *(v3 + 2848) = 8;
  *(v3 + 2856) = 2;
  *(v3 + 2816) = "iPad15,5";
  *(v3 + 2800) = 8;
  *(v3 + 2808) = 2;
  *(v3 + 2824) = 8;
  *(v3 + 1944) = 2;
  *(v3 + 2792) = "iPad15,4";
  *(v3 + 2776) = 8;
  *(v3 + 2784) = 2;
  *(v3 + 2744) = "iPad16,2";
  *(v3 + 2736) = 2;
  *(v3 + 2752) = 8;
  *(v3 + 2760) = 2;
  *(v3 + 2720) = "iPad16,1";
  *(v3 + 2704) = 9;
  *(v3 + 2712) = 2;
  *(v3 + 2728) = 8;
  *(v3 + 1960) = 8;
  *(v3 + 2696) = "iPad14,11";
  *(v3 + 2680) = 9;
  *(v3 + 2688) = 2;
  *(v3 + 2648) = "iPad14,9";
  *(v3 + 2640) = 2;
  *(v3 + 2656) = 8;
  *(v3 + 2664) = 2;
  *(v3 + 2624) = "iPad14,8";
  *(v3 + 2608) = 8;
  *(v3 + 2616) = 2;
  *(v3 + 2632) = 8;
  *(v3 + 1968) = 2;
  *(v3 + 2600) = "iPad16,6";
  *(v3 + 2584) = 8;
  *(v3 + 2592) = 2;
  *(v3 + 2552) = "iPad16,4";
  *(v3 + 2544) = 2;
  *(v3 + 2560) = 8;
  *(v3 + 2568) = 2;
  *(v3 + 2528) = "iPad16,3";
  *(v3 + 2512) = 8;
  *(v3 + 2520) = 2;
  *(v3 + 2536) = 8;
  *(v3 + 1984) = 8;
  *(v3 + 2504) = "iPad14,6";
  *(v3 + 2488) = 8;
  *(v3 + 2496) = 2;
  *(v3 + 2456) = "iPad14,4";
  *(v3 + 2448) = 2;
  *(v3 + 2464) = 8;
  *(v3 + 2472) = 2;
  *(v3 + 2432) = "iPad14,3";
  *(v3 + 2416) = 8;
  *(v3 + 2424) = 2;
  *(v3 + 2440) = 8;
  *(v3 + 1992) = 2;
  *(v3 + 2408) = "iPad14,2";
  *(v3 + 2392) = 8;
  *(v3 + 2400) = 2;
  *(v3 + 2360) = "iPad13,19";
  *(v3 + 2352) = 2;
  *(v3 + 2368) = 9;
  *(v3 + 2376) = 2;
  *(v3 + 2336) = "iPad13,18";
  *(v3 + 2320) = 9;
  *(v3 + 2328) = 2;
  *(v3 + 2344) = 9;
  *(v3 + 2008) = 8;
  *(v3 + 2312) = "iPad13,17";
  *(v3 + 2296) = 9;
  *(v3 + 2304) = 2;
  *(v3 + 2264) = "iPad13,11";
  *(v3 + 2256) = 2;
  *(v3 + 2272) = 9;
  *(v3 + 2280) = 2;
  *(v3 + 2240) = "iPad13,10";
  *(v3 + 2224) = 8;
  *(v3 + 2232) = 2;
  *(v3 + 2248) = 9;
  *(v3 + 2016) = 2;
  *(v3 + 2216) = "iPad13,9";
  *(v3 + 2200) = 8;
  *(v3 + 2208) = 2;
  *(v3 + 2168) = "iPad13,7";
  *(v3 + 2176) = 8;
  *(v3 + 2184) = 2;
  *(v3 + 2192) = "iPad13,8";
  *(v3 + 2136) = 2;
  *(v3 + 2144) = "iPad13,6";
  *(v3 + 2152) = 8;
  *(v3 + 2160) = 2;
  *(v3 + 2104) = 8;
  *(v3 + 2112) = 2;
  *(v3 + 2120) = "iPad13,5";
  *(v3 + 2128) = 8;
  *(v3 + 2032) = 8;
  *(v3 + 2080) = 8;
  *(v3 + 2088) = 2;
  *(v3 + 2096) = "iPad13,4";
  *(v3 + 2048) = "iPad13,1";
  *(v3 + 2056) = 8;
  *(v3 + 2064) = 2;
  *(v3 + 2072) = "iPad13,2";
  *(v3 + 2040) = 2;
  *(v3 + 4840) = 13;
  *(v3 + 4848) = 2;
  *(v3 + 4856) = "MacBookAir7,2";
  *(v3 + 4864) = 13;
  *(v3 + 4872) = 2;
  *(v3 + 4880) = "MacBookAir8,1";
  *(v3 + 4888) = 13;
  *(v3 + 4896) = 2;
  *(v3 + 4904) = "MacBookAir8,2";
  *(v3 + 4912) = 13;
  *(v3 + 4920) = 2;
  *(v3 + 4928) = "MacBookAir9,1";
  *(v3 + 4936) = 13;
  *(v3 + 4944) = 2;
  *(v3 + 4952) = "MacBookAir10,1";
  *(v3 + 4960) = 14;
  *(v3 + 4968) = 2;
  *(v3 + 4976) = "MacBookPro9,1";
  *(v3 + 4984) = 13;
  *(v3 + 4992) = 2;
  *(v3 + 5000) = "MacBookPro9,2";
  *(v3 + 5008) = 13;
  *(v3 + 5016) = 2;
  *(v3 + 5024) = "MacBookPro10,1";
  *(v3 + 5032) = 14;
  *(v3 + 5040) = 2;
  *(v3 + 5048) = "MacBookPro10,2";
  *(v3 + 5056) = 14;
  *(v3 + 5064) = 2;
  *(v3 + 5072) = "MacBookPro11,1";
  *(v3 + 5080) = 14;
  *(v3 + 5088) = 2;
  *(v3 + 5096) = "MacBookPro11,2";
  *(v3 + 5104) = 14;
  *(v3 + 5112) = 2;
  *(v3 + 5120) = "MacBookPro11,3";
  *(v3 + 5128) = 14;
  *(v3 + 5136) = 2;
  *(v3 + 5144) = "MacBookPro11,4";
  *(v3 + 5152) = 14;
  *(v3 + 5160) = 2;
  *(v3 + 5168) = "MacBookPro11,5";
  *(v3 + 5176) = 14;
  *(v3 + 5184) = 2;
  *(v3 + 5192) = "MacBookPro12,1";
  *(v3 + 5200) = 14;
  *(v3 + 5208) = 2;
  *(v3 + 5216) = "MacBookPro13,1";
  *(v3 + 5224) = 14;
  *(v3 + 5232) = 2;
  *(v3 + 5240) = "MacBookPro13,2";
  *(v3 + 5248) = 14;
  *(v3 + 5256) = 2;
  *(v3 + 5264) = "MacBookPro13,3";
  *(v3 + 5272) = 14;
  *(v3 + 5280) = 2;
  *(v3 + 5288) = "MacBookPro14,1";
  *(v3 + 5296) = 14;
  *(v3 + 5304) = 2;
  *(v3 + 5312) = "MacBookPro14,2";
  *(v3 + 5320) = 14;
  *(v3 + 5328) = 2;
  *(v3 + 5336) = "MacBookPro14,3";
  *(v3 + 5344) = 14;
  *(v3 + 5352) = 2;
  *(v3 + 5360) = "MacBookPro15,1";
  *(v3 + 5368) = 14;
  *(v3 + 5376) = 2;
  *(v3 + 5384) = "MacBookPro15,2";
  *(v3 + 5392) = 14;
  *(v3 + 5400) = 2;
  *(v3 + 5408) = "MacBookPro15,3";
  *(v3 + 5416) = 14;
  *(v3 + 5424) = 2;
  *(v3 + 5432) = "MacBookPro15,4";
  *(v3 + 5440) = 14;
  *(v3 + 5448) = 2;
  *(v3 + 5456) = "MacBookPro16,1";
  *(v3 + 5464) = 14;
  *(v3 + 5472) = 2;
  *(v3 + 5480) = "MacBookPro16,2";
  *(v3 + 5488) = 14;
  *(v3 + 5496) = 2;
  *(v3 + 5504) = "MacBookPro16,3";
  *(v3 + 5512) = 14;
  *(v3 + 5520) = 2;
  *(v3 + 5528) = "MacBookPro16,4";
  *(v3 + 5536) = 14;
  *(v3 + 5544) = 2;
  *(v3 + 5552) = "MacBookPro17,1";
  *(v3 + 5560) = 14;
  *(v3 + 5568) = 2;
  *(v3 + 5576) = "MacBookPro18,1";
  *(v3 + 5584) = 14;
  *(v3 + 5592) = 2;
  *(v3 + 5600) = "MacBookPro18,2";
  *(v3 + 5608) = 14;
  *(v3 + 5616) = 2;
  *(v3 + 5624) = "MacBookPro18,3";
  *(v3 + 5632) = 14;
  *(v3 + 5640) = 2;
  *(v3 + 5648) = "MacBookPro18,4";
  *(v3 + 5656) = 14;
  *(v3 + 5664) = 2;
  *(v3 + 5672) = "Macmini6,1";
  *(v3 + 5680) = 10;
  *(v3 + 5688) = 2;
  *(v3 + 5696) = "Macmini6,2";
  *(v3 + 5704) = 10;
  *(v3 + 5712) = 2;
  *(v3 + 5720) = "Macmini7,1";
  *(v3 + 5728) = 10;
  *(v3 + 5736) = 2;
  *(v3 + 5744) = "Macmini8,1";
  *(v3 + 5752) = 10;
  *(v3 + 5760) = 2;
  *(v3 + 5768) = "Macmini9,1";
  *(v3 + 5776) = 10;
  *(v3 + 5784) = 2;
  *(v3 + 5792) = "MacPro5,1";
  *(v3 + 5800) = 9;
  *(v3 + 5808) = 2;
  *(v3 + 5816) = "MacPro6,1";
  *(v3 + 5824) = 9;
  *(v3 + 5832) = 2;
  *(v3 + 5840) = "MacPro7,1";
  *(v3 + 5848) = 9;
  *(v3 + 5856) = 2;
  *(v3 + 5864) = "Mac14,8";
  *(v3 + 5872) = 7;
  *(v3 + 5880) = 2;
  *(v3 + 5888) = "VirtualMac2,1";
  *(v3 + 5896) = 13;
  *(v3 + 5904) = 2;
  *(v3 + 5912) = "Mac14,3";
  *(v3 + 5920) = 7;
  *(v3 + 5928) = 2;
  *(v3 + 5936) = "Mac14,12";
  *(v3 + 5944) = 8;
  *(v3 + 5952) = 2;
  *(v3 + 5960) = "Mac14,5";
  *(v3 + 5968) = 7;
  *(v3 + 5976) = 2;
  *(v3 + 5984) = "Mac14,6";
  *(v3 + 5992) = 7;
  *(v3 + 6000) = 2;
  *(v3 + 6008) = "Mac14,9";
  *(v3 + 6016) = 7;
  *(v3 + 6024) = 2;
  *(v3 + 6032) = "Mac14,10";
  *(v3 + 6040) = 8;
  *(v3 + 6048) = 2;
  *(v3 + 6056) = "Mac15,3";
  *(v3 + 6064) = 7;
  *(v3 + 6072) = 2;
  *(v3 + 6080) = "Mac15,8";
  *(v3 + 6088) = 7;
  *(v3 + 6096) = 2;
  *(v3 + 6104) = "Mac15,6";
  *(v3 + 6112) = 7;
  *(v3 + 6120) = 2;
  *(v3 + 6128) = "Mac15,10";
  *(v3 + 6136) = 8;
  *(v3 + 6144) = 2;
  *(v3 + 6152) = "Mac15,9";
  *(v3 + 6160) = 7;
  *(v3 + 6168) = 2;
  *(v3 + 6176) = "Mac15,7";
  *(v3 + 6184) = 7;
  *(v3 + 6192) = 2;
  *(v3 + 6200) = "Mac15,11";
  *(v3 + 6208) = 8;
  *(v3 + 6216) = 2;
  *(v3 + 6224) = "Mac15,12";
  *(v3 + 6232) = 8;
  *(v3 + 6240) = 2;
  *(v3 + 6248) = "Mac15,13";
  *(v3 + 6256) = 8;
  *(v3 + 6264) = 2;
  *(v3 + 6272) = "Mac16,1";
  *(v3 + 6280) = 7;
  *(v3 + 6288) = 2;
  *(v3 + 6296) = "Mac16,2";
  *(v3 + 6304) = 7;
  *(v3 + 6312) = 2;
  *(v3 + 6320) = "Mac16,3";
  *(v3 + 6328) = 7;
  *(v3 + 6336) = 2;
  *(v3 + 6344) = "Mac16,10";
  *(v3 + 6352) = 8;
  *(v3 + 6360) = 2;
  *(v3 + 6368) = "Mac16,11";
  *(v3 + 6376) = 8;
  *(v3 + 6384) = 2;
  *(v3 + 6392) = "Mac16,9";
  *(v3 + 6400) = 7;
  *(v3 + 6408) = 2;
  *(v3 + 6416) = "Mac15,14";
  *(v3 + 6424) = 8;
  *(v3 + 6432) = 2;
  *(v3 + 6440) = "Mac16,12";
  *(v3 + 6448) = 8;
  *(v3 + 6456) = 2;
  *(v3 + 6464) = "Mac16,13";
  *(v3 + 6472) = 8;
  *(v3 + 6480) = 2;
  *(v3 + 6488) = "Mac16,6";
  *(v3 + 6496) = 7;
  *(v3 + 6504) = 2;
  *(v3 + 6512) = "Mac16,8";
  *(v3 + 6520) = 7;
  *(v3 + 6528) = 2;
  *(v3 + 6536) = "Mac16,5";
  *(v3 + 6544) = 7;
  *(v3 + 6552) = 2;
  *(v3 + 6560) = "Mac16,7";
  *(v3 + 6568) = 7;
  *(v3 + 6576) = 2;
  *(v3 + 6584) = "RealityDevice14,1";
  *(v3 + 6592) = 17;
  *(v3 + 6600) = 2;
  *(v3 + 6608) = "RealityDevice17,1";
  *(v3 + 6616) = 17;
  *(v3 + 6624) = 2;
  *(v3 + 6632) = "iPhone";
  *(v3 + 6640) = 6;
  *(v3 + 6648) = 2;
  *(v3 + 6656) = "iPad";
  *(v3 + 6664) = 4;
  *(v3 + 6672) = 2;
  *(v3 + 6680) = "iPad mini";
  *(v3 + 6688) = 9;
  *(v3 + 6696) = 2;
  *(v3 + 6704) = "iPod";
  *(v3 + 6712) = 4;
  *(v3 + 6720) = 2;
  *(v3 + 6728) = "MacBook Pro";
  *(v3 + 6736) = 11;
  *(v3 + 6744) = 2;
  *(v3 + 6752) = "MacBook Air";
  *(v3 + 6760) = 11;
  *(v3 + 6768) = 2;
  *(v3 + 6776) = "Mac Pro";
  *(v3 + 6784) = 7;
  *(v3 + 6792) = 2;
  *(v3 + 6800) = "iMac Pro";
  *(v3 + 6808) = 8;
  *(v3 + 6816) = 2;
  *(v3 + 6824) = "iMac";
  *(v3 + 6832) = 4;
  *(v3 + 6840) = 2;
  *(v3 + 6848) = "Mac mini";
  *(v3 + 6856) = 8;
  *(v3 + 6864) = 2;
  *(v3 + 6872) = "Mac Studio";
  *(v3 + 6880) = 10;
  *(v3 + 6888) = 2;
  v4 = sub_260E69764();

  v6 = v4 - 128;
  if (v4 < 0x80)
  {
    goto LABEL_6;
  }

  if (v6 < 0x40)
  {
    LOWORD(v4) = v6 | 0x80;
LABEL_6:
    v7 = v4;
    goto LABEL_7;
  }

  if (v4 - 192 < 0x40)
  {
    LOWORD(v4) = (v4 - 192) | 0xC0;
    goto LABEL_6;
  }

  v8 = v4 - 256;
  v7 = 268;
  LOWORD(v4) = 256;
  switch(v8)
  {
    case 0uLL:
      goto LABEL_6;
    case 1uLL:
      LOWORD(v4) = 257;
      goto LABEL_6;
    case 2uLL:
      LOWORD(v4) = 258;
      goto LABEL_6;
    case 3uLL:
      LOWORD(v4) = 259;
      goto LABEL_6;
    case 4uLL:
      LOWORD(v4) = 260;
      goto LABEL_6;
    case 5uLL:
      LOWORD(v4) = 261;
      goto LABEL_6;
    case 6uLL:
      LOWORD(v4) = 262;
      goto LABEL_6;
    case 7uLL:
      LOWORD(v4) = 263;
      goto LABEL_6;
    case 8uLL:
      LOWORD(v4) = 264;
      goto LABEL_6;
    case 9uLL:
      LOWORD(v4) = 265;
      goto LABEL_6;
    case 0xAuLL:
      LOWORD(v4) = 266;
      goto LABEL_6;
    case 0xBuLL:
      LOWORD(v4) = 267;
      goto LABEL_6;
    case 0xCuLL:
      break;
    case 0xDuLL:
      v7 = 269;
      break;
    case 0xEuLL:
      v7 = 270;
      break;
    case 0xFuLL:
      v7 = 271;
      break;
    case 0x10uLL:
      v7 = 272;
      break;
    case 0x11uLL:
      v7 = 273;
      break;
    case 0x12uLL:
      v7 = 274;
      break;
    case 0x13uLL:
      v7 = 275;
      break;
    case 0x14uLL:
      v7 = 276;
      break;
    case 0x15uLL:
      v7 = 277;
      break;
    case 0x16uLL:
      v7 = 278;
      break;
    case 0x17uLL:
      v7 = 279;
      break;
    case 0x18uLL:
      v7 = 280;
      break;
    case 0x19uLL:
      v7 = 281;
      break;
    case 0x1AuLL:
      v7 = 282;
      break;
    case 0x1BuLL:
      v7 = 283;
      break;
    case 0x1CuLL:
      v7 = 284;
      break;
    case 0x1DuLL:
      v7 = 285;
      break;
    default:
      v7 = 286;
      break;
  }

LABEL_7:
  *a2 = v7;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t iosmacHardware.Model.rawValue.getter()
{
  result = 0x312C333163614D69;
  switch(*v0)
  {
    case 1:
      return 0x322C333163614D69;
    case 2:
      return 0x332C333163614D69;
    case 3:
      v18 = 1667321193;
      return v18 | 0x312C343100000000;
    case 4:
      return 0x322C343163614D69;
    case 5:
      v2 = 1667321193;
      return v2 | 0x332C343100000000;
    case 6:
      return 0x342C343163614D69;
    case 7:
      return 0x312C353163614D69;
    case 8:
      v13 = 1667321193;
      return v13 | 0x312C363100000000;
    case 9:
      return 0x322C363163614D69;
    case 0xA:
      return 0x312C373163614D69;
    case 0xB:
      return 0x312C383163614D69;
    case 0xC:
      return 0x322C383163614D69;
    case 0xD:
      return 0x332C383163614D69;
    case 0xE:
      return 0x312C393163614D69;
    case 0xF:
      return 0x322C393163614D69;
    case 0x10:
      return 0x312C303263614D69;
    case 0x11:
      return 0x322C303263614D69;
    case 0x12:
      return 0x312C313263614D69;
    case 0x13:
      return 0x342C353163614DLL;
    case 0x14:
      return 0x352C353163614DLL;
    case 0x15:
      return 0x322C313263614D69;
    case 0x16:
      return 0x316F725063614D69;
    case 0x17:
      return 0x312C3164615069;
    case 0x18:
      return 0x312C3264615069;
    case 0x19:
      return 0x322C3264615069;
    case 0x1A:
      return 0x332C3264615069;
    case 0x1B:
      return 0x342C3264615069;
    case 0x1C:
      return 0x352C3264615069;
    case 0x1D:
      return 0x362C3264615069;
    case 0x1E:
      return 0x372C3264615069;
    case 0x1F:
      return 0x312C3364615069;
    case 0x20:
      return 0x322C3364615069;
    case 0x21:
      return 0x332C3364615069;
    case 0x22:
      return 0x342C3364615069;
    case 0x23:
      return 0x352C3364615069;
    case 0x24:
      return 0x362C3364615069;
    case 0x25:
      return 0x312C3464615069;
    case 0x26:
      return 0x322C3464615069;
    case 0x27:
      v6 = 1684099177;
      return v6 | 0x332C3400000000;
    case 0x28:
      return 0x342C3464615069;
    case 0x29:
      v15 = 1684099177;
      return v15 | 0x352C3400000000;
    case 0x2A:
      return 0x362C3464615069;
    case 0x2B:
      v17 = 1684099177;
      return v17 | 0x372C3400000000;
    case 0x2C:
      v14 = 1684099177;
      return v14 | 0x382C3400000000;
    case 0x2D:
      v3 = 1684099177;
      return v3 | 0x392C3400000000;
    case 0x2E:
      return 0x312C3564615069;
    case 0x2F:
      return 0x322C3564615069;
    case 0x30:
      v4 = 1684099177;
      return v4 | 0x332C3500000000;
    case 0x31:
      return 0x342C3564615069;
    case 0x32:
      return 0x332C3664615069;
    case 0x33:
      return 0x342C3664615069;
    case 0x34:
      return 0x372C3664615069;
    case 0x35:
      return 0x382C3664615069;
    case 0x36:
      v11 = 1684099177;
      return v11 | 0x31312C3600000000;
    case 0x37:
      v9 = 1684099177;
      goto LABEL_162;
    case 0x38:
      return 0x312C3764615069;
    case 0x39:
      return 0x322C3764615069;
    case 0x3A:
      return 0x332C3764615069;
    case 0x3B:
      return 0x342C3764615069;
    case 0x3C:
      return 0x352C3764615069;
    case 0x3D:
      return 0x362C3764615069;
    case 0x3E:
      return 0x31312C3764615069;
    case 0x3F:
      return 0x32312C3764615069;
    case 0x40:
      return 0x312C3864615069;
    case 0x41:
      return 0x322C3864615069;
    case 0x42:
      return 0x332C3864615069;
    case 0x43:
      return 0x342C3864615069;
    case 0x44:
      return 0x352C3864615069;
    case 0x45:
      return 0x362C3864615069;
    case 0x46:
      return 0x372C3864615069;
    case 0x47:
      return 0x382C3864615069;
    case 0x48:
      return 0x392C3864615069;
    case 0x49:
      return 0x30312C3864615069;
    case 0x4A:
      return 0x31312C3864615069;
    case 0x4B:
      return 0x32312C3864615069;
    case 0x4C:
      return 0x312C313164615069;
    case 0x4D:
      return 0x322C313164615069;
    case 0x4E:
      return 0x332C313164615069;
    case 0x4F:
      return 0x342C313164615069;
    case 0x50:
      return 0x362C313164615069;
    case 0x51:
      return 0x372C313164615069;
    case 0x52:
      return 0x312C323164615069;
    case 0x53:
      return 0x322C323164615069;
    case 0x54:
      return 0x312C333164615069;
    case 0x55:
      return 0x322C333164615069;
    case 0x56:
      return 0x342C333164615069;
    case 0x57:
      return 0x352C333164615069;
    case 0x58:
      return 0x362C333164615069;
    case 0x59:
      return 0x372C333164615069;
    case 0x5A:
      return 0x382C333164615069;
    case 0x5B:
      return 0x392C333164615069;
    case 0x5C:
      v5 = 0x333164615069;
      return v5 & 0xFFFFFFFFFFFFLL | 0x312C000000000000;
    case 0x5D:
      v16 = 0x333164615069;
      return v16 & 0xFFFFFFFFFFFFLL | 0x312C000000000000;
    case 0x5E:
      return 0x312C333164615069;
    case 0x5F:
      return 0x312C333164615069;
    case 0x60:
      return 0x312C333164615069;
    case 0x61:
      return 0x312C333164615069;
    case 0x62:
      v18 = 1684099177;
      return v18 | 0x312C343100000000;
    case 0x63:
      return 0x322C343164615069;
    case 0x64:
      v2 = 1684099177;
      return v2 | 0x332C343100000000;
    case 0x65:
      return 0x342C343164615069;
    case 0x66:
      return 0x352C343164615069;
    case 0x67:
      return 0x362C343164615069;
    case 0x68:
      return 0x332C363164615069;
    case 0x69:
      return 0x342C363164615069;
    case 0x6A:
      return 0x352C363164615069;
    case 0x6B:
      return 0x362C363164615069;
    case 0x6C:
      return 0x382C343164615069;
    case 0x6D:
      return 0x392C343164615069;
    case 0x6E:
      v5 = 0x343164615069;
      return v5 & 0xFFFFFFFFFFFFLL | 0x312C000000000000;
    case 0x6F:
      v16 = 0x343164615069;
      return v16 & 0xFFFFFFFFFFFFLL | 0x312C000000000000;
    case 0x70:
      v13 = 1684099177;
      return v13 | 0x312C363100000000;
    case 0x71:
      return 0x322C363164615069;
    case 0x72:
      return 0x332C353164615069;
    case 0x73:
      return 0x342C353164615069;
    case 0x74:
      return 0x352C353164615069;
    case 0x75:
      return 0x362C353164615069;
    case 0x76:
      return 0x372C353164615069;
    case 0x77:
      return 0x382C353164615069;
    case 0x78:
      return 0x2C31656E6F685069;
    case 0x79:
      return 0x2C31656E6F685069;
    case 0x7A:
      return 0x2C32656E6F685069;
    case 0x7B:
      return 0x2C33656E6F685069;
    case 0x7C:
      return 0x2C33656E6F685069;
    case 0x7D:
      return 0x2C33656E6F685069;
    case 0x7E:
      return 0x2C34656E6F685069;
    case 0x7F:
      v12 = 0x656E6F685069;
      return v12 & 0xFFFFFFFFFFFFLL | 0x2C35000000000000;
    case 0x80:
      return 0x2C35656E6F685069;
    case 0x81:
      return 0x2C35656E6F685069;
    case 0x82:
      return 0x2C35656E6F685069;
    case 0x83:
      return 0x2C36656E6F685069;
    case 0x84:
      return 0x2C36656E6F685069;
    case 0x85:
      v8 = 0x656E6F685069;
      return v8 & 0xFFFFFFFFFFFFLL | 0x2C37000000000000;
    case 0x86:
      return 0x2C37656E6F685069;
    case 0x87:
      return 0x2C38656E6F685069;
    case 0x88:
      return 0x2C38656E6F685069;
    case 0x89:
      return 0x2C38656E6F685069;
    case 0x8A:
      return 0x2C39656E6F685069;
    case 0x8B:
      return 0x2C39656E6F685069;
    case 0x8C:
      return 0x2C39656E6F685069;
    case 0x8D:
      return 0x2C39656E6F685069;
    case 0x8E:
      return 0x3031656E6F685069;
    case 0x8F:
      return 0x3031656E6F685069;
    case 0x90:
      return 0x3031656E6F685069;
    case 0x91:
      return 0x3031656E6F685069;
    case 0x92:
      return 0x3031656E6F685069;
    case 0x93:
      return 0x3031656E6F685069;
    case 0x94:
      return 0x3131656E6F685069;
    case 0x95:
      return 0x3131656E6F685069;
    case 0x96:
      return 0x3131656E6F685069;
    case 0x97:
      return 0x3131656E6F685069;
    case 0x98:
      return 0x3231656E6F685069;
    case 0x99:
      return 0x3231656E6F685069;
    case 0x9A:
      return 0x3231656E6F685069;
    case 0x9B:
      return 0x3231656E6F685069;
    case 0x9C:
      return 0x3331656E6F685069;
    case 0x9D:
      return 0x3331656E6F685069;
    case 0x9E:
      return 0x3331656E6F685069;
    case 0x9F:
      return 0x3331656E6F685069;
    case 0xA0:
      return 0x3431656E6F685069;
    case 0xA1:
      return 0x3431656E6F685069;
    case 0xA2:
      return 0x3431656E6F685069;
    case 0xA3:
      return 0x3431656E6F685069;
    case 0xA4:
      return 0x3431656E6F685069;
    case 0xA5:
      return 0x3431656E6F685069;
    case 0xA6:
      return 0x3431656E6F685069;
    case 0xA7:
      return 0x3531656E6F685069;
    case 0xA8:
      return 0x3531656E6F685069;
    case 0xA9:
      return 0x3531656E6F685069;
    case 0xAA:
      return 0x3531656E6F685069;
    case 0xAB:
      return 0x3631656E6F685069;
    case 0xAC:
      return 0x3631656E6F685069;
    case 0xAD:
      return 0x3731656E6F685069;
    case 0xAE:
      return 0x3731656E6F685069;
    case 0xAF:
      return 0x3731656E6F685069;
    case 0xB0:
      return 0x3731656E6F685069;
    case 0xB1:
      return 0x3731656E6F685069;
    case 0xB2:
      v7 = 0x2C3164615069;
      return v7 & 0xFFFFFFF1FFFFLL | 0x310000000E0000;
    case 0xB3:
      v7 = 0x2C3264615069;
      return v7 & 0xFFFFFFF1FFFFLL | 0x310000000E0000;
    case 0xB4:
      v7 = 0x2C3364615069;
      return v7 & 0xFFFFFFF1FFFFLL | 0x310000000E0000;
    case 0xB5:
      v7 = 0x2C3464615069;
      return v7 & 0xFFFFFFF1FFFFLL | 0x310000000E0000;
    case 0xB6:
      v7 = 0x2C3564615069;
      return v7 & 0xFFFFFFF1FFFFLL | 0x310000000E0000;
    case 0xB7:
      v7 = 0x2C3764615069;
      return v7 & 0xFFFFFFF1FFFFLL | 0x310000000E0000;
    case 0xB8:
      return 0x312C39646F5069;
    case 0xB9:
      return 0x312C333163614DLL;
    case 0xBA:
      return 0x322C333163614DLL;
    case 0xBB:
      return 0x33312C343163614DLL;
    case 0xBC:
      return 0x34312C343163614DLL;
    case 0xBD:
      return 0x322C343163614DLL;
    case 0xBE:
      v17 = 828596557;
      return v17 | 0x372C3400000000;
    case 0xBF:
      return 0x35312C343163614DLL;
    case 0xC0:
      return 0x386B6F6F4263614DLL;
    case 0xC1:
      return 0x396B6F6F4263614DLL;
    case 0xC2:
      return 0x316B6F6F4263614DLL;
    case 0xC3:
      return 0x416B6F6F4263614DLL;
    case 0xC4:
      return 0x416B6F6F4263614DLL;
    case 0xC5:
      return 0x416B6F6F4263614DLL;
    case 0xC6:
      return 0x416B6F6F4263614DLL;
    case 0xC7:
      return 0x416B6F6F4263614DLL;
    case 0xC8:
      return 0x416B6F6F4263614DLL;
    case 0xC9:
      return 0x416B6F6F4263614DLL;
    case 0xCA:
      return 0x416B6F6F4263614DLL;
    case 0xCB:
      return 0x416B6F6F4263614DLL;
    case 0xCC:
      return 0x416B6F6F4263614DLL;
    case 0xCD:
      return 0x416B6F6F4263614DLL;
    case 0xCE:
      return 0x506B6F6F4263614DLL;
    case 0xCF:
    case 0xD1:
    case 0xD2:
    case 0xD3:
    case 0xD4:
    case 0xD5:
    case 0xD6:
    case 0xD7:
    case 0xD8:
    case 0xD9:
    case 0xDA:
    case 0xDB:
    case 0xDC:
    case 0xDD:
    case 0xDE:
    case 0xDF:
    case 0xE0:
    case 0xE1:
    case 0xE2:
    case 0xE3:
    case 0xE4:
    case 0xE5:
    case 0xE6:
    case 0xE7:
    case 0xE8:
    case 0xE9:
    case 0xEA:
      return 0x506B6F6F4263614DLL;
    case 0xD0:
      return 0x506B6F6F4263614DLL;
    case 0xEB:
      return 0x36696E696D63614DLL;
    case 0xEC:
      return 0x36696E696D63614DLL;
    case 0xED:
      return 0x37696E696D63614DLL;
    case 0xEE:
      return 0x38696E696D63614DLL;
    case 0xEF:
      return 0x39696E696D63614DLL;
    case 0xF0:
      v12 = 0x6F725063614DLL;
      return v12 & 0xFFFFFFFFFFFFLL | 0x2C35000000000000;
    case 0xF1:
      return 0x2C366F725063614DLL;
    case 0xF2:
      v8 = 0x6F725063614DLL;
      return v8 & 0xFFFFFFFFFFFFLL | 0x2C37000000000000;
    case 0xF3:
      v14 = 828596557;
      return v14 | 0x382C3400000000;
    case 0xF4:
      return 0x4D6C617574726956;
    case 0xF5:
      v6 = 828596557;
      return v6 | 0x332C3400000000;
    case 0xF6:
      return 0x32312C343163614DLL;
    case 0xF7:
      v15 = 828596557;
      return v15 | 0x352C3400000000;
    case 0xF8:
      return 0x362C343163614DLL;
    case 0xF9:
      v3 = 828596557;
      return v3 | 0x392C3400000000;
    case 0xFA:
      return 0x30312C343163614DLL;
    case 0xFB:
      v4 = 828596557;
      return v4 | 0x332C3500000000;
    case 0xFC:
      return 0x382C353163614DLL;
    case 0xFD:
      return 0x362C353163614DLL;
    case 0xFE:
      return 0x30312C353163614DLL;
    case 0xFF:
      v10 = 0x2C353163614DLL;
      goto LABEL_166;
    case 0x100:
      return 0x372C353163614DLL;
    case 0x101:
      return 0x31312C353163614DLL;
    case 0x102:
      return 0x32312C353163614DLL;
    case 0x103:
      return 0x33312C353163614DLL;
    case 0x104:
      return 0x312C363163614DLL;
    case 0x105:
      return 0x322C363163614DLL;
    case 0x106:
      return 0x332C363163614DLL;
    case 0x107:
      return 0x30312C363163614DLL;
    case 0x108:
      v11 = 828596557;
      return v11 | 0x31312C3600000000;
    case 0x109:
      v10 = 0x2C363163614DLL;
LABEL_166:
      result = v10 & 0xFFFFFFFFFFFFLL | 0x39000000000000;
      break;
    case 0x10A:
      result = 0x34312C353163614DLL;
      break;
    case 0x10B:
      v9 = 828596557;
LABEL_162:
      result = v9 | 0x32312C3600000000;
      break;
    case 0x10C:
      result = 0x33312C363163614DLL;
      break;
    case 0x10D:
      result = 0x362C363163614DLL;
      break;
    case 0x10E:
      result = 0x382C363163614DLL;
      break;
    case 0x10F:
      result = 0x352C363163614DLL;
      break;
    case 0x110:
      result = 0x372C363163614DLL;
      break;
    case 0x111:
    case 0x112:
      result = 0xD000000000000011;
      break;
    case 0x113:
      result = 0x656E6F685069;
      break;
    case 0x114:
      result = 1684099177;
      break;
    case 0x115:
      result = 0x6E696D2064615069;
      break;
    case 0x116:
      result = 1685016681;
      break;
    case 0x117:
    case 0x118:
      result = 0x206B6F6F4263614DLL;
      break;
    case 0x119:
      result = 0x6F72502063614DLL;
      break;
    case 0x11A:
      result = 0x6F72502063614D69;
      break;
    case 0x11B:
      result = 1667321193;
      break;
    case 0x11C:
      result = 0x696E696D2063614DLL;
      break;
    case 0x11D:
      result = 0x647574532063614DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_260E0AABC()
{
  v0 = iosmacHardware.Model.rawValue.getter();
  v2 = v1;
  if (v0 == iosmacHardware.Model.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_260E69834();
  }

  return v5 & 1;
}

uint64_t sub_260E0AB58()
{
  sub_260E698F4();
  iosmacHardware.Model.rawValue.getter();
  sub_260E690C4();

  return sub_260E69914();
}

uint64_t sub_260E0ABC0(uint64_t a1)
{
  iosmacHardware.Model.rawValue.getter();
  sub_260E690C4();
}

uint64_t sub_260E0AC24(uint64_t a1)
{
  sub_260E698F4();
  iosmacHardware.Model.rawValue.getter();
  sub_260E690C4();

  return sub_260E69914();
}

uint64_t sub_260E0AC94@<X0>(uint64_t *a1@<X8>)
{
  result = iosmacHardware.Model.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_260E0AD00@<X0>(uint64_t *a1@<X8>)
{
  result = iosmacHardware.Model.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_260E0AD70(uint64_t a1, id *a2)
{
  result = sub_260E69004();
  *a2 = 0;
  return result;
}

uint64_t sub_260E0ADE8(uint64_t a1, id *a2)
{
  v3 = sub_260E69014();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_260E0AE68@<X0>(uint64_t *a1@<X8>)
{
  sub_260E69024();
  v2 = sub_260E68FF4();

  *a1 = v2;
  return result;
}

uint64_t sub_260E0AEC0(uint64_t a1)
{
  v2 = sub_260E0BF2C(&qword_27FE546F0, type metadata accessor for CKError, &unk_260E6BB58);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_260E0AF2C(uint64_t a1)
{
  v2 = sub_260E0BF2C(&qword_27FE546F0, type metadata accessor for CKError, &unk_260E6BB58);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_260E0AF98(void *a1, uint64_t a2)
{
  v4 = sub_260E0BF2C(&qword_27FE546F0, type metadata accessor for CKError, &unk_260E6BB58);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_260E0B04C(uint64_t a1, uint64_t a2)
{
  v4 = sub_260E0BF2C(&qword_27FE546F0, type metadata accessor for CKError, &unk_260E6BB58);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_260E0B0C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_260E698F4();
  sub_260E68FB4();
  return sub_260E69914();
}

void *sub_260E0B128@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_260E0B13C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_260E69024();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_260E0B168(uint64_t a1)
{
  v2 = sub_260E0BF2C(&qword_27FE54370, type metadata accessor for LoadingOption, &unk_260E6BC68);
  v3 = sub_260E0BF2C(&unk_27FE54070, type metadata accessor for LoadingOption, &unk_260E6B6B8);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_260E0B224(uint64_t a1)
{
  v2 = sub_260E0BF2C(&qword_27FE54058, type metadata accessor for AnimationImportPolicy, &unk_260E6B82C);
  v3 = sub_260E0BF2C(&unk_27FE54060, type metadata accessor for AnimationImportPolicy, &unk_260E6B7CC);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_260E0B2E0(uint64_t a1)
{
  v2 = sub_260E0BF2C(&unk_27FE54310, type metadata accessor for SCNShaderModifierEntryPoint, &unk_260E6BCAC);
  v3 = sub_260E0BF2C(&qword_27FE54080, type metadata accessor for SCNShaderModifierEntryPoint, &unk_260E6B5A4);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_260E0B39C(uint64_t a1)
{
  v2 = sub_260E0BF2C(&qword_27FE53FF0, type metadata accessor for CKError, &unk_260E6BB14);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_260E0B408(uint64_t a1)
{
  v2 = sub_260E0BF2C(&qword_27FE53FF0, type metadata accessor for CKError, &unk_260E6BB14);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_260E0B478(uint64_t a1)
{
  v2 = sub_260E0BF2C(&qword_27FE546F0, type metadata accessor for CKError, &unk_260E6BB58);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_260E0B4E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_260E0BF2C(&qword_27FE546F0, type metadata accessor for CKError, &unk_260E6BB58);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_260E0B57C(uint64_t a1)
{
  v2 = sub_260E0BF2C(&qword_27FE54048, type metadata accessor for URLResourceKey, &unk_260E6B990);
  v3 = sub_260E0BF2C(&qword_27FE54050, type metadata accessor for URLResourceKey, &unk_260E6B930);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_260E0B638@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_260E68FF4();

  *a2 = v3;
  return result;
}

uint64_t sub_260E0B680(uint64_t a1)
{
  v2 = sub_260E0BF2C(&qword_27FE54088, type metadata accessor for CIContextOption, &unk_260E6BCF0);
  v3 = sub_260E0BF2C(&qword_27FE54090, type metadata accessor for CIContextOption, &unk_260E6B484);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_260E0B73C()
{
  v0 = sub_260E69024();
  v1 = MEMORY[0x2666F0C70](v0);

  return v1;
}

uint64_t sub_260E0B778(uint64_t a1)
{
  sub_260E69024();
  sub_260E690C4();
}

uint64_t sub_260E0B7CC(uint64_t a1)
{
  sub_260E69024();
  sub_260E698F4();
  sub_260E690C4();
  v1 = sub_260E69914();

  return v1;
}

uint64_t sub_260E0B840(void *a1, uint64_t *a2)
{
  v2 = sub_260E69024();
  v4 = v3;
  if (v2 == sub_260E69024() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_260E69834();
  }

  return v7 & 1;
}

unint64_t sub_260E0B8CC()
{
  result = qword_27FE53E88;
  if (!qword_27FE53E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE53E88);
  }

  return result;
}

unint64_t sub_260E0B924()
{
  result = qword_27FE53E90;
  if (!qword_27FE53E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE53E98, &qword_260E6AC38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE53E90);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t _s5ModelOwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFEE3)
  {
    goto LABEL_17;
  }

  if (a2 + 285 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 285 < 0xFF0000)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 16)) - 285;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 285;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 285;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11E;
  v8 = v6 - 286;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *_s5ModelOwst(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 285 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 285 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFEE3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFEE2)
  {
    v6 = ((a2 - 65251) >> 16) + 1;
    *result = a2 + 285;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_21;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_21:
    *result = a2 + 285;
    return result;
  }

  if (a2)
  {
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_260E0BB8C(uint64_t a1, int a2)
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

uint64_t sub_260E0BBAC(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for VideoViewFeatureTimings.Section(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for VideoViewFeatureTimings.Section(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SemanticVersion(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SemanticVersion(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

__n128 __swift_memcpy48_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_260E0BD00(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_260E0BD20(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_260E0BD90(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_260E0BDB0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 128) = v3;
  return result;
}

uint64_t sub_260E0BF2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_260E0C408(uint64_t a1, unint64_t *a2, uint64_t a3)
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

unint64_t sub_260E0C4A0()
{
  result = qword_27FE54018;
  if (!qword_27FE54018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54018);
  }

  return result;
}

uint64_t sub_260E0C694()
{
  v0 = sub_260E68E94();
  __swift_allocate_value_buffer(v0, qword_27FE54100);
  v1 = __swift_project_value_buffer(v0, qword_27FE54100);
  if (qword_27FE53E58 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FE5CB88);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_260E0C75C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_timeObserverToken;
  swift_beginAccess();
  sub_260E15684(v3 + v8, &aBlock, &qword_27FE542C8, &qword_260E6BFE0);
  if (v28)
  {
    sub_260E145CC(&aBlock, &v32);
    v9 = *(v3 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_player);
    __swift_project_boxed_opaque_existential_0(&v32, *(&v33 + 1));
    [v9 removeTimeObserver_];
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0(&v32);
  }

  else
  {
    sub_260E155E4(&aBlock, &qword_27FE542C8, &qword_260E6BFE0);
  }

  v31 = MEMORY[0x277D84F90];
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = objc_opt_self();
    v12 = (a1 + 32);
    do
    {
      v13 = v12[1];
      v32 = *v12;
      v33 = v13;
      v34 = v12[2];
      aBlock = v32;
      v27 = v13;
      v14 = [v11 valueWithCMTime_];
      MEMORY[0x2666F0CA0]();
      if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_260E691F4();
      }

      sub_260E69224();
      *&aBlock = sub_260E69424();
      *(&aBlock + 1) = v15;
      v27 = v16;
      v17 = [v11 valueWithCMTime_];
      MEMORY[0x2666F0CA0]();
      if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_260E691F4();
      }

      sub_260E69224();
      v12 += 3;
      --v10;
    }

    while (v10);
  }

  v18 = *(v4 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_player);
  sub_260E157C4(0, &qword_27FE542D0, 0x277CCAE60);
  v19 = sub_260E691A4();

  sub_260E157C4(0, &qword_27FE542D8, 0x277D85C78);
  v20 = sub_260E69494();
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = a1;
  v22[4] = a2;
  v22[5] = a3;
  v29 = sub_260E14538;
  v30 = v22;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v27 = sub_260E12B54;
  v28 = &block_descriptor_20;
  v23 = _Block_copy(&aBlock);

  v24 = [v18 addBoundaryTimeObserverForTimes:v19 queue:v20 usingBlock:v23];
  _Block_release(v23);

  sub_260E695C4();
  swift_unknownObjectRelease();
  swift_beginAccess();
  sub_260E1455C(&aBlock, v4 + v8);
  return swift_endAccess();
}

uint64_t sub_260E0CB54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = (v2 + OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_featureHandler);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  sub_260E145EC(a1, a2);
  result = sub_260E145DC(v7, v8);
  if (a1)
  {
    v10 = v3 + OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_configuration;
    swift_beginAccess();
    if (*(v10 + *(type metadata accessor for VideoViewConfiguration(0) + 44)))
    {
      v11 = sub_260E64640();
      v12 = *(v3 + OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_sceneDriver);
      if (v12)
      {
        v13 = v12;
        sub_260E0C75C(v11, a1, a2);
        sub_260E145DC(a1, a2);
      }

      else
      {
        sub_260E145DC(a1, a2);
      }
    }

    else
    {
      return sub_260E145DC(a1, a2);
    }
  }

  return result;
}

uint64_t (*sub_260E0CC7C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_featureHandler;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_260E0CD04;
}

void sub_260E0CD04(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = (v4 + v3[4]);
    v6 = *v5;
    if (*v5)
    {
      v7 = v5[1];
      v8 = v4 + OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_configuration;
      swift_beginAccess();
      if (*(v8 + *(type metadata accessor for VideoViewConfiguration(0) + 44)))
      {
        v9 = v3[3];

        v10 = sub_260E64640();
        v11 = *(v9 + OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_sceneDriver);
        if (v11)
        {
          v12 = v11;
          sub_260E0C75C(v10, v6, v7);
          sub_260E145DC(v6, v7);
        }

        else
        {
          sub_260E145DC(v6, v7);
        }
      }
    }
  }

  free(v3);
}

char *sub_260E0CE14(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_260E68904();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = &v1[OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_startedHandler];
  *v8 = 0;
  v8[1] = 0;
  v9 = &v1[OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_completedHandler];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v1[OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_featureHandler];
  *v10 = 0;
  v10[1] = 0;
  *&v1[OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_sceneDriver] = 0;
  v1[OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_hasSetUpSceneDriver] = 0;
  sub_260E145FC(a1, &v1[OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_configuration], type metadata accessor for VideoViewConfiguration);
  v11 = type metadata accessor for VideoViewConfiguration(0);
  if (*(a1 + *(v11 + 44)))
  {
    v54.m11 = *(a1 + *(v11 + 44));
    v12 = sub_260E64640();
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  *&v1[OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_playbackTimeRanges] = v12;
  v13 = [objc_allocWithZone(MEMORY[0x277CDBB20]) initWithFrame_];
  *&v1[OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_sceneView] = v13;
  (*(v5 + 16))(v7, a1 + *(v11 + 20), v4);
  Adjustments.init(fileURL:)(v7, &v54);
  m21_low = LOBYTE(v54.m21);
  v15 = &v1[OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_adjustments];
  v16 = *&v54.m13;
  *v15 = *&v54.m11;
  *(v15 + 1) = v16;
  v15[32] = m21_low;
  v56.receiver = v1;
  v56.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v56, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v18 = OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_sceneView;
  v19 = *&v17[OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_sceneView];
  v20 = objc_opt_self();
  v21 = v17;
  v22 = v19;
  v23 = [v20 clearColor];
  [v22 setBackgroundColor_];

  [*&v17[v18] setAntialiasingMode_];
  v24 = [*&v17[v18] layer];
  [v24 setMinificationFilter_];

  [*&v17[v18] setLoops_];
  [*&v17[v18] setRendersContinuously_];
  [*&v17[v18] setPreferredFramesPerSecond_];
  [*&v17[v18] setTranslatesAutoresizingMaskIntoConstraints_];
  [v21 addSubview_];
  v51 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54358, &unk_260E6FF30);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_260E6BDA0;
  v26 = [*&v17[v18] leadingAnchor];
  v27 = [v21 leadingAnchor];
  v52 = a1;
  v28 = v11;
  v29 = v27;
  v30 = [v26 constraintEqualToAnchor_];

  *(v25 + 32) = v30;
  v31 = [*&v17[v18] trailingAnchor];
  v32 = [v21 trailingAnchor];
  v33 = [v31 constraintEqualToAnchor_];

  *(v25 + 40) = v33;
  v34 = [*&v17[v18] topAnchor];
  v35 = [v21 topAnchor];
  v36 = [v34 constraintEqualToAnchor_];

  *(v25 + 48) = v36;
  v37 = v28;
  v38 = v52;
  v39 = [*&v17[v18] bottomAnchor];
  v40 = [v21 bottomAnchor];

  v41 = [v39 constraintEqualToAnchor_];
  *(v25 + 56) = v41;
  sub_260E157C4(0, &qword_27FE54378, 0x277CCAAD0);
  v42 = sub_260E691A4();

  [v51 activateConstraints_];

  if (*(v38 + *(v37 + 36)) != 0.0)
  {
    v43 = [v21 layer];
    CATransform3DMakeScale(&v54, 1.2, 1.2, 1.0);
    [v43 setTransform_];
  }

  v44 = v38 + *(v37 + 40);
  v45 = *(v44 + 112);
  *&v54.m41 = *(v44 + 96);
  *&v54.m43 = v45;
  v55 = *(v44 + 128);
  v46 = *(v44 + 48);
  *&v54.m21 = *(v44 + 32);
  *&v54.m23 = v46;
  v47 = *(v44 + 80);
  *&v54.m31 = *(v44 + 64);
  *&v54.m33 = v47;
  v48 = *(v44 + 16);
  *&v54.m11 = *v44;
  *&v54.m13 = v48;
  if (sub_260E1580C(&v54) != 1)
  {
    v49 = [v21 layer];
    v53 = v54;
    [v49 setTransform_];
  }

  sub_260E146C8(v38, type metadata accessor for VideoViewConfiguration);
  return v21;
}

unint64_t sub_260E0D468()
{
  v1 = sub_260E68904();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for VideoViewConfiguration.VideoSequence(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_260E145FC(v0 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_configuration, v7, type metadata accessor for VideoViewConfiguration.VideoSequence);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    if (qword_27FE53D90 != -1)
    {
      swift_once();
    }

    v17 = sub_260E68E94();
    __swift_project_value_buffer(v17, qword_27FE54100);
    v18 = sub_260E68E74();
    v19 = sub_260E69464();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_260E02000, v18, v19, "Asked to play feature video but no feature video available", v20, 2u);
      MEMORY[0x2666F1EF0](v20, -1, -1);
    }

    return sub_260E146C8(v7, type metadata accessor for VideoViewConfiguration.VideoSequence);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE542A0, &qword_260E6BFC0);
  (*(v2 + 32))(v4, &v7[*(v8 + 64)], v1);
  v9 = *(v0 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_player);
  v10 = [v9 items];
  sub_260E157C4(0, &qword_27FE542A8, 0x277CE65B0);
  v11 = sub_260E691B4();

  if (!(v11 >> 62))
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_4;
    }

LABEL_16:

    goto LABEL_17;
  }

  v12 = sub_260E69714();
  if (!v12)
  {
    goto LABEL_16;
  }

LABEL_4:
  v13 = __OFSUB__(v12, 1);
  result = v12 - 1;
  if (v13)
  {
    __break(1u);
    goto LABEL_19;
  }

  if ((v11 & 0xC000000000000001) != 0)
  {
LABEL_19:
    v15 = MEMORY[0x2666F1180](result, v11);
    goto LABEL_9;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v15 = *(v11 + 8 * result + 32);
LABEL_9:
    v16 = v15;

    [v9 removeItem_];

LABEL_17:
    v21 = *(v8 + 48);
    sub_260E11C88();
    v22 = *(v2 + 8);
    v22(v4, v1);
    v22(&v7[v21], v1);
    return (v22)(v7, v1);
  }

  __break(1u);
  return result;
}

uint64_t sub_260E0D7F8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = sub_260E692E4();
  v2[5] = sub_260E692D4();
  v4 = sub_260E69284();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x2822009F8](sub_260E0D894, v4, v3);
}

uint64_t sub_260E0D894()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_playbackTimeRanges);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[2];
    if (v2 > v3)
    {
      v4 = (v1 + 48 * v3);
      v0[8] = v4[4];
      v0[9] = v4[5];
      v0[10] = v4[6];
      v0[11] = sub_260E692D4();
      v6 = sub_260E69284();
      v0[12] = v6;
      v0[13] = v5;

      return MEMORY[0x2822009F8](sub_260E0DA64, v6, v5);
    }

    __break(1u);
    goto LABEL_13;
  }

  if (qword_27FE53D90 != -1)
  {
LABEL_13:
    swift_once();
  }

  v7 = sub_260E68E94();
  __swift_project_value_buffer(v7, qword_27FE54100);
  v8 = sub_260E68E74();
  v9 = sub_260E69474();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_260E02000, v8, v9, "fastForward: playbackTimeRanges is empty, returning", v10, 2u);
    MEMORY[0x2666F1EF0](v10, -1, -1);
  }

  v11 = v0[1];

  return v11(0);
}

uint64_t sub_260E0DA64()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_sceneDriver);
  *(v0 + 112) = v1;
  if (v1)
  {
    v1;
    v2 = swift_task_alloc();
    *(v0 + 120) = v2;
    *v2 = v0;
    v2[1] = sub_260E0DB64;
    v3 = *(v0 + 72);
    v4 = *(v0 + 80);
    v5 = *(v0 + 64);

    return sub_260E0DD7C(v5, v3, v4);
  }

  else
  {

    *(v0 + 129) = 0;
    v7 = *(v0 + 48);
    v8 = *(v0 + 56);

    return MEMORY[0x2822009F8](sub_260E0DD18, v7, v8);
  }
}

uint64_t sub_260E0DB64(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  *(*v1 + 128) = a1;

  v4 = *(v2 + 104);
  v5 = *(v2 + 96);

  return MEMORY[0x2822009F8](sub_260E0DCAC, v5, v4);
}

uint64_t sub_260E0DCAC()
{

  *(v0 + 129) = *(v0 + 128);
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return MEMORY[0x2822009F8](sub_260E0DD18, v1, v2);
}

uint64_t sub_260E0DD18()
{

  v1 = *(v0 + 129);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_260E0DD7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[20] = a3;
  v4[21] = v3;
  v4[18] = a1;
  v4[19] = a2;
  return MEMORY[0x2822009F8](sub_260E0DDA0, 0, 0);
}

uint64_t sub_260E0DDA0()
{
  if (qword_27FE53D90 != -1)
  {
    swift_once();
  }

  v1 = sub_260E68E94();
  v0[22] = __swift_project_value_buffer(v1, qword_27FE54100);
  v2 = sub_260E68E74();
  v3 = sub_260E69474();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    sub_260E69504();
    *(v4 + 4) = v5;
    _os_log_impl(&dword_260E02000, v2, v3, "Player seeking to %f", v4, 0xCu);
    MEMORY[0x2666F1EF0](v4, -1, -1);
  }

  v6 = v0 + 2;
  v7 = v0[20];
  v8 = v0[21];
  v10 = v0[18];
  v9 = v0[19];

  v11 = *(v8 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_player);
  v0[2] = v0;
  v0[7] = v0 + 32;
  v0[3] = sub_260E0DFF8;
  v12 = swift_continuation_init();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54298, &qword_260E6BFB0);
  v0[23] = v10;
  v14 = v0 + 23;
  v15 = *MEMORY[0x277CC08F0];
  v16 = *(MEMORY[0x277CC08F0] + 8);
  v17 = *(MEMORY[0x277CC08F0] + 12);
  v18 = *(MEMORY[0x277CC08F0] + 16);
  *(v14 - 6) = v13;
  *(v14 - 13) = MEMORY[0x277D85DD0];
  *(v14 - 12) = 1107296256;
  *(v14 - 11) = sub_260E12B98;
  *(v14 - 10) = &block_descriptor;
  *(v14 - 9) = v12;
  v14[1] = v9;
  v14[2] = v7;
  v14[3] = v15;
  *(v14 + 8) = v16;
  *(v14 + 9) = v17;
  v14[5] = v18;
  v14[6] = v15;
  *(v14 + 14) = v16;
  *(v14 + 15) = v17;
  v14[8] = v18;
  [v11 seekToTime:v14 toleranceBefore:v14 + 3 toleranceAfter:v14 + 6 completionHandler:?];

  return MEMORY[0x282200938](v6);
}

uint64_t sub_260E0DFF8()
{

  return MEMORY[0x2822009F8](sub_260E0E0D8, 0, 0);
}

uint64_t sub_260E0E0D8()
{
  v1 = *(v0 + 256);
  v2 = sub_260E68E74();
  v3 = sub_260E69474();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    sub_260E69504();
    *(v4 + 4) = v5;
    _os_log_impl(&dword_260E02000, v2, v3, "Player seeked to %f", v4, 0xCu);
    MEMORY[0x2666F1EF0](v4, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6(v1);
}

id sub_260E0E1E4(const char *a1, float a2)
{
  v5 = v2;
  if (qword_27FE53D90 != -1)
  {
    swift_once();
  }

  v6 = sub_260E68E94();
  __swift_project_value_buffer(v6, qword_27FE54100);
  v7 = sub_260E68E74();
  v8 = sub_260E69474();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_260E02000, v7, v8, a1, v9, 2u);
    MEMORY[0x2666F1EF0](v9, -1, -1);
  }

  v10 = *(v5 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_player);
  *&v11 = a2;

  return [v10 setRate_];
}

void sub_260E0E2FC()
{
  v1 = v0;
  if (qword_27FE53D90 != -1)
  {
    swift_once();
  }

  v2 = sub_260E68E94();
  __swift_project_value_buffer(v2, qword_27FE54100);
  v3 = sub_260E68E74();
  v4 = sub_260E69474();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_260E02000, v3, v4, "Player stopped playing", v5, 2u);
    MEMORY[0x2666F1EF0](v5, -1, -1);
  }

  [*(v1 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_player) setRate_];
  v6 = OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_token;
  v7 = *(v1 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_token);
  if (v7)
  {
    v8 = v7;
    sub_260E687B4();

    v9 = *(v1 + v6);
  }

  else
  {
    v9 = 0;
  }

  *(v1 + v6) = 0;
}

id sub_260E0E57C()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_sceneView] setDelegate_];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_260E0E734(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for VideoViewConfiguration(0);
  *&v6 = MEMORY[0x28223BE20](v5 - 8).n128_u64[0];
  v8 = (&v43[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44.receiver = v2;
  v44.super_class = ObjectType;
  objc_msgSendSuper2(&v44, sel_willMoveToSuperview_, a1, v6);
  v9 = OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_hasSetUpSceneDriver;
  if ((v2[OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_hasSetUpSceneDriver] & 1) == 0)
  {
    v10 = OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_configuration;
    swift_beginAccess();
    sub_260E145FC(&v2[v10], v8, type metadata accessor for VideoViewConfiguration);
    v11 = objc_allocWithZone(type metadata accessor for SceneDriver(0));
    sub_260E10020(v8);
    v12 = *&v2[OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_sceneDriver];
    *&v2[OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_sceneDriver] = v13;

    v14 = OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_sceneView;
    v15 = OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_sceneDriver;
    [*&v2[OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_sceneView] setDelegate_];
    v16 = *&v2[v14];
    v17 = *&v2[v15];
    if (v17)
    {
      v18 = *(v17 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_scene);
    }

    else
    {
      v18 = 0;
    }

    v19 = v16;
    [v19 setScene_];

    v20 = *&v2[v15];
    if (v20)
    {
      v21 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v22 = &v20[OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_featureStartedHandler];
      swift_beginAccess();
      v23 = *v22;
      v24 = v22[1];
      *v22 = sub_260E15548;
      v22[1] = v21;
      v25 = v20;

      sub_260E145DC(v23, v24);

      v26 = *&v2[v15];
      if (v26)
      {
        v27 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v28 = &v26[OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_featureCompletedHandler];
        v29 = *&v26[OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_featureCompletedHandler];
        v30 = *&v26[OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_featureCompletedHandler + 8];
        *v28 = sub_260E1556C;
        v28[1] = v27;
        v31 = v26;

        sub_260E145DC(v29, v30);
      }
    }

    v32 = &v2[OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_adjustments];
    if ((v2[OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_adjustments + 32] & 1) == 0)
    {
      v33 = *&v2[v15];
      if (v33)
      {
        v35 = v32[2];
        v34 = v32[3];
        v36 = *v32;
        v37 = v32[1];
        v38 = objc_opt_self();
        v39 = v33;
        v40 = [v38 currentTraitCollection];
        v41 = [v40 userInterfaceStyle];

        if (v41 != 2)
        {
          v36 = v35;
          v37 = v34;
        }

        v43[0] = v36;
        v43[1] = v37;
        sub_260E0F238(v43);
      }
    }

    v2[v9] = 1;
  }
}

void sub_260E0EBE0(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = Strong + *a2;
    swift_beginAccess();
    v6 = *v5;
    if (*v5)
    {
      v7 = *(v5 + 8);
      sub_260E145EC(v6, v7);

      v6();
      sub_260E145DC(v6, v7);
    }

    else
    {
    }
  }
}

void sub_260E0ECF8(id a1)
{
  if (a1)
  {
    v3 = [a1 userInterfaceStyle];
  }

  else
  {
    v3 = 0;
  }

  v4 = objc_opt_self();
  v5 = [v4 currentTraitCollection];
  v6 = [v5 userInterfaceStyle];

  if (!a1 || v3 != v6)
  {
    v7 = (v1 + OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_adjustments);
    if ((*(v1 + OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_adjustments + 32) & 1) == 0)
    {
      v8 = *(v1 + OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_sceneDriver);
      if (v8)
      {
        v10 = v7[2];
        v9 = v7[3];
        v12 = *v7;
        v11 = v7[1];
        v13 = v8;
        v14 = [v4 currentTraitCollection];
        v15 = [v14 userInterfaceStyle];

        if (v15 == 2)
        {
          v16 = v12;
        }

        else
        {
          v16 = v10;
        }

        if (v15 == 2)
        {
          v17 = v11;
        }

        else
        {
          v17 = v9;
        }

        if (!v15)
        {
          v16 = v10;
          v17 = v9;
        }

        v18[0] = v16;
        v18[1] = v17;
        sub_260E0F238(v18);
      }
    }
  }
}

uint64_t sub_260E0EE9C(uint64_t a1)
{
  result = type metadata accessor for VideoViewConfiguration(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_260E0EF74(uint64_t a1)
{
  v3 = type metadata accessor for VideoViewConfiguration(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_260E68D84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v1 + OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_sceneDriver);
  if (v10)
  {
    v11 = *&v10[OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_personalizedAssetMaterial];
    v12 = v10;
    v13 = [v11 diffuse];
    v14 = sub_260E66494();
    [v13 setContents_];

    sub_260E68D94();
    v15 = sub_260E68D74();
    (*(v7 + 8))(v9, v6);
    if (v15 == 1)
    {
      [v11 setBlendMode_];
    }
  }

  else
  {
    v16 = OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_configuration;
    swift_beginAccess();
    sub_260E145FC(v1 + v16, v5, type metadata accessor for VideoViewConfiguration);
    v17 = *(v3 + 28);
    sub_260E155E4(&v5[v17], &qword_27FE542E0, &qword_260E6BFE8);
    v18 = sub_260E68DB4();
    v19 = *(v18 - 8);
    (*(v19 + 16))(&v5[v17], a1, v18);
    (*(v19 + 56))(&v5[v17], 0, 1, v18);
    swift_beginAccess();
    sub_260E14664(v5, v1 + v16);
    swift_endAccess();
    sub_260E146C8(v5, type metadata accessor for VideoViewConfiguration);
  }
}

void sub_260E0F238(double *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_videoMaterial);
  if (v2)
  {
    v3 = v2;
    v4 = sub_260E69364();
    v5 = sub_260E68FF4();
    [v3 setValue:v4 forKey:v5];

    v6 = sub_260E69364();
    v7 = sub_260E68FF4();
    [v3 setValue:v6 forKey:v7];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54300, &qword_260E6C000);
    inited = swift_initStackObject();
    v9 = *MEMORY[0x277CDBC10];
    *(inited + 32) = *MEMORY[0x277CDBC10];
    *(inited + 16) = xmmword_260E6BDB0;
    *(inited + 40) = 0xD0000000000000F7;
    *(inited + 48) = 0x8000000260E72240;
    v10 = v9;
    sub_260E66AA4(inited);
    swift_setDeallocating();
    sub_260E155E4(inited + 32, &qword_27FE54308, &qword_260E6C008);
    type metadata accessor for SCNShaderModifierEntryPoint(0);
    sub_260E1577C(&unk_27FE54310, type metadata accessor for SCNShaderModifierEntryPoint, &unk_260E6BCAC);
    v11 = sub_260E68F84();

    [v3 setShaderModifiers_];
  }

  else
  {
    if (qword_27FE53D90 != -1)
    {
      swift_once();
    }

    v12 = sub_260E68E94();
    __swift_project_value_buffer(v12, qword_27FE54100);
    oslog = sub_260E68E74();
    v13 = sub_260E69474();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_260E02000, oslog, v13, "No video material to update", v14, 2u);
      MEMORY[0x2666F1EF0](v14, -1, -1);
    }
  }
}

uint64_t sub_260E0F5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = (*v5 + *a5);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return sub_260E145DC(v9, v10);
}

uint64_t sub_260E0F6AC(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void, void))
{
  v6 = (*v4 + *a3);
  swift_beginAccess();
  v7 = *v6;
  a4(*v6, v6[1]);
  return v7;
}

uint64_t (*sub_260E0F73C(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_260E0CC7C(v2);
  return sub_260E0F7B0;
}

void sub_260E0F7B0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void sub_260E0F7F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  *(*v3 + OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_playbackTimeRanges) = a1;

  v8 = *(v7 + OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_sceneDriver);
  if (v8)
  {
    v9 = v8;
    sub_260E0C75C(a1, a2, a3);
  }
}

uint64_t sub_260E0F8CC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_260E0F964;

  return sub_260E0D7F8(a1);
}

uint64_t sub_260E0F964(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_260E0FA60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[4] = a3;
  v4[5] = v5;
  sub_260E692E4();
  v4[6] = sub_260E692D4();
  v7 = sub_260E69284();
  v4[7] = v7;
  v4[8] = v6;

  return MEMORY[0x2822009F8](sub_260E0FB00, v7, v6);
}

uint64_t sub_260E0FB00()
{
  v1 = *(v0[5] + OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_sceneDriver);
  v0[9] = v1;
  if (v1)
  {
    v1;
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_260E0FBFC;
    v3 = v0[3];
    v4 = v0[4];
    v5 = v0[2];

    return sub_260E0DD7C(v5, v3, v4);
  }

  else
  {

    v7 = v0[1];

    return v7(0);
  }
}

uint64_t sub_260E0FBFC(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  *(*v1 + 88) = a1;

  v4 = *(v2 + 64);
  v5 = *(v2 + 56);

  return MEMORY[0x2822009F8](sub_260E0FD44, v5, v4);
}

uint64_t sub_260E0FD44()
{

  v1 = *(v0 + 88);
  v2 = *(v0 + 8);

  return v2(v1);
}

BOOL sub_260E0FDA8()
{
  v1 = *(*v0 + OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_sceneDriver);
  if (!v1)
  {
    return 0;
  }

  [*(v1 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_player) rate];
  return v2 == 0.0;
}

void sub_260E0FE0C(float a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = *(*v4 + OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_sceneDriver);
  if (v5)
  {
    v8 = v5;
    sub_260E0E1E4(a4, a1);
  }
}

void sub_260E0FEBC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = *(*v3 + OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_sceneDriver);
  if (v4)
  {
    v6 = v4;
    a3();
  }
}

uint64_t sub_260E0FF68()
{
  v1 = *v0;
  sub_260E698F4();
  MEMORY[0x2666F1410](v1);
  return sub_260E69914();
}

uint64_t sub_260E0FFDC(uint64_t a1)
{
  v2 = *v1;
  sub_260E698F4();
  MEMORY[0x2666F1410](v2);
  return sub_260E69914();
}

void sub_260E10020(char **a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v198 = sub_260E68D84();
  v197 = *(v198 - 8);
  MEMORY[0x28223BE20](v198);
  v196 = &v192 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE542E0, &qword_260E6BFE8);
  MEMORY[0x28223BE20](v5 - 8);
  v206 = &v192 - v6;
  v208 = sub_260E68DB4();
  v207 = *(v208 - 8);
  MEMORY[0x28223BE20](v208);
  v204 = &v192 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = type metadata accessor for VideoViewConfiguration.VideoSequence(0);
  MEMORY[0x28223BE20](v219);
  v209 = &v192 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v192 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54320, &qword_260E6E720);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v192 - v13;
  v15 = sub_260E68904();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v199 = &v192 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v205 = &v192 - v19;
  MEMORY[0x28223BE20](v20);
  v217 = &v192 - v21;
  MEMORY[0x28223BE20](v22);
  v215 = (&v192 - v23);
  MEMORY[0x28223BE20](v24);
  v214 = &v192 - v25;
  MEMORY[0x28223BE20](v26);
  v201 = &v192 - v27;
  MEMORY[0x28223BE20](v28);
  v213 = &v192 - v29;
  MEMORY[0x28223BE20](v30);
  v212 = &v192 - v31;
  MEMORY[0x28223BE20](v32);
  v34 = &v192 - v33;
  v223 = OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_videoPlane;
  *&v1[OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_videoPlane] = 0;
  v224 = OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_token;
  *&v1[OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_token] = 0;
  v35 = &v1[OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_timeObserverToken];
  *v35 = 0u;
  v35[1] = 0u;
  v226 = v35;
  v225 = OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_textureCache;
  *&v1[OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_textureCache] = 0;
  v227 = OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_videoMaterial;
  *&v1[OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_videoMaterial] = 0;
  v36 = &v1[OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_featureStartedHandler];
  *v36 = 0;
  v36[1] = 0;
  v228 = v36;
  v37 = &v1[OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_featureCompletedHandler];
  *v37 = 0;
  v37[1] = 0;
  v229 = v37;
  v38 = &v1[OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_engageDuration];
  v39 = *MEMORY[0x277CC08F0];
  v40 = *(MEMORY[0x277CC08F0] + 8);
  v41 = *(MEMORY[0x277CC08F0] + 12);
  v42 = *(MEMORY[0x277CC08F0] + 16);
  *v38 = *MEMORY[0x277CC08F0];
  *(v38 + 2) = v40;
  *(v38 + 3) = v41;
  v211 = v38;
  *(v38 + 2) = v42;
  v43 = &v1[OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_loopDuration];
  *v43 = v39;
  *(v43 + 2) = v40;
  *(v43 + 3) = v41;
  *(v43 + 2) = v42;
  v221 = OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_currentIOSurface;
  *&v1[OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_currentIOSurface] = 0;
  v44 = OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54328, &qword_260E6C020);
  v45 = swift_allocObject();
  *(v45 + 16) = 0;
  v222 = v44;
  *&v2[v44] = v45;
  v220 = OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_configuration;
  sub_260E145FC(a1, &v2[OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_configuration], type metadata accessor for VideoViewConfiguration);
  v46 = type metadata accessor for VideoViewConfiguration(0);
  sub_260E15684(a1 + *(v46 + 24), v14, &qword_27FE54320, &qword_260E6E720);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    v47 = a1;
    sub_260E155E4(v14, &qword_27FE54320, &qword_260E6E720);
    if (qword_27FE53D90 != -1)
    {
      swift_once();
    }

    v48 = sub_260E68E94();
    __swift_project_value_buffer(v48, qword_27FE54100);
    v49 = sub_260E68E74();
    v50 = sub_260E69464();
    v51 = v47;
    if (os_log_type_enabled(v49, v50))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_260E02000, v49, v50, "Configuration doesn't have SceneURL, SceneDriver returning nil", v52, 2u);
      MEMORY[0x2666F1EF0](v52, -1, -1);
    }

    sub_260E15590();
    swift_allocError();
    *v53 = 0xD00000000000002CLL;
    *(v53 + 8) = 0x8000000260E72340;
    *(v53 + 16) = 1;
    swift_willThrow();
    sub_260E146C8(v51, type metadata accessor for VideoViewConfiguration);
    sub_260E146C8(&v2[v220], type metadata accessor for VideoViewConfiguration);
LABEL_24:

    sub_260E155E4(v226, &qword_27FE542C8, &qword_260E6BFE0);
    sub_260E145DC(*v228, v228[1]);
    sub_260E145DC(*v229, v229[1]);

    swift_deallocPartialClassInstance();
    return;
  }

  v216 = v16;
  v203 = *(v16 + 32);
  v203(v34, v14, v15);
  v54 = [objc_allocWithZone(MEMORY[0x277CE65F8]) init];
  *&v2[OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_player] = v54;
  [v54 setAllowsExternalPlayback_];
  v210 = a1;
  sub_260E145FC(a1, v11, type metadata accessor for VideoViewConfiguration.VideoSequence);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v200 = v15;
  v202 = v34;
  v194 = v16 + 32;
  v195 = v46;
  if (!EnumCaseMultiPayload)
  {
    v84 = v46;
    v85 = v11;
    v86 = v15;
    v203(v212, v85, v15);
    v2[OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_currentPlaybackState] = 1;
    v87 = objc_allocWithZone(MEMORY[0x277CE6650]);
    v88 = sub_260E68894();
    v89 = [v87 initWithURL:v88 options:0];

    v90 = [v89 tracksWithMediaType_];
    sub_260E157C4(0, &qword_27FE54338, 0x277CE6450);
    v91 = sub_260E691B4();

    if ((v91 & 0xC000000000000001) != 0)
    {
      v92 = MEMORY[0x2666F1180](0, v91);
      v64 = v210;
      v81 = v216;
    }

    else
    {
      v64 = v210;
      v81 = v216;
      if (!*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      v92 = *(v91 + 32);
    }

    [v92 naturalSize];
    v94 = v93;
    v96 = v95;

    isEscapingClosureAtFileLocation = v86;
    v215 = *(v81 + 8);
    v215(v212, v86);
    v97 = &v2[OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_croppedVideoSize];
    *v97 = v94;
    v97[1] = v96;
    goto LABEL_22;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE542A0, &qword_260E6BFC0);
    v99 = *(v98 + 48);
    v100 = v203;
    v203(v214, v11, v15);
    v100(v215, &v11[v99], v15);
    v2[OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_currentPlaybackState] = 0;
    v101 = objc_allocWithZone(MEMORY[0x277CE6650]);
    v102 = sub_260E68894();
    v103 = [v101 initWithURL:v102 options:0];

    v104 = [v103 tracksWithMediaType_];
    sub_260E157C4(0, &qword_27FE54338, 0x277CE6450);
    v105 = sub_260E691B4();

    v193 = v11;
    if ((v105 & 0xC000000000000001) != 0)
    {
      v106 = MEMORY[0x2666F1180](0, v105);
    }

    else
    {
      if (!*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_46:
        __break(1u);
        return;
      }

      v106 = *(v105 + 32);
    }

    v107 = v106;

    v213 = *(v98 + 64);
    [v107 naturalSize];
    v109 = v108;
    v111 = v110;

    v112 = &v2[OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_croppedVideoSize];
    *v112 = v109;
    v112[1] = v111;
    v113 = objc_allocWithZone(MEMORY[0x277CE6650]);
    v114 = v215;
    v115 = sub_260E68894();
    v116 = [v113 initWithURL:v115 options:0];

    [v116 duration];
    v117 = aBlock;
    v118 = v234;
    v119 = v233;

    v120 = v211;
    *v211 = v117;
    v120[1] = v119;
    v120[2] = v118;
    v121 = objc_allocWithZone(MEMORY[0x277CE6650]);
    v122 = v214;
    v123 = sub_260E68894();
    v124 = [v121 initWithURL:v123 options:0];

    [v124 duration];
    v125 = aBlock;
    v126 = v234;
    v127 = v233;

    v81 = v216;
    v128 = *(v216 + 8);
    v129 = v114;
    v130 = v200;
    v128(v129, v200);
    v128(v122, v130);
    *v43 = v125;
    *(v43 + 1) = v127;
    *(v43 + 2) = v126;
    v215 = v128;
    v128(&v213[v193], v130);
    isEscapingClosureAtFileLocation = v130;
    goto LABEL_21;
  }

  v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE542F8, &qword_260E6C170) + 48);
  v57 = v203;
  v203(v213, v11, v15);
  v58 = &v11[v56];
  v59 = v201;
  isEscapingClosureAtFileLocation = v15;
  v57(v201, v58, v15);
  v2[OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_currentPlaybackState] = 0;
  v61 = 0x277CE6000;
  v62 = objc_allocWithZone(MEMORY[0x277CE6650]);
  v63 = sub_260E68894();
  v64 = &selRef_playerItemDidReachEnd_;
  v65 = [v62 initWithURL:v63 options:0];

  v66 = [v65 tracksWithMediaType_];
  sub_260E157C4(0, &qword_27FE54338, 0x277CE6450);
  v67 = sub_260E691B4();

  if ((v67 & 0xC000000000000001) != 0)
  {
    goto LABEL_41;
  }

  if (!*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_45;
  }

  for (i = *(v67 + 32); ; i = MEMORY[0x2666F1180](0, v67))
  {
    v69 = i;

    [v69 naturalSize];
    v71 = v70;
    v73 = v72;

    v74 = &v2[OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_croppedVideoSize];
    *v74 = v71;
    v74[1] = v73;
    v75 = objc_allocWithZone(v61[202]);
    v76 = sub_260E68894();
    v77 = [v75 v64[2]];

    [v77 duration];
    v78 = aBlock;
    v79 = v234;
    v80 = v233;

    v81 = v216;
    v82 = *(v216 + 8);
    v82(v59, isEscapingClosureAtFileLocation);
    v215 = v82;
    v82(v213, isEscapingClosureAtFileLocation);
    v83 = v211;
    *v211 = v78;
    v83[1] = v80;
    v83[2] = v79;
LABEL_21:
    v64 = v210;
    v84 = v195;
LABEL_22:
    *&v2[OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_originalVideoSize] = *(v64 + *(v84 + 32));
    *&v2[OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_yOffset] = *(v64 + *(v84 + 36));
    sub_260E157C4(0, &qword_27FE54340, 0x277CDBAF8);
    v131 = v217;
    v59 = v202;
    (*(v81 + 16))(v217, v202, isEscapingClosureAtFileLocation);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54348, &qword_260E6C028);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_260E6BDB0;
    v133 = *MEMORY[0x277CDBBF0];
    *(inited + 32) = *MEMORY[0x277CDBBF0];
    v61 = *MEMORY[0x277CDBBF8];
    type metadata accessor for AnimationImportPolicy(0);
    *(inited + 64) = v134;
    *(inited + 40) = v61;
    v135 = v133;
    v136 = v61;
    v137 = sub_260E66358(inited);
    swift_setDeallocating();
    sub_260E155E4(inited + 32, &qword_27FE54350, qword_260E6C030);
    v138 = v218;
    v139 = sub_260E11930(v131, v137);
    if (v138)
    {
      sub_260E146C8(v64, type metadata accessor for VideoViewConfiguration);
      v215(v59, v200);
      sub_260E146C8(&v2[v220], type metadata accessor for VideoViewConfiguration);

      goto LABEL_24;
    }

    v229 = 0;
    v140 = v195;
    *&v2[OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_scene] = v139;
    v239 = 0;
    v238 = 0;
    v141 = [v139 rootNode];
    v142 = swift_allocObject();
    *(v142 + 16) = &v239;
    *(v142 + 24) = &v238;
    v67 = swift_allocObject();
    *(v67 + 16) = sub_260E15654;
    *(v67 + 24) = v142;
    v228 = v142;
    v236 = sub_260E1565C;
    v237 = v67;
    aBlock = MEMORY[0x277D85DD0];
    v233 = 1107296256;
    v234 = sub_260E11C2C;
    v235 = &block_descriptor_35;
    v143 = _Block_copy(&aBlock);

    [v141 enumerateChildNodesUsingBlock_];

    _Block_release(v143);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_41:
    ;
  }

  v144 = v238;
  *&v2[OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_camera] = v238;
  v145 = objc_allocWithZone(MEMORY[0x277CDBA90]);
  v146 = v144;
  v147 = [v145 init];
  v148 = OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_personalizedAssetMaterial;
  *&v2[OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_personalizedAssetMaterial] = v147;
  [v147 setDoubleSided_];
  v149 = v239;
  v150 = v208;
  if (v239)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54358, &unk_260E6FF30);
    v151 = swift_allocObject();
    *(v151 + 16) = xmmword_260E6BDC0;
    v152 = *&v2[v148];
    *(v151 + 32) = v152;
    sub_260E157C4(0, &qword_27FE54360, 0x277CDBA90);
    v153 = v149;
    v154 = v152;
    v155 = sub_260E691A4();

    [v153 setMaterials_];
  }

  v231.receiver = v2;
  v231.super_class = ObjectType;
  v156 = objc_msgSendSuper2(&v231, sel_init);
  v157 = *(v140 + 28);
  v158 = v210;
  v159 = v206;
  sub_260E15684(v210 + v157, v206, &qword_27FE542E0, &qword_260E6BFE8);
  v160 = v207;
  if ((*(v207 + 48))(v159, 1, v150) == 1)
  {
    v161 = v156;
    sub_260E155E4(v159, &qword_27FE542E0, &qword_260E6BFE8);
  }

  else
  {
    (*(v160 + 32))(v204, v159, v150);
    v162 = *(v156 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_personalizedAssetMaterial);
    v163 = v156;
    v164 = [v162 diffuse];
    v165 = sub_260E66494();
    [v164 setContents_];

    v166 = v196;
    sub_260E68D94();
    v167 = sub_260E68D74();
    (*(v197 + 8))(v166, v198);
    if (v167 == 1)
    {
      [v162 setBlendMode_];
    }

    (*(v160 + 8))(v204, v150);
  }

  v168 = v215;
  v169 = [objc_opt_self() defaultCenter];
  v170 = sub_260E68FF4();
  [v169 addObserver:v156 selector:sel_handlePlayerItemFinished_ name:v170 object:0];

  v171 = OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_player;
  aBlock = *(v156 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_player);
  v172 = aBlock;
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v173 = v172;
  v174 = sub_260E68864();

  v175 = *(v156 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_token);
  *(v156 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_token) = v174;

  v176 = v209;
  sub_260E145FC(v158, v209, type metadata accessor for VideoViewConfiguration.VideoSequence);
  v177 = swift_getEnumCaseMultiPayload();
  if (v177)
  {
    v178 = v200;
    if (v177 == 1)
    {
      v179 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE542F8, &qword_260E6C170) + 48);
      v180 = v205;
      v181 = v203;
      v203(v205, v176, v178);
      v182 = v199;
      v181(v199, v176 + v179, v178);
      sub_260E11C88();
      sub_260E11C88();
      v168 = v215;
      v215(v182, v178);
      v183 = v180;
    }

    else
    {
      v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE542A0, &qword_260E6BFC0);
      v187 = *(v186 + 48);
      ObjectType = *(v186 + 64);
      v188 = v205;
      v189 = v203;
      v203(v205, v176, v178);
      v190 = v199;
      v189(v199, v176 + v187, v178);
      sub_260E11C88();
      sub_260E11C88();
      v168 = v215;
      v215(v190, v178);
      v168(v188, v178);
      v183 = v176 + ObjectType;
    }

    v168(v183, v178);
    v185 = v202;
    v158 = v210;
  }

  else
  {
    v184 = v205;
    v178 = v200;
    v203(v205, v176, v200);
    sub_260E11C88();
    sub_260E11C88();
    v168(v184, v178);
    v185 = v202;
  }

  sub_260E11E48();
  [*(v156 + v171) setRate_];
  sub_260E146C8(v158, type metadata accessor for VideoViewConfiguration);
  v168(v185, v178);

  v191 = v239;
}

id sub_260E11930(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = sub_260E68894();
  if (a2)
  {
    type metadata accessor for LoadingOption(0);
    sub_260E1577C(&qword_27FE54370, type metadata accessor for LoadingOption, &unk_260E6BC68);
    v5 = sub_260E68F84();
  }

  else
  {
    v5 = 0;
  }

  v14[0] = 0;
  v6 = [swift_getObjCClassFromMetadata() sceneWithURL:v4 options:v5 error:v14];

  v7 = v14[0];
  if (v6)
  {
    v8 = sub_260E68904();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v14[0];
    sub_260E68854();

    swift_willThrow();
    v12 = sub_260E68904();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  return v6;
}

void sub_260E11B08(void *a1, uint64_t a2, void **a3, id *a4)
{
  v7 = [a1 geometry];
  if (v7)
  {
    v8 = v7;
    v9 = *a3;
    if (*a3)
    {
      sub_260E157C4(0, &qword_27FE54368, 0x277CDBA68);
      v10 = v8;
      v11 = v9;
      v12 = sub_260E69554();

      if (v12)
      {
LABEL_7:

        goto LABEL_8;
      }

      v10 = *a3;
    }

    else
    {
      v10 = 0;
    }

    *a3 = v8;
    goto LABEL_7;
  }

LABEL_8:
  v13 = [a1 camera];
  if (v13)
  {

    v15 = *a4;
    *a4 = a1;
    v14 = a1;
  }
}

void sub_260E11C2C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

void sub_260E11C88()
{
  v1 = v0;
  v2 = objc_allocWithZone(MEMORY[0x277CE6650]);
  v3 = sub_260E68894();
  v4 = [v2 initWithURL:v3 options:0];

  v5 = [objc_allocWithZone(MEMORY[0x277CE65B0]) initWithAsset_];
  v6 = *(v1 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_player);
  v7 = [v6 items];
  sub_260E157C4(0, &qword_27FE542A8, 0x277CE65B0);
  v8 = sub_260E691B4();

  if (!(v8 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_10:
    v13 = 0;
    goto LABEL_11;
  }

  v9 = sub_260E69714();
  if (!v9)
  {
    goto LABEL_10;
  }

LABEL_3:
  v10 = __OFSUB__(v9, 1);
  v11 = v9 - 1;
  if (v10)
  {
    __break(1u);
    goto LABEL_15;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
LABEL_15:
    v12 = MEMORY[0x2666F1180](v11, v8);
    goto LABEL_8;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v11 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_17:
    __break(1u);
    return;
  }

  v12 = *(v8 + 8 * v11 + 32);
LABEL_8:
  v13 = v12;
LABEL_11:

  [v6 insertItem:v5 afterItem:v13];

  v14 = sub_260E14360();
  [v5 addOutput_];
}

void sub_260E11E48()
{
  v1 = *(v0 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_camera);
  if (v1)
  {
    v18 = v1;
    v2 = [v18 camera];
    if (v2)
    {
      v3 = v2;
      [v2 zFar];
      v4 = [objc_opt_self() planeWithWidth:0.0 height:0.0];
      v5 = objc_opt_self();
      v6 = v4;
      v7 = [v5 nodeWithGeometry_];
      sub_260E69414();
      [v7 setPosition_];
      v8 = sub_260E68FF4();
      [v7 setName_];

      [v18 addChildNode_];
      v9 = [objc_allocWithZone(MEMORY[0x277CDBA90]) init];
      [v9 setBlendMode_];
      [v9 setReadsFromDepthBuffer_];
      [v9 setWritesToDepthBuffer_];
      [v9 setLightingModelName_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54358, &unk_260E6FF30);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_260E6BDC0;
      *(v10 + 32) = v9;
      sub_260E157C4(0, &qword_27FE54360, 0x277CDBA90);
      v11 = v9;
      v12 = sub_260E691A4();

      [v6 setMaterials_];

      v13 = *(v0 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_videoMaterial);
      *(v0 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_videoMaterial) = v11;
      v14 = v11;

      v15 = *(v0 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_videoPlane);
      *(v0 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_videoPlane) = v4;
      v16 = v6;

      sub_260E12154(0, 1, 0, 1);
      sub_260E123E4();

      v17 = v14;
    }

    else
    {
      v17 = v18;
    }
  }
}

void sub_260E12154(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v5 = *(v4 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_videoPlane);
  if (!v5)
  {
    return;
  }

  v6 = *(v4 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_camera);
  if (!v6)
  {
    return;
  }

  v32 = v5;
  v11 = [v6 camera];
  if (v11)
  {
    v12 = v11;
    [v11 zFar];
    if (a2)
    {
      v14 = *(v4 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_originalVideoSize);
      v15 = v13 * 0.99;
      if ((a4 & 1) == 0)
      {
LABEL_6:
        v16 = *&a3;
LABEL_10:
        [v12 fieldOfView];
        v18 = (v15 + v15) * tan(v17 * 0.00872664626);
        v19 = v16 * v18 / v14;
        if (v14 / v16 > 1.0)
        {
          v20 = v18;
        }

        else
        {
          v19 = v18;
          v20 = v14 * v18 / v16;
        }

        v21 = *(v4 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_croppedVideoSize + 8);
        v22 = *(v4 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_croppedVideoSize) / v14;
        v23 = v21 / v16;
        if (qword_27FE53D90 != -1)
        {
          v31 = v19;
          v30 = v21 / v16;
          swift_once();
          v23 = v30;
          v19 = v31;
        }

        v24 = v20 * v22;
        v25 = v19 * v23;
        v26 = sub_260E68E94();
        __swift_project_value_buffer(v26, qword_27FE54100);
        v27 = sub_260E68E74();
        v28 = sub_260E69474();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 134218240;
          *(v29 + 4) = v24;
          *(v29 + 12) = 2048;
          *(v29 + 14) = v25;
          _os_log_impl(&dword_260E02000, v27, v28, "Updating video plane size to (%f, %f)", v29, 0x16u);
          MEMORY[0x2666F1EF0](v29, -1, -1);
        }

        [v32 setWidth_];
        [v32 setHeight_];

        goto LABEL_18;
      }
    }

    else
    {
      v14 = *&a1;
      v15 = v13 * 0.99;
      if ((a4 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    v16 = *(v4 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_originalVideoSize + 8);
    goto LABEL_10;
  }

LABEL_18:
}

void sub_260E123E4()
{
  v1 = v0;
  v8 = *MEMORY[0x277D85DE8];
  out_token = 0;
  sub_260E157C4(0, &qword_27FE542D8, 0x277D85C78);
  v2 = sub_260E69494();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v6[4] = sub_260E15774;
  v6[5] = v3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_260E141A4;
  v6[3] = &block_descriptor_42;
  v4 = _Block_copy(v6);
  v5 = v1;

  notify_register_dispatch("com.apple.ProductKit.updateVideoPlaneSize", &out_token, v2, v4);
  _Block_release(v4);
}

id sub_260E12518()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_lock];

  os_unfair_lock_lock(v2 + 4);
  sub_260E1584C();
  os_unfair_lock_unlock(v2 + 4);

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_260E1274C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_260E12784(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    if (*(Strong + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_currentPlaybackState) == 2)
    {
      [*(Strong + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_player) currentTime];
      v5 = *&v26[8];
      v6 = *&v26[12];
      CMTimeMake(v26, 1, 10);
      v24 = *(a2 + 16);
      if (v24)
      {
        v7 = 0;
        v8 = (a2 + 32);
        v9 = v5 | (v6 << 32);
        v22 = v9;
        do
        {
          v25 = v7;
          v10 = v8[1];
          *v26 = *v8;
          *&v26[16] = v10;
          v27 = v8[2];
          v11 = v9;
          sub_260E694E4();
          if (sub_260E694C4())
          {
            sub_260E694D4();
            if (sub_260E694B4())
            {
              if (qword_27FE53D90 != -1)
              {
                swift_once();
              }

              v12 = sub_260E68E94();
              __swift_project_value_buffer(v12, qword_27FE54100);
              v13 = sub_260E68E74();
              v14 = sub_260E69474();
              if (os_log_type_enabled(v13, v14))
              {
                v15 = swift_slowAlloc();
                *v15 = 134217984;
                *(v15 + 4) = v25;
                _os_log_impl(&dword_260E02000, v13, v14, "Triggering timeRangeHandler with start of range %ld", v15, 0xCu);
                MEMORY[0x2666F1EF0](v15, -1, -1);
              }

              a3(v25, 1);
              v11 = v22;
            }
          }

          sub_260E69424();
          sub_260E694E4();
          v9 = v11;
          if (sub_260E694C4())
          {
            sub_260E69424();
            sub_260E694D4();
            if (sub_260E694B4())
            {
              if (qword_27FE53D90 != -1)
              {
                swift_once();
              }

              v16 = sub_260E68E94();
              __swift_project_value_buffer(v16, qword_27FE54100);
              v17 = sub_260E68E74();
              v18 = sub_260E69474();
              if (os_log_type_enabled(v17, v18))
              {
                v19 = swift_slowAlloc();
                *v19 = 134217984;
                *(v19 + 4) = v25;
                _os_log_impl(&dword_260E02000, v17, v18, "Triggering timeRangeHandler with end of range %ld", v19, 0xCu);
                v20 = v19;
                v9 = v22;
                MEMORY[0x2666F1EF0](v20, -1, -1);
              }

              a3(v25, 0);
            }
          }

          v7 = v25 + 1;
          v8 += 3;
        }

        while (v24 != v25 + 1);
      }
    }
  }
}

uint64_t sub_260E12B54(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_260E12B98(uint64_t a1, char a2)
{
  **(*(*__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return swift_continuation_resume();
}

void sub_260E12BF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_260E68904();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v42 - v8;
  v10 = type metadata accessor for VideoViewConfiguration.VideoSequence(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v42 - v14;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v17 = Strong;
  v18 = OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_configuration;
  sub_260E145FC(Strong + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_configuration, v15, type metadata accessor for VideoViewConfiguration.VideoSequence);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE542A0, &qword_260E6BFC0);
    (*(v4 + 32))(v9, &v15[*(v47 + 64)], v3);
    v19 = [*&v17[OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_player] currentItem];
    v48 = v18;
    v49 = v4;
    if (!v19)
    {
      v25 = *(v4 + 8);
      v25(v9, v3);
LABEL_20:
      v25(&v15[*(v47 + 48)], v3);
      v25(v15, v3);
      v18 = v48;
      v4 = v49;
      goto LABEL_21;
    }

    v46 = v6;
    v20 = v19;
    v21 = [v19 asset];

    if (v21)
    {
      objc_opt_self();
      v22 = swift_dynamicCastObjCClass();
      if (v22)
      {
        v45 = v21;
        v23 = [v22 URL];
        v24 = v46;
        sub_260E688C4();

        LOBYTE(v23) = sub_260E688B4();
        v25 = *(v4 + 8);
        v44 = v4 + 8;
        v25(v24, v3);
        if (v23)
        {
          if (qword_27FE53D90 != -1)
          {
            swift_once();
          }

          v26 = sub_260E68E94();
          __swift_project_value_buffer(v26, qword_27FE54100);
          v27 = sub_260E68E74();
          v28 = sub_260E69474();
          v43 = v27;
          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            *v29 = 0;
            _os_log_impl(&dword_260E02000, v43, v28, "Started playing feature video", v29, 2u);
            MEMORY[0x2666F1EF0](v29, -1, -1);
          }

          v17[OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_currentPlaybackState] = 2;
          v30 = &v17[OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_featureStartedHandler];
          swift_beginAccess();
          v31 = *v30;
          if (!*v30)
          {
            v25(v9, v3);
            swift_endAccess();

            goto LABEL_19;
          }

          v32 = *(v30 + 1);
          swift_endAccess();

          v31(v33);

          sub_260E145DC(v31, v32);
        }

        else
        {
        }

        v25(v9, v3);
LABEL_19:
        v6 = v46;
        goto LABEL_20;
      }
    }

    v25 = *(v4 + 8);
    v25(v9, v3);
    goto LABEL_19;
  }

  sub_260E146C8(v15, type metadata accessor for VideoViewConfiguration.VideoSequence);
LABEL_21:
  v34 = [*&v17[OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_player] items];
  sub_260E157C4(0, &qword_27FE542A8, 0x277CE65B0);
  v35 = sub_260E691B4();

  if (v35 >> 62)
  {
    v36 = sub_260E69714();
  }

  else
  {
    v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v36 == 1 && v17[OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_currentPlaybackState] != 2)
  {
    sub_260E145FC(&v17[v18], v12, type metadata accessor for VideoViewConfiguration.VideoSequence);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE542F8, &qword_260E6C170) + 48);
        (*(v4 + 32))(v6, v12, v3);
        sub_260E11C88();

        v39 = *(v4 + 8);
        v39(v6, v3);
      }

      else
      {
        v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE542A0, &qword_260E6BFC0);
        v38 = *(v40 + 48);
        v41 = *(v40 + 64);
        (*(v4 + 32))(v6, v12, v3);
        sub_260E11C88();

        v39 = *(v4 + 8);
        v39(v6, v3);
        v39(&v12[v41], v3);
      }

      v39(&v12[v38], v3);
    }

    else
    {
      (*(v4 + 32))(v6, v12, v3);
      sub_260E11C88();

      (*(v4 + 8))(v6, v3);
    }
  }

  else
  {
  }
}

void sub_260E132BC()
{
  v1 = sub_260E68904();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v65 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v65 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v65 - v12;
  v14 = type metadata accessor for VideoViewConfiguration.VideoSequence(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_260E68714();
  if (v72)
  {
    sub_260E157C4(0, &qword_27FE542A8, 0x277CE65B0);
    if (swift_dynamicCast())
    {
      v68 = v1;
      v69 = v0;
      v17 = v2;
      v18 = v70;
      v19 = [v70 asset];
      objc_opt_self();
      v20 = swift_dynamicCastObjCClass();
      if (v20)
      {
        v21 = v20;
        v66 = v19;
        v67 = v18;
        sub_260E145FC(v69 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_configuration, v16, type metadata accessor for VideoViewConfiguration.VideoSequence);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE542F8, &qword_260E6C170);
            v24 = v17;
            v25 = *(v17 + 32);
            v26 = v68;
            v25(v13, &v16[*(v23 + 48)], v68);
            v27 = [v21 URL];
            sub_260E688C4();

            LOBYTE(v27) = sub_260E688B4();
            v28 = *(v24 + 8);
            v28(v10, v26);
            if (v27)
            {
              v29 = v66;
              if (qword_27FE53D90 != -1)
              {
                swift_once();
              }

              v30 = sub_260E68E94();
              __swift_project_value_buffer(v30, qword_27FE54100);
              v31 = sub_260E68E74();
              v32 = sub_260E69474();
              if (os_log_type_enabled(v31, v32))
              {
                v33 = swift_slowAlloc();
                *v33 = 0;
                _os_log_impl(&dword_260E02000, v31, v32, "Finished playing engage video", v33, 2u);
                MEMORY[0x2666F1EF0](v33, -1, -1);
              }

              v28(v13, v26);
              *(v69 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_currentPlaybackState) = 1;
            }

            else
            {
              v28(v13, v26);
            }

            v28(v16, v26);
          }

          else
          {
            v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE542A0, &qword_260E6BFC0);
            v35 = *(v34 + 64);
            v36 = v17;
            v37 = *(v17 + 32);
            v38 = v68;
            v37(v7, &v16[*(v34 + 48)], v68);
            v37(v4, &v16[v35], v38);
            v39 = [v21 URL];
            sub_260E688C4();

            LOBYTE(v39) = sub_260E688B4();
            v40 = *(v36 + 8);
            v40(v10, v38);
            if (v39)
            {
              v41 = v40;
              v42 = v69;
              if (qword_27FE53D90 != -1)
              {
                swift_once();
              }

              v43 = sub_260E68E94();
              __swift_project_value_buffer(v43, qword_27FE54100);
              v44 = sub_260E68E74();
              v45 = sub_260E69474();
              v46 = os_log_type_enabled(v44, v45);
              v47 = v67;
              if (v46)
              {
                v48 = v42;
                v49 = swift_slowAlloc();
                *v49 = 0;
                _os_log_impl(&dword_260E02000, v44, v45, "Finished playing engage video", v49, 2u);
                v50 = v49;
                v42 = v48;
                MEMORY[0x2666F1EF0](v50, -1, -1);
              }

              v51 = v68;
              v41(v4, v68);
              v41(v7, v51);
              *(v42 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_currentPlaybackState) = 1;
              v41(v16, v51);
            }

            else
            {
              v52 = [v21 URL];
              sub_260E688C4();

              LOBYTE(v52) = sub_260E688B4();
              v40(v10, v38);
              if (v52)
              {
                v65 = v40;
                v53 = v67;
                if (qword_27FE53D90 != -1)
                {
                  swift_once();
                }

                v54 = sub_260E68E94();
                __swift_project_value_buffer(v54, qword_27FE54100);
                v55 = sub_260E68E74();
                v56 = sub_260E69474();
                v57 = os_log_type_enabled(v55, v56);
                v58 = v69;
                if (v57)
                {
                  v59 = swift_slowAlloc();
                  *v59 = 0;
                  _os_log_impl(&dword_260E02000, v55, v56, "Finished playing feature video", v59, 2u);
                  MEMORY[0x2666F1EF0](v59, -1, -1);
                }

                v60 = *(v58 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_featureCompletedHandler);
                if (v60)
                {
                  v61 = *(v58 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_featureCompletedHandler + 8);

                  v60(v62);
                  sub_260E145DC(v60, v61);
                }

                sub_260E0E2FC();

                v63 = v68;
                v64 = v65;
                v65(v4, v68);
                v64(v7, v63);
                v64(v16, v63);
              }

              else
              {

                v40(v4, v38);
                v40(v7, v38);
                v40(v16, v38);
              }
            }
          }
        }

        else
        {

          sub_260E146C8(v16, type metadata accessor for VideoViewConfiguration.VideoSequence);
        }
      }

      else
      {
      }
    }
  }

  else
  {
    sub_260E155E4(v71, &qword_27FE542C8, &qword_260E6BFE0);
  }
}

void sub_260E13BBC(uint64_t a1, id a2)
{
  v4 = OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_currentIOSurface;
  v5 = *(a1 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_currentIOSurface);
  if (v5)
  {
    IOSurfaceDecrementUseCount(v5);
  }

  v6 = [a2 iosurface];
  if (v6)
  {
    v7 = v6;
    IOSurfaceIncrementUseCount(v6);
    v8 = *(a1 + v4);
    *(a1 + v4) = v7;
  }

  v9 = *(a1 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_videoMaterial);
  if (v9)
  {
    v10 = [v9 diffuse];
    [v10 setContents_];
  }
}

uint64_t sub_260E13D28(uint64_t a1)
{
  result = type metadata accessor for VideoViewConfiguration(319);
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SceneDriver.CurrentPlaybackState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SceneDriver.CurrentPlaybackState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_260E13FA0()
{
  result = qword_27FE54290;
  if (!qword_27FE54290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54290);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_260E1402C()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_260E68FF4();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    v3 = sub_260E68FF4();
    v4 = [v2 integerForKey_];

    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  v6 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v7 = sub_260E68FF4();
  v8 = [v6 initWithSuiteName_];

  if (v8)
  {
    v9 = sub_260E68FF4();
    v10 = [v8 integerForKey_];

    v11 = v10;
  }

  else
  {
    v11 = 0.0;
  }

  sub_260E12154(*&v5, v2 == 0, *&v11, v8 == 0);
}

uint64_t sub_260E141A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
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

uint64_t sub_260E1426C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
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

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

id sub_260E14360()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE542B0, &qword_260E6BFC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_260E6BDD0;
  *(inited + 32) = sub_260E69024();
  *(inited + 40) = v1;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  *(inited + 80) = sub_260E69024();
  *(inited + 88) = v2;
  *(inited + 120) = MEMORY[0x277D84CC0];
  *(inited + 96) = 1111970369;
  sub_260E66228(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE542B8, &qword_260E6BFD0);
  swift_arrayDestroy();
  v3 = objc_allocWithZone(MEMORY[0x277CE65D0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE542C0, &qword_260E6BFD8);
  v4 = sub_260E68F84();

  v5 = [v3 initWithOutputSettings_];

  return v5;
}

uint64_t sub_260E144B8()
{
  MEMORY[0x2666F1F80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_260E144F0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_260E1455C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE542C8, &qword_260E6BFE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

_OWORD *sub_260E145CC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_260E145DC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_260E145EC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_260E145FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_260E14664(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoViewConfiguration(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_260E146C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

CVMetalTextureRef sub_260E14728(__CVBuffer *a1, __CVMetalTextureCache *a2)
{
  textureOut[1] = *MEMORY[0x277D85DE8];
  textureOut[0] = 0;
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  if (CVMetalTextureCacheCreateTextureFromImage(0, a2, a1, 0, MTLPixelFormatBGRA8Unorm_sRGB, Width, Height, 0, textureOut))
  {
    if (qword_27FE53D90 != -1)
    {
      swift_once();
    }

    v6 = sub_260E68E94();
    __swift_project_value_buffer(v6, qword_27FE54100);
    v7 = sub_260E68E74();
    v8 = sub_260E69454();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315138;
      v11 = sub_260E69084();
      v13 = sub_260E43774(v11, v12, &v15);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_260E02000, v7, v8, "Failed to create metal texture: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x2666F1EF0](v10, -1, -1);
      MEMORY[0x2666F1EF0](v9, -1, -1);
    }
  }

  return textureOut[0];
}

void sub_260E148F4(void *a1)
{
  v82 = *MEMORY[0x277D85DE8];
  v3 = [a1 device];
  if (!v3)
  {
    if (qword_27FE53D90 != -1)
    {
      swift_once();
    }

    v9 = sub_260E68E94();
    __swift_project_value_buffer(v9, qword_27FE54100);
    v77 = sub_260E68E74();
    v10 = sub_260E69454();
    if (os_log_type_enabled(v77, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_260E02000, v77, v10, "No rendering device", v11, 2u);
      MEMORY[0x2666F1EF0](v11, -1, -1);
    }

    return;
  }

  v4 = v3;
  v5 = [*(v1 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_player) currentItem];
  if (!v5)
  {
    if (qword_27FE53D90 != -1)
    {
      swift_once();
    }

    v12 = sub_260E68E94();
    __swift_project_value_buffer(v12, qword_27FE54100);
    v13 = sub_260E68E74();
    v14 = sub_260E69454();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_260E02000, v13, v14, "No current AVPlayer item", v15, 2u);
      MEMORY[0x2666F1EF0](v15, -1, -1);
    }

    swift_unknownObjectRelease();
    return;
  }

  v6 = v5;
  v7 = OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_textureCache;
  v8 = *(v1 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_textureCache);
  if (v8)
  {
    v77 = v8;
  }

  else
  {
    v16 = v1;
    if (qword_27FE53D90 != -1)
    {
      swift_once();
    }

    v17 = sub_260E68E94();
    __swift_project_value_buffer(v17, qword_27FE54100);
    v18 = sub_260E68E74();
    v19 = sub_260E69474();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_260E02000, v18, v19, "Creating texture cache", v20, 2u);
      MEMORY[0x2666F1EF0](v20, -1, -1);
    }

    cacheOut.value = 0;
    v21 = CVMetalTextureCacheCreate(0, 0, v4, 0, &cacheOut);
    if (v21 || (v22 = cacheOut.value) == 0)
    {
      v45 = sub_260E68E74();
      v46 = sub_260E69454();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 67109120;
        *(v47 + 4) = v21;
        _os_log_impl(&dword_260E02000, v45, v46, "VideoRendering SKIP -- Failed to create CVMetalTextureCacheCreate.result != success {status: %d}", v47, 8u);
        MEMORY[0x2666F1EF0](v47, -1, -1);
      }

      swift_unknownObjectRelease();

      value = cacheOut.value;
      goto LABEL_67;
    }

    v1 = v16;
    v23 = *(v16 + v7);
    *(v16 + v7) = cacheOut.value;
    v77 = v22;
  }

  [v6 currentTime];
  v24 = cacheOut.value;
  timescale = cacheOut.timescale;
  flags = cacheOut.flags;
  epoch = cacheOut.epoch;
  v28 = [v6 outputs];
  sub_260E157C4(0, &qword_27FE542E8, 0x277CE65C0);
  v29 = sub_260E691B4();

  if (!(v29 >> 62))
  {
    if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_28;
    }

LABEL_61:

LABEL_62:
    if (qword_27FE53D90 == -1)
    {
LABEL_63:
      v64 = sub_260E68E94();
      __swift_project_value_buffer(v64, qword_27FE54100);
      v65 = v6;
      v66 = sub_260E68E74();
      v67 = sub_260E69454();

      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        *v68 = 138412290;
        *(v68 + 4) = v65;
        *v69 = v6;
        v70 = v65;
        _os_log_impl(&dword_260E02000, v66, v67, "No output found for player item: %@", v68, 0xCu);
        sub_260E155E4(v69, &qword_27FE542F0, &unk_260E6BFF0);
        MEMORY[0x2666F1EF0](v69, -1, -1);
        MEMORY[0x2666F1EF0](v68, -1, -1);

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }

      value = v77;
LABEL_67:

      return;
    }

LABEL_70:
    swift_once();
    goto LABEL_63;
  }

  if (!sub_260E69714())
  {
    goto LABEL_61;
  }

LABEL_28:
  if ((v29 & 0xC000000000000001) != 0)
  {
    v30 = MEMORY[0x2666F1180](0, v29);
  }

  else
  {
    if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_70;
    }

    v30 = *(v29 + 32);
  }

  v31 = v30;

  objc_opt_self();
  v32 = swift_dynamicCastObjCClass();
  if (!v32)
  {

    goto LABEL_62;
  }

  cacheOut.value = v24;
  *&cacheOut.timescale = __PAIR64__(flags, timescale);
  cacheOut.epoch = epoch;
  v33 = v32;
  if (![v32 hasNewPixelBufferForItemTime_])
  {

    goto LABEL_59;
  }

  v34 = *MEMORY[0x277CC0898];
  v35 = *(MEMORY[0x277CC0898] + 16);
  lhs.epoch = epoch;
  cacheOut.value = v34;
  *&cacheOut.timescale = *(MEMORY[0x277CC0898] + 8);
  cacheOut.epoch = v35;
  lhs.value = v24;
  lhs.timescale = timescale;
  lhs.flags = flags;
  v36 = [v33 copyPixelBufferForItemTime:&lhs itemTimeForDisplay:&cacheOut];
  if (v36)
  {
    v75 = flags;
    v37 = v36;
    v38 = sub_260E14728(v36, v77);
    if (v38)
    {
      v74 = timescale;
      v76 = v37;
      v39 = v38;
      v40 = CVMetalTextureGetTexture(v38);
      if (v40)
      {
        v72 = v39;
        v71[0] = v71;
        v41 = *(v1 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_lock);
        MEMORY[0x28223BE20](v40);
        v73 = v1;
        v71[1] = v42;
        MEMORY[0x28223BE20](v42);
        os_unfair_lock_lock(v41 + 4);
        sub_260E154E4();
        os_unfair_lock_unlock(v41 + 4);
        if (*(v73 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_currentPlaybackState))
        {
          if (*(v73 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_currentPlaybackState) == 1)
          {
            v43 = *(v73 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_engageDuration);
            v44 = *(v73 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_engageDuration + 16);
            lhs = cacheOut;
            rhs.value = v43;
            *&rhs.timescale = *(v73 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_engageDuration + 8);
            rhs.epoch = v44;
          }

          else
          {
            v54 = cacheOut.value;
            v55 = cacheOut.epoch;
            v56 = *(v73 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_engageDuration + 16);
            v57 = *(v73 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_loopDuration);
            v58 = *(v73 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_loopDuration + 16);
            lhs.value = *(v73 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_engageDuration);
            *&lhs.timescale = *(v73 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_engageDuration + 8);
            lhs.epoch = v56;
            rhs.value = v57;
            *&rhs.timescale = *(v73 + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_loopDuration + 8);
            rhs.epoch = v58;
            v59 = *&cacheOut.timescale;
            CMTimeAdd(&v79, &lhs, &rhs);
            lhs.value = v54;
            *&lhs.timescale = v59;
            lhs.epoch = v55;
            rhs = v79;
          }

          CMTimeAdd(&v79, &lhs, &rhs);
          cacheOut = v79;
        }

        if (qword_27FE53D90 != -1)
        {
          swift_once();
        }

        v60 = sub_260E68E94();
        __swift_project_value_buffer(v60, qword_27FE54100);
        v61 = sub_260E68E74();
        v62 = sub_260E69444();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          *v63 = 134218496;
          *(v63 + 4) = CACurrentMediaTime();
          *(v63 + 12) = 2048;
          lhs.value = v24;
          lhs.timescale = v74;
          lhs.flags = v75;
          lhs.epoch = epoch;
          *(v63 + 14) = CMTimeGetSeconds(&lhs);
          *(v63 + 22) = 2048;
          swift_beginAccess();
          lhs = cacheOut;
          *(v63 + 24) = CMTimeGetSeconds(&lhs);
          _os_log_impl(&dword_260E02000, v61, v62, "SceneKit renderer media time: CACurrentMediaTime: %f, cmTimeForPixelBuffer: %f, itemTimeForDisplay: %f", v63, 0x20u);
          MEMORY[0x2666F1EF0](v63, -1, -1);
        }

        swift_beginAccess();
        rhs = cacheOut;
        [a1 setSceneTime_];

        swift_unknownObjectRelease();
        goto LABEL_59;
      }
    }

    else
    {
    }

LABEL_59:
    swift_unknownObjectRelease();

    return;
  }

  if (qword_27FE53D90 != -1)
  {
    swift_once();
  }

  v49 = sub_260E68E94();
  __swift_project_value_buffer(v49, qword_27FE54100);
  v50 = sub_260E68E74();
  v51 = sub_260E69454();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 134217984;
    sub_260E69504();
    *(v52 + 4) = v53;
    _os_log_impl(&dword_260E02000, v50, v51, "Failed to retrieve pixel buffer at %f", v52, 0xCu);
    MEMORY[0x2666F1EF0](v52, -1, -1);
  }

  swift_unknownObjectRelease();
}

void sub_260E1550C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC10ProductKitP33_D660C6A3879B3DCAB1A93C6FE6EA6B5B11SceneDriver_currentIOSurface);
  if (v1)
  {
    IOSurfaceDecrementUseCount(v1);
  }
}

unint64_t sub_260E15590()
{
  result = qword_27FE54330;
  if (!qword_27FE54330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54330);
  }

  return result;
}

uint64_t sub_260E155E4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_260E15684(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

id sub_260E156F8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 currentItem];
  *a2 = result;
  return result;
}

uint64_t sub_260E1573C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_260E1577C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_260E157C4(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_260E1580C(uint64_t a1)
{
  if (*(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_260E158AC()
{
  MEMORY[0x2666F11A0]();

  return swift_deallocClassInstance();
}

uint64_t sub_260E15918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_260E15978(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + *MEMORY[0x277D841D0] + 16);
  v6 = (*(*a3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a3 + v6));
  a1(a3 + v5);
  os_unfair_lock_unlock((a3 + v6));
}

uint64_t sub_260E15A94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x277D841D0]) - 8) + 16))(a2, v3);
}

uint64_t sub_260E15B64()
{
  v0 = sub_260E68E94();
  __swift_allocate_value_buffer(v0, qword_27FE54490);
  v1 = __swift_project_value_buffer(v0, qword_27FE54490);
  if (qword_27FE53E50 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FE5CB70);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

ProductKit::AirTagPairing2::Configuration::Color_optional __swiftcall AirTagPairing2.Configuration.Color.init(rawValue:)(Swift::UInt rawValue)
{
  if (rawValue == 99)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t AirTagPairing2.Configuration.Color.rawValue.getter()
{
  if (*v0)
  {
    return 99;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_260E15C74()
{
  v1 = *v0;
  sub_260E698F4();
  if (v1)
  {
    v2 = 99;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x2666F1410](v2);
  return sub_260E69914();
}

uint64_t sub_260E15CC4()
{
  if (*v0)
  {
    v1 = 99;
  }

  else
  {
    v1 = 0;
  }

  return MEMORY[0x2666F1410](v1);
}

uint64_t sub_260E15CFC(uint64_t a1)
{
  v2 = *v1;
  sub_260E698F4();
  if (v2)
  {
    v3 = 99;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x2666F1410](v3);
  return sub_260E69914();
}

void *sub_260E15D48@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 99)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

void sub_260E15D68(uint64_t *a1@<X8>)
{
  v2 = 99;
  if (!*v1)
  {
    v2 = 0;
  }

  *a1 = v2;
}

uint64_t AirTagPairing2.Configuration.engravingInformation.getter@<X0>(uint64_t *a1@<X8>)
{
  if (*(v1 + 48))
  {
    v3 = 0;
    v4 = 0xF000000000000000;
  }

  else
  {
    v4 = *(v1 + 32);
    v3 = *(v1 + 24);
    result = sub_260E15E24(v3, v4, *(v1 + 40), 0);
  }

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_260E15E24(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 2)
  {
    return sub_260E15E4C(a1, a2);
  }

  if (a4 != 1)
  {
    if (a4)
    {
      return a1;
    }

    return sub_260E15E4C(a1, a2);
  }
}

uint64_t sub_260E15E4C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t *sub_260E15EA0(uint64_t *result, uint64_t a2)
{
  v2 = result[1];
  if (v2 >> 60 != 15)
  {
    v3 = *result;
    v4 = *(a2 + 24);
    v5 = *(a2 + 32);
    v6 = *(a2 + 40);
    v7 = *(a2 + 48);
    sub_260E15E4C(*result, v2);
    result = sub_260E15F78(v4, v5, v6, v7);
    *(a2 + 24) = v3;
    *(a2 + 32) = v2;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
  }

  return result;
}

uint64_t *AirTagPairing2.Configuration.engravingInformation.setter(uint64_t *result)
{
  v2 = result[1];
  if (v2 >> 60 != 15)
  {
    v3 = *result;
    result = sub_260E15F78(*(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
    *(v1 + 24) = v3;
    *(v1 + 32) = v2;
    *(v1 + 40) = 0;
    *(v1 + 48) = 0;
  }

  return result;
}

uint64_t sub_260E15F78(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_260E15F8C(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t sub_260E15F8C(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 2)
  {
    return sub_260E15FB4(a1, a2);
  }

  if (a4 != 1)
  {
    if (a4)
    {
      return a1;
    }

    return sub_260E15FB4(a1, a2);
  }
}

uint64_t sub_260E15FB4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t *(*AirTagPairing2.Configuration.engravingInformation.modify(uint64_t *a1))(uint64_t *result, char a2)
{
  a1[2] = v1;
  if (*(v1 + 48))
  {
    v3 = 0;
    v4 = 0xF000000000000000;
  }

  else
  {
    v4 = *(v1 + 32);
    v3 = *(v1 + 24);
    sub_260E15E24(v3, v4, *(v1 + 40), 0);
  }

  *a1 = v3;
  a1[1] = v4;
  return sub_260E16080;
}

uint64_t *sub_260E16080(uint64_t *result, char a2)
{
  v2 = result[1];
  if (a2)
  {
    v3 = *result;
    if (v2 >> 60 != 15)
    {
      v4 = result[2];
      v5 = *(v4 + 24);
      v6 = *(v4 + 32);
      v7 = *(v4 + 40);
      v8 = *(v4 + 48);
      sub_260E15E4C(*result, v2);
      sub_260E15F78(v5, v6, v7, v8);
      *(v4 + 24) = v3;
      *(v4 + 32) = v2;
      *(v4 + 40) = 0;
      *(v4 + 48) = 0;
    }

    return sub_260E16168(v3, v2);
  }

  else if (v2 >> 60 != 15)
  {
    v9 = result[2];
    v10 = *result;
    result = sub_260E15F78(*(v9 + 24), *(v9 + 32), *(v9 + 40), *(v9 + 48));
    *(v9 + 24) = v10;
    *(v9 + 32) = v2;
    *(v9 + 40) = 0;
    *(v9 + 48) = 0;
  }

  return result;
}

uint64_t sub_260E16168(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_260E15FB4(result, a2);
  }

  return result;
}

uint64_t AirTagPairing2.Configuration.personalizationAssetInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = *(v1 + 48);
  *(a1 + 24) = v5;
  return sub_260E16198(v2, v3, v4, v5);
}

uint64_t sub_260E16198(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_260E15E24(a1, a2, a3, a4);
  }

  return a1;
}

__n128 AirTagPairing2.Configuration.personalizationAssetInfo.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  sub_260E15F78(*(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
  result = v5;
  *(v1 + 24) = v5;
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  return result;
}

void AirTagPairing2.Configuration.init(hardwareModel:color:timeout:)(unsigned __int8 *a1@<X1>, uint64_t a2@<X8>, double a3@<D0>)
{
  v3 = *a1;
  *(a2 + 16) = 1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0;
  *(a2 + 48) = -1;
  v4 = v3 == 0;
  v5 = 99;
  if (v4)
  {
    v5 = 0;
  }

  *a2 = v5;
  *(a2 + 8) = a3;
}

uint64_t _s10ProductKit17HeadphonePairing2V13ConfigurationV20engravingInformationAA27PersonalizationAssetManagerC0I4InfoOSgvg_0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = *(v1 + 48);
  *(a1 + 24) = v5;
  return sub_260E16198(v2, v3, v4, v5);
}

__n128 AirTagPairing2.AssetRequest.init(configuration:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  result = *(a1 + 24);
  *(a2 + 24) = result;
  *(a2 + 40) = v4;
  *(a2 + 48) = v5;
  return result;
}

uint64_t AirTagPairing2.AssetRequest.assets()()
{
  v2 = sub_260E68B04();
  *(v1 + 32) = v2;
  *(v1 + 40) = *(v2 - 8);
  *(v1 + 48) = swift_task_alloc();
  v3 = sub_260E68E24();
  *(v1 + 56) = v3;
  *(v1 + 64) = *(v3 - 8);
  *(v1 + 72) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE544A8, &qword_260E6C138);
  *(v1 + 80) = swift_task_alloc();
  v4 = sub_260E68B54();
  *(v1 + 88) = v4;
  *(v1 + 96) = *(v4 - 8);
  *(v1 + 104) = swift_task_alloc();
  *(v1 + 112) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE544B0, &qword_260E6C140);
  *(v1 + 120) = swift_task_alloc();
  v5 = sub_260E68B44();
  *(v1 + 128) = v5;
  *(v1 + 136) = *(v5 - 8);
  *(v1 + 144) = swift_task_alloc();
  *(v1 + 152) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE544B8, &qword_260E6C148);
  *(v1 + 160) = swift_task_alloc();
  v6 = sub_260E68DD4();
  *(v1 + 168) = v6;
  *(v1 + 176) = *(v6 - 8);
  *(v1 + 184) = swift_task_alloc();
  v7 = swift_task_alloc();
  v8 = *v0;
  *(v1 + 192) = v7;
  *(v1 + 200) = v8;
  *(v1 + 208) = v0[1];
  *(v1 + 216) = *(v0 + 3);
  *(v1 + 232) = v0[5];
  *(v1 + 280) = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_260E165E4, 0, 0);
}

uint64_t sub_260E165E4()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v3 = *(v0 + 160);
  sub_260E68DC4();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 160);
    v5 = &qword_27FE544B8;
    v6 = &qword_260E6C148;
LABEL_5:
    sub_260E155E4(v4, v5, v6);
    sub_260E15590();
    swift_allocError();
    *v11 = xmmword_260E6C120;
    *(v11 + 16) = 2;
    swift_willThrow();

    v12 = *(v0 + 8);

    return v12();
  }

  v7 = *(v0 + 128);
  v8 = *(v0 + 136);
  v9 = *(v0 + 120);
  (*(*(v0 + 176) + 32))(*(v0 + 192), *(v0 + 160), *(v0 + 168));
  sub_260E68B34();
  if ((*(v8 + 48))(v9, 1, v7) == 1)
  {
    v10 = *(v0 + 120);
    (*(*(v0 + 176) + 8))(*(v0 + 192), *(v0 + 168));
    v5 = &qword_27FE544B0;
    v6 = &qword_260E6C140;
    v4 = v10;
    goto LABEL_5;
  }

  v14 = *(v0 + 280);
  v15 = *(v0 + 184);
  v16 = *(v0 + 192);
  v17 = *(v0 + 168);
  v18 = *(v0 + 176);
  v20 = *(v0 + 144);
  v19 = *(v0 + 152);
  v21 = *(v0 + 128);
  v22 = *(v0 + 136);
  (*(v22 + 32))(v19, *(v0 + 120), v21);
  (*(v18 + 16))(v15, v16, v17);
  (*(v22 + 16))(v20, v19, v21);
  sub_260E68B14();
  if (v14 > 1)
  {
    if (v14 != 2)
    {
      v39 = 1;
      goto LABEL_17;
    }

    v29 = *(v0 + 224);
    v30 = *(v0 + 232);
    v31 = *(v0 + 216);
    v33 = *(v0 + 64);
    v32 = *(v0 + 72);
    v34 = *(v0 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE544C0, &unk_260E6E6F0);
    *v32 = v31;
    v32[1] = v29;
    sub_260E16198(v31, v29, v30, 2);
    sub_260E15E4C(v31, v29);
    sub_260E68D64();
    (*(v33 + 104))(v32, *MEMORY[0x277D42750], v34);
  }

  else
  {
    if (v14)
    {
      v26 = *(v0 + 64);
      v25 = *(v0 + 72);
      v27 = *(v0 + 56);
      sub_260E16198(*(v0 + 216), *(v0 + 224), *(v0 + 232), 1);

      sub_260E68E14();
      v28 = MEMORY[0x277D42748];
    }

    else
    {
      v23 = *(v0 + 224);
      v24 = *(v0 + 216);
      v26 = *(v0 + 64);
      v25 = *(v0 + 72);
      v27 = *(v0 + 56);
      sub_260E16198(v24, v23, *(v0 + 232), 0);
      sub_260E15E4C(v24, v23);
      sub_260E68E04();
      v28 = MEMORY[0x277D42740];
    }

    (*(v26 + 104))(v25, *v28, v27);
  }

  v35 = *(v0 + 224);
  v36 = *(v0 + 232);
  v37 = *(v0 + 216);
  v38 = *(v0 + 280);
  (*(*(v0 + 64) + 32))(*(v0 + 80), *(v0 + 72), *(v0 + 56));
  sub_260E15F78(v37, v35, v36, v38);
  v39 = 0;
LABEL_17:
  v40 = *(v0 + 104);
  v41 = *(v0 + 112);
  v42 = *(v0 + 88);
  v43 = *(v0 + 96);
  (*(*(v0 + 64) + 56))(*(v0 + 80), v39, 1, *(v0 + 56));
  sub_260E68B24();
  (*(v43 + 16))(v40, v41, v42);
  sub_260E68AE4();
  v44 = swift_task_alloc();
  *(v0 + 240) = v44;
  *v44 = v0;
  v44[1] = sub_260E16AE0;

  return MEMORY[0x2821A34D8]();
}

uint64_t sub_260E16AE0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 248) = a1;
  *(v3 + 256) = v1;

  if (v1)
  {
    v4 = sub_260E16FD0;
  }

  else
  {
    v4 = sub_260E16BF4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_260E16BF4()
{
  v14 = v0;
  if (qword_27FE53D98 != -1)
  {
    swift_once();
  }

  v1 = sub_260E68E94();
  __swift_project_value_buffer(v1, qword_27FE54490);

  v2 = sub_260E68E74();
  v3 = sub_260E69474();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[31];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    v0[3] = v4;
    sub_260E68BE4();

    v7 = sub_260E69084();
    v9 = sub_260E43774(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_260E02000, v2, v3, "Returning valid assets: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x2666F1EF0](v6, -1, -1);
    MEMORY[0x2666F1EF0](v5, -1, -1);
  }

  sub_260E692E4();
  v0[33] = sub_260E692D4();
  v11 = sub_260E69284();

  return MEMORY[0x2822009F8](sub_260E16DE0, v11, v10);
}

uint64_t sub_260E16DE0()
{
  v1 = *(v0 + 248);

  type metadata accessor for AirTagPairing2.Assets();
  v2 = swift_allocObject();
  *(v0 + 272) = v2;
  *(v2 + 16) = v1;

  return MEMORY[0x2822009F8](sub_260E16E64, 0, 0);
}

uint64_t sub_260E16E64()
{
  v1 = v0[24];
  v2 = v0[22];
  v12 = v0[21];
  v3 = v0[19];
  v4 = v0[17];
  v5 = v0[16];
  v6 = v0[14];
  v7 = v0[11];
  v8 = v0[12];
  (*(v0[5] + 8))(v0[6], v0[4]);
  (*(v8 + 8))(v6, v7);
  (*(v4 + 8))(v3, v5);
  (*(v2 + 8))(v1, v12);

  v9 = v0[1];
  v10 = v0[34];

  return v9(v10);
}

uint64_t sub_260E16FD0()
{
  v28 = v0;
  if (qword_27FE53D98 != -1)
  {
    swift_once();
  }

  v1 = v0[32];
  v2 = sub_260E68E94();
  __swift_project_value_buffer(v2, qword_27FE54490);
  v3 = v1;
  v4 = sub_260E68E74();
  v5 = sub_260E69454();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[32];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v27 = v8;
    *v7 = 136315138;
    v0[2] = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
    v10 = sub_260E69084();
    v12 = sub_260E43774(v10, v11, &v27);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_260E02000, v4, v5, "Failed to find assets: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x2666F1EF0](v8, -1, -1);
    MEMORY[0x2666F1EF0](v7, -1, -1);
  }

  v13 = v0[22];
  v25 = v0[21];
  v26 = v0[24];
  v14 = v0[17];
  v23 = v0[16];
  v24 = v0[19];
  v15 = v0[14];
  v17 = v0[11];
  v16 = v0[12];
  v18 = v0[5];
  v19 = v0[6];
  v20 = v0[4];
  swift_willThrow();
  (*(v18 + 8))(v19, v20);
  (*(v16 + 8))(v15, v17);
  (*(v14 + 8))(v24, v23);
  (*(v13 + 8))(v26, v25);

  v21 = v0[1];

  return v21();
}

uint64_t AirTagPairing2.Assets.AdjustedImageIdentifier.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_260E69764();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_260E17318()
{
  sub_260E698F4();
  sub_260E690C4();
  return sub_260E69914();
}

uint64_t sub_260E17384(uint64_t a1)
{
  sub_260E698F4();
  sub_260E690C4();
  return sub_260E69914();
}

uint64_t sub_260E173D4@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_260E69764();

  *a2 = v3 != 0;
  return result;
}

ProductKit::AirTagPairing2::Assets::VideoIdentifier_optional __swiftcall AirTagPairing2.Assets.VideoIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_260E69764();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AirTagPairing2.Assets.VideoIdentifier.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x64726143786F7250;
  if (v1 != 3)
  {
    v2 = 0x5F656C6261736944;
  }

  if (v1 == 2)
  {
    v2 = 0xD000000000000017;
  }

  v3 = 0xD000000000000012;
  if (*v0)
  {
    v3 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_260E17584()
{
  sub_260E698F4();
  sub_260E690C4();

  return sub_260E69914();
}

uint64_t sub_260E17688(uint64_t a1)
{
  sub_260E690C4();
}

uint64_t sub_260E17778(uint64_t a1)
{
  sub_260E698F4();
  sub_260E690C4();

  return sub_260E69914();
}

void sub_260E17884(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000706F6F6C5FLL;
  v4 = 0x64726143786F7250;
  if (v2 != 3)
  {
    v4 = 0x5F656C6261736944;
    v3 = 0xEC000000706F6F6CLL;
  }

  if (v2 == 2)
  {
    v4 = 0xD000000000000017;
    v3 = 0x8000000260E71030;
  }

  v5 = 0x8000000260E70FF0;
  v6 = 0xD000000000000012;
  if (*v1)
  {
    v6 = 0xD000000000000010;
    v5 = 0x8000000260E71010;
  }

  if (*v1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v4;
  }

  if (*v1 <= 1u)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

ProductKit::AirTagPairing2::Assets::ViewIdentifier_optional __swiftcall AirTagPairing2.Assets.ViewIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_260E69764();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t AirTagPairing2.Assets.ViewIdentifier.rawValue.getter()
{
  if (*v0)
  {
    return 1886351212;
  }

  else
  {
    return 0x6F72746E69;
  }
}

uint64_t sub_260E179F4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1886351212;
  }

  else
  {
    v3 = 0x6F72746E69;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1886351212;
  }

  else
  {
    v5 = 0x6F72746E69;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_260E69834();
  }

  return v8 & 1;
}

uint64_t sub_260E17A90()
{
  sub_260E698F4();
  sub_260E690C4();

  return sub_260E69914();
}

uint64_t sub_260E17B08(uint64_t a1)
{
  sub_260E690C4();
}

uint64_t sub_260E17B6C(uint64_t a1)
{
  sub_260E698F4();
  sub_260E690C4();

  return sub_260E69914();
}

uint64_t sub_260E17BE0@<X0>(char *a2@<X8>)
{
  v3 = sub_260E69764();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_260E17C40(uint64_t *a1@<X8>)
{
  v2 = 1886351212;
  if (!*v1)
  {
    v2 = 0x6F72746E69;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t AirTagPairing2.Assets.adjustedImage(_:)@<X0>(uint64_t *a1@<X8>)
{
  v41 = a1;
  v1 = sub_260E68AA4();
  v39 = *(v1 - 8);
  v40 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_260E68AD4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE544C8, &qword_260E6C150);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v34 - v12;
  v14 = sub_260E68BB4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_260E68BA4();
  result = (*(v15 + 48))(v13, 1, v14);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    sub_260E68B64();
    (*(v5 + 16))(v7, v10, v4);
    sub_260E68AC4();
    v19 = sub_260E68A94();
    v37 = v10;
    v20 = v7;
    v35 = v21;
    v22 = sub_260E68A84();
    v38 = v17;
    v23 = v4;
    v24 = v22;
    v25 = sub_260E68A64();
    v36 = v14;
    v26 = v25;
    v28 = v27;
    v29 = sub_260E68A74();
    (*(v39 + 8))(v3, v40);
    v30 = v29 & 1;
    v31 = v41;
    v32 = v35;
    *v41 = v19;
    v31[1] = v32;
    v31[2] = v24;
    v31[3] = v26;
    v31[4] = v28;
    *(v31 + 40) = v30;
    type metadata accessor for AdjustedAsset(0);
    sub_260E68AB4();
    v33 = *(v5 + 8);
    v33(v20, v23);
    v33(v37, v23);
    return (*(v15 + 8))(v38, v36);
  }

  return result;
}

uint64_t AirTagPairing2.Assets.video(_:)@<X0>(uint64_t *a2@<X8>)
{
  v39 = a2;
  v40 = sub_260E68AA4();
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v3 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_260E68AD4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE544D0, &qword_260E6C158);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v33 - v12;
  v14 = sub_260E68B84();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_260E68B74();
  result = (*(v15 + 48))(v13, 1, v14);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v19 = *(v15 + 32);
    v36 = v17;
    v19(v17, v13, v14);
    sub_260E68BC4();
    (*(v5 + 16))(v7, v10, v4);
    sub_260E68AC4();
    v20 = v3;
    v34 = sub_260E68A94();
    v22 = v21;
    v23 = v4;
    v24 = sub_260E68A84();
    v25 = sub_260E68A64();
    v35 = v10;
    v26 = v7;
    v27 = v25;
    v37 = v14;
    v29 = v28;
    v30 = sub_260E68A74();
    (*(v38 + 8))(v20, v40);
    v31 = v39;
    *v39 = v34;
    v31[1] = v22;
    v31[2] = v24;
    v31[3] = v27;
    v31[4] = v29;
    *(v31 + 40) = v30 & 1;
    type metadata accessor for AdjustedAsset(0);
    sub_260E68AB4();
    v32 = *(v5 + 8);
    v32(v26, v23);
    v32(v35, v23);
    return (*(v15 + 8))(v36, v37);
  }

  return result;
}

char *AirTagPairing2.Assets.view(_:)(unsigned __int8 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE544D8, &unk_260E6C160);
  MEMORY[0x28223BE20](v3 - 8);
  v129 = &v118 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v125 = &v118 - v6;
  v126 = type metadata accessor for VideoViewConfiguration.VideoSequence(0);
  MEMORY[0x28223BE20](v126);
  v121 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v123 = &v118 - v9;
  MEMORY[0x28223BE20](v10);
  v124 = &v118 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54320, &qword_260E6E720);
  MEMORY[0x28223BE20](v12 - 8);
  v128 = &v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v134 = &v118 - v15;
  v16 = type metadata accessor for AdjustedAsset(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = (&v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v21 = (&v118 - v20);
  v22 = sub_260E68904();
  v133 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v122 = &v118 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v127 = &v118 - v25;
  MEMORY[0x28223BE20](v26);
  v130 = &v118 - v27;
  MEMORY[0x28223BE20](v28);
  v135 = &v118 - v29;
  v132 = *a1;
  LOBYTE(v136) = 2;
  v131 = v1;
  AirTagPairing2.Assets.video(_:)(v21);
  v30 = *v21;
  v31 = v21[1];
  v32 = v21[2];
  v33 = v21[3];
  v34 = v21[4];
  v35 = *(v21 + 40);

  v36 = v32;

  v37 = v21;
  v38 = v133;
  sub_260E19404(v37, type metadata accessor for AdjustedAsset);
  *&v136 = v30;
  *(&v136 + 1) = v31;
  *&v137 = v36;
  *(&v137 + 1) = v33;
  *&v138 = v34;
  BYTE8(v138) = v35;
  v39 = v134;
  GenericAsset.fileURL.getter(v134);
  v40 = *(v38 + 48);
  if (v40(v39, 1, v22) == 1)
  {
    sub_260E155E4(v39, &qword_27FE54320, &qword_260E6E720);

LABEL_5:

    if (qword_27FE53D98 != -1)
    {
      swift_once();
    }

    v50 = sub_260E68E94();
    __swift_project_value_buffer(v50, qword_27FE54490);
    v51 = sub_260E68E74();
    v52 = sub_260E69464();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *&v136 = v54;
      *v53 = 136315138;
      v145 = v132;
      v55 = sub_260E69084();
      v57 = sub_260E43774(v55, v56, &v136);

      *(v53 + 4) = v57;
      _os_log_impl(&dword_260E02000, v51, v52, "Could not find AirTagPairingAssets.view files {identifier: %s}", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x2666F1EF0](v54, -1, -1);
      MEMORY[0x2666F1EF0](v53, -1, -1);
    }

    v58 = type metadata accessor for VideoViewConfiguration(0);
    v59 = v129;
    (*(*(v58 - 8) + 56))(v129, 1, 1, v58);
    v60 = objc_allocWithZone(type metadata accessor for AdjustedVideoView(0));
    return sub_260E559EC(v59);
  }

  v41 = *(v38 + 32);
  v120 = v38 + 32;
  v119 = v41;
  v41(v135, v39, v22);

  LOBYTE(v136) = 3;
  AirTagPairing2.Assets.video(_:)(v18);
  v42 = v18[1];
  v134 = *v18;
  v43 = v18[2];
  v44 = v18[3];
  v45 = v18[4];
  v46 = *(v18 + 40);

  v47 = v43;

  sub_260E19404(v18, type metadata accessor for AdjustedAsset);
  *&v136 = v134;
  *(&v136 + 1) = v42;
  v134 = v42;
  *&v137 = v47;
  *(&v137 + 1) = v44;
  *&v138 = v45;
  BYTE8(v138) = v46;
  v48 = v128;
  GenericAsset.fileURL.getter(v128);
  v49 = v22;
  if (v40(v48, 1, v22) == 1)
  {
    (*(v38 + 8))(v135, v22);
    sub_260E155E4(v48, &qword_27FE54320, &qword_260E6E720);

    goto LABEL_5;
  }

  v62 = v135;
  v119(v130, v48, v22);

  if (v132)
  {
    v63 = sub_260E69834();

    v64 = v124;
    v65 = v62;
    v66 = v127;
    if ((v63 & 1) == 0)
    {
      v67 = *(v38 + 16);
      v67(v124, v130, v49);
      v68 = v64;
      swift_storeEnumTagMultiPayload();
      goto LABEL_15;
    }
  }

  else
  {

    v64 = v124;
    v65 = v62;
    v66 = v127;
  }

  v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE542F8, &qword_260E6C170) + 48);
  v67 = *(v38 + 16);
  v67(v64, v130, v49);
  v67(&v64[v69], v65, v49);
  v68 = v64;
  swift_storeEnumTagMultiPayload();
  if ((v132 & 1) == 0)
  {

    goto LABEL_18;
  }

LABEL_15:
  v70 = sub_260E69834();

  if (v70)
  {
LABEL_18:
    v71 = v68;
    goto LABEL_19;
  }

  v71 = v68;
LABEL_19:
  type metadata accessor for MobileAssetManager();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v73 = [objc_opt_self() bundleForClass_];
  v74 = sub_260E68FF4();

  v75 = sub_260E68FF4();
  v76 = [v73 URLForResource:v74 withExtension:v75];

  if (v76)
  {
    sub_260E688C4();

    if (qword_27FE53D98 != -1)
    {
      swift_once();
    }

    v77 = sub_260E68E94();
    __swift_project_value_buffer(v77, qword_27FE54490);
    v78 = v123;
    sub_260E19464(v71, v123);
    v79 = v122;
    v67(v122, v66, v49);
    v80 = sub_260E68E74();
    v81 = sub_260E69434();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      *&v136 = v83;
      *v82 = 136315394;
      sub_260E19464(v78, v121);
      v84 = sub_260E69084();
      v85 = v78;
      v87 = v86;
      sub_260E19404(v85, type metadata accessor for VideoViewConfiguration.VideoSequence);
      v88 = sub_260E43774(v84, v87, &v136);

      *(v82 + 4) = v88;
      *(v82 + 12) = 2080;
      sub_260E194E8();
      v89 = sub_260E69804();
      v91 = v90;
      (*(v38 + 8))(v79, v49);
      v92 = sub_260E43774(v89, v91, &v136);

      *(v82 + 14) = v92;
      _os_log_impl(&dword_260E02000, v80, v81, "Creating VideoConfiguration {videoSequence: %s, sceneURL: %s", v82, 0x16u);
      swift_arrayDestroy();
      v93 = v83;
      v66 = v127;
      MEMORY[0x2666F1EF0](v93, -1, -1);
      MEMORY[0x2666F1EF0](v82, -1, -1);
    }

    else
    {

      (*(v38 + 8))(v79, v49);
      sub_260E19404(v78, type metadata accessor for VideoViewConfiguration.VideoSequence);
    }

    v103 = v125;
    sub_260E19464(v71, v125);
    v105 = sub_260E68BD4();
    v106 = type metadata accessor for VideoViewConfiguration(0);
    sub_260E50238(v103 + v106[5]);

    v107 = v106[6];
    v119((v103 + v107), v66, v49);
    (*(v38 + 56))(v103 + v107, 0, 1, v49);
    v108 = v106[7];
    v109 = sub_260E68DB4();
    (*(*(v109 - 8) + 56))(v103 + v108, 1, 1, v109);
    sub_260E194C8(&v136);
    *(v103 + v106[8]) = vdupq_n_s64(0x4093880000000000uLL);
    *(v103 + v106[9]) = 0xC082C00000000000;
    v110 = v103 + v106[10];
    v111 = v139;
    *(v110 + 32) = v138;
    *(v110 + 48) = v111;
    *(v110 + 128) = v144;
    v112 = v143;
    *(v110 + 96) = v142;
    *(v110 + 112) = v112;
    v113 = v141;
    *(v110 + 64) = v140;
    *(v110 + 80) = v113;
    v114 = v137;
    *v110 = v136;
    *(v110 + 16) = v114;
    *(v103 + v106[11]) = 0;
    (*(*(v106 - 1) + 56))(v103, 0, 1, v106);
    v65 = v135;
  }

  else
  {
    if (qword_27FE53D98 != -1)
    {
      swift_once();
    }

    v94 = sub_260E68E94();
    __swift_project_value_buffer(v94, qword_27FE54490);
    v95 = sub_260E68E74();
    v96 = sub_260E69464();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      *&v136 = v98;
      *v97 = 136315138;
      v145 = v132;
      v99 = sub_260E69084();
      v101 = v49;
      v102 = sub_260E43774(v99, v100, &v136);

      *(v97 + 4) = v102;
      v49 = v101;
      _os_log_impl(&dword_260E02000, v95, v96, "Missing sceneFile -- Failed to create VideoViewConfiguration {identifier: %s}", v97, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v98);
      MEMORY[0x2666F1EF0](v98, -1, -1);
      MEMORY[0x2666F1EF0](v97, -1, -1);
    }

    v103 = v125;
    v104 = type metadata accessor for VideoViewConfiguration(0);
    (*(*(v104 - 8) + 56))(v103, 1, 1, v104);
  }

  v115 = sub_260E68B94();
  v116 = sub_260E526E8(v103, v115);

  sub_260E155E4(v103, &qword_27FE544D8, &unk_260E6C160);
  sub_260E19404(v71, type metadata accessor for VideoViewConfiguration.VideoSequence);
  v117 = *(v38 + 8);
  v117(v130, v49);
  v117(v65, v49);
  return v116;
}

uint64_t AirTagPairing2.Assets.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_260E19404(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_260E19464(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoViewConfiguration.VideoSequence(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_260E194C8(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 1;
  return result;
}

unint64_t sub_260E194E8()
{
  result = qword_27FE54570;
  if (!qword_27FE54570)
  {
    sub_260E68904();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54570);
  }

  return result;
}

unint64_t sub_260E19544()
{
  result = qword_27FE544E0;
  if (!qword_27FE544E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE544E0);
  }

  return result;
}

unint64_t sub_260E1959C()
{
  result = qword_27FE544E8;
  if (!qword_27FE544E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE544E8);
  }

  return result;
}

unint64_t sub_260E195F4()
{
  result = qword_27FE544F0;
  if (!qword_27FE544F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE544F0);
  }

  return result;
}

unint64_t sub_260E1964C()
{
  result = qword_27FE544F8;
  if (!qword_27FE544F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE544F8);
  }

  return result;
}

unint64_t sub_260E196D4()
{
  result = qword_27FE54510;
  if (!qword_27FE54510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54510);
  }

  return result;
}

unint64_t sub_260E1975C()
{
  result = qword_27FE54528;
  if (!qword_27FE54528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54528);
  }

  return result;
}

uint64_t sub_260E197E0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_260E19834@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (*(result + 48))
  {
    v3 = 0;
    v4 = 0xF000000000000000;
  }

  else
  {
    v4 = *(result + 32);
    v3 = *(result + 24);
    result = sub_260E15E24(v3, v4, *(result + 40), 0);
  }

  *a2 = v3;
  a2[1] = v4;
  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10ProductKit27PersonalizationAssetManagerC0D4InfoOSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_260E19934(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 49))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 48);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_260E19984(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = ~a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AirTagHardwareModel(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AirTagHardwareModel(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AirTagPairing2.Assets.VideoIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AirTagPairing2.Assets.VideoIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HeadphonePairing.Assets.ViewIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HeadphonePairing.Assets.ViewIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s10ProductKit0A5ErrorO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      goto LABEL_10;
    }

    v17 = *a1;
    if (v3 != v6 || v2 != v5)
    {
      v9 = sub_260E69834();
      sub_260E1A318(v6, v5, 0);
      sub_260E1A318(v3, v2, 0);
      sub_260E1A330(v3, v2, 0);
      v10 = v6;
      v11 = v5;
      v12 = 0;
      goto LABEL_24;
    }

    sub_260E1A318(v17, v2, 0);
    sub_260E1A318(v3, v2, 0);
    sub_260E1A330(v3, v2, 0);
    v16 = v3;
    v19 = v2;
    v20 = 0;
LABEL_136:
    sub_260E1A330(v16, v19, v20);
    return 1;
  }

  if (v4 != 1)
  {
    switch(v3)
    {
      case 1:
        if (v7 != 2 || v6 != 1 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_260E1A330(*a1, v2, 2u);
        v13 = 1;
        sub_260E1A330(1, 0, 2u);
        return v13;
      case 2:
        if (v7 != 2 || v6 != 2 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_260E1A330(*a1, v2, 2u);
        v16 = 2;
        goto LABEL_135;
      case 3:
        if (v7 != 2 || v6 != 3 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_260E1A330(*a1, v2, 2u);
        v16 = 3;
        goto LABEL_135;
      case 4:
        if (v7 != 2 || v6 != 4 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_260E1A330(*a1, v2, 2u);
        v16 = 4;
        goto LABEL_135;
      case 5:
        if (v7 != 2 || v6 != 5 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_260E1A330(*a1, v2, 2u);
        v16 = 5;
        goto LABEL_135;
      case 6:
        if (v7 != 2 || v6 != 6 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_260E1A330(*a1, v2, 2u);
        v16 = 6;
        goto LABEL_135;
      case 7:
        if (v7 != 2 || v6 != 7 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_260E1A330(*a1, v2, 2u);
        v16 = 7;
        goto LABEL_135;
      case 8:
        if (v7 != 2 || v6 != 8 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_260E1A330(*a1, v2, 2u);
        v16 = 8;
        goto LABEL_135;
      case 9:
        if (v7 != 2 || v6 != 9 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_260E1A330(*a1, v2, 2u);
        v16 = 9;
        goto LABEL_135;
      case 10:
        if (v7 != 2 || v6 != 10 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_260E1A330(*a1, v2, 2u);
        v16 = 10;
        goto LABEL_135;
      case 11:
        if (v7 != 2 || v6 != 11 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_260E1A330(*a1, v2, 2u);
        v16 = 11;
        goto LABEL_135;
      case 12:
        if (v7 != 2 || v6 != 12 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_260E1A330(*a1, v2, 2u);
        v16 = 12;
        goto LABEL_135;
      default:
        if (v7 != 2 || (v5 | v6) != 0)
        {
          goto LABEL_10;
        }

        sub_260E1A330(*a1, v2, 2u);
        v16 = 0;
LABEL_135:
        v19 = 0;
        v20 = 2;
        break;
    }

    goto LABEL_136;
  }

  if (v7 != 1)
  {
LABEL_10:
    sub_260E1A318(*a2, a2[1], v7);
    sub_260E1A318(v3, v2, v4);
    sub_260E1A330(v3, v2, v4);
    sub_260E1A330(v6, v5, v7);
    return 0;
  }

  if (v3 == v6 && v2 == v5)
  {
    v13 = 1;
    sub_260E1A318(*a1, v2, 1u);
    sub_260E1A318(v3, v2, 1u);
    sub_260E1A330(v3, v2, 1u);
    sub_260E1A330(v3, v2, 1u);
    return v13;
  }

  v9 = sub_260E69834();
  sub_260E1A318(v6, v5, 1u);
  sub_260E1A318(v3, v2, 1u);
  sub_260E1A330(v3, v2, 1u);
  v10 = v6;
  v11 = v5;
  v12 = 1;
LABEL_24:
  sub_260E1A330(v10, v11, v12);
  return v9 & 1;
}

uint64_t get_enum_tag_for_layout_string_10ProductKit0A5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_260E1A264(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_260E1A2AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_260E1A2F0(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_260E1A318(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_260E1A330(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

void sub_260E1A348(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
  if (!swift_dynamicCast())
  {
    type metadata accessor for CKError(0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_8;
    }

    sub_260E338D4(&qword_27FE546F0, 255, type metadata accessor for CKError, &unk_260E6BB58);
    sub_260E68804();

    if ((v6 - 3) < 2)
    {
      goto LABEL_7;
    }

    if (v6 == 11)
    {
      v3 = 9;
      goto LABEL_9;
    }

    if (v6 == 36)
    {
LABEL_7:
      v3 = 2;
    }

    else
    {
LABEL_8:
      v3 = 0;
    }

LABEL_9:
    v4 = 0;
    v5 = 2;
    goto LABEL_10;
  }

  v3 = v7;
  v4 = v8;
  v5 = v9;
LABEL_10:

  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
}

uint64_t sub_260E1A48C()
{
  v0 = sub_260E68E94();
  __swift_allocate_value_buffer(v0, qword_27FE54540);
  v1 = __swift_project_value_buffer(v0, qword_27FE54540);
  if (qword_27FE53E68 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FE5CBB8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_260E1A554()
{
  v0 = sub_260E68904();
  __swift_allocate_value_buffer(v0, qword_27FE54558);
  __swift_project_value_buffer(v0, qword_27FE54558);
  return sub_260E68884();
}

uint64_t static PersonalizationAssetManager.defaultCacheDirectory.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FE53DA8 != -1)
  {
    swift_once();
  }

  v2 = sub_260E68904();
  v3 = __swift_project_value_buffer(v2, qword_27FE54558);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t PersonalizationAssetManager.__allocating_init(container:cacheDirectory:)(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  PersonalizationAssetManager.init(container:cacheDirectory:)(a1, a2);
  return v4;
}

uint64_t PersonalizationAssetManager.init(container:cacheDirectory:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v45 = _s19ParentDirectoryCRUDVMa(0);
  MEMORY[0x28223BE20](v45);
  v46 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_260E68904();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  if (qword_27FE53DA0 != -1)
  {
    swift_once();
  }

  v11 = sub_260E68E94();
  __swift_project_value_buffer(v11, qword_27FE54540);
  v12 = *(v8 + 16);
  v47 = a2;
  v12(v10, a2, v7);
  v13 = a1;
  v14 = sub_260E68E74();
  v15 = sub_260E69474();
  v48 = v8;
  v16 = v7;
  v17 = v15;

  if (os_log_type_enabled(v14, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v43 = v19;
    v44 = swift_slowAlloc();
    *&v49[0] = v44;
    *v18 = 138412546;
    *(v18 + 4) = v13;
    *v19 = v13;
    *(v18 + 12) = 2080;
    sub_260E338D4(&qword_27FE54570, 255, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v20 = v13;
    v21 = sub_260E69804();
    v23 = v22;
    (*(v48 + 8))(v10, v16);
    v24 = sub_260E43774(v21, v23, v49);

    *(v18 + 14) = v24;
    _os_log_impl(&dword_260E02000, v14, v17, "PersonalizationAssetManager INIT {container: %@, cacheDirectory: %s}", v18, 0x16u);
    v25 = v43;
    sub_260E155E4(v43, &qword_27FE542F0, &unk_260E6BFF0);
    MEMORY[0x2666F1EF0](v25, -1, -1);
    v26 = v44;
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x2666F1EF0](v26, -1, -1);
    MEMORY[0x2666F1EF0](v18, -1, -1);
  }

  else
  {

    (*(v48 + 8))(v10, v16);
  }

  v27 = [v13 publicCloudDatabase];
  v28 = [v13 privateCloudDatabase];
  v29 = [v13 privateCloudDatabase];
  v30 = [objc_opt_self() defaultManager];
  v31 = v46;
  (*(v48 + 32))(&v46[*(v45 + 20)], v47, v16);
  *v31 = v30;
  sub_260E1AB30(v27, v28, v29, v31, v49);
  v32 = v49[13];
  *(v3 + 304) = v49[12];
  *(v3 + 320) = v32;
  v33 = v49[15];
  *(v3 + 336) = v49[14];
  *(v3 + 352) = v33;
  v34 = v49[9];
  *(v3 + 240) = v49[8];
  *(v3 + 256) = v34;
  v35 = v49[11];
  *(v3 + 272) = v49[10];
  *(v3 + 288) = v35;
  v36 = v49[5];
  *(v3 + 176) = v49[4];
  *(v3 + 192) = v36;
  v37 = v49[7];
  *(v3 + 208) = v49[6];
  *(v3 + 224) = v37;
  v38 = v49[1];
  *(v3 + 112) = v49[0];
  *(v3 + 128) = v38;
  v39 = v49[3];
  *(v3 + 144) = v49[2];
  *(v3 + 160) = v39;
  *(v3 + 368) = v13;
  *(v3 + 376) = v13;
  v40 = v13;
  return v3;
}

id sub_260E1AB30@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = _s19ParentDirectoryCRUDVMa(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v52 = swift_allocObject();
  *(v52 + 16) = a1;
  v51 = swift_allocObject();
  *(v51 + 16) = a1;
  v50 = swift_allocObject();
  *(v50 + 16) = a1;
  v49 = swift_allocObject();
  *(v49 + 16) = a1;
  v48 = swift_allocObject();
  *(v48 + 16) = a2;
  v47 = swift_allocObject();
  *(v47 + 16) = a2;
  v46 = swift_allocObject();
  *(v46 + 16) = a2;
  v45 = swift_allocObject();
  *(v45 + 16) = a2;
  v44 = swift_allocObject();
  *(v44 + 16) = a3;
  v43 = swift_allocObject();
  *(v43 + 16) = a3;
  v42 = swift_allocObject();
  *(v42 + 16) = a3;
  v41 = swift_allocObject();
  *(v41 + 16) = a3;
  sub_260E33D88(a4, &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v40 = swift_allocObject();
  sub_260E33DF0(&v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v40 + v13);
  sub_260E33D88(a4, &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = swift_allocObject();
  sub_260E33DF0(&v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v39 + v13);
  sub_260E33D88(a4, &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = swift_allocObject();
  sub_260E33DF0(&v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  sub_260E33DF0(a4, &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = swift_allocObject();
  sub_260E33DF0(&v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v13);
  v16 = a1;
  v17 = a2;
  v18 = a3;
  v19 = v16;
  v20 = v17;
  v21 = v18;
  v22 = v19;
  v23 = v20;
  result = v21;
  v25 = v51;
  v26 = v52;
  *a5 = &unk_260E6D6E8;
  a5[1] = v26;
  a5[2] = &unk_260E6D6F8;
  a5[3] = v25;
  v27 = v49;
  v28 = v50;
  a5[4] = &unk_260E6D708;
  a5[5] = v28;
  a5[6] = &unk_260E6D718;
  a5[7] = v27;
  v29 = v47;
  v30 = v48;
  a5[8] = &unk_260E6D720;
  a5[9] = v30;
  a5[10] = &unk_260E6D728;
  a5[11] = v29;
  v31 = v45;
  v32 = v46;
  a5[12] = &unk_260E6D730;
  a5[13] = v32;
  a5[14] = &unk_260E6D738;
  a5[15] = v31;
  v33 = v43;
  v34 = v44;
  a5[16] = &unk_260E6D740;
  a5[17] = v34;
  a5[18] = &unk_260E6D748;
  a5[19] = v33;
  v35 = v41;
  v36 = v42;
  a5[20] = &unk_260E6D750;
  a5[21] = v36;
  a5[22] = &unk_260E6D758;
  a5[23] = v35;
  v37 = v39;
  v38 = v40;
  a5[24] = &unk_260E6D768;
  a5[25] = v38;
  a5[26] = &unk_260E6D778;
  a5[27] = v37;
  a5[28] = &unk_260E6D788;
  a5[29] = v14;
  a5[30] = &unk_260E6D798;
  a5[31] = v15;
  return result;
}

uint64_t PersonalizationAssetManager.__allocating_init(container:manateeContainer:cacheDirectory:)(void *a1, void *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  PersonalizationAssetManager.init(container:manateeContainer:cacheDirectory:)(a1, a2, a3);
  return v6;
}

uint64_t PersonalizationAssetManager.init(container:manateeContainer:cacheDirectory:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v55 = a3;
  v53 = _s19ParentDirectoryCRUDVMa(0);
  MEMORY[0x28223BE20](v53);
  v8 = &v47[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_260E68904();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v47[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_defaultActor_initialize();
  if (qword_27FE53DA0 != -1)
  {
    swift_once();
  }

  v13 = sub_260E68E94();
  __swift_project_value_buffer(v13, qword_27FE54540);
  (*(v10 + 16))(v12, v55, v9);
  v14 = a1;
  v54 = v10;
  v15 = v14;
  v16 = a2;
  v17 = v9;
  v18 = sub_260E68E74();
  v19 = sub_260E69474();

  v20 = os_log_type_enabled(v18, v19);
  v52 = v16;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v49 = v17;
    v22 = v21;
    v23 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *&v56[0] = v50;
    *v22 = 138412802;
    *(v22 + 4) = v15;
    *(v22 + 12) = 2112;
    *(v22 + 14) = v16;
    *v23 = v15;
    v23[1] = v16;
    *(v22 + 22) = 2080;
    sub_260E338D4(&qword_27FE54570, 255, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v51 = v8;
    v24 = v15;
    v25 = v16;
    v48 = v19;
    v26 = v49;
    v27 = sub_260E69804();
    v29 = v28;
    (*(v54 + 8))(v12, v26);
    v30 = sub_260E43774(v27, v29, v56);
    v8 = v51;

    *(v22 + 24) = v30;
    _os_log_impl(&dword_260E02000, v18, v48, "PersonalizationAssetManager INIT {container: %@, manateeContainer: %@, cacheDirectory: %s}", v22, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE542F0, &unk_260E6BFF0);
    swift_arrayDestroy();
    MEMORY[0x2666F1EF0](v23, -1, -1);
    v31 = v50;
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x2666F1EF0](v31, -1, -1);
    MEMORY[0x2666F1EF0](v22, -1, -1);

    v32 = v26;
  }

  else
  {

    (*(v54 + 8))(v12, v17);
    v32 = v17;
  }

  v33 = [v15 publicCloudDatabase];
  v34 = [v15 privateCloudDatabase];
  v35 = v52;
  v36 = [v52 privateCloudDatabase];
  v37 = [objc_opt_self() defaultManager];
  (*(v54 + 32))(v8 + *(v53 + 20), v55, v32);
  *v8 = v37;
  sub_260E1AB30(v33, v34, v36, v8, v56);
  v38 = v56[13];
  *(v4 + 304) = v56[12];
  *(v4 + 320) = v38;
  v39 = v56[15];
  *(v4 + 336) = v56[14];
  *(v4 + 352) = v39;
  v40 = v56[9];
  *(v4 + 240) = v56[8];
  *(v4 + 256) = v40;
  v41 = v56[11];
  *(v4 + 272) = v56[10];
  *(v4 + 288) = v41;
  v42 = v56[5];
  *(v4 + 176) = v56[4];
  *(v4 + 192) = v42;
  v43 = v56[7];
  *(v4 + 208) = v56[6];
  *(v4 + 224) = v43;
  v44 = v56[1];
  *(v4 + 112) = v56[0];
  *(v4 + 128) = v44;
  v45 = v56[3];
  *(v4 + 144) = v56[2];
  *(v4 + 160) = v45;
  *(v4 + 368) = v15;
  *(v4 + 376) = v35;
  return v4;
}

uint64_t PersonalizationAssetManager.asset(for:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 216) = a1;
  *(v3 + 224) = v2;
  v5 = sub_260E68EF4();
  *(v3 + 232) = v5;
  *(v3 + 240) = *(v5 - 8);
  *(v3 + 248) = swift_task_alloc();
  *(v3 + 256) = *a2;
  *(v3 + 272) = *(a2 + 16);
  *(v3 + 328) = *(a2 + 24);

  return MEMORY[0x2822009F8](sub_260E1B5A8, v2, 0);
}

uint64_t sub_260E1B5A8()
{
  if (*(v0 + 328))
  {
    if (*(v0 + 328) == 1)
    {
      v1 = *(v0 + 264);
      *(v0 + 176) = *(v0 + 256);
      *(v0 + 184) = v1;
      v2 = swift_task_alloc();
      *(v0 + 280) = v2;
      *v2 = v0;
      v2[1] = sub_260E1B97C;

      return sub_260E1C6EC(v0 + 136, (v0 + 176));
    }

    else
    {
      v22 = *(v0 + 256);
      v23 = *(v0 + 216);
      v24 = *(v0 + 264);
      *v23 = v22;
      *(v23 + 8) = v24;
      *(v23 + 24) = 0;
      sub_260E15E4C(v22, v24);

      v25 = *(v0 + 8);

      return v25();
    }
  }

  else
  {
    v5 = *(v0 + 256);
    v4 = *(v0 + 264);
    v26 = v4;
    v6 = *(v0 + 240);
    v7 = *(v0 + 248);
    v27 = *(v0 + 232);
    v29 = *(v0 + 224);
    sub_260E69644();
    *(v0 + 208) = sub_260E2FFA0(v5, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54580, &qword_260E6CA08);
    sub_260E335CC(&qword_27FE54588, &qword_27FE54580, &qword_260E6CA08, MEMORY[0x277D83958]);
    v8 = sub_260E68FC4();
    v10 = v9;

    MEMORY[0x2666F0C00](0x5F63696C6275705FLL, 0xEF6E6F736A2E3176);
    v11 = v10;
    v28 = v8;
    *(v0 + 296) = v10;
    sub_260E157C4(0, &qword_27FE54590, 0x277CBC5D0);
    sub_260E2D960(v7);
    sub_260E68ED4();
    (*(v6 + 8))(v7, v27);
    v13 = *(v0 + 192);
    v12 = *(v0 + 200);
    sub_260E68984();
    sub_260E15FB4(v13, v12);
    sub_260E157C4(0, &qword_27FE54598, 0x277CBC5F8);
    sub_260E69484();
    v14 = sub_260E69404();
    *(v0 + 304) = v14;
    v15 = v29[10];
    v17 = v29[7];
    v16 = v29[8];
    *(v0 + 48) = v29[9];
    *(v0 + 64) = v15;
    *(v0 + 16) = v17;
    *(v0 + 32) = v16;
    sub_260E15E4C(v5, v26);
    v18 = swift_task_alloc();
    *(v0 + 312) = v18;
    *v18 = v0;
    v18[1] = sub_260E1BA94;
    v19 = *(v0 + 256);
    v20 = *(v0 + 264);
    v21 = *(v0 + 224);

    return sub_260E24B24(v0 + 80, v28, v11, v14, v0 + 16, v21, v19, v20);
  }
}

uint64_t sub_260E1B97C()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  v3 = *(v2 + 224);
  if (v0)
  {
    v4 = sub_260E1BDD8;
  }

  else
  {
    v4 = sub_260E1BD30;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_260E1BA94()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  v3 = *(v2 + 304);
  v4 = *(v2 + 224);
  if (v0)
  {

    v5 = sub_260E1BCCC;
  }

  else
  {

    v5 = sub_260E1BC0C;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_260E1BC0C()
{
  v1 = v0[27];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[14];
  v5 = v0[15];
  v6 = v0[16];
  sub_260E15E4C(v4, v5);
  sub_260E15FB4(v3, v2);

  sub_260E15FB4(v4, v5);
  *v1 = v4;
  v1[1] = v5;
  v1[2] = v6;
  v1[3] = 0;

  v7 = v0[1];

  return v7();
}

uint64_t sub_260E1BCCC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_260E1BD30()
{
  v1 = v0[27];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[21];
  sub_260E15E4C(v2, v3);

  sub_260E15FB4(v2, v3);
  *v1 = v2;
  v1[1] = v3;
  v1[2] = v4;
  v1[3] = 0;

  v5 = v0[1];

  return v5();
}

uint64_t sub_260E1BDD8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t PersonalizationAssetManager.asset(for:)(uint64_t a1, _OWORD *a2)
{
  *(v3 + 160) = a1;
  *(v3 + 168) = v2;
  v5 = sub_260E68EF4();
  *(v3 + 176) = v5;
  *(v3 + 184) = *(v5 - 8);
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = *a2;

  return MEMORY[0x2822009F8](sub_260E1BF08, v2, 0);
}

uint64_t sub_260E1BF08()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v20 = v1;
  v3 = *(v0 + 184);
  v4 = *(v0 + 192);
  v21 = *(v0 + 176);
  v23 = *(v0 + 168);
  sub_260E69644();
  *(v0 + 152) = sub_260E2FFA0(v2, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54580, &qword_260E6CA08);
  sub_260E335CC(&qword_27FE54588, &qword_27FE54580, &qword_260E6CA08, MEMORY[0x277D83958]);
  v5 = sub_260E68FC4();
  v7 = v6;

  MEMORY[0x2666F0C00](0x5F63696C6275705FLL, 0xEF6E6F736A2E3176);
  v8 = v7;
  v22 = v5;
  *(v0 + 216) = v7;
  sub_260E157C4(0, &qword_27FE54590, 0x277CBC5D0);
  sub_260E2D960(v4);
  sub_260E68ED4();
  (*(v3 + 8))(v4, v21);
  v10 = *(v0 + 136);
  v9 = *(v0 + 144);
  sub_260E68984();
  sub_260E15FB4(v10, v9);
  sub_260E157C4(0, &qword_27FE54598, 0x277CBC5F8);
  sub_260E69484();
  v11 = sub_260E69404();
  *(v0 + 224) = v11;
  v12 = v23[10];
  v14 = v23[7];
  v13 = v23[8];
  *(v0 + 48) = v23[9];
  *(v0 + 64) = v12;
  *(v0 + 16) = v14;
  *(v0 + 32) = v13;
  sub_260E15E4C(v2, v20);
  v15 = swift_task_alloc();
  *(v0 + 232) = v15;
  *v15 = v0;
  v15[1] = sub_260E1C1C8;
  v16 = *(v0 + 200);
  v17 = *(v0 + 208);
  v18 = *(v0 + 168);

  return sub_260E24B24(v0 + 80, v22, v8, v11, v0 + 16, v18, v16, v17);
}

uint64_t sub_260E1C1C8()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 224);
  v4 = *(v2 + 168);
  if (v0)
  {

    v5 = sub_260E1C404;
  }

  else
  {

    v5 = sub_260E1C340;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_260E1C340()
{
  v1 = v0[20];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[14];
  v5 = v0[15];
  v6 = v0[16];
  sub_260E15E4C(v4, v5);
  sub_260E15FB4(v2, v3);

  sub_260E15FB4(v4, v5);
  *v1 = v4;
  v1[1] = v5;
  v1[2] = v6;
  v1[3] = 0;

  v7 = v0[1];

  return v7();
}

uint64_t sub_260E1C404()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t PersonalizationAssetManager.asset(for:)(uint64_t a1, uint64_t *a2)
{
  v3[9] = a1;
  v3[10] = v2;
  v4 = a2[1];
  v3[7] = *a2;
  v3[8] = v4;
  v5 = swift_task_alloc();
  v3[11] = v5;
  *v5 = v3;
  v5[1] = sub_260E1C514;

  return sub_260E1C6EC((v3 + 2), v3 + 7);
}

uint64_t sub_260E1C514()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 80);
  if (v0)
  {
    v4 = sub_260E1C6CC;
  }

  else
  {
    v4 = sub_260E1C62C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_260E1C62C()
{
  v1 = v0[9];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  sub_260E15E4C(v2, v3);

  sub_260E15FB4(v2, v3);
  *v1 = v2;
  v1[1] = v3;
  v1[2] = v4;
  v1[3] = 0;
  v5 = v0[1];

  return v5();
}

uint64_t sub_260E1C6EC(uint64_t a1, uint64_t *a2)
{
  v3[37] = a1;
  v3[38] = v2;
  v5 = sub_260E689E4();
  v3[39] = v5;
  v3[40] = *(v5 - 8);
  v3[41] = swift_task_alloc();
  v3[42] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54710, &qword_260E6D688) - 8);
  v3[43] = swift_task_alloc();
  v6 = swift_task_alloc();
  v7 = *a2;
  v8 = a2[1];
  v3[44] = v6;
  v3[45] = v7;
  v3[46] = v8;

  return MEMORY[0x2822009F8](sub_260E1C830, v2, 0);
}

uint64_t sub_260E1C830()
{
  v81 = v0;
  if (qword_27FE53DA0 != -1)
  {
    swift_once();
  }

  v1 = sub_260E68E94();
  *(v0 + 376) = __swift_project_value_buffer(v1, qword_27FE54540);

  v2 = sub_260E68E74();
  v3 = sub_260E69474();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 360);
    v4 = *(v0 + 368);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v78 = v7;
    *v6 = 136315394;

    sub_260E69644();

    v79 = v5;
    v80 = v4;
    MEMORY[0x2666F0C00](0xD000000000000010, 0x8000000260E72820);
    v8 = sub_260E43774(v5, v4, &v78);

    *(v6 + 4) = v8;
    *(v6 + 12) = 2080;
    sub_260E157C4(0, &qword_27FE54590, 0x277CBC5D0);
    sub_260E157C4(0, &qword_27FE54598, 0x277CBC5F8);

    sub_260E69484();
    v9 = sub_260E69404();
    v10 = [v9 recordName];

    v11 = sub_260E69024();
    v13 = v12;

    v14 = sub_260E43774(v11, v13, &v78);

    *(v6 + 14) = v14;
    _os_log_impl(&dword_260E02000, v2, v3, "Fetching PrivateRecord START {cacheName: %s, recordName: %s}", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2666F1EF0](v7, -1, -1);
    MEMORY[0x2666F1EF0](v6, -1, -1);
  }

  v15 = sub_260E380E4();
  v16 = *(v15 + 16);
  swift_bridgeObjectRetain_n();
  if (!v16)
  {
    goto LABEL_10;
  }

  v18 = *(v0 + 360);
  v17 = *(v0 + 368);

  v19 = sub_260E35BFC(v18, v17);
  if ((v20 & 1) == 0)
  {

LABEL_10:

    goto LABEL_11;
  }

  v22 = *(v0 + 344);
  v21 = *(v0 + 352);
  v23 = *(v0 + 312);
  v24 = *(v0 + 320);
  sub_260E15684(*(v15 + 56) + *(*(v0 + 336) + 72) * v19, v21, &qword_27FE54710, &qword_260E6D688);

  sub_260E15684(v21, v22, &qword_27FE54710, &qword_260E6D688);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    v25 = *(v0 + 344);
    v26 = *(v0 + 352);

    sub_260E155E4(v26, &qword_27FE54710, &qword_260E6D688);
    sub_260E155E4(v25, &qword_27FE54710, &qword_260E6D688);
LABEL_11:
    v28 = *(v0 + 360);
    v27 = *(v0 + 368);
    v29 = *(v0 + 304);
    v79 = 0;
    v80 = 0xE000000000000000;
    sub_260E69644();

    v79 = v28;
    v80 = v27;
    MEMORY[0x2666F0C00](0xD000000000000010, 0x8000000260E72820);
    v30 = v79;
    v31 = v80;
    *(v0 + 384) = v80;
    *(v0 + 392) = sub_260E157C4(0, &qword_27FE54590, 0x277CBC5D0);
    *(v0 + 400) = sub_260E157C4(0, &qword_27FE54598, 0x277CBC5F8);
    sub_260E69484();
    v32 = sub_260E69404();
    *(v0 + 408) = v32;
    v33 = v29[18];
    v35 = v29[15];
    v34 = v29[16];
    *(v0 + 48) = v29[17];
    *(v0 + 64) = v33;
    *(v0 + 16) = v35;
    *(v0 + 32) = v34;
    v36 = swift_task_alloc();
    *(v0 + 416) = v36;
    *v36 = v0;
    v36[1] = sub_260E1D1CC;
    v37 = *(v0 + 304);

    return sub_260E26724(v0 + 144, v30, v31, v32, v0 + 16, v37);
  }

  v39 = *(v0 + 344);
  v41 = *(v0 + 320);
  v40 = *(v0 + 328);
  v42 = *(v0 + 312);
  sub_260E689D4();
  sub_260E689C4();
  v44 = v43;
  v45 = *(v41 + 8);
  v45(v40, v42);
  v45(v39, v42);
  v46 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v47 = sub_260E68FF4();
  v48 = [v46 initWithSuiteName_];

  if (!v48 || (v49 = sub_260E68FF4(), v50 = [v48 integerForKey_], v49, v48, v50 < 1))
  {
    v51 = 1209600.0;
    if (v44 <= 1209600.0)
    {
      goto LABEL_17;
    }

LABEL_23:
    v62 = *(v0 + 360);
    v61 = *(v0 + 368);
    v63 = *(v0 + 312);
    v64 = *(v0 + 320);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54718, &qword_260E6D6A0);
    v65 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54720, &qword_260E6D6A8) - 8);
    v66 = (*(*v65 + 80) + 32) & ~*(*v65 + 80);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_260E6BDB0;
    v68 = (v67 + v66);
    v69 = v65[14];
    *v68 = v62;
    *(v68 + 1) = v61;
    (*(v64 + 56))(&v68[v69], 1, 1, v63);
    v70 = sub_260E66BA4(v67);
    swift_setDeallocating();
    sub_260E155E4(v68, &qword_27FE54720, &qword_260E6D6A8);
    swift_deallocClassInstance();
    sub_260E385B4(v70);

    v71 = sub_260E68E74();
    v72 = sub_260E69474();

    if (os_log_type_enabled(v71, v72))
    {
      v74 = *(v0 + 360);
      v73 = *(v0 + 368);
      v75 = *(v0 + 352);
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v79 = v77;
      *v76 = 136315650;
      *(v76 + 4) = sub_260E43774(v74, v73, &v79);
      *(v76 + 12) = 2048;
      *(v76 + 14) = v44;
      *(v76 + 22) = 2048;
      *(v76 + 24) = v51;
      _os_log_impl(&dword_260E02000, v71, v72, "Time delta since last fetch for %s is %f (s) which is more than %f. Removing from shouldNotFetchStatusEngravingAssetForBtAddress", v76, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v77);
      MEMORY[0x2666F1EF0](v77, -1, -1);
      MEMORY[0x2666F1EF0](v76, -1, -1);
    }

    else
    {
      v75 = *(v0 + 352);
    }

    sub_260E155E4(v75, &qword_27FE54710, &qword_260E6D688);
    goto LABEL_11;
  }

  v51 = v50;
  if (v44 > v50)
  {
    goto LABEL_23;
  }

LABEL_17:
  swift_bridgeObjectRelease_n();

  v52 = sub_260E68E74();
  v53 = sub_260E69474();

  if (os_log_type_enabled(v52, v53))
  {
    v55 = *(v0 + 360);
    v54 = *(v0 + 368);
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v79 = v57;
    *v56 = 136315650;
    *(v56 + 4) = sub_260E43774(v55, v54, &v79);
    *(v56 + 12) = 2048;
    *(v56 + 14) = v44;
    *(v56 + 22) = 2048;
    *(v56 + 24) = v51;
    _os_log_impl(&dword_260E02000, v52, v53, "Time delta since last fetch for %s is %f (s). which is less than %f. Assuming this device is not personalized so skipping engraving asset fetch", v56, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v57);
    MEMORY[0x2666F1EF0](v57, -1, -1);
    MEMORY[0x2666F1EF0](v56, -1, -1);
  }

  v58 = *(v0 + 352);
  sub_260E15590();
  swift_allocError();
  *v59 = xmmword_260E6C9E0;
  *(v59 + 16) = 2;
  swift_willThrow();
  sub_260E155E4(v58, &qword_27FE54710, &qword_260E6D688);

  v60 = *(v0 + 8);

  return v60();
}

uint64_t sub_260E1D1CC()
{
  v2 = *v1;
  *(*v1 + 424) = v0;

  v3 = *(v2 + 408);
  v4 = *(v2 + 304);

  if (v0)
  {

    v5 = sub_260E1D568;
  }

  else
  {
    swift_bridgeObjectRelease_n();

    v5 = sub_260E1D36C;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_260E1D36C()
{
  v24 = v0;
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[21];
  v20 = v0[22];

  v5 = sub_260E68E74();
  v6 = sub_260E69474();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[46];
  if (v7)
  {
    v18 = v4;
    v9 = v2;
    v10 = v0[45];
    v11 = swift_slowAlloc();
    v19 = v1;
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136315138;
    sub_260E69644();

    v22 = v10;
    v23 = v8;
    v2 = v9;
    v4 = v18;
    MEMORY[0x2666F0C00](0xD000000000000010, 0x8000000260E72820);
    v13 = sub_260E43774(v22, v8, &v21);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_260E02000, v5, v6, "Fetching PrivateRecord END --- manatee container {cacheName: %s}", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    v14 = v12;
    v1 = v19;
    MEMORY[0x2666F1EF0](v14, -1, -1);
    MEMORY[0x2666F1EF0](v11, -1, -1);
  }

  else
  {
  }

  v15 = v0[37];
  *v15 = v1;
  v15[1] = v2;
  v15[2] = v3;
  v15[3] = v4;
  v15[4] = v20;

  v16 = v0[1];

  return v16();
}

uint64_t sub_260E1D568()
{
  v31 = v0;
  v1 = *(v0 + 424);

  v2 = v1;
  v3 = sub_260E68E74();
  v4 = sub_260E69454();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 424);
    v6 = *(v0 + 360);
    v27 = *(v0 + 368);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v28 = v8;
    *v7 = 136315394;
    *(v0 + 288) = v5;
    v9 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
    v10 = sub_260E69084();
    v12 = sub_260E43774(v10, v11, &v28);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2080;
    v29 = 0;
    v30 = 0xE000000000000000;
    sub_260E69644();

    v29 = v6;
    v30 = v27;
    MEMORY[0x2666F0C00](0xD000000000000010, 0x8000000260E72820);
    v13 = sub_260E43774(v29, v30, &v28);

    *(v7 + 14) = v13;
    _os_log_impl(&dword_260E02000, v3, v4, "### Error fetching from manatee CloudKit container --- fallback to non manatee {error: %s, cacheName: %s}", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2666F1EF0](v8, -1, -1);
    MEMORY[0x2666F1EF0](v7, -1, -1);
  }

  else
  {
    v14 = *(v0 + 424);
  }

  v16 = *(v0 + 360);
  v15 = *(v0 + 368);
  v17 = *(v0 + 304);
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_260E69644();

  v29 = v16;
  v30 = v15;
  MEMORY[0x2666F0C00](0xD000000000000010, 0x8000000260E72820);
  v18 = v29;
  v19 = v30;
  *(v0 + 432) = v30;
  sub_260E69484();
  v20 = sub_260E69404();
  *(v0 + 440) = v20;
  v21 = v17[14];
  v23 = v17[11];
  v22 = v17[12];
  *(v0 + 112) = v17[13];
  *(v0 + 128) = v21;
  *(v0 + 80) = v23;
  *(v0 + 96) = v22;
  v24 = swift_task_alloc();
  *(v0 + 448) = v24;
  *v24 = v0;
  v24[1] = sub_260E1D868;
  v25 = *(v0 + 304);

  return sub_260E28108(v0 + 184, v18, v19, v20, v0 + 80, v25);
}

uint64_t sub_260E1D868()
{
  v2 = *v1;
  *(*v1 + 456) = v0;

  v3 = *(v2 + 440);
  v4 = *(v2 + 304);

  if (v0)
  {

    v5 = sub_260E1DC04;
  }

  else
  {
    swift_bridgeObjectRelease_n();

    v5 = sub_260E1DA08;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_260E1DA08()
{
  v24 = v0;
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[25];
  v4 = v0[26];
  v20 = v0[27];

  v5 = sub_260E68E74();
  v6 = sub_260E69474();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[46];
  if (v7)
  {
    v18 = v4;
    v9 = v2;
    v10 = v0[45];
    v11 = swift_slowAlloc();
    v19 = v1;
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136315138;
    sub_260E69644();

    v22 = v10;
    v23 = v8;
    v2 = v9;
    v4 = v18;
    MEMORY[0x2666F0C00](0xD000000000000010, 0x8000000260E72820);
    v13 = sub_260E43774(v22, v8, &v21);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_260E02000, v5, v6, "Fetching PrivateRecord END --- fallback to non manatee container {cacheName: %s}", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    v14 = v12;
    v1 = v19;
    MEMORY[0x2666F1EF0](v14, -1, -1);
    MEMORY[0x2666F1EF0](v11, -1, -1);
  }

  else
  {
  }

  v15 = v0[37];
  *v15 = v1;
  v15[1] = v2;
  v15[2] = v3;
  v15[3] = v4;
  v15[4] = v20;

  v16 = v0[1];

  return v16();
}

uint64_t sub_260E1DC04()
{
  v50 = v0;
  v1 = *(v0 + 456);
  *(v0 + 272) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 224);
    v4 = *(v0 + 232);
    v5 = *(v0 + 240);
    if (v5 == 2 && v3 == 9 && v4 == 0)
    {
      v24 = *(v0 + 456);

      v25 = sub_260E68E74();
      v26 = sub_260E69474();

      v27 = os_log_type_enabled(v25, v26);
      v28 = *(v0 + 368);
      if (v27)
      {
        v29 = *(v0 + 360);
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v47 = v31;
        *v30 = 136315394;
        *(v0 + 248) = xmmword_260E6C9E0;
        *(v0 + 264) = 2;
        v32 = sub_260E69084();
        v34 = sub_260E43774(v32, v33, &v47);

        *(v30 + 4) = v34;
        *(v30 + 12) = 2080;
        v48 = 0;
        v49 = 0xE000000000000000;
        sub_260E69644();

        v48 = v29;
        v49 = v28;
        MEMORY[0x2666F0C00](0xD000000000000010, 0x8000000260E72820);
        v35 = sub_260E43774(v48, v49, &v47);

        *(v30 + 14) = v35;
        _os_log_impl(&dword_260E02000, v25, v26, "### assetNotFound so device has no engraving, caching to not fetch this asset again. {error: %s, cacheName: %s}", v30, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2666F1EF0](v31, -1, -1);
        MEMORY[0x2666F1EF0](v30, -1, -1);
      }

      else
      {
      }

      v37 = *(v0 + 360);
      v36 = *(v0 + 368);
      v38 = *(v0 + 312);
      v39 = *(v0 + 320);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54718, &qword_260E6D6A0);
      v40 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54720, &qword_260E6D6A8) - 8);
      v41 = (*(*v40 + 80) + 32) & ~*(*v40 + 80);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_260E6BDB0;
      v43 = (v42 + v41);
      v44 = v40[14];
      *v43 = v37;
      *(v43 + 1) = v36;
      sub_260E689D4();
      (*(v39 + 56))(&v43[v44], 0, 1, v38);
      v45 = sub_260E66BA4(v42);
      swift_setDeallocating();
      sub_260E155E4(v43, &qword_27FE54720, &qword_260E6D6A8);
      swift_deallocClassInstance();
      sub_260E385B4(v45);
      sub_260E15590();
      swift_allocError();
      *v46 = xmmword_260E6C9E0;
      *(v46 + 16) = 2;
      swift_willThrow();

      goto LABEL_14;
    }

    sub_260E1A330(v3, v4, v5);
  }

  v8 = *(v0 + 456);
  swift_bridgeObjectRelease_n();

  v9 = v8;
  v10 = sub_260E68E74();
  v11 = sub_260E69454();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 456);
    v14 = *(v0 + 360);
    v13 = *(v0 + 368);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v47 = v16;
    *v15 = 136315394;
    *(v0 + 280) = v12;
    v17 = v12;
    v18 = sub_260E69084();
    v20 = sub_260E43774(v18, v19, &v47);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    v48 = 0;
    v49 = 0xE000000000000000;
    sub_260E69644();

    v48 = v14;
    v49 = v13;
    MEMORY[0x2666F0C00](0xD000000000000010, 0x8000000260E72820);
    v21 = sub_260E43774(v48, v49, &v47);

    *(v15 + 14) = v21;
    _os_log_impl(&dword_260E02000, v10, v11, "### Error fetching from non manatee CloudKit container {error: %s, cacheName: %s}", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2666F1EF0](v16, -1, -1);
    MEMORY[0x2666F1EF0](v15, -1, -1);
  }

  else
  {
  }

  swift_willThrow();
LABEL_14:

  v22 = *(v0 + 8);

  return v22();
}