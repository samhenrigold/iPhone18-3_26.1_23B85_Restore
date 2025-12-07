@interface EventToDictionaryConverter
+ (id)convertEvents:(id)events;
+ (id)eventTypeToNSString:(unint64_t)string;
+ (id)paramTypeToNSString:(unint64_t)string;
@end

@implementation EventToDictionaryConverter

+ (id)eventTypeToNSString:(unint64_t)string
{
  v42[33] = *MEMORY[0x277D85DE8];
  {
    v40 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:32514];
    v41[0] = v40;
    v42[0] = @"AudioSineTransient";
    v39 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:32513];
    v41[1] = v39;
    v42[1] = @"AudioSine";
    v38 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:32611];
    v41[2] = v38;
    v42[2] = @"HapticSineTransient";
    v37 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:32610];
    v41[3] = v37;
    v42[3] = @"HapticSine";
    v36 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:15713];
    v41[4] = v36;
    v42[4] = @"HapticSineLow";
    v35 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:15969];
    v41[5] = v35;
    v42[5] = @"HapticSineLowMid";
    v34 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:16225];
    v41[6] = v34;
    v42[6] = @"HapticSineMid";
    v33 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:16481];
    v41[7] = v33;
    v42[7] = @"HapticSineMidHigh";
    v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:16737];
    v41[8] = v32;
    v42[8] = @"HapticSineHigh";
    v31 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:8021];
    v41[9] = v31;
    v42[9] = @"HapticMicroTap2";
    v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:11093];
    v41[10] = v30;
    v42[10] = @"HapticMicroTap3";
    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:14165];
    v41[11] = v29;
    v42[11] = @"HapticMicroTap4";
    v28 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:17237];
    v41[12] = v28;
    v42[12] = @"HapticMicroTap5";
    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:20309];
    v41[13] = v27;
    v42[13] = @"HapticMicroTap6";
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:23381];
    v41[14] = v26;
    v42[14] = @"HapticMicroTap7";
    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:26453];
    v41[15] = v25;
    v42[15] = @"HapticMicroTap8";
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:29525];
    v41[16] = v24;
    v42[16] = @"HapticMicroTap9";
    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:8022];
    v41[17] = v23;
    v42[17] = @"HapticMiniTap2";
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:11094];
    v41[18] = v22;
    v42[18] = @"HapticMiniTap3";
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:14166];
    v41[19] = v21;
    v42[19] = @"HapticMiniTap4";
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:17238];
    v41[20] = v20;
    v42[20] = @"HapticMiniTap5";
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:20310];
    v41[21] = v19;
    v42[21] = @"HapticMiniTap6";
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:23382];
    v41[22] = v18;
    v42[22] = @"HapticMiniTap7";
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:26454];
    v41[23] = v17;
    v42[23] = @"HapticMiniTap8";
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:29526];
    v41[24] = v16;
    v42[24] = @"HapticMiniTap9";
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:8023];
    v41[25] = v15;
    v42[25] = @"HapticFullTap2";
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:11095];
    v41[26] = v8;
    v42[26] = @"HapticFullTap3";
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:14167];
    v41[27] = v9;
    v42[27] = @"HapticFullTap4";
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:17239];
    v41[28] = v10;
    v42[28] = @"HapticFullTap5";
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:20311];
    v41[29] = v11;
    v42[29] = @"HapticFullTap6";
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:23383];
    v41[30] = v12;
    v42[30] = @"HapticFullTap7";
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:26455];
    v41[31] = v13;
    v42[31] = @"HapticFullTap8";
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:29527];
    v41[32] = v14;
    v42[32] = @"HapticFullTap9";
    +[EventToDictionaryConverter eventTypeToNSString:]::eventDict = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:33];
  }

  v4 = +[EventToDictionaryConverter eventTypeToNSString:]::eventDict;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:string];
  v6 = [v4 objectForKey:v5];

  return v6;
}

+ (id)paramTypeToNSString:(unint64_t)string
{
  v21[11] = *MEMORY[0x277D85DE8];
  {
    stringCopy = string;
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:1000];
    v20[0] = v19;
    v21[0] = @"AudioVolume";
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:1001];
    v20[1] = v18;
    v21[1] = @"AudioTransposition";
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:1010];
    v20[2] = v17;
    v21[2] = @"AudioAttackTime";
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:1011];
    v20[3] = v8;
    v21[3] = @"AudioDecayTime";
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:1012];
    v20[4] = v9;
    v21[4] = @"AudioReleaseTime";
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:1013];
    v20[5] = v10;
    v21[5] = @"AudioLPFilterCutoff";
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:2000];
    v20[6] = v11;
    v21[6] = @"HapticVolume";
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:2001];
    v20[7] = v12;
    v21[7] = @"HapticTransposition";
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:2010];
    v20[8] = v13;
    v21[8] = @"HapticAttackTime";
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:2011];
    v20[9] = v14;
    v21[9] = @"HapticDecayTime";
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:2012];
    v20[10] = v15;
    v21[10] = @"HapticReleaseTime";
    +[EventToDictionaryConverter paramTypeToNSString:]::paramDict = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:11];

    string = stringCopy;
  }

  v4 = +[EventToDictionaryConverter paramTypeToNSString:]::paramDict;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:string];
  v6 = [v4 objectForKey:v5];

  return v6;
}

