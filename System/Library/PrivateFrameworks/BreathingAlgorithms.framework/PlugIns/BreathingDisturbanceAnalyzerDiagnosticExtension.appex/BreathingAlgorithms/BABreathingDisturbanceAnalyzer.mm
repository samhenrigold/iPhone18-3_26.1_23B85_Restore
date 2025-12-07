@interface BABreathingDisturbanceAnalyzer
+ (BABreathingDisturbanceAnalysis)analyzeSamples:(SEL)samples dateInterval:(id)interval;
@end

@implementation BABreathingDisturbanceAnalyzer

+ (BABreathingDisturbanceAnalysis)analyzeSamples:(SEL)samples dateInterval:(id)interval
{
  intervalCopy = interval;
  v96 = a5;
  retstr->var0 = &off_1000149D0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  obj = intervalCopy;
  v8 = [obj countByEnumeratingWithState:&v108 objects:v119 count:16];
  v9 = v8;
  if (v8)
  {
    v10 = *v109;
    do
    {
      v11 = 0;
      do
      {
        if (*v109 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v108 + 1) + 8 * v11);
        v13 = sub_100002E38(v8);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          quantity = [v12 quantity];
          v15 = +[HKUnit countUnit];
          [quantity doubleValueForUnit:v15];
          v17 = v16;
          startDate = [v12 startDate];
          endDate = [v12 endDate];
          uUID = [v12 UUID];
          *buf = 134546435;
          *&buf[4] = v17;
          *&buf[12] = 2114;
          *&buf[14] = startDate;
          *&buf[22] = 2114;
          *&buf[24] = endDate;
          LOWORD(v117) = 2114;
          *(&v117 + 2) = uUID;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{sensitive}lf for %{public}@ - %{public}@ for %{public}@", buf, 0x2Au);
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v8 = [obj countByEnumeratingWithState:&v108 objects:v119 count:16];
      v9 = v8;
    }

    while (v8);
  }

  v21 = [obj count];
  if (v21 < 0x1F)
  {
    startDate2 = [v96 startDate];
    endDate2 = [v96 endDate];
    v25 = [startDate2 isEqualToDate:endDate2];

    if (v25)
    {
      v27 = sub_100002E38(v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        startDate3 = [v96 startDate];
        endDate3 = [v96 endDate];
        sub_10000C3EC(startDate3, endDate3, buf, v27);
      }
    }

    else
    {
      __src = 0;
      v106 = 0;
      v107 = 0;
      sub_100002BDC(&__src, [obj count]);
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v97 = obj;
      v30 = [v97 countByEnumeratingWithState:&v101 objects:v118 count:16];
      if (v30)
      {
        v31 = *v102;
        v32 = HKQuantityTypeIdentifierAppleSleepingBreathingDisturbances;
LABEL_20:
        v33 = 0;
        while (1)
        {
          if (*v102 != v31)
          {
            objc_enumerationMutation(v97);
          }

          v34 = *(*(&v101 + 1) + 8 * v33);
          quantity2 = [v34 quantity];
          v36 = +[HKUnit countUnit];
          [quantity2 doubleValueForUnit:v36];
          v38 = v37;

          quantityType = [v34 quantityType];
          identifier = [quantityType identifier];
          v41 = identifier == v32;

          if (!v41)
          {
            v90 = sub_100002E38(v42);
            if (os_log_type_enabled(v90, OS_LOG_TYPE_FAULT))
            {
              quantityType2 = [v34 quantityType];
              identifier2 = [quantityType2 identifier];
              uUID2 = [v34 UUID];
              *buf = 138543618;
              *&buf[4] = identifier2;
              *&buf[12] = 2114;
              *&buf[14] = uUID2;
              _os_log_fault_impl(&_mh_execute_header, v90, OS_LOG_TYPE_FAULT, "Invalid HealthKit type (%{public}@) for sample %{public}@.", buf, 0x16u);
            }

            goto LABEL_54;
          }

          if (v38 < 0.0)
          {
            v90 = sub_100002E38(v42);
            if (os_log_type_enabled(v90, OS_LOG_TYPE_FAULT))
            {
              [v34 UUID];
              objc_claimAutoreleasedReturnValue();
              sub_10000C364();
            }

            goto LABEL_54;
          }

          if (v38 > 130.0)
          {
            v90 = sub_100002E38(v42);
            if (os_log_type_enabled(v90, OS_LOG_TYPE_FAULT))
            {
              [v34 UUID];
              objc_claimAutoreleasedReturnValue();
              sub_10000C320();
            }

            goto LABEL_54;
          }

          endDate4 = [v34 endDate];
          startDate4 = [v96 startDate];
          v45 = [endDate4 compare:startDate4] == 1;

          if (!v45)
          {
            break;
          }

          endDate5 = [v34 endDate];
          endDate6 = [v96 endDate];
          v49 = [endDate5 compare:endDate6] == 1;

          if (v49)
          {
            v90 = sub_100002E38(v50);
            if (os_log_type_enabled(v90, OS_LOG_TYPE_FAULT))
            {
              [v34 UUID];
              objc_claimAutoreleasedReturnValue();
              sub_10000C2DC();
            }

LABEL_54:

            goto LABEL_55;
          }

          startDate5 = [v34 startDate];
          [startDate5 timeIntervalSinceReferenceDate];
          v53 = v52;
          endDate7 = [v34 endDate];
          [endDate7 timeIntervalSinceReferenceDate];
          v56 = v38;
          v57 = v106;
          if (v106 >= v107)
          {
            v59 = __src;
            v60 = v106 - __src;
            v61 = 0xAAAAAAAAAAAAAAABLL * ((v106 - __src) >> 3);
            v62 = v61 + 1;
            if (v61 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_100002CD0();
            }

            if (0x5555555555555556 * ((v107 - __src) >> 3) > v62)
            {
              v62 = 0x5555555555555556 * ((v107 - __src) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v107 - __src) >> 3) >= 0x555555555555555)
            {
              v62 = 0xAAAAAAAAAAAAAAALL;
            }

            if (v62)
            {
              sub_100002D78(&__src, v62);
            }

            v63 = 8 * ((v106 - __src) >> 3);
            *v63 = v56;
            *(v63 + 8) = v53;
            *(v63 + 16) = v55;
            v58 = 24 * v61 + 24;
            v64 = (24 * v61 - v60);
            memcpy((v63 - v60), v59, v60);
            v65 = __src;
            __src = v64;
            v106 = v58;
            v107 = 0;
            if (v65)
            {
              operator delete(v65);
            }
          }

          else
          {
            *v106 = v56;
            v58 = (v57 + 6);
            *(v57 + 1) = v53;
            *(v57 + 2) = v55;
          }

          v106 = v58;

          if (v30 == ++v33)
          {
            v30 = [v97 countByEnumeratingWithState:&v101 objects:v118 count:16];
            if (v30)
            {
              goto LABEL_20;
            }

            goto LABEL_41;
          }
        }

        v90 = sub_100002E38(v46);
        if (os_log_type_enabled(v90, OS_LOG_TYPE_FAULT))
        {
          [v34 UUID];
          objc_claimAutoreleasedReturnValue();
          sub_10000C298();
        }

        goto LABEL_54;
      }

LABEL_41:

      NebulaNotification::Processor::Processor(v100);
      v117 = 0u;
      memset(buf, 0, sizeof(buf));
      NebulaNotification::Processor::process(&__src, buf);
      v114[0] = @"notification_status";
      v66 = [NSNumber numberWithUnsignedChar:buf[4]];
      v115[0] = v66;
      v114[1] = @"percent_bd_at_least_10";
      LODWORD(v67) = *&buf[8];
      v98 = [NSNumber numberWithFloat:v67];
      v115[1] = v98;
      v114[2] = @"percent_bd_at_least_11";
      LODWORD(v68) = *&buf[12];
      v69 = [NSNumber numberWithFloat:v68];
      v115[2] = v69;
      v114[3] = @"percent_bd_at_least_12";
      LODWORD(v70) = *&buf[16];
      v71 = [NSNumber numberWithFloat:v70];
      v115[3] = v71;
      v114[4] = @"percent_bd_at_least_13";
      LODWORD(v72) = *&buf[20];
      v73 = [NSNumber numberWithFloat:v72];
      v115[4] = v73;
      v114[5] = @"bd_count";
      v74 = [NSNumber numberWithInt:*&buf[24]];
      v115[5] = v74;
      v114[6] = @"bd_median";
      LODWORD(v75) = *&buf[28];
      v76 = [NSNumber numberWithFloat:v75];
      v115[6] = v76;
      v114[7] = @"bd_mean";
      LODWORD(v77) = v117;
      v78 = [NSNumber numberWithFloat:v77];
      v115[7] = v78;
      v114[8] = @"bd_standard_deviation";
      LODWORD(v79) = DWORD1(v117);
      v80 = [NSNumber numberWithFloat:v79];
      v115[8] = v80;
      v114[9] = @"bd_maximum";
      LODWORD(v81) = DWORD2(v117);
      v82 = [NSNumber numberWithFloat:v81];
      v115[9] = v82;
      v114[10] = @"bd_minimum";
      LODWORD(v83) = HIDWORD(v117);
      v84 = [NSNumber numberWithFloat:v83];
      v115[10] = v84;
      v85 = [NSDictionary dictionaryWithObjects:v115 forKeys:v114 count:11];
      var1 = retstr->var1;
      retstr->var1 = v85;

      v87 = buf[0];
      retstr->var2 = buf[0];
      v89 = sub_100002E38(v88);
      if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
      {
        *v112 = 67436801;
        v113 = v87;
        _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "Algs result: %{sensitive}u", v112, 8u);
      }

      NebulaNotification::Processor::~Processor(v100);
LABEL_55:
      if (__src)
      {
        v106 = __src;
        operator delete(__src);
      }
    }
  }

  else
  {
    v22 = sub_100002E38(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      sub_10000C45C(buf, [obj count], v22);
    }
  }

  return result;
}

@end