+ (id)convertEvents:(id)events
{
  v56 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  v39 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = eventsCopy;
  v3 = [obj countByEnumeratingWithState:&v43 objects:v55 count:16];
  if (v3)
  {
    v42 = *v44;
    do
    {
      v4 = 0;
      v41 = v3;
      do
      {
        if (*v44 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v43 + 1) + 8 * v4);
        if ([v5 eventCategory] == 1)
        {
          v6 = +[EventToDictionaryConverter paramTypeToNSString:](EventToDictionaryConverter, "paramTypeToNSString:", [v5 paramType]);
          if (v6)
          {
            v7 = MEMORY[0x277CBEAC0];
            v8 = MEMORY[0x277CCABB0];
            [v5 value];
            v9 = [v8 numberWithFloat:?];
            v10 = MEMORY[0x277CCABB0];
            [v5 time];
            *&v11 = v11;
            v12 = [v10 numberWithFloat:v11];
            v13 = [v7 dictionaryWithObjectsAndKeys:{v6, @"Type", v9, @"Value", v12, @"Time", 0}];

            v14 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v13 forKey:@"Param"];
            [v39 addObject:v14];
            goto LABEL_38;
          }

          if (kHAPIScope)
          {
            v27 = *kHAPIScope;
            if (v27)
            {
              goto LABEL_28;
            }

            goto LABEL_39;
          }

          v28 = MEMORY[0x277D86220];
          v29 = MEMORY[0x277D86220];
          v27 = v28;
LABEL_28:
          v14 = v27;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            paramType = [v5 paramType];
            *buf = 136315906;
            v48 = "EventToDictionaryConverter.mm";
            v49 = 1024;
            v50 = 111;
            v51 = 2080;
            v52 = "+[EventToDictionaryConverter convertEvents:]";
            v53 = 1024;
            v54 = paramType;
            v31 = v14;
LABEL_36:
            _os_log_impl(&dword_21569A000, v31, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Unknown param type: %u", buf, 0x22u);
            goto LABEL_37;
          }

          goto LABEL_37;
        }

        if ([v5 eventCategory])
        {
          goto LABEL_40;
        }

        v6 = +[EventToDictionaryConverter eventTypeToNSString:](EventToDictionaryConverter, "eventTypeToNSString:", [v5 eventType]);
        if (v6)
        {
          v15 = MEMORY[0x277CBEB38];
          v16 = MEMORY[0x277CCABB0];
          [v5 time];
          *&v17 = v17;
          v18 = [v16 numberWithFloat:v17];
          v13 = [v15 dictionaryWithObjectsAndKeys:{v6, @"Type", v18, @"Time", 0}];

          for (i = 0; ; i = v20 + 1)
          {
            v20 = i;
            if ([v5 fixedParamCount] <= i)
            {
              v14 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v13 forKey:@"Event"];
              [v39 addObject:v14];
              goto LABEL_38;
            }

            v21 = [v5 fixedParams] + 16 * i;
            v22 = [EventToDictionaryConverter paramTypeToNSString:*v21];
            if (v22)
            {
              break;
            }

            if (!kHAPIScope)
            {
              v24 = MEMORY[0x277D86220];
              v25 = MEMORY[0x277D86220];
LABEL_21:
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                v26 = *v21;
                *buf = 136315906;
                v48 = "EventToDictionaryConverter.mm";
                v49 = 1024;
                v50 = 128;
                v51 = 2080;
                v52 = "+[EventToDictionaryConverter convertEvents:]";
                v53 = 1024;
                v54 = v26;
                _os_log_impl(&dword_21569A000, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Unknown event param type: %u", buf, 0x22u);
              }

LABEL_15:

              goto LABEL_16;
            }

            v24 = *kHAPIScope;
            if (v24)
            {
              goto LABEL_21;
            }

LABEL_16:
          }

          LODWORD(v23) = *(v21 + 8);
          v24 = [MEMORY[0x277CCABB0] numberWithFloat:v23];
          [v13 setObject:v24 forKeyedSubscript:v22];
          goto LABEL_15;
        }

        if (!kHAPIScope)
        {
          v33 = MEMORY[0x277D86220];
          v34 = MEMORY[0x277D86220];
          v32 = v33;
LABEL_34:
          v14 = v32;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            eventType = [v5 eventType];
            *buf = 136315906;
            v48 = "EventToDictionaryConverter.mm";
            v49 = 1024;
            v50 = 134;
            v51 = 2080;
            v52 = "+[EventToDictionaryConverter convertEvents:]";
            v53 = 1024;
            v54 = eventType;
            v31 = v14;
            goto LABEL_36;
          }

LABEL_37:
          v13 = v14;
LABEL_38:

          goto LABEL_39;
        }

        v32 = *kHAPIScope;
        if (v32)
        {
          goto LABEL_34;
        }

LABEL_39:

        v3 = v41;
LABEL_40:
        ++v4;
      }

      while (v4 != v3);
      v3 = [obj countByEnumeratingWithState:&v43 objects:v55 count:16];
    }

    while (v3);
  }

  v36 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v39, @"Pattern", 0}];

  return v36;
}

@end